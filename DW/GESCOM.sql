DROP DATABASE IF EXISTS Gescom;
CREATE DATABASE Gescom;
USE Gescom;

CREATE TABLE customers (
cus_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cus_lastname VARCHAR(30),
cus_firstname VARCHAR(30),
cus_adress VARCHAR(30),
cus_zipcode VARCHAR(30),
cus_city VARCHAR(30),
cus_mail VARCHAR(30),
cus_phone VARCHAR(30),
cus_password VARCHAR(30)
);
CREATE TABLE orders (
ord_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ord_order_date DATE,
ord_payment_date DATE,
ord_ship_date DATE,
ord_reception_date DATE,
ord_status VARCHAR(30),
ord_cus_id INT NOT NULL,
FOREIGN KEY (ord_cus_id) REFERENCES customers(cus_id)
);
CREATE TABLE categories (
cat_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
cat_name VARCHAR(30),
cat_parent_id INT NOT NULL,
FOREIGN KEY (cat_parent_id) REFERENCES categories(cat_id)
);
CREATE TABLE suppliers (
sup_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
sup_name VARCHAR(30),
sup_city VARCHAR(30),
sup_countries_id VARCHAR(30),
sup_adress VARCHAR(30),
sup_zipcode VARCHAR(30),
sup_contact VARCHAR(30),
sup_phone VARCHAR(30),
sup_mail VARCHAR(30)
);
CREATE TABLE products (
pro_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
pro_cat_id INT NOT NULL,
pro_price DECIMAL(10,2),
pro_ref VARCHAR(30),
pro_name VARCHAR(30),
pro_desc VARCHAR(30),
pro_publish INT,
pro_sup_id INT NOT NULL,
pro_picture VARCHAR(30),
FOREIGN KEY (pro_cat_id) REFERENCES categories(cat_id),
FOREIGN KEY (pro_sup_id) REFERENCES suppliers(sup_id)
);
CREATE TABLE orders_details (
ode_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ode_unit_price DECIMAL(4,2),
ode_quantity INT,
ode_ord_id INT NOT NULL,
ode_pro_id INT NOT NULL,
FOREIGN KEY (ode_ord_id) REFERENCES orders(ord_id),
FOREIGN KEY (ode_pro_id) REFERENCES products(pro_id)
);