import React, { useState, useEffect } from 'react';
import axios from 'axios';
import classes from './Customers.module.css';
import Spinner from '../Spinner/Spinner';
import { Customer } from '../../types';

const getCustomersList = async () => {
  const body = {};
  const result = await axios.post('/api/customers', body);
  const { data } = result;
  return data;
};
const getCustomersListDemo = async () => {
  const body = {};
  const result = await axios.post('/api/customers-demo', body);
  const { data } = result;
  return data;
};

const Customers: React.FC = () => {
  const [loading, setLoading] = useState<boolean>(false);
  const [customers, setCustomers] = useState<Customer[]>([]);

  useEffect(() => {
    setLoading(true);
    console.log('get customers');
    const getCustomersDemo = async () => {
      const customers = await getCustomersListDemo();
      console.log({ customers });
    };

    getCustomersDemo();
  }, []);

  useEffect(() => {
    setLoading(true);
    console.log('get customers');
    const getCustomers = async () => {
      const customers = await getCustomersList();

      setCustomers(customers.result);
      setLoading(false);
    };

    getCustomers();
  }, []);

  const renderCustomers = () => {
    if (!customers || customers.length === 0) {
      return <Spinner />;
    }
    console.log({ customers });
    return (
      <table>
        <thead>
          <tr>
            <th>id</th>
            <th>first name</th>
            <th>last name</th>
            <th>phone</th>
          </tr>
        </thead>
        <tbody>
          {customers.map((customer) => {
            return (
              <tr key={customer.id} className={classes.row}>
                <td>{customer.id}</td>
                <td>{customer.first_name}</td>
                <td>{customer.last_name}</td>
                <td>{customer.phone}</td>
              </tr>
            );
          })}
        </tbody>
      </table>
    );
  };

  if (loading) {
    return <Spinner />;
  }

  return (
    <div>
      <h3 className={classes.caption}>Customers</h3>
      {renderCustomers()}
    </div>
  );
};

export default Customers;
