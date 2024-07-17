-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: raffproject
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `basin`
--

DROP TABLE IF EXISTS `basin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basin`
--

LOCK TABLES `basin` WRITE;
/*!40000 ALTER TABLE `basin` DISABLE KEYS */;
INSERT INTO `basin` VALUES (1,'ACERO INOX EN BASE','90'),(2,'ACERO INOX EN LAMINA','80'),(3,'FIERRO BASE','80'),(4,'FIERRO LAMINA','70'),(5,'LATON BASE','80'),(6,'COBRE BASE','80'),(7,'ACERO INOX BRIDA','120');
/*!40000 ALTER TABLE `basin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borne`
--

DROP TABLE IF EXISTS `borne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borne`
--

LOCK TABLES `borne` WRITE;
/*!40000 ALTER TABLE `borne` DISABLE KEYS */;
INSERT INTO `borne` VALUES (1,'GALVANIZADO','0'),(2,'ACERO INOXIDABLE','90'),(3,'TERMINAL ESPADA','50'),(4,'TERMINAL MACHO','50'),(5,'TERMINAL HEMBRA','50'),(6,'TERMINAL OJILLO','50'),(7,'TERMINAL FABRICADA','100');
/*!40000 ALTER TABLE `borne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borne_resolder`
--

DROP TABLE IF EXISTS `borne_resolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borne_resolder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borne_resolder`
--

LOCK TABLES `borne_resolder` WRITE;
/*!40000 ALTER TABLE `borne_resolder` DISABLE KEYS */;
INSERT INTO `borne_resolder` VALUES (1,'GALVANIZADO','70'),(2,'ACERO INOXIDABLE','80'),(3,'TERMINAL FABRICADA','50'),(4,'TERMINAL OJILLO','25'),(5,'TERMINAL HEMBRA','25'),(6,'TERMINAL MACHO','25'),(7,'TERMINAL ESPADA','25');
/*!40000 ALTER TABLE `borne_resolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bridge`
--

DROP TABLE IF EXISTS `bridge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bridge` (
  `price` int(11) NOT NULL,
  PRIMARY KEY (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bridge`
--

LOCK TABLES `bridge` WRITE;
/*!40000 ALTER TABLE `bridge` DISABLE KEYS */;
/*!40000 ALTER TABLE `bridge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cable_weld`
--

DROP TABLE IF EXISTS `cable_weld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cable_weld` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cable_weld`
--

LOCK TABLES `cable_weld` WRITE;
/*!40000 ALTER TABLE `cable_weld` DISABLE KEYS */;
INSERT INTO `cable_weld` VALUES (1,'200º CAL 10','58.42'),(2,'200º CAL 12','39.74'),(3,'200º CAL 14','25.50'),(4,'200º CAL 16','16.46'),(5,'300º CAL 10','111.68'),(6,'300º CAL 12','74.28'),(7,'300º CAL 14','46.90'),(8,'300º CAL 16','33.09');
/*!40000 ALTER TABLE `cable_weld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fin`
--

DROP TABLE IF EXISTS `fin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fin` (
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fin`
--

LOCK TABLES `fin` WRITE;
/*!40000 ALTER TABLE `fin` DISABLE KEYS */;
INSERT INTO `fin` VALUES (70);
/*!40000 ALTER TABLE `fin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flanges`
--

DROP TABLE IF EXISTS `flanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flanges` (
  `price` int(11) NOT NULL,
  PRIMARY KEY (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flanges`
--

LOCK TABLES `flanges` WRITE;
/*!40000 ALTER TABLE `flanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `flanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galock_seal`
--

DROP TABLE IF EXISTS `galock_seal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galock_seal` (
  `price` int(11) NOT NULL,
  PRIMARY KEY (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galock_seal`
--

LOCK TABLES `galock_seal` WRITE;
/*!40000 ALTER TABLE `galock_seal` DISABLE KEYS */;
/*!40000 ALTER TABLE `galock_seal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garlock_seal`
--

DROP TABLE IF EXISTS `garlock_seal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garlock_seal` (
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garlock_seal`
--

LOCK TABLES `garlock_seal` WRITE;
/*!40000 ALTER TABLE `garlock_seal` DISABLE KEYS */;
/*!40000 ALTER TABLE `garlock_seal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1,'SACAR HUMEDAD,PINTAR,CARDEAR','100'),(2,'SACAR HUMEDAD','100'),(3,'CARDEAR','100'),(4,'PINTAR','100');
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_plug`
--

DROP TABLE IF EXISTS `male_plug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `male_plug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_plug`
--

LOCK TABLES `male_plug` WRITE;
/*!40000 ALTER TABLE `male_plug` DISABLE KEYS */;
INSERT INTO `male_plug` VALUES (1,'1/8','90'),(2,'1/4','100'),(3,'3/8','110'),(4,'1/2','120'),(5,'3/4','130'),(6,'1','150'),(7,'1 1/4','200'),(8,'1 1/2','300'),(9,'2','400'),(10,'2 1/2','500'),(11,'3','600'),(12,'4','900');
/*!40000 ALTER TABLE `male_plug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_minimum`
--

DROP TABLE IF EXISTS `measure_minimum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `measure_minimum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_minimum`
--

LOCK TABLES `measure_minimum` WRITE;
/*!40000 ALTER TABLE `measure_minimum` DISABLE KEYS */;
INSERT INTO `measure_minimum` VALUES (1,'50');
/*!40000 ALTER TABLE `measure_minimum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_tubular_catalog`
--

DROP TABLE IF EXISTS `measure_tubular_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `measure_tubular_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_tubular_catalog`
--

LOCK TABLES `measure_tubular_catalog` WRITE;
/*!40000 ALTER TABLE `measure_tubular_catalog` DISABLE KEYS */;
INSERT INTO `measure_tubular_catalog` VALUES (1,'5/16'),(2,'7/16 TP 304'),(3,'7/16 TP 316');
/*!40000 ALTER TABLE `measure_tubular_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_measure_tubular`
--

DROP TABLE IF EXISTS `price_measure_tubular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_measure_tubular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_measure_tubular`
--

LOCK TABLES `price_measure_tubular` WRITE;
/*!40000 ALTER TABLE `price_measure_tubular` DISABLE KEYS */;
INSERT INTO `price_measure_tubular` VALUES (1,1,6),(2,2,7),(3,3,8);
/*!40000 ALTER TABLE `price_measure_tubular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_min_measure_tubular`
--

DROP TABLE IF EXISTS `price_min_measure_tubular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_min_measure_tubular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_min_measure_tubular`
--

LOCK TABLES `price_min_measure_tubular` WRITE;
/*!40000 ALTER TABLE `price_min_measure_tubular` DISABLE KEYS */;
INSERT INTO `price_min_measure_tubular` VALUES (1,'1',300),(2,'2',350),(3,'3',400);
/*!40000 ALTER TABLE `price_min_measure_tubular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resistence_aspect`
--

DROP TABLE IF EXISTS `resistence_aspect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resistence_aspect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resistence_aspect`
--

LOCK TABLES `resistence_aspect` WRITE;
/*!40000 ALTER TABLE `resistence_aspect` DISABLE KEYS */;
INSERT INTO `resistence_aspect` VALUES (1,'RECTA','0'),(2,'CIRCUNFERENCIAL','0'),(3,'1 DOBLEZ','50'),(4,'2 DOBLECES','100'),(5,'3 DOBLECES','150'),(6,'4 DOBLECES','200'),(7,'5 DOBLECES','200'),(8,'6 DOBLECES','240'),(9,'7 DOBLECES','280'),(10,'8 DOBLECES','320'),(11,'9 DOBLECES','360'),(12,'10 DOBLECES','400'),(13,'11 DOBLECES','385'),(14,'12 DOBLECES','420'),(15,'13 DOBLECES','455'),(16,'14 DOBLECES','490'),(17,'15 DOBLECES','525'),(18,'16 DOBLECES','560'),(19,'17 DOBLECES','595'),(20,'18 DOBLECES','630'),(21,'19 DOBLECES','665'),(22,'20 DOBLECES','700'),(23,'21 DOBLECES','735'),(24,'22 DOBLECES','770'),(25,'23 DOBLECES','805'),(26,'24 DOBLECES','840'),(27,'25 DOBLECES','875'),(28,'26 DOBLECES','910'),(29,'27 DOBLECES','945'),(30,'28 DOBLECES','980'),(31,'29 DOBLECES','1015'),(32,'30 DOBLECES','1050'),(33,'31 DOBLECES','1085'),(34,'32 DOBLECES','1120'),(35,'33 DOBLECES','1155'),(36,'34 DOBLECES ','1190'),(37,'35 DOBLECES','1225'),(38,'36 DOBLECES','1260'),(39,'37 DOBLECES','1295'),(40,'38 DOBLECES','1330'),(41,'39 DOBLECES','1365'),(42,'40 DOBLECES','1400');
/*!40000 ALTER TABLE `resistence_aspect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resistence_desolder`
--

DROP TABLE IF EXISTS `resistence_desolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resistence_desolder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resistence_desolder`
--

LOCK TABLES `resistence_desolder` WRITE;
/*!40000 ALTER TABLE `resistence_desolder` DISABLE KEYS */;
INSERT INTO `resistence_desolder` VALUES (1,'Si, RES BASE','100'),(2,'SI, RES DE PLACA/LAMINA','80'),(3,'NO DESOLDAR','0');
/*!40000 ALTER TABLE `resistence_desolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screw_catalog`
--

DROP TABLE IF EXISTS `screw_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screw_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screw_catalog`
--

LOCK TABLES `screw_catalog` WRITE;
/*!40000 ALTER TABLE `screw_catalog` DISABLE KEYS */;
INSERT INTO `screw_catalog` VALUES (1,'LATON 1/2',250),(2,'LATON  5/8',260),(3,'LATON 3/4',270),(4,'FIERRO 1/2',150),(5,'FIERRO 5/8',160),(6,'FIERRO 3/4',170),(7,'ACERO INOX 1/2',330),(8,'ACERO INOX 5/8',340),(9,'ACERO INOX 3/4',350);
/*!40000 ALTER TABLE `screw_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screw_desolder`
--

DROP TABLE IF EXISTS `screw_desolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screw_desolder` (
  `price` int(11) NOT NULL,
  PRIMARY KEY (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screw_desolder`
--

LOCK TABLES `screw_desolder` WRITE;
/*!40000 ALTER TABLE `screw_desolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `screw_desolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screws_change`
--

DROP TABLE IF EXISTS `screws_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screws_change` (
  `price` int(11) NOT NULL,
  PRIMARY KEY (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screws_change`
--

LOCK TABLES `screws_change` WRITE;
/*!40000 ALTER TABLE `screws_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `screws_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seal`
--

DROP TABLE IF EXISTS `seal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seal`
--

LOCK TABLES `seal` WRITE;
/*!40000 ALTER TABLE `seal` DISABLE KEYS */;
INSERT INTO `seal` VALUES (1,'ARCILLA EN RESISTENCIA','80'),(2,'SILICON ROJO EN RESISTENCIA','50'),(3,'EPOXICO EN RESISTENCIA','100');
/*!40000 ALTER TABLE `seal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termopozo`
--

DROP TABLE IF EXISTS `termopozo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `termopozo` (
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termopozo`
--

LOCK TABLES `termopozo` WRITE;
/*!40000 ALTER TABLE `termopozo` DISABLE KEYS */;
INSERT INTO `termopozo` VALUES (2);
/*!40000 ALTER TABLE `termopozo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `welding`
--

DROP TABLE IF EXISTS `welding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `welding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `welding`
--

LOCK TABLES `welding` WRITE;
/*!40000 ALTER TABLE `welding` DISABLE KEYS */;
INSERT INTO `welding` VALUES (1,'SOLDADURA EN LAMINA/PLACA','180'),(2,'SOLDADURA EN BASE CON PLATA','280'),(3,'SOLDADURA EN BRIDA CON PLATA','300'),(4,'SOLDADURA EN BASE CON ARGON ','380');
/*!40000 ALTER TABLE `welding` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-17 15:27:49
