export type Country = {
  id: number;
  name: string;
};

export type Currency = {
  id: number;
  name: string;
};

export type CreditCardType = {
  id: number;
  name: string;
};

export type Customer = {
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
