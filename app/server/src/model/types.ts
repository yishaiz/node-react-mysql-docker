type Country = {
  id: number;
  name: string;
};

type Currency = {
  id: number;
  name: string;
};

type CreditCardType = {
  id: number;
  name: string;
};

type Customer = {
  id: string;
  first_name: string;
  last_name: string;
  email?: string;
  gender?: string;

  countryId: number;
  countryName?: string;
  city: string;
  street?: string;
  phone?: string;
};

type Transaction = {
  id: number;
  customer_id: string;
  total_price: string;
  currency_id: number;
  credit_card_type_id: number;
};

export { Customer, Country, Currency, CreditCardType, Transaction };
