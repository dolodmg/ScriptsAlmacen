CREATE DATABASE  IF NOT EXISTS `almacenes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `almacenes`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: almacenes
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `almacenes`
--

DROP TABLE IF EXISTS `almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacenes` (
  `idAlmacen` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `idDireccion` int NOT NULL,
  PRIMARY KEY (`idAlmacen`),
  KEY `fk_almacen_direc` (`idDireccion`),
  CONSTRAINT `fk_almacen_direc` FOREIGN KEY (`idDireccion`) REFERENCES `direcciones` (`idDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenes`
--

LOCK TABLES `almacenes` WRITE;
/*!40000 ALTER TABLE `almacenes` DISABLE KEYS */;
INSERT INTO `almacenes` VALUES (1,'Almacén Ari',39),(2,'Almacén Avenida',40),(3,'Almacén Andrés',45),(4,'Mercado Muralla',41),(5,'Kiosco UVA',43),(6,'Mercado Plaza',44),(7,'Mercado Cabildo',42);
/*!40000 ALTER TABLE `almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `idArticulo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `precio` float NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`idArticulo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Soup - French Can Pea',2427.59,195),(2,'Cheese - Brick With Pepper',1593.58,47),(3,'Beans - Wax',516.8,65),(4,'Tea - Orange Pekoe',633.63,193),(5,'Sambuca Cream',1158.42,96),(6,'Pork - Ham Hocks - Smoked',1844.34,112),(7,'Lettuce - Romaine',150.55,48),(8,'Wine - Jafflin Bourgongone',1085.02,156),(9,'Chips - Miss Vickies',654.72,72),(10,'Sambuca - Opal Nera',1721.76,267),(11,'Soup - Campbells, Beef Barley',1061.43,143),(12,'Mushroom Morel Fresh',1950.93,97),(13,'Pepper - Julienne, Frozen',1533.49,122),(14,'Pasta - Fettuccine, Egg, Fresh',668.34,44),(15,'Parsley - Fresh',1019.18,134),(16,'Pastry - Chocolate Chip Muffin',1060.98,196),(17,'Lambcasing',973.1,196),(18,'Mustard - Dijon',2294.59,70),(19,'Pork - Chop, Frenched',1495.6,277),(20,'Campari',1842.61,176),(21,'Lotus Root',2263.8,278),(22,'Gooseberry',1891.46,129),(23,'Veal - Inside',1577.99,195),(24,'Soup - Knorr, Country Bean',1600.2,259),(25,'Bread - Calabrese Baguette',199.91,211),(26,'Lentils - Red, Dry',1069.99,117),(27,'Galliano',669.84,119),(28,'Plastic Arrow Stir Stick',59.42,268),(29,'Placemat - Scallop, White',1810.22,169),(30,'Nectarines',382.44,197),(31,'Champagne - Brights, Dry',2465.05,103),(32,'Wine - Shiraz South Eastern',393.44,199),(33,'Venison - Ground',53.75,202),(34,'Sauce - Chili',1919.41,56),(35,'Sour Cream',2340.58,267),(36,'Apple - Macintosh',1262.39,178),(37,'Eggroll',458.1,169),(38,'Pasta - Cheese / Spinach Bauletti',1068.61,236),(39,'Tomato - Plum With Basil',947.31,281),(40,'Sauce - Hollandaise',1870.41,161),(41,'Gloves - Goldtouch Disposable',2239.42,285),(42,'Orange - Blood',1983.43,32),(43,'Pickles - Gherkins',641.04,159),(44,'Wine - Zonnebloem Pinotage',77.45,103),(45,'Cheese - Grie Des Champ',1149.54,227),(46,'Mace Ground',1050.11,202),(47,'Vinegar - Red Wine',545.15,242),(48,'Wine - Red, Cabernet Merlot',1748.22,242),(49,'Beef - Tender Tips',593.29,231),(50,'Aspic - Clear',1586.37,215),(51,'Wine - White, Colubia Cresh',1928.63,24),(52,'Anchovy Paste - 56 G Tube',1424.98,109),(53,'Cheese Cloth No 60',50.17,12),(54,'Dragon Fruit',125.34,191),(55,'Horseradish Root',630.7,289),(56,'Coffee - Colombian, Portioned',305.57,1),(57,'Nutmeg - Ground',626.94,152),(58,'Cheese - Ermite Bleu',879.09,236),(59,'Puree - Pear',1112.35,90),(60,'Extract - Lemon',318.23,262),(61,'Wine - Ej Gallo Sonoma',679.3,124),(62,'Capers - Pickled',1327.86,274),(63,'Country Roll',312.69,34),(64,'Turkey - Breast, Double',540.24,165),(65,'Nestea - Iced Tea',2348.82,141),(66,'Propel Sport Drink',1408.16,184),(67,'Energy Drink',1241.1,279),(68,'Puree - Strawberry',2194.93,219),(69,'Carbonated Water - Blackberry',2213.95,238),(70,'Wine - White, Ej Gallo',2419.88,36),(71,'Cinnamon - Stick',983.68,80),(72,'Icecream Bar - Del Monte',1399.75,7),(73,'Beef - Outside, Round',1101.71,263),(74,'Creme De Cacao White',77.42,104),(75,'Bamboo Shoots - Sliced',300.37,94),(76,'Foam Cup 6 Oz',427.74,103),(77,'Oil - Margarine',1687.31,208),(78,'Honey - Lavender',1200.97,267),(79,'Aspic - Clear',2082.84,38),(80,'Onions - White',2288.09,26),(81,'Rabbit - Whole',251.91,116),(82,'Walkers Special Old Whiskey',1311.69,214),(83,'Wine - Red, Pelee Island Merlot',2131.9,36),(84,'Sardines',702.76,110),(85,'Wonton Wrappers',479.71,222),(86,'Beef - Tenderloin',354.84,300),(87,'Wine - Prem Select Charddonany',2426.62,186),(88,'Squash - Butternut',1908.19,191),(89,'Pie Box - Cello Window 2.5',1680.55,249),(90,'Pepper - Julienne, Frozen',225.01,148),(91,'Pail With Metal Handle 16l White',210.05,65),(92,'Tortillas - Flour, 8',160.51,291),(93,'Maple Syrup',408.54,224),(94,'Sauce - Soya, Light',1877.8,148),(95,'Pop Shoppe Cream Soda',1883.59,276),(96,'Puree - Strawberry',676.05,59),(97,'Hersey Shakes',221.42,229),(98,'Sun - Dried Tomatoes',2491.52,234),(99,'Couscous',2410.44,179),(100,'Oven Mitt - 13 Inch',286.17,279);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cantidadarticulos`
--

