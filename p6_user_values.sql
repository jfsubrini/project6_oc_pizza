-- OC PIZZA Database : DEMO VALUES

-- Copyright Jean-François Subrini, student DA Python at OpenClassrooms, 10/02/2018.


-- Creating the oc_pizza database after droping the previous one if exists.
-- DROP DATABASE IF EXISTS oc_pizza; CREATE DATABASE oc_pizza CHARACTER SET 'utf8';
-- Granting all privileges of that database to my username.
-- GRANT ALL PRIVILEGES ON oc_pizza.* TO 'jfsubrini'@'localhost' IDENTIFIED BY 'jeremiehugo1';

-- Use the oc_pizza database.
USE oc_pizza;

-- Some values for the Buyer table.
INSERT INTO Buyer (id, first_name, last_name, gender, password, phone_number)
    VALUES (NULL, 'Patrick', 'Dutreuil', 'H', 'fgger4527AB', 0685531983),
           (NULL, 'Marcel', 'Mantaro', 'H', '355fgDFHryd', 0690362776),
           (NULL, 'Julien', 'Guigonis', 'H', 'hju74qfGDSG', 0689345621),
           (NULL, 'Sylvie', 'Aulis', 'F', '6Rdfgfj643', 0678610987),
           (NULL, 'Charles', 'Desplat', 'H', 'i7GYD5tt45YG', 0634562781),
           (NULL, 'Juliette', 'Leloy', 'F', 'TFD64nfbfgg', 0667453876),
           (NULL, 'Pierre', 'Quevenec', 'H', 'yttr78EFDF', 0689789021);

-- Some values for the WebCustomer table.
INSERT INTO WebCustomer (buyer_id, email, birthday, job_status)
    VALUES (NULL, 'patdutreuil12@gmail.com', NULL, NULL),
           (NULL, 'marcel.mantaro3@yahoo.com', NULL, NULL),
           (NULL, 'julien.guigonis@laposte.com', '1997-12-13', 'Etudiant.e'),
           (NULL, 'sylvieaulis@gmail.com', '1990-03-23', 'Sans emploi'),
           (NULL, 'charles.desplat@gmail.com', NULL, 'Cadre'),
           (NULL, 'jujuleloy@gmail.com', '1987-08-10', 'Employé.e'),
           (NULL, 'pierrequevenec5@gmail.com', '1985-06-01', 'Employé.e');

-- Some values for the Address table.
INSERT INTO Address (id, street_1, street_2, city, zip_code, comment, type, webcustomer_id)
    VALUES (NULL, "3, Rue des Chartrons", NULL, 'Bordeaux', '33000', "3e étage gauche", 1, 1),
           (NULL, "5, Cours de l'Argone", NULL, 'Bordeaux', '33000', NULL, 1, 2),
           (NULL, "39, Cours Pasteur", NULL, 'Bordeaux', '33000', NULL, 1, 3),
           (NULL, "56, Cours Victor Hugo", NULL, 'Bordeaux', '33000', "5e étage gauche, code porte 5GRSZ", 2, 3),
           (NULL, "7, Rue Ravez", NULL, 'Bordeaux', '33000', NULL, 1, 4),
           (NULL, "Résidence Le Soleil", '10, Impasse du Tondu', 'Bordeaux', '33000', "Immeuble A, 3e étage gauche", 1, 5),
           (NULL, "32, Rue Nicot", NULL, 'Bordeaux', '33000', "2e étage droite", 3, 5),
           (NULL, "4, Rue Henri IV", NULL, 'Bordeaux', '33000', NULL, 1, 6),
           (NULL, "1, Rue Maubec", NULL, 'Bordeaux', '33000', "5e étage gauche", 1, 7),
           (NULL, "11, Rue Boudet", NULL, 'Bordeaux', '33000', NULL, 1, 8),
           (NULL, "45, Rue Borie", NULL, 'Bordeaux', '33000', NULL, 1, 9),
           (NULL, "6, Cours de la Marne", NULL, 'Bordeaux', '33000', NULL, 1, 10),
           (NULL, "61, Rue Condorcet", NULL, 'Bordeaux', '33000', NULL, 1, 11),
           (NULL, "127, Cours de la Somme", NULL, 'Bordeaux', '33000', NULL, 1, 12);

-- Some values for the OrderPizza table.
INSERT INTO OrderPizza (num, buyer_id, pizzeria_id, date_order, hour_order, state, total_price_ttc,
	payment_mode, invoice_address, delivery_address, delivery_or_not)
    VALUES (NULL, 1, 1, '2018-02-20', '11:52:06', 'On Delivery', 16.80, 1, 1, 1, 'o'),
           (NULL, 2, 1, '2018-02-20', '11:55:16', 'Prepared', 25.20, 1, 2, 2, 'o'),
           (NULL, 3, 5, '2018-02-20', '12:05:43', 'Prepared', 49.40, 1, 3, 3, 'o'),
           (NULL, 4, 4, '2018-02-20', '12:07:21', 'Being Prepared', 16.80, 1, 5, 5, 'o'),
           (NULL, 5, 3, '2018-02-20', '12:10:10', 'Being Prepared', 29.60, 2, 6, 7, 'o'),
           (NULL, 6, 2, '2018-02-20', '12:10:16', 'Being Prepared', 25.20, 2, 8, 8, 'o'),
           (NULL, 7, 5, '2018-02-20', '12:10:45', 'Being Prepared', 67.20, 1, 9, 9, 'o'),
           (NULL, 8, 3, '2018-02-20', '12:10:47', 'Waiting List', 25.20, 1, 10, 10, 'o'),
           (NULL, 0, 1, '2018-02-20', '12:10:57', 'Being Prepared', 8.40, 3, 0, 0, 'n'),
           (NULL, 0, 1, '2018-02-20', '12:11:04', 'Waiting List', 42.00, 3, 0, 0, 'n'),
           (NULL, 9, 2, '2018-02-20', '12:11:17', 'Waiting List', 15.80, 1, 11, 11, 'o'),
           (NULL, 0, 4, '2018-02-20', '12:11:25', 'Waiting List', 16.80, 4, 0, 0, 'n'),
           (NULL, 10, 3, '2018-02-20', '12:11:46', 'Waiting List', 23.20, 1, 12, 12, 'o'),
           (NULL, 11, 1, '2018-02-20', '12:11:56', 'Waiting List', 31.60, 2, 13, 13, 'o'),
           (NULL, 12, 1, '2018-02-20', '12:11:58', 'Waiting List', 33.60, 1, 14, 14, 'o');

-- Some values for the OrderLine table.
INSERT INTO OrderLine (order_num, pizza_id, quantity)
    VALUES (1, 3, 2),
           (2, 4, 1),
           (2, 7, 1),
           (3, 2, 1),
           (3, 1, 1),
           (3, 6, 1),
           (3, 8, 1),
           (4, 4, 1),
           (4, 2, 1),
           (5, 2, 4),
           (6, 4, 1),
           (6, 6, 1),
           (7, 7, 2),
           (7, 8, 2),
           (8, 6, 1),
           (8, 3, 1),
           (9, 2, 1),
           (10, 6, 1),
           (10, 8, 1),
           (10, 2, 1),
           (11, 1, 1),
           (11, 4, 1),
           (12, 2, 2),
		   (13, 3, 1),
           (13, 5, 1),
           (14, 6, 1),
           (14, 1, 2),
           (15, 2, 1),
           (15, 4, 1),
           (15, 7, 1);
