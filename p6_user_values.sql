-- OC PIZZA Database : USER DEMO VALUES - Some examples of data from users.

-- Copyright Jean-François Subrini, student DA Python at OpenClassrooms, 22/02/2018.


-- Some values for the Buyer table.
INSERT INTO Buyer (id, first_name, last_name, gender, password, phone_number)
    VALUES (16, 'Patrick', 'Dutreuil', 'H', 'WjYXvQfH9zY94R4f', 0685531983),
           (17, 'Marcel', 'Mantaro', 'H', 'yrZs4mCmEr9kqQhX', 0690362776),
           (18, 'Julien', 'Guigonis', 'H', 'L6pVPntV3DkZny2J', 0689345621),
           (19, 'Sylvie', 'Aulis', 'F', 'tLUuNUvePMxAF4T6', 0678610987),
           (20, 'Charles', 'Desplat', 'H', 'EvC57z4pd8MWFdqs', 0634562781),
           (21, 'Juliette', 'Leloy', 'F', 'GESXPkqVAeyw9bk6', 0667453876),
           (22, 'Pierre', 'Quevenec', 'H', 'DMFPpVnSatapeKv9', 0689789021),
           (23, 'Eric', 'Martin', 'H', '2ppeAqYXAbaRnMQj', 0697902543),
           (24, 'Nathan', 'xxx', 'H', 'xxx', 0000000000),
           (25, 'Paul', 'xxx', 'H', 'xxx', 0000000000),
           (26, 'Stéphanie', 'Louisca', 'F', 'aVNV9abHZbvgJNEF', 0617458940),
           (27, 'Nathalie', 'xxx', 'F', 'xxx', 0000000000),
           (28, 'Raoul', 'Gomez', 'H', 'ZxVTH6bAHavNnN8L', 0678348920),
           (29, 'Anne', 'Retournille', 'F', 'XHn73nNpXQaJU25x', 0678790012),
           (30, 'Pablo', 'Hierro', 'H', 'JQm9ra94TFAcrgT6', 0611346743);

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
           (24, 'xxx', NULL, NULL),
           (25, 'xxx', NULL, NULL),
           (26, 'steph.louisca@gmail.com', '1965-10-31', 'Sans Emploi'),
           (27, 'xxx', NULL, NULL),
           (28, 'raoulgomez@yahoo.com', '1977-02-23', 'Employé.e'),
           (29, 'anne.retournille@gmail.com', '1984-05-21', NULL),
           (30, 'pablo.hierro@gmail.com', '1981-04-03', 'Employé.e');

-- Some values for the Address table.
INSERT INTO Address (id, street_1, street_2, city, zip_code, comment, type, webcustomer_id)
    VALUES (6, "3, Rue des Chartrons", NULL, 'Bordeaux', '33000', "3e étage gauche", 1, 16),
           (7, "5, Cours de l'Argone", NULL, 'Bordeaux', '33000', NULL, 1, 17),
           (8, "39, Cours Pasteur", NULL, 'Bordeaux', '33000', NULL, 1, 18),
           (9, "56, Cours Victor Hugo", NULL, 'Bordeaux', '33000', "5e étage gauche, code porte 5GRSZ", 2, 18),
           (10, "7, Rue Ravez", NULL, 'Bordeaux', '33000', NULL, 1, 19),
           (11, "Résidence Le Soleil", '10, Impasse du Tondu', 'Bordeaux', '33000', "Immeuble A, 3e étage gauche", 1, 20),
           (12, "32, Rue Nicot", NULL, 'Bordeaux', '33000', "2e étage droite", 3, 20),
           (13, "4, Rue Henri IV", NULL, 'Bordeaux', '33000', NULL, 1, 21),
           (14, "1, Rue Maubec", NULL, 'Bordeaux', '33000', "5e étage gauche", 1, 22),
           (15, "11, Rue Boudet", NULL, 'Bordeaux', '33000', NULL, 1, 23),
           (16, "45, Rue Borie", NULL, 'Bordeaux', '33000', NULL, 1, 26),
           (17, "6, Cours de la Marne", NULL, 'Bordeaux', '33000', NULL, 1, 28),
           (18, "61, Rue Condorcet", NULL, 'Bordeaux', '33000', NULL, 1, 29),
           (19, "127, Cours de la Somme", NULL, 'Bordeaux', '33000', NULL, 1, 30);

-- Some values for the OrderPizza table.
INSERT INTO OrderPizza (num, buyer_id, pizzeria_id, date_order, time_order, state, delivery_or_not, invoice_address,
    delivery_address, payment_mode, payment_done, bank_token)
    VALUES (1, 16, 1, '2018-02-20', '11:52:06', 'On Delivery', true, 6, 6, 'Paid online', true, 'Wwc8HepvP2h7aBN6'),
           (2, 17, 1, '2018-02-20', '11:55:16', 'Prepared', true, 7, 7, 'Paid online', true, 'L8WA3mqwnk4AA4Bq'),
           (3, 18, 5, '2018-02-20', '12:05:43', 'Prepared', true, 8, 8, 'Paid online', true, 'XE6hWnmTkg7cuFTp'),
           (4, 19, 4, '2018-02-20', '12:07:21', 'Being Prepared', true, 10, 10, 'Paid online', true, 'SSp6TEffkWaGEHgY'),
           (5, 20, 3, '2018-02-20', '12:10:10', 'Being Prepared', true, 11, 12, 'Cash on delivery', false, NULL),
           (6, 21, 2, '2018-02-20', '12:10:16', 'Being Prepared', true, 13, 13, 'Cash on delivery', false, NULL),
           (7, 22, 5, '2018-02-20', '12:10:45', 'Being Prepared', true, 14, 14, 'Paid online', true, '6nzAXxV3CRNV2LSV'),
           (8, 23, 3, '2018-02-20', '12:10:47', 'Waiting List', true, 15, 15, 'Paid online', true, '2X68mjRZspRVH33S'),
           (9, 24, 1, '2018-02-20', '12:10:57', 'Being Prepared', false, NULL, NULL, 'Credit card pizzeria', true, '2S27QQLEkeYdhcAJ'),
           (10, 25, 1, '2018-02-20', '12:11:04', 'Waiting List', false, NULL, NULL, 'Credit card pizzeria', true, 'j2WGMw3x8erRDZNC'),
           (11, 26, 2, '2018-02-20', '12:11:17', 'Waiting List', true, 16, 16, 'Paid online', true, 'rpPjTCAh8EdfarnG'),
           (12, 27, 4, '2018-02-20', '12:11:25', 'Waiting List', false, NULL, NULL, 'Cash pizzeria', true, NULL),
           (13, 28, 3, '2018-02-20', '12:11:46', 'Waiting List', true, 17, 17, 'Paid online', true, 'mvGMc8k8dfbJDED7'),
           (14, 29, 1, '2018-02-20', '12:11:56', 'Waiting List', true, 18, 18, 'Cash on delivery', false, NULL),
           (15, 30, 1, '2018-02-20', '12:11:58', 'Waiting List', true, 19, 19, 'Paid online', true, 'murWnfz5HBufdL4f');

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
