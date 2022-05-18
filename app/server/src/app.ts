import express, { Request, Response, NextFunction } from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';
import { json } from 'body-parser';
import { customersRoute } from './routes/customersRoute';
import { transactionsRoute } from './routes/transactionsRoute';
import { errorHandler } from './errors/error-handler';
import { redirectToRoot } from './routes/redirectToRoot';

const app = express();
// const corsConfig = new EnableCorsAttribute("*", "*", "*");
//             config.EnableCors(cors);
app.use(cors())


// app.use((req: Request, res: Response, next: NextFunction) => {
//   res.removeHeader('Cross-Origin-Resource-Policy');
//   res.removeHeader('Cross-Origin-Embedder-Policy');
//   next();
// });
// const corsOptions = {
//   origin: "*"
// };
// app.use(cors(corsOptions));

app.use(express.static('client/build'));
app.use(json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(redirectToRoot);
app.use(customersRoute);
app.use(transactionsRoute);

app.use('*', (req: Request, res: Response) => {
  res.send('<h1>Welcome to Customer Transactions</h1>');
});

app.use(errorHandler);

export { app };
