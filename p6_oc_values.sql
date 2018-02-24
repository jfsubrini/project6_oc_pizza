-- OC PIZZA Database : OC DEMO VALUES - Some data from OC Pizza Managers.

-- Copyright Jean-François Subrini, student DA Python at OpenClassrooms, 22/02/2018.


-- Values for the Buyer table : OC PIZZA employees and managers.
INSERT INTO Buyer (id, first_name, last_name, gender, password, phone_number)
    VALUES (1, 'Patrick', 'Dupont', 'H', 'wWddZUFwHkAMzcn4', 0678936741),
           (2, 'Jérémie', 'Martin', 'H', 'Czy8k2JAwQYCnubZ', 0673216709),
           (3, 'Joseph', 'Durant', 'H', 'agfGj3GHKUDzUc3D', 0612376436),
           (4, 'Stéphanie', 'Amelon', 'F', 'GUtLkC4SQmA6VMp2', 0656879899),
           (5, 'Gisèle', 'Goule', 'F', 'pef2bYDxfkxbCCcc', 0613212114),
           (6, 'Jeanne', 'Igoine', 'F', '2vYE3rHbM5HRjMnz', 0671555678),
           (7, 'Antoine', 'Meunier', 'H', 's7EKbHLaJZDBzfLs', 0679955678),
		       (8, 'Benoît', 'Leclerc', 'H', 'MGDVqQKcXrqjGQH7', 0679564328),
		       (9, 'Geneviève', 'Lemarais', 'F', '5rAfjJX2mppMePkp', 0696432003),
		       (10, 'Monique', 'Legendre', 'F', 'VxLZGYKWZvYD6QZm', 0664305123),
		       (11, 'Sonia', 'Bisette', 'F', 'ceMnkWE5bfRU3HYk', 0643511213),
		       (12, 'André', 'Sainz', 'M', 'aKWY8ZfChvaqmnzS', 0635122879),
		       (13, 'Fabrice', 'Santori', 'M', 'trBngdMVs7APXvB5', 0651252789),
		       (14, 'Monique', 'Soulier', 'F', 'tmN5AR5Pxv69Sh4c', 0625285898),
		       (15, 'Julie', 'Joubert', 'F', 'FjxvqWYT4mcevqB7', 0658589878);

-- Values for the Address table : the address of each pizzeria.
INSERT INTO Address (id, street_1, street_2, city, zip_code, comment, type, webcustomer_id)
    VALUES (1, "5 rue Elie Gintrec", NULL, 'Bordeaux', '33000', NULL, 4, NULL),
           (2, "130 cours du Médoc", NULL, 'Bordeaux', '33000', NULL, 4, NULL),
           (3, "13 place Saint-Pierre", NULL, 'Bordeaux', '33000', NULL, 4, NULL),
           (4, "34 cours Maréchal Juin", NULL, 'Bordeaux', '33000', NULL, 4, NULL),
           (5, "240 cours de la Marne", NULL, 'Bordeaux', '33000', NULL, 4, NULL);

-- Values for the Pizzeria table : name and address for each pizzeria.
INSERT INTO Pizzeria (id, name, address_id)
    VALUES (1, 'Victoire', 1),
           (2, 'Chartron', 2),
           (3, 'Saint-Pierre', 3),
           (4, 'Mériadeck', 4),
           (5, 'Gare Saint-Jean', 5);

-- Values for the OCPizzaUser table : other information for all the OC Pizza's employees and managers. 
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

-- Values for the Pizza table : all the pizzas in the menu, standard (1) and family (2) sizes.
INSERT INTO Pizza (id, name, size)
    VALUES (1, 'Marguerite', 1),
           (2, 'Reine', 1),
           (3, 'Quatre Saisons', 1),
           (4, 'Carnivore', 1),
           (5, 'Marguerite', 2),
           (6, 'Reine', 2),
           (7, 'Quatre Saisons', 2),
           (8, 'Carnivore', 2);

-- Values for the Ingredient table : all the ingredients with the price for each.
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

-- Values for the Pizza_Ingredient table : recipe of each pizza in the menu.
INSERT INTO Pizza_Ingredient (pizza_id, ingredient_id, dosis)
    VALUES (1, 1, 1), (1, 2, 1), (1, 3, 1), (1, 4, 1),
           (2, 1, 1), (2, 2, 1), (2, 3, 1), (2, 5, 1), (2, 8, 1),
           (3, 1, 1), (3, 2, 1), (3, 3, 1), (3, 8, 1), (3, 9, 1), (3, 10, 1),
           (4, 1, 1), (4, 2, 1), (4, 3, 1), (4, 5, 1), (4, 6, 1), (4, 7, 1),
           (5, 1, 2), (5, 2, 2), (5, 3, 2), (5, 4, 2),
           (6, 1, 2), (6, 2, 2), (6, 3, 2), (6, 5, 2), (6, 8, 2),
           (7, 1, 2), (7, 2, 2), (7, 3, 2), (7, 8, 2), (7, 9, 2), (7, 10, 2),
           (8, 1, 2), (8, 2, 2), (8, 3, 2), (8, 5, 2), (8, 6, 2), (8, 7, 2);

-- Values for the Stock table at one time : how many dosis for each ingredient in each pizzeria.
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
