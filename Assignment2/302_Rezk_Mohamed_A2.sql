CREATE TABLE Address (
  customer_id BIGINT,
  street_address VARCHAR(100),
  p_o_box VARCHAR(10),
  postal_code CHAR(7) not null,
  apartment_number INTEGER,
  city VARCHAR(100) not null,
  province CHAR(2)
);



CREATE TABLE Province (
  province_code CHAR(2),
  province_name VARCHAR(20) not null,
  PRIMARY KEY (province_code)
);


CREATE TABLE Customer (
  customer_id BIGINT,
  first_name VARCHAR(30)not null,
  last_name VARCHAR(30) not null,
  email VARCHAR(150) not null,
  phone_number VARCHAR(15) not null,
  PRIMARY KEY (customer_id)
);


CREATE TABLE Product (
  product_code CHAR(5),
  product_name VARCHAR(30) not null,
  product_price NUMERIC(15, 2) not null,
  product_qoh INTEGER not null,
  product_discount DECIMAL(5, 2) default 0,
  PRIMARY KEY (product_code)
);


CREATE TABLE Invoice (
  invoice_number BIGINT,
  customer_id BIGINT,
  date_of_purchase DATE,
  shipping_code CHAR(3),
  PRIMARY KEY (invoice_number)
);


CREATE TABLE Invoice_Line (
  product_code CHAR(5),
  invoice_number BIGINT,
  product_price NUMERIC(15,2) not null,
  product_discount DECIMAL(5,2) not null,
  quantity_purchased INTEGER not null
);


CREATE TABLE Shipment (
  shipping_code CHAR(3),
  shipping_method VARCHAR(10) not null,
  shipping_terms INTEGER not null,
  PRIMARY KEY (shipping_code)
);

