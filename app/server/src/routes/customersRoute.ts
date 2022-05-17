import express, { Request, Response } from 'express';
import { Customer } from '../model/types';
import { connection } from '../model/db';

const router = express.Router();

router.post('/api/customers-demo', async (req: Request, res: Response) => {
  console.log('get customers list');
  return res.status(200).send({ result: ['a', 'b', 'c'] });
});

router.post('/api/customers', (req: Request, res: Response) => {
  console.log('/api/customers');
  connection.query('SELECT * FROM customers;', (err: Error, data: Customer[]) => {
    if (err) throw err;
    return res.send({ result: data });
  });
});

export { router as customersRoute };
