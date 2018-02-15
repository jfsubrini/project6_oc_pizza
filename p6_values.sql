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

-- Some values for the OCPizzaUser table.
INSERT INTO OCPizzaUser
    VALUES (NULL, 1, 'patoche1', 'Réceptionniste'),
           (NULL, 1, 'minouche1', 'Réceptionniste'),
           (NULL, 1, 'jojo1', 'Manager'),
           (NULL, 2, 'ninive2', 'Réceptionniste'),
           (NULL, 2, 'gigoule2', 'Réceptionniste'),
           (NULL, 2, 'gougole2', 'Manager'),
           (NULL, 3, 'nono3', 'Réceptionniste'),
           (NULL, 3, 'bibine3', 'Réceptionniste'),
           (NULL, 3, 'ginette3', 'Manager'),
           (NULL, 4, 'mounette4', 'Réceptionniste'),
           (NULL, 4, 'soubise4', 'Réceptionniste'),
           (NULL, 4, 'andre4', 'Manager'),
           (NULL, 5, 'fabrice5', 'Réceptionniste'),
           (NULL, 5, 'monique5', 'Réceptionniste'),
           (NULL, 5, 'joubert5', 'Manager');

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

-- Some values for the Pizzeria table.
INSERT INTO Pizzeria
    VALUES (1, 'Victoire', '44.8307086,-0.5720470999999999'),
           (2, 'Chartron', '44.8570336,-0.5656962'),
           (3, 'Saint Pierre', '44.8400225,-0.5707422999999999'),
           (4, 'Meriadeck', '44.8356851,-0.5840582999999999'),
           (5, 'Gare', '44.8281687,-0.5582281000000001');

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

-- Some values for the Pizza table.
INSERT INTO Pizza
    VALUES (1, 'Marguerite', 's', 2.90),
           (2, 'Reine', 's', 2.90),
           (3, 'Quatre Saisons', 's', 2.90),
           (4, 'Carnivore', 's', 2.90),
           (5, 'Marguerite', 'f', 3.90),
           (6, 'Reine', 'f', 3.90),
           (7, 'Quatre Saisons', 'f', 3.90),
           (8, 'Carnivore', 'f', 3.90),

-- Some values for the Ingredient table.
INSERT INTO Ingredient
    VALUES (1, 'Sauce tomate', 1.00),
           (2, 'Mozzarella', 2.00),
           (3, 'Emmental', 2.00),
           (4, 'Jambon', 2.00),
           (5, 'Poulet', 1.50),
           (6, 'Boeuf', 1.50),
           (7, 'Champignon', 1.00),
           (8, 'Oignon', 1.00),
           (9, 'Poivron', 1.00);

-- Some values for the Pizza_Ingredient table.
INSERT INTO Pizza_Ingredient
    VALUES (1, 1, 1), (1, 2, 1), (1, 3, 1),
           (2, 1, 1), (2, 2, 1), (2, 4, 1), (2, 7, 1),
           (3, 1, 1), (3, 2, 1), (3, 7, 1), (3, 8, 1), (3, 9, 1),
           (4, 1, 1), (4, 2, 1), (4, 4, 1), (4, 5, 1), (4, 6, 1),
           (5, 1, 2), (5, 2, 2), (5, 3, 2),
           (6, 1, 2), (6, 2, 2), (6, 4, 2), (6, 7, 2),
           (7, 1, 2), (7, 2, 2), (7, 7, 2), (7, 8, 2), (7, 9, 2),
           (8, 1, 2), (8, 2, 2), (8, 4, 2), (8, 5, 2), (8, 6, 2);

-- Some values for the Stock table.
INSERT INTO Stock
    VALUES (1, 1, 300, '2018-02-01 10:05:08'), (1, 2, 250, '2018-02-01 10:05:13'),
           (1, 3, 100, '2018-02-01 10:05:24'), (1, 4, 220, '2018-02-01 10:05:34'),
           (1, 5, 120, '2018-02-01 10:05:44'), (1, 6, 140, '2018-02-01 10:05:54'),
           (1, 7, 160, '2018-02-01 10:06:04'), (1, 8, 110, '2018-02-01 10:06:14'),
           (1, 9, 100, '2018-02-01 10:06:24'),
           (2, 1, 360, '2018-02-01 10:05:23'), (2, 2, 250, '2018-02-01 10:05:28'),
           (2, 3, 80, '2018-02-01 10:05:35'), (2, 4, 100, '2018-02-01 10:05:44'),
           (2, 5, 140, '2018-02-01 10:05:54'), (2, 6, 100, '2018-02-01 10:06:05'),
           (2, 7, 80, '2018-02-01 10:06:14'), (2, 8, 120, '2018-02-01 10:06:44'),
           (2, 9, 110, '2018-02-01 10:06:52'),
           (3, 1, 300, '2018-02-01 10:05:23'), (3, 2, 280, '2018-02-01 10:05:33'),
           (3, 3, 50, '2018-02-01 10:05:44'), (3, 4, 100, '2018-02-01 10:05:54'),
           (3, 5, 150, '2018-02-01 10:06:04'), (3, 6, 170, '2018-02-01 10:06:14'),
           (3, 7, 180, '2018-02-01 10:06:24'), (3, 8, 110, '2018-02-01 10:06:34'),
           (3, 9, 80, '2018-02-01 10:06:44'),
           (4, 1, 280, '2018-02-01 10:05:02'), (4, 2, 320, '2018-02-01 10:05:12'),
           (4, 3, 160, '2018-02-01 10:05:22'), (4, 4, 200, '2018-02-01 10:05:32'),
           (4, 5, 120, '2018-02-01 10:05:42'), (4, 6, 110, '2018-02-01 10:05:52'),
           (4, 7, 100, '2018-02-01 10:06:02'), (4, 8, 80, '2018-02-01 10:06:12'),
           (4, 9, 90, '2018-02-01 10:06:22'),
           (5, 1, 400, '2018-02-01 10:05:02'), (5, 2, 400, '2018-02-01 10:05:11'),
           (5, 3, 40, '2018-02-01 10:05:22'), (5, 4, 200, '2018-02-01 10:05:30'),
           (5, 5, 220, '2018-02-01 10:05:38'), (5, 6, 210, '2018-02-01 10:05:48'),
           (5, 7, 180, '2018-02-01 10:05:58'), (5, 8, 160, '2018-02-01 10:06:06'),
           (5, 9, 150, '2018-02-01 10:06:17');
