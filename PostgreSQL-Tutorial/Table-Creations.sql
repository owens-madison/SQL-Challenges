/* 
    1: Customer Table
    2: Sales Person Table
    3: Product Type Table
    4: Product Table
    5: Item Table
    6: Sales Order Table
    7: Sales Item Table 
    8: Transaction Type Table
*/

/* 1. Customer Table */
CREATE TABLE customer(
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(60) NOT NULL,
company VARCHAR(60) NOT NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
state CHAR(2) NOT NULL,
zip INT NOT NULL,
phone VARCHAR(20) NOT NULL,
birth_date DATE NULL,
gender CHAR(1) NOT NULL,
date_entered TIMESTAMP NOT NULL DEFAULT current_timestamp,
id SERIAL PRIMARY KEY
);

/* 2. Sales Person Table */
CREATE TABLE sales_person(
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(60) NOT NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(40) NOT NULL,
state VARCHAR(2) NOT NULL,
zip INT NOT NULL,
phone VARCHAR(20) NOT NULL,
birth_date DATE NULL,
gender gender_type NOT NULL,
date_hired TIMESTAMP NOT NULL DEFAULT current_timestamp,
id SERIAL PRIMARY KEY
);

/* 3. Product Type Table */
CREATE TABLE product_type(
name VARCHAR(30) NOT NULL,
id SERIAL PRIMARY KEY
);

/* 4. Product Table */
CREATE TABLE product(
type_id INT REFERENCES product_type(id),
name VARCHAR(30) NOT NULL,
supplier VARCHAR(30) NOT NULL,
description TEXT NOT NULL,
id SERIAL PRIMARY KEY
);

/* 5. Item Table */
CREATE TABLE item(
product_id INT REFERENCES product(id),
size INT NOT NULL,
color VARCHAR(30) NOT NULL,
picture VARCHAR(256) NOT NULL,
price NUMERIC (6,2) NOT NULL,
id SERIAL PRIMARY KEY
);

/* 6. Sales Order Table */
CREATE TABLE sales_order(
cust_id INT REFERENCES customer(id),
sales_person_id INT REFERENCES sales_person(id),
time_order_taken TIMESTAMP NOT NULL,
purchase_order_number INT NOT NULL,
credit_card_number VARCHAR(16) NOT NULL,
credit_card_exp_month SMALLINT NOT NULL,
credit_card_exp_day SMALLINT NOT NULL,
credit_card_secredt_code SMALLINT NOT NULL,
name_on_card VARCHAR(100) NOT NULL,
id SERIAL PRIMARY KEY
);

/* 7. Sales Item Table */
CREATE TABLE sales_item(
item_id INT REFERENCES item(id),
sales_order_id INT REFERENCES sales_order(id),
quantity INT NOT NULL,
discount NUMERIC(3,2) NULL DEFAULT 0,
taxable BOOL NOT NULL DEFAULT FALSE,
sales_tax_rate NUMERIC(5,2) NOT NULL DEFAULT 0,
id SERIAL PRIMARY KEY
);

/* 8. Transaction Type Table */
CREATE TABLE transaction_type(
name VARCHAR(30) NOT NULL,
payment_type VARCHAR(30) NOT NULL,
id SERIAL PRIMARY KEY
);