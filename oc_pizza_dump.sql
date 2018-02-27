-- MySQL dump 10.13  Distrib 5.7.20, for macos10.12 (x86_64)
--
-- Host: localhost    Database: oc_pizza
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `street_1` varchar(150) NOT NULL,
  `street_2` varchar(150) DEFAULT NULL,
  `city` varchar(70) NOT NULL,
  `zip_code` char(5) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `webcustomer_id` mediumint(8) unsigned DEFAULT NULL,
  `nearest_pizzeria` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_webcustomer_id` (`webcustomer_id`),
  CONSTRAINT `fk_webcustomer_id` FOREIGN KEY (`webcustomer_id`) REFERENCES `WebCustomer` (`buyer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (1,'5 rue Elie Gintrec',NULL,'Bordeaux','33000',NULL,4,NULL,1),(2,'130 cours du Médoc',NULL,'Bordeaux','33000',NULL,4,NULL,2),(3,'13 place Saint-Pierre',NULL,'Bordeaux','33000',NULL,4,NULL,3),(4,'34 cours Maréchal Juin',NULL,'Bordeaux','33000',NULL,4,NULL,4),(5,'240 cours de la Marne',NULL,'Bordeaux','33000',NULL,4,NULL,5),(6,'3, Rue des Chartrons',NULL,'Bordeaux','33000','3e étage gauche',1,22,1),(7,'5, Cours de l\'Argone',NULL,'Bordeaux','33000',NULL,1,23,1),(8,'39, Cours Pasteur',NULL,'Bordeaux','33000',NULL,1,24,5),(9,'56, Cours Victor Hugo',NULL,'Bordeaux','33000','5e étage gauche, code porte 5GRSZ',2,24,3),(10,'7, Rue Ravez',NULL,'Bordeaux','33000',NULL,1,25,4),(11,'Résidence Le Soleil','10, Impasse du Tondu','Bordeaux','33000','Immeuble A, 3e étage gauche',1,26,3),(12,'32, Rue Nicot',NULL,'Bordeaux','33000','2e étage droite',3,26,3),(13,'4, Rue Henri IV',NULL,'Bordeaux','33000',NULL,1,27,2),(14,'1, Rue Maubec',NULL,'Bordeaux','33000','5e étage gauche',1,28,5),(15,'11, Rue Boudet',NULL,'Bordeaux','33000',NULL,1,29,3),(16,'45, Rue Borie',NULL,'Bordeaux','33000',NULL,1,32,2),(17,'6, Cours de la Marne',NULL,'Bordeaux','33000',NULL,1,34,3),(18,'61, Rue Condorcet',NULL,'Bordeaux','33000',NULL,1,35,1),(19,'127, Cours de la Somme',NULL,'Bordeaux','33000',NULL,1,36,1);
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Buyer`
--

DROP TABLE IF EXISTS `Buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Buyer` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `password` char(16) NOT NULL,
  `phone_number` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Buyer`
--

