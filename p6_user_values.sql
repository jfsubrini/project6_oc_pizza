-- OC PIZZA Database : USER DEMO VALUES - Some examples of data from users.

-- Copyright Jean-François Subrini, student DA Python at OpenClassrooms, 28/02/2018.


-- Some values for the Buyer table.
INSERT INTO Buyer (id, first_name, last_name, gender, password, phone_number)
    VALUES (22, 'Patrick', 'Dutreuil', 'H', 'WjYXvQfH9zY94R4f', 0685531983),
           (23, 'Marcel', 'Mantaro', 'H', 'yrZs4mCmEr9kqQhX', 0690362776),
           (24, 'Julien', 'Guigonis', 'H', 'L6pVPntV3DkZny2J', 0689345621),
           (25, 'Sylvie', 'Aulis', 'F', 'tLUuNUvePMxAF4T6', 0678610987),
           (26, 'Charles', 'Desplat', 'H', 'EvC57z4pd8MWFdqs', 0634562781),
           (27, 'Juliette', 'Leloy', 'F', 'GESXPkqVAeyw9bk6', 0667453876),
           (28, 'Pierre', 'Quevenec', 'H', 'DMFPpVnSatapeKv9', 0689789021),
           (29, 'Eric', 'Martin', 'H', '2ppeAqYXAbaRnMQj', 0697902543),
           (30, 'Nathan', 'xxx', 'H', 'xxx', 0000000000),
           (31, 'Paul', 'xxx', 'H', 'xxx', 0000000000),
           (32, 'Stéphanie', 'Louisca', 'F', 'aVNV9abHZbvgJNEF', 0617458940),
           (33, 'Nathalie', 'xxx', 'F', 'xxx', 0000000000),
           (34, 'Raoul', 'Gomez', 'H', 'ZxVTH6bAHavNnN8L', 0678348920),
           (35, 'Anne', 'Retournille', 'F', 'XHn73nNpXQaJU25x', 0678790012),
           (36, 'Pablo', 'Hierro', 'H', 'JQm9ra94TFAcrgT6', 0611346743);

-- Some values for the WebCustomer table.
INSERT INTO WebCustomer (buyer_id, email, birthday, job_status)
    VALUES (22, 'patdutreuil12@gmail.com', NULL, NULL),
           (23, 'marcel.mantaro3@yahoo.com', NULL, NULL),
           (24, 'julien.guigonis@laposte.com', '1997-12-13', 'Etudiant.e'),
           (25, 'sylvieaulis@gmail.com', '1990-03-23', 'Sans emploi'),
           (26, 'charles.desplat@gmail.com', NULL, 'Cadre'),
           (27, 'jujuleloy@gmail.com', '1987-08-10', 'Employé.e'),
           (28, 'pierrequevenec5@gmail.com', '1970-07-23', NULL),
           (29, 'eric.martin13@yahoo.com', '1973-12-04', NULL),
           (30, 'xxx', NULL, NULL),
           (31, 'xxx', NULL, NULL),
           (32, 'steph.louisca@gmail.com', '1965-10-31', 'Sans Emploi'),
           (33, 'xxx', NULL, NULL),
           (34, 'raoulgomez@yahoo.com', '1977-02-23', 'Employé.e'),
           (35, 'anne.retournille@gmail.com', '1984-05-21', NULL),
           (36, 'pablo.hierro@gmail.com', '1981-04-03', 'Employé.e');

