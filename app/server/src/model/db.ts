import { createConnection } from 'mysql2';
import { Country, Currency, CreditCardType, Customer } from './types';

// todo: from env !
// process.env.MYSQL_HOST = 'localhost';
// process.env.MYSQL_USER = 'root';
// process.env.MYSQL_PASSWORD = 'root';
// process.env.MYSQL_DATABASE = 'excercise';

const connection = createConnection({
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE,
  // port: 3306,
});

const connect = () => {
  connection.connect((err: any) => {
    if (err) {
      console.error(`error connecting: ${err.stack}`);
      return;
    }
    console.log('connection', connection);

    console.log(`connected as id ${connection.threadId}`);
  });
};

const getCustomers = (): Customer[] => {
  let result: Customer[] = [];
  connection.query('SELECT * FROM customers;', (err: Error, data: Customer[]) => {
    if (err) throw err;
    result = data;
  });
  console.log({ result });
  return result;
};

const getCountries = (): Country[] => {
  let result: Country[] = [];
  connection.query('SELECT * FROM countries;', (err: Error, data: Country[]) => {
    if (err) throw err;
    result = data;
  });

  return result;
};

const getCurrencies = (): Currency[] => {
  let result: Currency[] = [];
  connection.query('SELECT * FROM currencies', (err: Error, data: Currency[]) => {
    if (err) throw err;
    result = data;
  });

  return result;
};

const getCreditCardTypes = (): CreditCardType[] => {
  let result: CreditCardType[] = [];
  connection.query('SELECT * FROM Credit_Card_Types', (err: Error, data: CreditCardType[]) => {
    if (err) throw err;
    console.log({ data });
    result = data;
  });

  return result;
};

const getConnection = () => {
  return null;
};

export {
  connect,
  connection,
  getConnection,
  getCustomers,
  getCountries,
  getCurrencies,
  getCreditCardTypes,
};
