-- OC PIZZA Database : DEMO VALUES

-- Copyright Jean-François Subrini, student DA Python at OpenClassrooms, 10/02/2018.


-- Creating the oc_pizza database after droping the previous one if exists.
DROP DATABASE IF EXISTS oc_pizza; CREATE DATABASE oc_pizza CHARACTER SET 'utf8';
-- Granting all privileges of that database to my username.
GRANT ALL PRIVILEGES ON oc_pizza.* TO 'jfsubrini'@'localhost' IDENTIFIED BY 'jeremiehugo1';

-- Use the oc_pizza database.
USE oc_pizza;

-- Some values for the Buyer table.
INSERT INTO Buyer
    VALUES (NULL, 'Jérôme', 'Dupont', 'H', '123z45zrs67', 0678936741),
           (NULL, 'Marc', 'Martin', 'H', 'sffs1m567zer', 0673216709),
           (NULL, 'Julie', 'Durant', 'F', 'tdd123zeaze', 0612376436),
           (NULL, 'Stéphane', 'Amelon', 'H', '1er234qsdqsd', 0656879899),
           (NULL, 'Charlotte', 'Duprés', 'F', 'ii12rgdv7', 0613212114),
           (NULL, 'Jeanne', 'Leroy', 'F', '12fddg3fdgdfg', 0671555678),
           (NULL, 'Pascal', 'Meunier', 'H', 'pp2fddg3fdgdfg', 0679955678);

-- Some values for the WebCustomer table.
INSERT INTO WebCustomer
    VALUES (NULL, 'jdupont12@gmail.com', NULL, NULL),
           (NULL, 'marc.martin33@yahoo.com', NULL, NULL),
           (NULL, 'jdurant17@laposte.com', '1997-12-13', 'Etudiant.e'),
           (NULL, 'stephamelon@gmail.com', '1990-03-23', 'Sans emploi'),
           (NULL, 'charlotte.dupres@gmail.com', NULL, 'Cadre'),
           (NULL, 'jeanneleroy@gmail.com', '1987-08-10', 'Employé.e'),
           (NULL, 'pascalmeunier5@gmail.com', '1985-06-01', 'Employé.e');

-- A FAIRE
-- Some values for the Address table.
INSERT INTO Address
    VALUES (NULL, '3, Rue des Chartrons', NULL, 'Bordeaux', '33000', '3e étage gauche', 1, 1),
           (NULL, '3, Rue des Chartrons', NULL, 'Bordeaux', '33000', NULL, 1, 1),
           (NULL, '3, Rue des Chartrons', '3, Rue des Chartrons', 'Bordeaux', '33000', NULL, 1, 1),
           (NULL, '3, Rue des Chartrons', NULL, 'Bordeaux', '33000', '3e étage gauche', 1, 1),
           (NULL, '3, Rue des Chartrons', NULL, 'Bordeaux', '33000', NULL, 1, 1),
           (NULL, '3, Rue des Chartrons', '3, Rue des Chartrons', 'Bordeaux', '33000', '3e étage gauche', 1, 1),
           (NULL, '3, Rue des Chartrons', NULL, 'Bordeaux', '33000', '3e étage gauche', 1, 1),
           (NULL, '3, Rue des Chartrons', NULL, 'Bordeaux', '33000', NULL, 1, 1),
           (NULL, '3, Rue des Chartrons', NULL, 'Bordeaux', '33000', '3e étage gauche', 1, 1),
           (NULL, '3, Rue des Chartrons', '3, Rue des Chartrons', 'Bordeaux', '33000', NULL, 1, 1),
           (NULL, '3, Rue des Chartrons', NULL, 'Bordeaux', '33000', NULL, 1, 1),
           (NULL, '3, Rue des Chartrons', NULL, 'Bordeaux', '33000', NULL, 1, 1);
-- FIN DE 'A FAIRE'

-- FINIR APRES PRIX TOTAL
-- Some values for the OrderPizza table.
INSERT INTO OrderPizza
    VALUES (NULL, 1, 1, '2018-02-01', '11:52:06', 'On Delivery', 15.80, 1, 1, 1, 'o'),
           (NULL, 2, 1, '2018-02-01', '11:55:16', 'Prepared', 24.80, 1, 2, 2, 'o'),
           (NULL, 3, 5, '2018-02-01', '12:05:43', 'Prepared', 46.60, 1, 4, 4, 'o'),
           (NULL, 4, 4, '2018-02-01', '12:07:21', 'Being Prepared', 17.80, 2, ?, ?, 'n'),
           (NULL, 5, 3, '2018-02-01', '12:10:10', 'Being Prepared', 35.60, 1, 2, 2, 'o'),
           (NULL, 6, 2, '2018-02-01', '12:10:16', 'Being Prepared', 24.80, 2, 2, 2, 'o'),
           (NULL, 7, 5, '2018-02-01', '12:10:45', 'Being Prepared', 63.60, 1, 2, 2, 'o'),
           (NULL, 8, 3, '2018-02-01', '12:10:47', 'Waiting List', 16.80, 1, 2, 2, 'o'),
           (NULL, 9, 1, '2018-02-01', '12:10:57', 'Being Prepared', 8.90, 3, 4, 4, 'o'),
           (NULL, 10, 1, '2018-02-01', '12:11:04', 'Waiting List', 40.70, 3, 4, 4, 'o'),
           (NULL, 11, 2, '2018-02-01', '12:11:17', 'Waiting List', 16.80, 1, 1, 2, 'o'),
           (NULL, 12, 4, '2018-02-01', '12:11:25', 'Waiting List', 17.80, 4, 4, 4, 'o');
-- FIN

-- Some values for the OrderLine table.
INSERT INTO OrderLine
    VALUES (1, 3, 2),
           (2, 4, 1),
           (2, 7, 1),
           (3, 2, 1),
           (3, 1, 1),
           (3, 6, 1),
           (3, 5, 1),
           (4, 4, 1),
           (4, 2, 1),
           (5, 2, 4),
           (6, 4, 1),
           (6, 6, 1),
           (7, 7, 2),
           (7, 8, 2),
           (8, 1, 1),
           (8, 3, 1),
           (9, 2, 1),
           (10, 6, 1),
           (10, 8, 1),
           (10, 2, 1),
           (11, 1, 1),
           (11, 4, 1),
           (12, 2, 2);