-- Some values for the Address table.
INSERT INTO Address (id, street_1, street_2, city, zip_code, comment, type, webcustomer_id, nearest_pizzeria)
    VALUES (6, "3, Rue des Chartrons", NULL, 'Bordeaux', '33000', "3e étage gauche", 1, 22, 1),
           (7, "5, Cours de l'Argone", NULL, 'Bordeaux', '33000', NULL, 1, 23, 1),
           (8, "39, Cours Pasteur", NULL, 'Bordeaux', '33000', NULL, 1, 24, 5),
           (9, "56, Cours Victor Hugo", NULL, 'Bordeaux', '33000', "5e étage gauche, code porte 5GRSZ", 2, 24, 3),
           (10, "7, Rue Ravez", NULL, 'Bordeaux', '33000', NULL, 1, 25, 4),
           (11, "Résidence Le Soleil", '10, Impasse du Tondu', 'Bordeaux', '33000', "Immeuble A, 3e étage gauche", 1, 26, 3),
           (12, "32, Rue Nicot", NULL, 'Bordeaux', '33000', "2e étage droite", 3, 26, 3),
           (13, "4, Rue Henri IV", NULL, 'Bordeaux', '33000', NULL, 1, 27, 2),
           (14, "1, Rue Maubec", NULL, 'Bordeaux', '33000', "5e étage gauche", 1, 28, 5),
           (15, "11, Rue Boudet", NULL, 'Bordeaux', '33000', NULL, 1, 29, 3),
           (16, "45, Rue Borie", NULL, 'Bordeaux', '33000', NULL, 1, 32, 2),
           (17, "6, Cours de la Marne", NULL, 'Bordeaux', '33000', NULL, 1, 34, 3),
           (18, "61, Rue Condorcet", NULL, 'Bordeaux', '33000', NULL, 1, 35, 1),
           (19, "127, Cours de la Somme", NULL, 'Bordeaux', '33000', NULL, 1, 36, 1);

-- Some values for the OrderPizza table.
INSERT INTO OrderPizza (num, buyer_id, pizzeria_id, date_order, time_order, state, delivery_or_not, invoice_address,
    delivery_address, payment_mode, payment_done, bank_token)
    VALUES (1, 22, 1, '2018-02-20', '11:52:06', 'On Delivery', true, 6, 6, 'Paid online', true, 'Wwc8HepvP2h7aBN6'),
           (2, 23, 1, '2018-02-20', '11:55:16', 'Prepared', true, 7, 7, 'Paid online', true, 'L8WA3mqwnk4AA4Bq'),
           (3, 24, 5, '2018-02-20', '12:05:43', 'Prepared', true, 8, 8, 'Paid online', true, 'XE6hWnmTkg7cuFTp'),
           (4, 25, 4, '2018-02-20', '12:07:21', 'Being Prepared', true, 10, 10, 'Paid online', true, 'SSp6TEffkWaGEHgY'),
           (5, 26, 3, '2018-02-20', '12:10:10', 'Being Prepared', true, 11, 12, 'Cash on delivery', false, NULL),
           (6, 27, 2, '2018-02-20', '12:10:16', 'Being Prepared', true, 13, 13, 'Cash on delivery', false, NULL),
           (7, 28, 5, '2018-02-20', '12:10:45', 'Being Prepared', true, 14, 14, 'Paid online', true, '6nzAXxV3CRNV2LSV'),
           (8, 29, 3, '2018-02-20', '12:10:47', 'Waiting List', true, 15, 15, 'Paid online', true, '2X68mjRZspRVH33S'),
           (9, 30, 1, '2018-02-20', '12:10:57', 'Being Prepared', false, NULL, NULL, 'Credit card pizzeria', true, '2S27QQLEkeYdhcAJ'),
           (10, 31, 1, '2018-02-20', '12:11:04', 'Waiting List', false, NULL, NULL, 'Credit card pizzeria', true, 'j2WGMw3x8erRDZNC'),
           (11, 32, 2, '2018-02-20', '12:11:17', 'Waiting List', true, 16, 16, 'Paid online', true, 'rpPjTCAh8EdfarnG'),
           (12, 33, 4, '2018-02-20', '12:11:25', 'Waiting List', false, NULL, NULL, 'Cash pizzeria', true, NULL),
           (13, 34, 3, '2018-02-20', '12:11:46', 'Waiting List', true, 17, 17, 'Paid online', true, 'mvGMc8k8dfbJDED7'),
           (14, 35, 1, '2018-02-20', '12:11:56', 'Waiting List', true, 18, 18, 'Cash on delivery', false, NULL),
           (15, 36, 1, '2018-02-20', '12:11:58', 'Waiting List', true, 19, 19, 'Paid online', true, 'murWnfz5HBufdL4f');

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
