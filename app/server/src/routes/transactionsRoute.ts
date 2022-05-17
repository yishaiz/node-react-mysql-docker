import express, { Request, Response } from 'express';
import { Transaction } from '../model/types';
import { connection } from '../model/db';

const router = express.Router();

router.post('/api/transactions', (req: Request, res: Response) => {
  console.log('/api/transactions');
  connection.query('SELECT * FROM transactions;', (err: Error, data: Transaction[]) => {
    if (err) throw err;
    return res.send({ result: data });
  });
});

export { router as transactionsRoute };
