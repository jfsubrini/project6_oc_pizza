-- OC PIZZA Database : DATABASE AND TABLES CREATION

-- Copyright Jean-François Subrini, student DA Python at OpenClassrooms, 10/02/2018.


-- Creating the oc_pizza database after droping the previous one if exists.
DROP DATABASE IF EXISTS oc_pizza; CREATE DATABASE oc_pizza CHARACTER SET 'utf8';
-- Granting all privileges of that database to my username.
GRANT ALL PRIVILEGES ON oc_pizza.* TO 'jfsubrini'@'localhost' IDENTIFIED BY 'jeremiehugo1';

-- Use the oc_pizza database.
USE oc_pizza;

-- To create the Buyer table with the columns, primary key and table engine.
CREATE TABLE Buyer (
    id MEDIUMINT UNSIGNED AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    gender CHAR(1) NOT NULL,
    password VARCHAR(50) NOT NULL,
    phone_number CHAR(10) NOT NULL,
    PRIMARY KEY(id))
    ENGINE = INNODB;

-- To create the WebCustomer table with the columns, primary key and table engine.
CREATE TABLE WebCustomer (
    buyer_id MEDIUMINT UNSIGNED NOT NULL,
    email VARCHAR(100) NOT NULL,
    birthday DATE,
    job_status VARCHAR(50))
    ENGINE = INNODB;

-- To create the OCPizzaUser table with the columns, primary key and table engine.
CREATE TABLE OCPizzaUser (
    buyer_id MEDIUMINT UNSIGNED NOT NULL,
    pizzeria_id TINYINT UNSIGNED NOT NULL,
    username VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL)
    ENGINE = INNODB;

-- To create the Address table with the columns and table engine.
CREATE TABLE Address (
    id MEDIUMINT UNSIGNED AUTO_INCREMENT,
    street_1 VARCHAR(150) NOT NULL,
    street_2 VARCHAR(150),
    city VARCHAR(70) NOT NULL,
    zip_code CHAR(5) NOT NULL,
    comment VARCHAR(255),
    type TINYINT NOT NULL,
    webcustomer_id MEDIUMINT UNSIGNED NOT NULL,
    PRIMARY KEY(id))
    ENGINE = INNODB;

-- To create the Pizzeria table with the columns, primary key and table engine.
CREATE TABLE Pizzeria (
    id TINYINT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(50) UNIQUE NOT NULL,
    PRIMARY KEY(id))
    ENGINE = INNODB;

-- To create the OrderPizza table with the columns, primary key and table engine.
CREATE TABLE OrderPizza (
    num MEDIUMINT UNSIGNED AUTO_INCREMENT,
    buyer_id MEDIUMINT UNSIGNED NOT NULL,
    pizzeria_id TINYINT UNSIGNED NOT NULL,
    date_order DATE NOT NULL,
    hour_order TIME NOT NULL,
    state ENUM('Waiting List', 'Being Prepared', 'Prepared', 'On Delivery', 'Delivery') NOT NULL,
    payment_mode ENUM('Paid online', 'Cash on delivery', 'Credit card pizzeria', 'Cash pizzeria') NOT NULL,
    invoice_address MEDIUMINT UNSIGNED NOT NULL,
    delivery_address MEDIUMINT UNSIGNED NOT NULL,
    delivery_or_not BOOLEAN NOT NULL,
    PRIMARY KEY(num))
    ENGINE = INNODB;

-- To create the OrderLine table with the columns, primary key and table engine.
CREATE TABLE OrderLine (
    order_num MEDIUMINT UNSIGNED NOT NULL,
    pizza_id TINYINT UNSIGNED NOT NULL,
    quantity TINYINT NOT NULL)
    ENGINE = INNODB;

-- To create the Pizza table with the columns, primary key and table engine.
CREATE TABLE Pizza (
    id TINYINT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    size TINYINT NOT NULL, 
    PRIMARY KEY(id))
    ENGINE = INNODB;

-- To create the Ingredient table with the columns, primary key and table engine.
CREATE TABLE Ingredient (
    id TINYINT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(50) UNIQUE NOT NULL,
    price_ttc DECIMAL(3, 2) NOT NULL,
    PRIMARY KEY(id))
    ENGINE = INNODB;

-- To create the Pizza_Ingredient ad hoc table with the columns and table engine.
CREATE TABLE Pizza_Ingredient (
    pizza_id TINYINT UNSIGNED NOT NULL,
    ingredient_id TINYINT UNSIGNED NOT NULL,
    dosis TINYINT NOT NULL)
    ENGINE = INNODB;

-- To create the Stock table with the columns and table engine.
CREATE TABLE Stock (
    pizzeria_id TINYINT UNSIGNED NOT NULL,
    ingredient_id TINYINT UNSIGNED NOT NULL,
    quantity_dosis MEDIUMINT UNSIGNED,
    date_time DATETIME NOT NULL)
    ENGINE = INNODB;

-- To create the Foreign Key in the WebCustomer table.
ALTER TABLE WebCustomer ADD CONSTRAINT fk_buyer_id
    FOREIGN KEY (buyer_id) REFERENCES Buyer(id);
-- To create the Foreign Keys in the OCPizzaUser table.
ALTER TABLE OCPizzaUser ADD CONSTRAINT fk_buyer2_id
    FOREIGN KEY (buyer_id) REFERENCES Buyer(id);
ALTER TABLE OCPizzaUser ADD CONSTRAINT fk_pizzeria_id
    FOREIGN KEY (pizzeria_id) REFERENCES Pizzeria(id);
-- To create the Foreign Key in the Address table.
ALTER TABLE Address ADD CONSTRAINT fk_webcustomer_id
    FOREIGN KEY (webcustomer_id) REFERENCES WebCustomer(buyer_id);
-- To create the Foreign Keys in the OrderPizza table.
ALTER TABLE OrderPizza ADD CONSTRAINT fk_buyer3_id
    FOREIGN KEY (buyer_id) REFERENCES Buyer(id);
ALTER TABLE OrderPizza ADD CONSTRAINT fk_pizzeria2_id
    FOREIGN KEY (pizzeria_id) REFERENCES Pizzeria(id);
ALTER TABLE OrderPizza ADD CONSTRAINT fk_invoice_address
    FOREIGN KEY (invoice_address) REFERENCES Address(id);
ALTER TABLE OrderPizza ADD CONSTRAINT fk_delivery_address
    FOREIGN KEY (delivery_address) REFERENCES Address(id);
-- To create the Foreign Keys in the OrderLine table.
ALTER TABLE OrderLine ADD CONSTRAINT fk_order_num
    FOREIGN KEY (order_num) REFERENCES OrderPizza(num);
ALTER TABLE OrderLine ADD CONSTRAINT fk_pizza_id
    FOREIGN KEY (pizza_id) REFERENCES Pizza(id);
-- To create the Foreign Keys in the Pizza_Ingredient table.
ALTER TABLE Pizza_Ingredient ADD CONSTRAINT fk_pizza2_id
    FOREIGN KEY (pizza_id) REFERENCES Pizza(id);
ALTER TABLE Pizza_Ingredient ADD CONSTRAINT fk_ingredient_id
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id);
-- To create the Foreign Keys in the Stock table.
ALTER TABLE Stock ADD CONSTRAINT fk_pizzeria3_id
    FOREIGN KEY (pizzeria_id) REFERENCES Pizzeria(id);
ALTER TABLE Stock ADD CONSTRAINT fk_ingredient2_id
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id);
