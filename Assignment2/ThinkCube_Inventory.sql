CREATE TABLE product (
  product_code CHAR(5),
  product_name VARCHAR(30) NOT NULL,
  product_price NUMERIC(15, 2) NOT NULL,
  product_qoh INTEGER NOT NULL,
  product_discount DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (product_code)
);


CREATE TABLE customer (
  customer_id BIGINT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  phone_number VARCHAR(15) NOT NULL,
  email VARCHAR(150) NOT NULL,
  PRIMARY KEY (customer_id)
);


CREATE TABLE address (
  address_key BIGINT NOT NULL PRIMARY KEY,
  customer_id BIGINT,
  street_address VARCHAR(100) NOT NULL,
  p_o_box VARCHAR(10),
  apartment VARCHAR(5),
  city VARCHAR(50) NOT NULL,
  postal_code CHAR(7) NOT NULL,
  province_code CHAR(2),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (province_code) REFERENCES province(province_code),
);


CREATE TABLE invoice (
  invoice_number BIGINT,
  customer_id BIGINT,
  date_of_purchase DATE NOT NULL,
  shipping_code CHAR(3),
  due_date DATE NOT NULL,
  payment_terms INTEGER NOT NULL,
  employee_id BIGINT,
  PRIMARY KEY (invoice_number),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (shipping_code) REFERENCES shipment(shipping_code),
  FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
);


CREATE TABLE employee (
  employee_id BIGINT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  job_position VARCHAR(15),
  PRIMARY KEY (employee_id)
);


CREATE TABLE province (
  province_code CHAR(2),
  province_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (province_code)
);


CREATE TABLE invoice_line (
  invoice_number BIGINT,
  product_code CHAR(5),
  quantity_purchased INTEGER NOT NULL,
  line_price NUMERIC(15,2) NOT NULL,
  PRIMARY KEY (invoice_number, product_code)
);



CREATE TABLE shipment (
  shipping_code CHAR(3),
  shipping_method VARCHAR(10) NOT NULL,
  shipping_terms INTEGER NOT NULL,
  delivery_date DATE NOT NULL,
  PRIMARY KEY (shipping_code)
);


