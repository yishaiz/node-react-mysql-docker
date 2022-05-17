import './App.css';
import { BrowserRouter, Route, Routes } from 'react-router-dom';

import Customers from './components/Customers/Customers';
import Transactions from './components/Transactions/Transactions';
import Home from './components/Home/Home';

const AppRoutes = () => {
  return (
    <BrowserRouter>
      <div className='App'>
        <header className='App-header'>
          <Routes>
            <Route path='/' element={<Home />} />
            <Route path='/customers' element={<Customers />} />
            <Route path='/transactions' element={<Transactions />} />

            <Route path='*' element={<h2>404</h2>} />
          </Routes>
        </header>
      </div>
    </BrowserRouter>
  );
};

export default AppRoutes;
