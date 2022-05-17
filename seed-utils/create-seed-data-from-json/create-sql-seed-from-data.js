'use strict';

const origDataFile = 'data.json';
const targetDataFile = 'seed.sql';

const readDataFile = () => {
  const fs = require('fs');
  let rawdata = fs.readFileSync(origDataFile);
  return JSON.parse(rawdata);
};

const saveSqlFile = (content, append = false) => {
  const fs = require('fs');

  if (append) {
    fs.appendFileSync(targetDataFile, content);
  } else {
    fs.writeFileSync(targetDataFile, content);
  }
};

const getUniqueList = (list) => {
  return [...new Set(list)];
};

const getCountries = (data) => {
  const countries = data.map((item) => item.country);
  return getUniqueList(countries);
};

const getCurrencies = (data) => {
  const currencies = data.map((item) => item.currency);
  return getUniqueList(currencies);
};

const getCreditCardTypes = (data) => {
  const creditCardTypes = data.map((item) => item.credit_card_type);
  return getUniqueList(creditCardTypes);
};


const getCustomers = (data) => {
  const customers = data.map((item) => {
    const   {customer_id: id,first_name: firstName,last_name: lastName, email, gender, country_id:countryId, city, street, phone} = item
    
    return  {id, firstName, lastName, email, gender,countryId, city, street, phone} 
  });
  return getUniqueList(customers);
};

const getData = () => {
  const data = readDataFile();

  const countries = getCountries(data);
  const currencies = getCurrencies(data);
  const customers = getCustomers(data);
  const creditCardTypes = getCreditCardTypes(data);
  return {
    countries,
    currencies,
    creditCardTypes,
    customers
  };
};

// start parse data and create sql seeds

const { countries, currencies, creditCardTypes, customers } = getData();

// console.log(countries, currencies, creditCardTypes);

// console.log(' ------------------------------------------------------------  ');

// console.log(countries.length);
// console.log(currencies.length);
// console.log(creditCardTypes.length);

// console.log(' ------------------------------------------------------------  ');

const insertCurrencies = (currencies) => {
  return "INSERT INTO currencies (name) VALUES ('" + currencies.join("'), ('") + "');";
};

const insertCountries = (countries) => {
  return "INSERT INTO countries (name) VALUES ('" + countries.join("'), ('") + "');";
};

const insertCreditCardTypes = (creditCardTypes) => {
  return "INSERT INTO credit_card_types (name) VALUES ('" + creditCardTypes.join("'), ('") + "');";
};

const getRandom=(i)=> {
  return Math.floor(Math.random() *i)+1;
}

const insertCustomers = (customers) => {
  const sqls= []

  customers.forEach(customer => {
    const {id, firstName, lastName, email, gender,countryId, city, street, phone}  = customer;
  const sql = "INSERT INTO customers (id, first_name, last_name, email, gender, country_id, city, street, phone ) VALUES (" +
  "'" + id +"'," +
  "'" + firstName +"'," +
    "'" + lastName +"'," +
    "'" + email +"'," +
    "'" + gender +"'," +
    "'" + getRandom(120) +"'," + // countryId
    "'" + city +"'," +
    "'" + street +"'," +
    "'" + phone +"' ); " ;
    

  sqls.push(sql)
  });
  // const insertCustomer = "creditCardTypes"
  return sqls.join(newLine)
};

const newLine = '\r \n';

const currenciesSql = insertCurrencies(currencies);
const countriesSql = insertCountries(countries);
const customersSql = insertCustomers(customers);

const creditCardTypesSql = insertCreditCardTypes(creditCardTypes);

console.log({ currenciesSql });

// saveSqlFile(currenciesSql)

saveSqlFile(newLine);
saveSqlFile(currenciesSql, true);

saveSqlFile(newLine, true);
saveSqlFile(countriesSql, true);

saveSqlFile(newLine, true);
saveSqlFile(creditCardTypesSql, true);

saveSqlFile(newLine, true);
saveSqlFile(customersSql, true);

console.log('finished');
