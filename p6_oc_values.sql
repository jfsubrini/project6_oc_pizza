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
    VALUES (1, 'Patrick', 'Dupont', 'H', '123z45zrs67', 0678936741),
           (2, 'Jérémie', 'Martin', 'H', 'sffs1m567zer', 0673216709),
           (3, 'Joseph', 'Durant', 'H', 'tdd123zeaze', 0612376436),
           (4, 'Stéphanie', 'Amelon', 'F', '1er234qsdqsd', 0656879899),
           (5, 'Gisèle', 'Goule', 'F', 'ii12rgdv789', 0613212114),
           (6, 'Jeanne', 'Igoine', 'F', '12fddg3fdgdfg', 0671555678),
           (7, 'Antoine', 'Meunier', 'H', 'pp2fddg3fdgdfg', 0679955678),
		       (8, 'Benoît', 'Leclerc', 'H', 'dsfkl2345sfsdf', 0679564328),
		       (9, 'Geneviève', 'Lemarais', 'F', 'sdf442s345sfsdf', 0696432003),
		       (10, 'Monique', 'Legendre', 'F', 'dsg42qsdfdf2s34', 0664305123),
		       (11, 'Sonia', 'Bisette', 'F', '442dfsdf42qfdf2', 0643511213),
		       (12, 'André', 'Sainz', 'M', 'zrtfsdfsd2d44', 0635122879),
		       (13, 'Fabrice', 'Santori', 'M', '4sdfgztss27gg', 0651252789),
		       (14, 'Monique', 'Soulier', 'F', 'fgsfg456gzt67', 0625285898),
		       (15, 'Julie', 'Joubert', 'F', 'fdgdfg654564s', 0658589878);

-- Some values for the Pizzeria table.
INSERT INTO Pizzeria (id, name, address)
    VALUES (1, 'Victoire', '44.8307086,-0.5720470999999999'),
           (2, 'Chartron', '44.8570336,-0.5656962'),
           (3, 'Saint Pierre', '44.8400225,-0.5707422999999999'),
           (4, 'Meriadeck', '44.8356851,-0.5840582999999999'),
           (5, 'Gare', '44.8281687,-0.5582281000000001');

-- Some values for the OCPizzaUser table.
INSERT INTO OCPizzaUser (buyer_id, pizzeria_id, username, role)
    VALUES (1, 1, 'patoche1', 'Réceptionniste'),
           (2, 1, 'minouche1', 'Réceptionniste'),
           (3, 1, 'jojo1', 'Manager'),
           (4, 2, 'ninive2', 'Réceptionniste'),
           (5, 2, 'gigoule2', 'Réceptionniste'),
           (6, 2, 'jigoine2', 'Manager'),
           (7, 3, 'nono3', 'Réceptionniste'),
           (8, 3, 'bibine3', 'Réceptionniste'),
           (9, 3, 'ginette3', 'Manager'),
           (10, 4, 'mounette4', 'Réceptionniste'),
           (11, 4, 'soubise4', 'Réceptionniste'),
           (12, 4, 'andre4', 'Manager'),
           (13, 5, 'fabrice5', 'Réceptionniste'),
           (14, 5, 'monique5', 'Réceptionniste'),
           (15, 5, 'jjoubert5', 'Manager');

-- Some values for the Pizza table.
INSERT INTO Pizza (id, name, size)
    VALUES (1, 'Marguerite', 1),
           (2, 'Reine', 1),
           (3, 'Quatre Saisons', 1),
           (4, 'Carnivore', 1),
           (5, 'Marguerite', 2),
           (6, 'Reine', 2),
           (7, 'Quatre Saisons', 2),
           (8, 'Carnivore', 2);

-- Some values for the Ingredient table.
INSERT INTO Ingredient (id, name, price_ttc)
    VALUES (1, 'Pâte', 2.40),
    	     (2, 'Sauce tomate', 1.00),
           (3, 'Mozzarella', 2.00),
           (4, 'Emmental', 2.00),
           (5, 'Jambon', 2.00),
           (6, 'Poulet', 1.50),
           (7, 'Boeuf', 1.50),
           (8, 'Champignon', 1.00),
           (9, 'Oignon', 1.00),
           (10, 'Poivron', 1.00);

-- Some values for the Pizza_Ingredient table.
INSERT INTO Pizza_Ingredient (pizza_id, ingredient_id, dosis)
    VALUES (1, 1, 1), (1, 2, 1), (1, 3, 1), (1, 4, 1),
           (2, 1, 1), (2, 2, 1), (2, 3, 1), (2, 5, 1), (2, 8, 1),
           (3, 1, 1), (3, 2, 1), (3, 3, 1), (3, 8, 1), (3, 9, 1), (3, 10, 1),
           (4, 1, 1), (4, 2, 1), (4, 3, 1), (4, 5, 1), (4, 6, 1), (4, 7, 1),
           (5, 1, 2), (5, 2, 2), (5, 3, 2), (5, 4, 2),
           (6, 1, 2), (6, 2, 2), (6, 3, 2), (6, 5, 2), (6, 8, 2),
           (7, 1, 2), (7, 2, 2), (7, 3, 2), (7, 8, 2), (7, 9, 2), (7, 10, 2),
           (8, 1, 2), (8, 2, 2), (8, 3, 2), (8, 5, 2), (8, 6, 2), (8, 7, 2);

-- Some values for the Stock table.
INSERT INTO Stock (pizzeria_id, ingredient_id, quantity_dosis)
    VALUES (1, 1, 300), (1, 2, 250), (1, 3, 100), (1, 4, 220), (1, 5, 120),
           (1, 6, 140), (1, 7, 160), (1, 8, 110), (1, 9, 100), (1, 10, 300),
           (2, 1, 360), (2, 2, 250), (2, 3, 80), (2, 4, 100), (2, 5, 140),
           (2, 6, 100), (2, 7, 80), (2, 8, 120), (2, 9, 110), (2, 10, 310),
           (3, 1, 300), (3, 2, 280), (3, 3, 50), (3, 4, 100), (3, 5, 150),
           (3, 6, 170), (3, 7, 180), (3, 8, 110), (3, 9, 80), (3, 10, 280),
           (4, 1, 280), (4, 2, 320), (4, 3, 160), (4, 4, 200), (4, 5, 120),
           (4, 6, 110), (4, 7, 100), (4, 8, 80), (4, 9, 90), (4, 10, 90),
           (5, 1, 400), (5, 2, 400), (5, 3, 40), (5, 4, 200), (5, 5, 220),
           (5, 6, 210), (5, 7, 180), (5, 8, 160), (5, 9, 150), (5, 10, 250);