DROP TABLE IF EXISTS `cantidadarticulos`;
/*!50001 DROP VIEW IF EXISTS `cantidadarticulos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cantidadarticulos` AS SELECT 
 1 AS `idArticulo`,
 1 AS `Cantidad vendidos`,
 1 AS `Cantidad comprados`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Repositor'),(2,'Cajero'),(3,'Supervisor'),(4,'Encargado de compras');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudades` (
  `codPostal` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `idProvincia` int DEFAULT NULL,
  PRIMARY KEY (`codPostal`),
  KEY `fk_ciudad_prov` (`idProvincia`),
  CONSTRAINT `fk_ciudad_prov` FOREIGN KEY (`idProvincia`) REFERENCES `provincias` (`idProvincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1828,'Lomas de Zamora',1),(1878,'Quilmes',1),(1880,'Berazategui',1),(1888,'Florencio Varela',1),(2000,'Rosario',10),(3300,'Posadas',8),(5152,'Villa Carlos Paz',2),(5194,'Villa General Belgrano',2),(5600,'San Rafael',3),(6300,'Santa Rosa',7);
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `dni` int NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `idDireccion` int NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_cliente_direccion` (`idDireccion`),
  CONSTRAINT `fk_cliente_direccion` FOREIGN KEY (`idDireccion`) REFERENCES `direcciones` (`idDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Sammy','Pryell',20000000,'6057114554',29),(2,'Niel','Balchin',20000001,'9676410993',40),(3,'Virgie','Cobello',20000002,'5491798987',41),(4,'Shane','Fridlington',20000003,'1139138429',42),(5,'Taddeusz','Stott',20000004,'3341459497',43),(6,'Ezechiel','Penticoot',20000005,'3953242183',44),(7,'Jamaal','MacNamee',20000006,'3402298054',45),(8,'Rea','Itzkovici',20000007,'4567206578',46),(9,'Jacobo','Britt',20000008,'2016584040',47),(10,'Irita','Ekless',20000009,'4975776731',48),(11,'Hetty','Molan',20000010,'6138166873',49),(12,'Wat','Granger',20000011,'4211140141',50),(13,'Peria','Goolding',20000012,'2029398309',51),(14,'Cherise','Eronie',20000013,'2191421142',52),(15,'Marget','Whitaker',20000014,'6685680725',53),(16,'Minni','Shillingford',20000015,'1957205194',54),(17,'Adams','Eustace',20000016,'3696225880',55),(18,'Reggy','Lennon',20000017,'4986428515',56),(19,'Kassie','Warton',20000018,'4663108153',57),(20,'Buddy','Diggell',20000019,'8258524939',58),(21,'Rochelle','Laughlin',20000020,'7619943151',59),(22,'Giana','Benyan',20000021,'3593451995',60),(23,'Jimmie','Petrenko',20000022,'7511559248',61),(24,'Pammy','Eustis',20000023,'8584013480',62),(25,'Rodi','Piggot',20000024,'1022748652',63),(26,'Krishna','Duro',20000025,'4023814172',64),(27,'Farly','Roels',20000026,'2581537879',65),(28,'Corie','Matteau',20000027,'1494419096',66),(29,'Corby','Castellet',20000028,'7802458435',67),(30,'Dayna','Chinge',20000029,'4572344293',68),(31,'Anastassia','Pascho',20000030,'1936581920',69),(32,'Meggi','Armatidge',20000031,'4943694954',70),(33,'Leora','Strick',20000032,'7887580395',71),(34,'Evey','Bunson',20000033,'6827846776',72),(35,'Verene','Langdon',20000034,'8418297310',73),(36,'Maryanna','Terren',20000035,'2511942897',74),(37,'Clarabelle','Akaster',20000036,'1135910973',75),(38,'Alvina','D\'Aeth',20000037,'7277560485',76),(39,'Martha','Dinning',20000038,'3324830036',77),(40,'Chelsie','Bodker',20000039,'3162440505',78),(41,'Amelie','McHenry',20000040,'7711320332',79),(42,'Maudie','Melliard',20000041,'7735362031',80),(43,'Roda','Reuble',20000042,'7748904277',81),(44,'Marylinda','Baversor',20000043,'7841076651',82),(45,'Freddy','Cissell',20000044,'2198001248',83),(46,'Titos','Wanka',20000045,'5223381118',84),(47,'Deanna','Highwood',20000046,'9677259007',85),(48,'Cecile','Rogister',20000047,'2381836156',86),(49,'Shea','Durbin',20000048,'2717605700',87),(50,'Rosalyn','Simonnot',20000049,'6184694387',88),(51,'Fax','Filson',20000050,'3271394395',89),(52,'Feodora','Huey',20000051,'6003314776',90),(53,'Ollie','Kment',20000052,'1395163608',91),(54,'Abagael','Lindberg',20000053,'9837905374',92),(55,'Briant','McCowen',20000054,'8924803873',93),(56,'Genvieve','Manners',20000055,'6862211644',94),(57,'Marie','Krier',20000056,'1894639932',95),(58,'Horacio','Rix',20000057,'1747551557',96),(59,'Pat','Siggery',20000058,'2177551414',97),(60,'Keven','O\'Noland',20000059,'2918798720',98),(61,'Aryn','Larter',20000060,'8032864722',99),(62,'Brigitta','Sudworth',20000061,'3382172002',100),(63,'Udell','Phelit',20000062,'9527107257',101),(64,'Cooper','Mundy',20000063,'9748342968',102),(65,'Sloane','Popescu',20000064,'4767683350',103),(66,'Winnie','Bavage',20000065,'2018373459',104),(67,'Melisse','Springham',20000066,'6867457468',105),(68,'Rosalind','Wafer',20000067,'4408840363',106),(69,'Vincenty','Bagott',20000068,'9406565122',107),(70,'Holly','Cholwell',20000069,'6985635696',108),(71,'Tate','Catherick',20000070,'6064629235',109),(72,'Kit','MacNeilley',20000071,'3479860314',110),(73,'Pier','Steagall',20000072,'9052378385',111),(74,'Giovanna','Russe',20000073,'6249958372',112),(75,'Alvy','Redwin',20000074,'3643682235',113),(76,'Gaby','Spurman',20000075,'6892339714',114),(77,'Chrissy','Ropert',20000076,'5673856264',115),(78,'Alexis','Lukianov',20000077,'8398305092',116),(79,'Juliann','Poznanski',20000078,'4745170856',117),(80,'Sunshine','Gillam',20000079,'7932962662',118),(81,'Delores','Harmer',20000080,'4152077506',119),(82,'Donica','Ewen',20000081,'2975287923',120),(83,'Lucia','Thorne',20000082,'2952592175',121),(84,'Adolphus','Rickerby',20000083,'7433406297',122),(85,'Germaine','Hanscomb',20000084,'4594040673',123),(86,'Gladi','Shackel',20000085,'6917484589',124),(87,'Israel','Caulliere',20000086,'7047594932',125),(88,'Jakob','Carbert',20000087,'6868800316',126),(89,'Marcelline','Mullinder',20000088,'4082228249',127),(90,'Randal','Flanigan',20000089,'5332772041',128),(91,'Mair','Finnie',20000090,'4837261164',129),(92,'Deeyn','Lefley',20000091,'4109029968',130),(93,'Haley','Sandever',20000092,'9254233622',131),(94,'Wyn','Conman',20000093,'5904002427',132),(95,'Ike','Eul',20000094,'8719143179',133),(96,'Jock','Emberton',20000095,'5362203114',134),(97,'Iain','Chudleigh',20000096,'4693513713',135),(98,'Guenna','Felderer',20000097,'1846613934',136),(99,'Ximenes','Setford',20000098,'6343272962',137),(100,'Gladys','Flatte',20000099,'9887970114',138);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `idCompra` int NOT NULL AUTO_INCREMENT,
  `montoTotal` float DEFAULT NULL,
  `fecha` date NOT NULL,
  `idProveedor` int NOT NULL,
  `idAlmacen` int NOT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `fk_compra_proveedor` (`idProveedor`),
  KEY `fk_compra_almacen` (`idAlmacen`),
  CONSTRAINT `fk_compra_almacen` FOREIGN KEY (`idAlmacen`) REFERENCES `almacenes` (`idAlmacen`),
  CONSTRAINT `fk_compra_proveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,NULL,'2022-08-14',1,1),(2,NULL,'2020-01-10',2,2),(3,NULL,'2022-02-06',3,3),(4,NULL,'2020-06-08',4,4),(5,NULL,'2022-07-12',5,5),(6,NULL,'2021-01-20',6,6),(7,NULL,'2021-03-13',7,7),(8,NULL,'2022-05-06',8,1),(9,NULL,'2021-01-24',9,2),(10,NULL,'2020-02-24',10,3),(11,NULL,'2021-11-10',11,4),(12,NULL,'2021-09-24',12,5),(13,NULL,'2021-09-18',13,6),(14,NULL,'2020-12-31',1,7),(15,NULL,'2020-08-02',2,1),(16,NULL,'2020-03-24',3,2),(17,NULL,'2020-03-04',4,3),(18,NULL,'2021-10-10',5,4),(19,NULL,'2021-04-28',6,5),(20,NULL,'2022-07-15',7,6),(21,NULL,'2022-07-18',8,7),(22,NULL,'2020-12-05',9,1),(23,NULL,'2020-06-26',10,2),(24,NULL,'2022-07-15',11,3),(25,NULL,'2021-02-06',12,4),(26,NULL,'2022-04-08',13,5),(27,NULL,'2022-09-07',1,6),(28,NULL,'2022-03-07',2,7),(29,NULL,'2021-04-01',3,1),(30,NULL,'2022-05-08',4,2),(31,NULL,'2020-02-21',5,3),(32,NULL,'2021-08-23',6,4),(33,NULL,'2020-12-08',7,5),(34,NULL,'2021-06-29',8,6),(35,NULL,'2021-05-23',9,7),(36,NULL,'2021-02-17',10,1),(37,NULL,'2020-05-19',11,2),(38,NULL,'2021-12-10',12,3),(39,NULL,'2020-10-22',13,4),(40,NULL,'2020-06-28',1,5),(41,NULL,'2021-10-29',2,6),(42,NULL,'2021-07-19',3,7),(43,NULL,'2021-01-23',4,1),(44,NULL,'2021-07-09',5,2),(45,NULL,'2022-02-18',6,3),(46,NULL,'2021-06-20',7,4),(47,NULL,'2020-09-21',8,5),(48,NULL,'2020-06-16',9,6),(49,NULL,'2021-01-13',10,7),(50,NULL,'2020-11-17',11,1),(51,NULL,'2022-01-26',12,2),(52,NULL,'2021-04-05',13,3),(53,NULL,'2021-02-22',1,4),(54,NULL,'2022-04-30',2,5),(55,NULL,'2021-06-17',3,6),(56,NULL,'2020-06-03',4,7),(57,NULL,'2021-09-25',5,1),(58,NULL,'2021-11-08',6,2),(59,NULL,'2020-05-08',7,3),(60,NULL,'2020-10-27',8,4),(61,NULL,'2020-11-21',9,5),(62,NULL,'2022-05-02',10,6),(63,NULL,'2020-08-08',11,7),(64,NULL,'2020-04-25',12,1),(65,NULL,'2020-01-22',13,2),(66,NULL,'2020-07-23',1,3),(67,NULL,'2020-01-19',2,4),(68,NULL,'2022-03-23',3,5),(69,NULL,'2020-10-11',4,6),(70,NULL,'2020-05-30',5,7),(71,NULL,'2020-02-18',6,1),(72,NULL,'2022-07-10',7,2),(73,NULL,'2020-06-12',8,3),(74,NULL,'2020-01-21',9,4),(75,NULL,'2020-06-01',10,5),(76,NULL,'2020-05-09',11,6),(77,NULL,'2021-12-29',12,7),(78,NULL,'2020-09-12',13,1),(79,NULL,'2020-06-06',1,2),(80,NULL,'2021-08-26',2,3),(81,NULL,'2022-08-02',3,4),(82,NULL,'2020-11-26',4,5),(83,NULL,'2020-06-02',5,6),(84,NULL,'2020-08-09',6,7),(85,NULL,'2021-11-30',7,1),(86,NULL,'2020-01-10',8,2),(87,NULL,'2020-04-05',9,3),(88,NULL,'2021-07-05',10,4),(89,NULL,'2020-12-03',11,5),(90,NULL,'2021-07-19',12,6),(91,NULL,'2021-09-25',13,7),(92,NULL,'2020-01-30',1,1),(93,NULL,'2022-06-03',2,2),(94,NULL,'2022-01-13',3,3),(95,NULL,'2020-01-16',4,4),(96,NULL,'2022-01-04',5,5),(97,NULL,'2020-08-08',6,6),(98,NULL,'2020-08-09',7,7),(99,NULL,'2021-08-28',8,1),(100,NULL,'2021-09-06',9,2),(101,NULL,'2022-08-29',10,3),(102,NULL,'2022-04-23',11,4),(103,NULL,'2020-02-29',12,5),(104,NULL,'2022-06-22',13,6),(105,NULL,'2021-07-09',1,7),(106,NULL,'2021-10-10',2,1),(107,NULL,'2021-06-15',3,2),(108,NULL,'2020-09-27',4,3),(109,NULL,'2020-04-24',5,4),(110,NULL,'2022-04-07',6,5),(111,NULL,'2021-06-15',7,6),(112,NULL,'2021-10-20',8,7),(113,NULL,'2020-11-13',9,1),(114,NULL,'2020-08-13',10,2),(115,NULL,'2020-07-18',11,3),(116,NULL,'2022-04-09',12,4),(117,NULL,'2020-01-06',13,5),(118,NULL,'2022-06-26',1,6),(119,NULL,'2020-09-08',2,7),(120,NULL,'2020-05-12',3,1),(121,NULL,'2021-01-17',4,2),(122,NULL,'2020-07-28',5,3),(123,NULL,'2021-03-16',6,4),(124,NULL,'2020-06-15',7,5),(125,NULL,'2021-12-22',8,6),(126,NULL,'2021-12-17',9,7),(127,NULL,'2021-05-23',10,1),(128,NULL,'2020-08-17',11,2),(129,NULL,'2021-09-04',12,3),(130,NULL,'2021-01-06',13,4),(131,NULL,'2021-07-21',1,5),(132,NULL,'2022-03-08',2,6),(133,NULL,'2021-09-28',3,7),(134,NULL,'2021-05-25',4,1),(135,NULL,'2020-07-23',5,2),(136,NULL,'2020-04-09',6,3),(137,NULL,'2020-05-26',7,4),(138,NULL,'2021-11-14',8,5),(139,NULL,'2022-01-20',9,6),(140,NULL,'2021-05-29',10,7),(141,NULL,'2020-01-26',11,1),(142,NULL,'2020-11-24',12,2),(143,NULL,'2022-01-04',13,3),(144,NULL,'2021-10-25',1,4),(145,NULL,'2021-03-27',2,5),(146,NULL,'2021-02-24',3,6),(147,NULL,'2020-11-29',4,7),(148,NULL,'2021-02-21',5,1),(149,NULL,'2020-09-24',6,2),(150,NULL,'2022-09-12',7,3),(151,NULL,'2022-01-16',8,4),(152,NULL,'2020-01-30',9,5),(153,NULL,'2020-02-19',10,6),(154,NULL,'2020-09-26',11,7),(155,NULL,'2022-02-28',12,1),(156,NULL,'2022-06-04',13,2),(157,NULL,'2021-12-03',1,3),(158,NULL,'2020-12-17',2,4),(159,NULL,'2022-03-28',3,5),(160,NULL,'2021-02-09',4,6),(161,NULL,'2022-01-04',5,7),(162,NULL,'2020-01-28',6,1),(163,NULL,'2021-05-22',7,2),(164,NULL,'2022-06-09',8,3),(165,NULL,'2021-02-16',9,4),(166,NULL,'2020-08-04',10,5),(167,NULL,'2020-10-10',11,6),(168,NULL,'2022-04-15',12,7),(169,NULL,'2020-08-19',13,1),(170,NULL,'2020-10-17',1,2),(171,NULL,'2020-05-09',2,3),(172,NULL,'2022-04-20',3,4),(173,NULL,'2021-04-16',4,5),(174,NULL,'2020-08-03',5,6),(175,NULL,'2022-07-11',6,7),(176,NULL,'2022-08-22',7,1),(177,NULL,'2022-03-13',8,2),(178,NULL,'2022-06-10',9,3),(179,NULL,'2021-07-30',10,4),(180,NULL,'2021-07-07',11,5),(181,NULL,'2021-03-19',12,6),(182,NULL,'2022-03-17',13,7),(183,NULL,'2020-01-16',1,1),(184,NULL,'2022-03-19',2,2),(185,NULL,'2021-10-24',3,3),(186,NULL,'2022-06-05',4,4),(187,NULL,'2022-01-27',5,5),(188,NULL,'2020-09-02',6,6),(189,NULL,'2022-01-24',7,7),(190,NULL,'2020-04-03',8,1),(191,NULL,'2022-01-18',9,2),(192,NULL,'2022-03-07',10,3),(193,NULL,'2020-10-31',11,4),(194,NULL,'2021-02-24',12,5),(195,NULL,'2021-09-01',13,6),(196,NULL,'2021-02-24',1,7),(197,NULL,'2020-03-14',2,1),(198,NULL,'2020-06-27',3,2),(199,NULL,'2021-04-28',4,3),(200,NULL,'2020-07-19',5,4),(201,NULL,'2021-05-14',6,5),(202,NULL,'2021-06-24',7,6),(203,NULL,'2022-01-18',8,7),(204,NULL,'2021-06-03',9,1),(205,NULL,'2022-01-12',10,2),(206,NULL,'2020-10-03',11,3),(207,NULL,'2020-05-31',12,4),(208,NULL,'2020-09-24',13,5),(209,NULL,'2020-11-12',1,6),(210,NULL,'2022-09-10',2,7),(211,NULL,'2021-09-28',3,1),(212,NULL,'2022-02-17',4,2),(213,NULL,'2020-05-17',5,3),(214,NULL,'2022-05-31',6,4),(215,NULL,'2022-08-10',7,5),(216,NULL,'2021-10-10',8,6),(217,NULL,'2021-05-27',9,7),(218,NULL,'2020-02-12',10,1),(219,NULL,'2020-05-29',11,2),(220,NULL,'2022-01-06',12,3),(221,NULL,'2021-07-17',13,4),(222,NULL,'2020-08-13',1,5),(223,NULL,'2021-09-24',2,6),(224,NULL,'2020-01-12',3,7),(225,NULL,'2021-01-23',4,1),(226,NULL,'2020-05-26',5,2),(227,NULL,'2022-07-05',6,3),(228,NULL,'2022-02-25',7,4),(229,NULL,'2022-06-13',8,5),(230,NULL,'2020-12-06',9,6),(231,NULL,'2022-05-26',10,7),(232,NULL,'2022-05-17',11,1),(233,NULL,'2021-10-04',12,2),(234,NULL,'2020-01-10',13,3),(235,NULL,'2020-10-13',1,4),(236,NULL,'2021-09-02',2,5),(237,NULL,'2021-10-06',3,6),(238,NULL,'2020-01-02',4,7),(239,NULL,'2022-01-14',5,1),(240,NULL,'2020-05-06',6,2),(241,NULL,'2021-11-25',7,3),(242,NULL,'2020-12-22',8,4),(243,NULL,'2022-01-21',9,5),(244,NULL,'2020-01-14',10,6),(245,NULL,'2021-03-15',11,7),(246,NULL,'2022-04-20',12,1),(247,NULL,'2022-07-09',13,2),(248,NULL,'2021-12-07',1,3),(249,NULL,'2020-09-16',2,4),(250,NULL,'2022-09-05',3,5),(251,NULL,'2021-10-03',4,6),(252,NULL,'2020-06-13',5,7),(253,NULL,'2020-04-24',6,1),(254,NULL,'2020-06-30',7,2),(255,NULL,'2021-06-03',8,3),(256,NULL,'2020-09-29',9,4),(257,NULL,'2022-04-26',10,5),(258,NULL,'2021-04-02',11,6),(259,NULL,'2021-09-21',12,7),(260,NULL,'2021-09-28',13,1),(261,NULL,'2020-10-28',1,2),(262,NULL,'2022-05-16',2,3),(263,NULL,'2021-07-18',3,4),(264,NULL,'2020-11-24',4,5),(265,NULL,'2022-07-24',5,6),(266,NULL,'2020-02-16',6,7),(267,NULL,'2020-03-14',7,1),(268,NULL,'2022-06-24',8,2),(269,NULL,'2021-05-15',9,3),(270,NULL,'2020-06-25',10,4),(271,NULL,'2021-11-04',11,5),(272,NULL,'2021-10-28',12,6),(273,NULL,'2020-07-28',13,7),(274,NULL,'2020-07-20',1,1),(275,NULL,'2022-06-16',2,2),(276,NULL,'2021-03-27',3,3),(277,NULL,'2022-01-04',4,4),(278,NULL,'2022-01-04',5,5),(279,NULL,'2020-01-11',6,6),(280,NULL,'2022-09-18',7,7),(281,NULL,'2022-08-03',8,1),(282,NULL,'2020-10-22',9,2),(283,NULL,'2021-07-28',10,3),(284,NULL,'2022-05-18',11,4),(285,NULL,'2020-12-01',12,5),(286,NULL,'2022-01-02',13,6),(287,NULL,'2022-07-03',1,7),(288,NULL,'2022-07-24',2,1),(289,NULL,'2021-12-24',3,2),(290,NULL,'2021-11-16',4,3),(291,NULL,'2020-01-27',5,4),(292,NULL,'2020-11-08',6,5),(293,NULL,'2020-12-28',7,6),(294,NULL,'2021-12-10',8,7),(295,NULL,'2022-06-22',9,1),(296,NULL,'2020-11-11',10,2),(297,NULL,'2021-02-05',11,3),(298,NULL,'2021-02-25',12,4),(299,NULL,'2021-06-17',13,5),(300,NULL,'2022-05-28',1,6),(301,NULL,'2022-07-30',2,7),(302,NULL,'2020-02-12',3,1),(303,NULL,'2021-11-17',4,2),(304,NULL,'2022-03-11',5,3),(305,NULL,'2020-08-14',6,4),(306,NULL,'2022-01-15',7,5),(307,NULL,'2021-06-08',8,6),(308,NULL,'2021-11-17',9,7),(309,NULL,'2021-01-25',10,1),(310,NULL,'2021-10-23',11,2),(311,NULL,'2020-01-09',12,3),(312,NULL,'2021-04-14',13,4),(313,NULL,'2020-09-07',1,5),(314,NULL,'2020-04-15',2,6),(315,NULL,'2021-07-27',3,7),(316,NULL,'2021-08-14',4,1),(317,NULL,'2021-06-26',5,2),(318,NULL,'2021-06-26',6,3),(319,NULL,'2022-02-13',7,4),(320,NULL,'2022-07-04',8,5),(321,NULL,'2022-07-01',9,6),(322,NULL,'2021-02-07',10,7),(323,NULL,'2022-06-22',11,1),(324,NULL,'2020-04-22',12,2),(325,NULL,'2021-01-12',13,3),(326,NULL,'2021-10-11',1,4),(327,NULL,'2022-08-24',2,5),(328,NULL,'2021-06-21',3,6),(329,NULL,'2020-02-13',4,7),(330,NULL,'2021-04-24',5,1),(331,NULL,'2020-09-09',6,2),(332,NULL,'2021-05-22',7,3),(333,NULL,'2021-09-02',8,4),(334,NULL,'2020-02-12',9,5),(335,NULL,'2021-04-01',10,6),(336,NULL,'2020-09-24',11,7),(337,NULL,'2022-03-30',12,1),(338,NULL,'2020-09-01',13,2),(339,NULL,'2020-03-06',1,3),(340,NULL,'2021-11-10',2,4),(341,NULL,'2022-09-11',3,5),(342,NULL,'2022-03-08',4,6),(343,NULL,'2021-06-23',5,7),(344,NULL,'2020-05-19',6,1),(345,NULL,'2020-01-14',7,2),(346,NULL,'2021-09-15',8,3),(347,NULL,'2021-01-20',9,4),(348,NULL,'2020-05-21',10,5),(349,NULL,'2020-07-14',11,6),(350,NULL,'2020-03-06',12,7),(351,NULL,'2021-03-03',13,1),(352,NULL,'2020-08-06',1,2),(353,NULL,'2022-07-27',2,3),(354,NULL,'2020-04-15',3,4),(355,NULL,'2022-04-21',4,5),(356,NULL,'2022-08-24',5,6),(357,NULL,'2022-07-15',6,7),(358,NULL,'2022-04-22',7,1),(359,NULL,'2020-04-04',8,2),(360,NULL,'2022-03-20',9,3),(361,NULL,'2022-05-17',10,4),(362,NULL,'2020-01-11',11,5),(363,NULL,'2022-08-13',12,6),(364,NULL,'2020-05-04',13,7),(365,NULL,'2022-07-20',1,1),(366,NULL,'2020-03-07',2,2),(367,NULL,'2020-11-05',3,3),(368,NULL,'2020-07-04',4,4),(369,NULL,'2020-08-25',5,5),(370,NULL,'2022-05-04',6,6),(371,NULL,'2021-05-05',7,7),(372,NULL,'2021-09-02',8,1),(373,NULL,'2020-01-26',9,2),(374,NULL,'2021-03-29',10,3),(375,NULL,'2022-05-15',11,4),(376,NULL,'2021-12-13',12,5),(377,NULL,'2021-04-18',13,6),(378,NULL,'2022-01-28',1,7),(379,NULL,'2020-10-17',2,1),(380,NULL,'2021-01-09',3,2),(381,NULL,'2021-02-13',4,3),(382,NULL,'2022-03-22',5,4),(383,NULL,'2020-07-10',6,5),(384,NULL,'2020-02-15',7,6),(385,NULL,'2021-05-31',8,7),(386,NULL,'2021-08-05',9,1),(387,NULL,'2022-07-03',10,2),(388,NULL,'2020-03-22',11,3),(389,NULL,'2021-07-07',12,4),(390,NULL,'2020-08-21',13,5),(391,NULL,'2020-08-10',1,6),(392,NULL,'2020-08-20',2,7),(393,NULL,'2020-09-10',3,1),(394,NULL,'2022-07-20',4,2),(395,NULL,'2021-06-25',5,3),(396,NULL,'2022-03-25',6,4),(397,NULL,'2021-02-20',7,5),(398,NULL,'2020-09-24',8,6),(399,NULL,'2022-07-28',9,7),(400,NULL,'2021-05-10',10,1),(401,NULL,'2020-06-05',11,2),(402,NULL,'2021-11-10',12,3),(403,NULL,'2021-03-02',13,4),(404,NULL,'2020-02-10',1,5),(405,NULL,'2021-07-09',2,6),(406,NULL,'2021-04-23',3,7),(407,NULL,'2021-08-28',4,1),(408,NULL,'2020-04-20',5,2),(409,NULL,'2020-10-24',6,3),(410,NULL,'2021-06-10',7,4),(411,NULL,'2020-06-06',8,5),(412,NULL,'2020-03-27',9,6),(413,NULL,'2020-02-04',10,7),(414,NULL,'2021-06-11',11,1),(415,NULL,'2021-06-01',12,2),(416,NULL,'2022-08-29',13,3),(417,NULL,'2022-05-20',1,4),(418,NULL,'2022-01-26',2,5),(419,NULL,'2022-04-01',3,6),(420,NULL,'2020-10-13',4,7),(421,NULL,'2021-03-11',5,1),(422,NULL,'2020-10-22',6,2),(423,NULL,'2022-01-12',7,3),(424,NULL,'2022-08-31',8,4),(425,NULL,'2021-01-29',9,5),(426,NULL,'2020-06-26',10,6),(427,NULL,'2020-12-10',11,7),(428,NULL,'2021-05-20',12,1),(429,NULL,'2020-12-28',13,2),(430,NULL,'2021-08-29',1,3),(431,NULL,'2021-08-22',2,4),(432,NULL,'2022-05-13',3,5),(433,NULL,'2020-07-13',4,6),(434,NULL,'2020-03-03',5,7),(435,NULL,'2021-01-10',6,1),(436,NULL,'2020-12-31',7,2),(437,NULL,'2021-01-10',8,3),(438,NULL,'2022-03-14',9,4),(439,NULL,'2020-10-31',10,5),(440,NULL,'2020-09-07',11,6),(441,NULL,'2020-10-09',12,7),(442,NULL,'2021-01-25',13,1),(443,NULL,'2022-05-17',1,2),(444,NULL,'2021-05-24',2,3),(445,NULL,'2022-05-13',3,4),(446,NULL,'2021-11-21',4,5),(447,NULL,'2020-01-11',5,6),(448,NULL,'2021-11-27',6,7),(449,NULL,'2021-09-17',7,1),(450,NULL,'2020-02-07',8,2),(451,NULL,'2021-01-22',9,3),(452,NULL,'2020-06-30',10,4),(453,NULL,'2022-03-15',11,5),(454,NULL,'2021-04-26',12,6),(455,NULL,'2020-08-14',13,7),(456,NULL,'2021-01-11',1,1),(457,NULL,'2021-11-18',2,2),(458,NULL,'2022-09-23',3,3),(459,NULL,'2020-10-25',4,4),(460,NULL,'2020-08-26',5,5),(461,NULL,'2021-10-14',6,6),(462,NULL,'2021-08-26',7,7),(463,NULL,'2020-03-10',8,1),(464,NULL,'2020-04-12',9,2),(465,NULL,'2021-07-22',10,3),(466,NULL,'2020-05-10',11,4),(467,NULL,'2022-04-04',12,5),(468,NULL,'2021-04-25',13,6),(469,NULL,'2020-05-04',1,7),(470,NULL,'2021-11-19',2,1),(471,NULL,'2020-07-24',3,2),(472,NULL,'2021-11-25',4,3),(473,NULL,'2021-01-14',5,4),(474,NULL,'2020-04-30',6,5),(475,NULL,'2020-03-19',7,6),(476,NULL,'2020-06-23',8,7),(477,NULL,'2020-07-24',9,1),(478,NULL,'2021-05-17',10,2),(479,NULL,'2021-01-05',11,3),(480,NULL,'2022-03-28',12,4),(481,NULL,'2020-04-08',13,5),(482,NULL,'2020-07-21',1,6),(483,NULL,'2021-04-05',2,7),(484,NULL,'2021-07-09',3,1),(485,NULL,'2021-11-23',4,2),(486,NULL,'2020-03-10',5,3),(487,NULL,'2020-01-08',6,4),(488,NULL,'2022-06-20',7,5),(489,NULL,'2020-06-03',8,6),(490,NULL,'2021-06-23',9,7),(491,NULL,'2020-08-23',10,1),(492,NULL,'2022-09-03',11,2),(493,NULL,'2021-09-19',12,3),(494,NULL,'2020-02-24',13,4),(495,NULL,'2020-03-11',1,5),(496,NULL,'2021-10-09',2,6),(497,NULL,'2020-04-12',3,7),(498,NULL,'2020-01-28',4,1),(499,NULL,'2021-05-18',5,2),(500,NULL,'2020-06-17',6,3);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `comprasproveedor`
--

DROP TABLE IF EXISTS `comprasproveedor`;
/*!50001 DROP VIEW IF EXISTS `comprasproveedor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comprasproveedor` AS SELECT 
 1 AS `Monto total`,
 1 AS `Proveedor`,
 1 AS `Almacen`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `idDireccion` int NOT NULL AUTO_INCREMENT,
  `calle` varchar(40) NOT NULL,
  `numero` int NOT NULL,
  `codPostal` int NOT NULL,
  PRIMARY KEY (`idDireccion`),
  KEY `fk_direc_ciudad` (`codPostal`),
  CONSTRAINT `fk_direc_ciudad` FOREIGN KEY (`codPostal`) REFERENCES `ciudades` (`codPostal`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'Reindahl',87,1888),(2,'Mandrake',82,1878),(3,'Rieder',808,2000),(4,'New Castle',78180,1888),(5,'Cardinal',27,1878),(6,'Schlimgen',23699,1880),(7,'Express',25410,1828),(8,'Clove',285,1828),(9,'Hazelcrest',0,1888),(10,'Riverside',55291,2000),(11,'Iowa',4585,1878),(12,'Green',684,1828),(13,'Elgar',66776,1878),(14,'Walton',939,2000),(15,'Russell',9834,1888),(16,'Anniversary',46345,1828),(17,'Butterfield',747,1888),(18,'Del Mar',1650,1888),(19,'Moose',64,1888),(20,'Miller',5,1878),(21,'Manufacturers',24,1828),(22,'Scoville',92,1828),(23,'Hovde',7425,1828),(24,'Sommers',154,1828),(25,'Elka',74148,1888),(26,'Hallows',58,1878),(27,'Hauk',5,1888),(28,'Fallview',5,1828),(29,'Graceland',50,1878),(30,'Duke',77,1880),(31,'Buena Vista',6234,1888),(32,'Elka',2809,1880),(33,'Northfield',3,1828),(34,'Onsgard',906,3300),(35,'Ridgeview',50,6300),(36,'Commercial',33817,3300),(37,'Pine View',143,3300),(38,'Columbus',38628,3300),(39,'Tomscot',64905,5152),(40,'Dryden',44,5152),(41,'Tennyson',247,5152),(42,'Welch',203,5152),(43,'Northport',6540,5152),(44,'Green Ridge',20,5152),(45,'Fieldstone',7,5152),(46,'Bluestem',2452,1880),(47,'Ridge Oak',379,3300),(48,'Buena Vista',36261,6300),(49,'Vermont',81192,5152),(50,'Kennedy',6,1828),(51,'Bobwhite',7484,1878),(52,'Buhler',27488,1888),(53,'Anderson',2,1880),(54,'Myrtle',36290,1880),(55,'Jackson',52395,5194),(56,'Anniversary',770,5194),(57,'Utah',21,5194),(58,'7th',655,5194),(59,'Calypso',8,5194),(60,'Bluestem',48,5194),(61,'Merchant',994,5194),(62,'Carpenter',94,5194),(63,'Basil',701,5194),(64,'Browning',23987,5194),(65,'Union',6,5194),(66,'Pennsylvania',1395,5600),(67,'Reinke',527,5600),(68,'Melvin',9,5600),(69,'Aberg',5028,5600),(70,'Green',173,5600),(71,'Farragut',6,5600),(72,'Dawn',0,5600),(73,'Karstens',8795,5600),(74,'Ridge Oak',26928,5600),(75,'Evergreen',50128,5600),(76,'Buhler',3328,5600),(77,'Bellgrove',428,5600),(78,'American Ash',6151,5600),(79,'Golf Course',3,3300),(80,'New Castle',6,5152),(81,'Park Meadow',88,1880),(82,'Maryland',82496,1880),(83,'Pearson',84,1880),(84,'Pierstorff',24534,1880),(85,'Summerview',3,1878),(86,'Warbler',63,1888),(87,'Mesta',47,1828),(88,'Union',9,3300),(89,'Clarendon',9581,5152),(90,'Rusk',61296,5152),(91,'Rockefeller',4443,5152),(92,'Park Meadow',8370,5152),(93,'Boyd',70,5152),(94,'Bonner',9,5152),(95,'Maple',701,5152),(96,'Maple',4959,5152),(97,'Becker',105,5152),(98,'Graedel',6,1888),(99,'Almo',7,3300),(100,'Main',66,6300),(101,'Dexter',56271,3300),(102,'Northwestern',70060,3300),(103,'Arkansas',9226,3300),(104,'Lerdahl',6818,3300),(105,'American Ash',3,3300),(106,'Mifflin',6999,3300),(107,'Starling',7,3300),(108,'Comanche',8,6300),(109,'Chinook',2,6300),(110,'Maple Wood',90,6300),(111,'Parkside',95884,6300),(112,'Northfield',3137,6300),(113,'Ruskin',1,6300),(114,'Westport',796,3300),(115,'Oneill',2571,6300),(116,'Glacier Hill',65497,3300),(117,'Oriole',985,1878),(118,'Wayridge',80,1828),(119,'Hintze',7,1888),(120,'Stuart',2,1880),(121,'Shoshone',160,5600),(122,'Briar Crest',265,5194),(123,'Manley',56829,5600),(124,'Fremont',59,5600),(125,'Oakridge',690,5600),(126,'Mallory',5212,5194),(127,'Di Loreto',25,5194),(128,'Lindbergh',2,5194),(129,'Holmberg',5,5194),(130,'Macpherson',92,5194),(131,'Westport',71,5194),(132,'Manley',28415,5194),(133,'Butterfield',992,5194),(134,'Debra',87,5194),(135,'Dottie',87,5194),(136,'Bunker Hill',925,5600),(137,'Bashford',9,5600),(138,'Sage',4843,5600),(139,'Meadow Ridge',33,5600),(140,'Crownhardt',7,1828),(141,'Hoard',5,5152),(142,'Waubesa',101,1880),(143,'Maywood',80,1880),(144,'Independence',54,1828),(145,'Dahle',59,5152),(146,'Southridge',2,1878),(147,'Welch',9493,1828),(148,'Shelley',6,1888),(149,'Spohn',1,5152),(150,'Mosinee',905,5152),(151,'Fisk',566,5152),(152,'Quincy',4,3300);
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombreApellido` varchar(50) NOT NULL,
  `dni` int NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `idDireccion` int NOT NULL,
  `idAlmacen` int NOT NULL,
  `idSueldo` int NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `fk_empleado_direccion` (`idDireccion`),
  KEY `fk_empleado_almacen` (`idAlmacen`),
  KEY `fk_empleado_sueldo` (`idSueldo`),
  CONSTRAINT `fk_empleado_almacen` FOREIGN KEY (`idAlmacen`) REFERENCES `almacenes` (`idAlmacen`),
  CONSTRAINT `fk_empleado_direccion` FOREIGN KEY (`idDireccion`) REFERENCES `direcciones` (`idDireccion`),
  CONSTRAINT `fk_empleado_sueldo` FOREIGN KEY (`idSueldo`) REFERENCES `sueldos` (`idSueldo`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Joly Muzzollo',43353865,'6224009774','jmuzzollo0@europa.eu',1,6,1),(2,'Gui Garnar',30095344,'4013281575','ggarnar1@home.pl',2,3,2),(3,'Rayna Neeves',31628569,'2851066926','rneeves2@google.com',3,5,3),(4,'Ammamaria Ugolotti',38586835,'4806364850','augolotti3@loc.gov',4,1,4),(5,'Vere Renehan',41664809,'6943555408','vrenehan4@chicagotribune.com',5,2,5),(6,'Kurt McKern',36071309,'3091495953','kmckern5@ox.ac.uk',6,7,6),(7,'Phil Sorrill',38576364,'3157607705','psorrill6@cbslocal.com',7,1,7),(8,'Lora Gonin',36602634,'2242705868','lgonin7@princeton.edu',8,6,8),(9,'Roberto Sammons',34446590,'6871165030','rsammons8@buzzfeed.com',9,2,9),(10,'Lynne Scola',33194355,'6957354355','lscola9@reverbnation.com',10,6,10),(11,'Lisbeth Rego',30141203,'8366073022','lregoa@google.ca',11,7,11),(12,'Bogart Conlon',30588365,'3526464425','bconlonb@seesaa.net',12,4,12),(13,'Vivia Paine',33966739,'6049301041','vpainec@dedecms.com',13,5,13),(14,'Vergil Goacher',40518775,'2166926735','vgoacherd@phpbb.com',14,3,14),(15,'Bobette Conley',31998552,'2307911652','bconleye@devhub.com',15,5,15),(16,'Carlita Tatum',30728832,'4421937119','ctatumf@tuttocitta.it',16,2,16),(17,'Floris Ould',43710998,'3102017607','fouldg@reuters.com',17,4,17),(18,'Crin Regardsoe',37560961,'6149306645','cregardsoeh@biglobe.ne.jp',18,2,18),(19,'Stafford Rudram',37438559,'2431186052','srudrami@123-reg.co.uk',19,4,19),(20,'Garfield Wedmore',36457046,'9982009580','gwedmorej@google.cn',20,7,20),(21,'Merline Dubois',41597817,'4368520175','mduboisk@posterous.com',21,1,21),(22,'Jacinta Coleborn',43235547,'3478403801','jcolebornl@usnews.com',22,1,22),(23,'Teodorico McAlindon',31844122,'6355869296','tmcalindonm@behance.net',23,5,23),(24,'Fredelia Hannis',36828336,'9357044472','fhannisn@ox.ac.uk',24,7,24),(25,'Trudie Bauchop',36793295,'5562384262','tbauchopo@miitbeian.gov.cn',25,6,25),(26,'Avictor Seys',39873769,'8828349085','aseysp@ted.com',26,5,26),(27,'Nial Stellman',36868577,'7222311028','nstellmanq@cnn.com',27,7,27),(28,'Sherlocke Gainsbury',38815431,'7088147098','sgainsburyr@zdnet.com',28,2,28),(29,'Elnar Hurton',43167042,'4971957819','ehurtons@nifty.com',29,2,29),(30,'Donal Treasaden',35929065,'7204723107','dtreasadent@friendfeed.com',30,2,30),(31,'Vale Alkins',33615482,'2055033618','valkinsu@tuttocitta.it',31,1,31),(32,'Flore Buncher',36828767,'8067197994','fbuncherv@123-reg.co.uk',32,5,32),(33,'Gerry Sporner',34258748,'3732274245','gspornerw@tamu.edu',33,3,33),(34,'Wendeline Camelin',32134360,'3704715624','wcamelinx@china.com.cn',34,4,34),(35,'Tonia De la Harpe',31120627,'7205201591','tdey@upenn.edu',35,3,25),(36,'Cyrill Byne',39141556,'2584893855','cbynez@nationalgeographic.com',36,4,36),(37,'Eward Conklin',43074525,'6067343774','econklin10@skyrock.com',37,2,37),(38,'Sabra Simonassi',30573796,'3136818359','ssimonassi11@census.gov',38,1,38),(39,'Westbrook Cullingworth',38406237,'6653229076','wcullingworth12@marriott.com',22,3,39),(40,'Clayborn Burnet',34206526,'4044070759','cburnet13@illinois.edu',32,1,40),(41,'Waldon Hinners',35496640,'1112736652','whinners14@buzzfeed.com',13,5,41);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_empleados_insert` AFTER INSERT ON `empleados` FOR EACH ROW INSERT INTO logAuditoria (tabla,accion,mensaje,usuario,fecha)
VALUES
	('Empleados',
    'Alta de empleado',
    CONCAT('Se agregó el empleado ',NEW.nombreApellido,' con id: ',NEW.idEmpleado, ' al sistema'),
    USER(),
    CURRENT_DATE()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `empleadosalmacen`
--

DROP TABLE IF EXISTS `empleadosalmacen`;
/*!50001 DROP VIEW IF EXISTS `empleadosalmacen`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empleadosalmacen` AS SELECT 
 1 AS `Almacen`,
 1 AS `Empleado`,
 1 AS `Sueldo (neto)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empleadoscategorias`
--

DROP TABLE IF EXISTS `empleadoscategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleadoscategorias` (
  `idCategoria` int NOT NULL,
  `idEmpleado` int NOT NULL,
  PRIMARY KEY (`idCategoria`,`idEmpleado`),
  KEY `fk_empleadoCat_empleado` (`idEmpleado`),
  CONSTRAINT `fk_empleadoCat_cat` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`),
  CONSTRAINT `fk_empleadoCat_empleado` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleadoscategorias`
--

LOCK TABLES `empleadoscategorias` WRITE;
/*!40000 ALTER TABLE `empleadoscategorias` DISABLE KEYS */;
INSERT INTO `empleadoscategorias` VALUES (1,1),(2,1),(1,2),(4,3),(2,4),(3,4),(1,5),(3,5),(1,6),(2,7),(4,8),(1,9),(4,10),(1,11),(4,12),(2,13),(1,14),(2,15),(1,16),(2,17),(1,18),(1,19),(2,20),(3,21),(4,22),(4,23),(4,24),(3,25),(3,26),(1,27),(1,28),(1,29),(3,30),(1,31),(1,32),(4,33),(4,34),(4,35),(2,36),(3,37),(4,38),(3,39),(1,40),(4,41);
/*!40000 ALTER TABLE `empleadoscategorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `gananciaalmacenes`
--

DROP TABLE IF EXISTS `gananciaalmacenes`;
/*!50001 DROP VIEW IF EXISTS `gananciaalmacenes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gananciaalmacenes` AS SELECT 
 1 AS `Almacen`,
 1 AS `Ganancia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gastosclientes`
--

DROP TABLE IF EXISTS `gastosclientes`;
/*!50001 DROP VIEW IF EXISTS `gastosclientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gastosclientes` AS SELECT 
 1 AS `Gasto total`,
 1 AS `Cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios` (
  `idHorario` int NOT NULL AUTO_INCREMENT,
  `horarioApertura` time NOT NULL,
  `horarioCierre` time NOT NULL,
  `diaSemana` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idHorario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,'08:30:00','20:00:00','Lunes'),(2,'09:00:00','16:00:00','Lunes'),(3,'08:30:00','20:00:00','Martes'),(4,'09:00:00','20:00:00','Miercoles'),(5,'09:00:00','20:00:00','Jueves'),(6,'16:30:00','20:30:00','Jueves'),(7,'09:00:00','20:30:00','Viernes'),(8,'09:00:00','20:30:00','Sabado'),(9,'16:00:00','20:30:00','Sabado'),(10,'09:00:00','13:00:00','Domingo');
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horariosalmacen`
--

DROP TABLE IF EXISTS `horariosalmacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horariosalmacen` (
  `idAlmacen` int NOT NULL,
  `idHorario` int NOT NULL,
  PRIMARY KEY (`idAlmacen`,`idHorario`),
  KEY `fk_horaAl_hora` (`idHorario`),
  CONSTRAINT `fk_horaAl_almacen` FOREIGN KEY (`idAlmacen`) REFERENCES `almacenes` (`idAlmacen`),
  CONSTRAINT `fk_horaAl_hora` FOREIGN KEY (`idHorario`) REFERENCES `horarios` (`idHorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariosalmacen`
--

LOCK TABLES `horariosalmacen` WRITE;
/*!40000 ALTER TABLE `horariosalmacen` DISABLE KEYS */;
INSERT INTO `horariosalmacen` VALUES (1,1),(7,1),(2,2),(1,3),(2,3),(3,3),(5,3),(7,3),(1,4),(2,4),(4,4),(2,5),(7,5),(1,6),(2,6),(6,6),(1,7),(4,7),(6,7),(7,7),(5,8),(1,9),(2,10),(7,10);
/*!40000 ALTER TABLE `horariosalmacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `horariossemanales`
--

DROP TABLE IF EXISTS `horariossemanales`;
/*!50001 DROP VIEW IF EXISTS `horariossemanales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `horariossemanales` AS SELECT 
 1 AS `Almacen`,
 1 AS `Name_exp_2`,
 1 AS `Dia`,
 1 AS `Name_exp_4`,
 1 AS `Apertura`,
 1 AS `Name_exp_6`,
 1 AS `Cierre`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `inventarios`
--

DROP TABLE IF EXISTS `inventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventarios` (
  `idInventario` int NOT NULL AUTO_INCREMENT,
  `idAlmacen` int NOT NULL,
  PRIMARY KEY (`idInventario`),
  KEY `fk_inventario_almacen` (`idAlmacen`),
  CONSTRAINT `fk_inventario_almacen` FOREIGN KEY (`idAlmacen`) REFERENCES `almacenes` (`idAlmacen`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarios`
--

LOCK TABLES `inventarios` WRITE;
/*!40000 ALTER TABLE `inventarios` DISABLE KEYS */;
INSERT INTO `inventarios` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7);
/*!40000 ALTER TABLE `inventarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventariosarticulos`
--

DROP TABLE IF EXISTS `inventariosarticulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventariosarticulos` (
  `idInventario` int NOT NULL,
  `idArticulo` int NOT NULL,
  PRIMARY KEY (`idInventario`,`idArticulo`),
  KEY `fk_invArticulo_articulo` (`idArticulo`),
  CONSTRAINT `fk_invArticulo_articulo` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`),
  CONSTRAINT `fk_invArticulo_inventario` FOREIGN KEY (`idInventario`) REFERENCES `inventarios` (`idInventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventariosarticulos`
--

LOCK TABLES `inventariosarticulos` WRITE;
/*!40000 ALTER TABLE `inventariosarticulos` DISABLE KEYS */;
INSERT INTO `inventariosarticulos` VALUES (4,1),(6,2),(5,3),(2,4),(1,5),(7,6),(1,7),(4,8),(2,9),(6,10),(7,11),(6,12),(4,13),(6,14),(1,15),(7,16),(5,17),(7,18),(5,19),(1,20),(4,21),(5,22),(2,23),(4,24),(3,25),(6,26),(5,27),(5,28),(1,29),(3,30),(4,31),(2,32),(2,33),(2,34),(3,35),(2,36),(2,37),(4,38),(5,39),(6,40),(5,41),(4,42),(2,43),(1,44),(3,45),(6,46),(5,47),(1,48),(3,49),(5,50),(4,51),(2,52),(7,53),(1,54),(1,55),(6,56),(7,57),(1,58),(7,59),(4,60),(7,61),(2,62),(4,63),(3,64),(6,65),(1,66),(3,67),(3,68),(5,69),(1,70),(2,71),(5,72),(7,73),(7,74),(6,75),(6,76),(5,77),(1,78),(3,79),(4,80),(6,81),(6,82),(6,83),(2,84),(2,85),(7,86),(3,87),(5,88),(7,89),(2,90),(6,91),(6,92),(4,93),(3,94),(3,95),(1,96),(6,97),(3,98),(4,99),(4,100);
/*!40000 ALTER TABLE `inventariosarticulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemcompras`
--

DROP TABLE IF EXISTS `itemcompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemcompras` (
  `idItem` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `precioUnidad` float NOT NULL,
  `idArticulo` int DEFAULT NULL,
  `idCompra` int DEFAULT NULL,
  PRIMARY KEY (`idItem`),
  KEY `fk_itemC_articulo` (`idArticulo`),
  KEY `fk_itemC_compra` (`idCompra`),
  CONSTRAINT `fk_itemC_articulo` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`),
  CONSTRAINT `fk_itemC_compra` FOREIGN KEY (`idCompra`) REFERENCES `compras` (`idCompra`)
) ENGINE=InnoDB AUTO_INCREMENT=801 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemcompras`
--

LOCK TABLES `itemcompras` WRITE;
/*!40000 ALTER TABLE `itemcompras` DISABLE KEYS */;
INSERT INTO `itemcompras` VALUES (1,36,1759.37,1,1),(2,8,1750.99,2,2),(3,7,665.35,3,3),(4,18,1271.79,4,4),(5,39,2526.95,5,5),(6,32,1269.58,6,6),(7,10,2220.06,7,7),(8,2,1245.74,8,8),(9,28,1585.49,9,9),(10,31,486.98,10,10),(11,22,1379.56,11,11),(12,28,2347.24,12,12),(13,33,689.06,13,13),(14,21,317.38,14,14),(15,10,551.9,15,15),(16,25,572.52,16,16),(17,7,2096.75,17,17),(18,40,120.41,18,18),(19,14,2480.86,19,19),(20,17,329.33,20,20),(21,17,1222.16,21,21),(22,35,909.09,22,22),(23,37,2538.09,23,23),(24,13,1314.49,24,24),(25,19,1046.43,25,25),(26,24,2486.56,26,26),(27,13,1831.54,27,27),(28,14,1682.97,28,28),(29,12,1217.27,29,29),(30,28,465.9,30,30),(31,32,2352.51,31,31),(32,17,1801.41,32,32),(33,28,182.04,33,33),(34,21,1221.69,34,34),(35,24,864.71,35,35),(36,23,1076.61,36,36),(37,17,2512.42,37,37),(38,29,1483.46,38,38),(39,37,1466.61,39,39),(40,6,2199,40,40),(41,12,2518.55,41,41),(42,28,1926.7,42,42),(43,37,2301.56,43,43),(44,26,1015.51,44,44),(45,19,2271,45,45),(46,30,1841.81,46,46),(47,34,2167.8,47,47),(48,27,852.99,48,48),(49,5,510.24,49,49),(50,15,2634.54,50,50),(51,5,709.01,51,51),(52,2,1623.69,52,52),(53,32,1538.85,53,53),(54,5,2401.38,54,54),(55,35,1544.96,55,55),(56,4,1032.38,56,56),(57,37,160.72,57,57),(58,26,1436.44,58,58),(59,4,1947.8,59,59),(60,5,220.03,60,60),(61,21,1687.62,61,61),(62,3,1929.22,62,62),(63,35,2365.1,63,63),(64,6,1306.65,64,64),(65,19,42.31,65,65),(66,15,1186.28,66,66),(67,38,1461.56,67,67),(68,28,136.55,68,68),(69,4,2679.55,69,69),(70,15,205.8,70,70),(71,34,1608.87,71,71),(72,28,2005.68,72,72),(73,17,167.94,73,73),(74,9,1329.11,74,74),(75,24,556.93,75,75),(76,29,1204.24,76,76),(77,19,2266.97,77,77),(78,14,508.74,78,78),(79,22,2201.55,79,79),(80,3,1276.6,80,80),(81,31,2524.62,81,81),(82,5,2188.31,82,82),(83,35,830.77,83,83),(84,28,1835.21,84,84),(85,6,28.6,85,85),(86,1,1829.56,86,86),(87,38,2228.64,87,87),(88,18,682.67,88,88),(89,34,2542.06,89,89),(90,37,682.78,90,90),(91,34,1666.27,91,91),(92,21,340.91,92,92),(93,14,1980.35,93,93),(94,15,787.37,94,94),(95,32,836.24,95,95),(96,6,2498.49,96,96),(97,28,1680.27,97,97),(98,3,1172.24,98,98),(99,26,2385.77,99,99),(100,27,2096.99,100,100),(101,13,2367.56,1,101),(102,14,1124.29,2,102),(103,3,769.18,3,103),(104,32,202.39,4,104),(105,31,1934.52,5,105),(106,35,651.92,6,106),(107,10,1224.26,7,107),(108,38,464.17,8,108),(109,21,1098.61,9,109),(110,23,1927.82,10,110),(111,23,192.46,11,111),(112,32,622.87,12,112),(113,1,464.57,13,113),(114,36,1407.97,14,114),(115,2,1545.09,15,115),(116,29,965.15,16,116),(117,10,1130.89,17,117),(118,40,432.97,18,118),(119,15,750.77,19,119),(120,37,1558.67,20,120),(121,40,1244.31,21,121),(122,40,876.45,22,122),(123,3,823.75,23,123),(124,15,578.07,24,124),(125,36,2380.92,25,125),(126,3,2486.13,26,126),(127,29,613.86,27,127),(128,3,2237.8,28,128),(129,19,284.66,29,129),(130,27,2443.12,30,130),(131,13,1837.95,31,131),(132,2,2625.33,32,132),(133,5,882.42,33,133),(134,28,384.67,34,134),(135,17,111.02,35,135),(136,19,2359.15,36,136),(137,40,2696.53,37,137),(138,39,2602.74,38,138),(139,14,544.81,39,139),(140,8,1827.08,40,140),(141,19,31.97,41,141),(142,18,2565.53,42,142),(143,17,2106.17,43,143),(144,33,1628.47,44,144),(145,34,858.77,45,145),(146,1,629.09,46,146),(147,14,153.91,47,147),(148,24,1704.79,48,148),(149,15,137.2,49,149),(150,27,821.4,50,150),(151,11,1693.52,51,151),(152,11,262.22,52,152),(153,37,1490.97,53,153),(154,33,223.29,54,154),(155,37,1395.04,55,155),(156,26,1827.04,56,156),(157,1,2060.06,57,157),(158,7,2037.76,58,158),(159,37,640.79,59,159),(160,31,1024.68,60,160),(161,40,2032.53,61,161),(162,1,2382.81,62,162),(163,24,1338.01,63,163),(164,34,73.01,64,164),(165,15,848.3,65,165),(166,3,506.55,66,166),(167,8,2186.29,67,167),(168,32,651.32,68,168),(169,3,1069.65,69,169),(170,26,1580.86,70,170),(171,9,977.98,71,171),(172,9,905.37,72,172),(173,16,1953.33,73,173),(174,23,1988.76,74,174),(175,35,1577.65,75,175),(176,18,2627.57,76,176),(177,37,2518.68,77,177),(178,15,40.08,78,178),(179,24,2402.91,79,179),(180,13,2422.69,80,180),(181,19,1904.17,81,181),(182,32,346.62,82,182),(183,3,1526.07,83,183),(184,7,2537.04,84,184),(185,4,2116.78,85,185),(186,23,592.82,86,186),(187,15,1809.47,87,187),(188,30,1727.38,88,188),(189,34,1313.1,89,189),(190,18,1089.76,90,190),(191,23,2486.78,91,191),(192,4,1680.09,92,192),(193,27,656.31,93,193),(194,13,517.69,94,194),(195,15,1516.55,95,195),(196,34,1096.17,96,196),(197,26,1666.68,97,197),(198,32,609.21,98,198),(199,10,2034.88,99,199),(200,8,2346.98,100,200),(201,23,1675.29,1,201),(202,1,2316.21,2,202),(203,23,2333.64,3,203),(204,16,1262.04,4,204),(205,14,1584.13,5,205),(206,39,1870.68,6,206),(207,9,2675.51,7,207),(208,38,527.62,8,208),(209,33,716.5,9,209),(210,18,2326.45,10,210),(211,27,220.74,11,211),(212,5,1410.47,12,212),(213,25,269.46,13,213),(214,9,584.25,14,214),(215,39,980.67,15,215),(216,33,102.53,16,216),(217,22,932.42,17,217),(218,13,1250.69,18,218),(219,40,2278.98,19,219),(220,9,165.02,20,220),(221,2,1647.61,21,221),(222,36,2216.03,22,222),(223,12,2261.63,23,223),(224,18,412.98,24,224),(225,29,807.55,25,225),(226,24,1462.57,26,226),(227,4,280.51,27,227),(228,19,2158.26,28,228),(229,3,1891.26,29,229),(230,37,2130.4,30,230),(231,4,1297.21,31,231),(232,19,2075.68,32,232),(233,28,2191.55,33,233),(234,1,696.25,34,234),(235,5,1109.64,35,235),(236,21,2106.39,36,236),(237,17,1733.64,37,237),(238,36,1188.09,38,238),(239,8,2005.58,39,239),(240,39,2532.22,40,240),(241,9,973.68,41,241),(242,33,2222.15,42,242),(243,17,2079.68,43,243),(244,11,1770.29,44,244),(245,38,2164.34,45,245),(246,31,2580.32,46,246),(247,21,47.33,47,247),(248,33,253.04,48,248),(249,25,2453.16,49,249),(250,39,283.33,50,250),(251,33,1261.65,51,251),(252,31,1061.13,52,252),(253,14,1835.07,53,253),(254,30,1822.38,54,254),(255,22,2597.33,55,255),(256,8,2410.99,56,256),(257,8,521.53,57,257),(258,20,402.66,58,258),(259,34,1691.97,59,259),(260,27,268.96,60,260),(261,19,48.32,61,261),(262,1,1988.95,62,262),(263,9,645.74,63,263),(264,17,1037.6,64,264),(265,7,603.62,65,265),(266,25,2217.4,66,266),(267,25,2376.26,67,267),(268,5,1796.44,68,268),(269,24,2413,69,269),(270,3,1909.15,70,270),(271,33,1757.04,71,271),(272,12,955.35,72,272),(273,22,2198.32,73,273),(274,38,461.77,74,274),(275,7,2411.43,75,275),(276,19,1330.71,76,276),(277,17,1180.9,77,277),(278,2,1222.91,78,278),(279,40,762.36,79,279),(280,29,2656.34,80,280),(281,21,202.43,81,281),(282,10,124.8,82,282),(283,34,2408.42,83,283),(284,32,839.32,84,284),(285,33,527.69,85,285),(286,10,1112.47,86,286),(287,39,118.68,87,287),(288,25,480.94,88,288),(289,11,577.57,89,289),(290,22,2648.52,90,290),(291,39,1395.33,91,291),(292,32,1530.19,92,292),(293,6,769.57,93,293),(294,5,221.83,94,294),(295,4,1732.4,95,295),(296,13,1197.99,96,296),(297,16,2510.15,97,297),(298,34,755.11,98,298),(299,3,1916.15,99,299),(300,28,1378.89,100,300),(301,34,570.11,1,301),(302,3,2063.22,2,302),(303,1,321.5,3,303),(304,34,2087.97,4,304),(305,7,2510.33,5,305),(306,11,408.64,6,306),(307,15,2263.91,7,307),(308,13,388.74,8,308),(309,13,423.92,9,309),(310,27,695.72,10,310),(311,39,2134.09,11,311),(312,40,2045.78,12,312),(313,29,1298.85,13,313),(314,5,1691.94,14,314),(315,10,2453.51,15,315),(316,34,1961.44,16,316),(317,27,1248.86,17,317),(318,36,2351.17,18,318),(319,33,2550.22,19,319),(320,9,35.31,20,320),(321,38,1000.39,21,321),(322,9,1888.19,22,322),(323,29,861.57,23,323),(324,34,1387.37,24,324),(325,13,1212.9,25,325),(326,16,1767.39,26,326),(327,22,2215.91,27,327),(328,23,742.53,28,328),(329,34,1868.43,29,329),(330,9,2362.3,30,330),(331,5,1259.78,31,331),(332,38,2319.3,32,332),(333,32,2089.53,33,333),(334,30,1103.27,34,334),(335,6,385.27,35,335),(336,8,147.38,36,336),(337,19,2039.36,37,337),(338,17,1258.54,38,338),(339,27,2059.75,39,339),(340,37,178.48,40,340),(341,9,913.61,41,341),(342,17,1949.79,42,342),(343,18,1540.05,43,343),(344,36,557,44,344),(345,26,1271.64,45,345),(346,38,2285.23,46,346),(347,6,15.17,47,347),(348,23,1982.12,48,348),(349,26,328.19,49,349),(350,30,1007.27,50,350),(351,5,526.94,51,351),(352,17,444.35,52,352),(353,10,973.25,53,353),(354,13,2601,54,354),(355,15,181.87,55,355),(356,30,1475.6,56,356),(357,16,2336.57,57,357),(358,9,2562.04,58,358),(359,14,1427.74,59,359),(360,23,2623.56,60,360),(361,35,1708.44,61,361),(362,17,137.07,62,362),(363,17,1212.51,63,363),(364,7,2447.47,64,364),(365,25,131.23,65,365),(366,21,80.64,66,366),(367,40,1835.74,67,367),(368,37,2581.64,68,368),(369,18,1156.6,69,369),(370,29,1023.63,70,370),(371,20,2233.91,71,371),(372,39,2029.93,72,372),(373,23,545.93,73,373),(374,12,86.02,74,374),(375,14,2477.5,75,375),(376,22,1860.25,76,376),(377,7,1584.92,77,377),(378,16,2486.67,78,378),(379,8,159.48,79,379),(380,13,2385.93,80,380),(381,40,2490.31,81,381),(382,32,1352.49,82,382),(383,30,1923.21,83,383),(384,27,734.36,84,384),(385,23,1628.22,85,385),(386,18,2443.39,86,386),(387,38,212.82,87,387),(388,25,2319.87,88,388),(389,33,750.8,89,389),(390,15,2641.73,90,390),(391,19,101.95,91,391),(392,24,2645.08,92,392),(393,15,445.59,93,393),(394,34,1632.29,94,394),(395,25,1866.64,95,395),(396,39,643.2,96,396),(397,15,1777.28,97,397),(398,9,1896.22,98,398),(399,31,327.63,99,399),(400,12,2086.81,100,400),(401,34,1830.2,1,401),(402,22,788.86,2,402),(403,39,1078.1,3,403),(404,29,2510.69,4,404),(405,38,67.35,5,405),(406,29,1235.13,6,406),(407,1,2019.11,7,407),(408,25,1794.53,8,408),(409,22,2140.33,9,409),(410,31,757.55,10,410),(411,35,1907.78,11,411),(412,26,1785.68,12,412),(413,16,1500.24,13,413),(414,18,750.56,14,414),(415,11,673.82,15,415),(416,16,2409.57,16,416),(417,23,2529.44,17,417),(418,14,383.73,18,418),(419,22,1511.2,19,419),(420,8,424.07,20,420),(421,12,2635.53,21,421),(422,17,305.9,22,422),(423,6,15.72,23,423),(424,5,2105.83,24,424),(425,19,929.67,25,425),(426,14,517.51,26,426),(427,1,229.72,27,427),(428,15,99.01,28,428),(429,28,2443.08,29,429),(430,20,946.12,30,430),(431,37,1437.73,31,431),(432,23,2466.56,32,432),(433,6,1805.36,33,433),(434,7,929.26,34,434),(435,30,571.11,35,435),(436,23,732.12,36,436),(437,21,753.33,37,437),(438,21,2420.48,38,438),(439,28,2121.78,39,439),(440,39,1128.42,40,440),(441,5,118.49,41,441),(442,5,2244.39,42,442),(443,32,2635.1,43,443),(444,4,633.29,44,444),(445,37,1029.47,45,445),(446,4,2637.65,46,446),(447,33,673.59,47,447),(448,31,2668.84,48,448),(449,8,87.63,49,449),(450,25,1162.11,50,450),(451,8,1443.52,51,451),(452,38,2632.56,52,452),(453,4,1306.46,53,453),(454,39,1342.75,54,454),(455,34,2424.51,55,455),(456,8,2490.75,56,456),(457,17,2471.02,57,457),(458,20,1266.85,58,458),(459,30,691.64,59,459),(460,15,1392.42,60,460),(461,7,2259.08,61,461),(462,34,2597.72,62,462),(463,7,1385.63,63,463),(464,35,1462.84,64,464),(465,7,2302.31,65,465),(466,17,2124.9,66,466),(467,14,1142.43,67,467),(468,28,51.07,68,468),(469,2,610.89,69,469),(470,22,2146.58,70,470),(471,4,859.62,71,471),(472,36,600.34,72,472),(473,11,1343.97,73,473),(474,5,414.33,74,474),(475,34,121.74,75,475),(476,20,2233.43,76,476),(477,3,1446,77,477),(478,5,1591.95,78,478),(479,24,1904.14,79,479),(480,11,1866.71,80,480),(481,19,2296.52,81,481),(482,16,296.41,82,482),(483,13,506.31,83,483),(484,8,712.4,84,484),(485,34,814.02,85,485),(486,21,60.55,86,486),(487,31,2216.22,87,487),(488,30,1411.16,88,488),(489,8,2693.27,89,489),(490,16,1471.12,90,490),(491,17,1673.18,91,491),(492,36,1044.76,92,492),(493,10,1083.8,93,493),(494,4,334.98,94,494),(495,36,1271.54,95,495),(496,19,294.83,96,496),(497,36,74.74,97,497),(498,28,2165.38,98,498),(499,17,2353.01,99,499),(500,25,652.01,100,500),(501,11,2391.34,1,1),(502,30,682.34,2,2),(503,16,674.35,3,3),(504,25,2332.3,4,4),(505,9,1371.4,5,5),(506,15,1105.08,6,6),(507,26,1583.98,7,7),(508,16,1054.55,8,8),(509,15,2174.49,9,9),(510,1,131.76,10,10),(511,10,163.16,11,11),(512,36,1202.38,12,12),(513,11,447.76,13,13),(514,14,437.39,14,14),(515,18,1536.67,15,15),(516,33,770.32,16,16),(517,21,1927.47,17,17),(518,5,2643.87,18,18),(519,34,738.96,19,19),(520,24,91.5,20,20),(521,10,801.34,21,21),(522,20,447.32,22,22),(523,27,2686.97,23,23),(524,7,1281.79,24,24),(525,19,586.95,25,25),(526,7,1490.43,26,26),(527,35,871.73,27,27),(528,13,1754.24,28,28),(529,40,810.49,29,29),(530,3,140.94,30,30),(531,28,2464.87,31,31),(532,7,338.04,32,32),(533,15,1902.59,33,33),(534,34,852.49,34,34),(535,4,2351.2,35,35),(536,40,574.69,36,36),(537,4,656.39,37,37),(538,16,832.67,38,38),(539,28,2596.21,39,39),(540,1,361.24,40,40),(541,22,1323.13,41,41),(542,23,1129.08,42,42),(543,7,1200.73,43,43),(544,15,1190.76,44,44),(545,11,1604.69,45,45),(546,4,1846.11,46,46),(547,4,451.91,47,47),(548,12,1788.89,48,48),(549,36,2591.15,49,49),(550,21,2155.34,50,50),(551,35,1308.61,51,51),(552,7,2118.77,52,52),(553,30,918.37,53,53),(554,1,352.57,54,54),(555,34,1446.12,55,55),(556,23,1686.41,56,56),(557,28,146.67,57,57),(558,10,71.68,58,58),(559,30,354.25,59,59),(560,30,2170.83,60,60),(561,26,859.02,61,61),(562,18,1681.6,62,62),(563,4,1014.91,63,63),(564,25,107.03,64,64),(565,22,295.82,65,65),(566,18,2299.64,66,66),(567,16,1153.64,67,67),(568,31,2172.03,68,68),(569,31,397.14,69,69),(570,28,2690.21,70,70),(571,40,2257.33,71,71),(572,33,2615.67,72,72),(573,28,1383.22,73,73),(574,38,857.69,74,74),(575,2,131.81,75,75),(576,21,798.98,76,76),(577,14,2097.7,77,77),(578,26,1220.82,78,78),(579,13,2109.64,79,79),(580,39,1985.08,80,80),(581,33,380.36,81,81),(582,6,630.54,82,82),(583,21,149.08,83,83),(584,10,2007.83,84,84),(585,19,1352.65,85,85),(586,11,268,86,86),(587,16,951.68,87,87),(588,16,54.37,88,88),(589,23,385.7,89,89),(590,20,743.15,90,90),(591,26,2372,91,91),(592,5,2449.68,92,92),(593,21,2456.36,93,93),(594,23,60.51,94,94),(595,4,1430.59,95,95),(596,4,437.33,96,96),(597,14,156.19,97,97),(598,38,1136.12,98,98),(599,38,1894.02,99,99),(600,39,1984.4,100,100),(601,20,2615.59,1,101),(602,22,1559.06,2,102),(603,35,1478.94,3,103),(604,36,126.58,4,104),(605,16,518.47,5,105),(606,28,2179.55,6,106),(607,35,2367.8,7,107),(608,16,2043.13,8,108),(609,33,671.2,9,109),(610,34,2175.45,10,110),(611,14,676.25,11,111),(612,2,134.15,12,112),(613,38,347.54,13,113),(614,20,2191.3,14,114),(615,30,565.67,15,115),(616,17,1810.69,16,116),(617,16,2256.41,17,117),(618,31,1954.56,18,118),(619,20,1209.96,19,119),(620,34,2349.67,20,120),(621,40,1054.58,21,121),(622,25,329.25,22,122),(623,37,2432.39,23,123),(624,29,296.8,24,124),(625,33,2409.16,25,125),(626,1,2598.16,26,126),(627,35,709.41,27,127),(628,17,1936.72,28,128),(629,32,1581.62,29,129),(630,20,1626.89,30,130),(631,10,513.3,31,131),(632,10,190.66,32,132),(633,24,1148.57,33,133),(634,33,138.43,34,134),(635,2,1606.85,35,135),(636,14,682.69,36,136),(637,6,2139.39,37,137),(638,11,2286.87,38,138),(639,27,1672.28,39,139),(640,1,2651.84,40,140),(641,37,937.42,41,141),(642,5,2605.58,42,142),(643,10,1996.77,43,143),(644,22,2419.55,44,144),(645,28,2183.73,45,145),(646,37,2618.64,46,146),(647,20,2539.74,47,147),(648,14,1177.01,48,148),(649,8,1103.34,49,149),(650,1,2400.97,50,150),(651,22,346.66,51,151),(652,11,1469.44,52,152),(653,19,2413.22,53,153),(654,29,2173.08,54,154),(655,21,1324.91,55,155),(656,34,2184.88,56,156),(657,22,1315.99,57,157),(658,27,2649.08,58,158),(659,26,2527.74,59,159),(660,22,1535.96,60,160),(661,28,177.46,61,161),(662,21,1239.01,62,162),(663,21,2093.32,63,163),(664,4,1316.57,64,164),(665,12,916.95,65,165),(666,8,168.15,66,166),(667,36,1411.29,67,167),(668,22,266.99,68,168),(669,9,1852.13,69,169),(670,31,1332.01,70,170),(671,7,1484.33,71,171),(672,1,611.39,72,172),(673,24,2466.01,73,173),(674,31,1561.25,74,174),(675,31,416.47,75,175),(676,37,670.96,76,176),(677,3,2197.66,77,177),(678,24,2499.85,78,178),(679,13,1384.22,79,179),(680,19,1064.86,80,180),(681,25,112.04,81,181),(682,34,1676.42,82,182),(683,29,2097.21,83,183),(684,29,2197.79,84,184),(685,12,259.56,85,185),(686,7,1222.74,86,186),(687,22,1362.79,87,187),(688,5,67.45,88,188),(689,29,152.93,89,189),(690,27,490.7,90,190),(691,37,1680.49,91,191),(692,37,1224.64,92,192),(693,10,898.3,93,193),(694,18,1853.86,94,194),(695,4,1023.75,95,195),(696,28,2261.05,96,196),(697,34,2377.29,97,197),(698,7,1229.34,98,198),(699,31,2143.29,99,199),(700,8,1757.42,100,200),(701,20,1876.33,1,201),(702,30,2038.46,2,202),(703,25,999.72,3,203),(704,24,1996.1,4,204),(705,14,1021.67,5,205),(706,29,121.37,6,206),(707,26,1682.23,7,207),(708,29,1956.19,8,208),(709,40,2162.97,9,209),(710,1,1453.77,10,210),(711,13,1192.16,11,211),(712,27,2296.28,12,212),(713,19,887.85,13,213),(714,26,174.53,14,214),(715,9,1050.49,15,215),(716,40,2480.09,16,216),(717,5,1650.83,17,217),(718,19,187.5,18,218),(719,29,1557.07,19,219),(720,12,802.47,20,220),(721,20,221.48,21,221),(722,24,865.85,22,222),(723,10,2639.13,23,223),(724,11,1567.43,24,224),(725,6,1534.08,25,225),(726,30,2603.24,26,226),(727,11,2576.55,27,227),(728,24,1707.01,28,228),(729,33,2197.02,29,229),(730,36,2443.52,30,230),(731,34,548.41,31,231),(732,18,198.02,32,232),(733,21,579.24,33,233),(734,23,153.14,34,234),(735,3,1504.83,35,235),(736,30,1924.54,36,236),(737,14,2654.84,37,237),(738,25,584.61,38,238),(739,10,1822.77,39,239),(740,21,2567.27,40,240),(741,5,93.13,41,241),(742,10,1659.76,42,242),(743,25,214.9,43,243),(744,28,78.86,44,244),(745,17,229.79,45,245),(746,33,1216.05,46,246),(747,14,328.63,47,247),(748,40,310.89,48,248),(749,20,2652.82,49,249),(750,29,470.67,50,250),(751,29,553.16,51,251),(752,15,832.1,52,252),(753,5,342.85,53,253),(754,27,950.92,54,254),(755,7,206.69,55,255),(756,27,1811.38,56,256),(757,3,1761.82,57,257),(758,9,1428.47,58,258),(759,2,581.81,59,259),(760,35,2381.16,60,260),(761,5,2266.05,61,261),(762,3,1141.43,62,262),(763,19,2382.4,63,263),(764,19,2396.74,64,264),(765,38,181.25,65,265),(766,39,758.53,66,266),(767,13,2426.65,67,267),(768,11,1456.23,68,268),(769,23,1587.63,69,269),(770,2,1408.29,70,270),(771,30,2132.07,71,271),(772,38,814.96,72,272),(773,8,862.16,73,273),(774,31,286.26,74,274),(775,17,630.08,75,275),(776,38,1131.27,76,276),(777,26,448.22,77,277),(778,25,1483.27,78,278),(779,40,2013.69,79,279),(780,19,821.11,80,280),(781,22,1055.72,81,281),(782,37,525.39,82,282),(783,29,24.89,83,283),(784,4,1649.48,84,284),(785,2,2653.04,85,285),(786,12,966.34,86,286),(787,31,2615.26,87,287),(788,39,1909.24,88,288),(789,13,1329.99,89,289),(790,21,1846.19,90,290),(791,2,705.32,91,291),(792,10,710.95,92,292),(793,36,853.75,93,293),(794,8,375.05,94,294),(795,4,772.55,95,295),(796,25,158.97,96,296),(797,30,694.13,97,297),(798,37,926.71,98,298),(799,16,90.25,99,299),(800,5,2616.1,100,300);
/*!40000 ALTER TABLE `itemcompras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemventas`
--

DROP TABLE IF EXISTS `itemventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemventas` (
  `idItem` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `precioUnidad` float NOT NULL,
  `idVenta` int NOT NULL,
  `idArticulo` int NOT NULL,
  PRIMARY KEY (`idItem`),
  KEY `fk_itemV_venta` (`idVenta`),
  KEY `fk_itemV_articulo` (`idArticulo`),
  CONSTRAINT `fk_itemV_articulo` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`),
  CONSTRAINT `fk_itemV_venta` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`idVenta`)
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemventas`
--

LOCK TABLES `itemventas` WRITE;
/*!40000 ALTER TABLE `itemventas` DISABLE KEYS */;
INSERT INTO `itemventas` VALUES (1,23,2095.03,1,1),(2,8,3190.15,2,2),(3,21,1846.75,3,3),(4,7,1871.62,4,4),(5,12,2975.14,5,5),(6,4,320.65,6,6),(7,25,2817.06,7,7),(8,25,877.88,8,8),(9,18,1376.13,9,9),(10,3,853.53,10,10),(11,2,1844.7,11,11),(12,1,802.79,12,12),(13,14,631.38,13,13),(14,12,436.64,14,14),(15,21,3470.68,15,15),(16,25,1673.71,16,16),(17,21,3268.23,17,17),(18,25,3360.5,18,18),(19,16,282.32,19,19),(20,6,3324.17,20,20),(21,25,680.04,21,21),(22,8,511.22,22,22),(23,14,1487.95,23,23),(24,6,1493.39,24,24),(25,14,1338.67,25,25),(26,9,3433.33,26,26),(27,20,859.56,27,27),(28,21,1039.21,28,28),(29,2,1102.95,29,29),(30,12,3471.62,30,30),(31,21,196.11,31,31),(32,6,1487.67,32,32),(33,15,430.03,33,33),(34,7,155.54,34,34),(35,20,1478.85,35,35),(36,21,2503.65,36,36),(37,2,3010.27,37,37),(38,6,2031.64,38,38),(39,24,2472.78,39,39),(40,11,1148.66,40,40),(41,18,2983.46,41,41),(42,9,1957.11,42,42),(43,16,2578.64,43,43),(44,7,2411.65,44,44),(45,6,238.87,45,45),(46,14,229.12,46,46),(47,22,2904.85,47,47),(48,27,465,48,48),(49,11,862.95,49,49),(50,27,2242.95,50,50),(51,3,1002.74,51,51),(52,20,1403.44,52,52),(53,1,2439.75,53,53),(54,5,844.17,54,54),(55,15,268.91,55,55),(56,21,329.92,56,56),(57,22,236.25,57,57),(58,12,633.17,58,58),(59,17,2059.74,59,59),(60,1,1165.95,60,60),(61,7,3451.47,61,61),(62,21,2862.56,62,62),(63,6,3223.78,63,63),(64,5,180.16,64,64),(65,8,265.25,65,65),(66,3,2298.75,66,66),(67,6,1054.35,67,67),(68,15,2382.82,68,68),(69,2,173.88,69,69),(70,11,2762.08,70,70),(71,10,3396.3,71,71),(72,19,1831.19,72,72),(73,10,3439.27,73,73),(74,21,1907.35,74,74),(75,8,24.17,75,75),(76,22,593.18,76,76),(77,14,1520.44,77,77),(78,10,2916.54,78,78),(79,8,2167.85,79,79),(80,14,3434.35,80,80),(81,20,3226.16,81,81),(82,15,558.93,82,82),(83,19,337.62,83,83),(84,21,1534.79,84,84),(85,5,1264.41,85,85),(86,18,2335.32,86,86),(87,24,1722.49,87,87),(88,18,911.56,88,88),(89,14,1007.82,89,89),(90,22,1633.96,90,90),(91,21,1026.83,91,91),(92,20,937.3,92,92),(93,9,2480.47,93,93),(94,23,1795.26,94,94),(95,6,2049.84,95,95),(96,11,586.55,96,96),(97,26,452.4,97,97),(98,26,187.69,98,98),(99,19,304.68,99,99),(100,5,3238.79,100,100),(101,13,392.27,101,1),(102,25,888.77,102,2),(103,8,296.09,103,3),(104,20,3382.28,104,4),(105,27,2415.3,105,5),(106,13,82.51,106,6),(107,19,1908.79,107,7),(108,19,2084.15,108,8),(109,24,407.14,109,9),(110,23,2917.68,110,10),(111,13,2498.22,111,11),(112,7,2413.03,112,12),(113,18,3442.22,113,13),(114,2,1657.33,114,14),(115,23,3310.37,115,15),(116,4,109.65,116,16),(117,20,599.54,117,17),(118,11,593.74,118,18),(119,27,764.72,119,19),(120,15,2976.08,120,20),(121,16,1948.03,121,21),(122,27,2801.74,122,22),(123,24,3445.48,123,23),(124,11,2731.54,124,24),(125,24,602.65,125,25),(126,21,446.85,126,26),(127,25,581.9,127,27),(128,21,2005.64,128,28),(129,17,2413.86,129,29),(130,4,2353.85,130,30),(131,6,286.65,131,31),(132,13,63.01,132,32),(133,7,1883.22,133,33),(134,19,2195.82,134,34),(135,11,2622.94,135,35),(136,11,1593.95,136,36),(137,18,1077.98,137,37),(138,1,2471.81,138,38),(139,2,3235.78,139,39),(140,17,1599.22,140,40),(141,20,2322.28,141,41),(142,11,1258.63,142,42),(143,26,1449.36,143,43),(144,1,708.76,144,44),(145,21,2594.34,145,45),(146,10,3296.47,146,46),(147,11,1360.87,147,47),(148,15,469.98,148,48),(149,24,2246.63,149,49),(150,20,2890.07,150,50),(151,9,3472.59,151,51),(152,20,1275.78,152,52),(153,15,2085.96,153,53),(154,9,2282.48,154,54),(155,3,930.49,155,55),(156,18,3290.53,156,56),(157,26,2592.34,157,57),(158,16,547.86,158,58),(159,25,3395.98,159,59),(160,19,399.12,160,60),(161,11,2044.96,161,61),(162,27,2857.23,162,62),(163,15,1714.13,163,63),(164,20,648.57,164,64),(165,19,2217.01,165,65),(166,20,1362.41,166,66),(167,6,1993.28,167,67),(168,13,2391.65,168,68),(169,11,236.33,169,69),(170,4,478.64,170,70),(171,20,3134.32,171,71),(172,6,438.52,172,72),(173,11,2174.42,173,73),(174,25,2841.47,174,74),(175,14,1933.14,175,75),(176,26,2473.79,176,76),(177,10,1662.97,177,77),(178,17,1144.42,178,78),(179,19,2270.19,179,79),(180,25,2853.36,180,80),(181,5,2880.63,181,81),(182,10,2705.46,182,82),(183,26,627.94,183,83),(184,25,2482.65,184,84),(185,12,43.85,185,85),(186,11,2338.59,186,86),(187,10,1938.37,187,87),(188,11,2836.17,188,88),(189,13,154.5,189,89),(190,3,620.58,190,90),(191,11,876.38,191,91),(192,1,3254.66,192,92),(193,19,2416.42,193,93),(194,2,1612.83,194,94),(195,27,1462.48,195,95),(196,10,2071.29,196,96),(197,8,104.1,197,97),(198,19,1862.61,198,98),(199,2,761.6,199,99),(200,19,914.83,200,100),(201,4,2210.53,201,1),(202,20,2745.09,202,2),(203,4,2678.99,203,3),(204,24,801.4,204,4),(205,2,2875.62,205,5),(206,8,985.72,206,6),(207,7,1680.97,207,7),(208,8,2250.5,208,8),(209,27,1190.29,209,9),(210,19,3018.47,210,10),(211,5,2295.25,211,11),(212,26,765.71,212,12),(213,8,3059.08,213,13),(214,24,1333.31,214,14),(215,20,1489.59,215,15),(216,10,1628.39,216,16),(217,9,406.02,217,17),(218,13,2952.9,218,18),(219,20,3487.67,219,19),(220,22,583.53,220,20),(221,11,2132.07,221,21),(222,25,3087.65,222,22),(223,18,848.35,223,23),(224,26,1294.09,224,24),(225,16,166.09,225,25),(226,25,317.62,226,26),(227,21,2105.34,227,27),(228,21,2769.33,228,28),(229,6,3234.09,229,29),(230,6,3149.52,230,30),(231,5,2386.88,231,31),(232,10,2340.25,232,32),(233,10,3452.32,233,33),(234,11,3186.9,234,34),(235,19,2499.97,235,35),(236,21,2660.76,236,36),(237,26,1128.39,237,37),(238,8,3077.4,238,38),(239,25,1783.29,239,39),(240,15,1988.86,240,40),(241,7,2806.03,241,41),(242,15,1027.37,242,42),(243,16,1213.91,243,43),(244,16,184.94,244,44),(245,9,1944.84,245,45),(246,18,1429.61,246,46),(247,21,1523.36,247,47),(248,13,935.97,248,48),(249,27,444.73,249,49),(250,4,478.9,250,50),(251,17,2178.57,251,51),(252,16,1277.99,252,52),(253,21,1517.32,253,53),(254,1,1280.61,254,54),(255,10,2887.09,255,55),(256,5,1148.56,256,56),(257,18,3077.24,257,57),(258,7,2002.02,258,58),(259,18,2240.56,259,59),(260,24,1025.95,260,60),(261,10,2447.66,261,61),(262,14,3130.3,262,62),(263,7,3356.69,263,63),(264,24,385.38,264,64),(265,11,2503.95,265,65),(266,22,1554.99,266,66),(267,6,2359.85,267,67),(268,17,1215.57,268,68),(269,12,887.41,269,69),(270,19,1422.36,270,70),(271,23,2987.01,271,71),(272,17,935.74,272,72),(273,17,1858.83,273,73),(274,22,422.05,274,74),(275,1,3349.7,275,75),(276,11,624.48,276,76),(277,2,290.65,277,77),(278,11,2353.62,278,78),(279,15,1196.79,279,79),(280,23,3401.94,280,80),(281,25,321.01,281,81),(282,18,2530.72,282,82),(283,21,433.6,283,83),(284,12,549.46,284,84),(285,15,1690.54,285,85),(286,12,1626.38,286,86),(287,10,1877.15,287,87),(288,16,3402.82,288,88),(289,20,2818.57,289,89),(290,3,2829.64,290,90),(291,2,1475.94,291,91),(292,2,1663.54,292,92),(293,25,1108.49,293,93),(294,6,2290.48,294,94),(295,11,2392.97,295,95),(296,2,721.2,296,96),(297,13,2340.27,297,97),(298,3,2651.86,298,98),(299,15,533.49,299,99),(300,18,2923.34,300,100),(301,10,1000.97,301,1),(302,23,1206.44,302,2),(303,17,616.07,303,3),(304,6,143.46,304,4),(305,2,2730.96,305,5),(306,7,2739.1,306,6),(307,22,1158.73,307,7),(308,20,2408.54,308,8),(309,14,821.24,309,9),(310,26,1565.77,310,10),(311,21,1953.51,311,11),(312,22,1758.37,312,12),(313,9,3103.04,313,13),(314,6,2830.54,314,14),(315,16,3436.79,315,15),(316,16,2275.48,316,16),(317,16,1753.5,317,17),(318,16,1278.36,318,18),(319,22,824.46,319,19),(320,7,1227.45,320,20),(321,7,1378.62,321,21),(322,18,1303.95,322,22),(323,23,929.28,323,23),(324,15,2249.02,324,24),(325,19,669.44,325,25),(326,15,436.25,326,26),(327,4,2383.85,327,27),(328,4,1547.4,328,28),(329,3,2365.58,329,29),(330,6,1121.92,330,30),(331,21,1163.2,331,31),(332,5,3085.13,332,32),(333,12,2820.3,333,33),(334,24,2807.91,334,34),(335,2,84.23,335,35),(336,14,1498.27,336,36),(337,7,2467.98,337,37),(338,22,206.61,338,38),(339,18,399.05,339,39),(340,25,1247.66,340,40),(341,16,1299.75,341,41),(342,10,376.65,342,42),(343,7,2219.89,343,43),(344,18,2602.42,344,44),(345,22,232.72,345,45),(346,17,1390.42,346,46),(347,21,3227.7,347,47),(348,18,1939.93,348,48),(349,20,3127.71,349,49),(350,20,460.46,350,50),(351,26,1575.3,1,51),(352,20,1787.47,2,52),(353,16,2998.05,3,53),(354,20,1317.25,4,54),(355,13,1583.27,5,55),(356,8,2283.03,6,56),(357,8,536.73,7,57),(358,4,2987.41,8,58),(359,26,3233.13,9,59),(360,24,3305.46,10,60),(361,25,1728.16,11,61),(362,23,1404.92,12,62),(363,19,185.26,13,63),(364,21,3464.47,14,64),(365,13,3012.67,15,65),(366,4,831.19,16,66),(367,25,2465.84,17,67),(368,12,1778,18,68),(369,15,2387.81,19,69),(370,10,732.74,20,70),(371,24,1977.71,21,71),(372,3,1262.41,22,72),(373,1,2986.11,23,73),(374,2,912.04,24,74),(375,11,863.53,25,75),(376,2,2337.2,26,76),(377,10,2369.89,27,77),(378,4,2020.52,28,78),(379,2,1327.97,29,79),(380,11,2180.59,30,80),(381,27,777.41,31,81),(382,12,2539.81,32,82),(383,8,2120.01,33,83),(384,10,960.47,34,84),(385,23,2316.5,35,85),(386,2,1010.52,36,86),(387,2,1519.11,37,87),(388,22,3196.26,38,88),(389,17,619.44,39,89),(390,18,2323.96,40,90),(391,1,3071.99,41,91),(392,15,2448.52,42,92),(393,7,804.48,43,93),(394,19,876.33,44,94),(395,11,163.36,45,95),(396,12,236.28,46,96),(397,19,2822.62,47,97),(398,7,176.98,48,98),(399,23,1732.24,49,99),(400,13,3368.07,50,100),(401,22,2183.42,51,1),(402,3,1420.34,52,2),(403,3,744.35,53,3),(404,8,223.61,54,4),(405,7,2283.48,55,5),(406,9,612.79,56,6),(407,8,2928.05,57,7),(408,6,2825.21,58,8),(409,17,456.68,59,9),(410,13,119.14,60,10),(411,27,726.48,61,11),(412,9,298.39,62,12),(413,5,3439.83,63,13),(414,14,3093.2,64,14),(415,16,432.4,65,15),(416,21,1514.22,66,16),(417,16,614.37,67,17),(418,21,3437.41,68,18),(419,18,3271.13,69,19),(420,18,668.78,70,20),(421,12,1527.06,71,21),(422,18,2719.35,72,22),(423,8,32.6,73,23),(424,7,2525.15,74,24),(425,15,3346.94,75,25),(426,9,2106.51,76,26),(427,20,1622.59,77,27),(428,2,222.84,78,28),(429,12,2280.87,79,29),(430,12,1118.65,80,30),(431,16,1664.93,81,31),(432,11,1541.3,82,32),(433,6,1856.19,83,33),(434,8,1477.88,84,34),(435,12,183.69,85,35),(436,3,3428.25,86,36),(437,21,1648.84,87,37),(438,7,1364.74,88,38),(439,25,2030.24,89,39),(440,21,3495.32,90,40),(441,8,2963.57,91,41),(442,26,1773.4,92,42),(443,22,2103.74,93,43),(444,16,2011.66,94,44),(445,16,1933.25,95,45),(446,3,3163.91,96,46),(447,19,648.97,97,47),(448,22,40.02,98,48),(449,17,3348.3,99,49),(450,26,1110.76,100,50),(451,22,1317.52,101,51),(452,15,2656.18,102,52),(453,4,3194.14,103,53),(454,26,2061.72,104,54),(455,14,509.93,105,55),(456,12,1378.17,106,56),(457,6,810.69,107,57),(458,10,1389.05,108,58),(459,2,3449.13,109,59),(460,7,343.14,110,60),(461,18,173.91,111,61),(462,20,2782.63,112,62),(463,6,730.27,113,63),(464,2,996.55,114,64),(465,27,2557.67,115,65),(466,14,2354.57,116,66),(467,19,1260.64,117,67),(468,12,1032.43,118,68),(469,23,1360.67,119,69),(470,2,508.45,120,70),(471,10,3322.01,121,71),(472,27,2506.41,122,72),(473,7,2259.64,123,73),(474,13,3227.02,124,74),(475,6,3366.87,125,75),(476,16,3186.31,126,76),(477,16,1766.54,127,77),(478,8,1160.76,128,78),(479,2,665.37,129,79),(480,9,1191.72,130,80),(481,1,1880.92,131,81),(482,1,1686.35,132,82),(483,16,1131.65,133,83),(484,9,3027.51,134,84),(485,24,2138.78,135,85),(486,2,1956.2,136,86),(487,10,3291.05,137,87),(488,11,2399.98,138,88),(489,19,3471.88,139,89),(490,27,3128.49,140,90),(491,11,3383.01,141,91),(492,7,1310.03,142,92),(493,7,1135.96,143,93),(494,6,639.9,144,94),(495,11,252.62,145,95),(496,19,671.06,146,96),(497,24,2949.33,147,97),(498,21,940.61,148,98),(499,16,2435.89,149,99),(500,10,3205.3,150,100),(501,23,3382.71,151,1),(502,23,1941.09,152,2),(503,18,2647.01,153,3),(504,16,1357.9,154,4),(505,1,2807.99,155,5),(506,6,1470.83,156,6),(507,26,131.5,157,7),(508,18,3392.02,158,8),(509,5,145.34,159,9),(510,11,537.73,160,10),(511,5,2577.72,161,11),(512,22,1337.06,162,12),(513,22,783.09,163,13),(514,13,3264.57,164,14),(515,25,773.98,165,15),(516,25,461.78,166,16),(517,22,2614.26,167,17),(518,26,2639.51,168,18),(519,1,928.88,169,19),(520,15,1968.44,170,20),(521,7,1774.06,171,21),(522,21,1639.52,172,22),(523,17,1699.79,173,23),(524,5,965.21,174,24),(525,24,1889.7,175,25),(526,5,3479.94,176,26),(527,4,1491.74,177,27),(528,26,1585.38,178,28),(529,25,1131.18,179,29),(530,18,1452.02,180,30),(531,3,1416.94,181,31),(532,19,889.61,182,32),(533,4,864.17,183,33),(534,9,1714.4,184,34),(535,12,32.5,185,35),(536,8,2396.81,186,36),(537,21,2839.91,187,37),(538,24,184.06,188,38),(539,25,160.95,189,39),(540,13,2599.09,190,40),(541,24,1353.32,191,41),(542,9,2653.96,192,42),(543,15,81.27,193,43),(544,2,2506.98,194,44),(545,11,2100.06,195,45),(546,21,3041.03,196,46),(547,24,3363.64,197,47),(548,27,1418.13,198,48),(549,17,1719.51,199,49),(550,4,2501.73,200,50),(551,22,1342.4,201,51),(552,24,1896.27,202,52),(553,1,1438.14,203,53),(554,25,47.28,204,54),(555,17,2603.45,205,55),(556,3,2027.74,206,56),(557,3,1963.76,207,57),(558,26,919.93,208,58),(559,11,2625.19,209,59),(560,25,1551.09,210,60),(561,19,381.96,211,61),(562,17,588.22,212,62),(563,18,2543.91,213,63),(564,4,1289.07,214,64),(565,26,2284.35,215,65),(566,16,408.27,216,66),(567,23,1380.58,217,67),(568,15,639.96,218,68),(569,26,2098.16,219,69),(570,27,3102.93,220,70),(571,8,3172.05,221,71),(572,3,974.19,222,72),(573,15,1634.12,223,73),(574,19,1048.29,224,74),(575,20,2922.73,225,75),(576,7,910.14,226,76),(577,13,2483.77,227,77),(578,21,1625,228,78),(579,1,697.75,229,79),(580,22,2660.12,230,80),(581,15,433.06,231,81),(582,11,3116.28,232,82),(583,20,753.16,233,83),(584,24,2905.15,234,84),(585,2,3183.97,235,85),(586,24,2577.94,236,86),(587,1,1281.95,237,87),(588,26,3167.92,238,88),(589,9,3326.92,239,89),(590,9,3372.23,240,90),(591,12,609.33,241,91),(592,22,2215.22,242,92),(593,20,278.88,243,93),(594,20,2040.61,244,94),(595,18,996.27,245,95),(596,1,2734.65,246,96),(597,21,1368.66,247,97),(598,10,646.97,248,98),(599,2,109.25,249,99),(600,10,2378.63,250,100);
/*!40000 ALTER TABLE `itemventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logauditoria`
--

DROP TABLE IF EXISTS `logauditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logauditoria` (
  `idLog` int NOT NULL AUTO_INCREMENT,
  `tabla` varchar(20) NOT NULL,
  `accion` varchar(40) NOT NULL,
  `mensaje` varchar(60) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`idLog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logauditoria`
--

LOCK TABLES `logauditoria` WRITE;
/*!40000 ALTER TABLE `logauditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `logauditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `idDireccion` int NOT NULL,
  PRIMARY KEY (`idProveedor`),
  KEY `fk_proveedor_direccion` (`idDireccion`),
  CONSTRAINT `fk_proveedor_direccion` FOREIGN KEY (`idDireccion`) REFERENCES `direcciones` (`idDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Schowalter LLC','9585737400',139),(2,'Spinka-Gerhold','6098147221',140),(3,'Barrows-Grant','8867042347',141),(4,'Moen-Ferry','1509312984',142),(5,'Conroy Inc','4116406485',143),(6,'Bins-Sporer','9091945710',144),(7,'Carter Inc','1512153653',145),(8,'Towne-Halvorson','2554422532',146),(9,'Ruecker-Murphy','4174112492',147),(10,'Jakubowski-Mayert','3628779205',148),(11,'Lebsack-Dickens','3753355291',149),(12,'Hills-Gusikowski','3723777734',150),(13,'Kunde-Buckridge','4057646697',151);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `idProvincia` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`idProvincia`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Buenos Aires'),(2,'Córdoba'),(3,'Mendoza'),(4,'Tucumán'),(5,'San Juan'),(6,'San Luis'),(7,'La Pampa'),(8,'Misiones'),(9,'Entre Rios'),(10,'Santa Fé'),(11,'Río Negro'),(12,'Neuquén'),(13,'Tierra del Fuego'),(14,'Santiago del Estero'),(15,'Jujuy'),(16,'Salta'),(17,'Catamarca'),(18,'Corrientes'),(19,'La Rioja'),(20,'Formosa'),(21,'Chaco'),(22,'Chubut'),(23,'Santa Cruz');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sueldos`
--

DROP TABLE IF EXISTS `sueldos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sueldos` (
  `idSueldo` int NOT NULL AUTO_INCREMENT,
  `montoNeto` float NOT NULL,
  `montoBruto` float NOT NULL,
  PRIMARY KEY (`idSueldo`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sueldos`
--

LOCK TABLES `sueldos` WRITE;
/*!40000 ALTER TABLE `sueldos` DISABLE KEYS */;
INSERT INTO `sueldos` VALUES (1,105364,210728),(2,99917.2,199834),(3,48867,97734.1),(4,118586,237171),(5,81867,163734),(6,134037,268074),(7,104839,209677),(8,80235.2,160470),(9,105548,211096),(10,91380.2,182760),(11,135305,270611),(12,117818,235637),(13,136367,272734),(14,48213.6,96427.2),(15,100552,201104),(16,52619.1,105238),(17,63082.1,126164),(18,42902.7,85805.5),(19,78530.4,157061),(20,129031,258061),(21,62425.4,124851),(22,129073,258146),(23,111078,222156),(24,86994.8,173990),(25,126884,253767),(26,119063,238126),(27,82006.2,164012),(28,75474.1,150948),(29,94337.3,188675),(30,116613,233227),(31,54026.2,108052),(32,68747.9,137496),(33,44272.9,88545.9),(34,69140.8,138282),(35,111931,223862),(36,95376.9,190754),(37,56670.5,113341),(38,105254,210509),(39,91479.1,182958),(40,96897.2,193794),(41,53498.3,106997);
/*!40000 ALTER TABLE `sueldos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `totalventas`
--

DROP TABLE IF EXISTS `totalventas`;
/*!50001 DROP VIEW IF EXISTS `totalventas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalventas` AS SELECT 
 1 AS `Monto total`,
 1 AS `Año`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idVenta` int NOT NULL AUTO_INCREMENT,
  `precioTotal` float DEFAULT NULL,
  `fecha` date NOT NULL,
  `idCliente` int NOT NULL,
  `idAlmacen` int NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `fk_venta_cliente` (`idCliente`),
  KEY `fk_venta_almacen` (`idAlmacen`),
  CONSTRAINT `fk_venta_almacen` FOREIGN KEY (`idAlmacen`) REFERENCES `almacenes` (`idAlmacen`),
  CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,NULL,'2020-05-05',1,1),(2,NULL,'2021-03-10',2,2),(3,NULL,'2022-04-27',3,3),(4,NULL,'2020-12-05',4,4),(5,NULL,'2022-07-09',5,5),(6,NULL,'2022-07-12',6,6),(7,NULL,'2020-06-08',7,7),(8,NULL,'2020-05-22',8,1),(9,NULL,'2022-04-18',9,2),(10,NULL,'2021-04-21',10,3),(11,NULL,'2020-03-11',11,4),(12,NULL,'2020-10-28',12,5),(13,NULL,'2022-09-06',13,6),(14,NULL,'2020-11-24',14,7),(15,NULL,'2021-06-11',15,1),(16,NULL,'2022-01-08',16,2),(17,NULL,'2020-02-11',17,3),(18,NULL,'2022-09-02',18,4),(19,NULL,'2021-10-14',19,5),(20,NULL,'2020-07-04',20,6),(21,NULL,'2020-09-23',21,7),(22,NULL,'2020-05-08',22,1),(23,NULL,'2021-10-21',23,2),(24,NULL,'2021-09-01',24,3),(25,NULL,'2020-02-20',25,4),(26,NULL,'2022-07-25',26,5),(27,NULL,'2021-12-03',27,6),(28,NULL,'2020-11-15',28,7),(29,NULL,'2021-05-06',29,1),(30,NULL,'2022-07-28',30,2),(31,NULL,'2020-12-07',31,3),(32,NULL,'2021-06-24',32,4),(33,NULL,'2022-06-21',33,5),(34,NULL,'2022-05-05',34,6),(35,NULL,'2020-12-17',35,7),(36,NULL,'2021-03-01',36,1),(37,NULL,'2020-11-07',37,2),(38,NULL,'2022-05-17',38,3),(39,NULL,'2020-11-13',39,4),(40,NULL,'2021-09-30',40,5),(41,NULL,'2021-03-07',41,6),(42,NULL,'2021-07-24',1,7),(43,NULL,'2021-03-15',2,1),(44,NULL,'2020-06-07',3,2),(45,NULL,'2020-03-10',4,3),(46,NULL,'2020-09-11',5,4),(47,NULL,'2022-08-10',6,5),(48,NULL,'2020-05-23',7,6),(49,NULL,'2021-12-11',8,7),(50,NULL,'2020-07-30',9,1),(51,NULL,'2021-07-15',10,2),(52,NULL,'2022-09-17',11,3),(53,NULL,'2021-06-09',12,4),(54,NULL,'2022-02-15',13,5),(55,NULL,'2020-03-09',14,6),(56,NULL,'2020-11-24',15,7),(57,NULL,'2021-04-19',16,1),(58,NULL,'2021-12-01',17,2),(59,NULL,'2022-03-31',18,3),(60,NULL,'2020-03-29',19,4),(61,NULL,'2020-09-01',20,5),(62,NULL,'2022-06-03',21,6),(63,NULL,'2022-04-24',22,7),(64,NULL,'2020-06-26',23,1),(65,NULL,'2021-02-12',24,2),(66,NULL,'2020-12-17',25,3),(67,NULL,'2020-06-27',26,4),(68,NULL,'2020-02-01',27,5),(69,NULL,'2020-05-27',28,6),(70,NULL,'2021-02-23',29,7),(71,NULL,'2021-08-02',30,1),(72,NULL,'2022-07-12',31,2),(73,NULL,'2020-01-26',32,3),(74,NULL,'2021-01-30',33,4),(75,NULL,'2021-04-25',34,5),(76,NULL,'2021-10-17',35,6),(77,NULL,'2021-03-24',36,7),(78,NULL,'2020-12-25',37,1),(79,NULL,'2020-04-08',38,2),(80,NULL,'2020-11-13',39,3),(81,NULL,'2022-03-16',40,4),(82,NULL,'2022-04-30',41,5),(83,NULL,'2021-09-19',1,6),(84,NULL,'2021-02-01',2,7),(85,NULL,'2020-06-28',3,1),(86,NULL,'2020-05-29',4,2),(87,NULL,'2022-02-02',5,3),(88,NULL,'2022-08-05',6,4),(89,NULL,'2020-10-28',7,5),(90,NULL,'2020-12-11',8,6),(91,NULL,'2020-08-03',9,7),(92,NULL,'2020-11-29',10,1),(93,NULL,'2022-03-08',11,2),(94,NULL,'2021-05-19',12,3),(95,NULL,'2022-06-12',13,4),(96,NULL,'2021-08-20',14,5),(97,NULL,'2020-10-04',15,6),(98,NULL,'2021-06-16',16,7),(99,NULL,'2021-10-15',17,1),(100,NULL,'2021-12-16',18,2),(101,NULL,'2022-04-18',19,3),(102,NULL,'2022-01-24',20,4),(103,NULL,'2020-02-07',21,5),(104,NULL,'2022-03-11',22,6),(105,NULL,'2020-01-01',23,7),(106,NULL,'2022-03-28',24,1),(107,NULL,'2020-09-21',25,2),(108,NULL,'2020-03-15',26,3),(109,NULL,'2022-02-15',27,4),(110,NULL,'2020-12-25',28,5),(111,NULL,'2020-05-12',29,6),(112,NULL,'2021-11-05',30,7),(113,NULL,'2021-05-22',31,1),(114,NULL,'2022-04-24',32,2),(115,NULL,'2022-05-02',33,3),(116,NULL,'2020-03-03',34,4),(117,NULL,'2020-06-03',35,5),(118,NULL,'2020-01-05',36,6),(119,NULL,'2022-05-14',37,7),(120,NULL,'2022-02-25',38,1),(121,NULL,'2020-02-18',39,2),(122,NULL,'2020-02-03',40,3),(123,NULL,'2022-07-07',41,4),(124,NULL,'2022-07-25',1,5),(125,NULL,'2020-07-27',2,6),(126,NULL,'2020-10-16',3,7),(127,NULL,'2020-09-19',4,1),(128,NULL,'2020-11-06',5,2),(129,NULL,'2021-09-25',6,3),(130,NULL,'2021-10-24',7,4),(131,NULL,'2021-02-01',8,5),(132,NULL,'2021-11-02',9,6),(133,NULL,'2021-03-11',10,7),(134,NULL,'2021-05-03',11,1),(135,NULL,'2020-12-11',12,2),(136,NULL,'2021-10-18',13,3),(137,NULL,'2022-04-28',14,4),(138,NULL,'2022-01-22',15,5),(139,NULL,'2020-04-27',16,6),(140,NULL,'2020-09-24',17,7),(141,NULL,'2022-01-18',18,1),(142,NULL,'2021-12-29',19,2),(143,NULL,'2020-12-01',20,3),(144,NULL,'2021-05-21',21,4),(145,NULL,'2021-11-27',22,5),(146,NULL,'2020-01-11',23,6),(147,NULL,'2021-02-27',24,7),(148,NULL,'2021-10-11',25,1),(149,NULL,'2021-02-09',26,2),(150,NULL,'2022-01-03',27,3),(151,NULL,'2020-01-04',28,4),(152,NULL,'2022-01-03',29,5),(153,NULL,'2022-09-02',30,6),(154,NULL,'2022-07-08',31,7),(155,NULL,'2022-07-10',32,1),(156,NULL,'2020-01-01',33,2),(157,NULL,'2020-02-26',34,3),(158,NULL,'2021-06-27',35,4),(159,NULL,'2021-12-07',36,5),(160,NULL,'2022-07-11',37,6),(161,NULL,'2020-05-16',38,7),(162,NULL,'2022-07-03',39,1),(163,NULL,'2021-06-02',40,2),(164,NULL,'2020-08-14',41,3),(165,NULL,'2021-08-22',1,4),(166,NULL,'2020-09-22',2,5),(167,NULL,'2020-11-24',3,6),(168,NULL,'2020-06-22',4,7),(169,NULL,'2020-07-28',5,1),(170,NULL,'2022-09-13',6,2),(171,NULL,'2022-02-03',7,3),(172,NULL,'2022-07-13',8,4),(173,NULL,'2021-12-10',9,5),(174,NULL,'2022-05-20',10,6),(175,NULL,'2020-08-13',11,7),(176,NULL,'2021-08-01',12,1),(177,NULL,'2020-01-11',13,2),(178,NULL,'2021-04-09',14,3),(179,NULL,'2020-09-06',15,4),(180,NULL,'2020-03-27',16,5),(181,NULL,'2020-05-14',17,6),(182,NULL,'2021-11-29',18,7),(183,NULL,'2021-01-30',19,1),(184,NULL,'2022-08-21',20,2),(185,NULL,'2020-08-11',21,3),(186,NULL,'2022-04-28',22,4),(187,NULL,'2022-04-27',23,5),(188,NULL,'2022-02-06',24,6),(189,NULL,'2022-09-16',25,7),(190,NULL,'2021-08-05',26,1),(191,NULL,'2021-12-05',27,2),(192,NULL,'2020-10-12',28,3),(193,NULL,'2020-02-03',29,4),(194,NULL,'2021-08-24',30,5),(195,NULL,'2021-10-31',31,6),(196,NULL,'2022-05-09',32,7),(197,NULL,'2020-03-13',33,1),(198,NULL,'2021-11-21',34,2),(199,NULL,'2021-12-09',35,3),(200,NULL,'2022-06-26',36,4),(201,NULL,'2021-06-03',37,5),(202,NULL,'2020-07-05',38,6),(203,NULL,'2022-05-27',39,7),(204,NULL,'2020-09-15',40,1),(205,NULL,'2020-06-04',41,2),(206,NULL,'2021-06-13',1,3),(207,NULL,'2020-09-29',2,4),(208,NULL,'2021-08-04',3,5),(209,NULL,'2022-03-03',4,6),(210,NULL,'2021-08-20',5,7),(211,NULL,'2021-05-18',6,1),(212,NULL,'2022-05-28',7,2),(213,NULL,'2020-06-03',8,3),(214,NULL,'2021-06-04',9,4),(215,NULL,'2021-11-17',10,5),(216,NULL,'2022-02-02',11,6),(217,NULL,'2022-08-25',12,7),(218,NULL,'2020-09-01',13,1),(219,NULL,'2022-07-13',14,2),(220,NULL,'2021-04-29',15,3),(221,NULL,'2020-02-02',16,4),(222,NULL,'2021-05-14',17,5),(223,NULL,'2022-06-03',18,6),(224,NULL,'2022-07-23',19,7),(225,NULL,'2020-01-20',20,1),(226,NULL,'2020-02-10',21,2),(227,NULL,'2021-07-01',22,3),(228,NULL,'2020-08-01',23,4),(229,NULL,'2021-10-30',24,5),(230,NULL,'2020-03-13',25,6),(231,NULL,'2021-12-22',26,7),(232,NULL,'2022-06-09',27,1),(233,NULL,'2021-04-11',28,2),(234,NULL,'2021-07-22',29,3),(235,NULL,'2021-07-15',30,4),(236,NULL,'2020-08-02',31,5),(237,NULL,'2021-10-11',32,6),(238,NULL,'2021-05-26',33,7),(239,NULL,'2021-11-06',34,1),(240,NULL,'2020-10-16',35,2),(241,NULL,'2021-01-06',36,3),(242,NULL,'2020-03-26',37,4),(243,NULL,'2021-04-16',38,5),(244,NULL,'2021-01-30',39,6),(245,NULL,'2021-01-11',40,7),(246,NULL,'2021-12-04',41,1),(247,NULL,'2022-09-24',1,2),(248,NULL,'2020-11-11',2,3),(249,NULL,'2021-04-13',3,4),(250,NULL,'2021-08-18',4,5),(251,NULL,'2020-01-15',5,6),(252,NULL,'2021-12-27',6,7),(253,NULL,'2021-06-17',7,1),(254,NULL,'2020-02-19',8,2),(255,NULL,'2020-09-25',9,3),(256,NULL,'2021-07-14',10,4),(257,NULL,'2020-06-02',11,5),(258,NULL,'2021-01-05',12,6),(259,NULL,'2020-02-10',13,7),(260,NULL,'2022-01-07',14,1),(261,NULL,'2022-08-16',15,2),(262,NULL,'2021-12-29',16,3),(263,NULL,'2022-04-23',17,4),(264,NULL,'2022-09-19',18,5),(265,NULL,'2020-08-15',19,6),(266,NULL,'2020-07-01',20,7),(267,NULL,'2020-12-27',21,1),(268,NULL,'2020-01-11',22,2),(269,NULL,'2020-02-19',23,3),(270,NULL,'2021-12-16',24,4),(271,NULL,'2020-11-16',25,5),(272,NULL,'2022-06-26',26,6),(273,NULL,'2021-11-01',27,7),(274,NULL,'2022-09-15',28,1),(275,NULL,'2020-12-15',29,2),(276,NULL,'2022-07-02',30,3),(277,NULL,'2020-07-23',31,4),(278,NULL,'2020-09-11',32,5),(279,NULL,'2020-02-08',33,6),(280,NULL,'2021-08-09',34,7),(281,NULL,'2021-04-26',35,1),(282,NULL,'2022-01-14',36,2),(283,NULL,'2021-12-03',37,3),(284,NULL,'2020-08-10',38,4),(285,NULL,'2020-01-28',39,5),(286,NULL,'2020-01-16',40,6),(287,NULL,'2021-10-17',41,7),(288,NULL,'2022-02-22',1,1),(289,NULL,'2022-07-21',2,2),(290,NULL,'2021-08-22',3,3),(291,NULL,'2021-11-06',4,4),(292,NULL,'2021-03-07',5,5),(293,NULL,'2021-01-28',6,6),(294,NULL,'2021-11-12',7,7),(295,NULL,'2021-05-30',8,1),(296,NULL,'2020-04-03',9,2),(297,NULL,'2022-01-31',10,3),(298,NULL,'2020-11-14',11,4),(299,NULL,'2021-10-13',12,5),(300,NULL,'2021-03-04',13,6),(301,NULL,'2022-03-10',14,7),(302,NULL,'2020-07-29',15,1),(303,NULL,'2021-08-28',16,2),(304,NULL,'2022-07-13',17,3),(305,NULL,'2021-06-04',18,4),(306,NULL,'2022-06-03',19,5),(307,NULL,'2020-09-23',20,6),(308,NULL,'2022-07-15',21,7),(309,NULL,'2022-06-29',22,1),(310,NULL,'2020-06-17',23,2),(311,NULL,'2020-11-25',24,3),(312,NULL,'2021-12-18',25,4),(313,NULL,'2021-09-05',26,5),(314,NULL,'2021-05-11',27,6),(315,NULL,'2021-09-28',28,7),(316,NULL,'2020-05-12',29,1),(317,NULL,'2020-12-28',30,2),(318,NULL,'2020-09-13',31,3),(319,NULL,'2021-08-27',32,4),(320,NULL,'2022-03-08',33,5),(321,NULL,'2022-03-04',34,6),(322,NULL,'2022-04-04',35,7),(323,NULL,'2020-03-28',36,1),(324,NULL,'2022-06-02',37,2),(325,NULL,'2021-06-16',38,3),(326,NULL,'2020-02-15',39,4),(327,NULL,'2022-09-24',40,5),(328,NULL,'2020-09-24',41,6),(329,NULL,'2021-08-08',1,7),(330,NULL,'2020-02-17',2,1),(331,NULL,'2021-01-18',3,2),(332,NULL,'2021-12-29',4,3),(333,NULL,'2021-10-06',5,4),(334,NULL,'2020-02-25',6,5),(335,NULL,'2022-06-01',7,6),(336,NULL,'2020-03-04',8,7),(337,NULL,'2020-03-07',9,1),(338,NULL,'2021-08-22',10,2),(339,NULL,'2020-08-17',11,3),(340,NULL,'2020-08-05',12,4),(341,NULL,'2021-01-25',13,5),(342,NULL,'2021-10-12',14,6),(343,NULL,'2020-06-06',15,7),(344,NULL,'2022-04-08',16,1),(345,NULL,'2022-03-05',17,2),(346,NULL,'2020-06-06',18,3),(347,NULL,'2021-11-02',19,4),(348,NULL,'2020-12-31',20,5),(349,NULL,'2020-06-28',21,6),(350,NULL,'2020-06-22',22,7);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_ventas_fecha1` BEFORE INSERT ON `ventas` FOR EACH ROW IF NEW.fecha > CURRENT_DATE() THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La fecha que se ingresa no puede ser posterior a la del día de hoy.';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'almacenes'
--

--
-- Dumping routines for database 'almacenes'
--
/*!50003 DROP FUNCTION IF EXISTS `almacenCompras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `almacenCompras`(almacen INT) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE numCompras INT;
    SET numCompras = (
    SELECT COUNT(C.idCompra)
    FROM Almacenes A
    INNER JOIN Compras C
    ON A.idAlmacen = C.idAlmacen
    WHERE A.idAlmacen = almacen);
    RETURN numCompras;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `clienteGastoAlmacen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `clienteGastoAlmacen`(cliente INT, almacen INT) RETURNS float
    READS SQL DATA
BEGIN
	DECLARE montoTotal FLOAT;
    SET montoTotal = (
    SELECT SUM(V.precioTotal)
    FROM Almacenes A
    INNER JOIN Ventas V
    ON A.idAlmacen = V.idAlmacen
    INNER JOIN Clientes C
    ON V.idCliente = C.idCliente
    WHERE A.idAlmacen = almacen AND C.idCliente = cliente);
    RETURN montoTotal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_articulo_fechas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_articulo_fechas`(IN articulo INT, fechaInicio DATE, fechaFin DATE)
BEGIN
	DECLARE existe BOOL;
    DECLARE idArt INT;
	SET existe = TRUE;
    SET idArt = (
    SELECT idArticulo
    FROM Articulos
    WHERE idArticulo = articulo);
    IF ISNULL(idArt) THEN
		SET existe = FALSE;
	END IF;
    IF existe THEN
        SELECT COUNT(IV.idArticulo) AS 'Cantidad de ventas'
		FROM ItemVentas IV INNER JOIN Ventas V
		ON IV.idVenta = V.idVenta
		WHERE (V.fecha BETWEEN fechaInicio AND fechaFin) AND (IV.idArticulo = articulo);
	ELSE
		SELECT 'No existe ese idArticulo' AS Resultado;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_clientes_monto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_clientes_monto`(IN monto FLOAT)
BEGIN 
    SELECT CONCAT(C.nombre,' ', C.apellido) AS 'Cliente'
    FROM Clientes C INNER JOIN Ventas V
    ON C.idCliente = V.idCliente
    WHERE V.precioTotal > monto
    GROUP BY C.idCliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cliente_compras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cliente_compras`(IN id_cliente INT)
BEGIN
	DECLARE existe BOOL;
    DECLARE cliente INT;
    SET existe = TRUE;
    SET cliente = (
    SELECT idCliente
    FROM Clientes
    WHERE idCliente = id_cliente);
    IF ISNULL(cliente) THEN
		SET existe = FALSE;
	END IF;
    IF existe THEN
		SELECT A.nombre AS 'Almacen', TRUNCATE((SUM(V.precioTotal)),2) AS 'Monto total'
		FROM Clientes C INNER JOIN Ventas V
		ON C.idCliente = V.idCliente
		INNER JOIN Almacenes A
		ON V.idAlmacen = A.idAlmacen
		WHERE C.idCliente = id_cliente
		GROUP BY A.idAlmacen;
	ELSE 
		SELECT 'No existe ese idCliente' AS Resultado;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cantidadarticulos`
--

/*!50001 DROP VIEW IF EXISTS `cantidadarticulos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cantidadarticulos` AS select `a`.`idArticulo` AS `idArticulo`,sum(`iv`.`cantidad`) AS `Cantidad vendidos`,sum(`ic`.`cantidad`) AS `Cantidad comprados` from (((`ventas` `v` join `itemventas` `iv` on((`v`.`idVenta` = `iv`.`idVenta`))) join `articulos` `a` on((`iv`.`idArticulo` = `a`.`idArticulo`))) join `itemcompras` `ic` on((`a`.`idArticulo` = `ic`.`idArticulo`))) group by `a`.`idArticulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comprasproveedor`
--

/*!50001 DROP VIEW IF EXISTS `comprasproveedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comprasproveedor` AS select truncate(sum(`c`.`montoTotal`),2) AS `Monto total`,`p`.`nombre` AS `Proveedor`,`a`.`nombre` AS `Almacen` from ((`proveedores` `p` join `compras` `c` on((`c`.`idProveedor` = `p`.`idProveedor`))) join `almacenes` `a` on((`c`.`idAlmacen` = `a`.`idAlmacen`))) group by `p`.`idProveedor`,`a`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empleadosalmacen`
--

/*!50001 DROP VIEW IF EXISTS `empleadosalmacen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleadosalmacen` AS select `a`.`nombre` AS `Almacen`,`e`.`nombreApellido` AS `Empleado`,`s`.`montoNeto` AS `Sueldo (neto)` from ((`almacenes` `a` join `empleados` `e` on((`a`.`idAlmacen` = `e`.`idAlmacen`))) join `sueldos` `s` on((`e`.`idSueldo` = `s`.`idSueldo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gananciaalmacenes`
--

/*!50001 DROP VIEW IF EXISTS `gananciaalmacenes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gananciaalmacenes` AS select `a`.`nombre` AS `Almacen`,truncate(sum(`v`.`precioTotal`),2) AS `Ganancia` from (`almacenes` `a` join `ventas` `v` on((`a`.`idAlmacen` = `v`.`idAlmacen`))) group by `a`.`idAlmacen` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gastosclientes`
--

/*!50001 DROP VIEW IF EXISTS `gastosclientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gastosclientes` AS select truncate(sum(`v`.`precioTotal`),2) AS `Gasto total`,concat(`c`.`nombre`,' ',`c`.`apellido`) AS `Cliente` from (`clientes` `c` join `ventas` `v` on((`c`.`idCliente` = `v`.`idCliente`))) group by `c`.`idCliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `horariossemanales`
--

/*!50001 DROP VIEW IF EXISTS `horariossemanales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `horariossemanales` AS select `a`.`nombre` AS `Almacen`,' ' AS `Name_exp_2`,`h`.`diaSemana` AS `Dia`,' ' AS `Name_exp_4`,`h`.`horarioApertura` AS `Apertura`,' ' AS `Name_exp_6`,`h`.`horarioCierre` AS `Cierre` from ((`almacenes` `a` join `horariosalmacen` `ha` on((`a`.`idAlmacen` = `ha`.`idAlmacen`))) join `horarios` `h` on((`ha`.`idHorario` = `h`.`idHorario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalventas`
--

/*!50001 DROP VIEW IF EXISTS `totalventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalventas` AS select truncate(sum(`v`.`precioTotal`),2) AS `Monto total`,year(`v`.`fecha`) AS `Año` from (`ventas` `v` join `itemventas` `iv` on((`v`.`idVenta` = `iv`.`idVenta`))) group by year(`v`.`fecha`) order by year(`v`.`fecha`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-01 20:04:33