LOCK TABLES `Buyer` WRITE;
/*!40000 ALTER TABLE `Buyer` DISABLE KEYS */;
INSERT INTO `Buyer` VALUES (1,'Patrick','Dupont','H','wWddZUFwHkAMzcn4','678936741'),(2,'Jérémie','Martin','H','Czy8k2JAwQYCnubZ','673216709'),(3,'Joseph','Durant','H','agfGj3GHKUDzUc3D','612376436'),(4,'Stéphanie','Amelon','F','GUtLkC4SQmA6VMp2','656879899'),(5,'Gisèle','Goule','F','pef2bYDxfkxbCCcc','613212114'),(6,'Jeanne','Igoine','F','2vYE3rHbM5HRjMnz','671555678'),(7,'Antoine','Meunier','H','s7EKbHLaJZDBzfLs','679955678'),(8,'Benoît','Leclerc','H','MGDVqQKcXrqjGQH7','679564328'),(9,'Geneviève','Lemarais','F','5rAfjJX2mppMePkp','696432003'),(10,'Monique','Legendre','F','VxLZGYKWZvYD6QZm','664305123'),(11,'Sonia','Bisette','F','ceMnkWE5bfRU3HYk','643511213'),(12,'André','Sainz','H','aKWY8ZfChvaqmnzS','635122879'),(13,'Fabrice','Santori','H','trBngdMVs7APXvB5','651252789'),(14,'Monique','Soulier','F','tmN5AR5Pxv69Sh4c','625285898'),(15,'Julie','Joubert','F','FjxvqWYT4mcevqB7','656648722'),(16,'Patrick','Potier','H','qvvvhXU32srmad3W','665221309'),(17,'Sébastien','Jallien','H','pJ0v16aGblq3j9wk','678543445'),(18,'Monique','Gilles','F','kGI6rded6AKklDU2','699835623'),(19,'Sylvie','Maronnier','F','Su6hC5S1etJ44w3P','699084576'),(20,'Stéphane','Janti','H','aIVCTh2EbWDsoaDm','677895435'),(21,'Jérôme','Lambert','H','p4wAYNGD0RqsvBrx','667812121'),(22,'Patrick','Dutreuil','H','WjYXvQfH9zY94R4f','685531983'),(23,'Marcel','Mantaro','H','yrZs4mCmEr9kqQhX','690362776'),(24,'Julien','Guigonis','H','L6pVPntV3DkZny2J','689345621'),(25,'Sylvie','Aulis','F','tLUuNUvePMxAF4T6','678610987'),(26,'Charles','Desplat','H','EvC57z4pd8MWFdqs','634562781'),(27,'Juliette','Leloy','F','GESXPkqVAeyw9bk6','667453876'),(28,'Pierre','Quevenec','H','DMFPpVnSatapeKv9','689789021'),(29,'Eric','Martin','H','2ppeAqYXAbaRnMQj','697902543'),(30,'Nathan','xxx','H','xxx','0'),(31,'Paul','xxx','H','xxx','0'),(32,'Stéphanie','Louisca','F','aVNV9abHZbvgJNEF','617458940'),(33,'Nathalie','xxx','F','xxx','0'),(34,'Raoul','Gomez','H','ZxVTH6bAHavNnN8L','678348920'),(35,'Anne','Retournille','F','XHn73nNpXQaJU25x','678790012'),(36,'Pablo','Hierro','H','JQm9ra94TFAcrgT6','611346743');
/*!40000 ALTER TABLE `Buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingredient`
--

DROP TABLE IF EXISTS `Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingredient` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price_ttc` decimal(3,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
INSERT INTO `Ingredient` VALUES (1,'Pâte',2.40),(2,'Sauce tomate',1.00),(3,'Mozzarella',2.00),(4,'Emmental',2.00),(5,'Jambon',2.00),(6,'Poulet',1.50),(7,'Boeuf',1.50),(8,'Champignon',1.00),(9,'Oignon',1.00),(10,'Poivron',1.00);
/*!40000 ALTER TABLE `Ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OCPizzaUser`
--

DROP TABLE IF EXISTS `OCPizzaUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OCPizzaUser` (
  `buyer_id` mediumint(8) unsigned NOT NULL,
  `pizzeria_id` tinyint(3) unsigned NOT NULL,
  `username` varchar(50) NOT NULL,
  `role` enum('General Manager','Pizzeria Manager','Receptionist','Pizzaïolo','Delivery Man') NOT NULL,
  KEY `fk_buyer2_id` (`buyer_id`),
  KEY `fk_pizzeria_id` (`pizzeria_id`),
  CONSTRAINT `fk_buyer2_id` FOREIGN KEY (`buyer_id`) REFERENCES `Buyer` (`id`),
  CONSTRAINT `fk_pizzeria_id` FOREIGN KEY (`pizzeria_id`) REFERENCES `Pizzeria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OCPizzaUser`
--

LOCK TABLES `OCPizzaUser` WRITE;
/*!40000 ALTER TABLE `OCPizzaUser` DISABLE KEYS */;
INSERT INTO `OCPizzaUser` VALUES (1,1,'patoche','General Manager'),(2,1,'minouche','Pizzeria Manager'),(3,1,'jojo','Receptionist'),(4,1,'ninive','Pizzaïolo'),(5,1,'gigoule','Delivery Man'),(6,2,'jigoine','Pizzeria Manager'),(7,2,'nono','Receptionist'),(8,2,'bibine','Pizzaïolo'),(9,2,'ginette','Delivery Man'),(10,3,'mounette','Pizzeria Manager'),(11,3,'soubise','Receptionist'),(12,3,'andre','Pizzaïolo'),(13,3,'fabrice','Delivery Man'),(14,4,'monique','Pizzeria Manager'),(15,4,'jjoubert','Receptionist'),(16,4,'patpotier','Pizzaïolo'),(17,4,'sebjallien','Delivery Man'),(18,5,'monigilles','Pizzeria Manager'),(19,5,'sylviemaron','Receptionist'),(20,5,'stephjanti','Pizzaïolo'),(21,5,'jlambert','Delivery Man');
/*!40000 ALTER TABLE `OCPizzaUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderLine`
--

DROP TABLE IF EXISTS `OrderLine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderLine` (
  `order_num` mediumint(8) unsigned NOT NULL,
  `pizza_id` tinyint(3) unsigned NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  KEY `fk_order_num` (`order_num`),
  KEY `fk_pizza_id` (`pizza_id`),
  CONSTRAINT `fk_order_num` FOREIGN KEY (`order_num`) REFERENCES `OrderPizza` (`num`),
  CONSTRAINT `fk_pizza_id` FOREIGN KEY (`pizza_id`) REFERENCES `Pizza` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderLine`
--

LOCK TABLES `OrderLine` WRITE;
/*!40000 ALTER TABLE `OrderLine` DISABLE KEYS */;
INSERT INTO `OrderLine` VALUES (1,3,2),(2,4,1),(2,7,1),(3,2,1),(3,1,1),(3,6,1),(3,8,1),(4,4,1),(4,2,1),(5,2,4),(6,4,1),(6,6,1),(7,7,2),(7,8,2),(8,6,1),(8,3,1),(9,2,1),(10,6,1),(10,8,1),(10,2,1),(11,1,1),(11,4,1),(12,2,2),(13,3,1),(13,5,1),(14,6,1),(14,1,2),(15,2,1),(15,4,1),(15,7,1);
/*!40000 ALTER TABLE `OrderLine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderPizza`
--

DROP TABLE IF EXISTS `OrderPizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderPizza` (
  `num` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `buyer_id` mediumint(8) unsigned NOT NULL,
  `pizzeria_id` tinyint(3) unsigned NOT NULL,
  `date_order` date NOT NULL,
  `time_order` time NOT NULL,
  `state` enum('Waiting List','Being Prepared','Prepared','On Delivery','Delivery') NOT NULL,
  `delivery_or_not` tinyint(1) NOT NULL,
  `invoice_address` mediumint(8) unsigned DEFAULT NULL,
  `delivery_address` mediumint(8) unsigned DEFAULT NULL,
  `payment_mode` enum('Paid online','Cash on delivery','Credit card pizzeria','Cash pizzeria') NOT NULL,
  `payment_done` tinyint(1) NOT NULL,
  `bank_token` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `fk_buyer3_id` (`buyer_id`),
  KEY `fk_pizzeria2_id` (`pizzeria_id`),
  KEY `fk_invoice_address` (`invoice_address`),
  KEY `fk_delivery_address` (`delivery_address`),
  CONSTRAINT `fk_buyer3_id` FOREIGN KEY (`buyer_id`) REFERENCES `Buyer` (`id`),
  CONSTRAINT `fk_delivery_address` FOREIGN KEY (`delivery_address`) REFERENCES `Address` (`id`),
  CONSTRAINT `fk_invoice_address` FOREIGN KEY (`invoice_address`) REFERENCES `Address` (`id`),
  CONSTRAINT `fk_pizzeria2_id` FOREIGN KEY (`pizzeria_id`) REFERENCES `Pizzeria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderPizza`
--

LOCK TABLES `OrderPizza` WRITE;
/*!40000 ALTER TABLE `OrderPizza` DISABLE KEYS */;
INSERT INTO `OrderPizza` VALUES (1,22,1,'2018-02-20','11:52:06','On Delivery',1,6,6,'Paid online',1,'Wwc8HepvP2h7aBN6'),(2,23,1,'2018-02-20','11:55:16','Prepared',1,7,7,'Paid online',1,'L8WA3mqwnk4AA4Bq'),(3,24,5,'2018-02-20','12:05:43','Prepared',1,8,8,'Paid online',1,'XE6hWnmTkg7cuFTp'),(4,25,4,'2018-02-20','12:07:21','Being Prepared',1,10,10,'Paid online',1,'SSp6TEffkWaGEHgY'),(5,26,3,'2018-02-20','12:10:10','Being Prepared',1,11,12,'Cash on delivery',0,NULL),(6,27,2,'2018-02-20','12:10:16','Being Prepared',1,13,13,'Cash on delivery',0,NULL),(7,28,5,'2018-02-20','12:10:45','Being Prepared',1,14,14,'Paid online',1,'6nzAXxV3CRNV2LSV'),(8,29,3,'2018-02-20','12:10:47','Waiting List',1,15,15,'Paid online',1,'2X68mjRZspRVH33S'),(9,30,1,'2018-02-20','12:10:57','Being Prepared',0,NULL,NULL,'Credit card pizzeria',1,'2S27QQLEkeYdhcAJ'),(10,31,1,'2018-02-20','12:11:04','Waiting List',0,NULL,NULL,'Credit card pizzeria',1,'j2WGMw3x8erRDZNC'),(11,32,2,'2018-02-20','12:11:17','Waiting List',1,16,16,'Paid online',1,'rpPjTCAh8EdfarnG'),(12,33,4,'2018-02-20','12:11:25','Waiting List',0,NULL,NULL,'Cash pizzeria',1,NULL),(13,34,3,'2018-02-20','12:11:46','Waiting List',1,17,17,'Paid online',1,'mvGMc8k8dfbJDED7'),(14,35,1,'2018-02-20','12:11:56','Waiting List',1,18,18,'Cash on delivery',0,NULL),(15,36,1,'2018-02-20','12:11:58','Waiting List',1,19,19,'Paid online',1,'murWnfz5HBufdL4f');
/*!40000 ALTER TABLE `OrderPizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pizza`
--

DROP TABLE IF EXISTS `Pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pizza` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `size` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pizza`
--

LOCK TABLES `Pizza` WRITE;
/*!40000 ALTER TABLE `Pizza` DISABLE KEYS */;
INSERT INTO `Pizza` VALUES (1,'Marguerite',1),(2,'Reine',1),(3,'Quatre Saisons',1),(4,'Carnivore',1),(5,'Marguerite',2),(6,'Reine',2),(7,'Quatre Saisons',2),(8,'Carnivore',2);
/*!40000 ALTER TABLE `Pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pizza_Ingredient`
--

DROP TABLE IF EXISTS `Pizza_Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pizza_Ingredient` (
  `pizza_id` tinyint(3) unsigned NOT NULL,
  `ingredient_id` tinyint(3) unsigned NOT NULL,
  `dosis` tinyint(4) NOT NULL,
  KEY `fk_pizza2_id` (`pizza_id`),
  KEY `fk_ingredient_id` (`ingredient_id`),
  CONSTRAINT `fk_ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `Ingredient` (`id`),
  CONSTRAINT `fk_pizza2_id` FOREIGN KEY (`pizza_id`) REFERENCES `Pizza` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pizza_Ingredient`
--

LOCK TABLES `Pizza_Ingredient` WRITE;
/*!40000 ALTER TABLE `Pizza_Ingredient` DISABLE KEYS */;
INSERT INTO `Pizza_Ingredient` VALUES (1,1,1),(1,2,1),(1,3,1),(1,4,1),(2,1,1),(2,2,1),(2,3,1),(2,5,1),(2,8,1),(3,1,1),(3,2,1),(3,3,1),(3,8,1),(3,9,1),(3,10,1),(4,1,1),(4,2,1),(4,3,1),(4,5,1),(4,6,1),(4,7,1),(5,1,2),(5,2,2),(5,3,2),(5,4,2),(6,1,2),(6,2,2),(6,3,2),(6,5,2),(6,8,2),(7,1,2),(7,2,2),(7,3,2),(7,8,2),(7,9,2),(7,10,2),(8,1,2),(8,2,2),(8,3,2),(8,5,2),(8,6,2),(8,7,2);
/*!40000 ALTER TABLE `Pizza_Ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pizzeria`
--

DROP TABLE IF EXISTS `Pizzeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pizzeria` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_address_id` (`address_id`),
  CONSTRAINT `fk_address_id` FOREIGN KEY (`address_id`) REFERENCES `Address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pizzeria`
--

LOCK TABLES `Pizzeria` WRITE;
/*!40000 ALTER TABLE `Pizzeria` DISABLE KEYS */;
INSERT INTO `Pizzeria` VALUES (1,'Victoire',1),(2,'Chartron',2),(3,'Saint-Pierre',3),(4,'Mériadeck',4),(5,'Gare Saint-Jean',5);
/*!40000 ALTER TABLE `Pizzeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stock`
--

DROP TABLE IF EXISTS `Stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stock` (
  `pizzeria_id` tinyint(3) unsigned NOT NULL,
  `ingredient_id` tinyint(3) unsigned NOT NULL,
  `quantity_dosis` smallint(5) unsigned DEFAULT NULL,
  KEY `fk_pizzeria3_id` (`pizzeria_id`),
  KEY `fk_ingredient2_id` (`ingredient_id`),
  CONSTRAINT `fk_ingredient2_id` FOREIGN KEY (`ingredient_id`) REFERENCES `Ingredient` (`id`),
  CONSTRAINT `fk_pizzeria3_id` FOREIGN KEY (`pizzeria_id`) REFERENCES `Pizzeria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stock`
--

LOCK TABLES `Stock` WRITE;
/*!40000 ALTER TABLE `Stock` DISABLE KEYS */;
INSERT INTO `Stock` VALUES (1,1,300),(1,2,250),(1,3,100),(1,4,220),(1,5,120),(1,6,140),(1,7,160),(1,8,110),(1,9,100),(1,10,300),(2,1,360),(2,2,250),(2,3,80),(2,4,100),(2,5,140),(2,6,100),(2,7,80),(2,8,120),(2,9,110),(2,10,310),(3,1,300),(3,2,280),(3,3,50),(3,4,100),(3,5,150),(3,6,170),(3,7,180),(3,8,110),(3,9,80),(3,10,280),(4,1,280),(4,2,320),(4,3,160),(4,4,200),(4,5,120),(4,6,110),(4,7,100),(4,8,80),(4,9,90),(4,10,90),(5,1,400),(5,2,400),(5,3,40),(5,4,200),(5,5,220),(5,6,210),(5,7,180),(5,8,160),(5,9,150),(5,10,250);
/*!40000 ALTER TABLE `Stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WebCustomer`
--

DROP TABLE IF EXISTS `WebCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WebCustomer` (
  `buyer_id` mediumint(8) unsigned NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `job_status` varchar(50) DEFAULT NULL,
  KEY `fk_buyer_id` (`buyer_id`),
  CONSTRAINT `fk_buyer_id` FOREIGN KEY (`buyer_id`) REFERENCES `Buyer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WebCustomer`
--

LOCK TABLES `WebCustomer` WRITE;
/*!40000 ALTER TABLE `WebCustomer` DISABLE KEYS */;
INSERT INTO `WebCustomer` VALUES (22,'patdutreuil12@gmail.com',NULL,NULL),(23,'marcel.mantaro3@yahoo.com',NULL,NULL),(24,'julien.guigonis@laposte.com','1997-12-13','Etudiant.e'),(25,'sylvieaulis@gmail.com','1990-03-23','Sans emploi'),(26,'charles.desplat@gmail.com',NULL,'Cadre'),(27,'jujuleloy@gmail.com','1987-08-10','Employé.e'),(28,'pierrequevenec5@gmail.com','1970-07-23',NULL),(29,'eric.martin13@yahoo.com','1973-12-04',NULL),(30,'xxx',NULL,NULL),(31,'xxx',NULL,NULL),(32,'steph.louisca@gmail.com','1965-10-31','Sans Emploi'),(33,'xxx',NULL,NULL),(34,'raoulgomez@yahoo.com','1977-02-23','Employé.e'),(35,'anne.retournille@gmail.com','1984-05-21',NULL),(36,'pablo.hierro@gmail.com','1981-04-03','Employé.e');
/*!40000 ALTER TABLE `WebCustomer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-27 20:18:18
