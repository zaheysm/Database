-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.1
-- PostgreSQL version: 10.0
-- Project Site: pgmodeler.io
-- Model Author: Zahi Masarwa




-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: "Assigment2" | type: DATABASE --
-- -- DROP DATABASE IF EXISTS "Assigment2";
-- CREATE DATABASE "Assigment2"
-- 	ENCODING = 'UTF8'
-- 	LC_COLLATE = 'English_Canada.1252'
-- 	LC_CTYPE = 'English_Canada.1252'
-- 	TABLESPACE = pg_default
-- 	OWNER = web;
-- -- ddl-end --
-- 

-- object: product | type: TABLE --
-- DROP TABLE IF EXISTS product CASCADE;
CREATE TABLE product(
	product_item_num character(5) NOT NULL,
	product_description character varying(30) NOT NULL,
	product_price numeric(15,2) NOT NULL,
	product_qoh integer NOT NULL,
	product_discount numeric(5,2) NOT NULL,
	CONSTRAINT "Product_itme_num_PK" PRIMARY KEY (product_item_num)

);


CREATE TABLE customer(
	customer_id bigint NOT NULL,
	first_name character varying(30) NOT NULL,
	last_name character varying(30) NOT NULL,
	phone_number character varying(15) NOT NULL,
	email character varying(150) NOT NULL,
	CONSTRAINT "Customer_id_PK" PRIMARY KEY (customer_id)

);

CREATE TABLE province(
	province_code character(2) NOT NULL,
	province_name character varying(20) NOT NULL,
	CONSTRAINT "Province_PK" PRIMARY KEY (province_code)
);


CREATE TABLE address(
	address_key bigint NOT NULL,
	customer_id bigint,
	street_address character varying(100),
	p_o_box character varying(10),
	apartment character varying(5),
	city character varying(50) NOT NULL,
	postal_code character(7) NOT NULL,
	province_code character(2),
	CONSTRAINT address_pkey PRIMARY KEY (address_key),
	CONSTRAINT "Customer_id_FK" FOREIGN KEY (customer_id)REFERENCES customer (customer_id),
	CONSTRAINT "Province_code_FK" FOREIGN KEY (province_code)REFERENCES province (province_code)
);

CREATE TABLE shipment(
	shipping_code character(3) NOT NULL,
	shipping_method character varying(10) NOT NULL,
	shipping_terms integer NOT NULL,
	delivery_date date NOT NULL,
	CONSTRAINT "Shipping_code_PK" PRIMARY KEY (shipping_code)

);

CREATE TABLE employee(
	employee_id bigint NOT NULL,
	first_name character varying(30) NOT NULL,
	last_name character varying(30) NOT NULL,
	job_position character varying(15),
	CONSTRAINT "Employee_id_PK" PRIMARY KEY (employee_id)

);

CREATE TABLE invoice(
	invoice_number bigint NOT NULL,
	customer_id bigint,
	date_of_purchase date NOT NULL,
	shipping_code character(3),
	due_date date NOT NULL,
	payment_terms integer NOT NULL,
	employee_id bigint,
	CONSTRAINT "invoice_number_PK" PRIMARY KEY (invoice_number),
	CONSTRAINT "shipping_code_FK" FOREIGN KEY (shipping_code)REFERENCES shipment (shipping_code),
	CONSTRAINT "employee_id_FK" FOREIGN KEY (employee_id)REFERENCES employee (employee_id),
	CONSTRAINT "Customer_id_fk" FOREIGN KEY (customer_id)REFERENCES customer (customer_id)
	

);



CREATE TABLE invoice_line(
	invoice_number bigint,
	"product_Item_num" character(5),
	quantity_purchased integer NOT NULL,
	line_price numeric(15,2) NOT NULL,
	CONSTRAINT "Invoice_number_FK" FOREIGN KEY (invoice_number) REFERENCES invoice (invoice_number),
	CONSTRAINT "Product_Item_Num_FK" FOREIGN KEY ("product_Item_num")REFERENCES product (product_item_num) 
);






