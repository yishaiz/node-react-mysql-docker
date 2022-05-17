import http from 'http';
import { app } from './app';
import dotenv from 'dotenv';
import { connect } from './model/db';

dotenv.config();

const PORT: string | number = process.env.PORT || 5000;
const server = http.createServer(app);

const start = async () => {
  if (!process.env.SQL_URI) {
    throw new Error('SQL_URI must be defined');
  }

  connect();

  console.log('app start');
};

start();

server.listen(PORT);
