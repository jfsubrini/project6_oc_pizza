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
    VALUES (16, 'Patrick', 'Dutreuil', 'H', 'fgger4527AB', 0685531983),
           (17, 'Marcel', 'Mantaro', 'H', '355fgDFHryd', 0690362776),
           (18, 'Julien', 'Guigonis', 'H', 'hju74qfGDSG', 0689345621),
           (19, 'Sylvie', 'Aulis', 'F', '6Rdfgfj643', 0678610987),
           (20, 'Charles', 'Desplat', 'H', 'i7GYD5tt45YG', 0634562781),
           (21, 'Juliette', 'Leloy', 'F', 'TFD64nfbfgg', 0667453876),
           (22, 'Pierre', 'Quevenec', 'H', 'yttr78EFDF', 0689789021),
           (23, 'Eric', 'Martin', 'H', 'y5SSF78yFy', 0697902543),
           (24, 'Stéphanie', 'Louisca', 'F', 'GGes445Ess', 0617458940),
           (25, 'Raoul', 'Gomez', 'H', 'ttd6774fZR', 0678348920),
           (26, 'Anne', 'Retournille', 'F', 'rt6778Fssf', 0678790012),
           (27, 'Pablo', 'Hierro', 'H', '46SfftE553', 0611346743);

-- Some values for the WebCustomer table.
INSERT INTO WebCustomer (buyer_id, email, birthday, job_status)
    VALUES (16, 'patdutreuil12@gmail.com', NULL, NULL),
           (17, 'marcel.mantaro3@yahoo.com', NULL, NULL),
           (18, 'julien.guigonis@laposte.com', '1997-12-13', 'Etudiant.e'),
           (19, 'sylvieaulis@gmail.com', '1990-03-23', 'Sans emploi'),
           (20, 'charles.desplat@gmail.com', NULL, 'Cadre'),
           (21, 'jujuleloy@gmail.com', '1987-08-10', 'Employé.e'),
           (22, 'pierrequevenec5@gmail.com', '1970-07-23', NULL),
           (23, 'eric.martin13@yahoo.com', '1973-12-04', NULL),
           (24, 'steph.louisca@gmail.com', '1965-10-31', 'Sans Emploi'),
           (25, 'raoulgomez@yahoo.com', '1977-02-23', 'Employé.e'),
           (26, 'anne.retournille@gmail.com', '1984-05-21', NULL),
           (27, 'pablo.hierro@gmail.com', '1981-04-03', 'Employé.e');

-- Some values for the Address table.
INSERT INTO Address (id, street_1, street_2, city, zip_code, comment, type, webcustomer_id)
    VALUES (1, "3, Rue des Chartrons", NULL, 'Bordeaux', '33000', "3e étage gauche", 1, 16),
           (2, "5, Cours de l'Argone", NULL, 'Bordeaux', '33000', NULL, 1, 17),
           (3, "39, Cours Pasteur", NULL, 'Bordeaux', '33000', NULL, 1, 18),
           (4, "56, Cours Victor Hugo", NULL, 'Bordeaux', '33000', "5e étage gauche, code porte 5GRSZ", 2, 18),
           (5, "7, Rue Ravez", NULL, 'Bordeaux', '33000', NULL, 1, 19),
           (6, "Résidence Le Soleil", '10, Impasse du Tondu', 'Bordeaux', '33000', "Immeuble A, 3e étage gauche", 1, 20),
           (7, "32, Rue Nicot", NULL, 'Bordeaux', '33000', "2e étage droite", 3, 20),
           (8, "4, Rue Henri IV", NULL, 'Bordeaux', '33000', NULL, 1, 21),
           (9, "1, Rue Maubec", NULL, 'Bordeaux', '33000', "5e étage gauche", 1, 22),
           (10, "11, Rue Boudet", NULL, 'Bordeaux', '33000', NULL, 1, 23),
           (11, "45, Rue Borie", NULL, 'Bordeaux', '33000', NULL, 1, 24),
           (12, "6, Cours de la Marne", NULL, 'Bordeaux', '33000', NULL, 1, 25),
           (13, "61, Rue Condorcet", NULL, 'Bordeaux', '33000', NULL, 1, 26),
           (14, "127, Cours de la Somme", NULL, 'Bordeaux', '33000', NULL, 1, 27);

-- Some values for the OrderPizza table.
INSERT INTO OrderPizza (num, buyer_id, pizzeria_id, date_order, hour_order, state, payment_mode, invoice_address,
    delivery_address, delivery_or_not)
    VALUES (1, 16, 1, '2018-02-20', '11:52:06', 'On Delivery', 'Paid online', 1, 1, True),
           (2, 17, 1, '2018-02-20', '11:55:16', 'Prepared', 'Paid online', 2, 2, True),
           (3, 18, 5, '2018-02-20', '12:05:43', 'Prepared', 'Paid online', 3, 3, True),
           (4, 19, 4, '2018-02-20', '12:07:21', 'Being Prepared', 'Paid online', 5, 5, True),
           (5, 20, 3, '2018-02-20', '12:10:10', 'Being Prepared', 'Cash on delivery', 6, 7, True),
           (6, 21, 2, '2018-02-20', '12:10:16', 'Being Prepared', 'Cash on delivery', 8, 8, True),
           (7, 22, 5, '2018-02-20', '12:10:45', 'Being Prepared', 'Paid online', 9, 9, True),
           (8, 23, 3, '2018-02-20', '12:10:47', 'Waiting List', 'Paid online', 10, 10, True),
           (9, 0, 1, '2018-02-20', '12:10:57', 'Being Prepared', 'Credit card pizzeria', 0, 0, False),
           (10, 0, 1, '2018-02-20', '12:11:04', 'Waiting List', 'Credit card pizzeria', 0, 0, False),
           (11, 24, 2, '2018-02-20', '12:11:17', 'Waiting List', 'Paid online', 11, 11, True),
           (12, 0, 4, '2018-02-20', '12:11:25', 'Waiting List', 'Cash pizzeria', 0, 0, False),
           (13, 25, 3, '2018-02-20', '12:11:46', 'Waiting List', 'Paid online', 12, 12, True),
           (14, 26, 1, '2018-02-20', '12:11:56', 'Waiting List', 'Cash on delivery', 13, 13, True),
           (15, 27, 1, '2018-02-20', '12:11:58', 'Waiting List', 'Paid online', 14, 14, True);

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
