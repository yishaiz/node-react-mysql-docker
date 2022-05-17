import React from 'react';
import { Navbar, NavbarBrand, Nav, NavLink } from 'react-bootstrap';

const NavBar: React.FC = () => {
  return (
    <div>
      <Navbar bg='dark' variant='dark'>
        <NavbarBrand href='/'>Home</NavbarBrand>
        <Nav className='me-auto'>
          <NavLink href='/customers'>Customers</NavLink>
          <NavLink href='/transactions'>Transactions</NavLink>
        </Nav>
      </Navbar>
    </div>
  );
};

export default NavBar;
