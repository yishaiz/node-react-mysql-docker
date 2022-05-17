import express, { Request, Response } from 'express';
const router = express.Router();

router.get('/customers', async (req: Request, res: Response) => {
  return res.status(301).redirect('/');
});
router.get('/transactions', async (req: Request, res: Response) => {
  return res.status(301).redirect('/');
});

export { router as redirectToRoot };
