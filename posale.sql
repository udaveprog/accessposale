-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: posale
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
-- Table structure for table `buy_order`
--

DROP TABLE IF EXISTS `buy_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buy_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy_order`
--

LOCK TABLES `buy_order` WRITE;
/*!40000 ALTER TABLE `buy_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy_order_item`
--

DROP TABLE IF EXISTS `buy_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buy_order_item` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `invoice` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy_order_item`
--

LOCK TABLES `buy_order_item` WRITE;
/*!40000 ALTER TABLE `buy_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `min` double DEFAULT NULL,
  `max` double DEFAULT NULL,
  `exhibition` double DEFAULT NULL,
  `location1` varchar(45) DEFAULT NULL,
  `amout_loc1` double DEFAULT NULL,
  `available_quantity` double DEFAULT NULL,
  `low_inventory` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,'2024-07-09 14:15:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `sale_price` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `min` double DEFAULT NULL,
  `image_path` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit_measure` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'254785714444','Leche Sello Rojo','Sello Rojo',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `company` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `conta_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_note`
--

DROP TABLE IF EXISTS `sale_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_note`
--

LOCK TABLES `sale_note` WRITE;
/*!40000 ALTER TABLE `sale_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_note_item`
--

DROP TABLE IF EXISTS `sale_note_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_note_item` (
  `product_id` int(11) DEFAULT NULL,
  `sale_note_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_note_item`
--

LOCK TABLES `sale_note_item` WRITE;
/*!40000 ALTER TABLE `sale_note_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_note_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen_catalog`
--

DROP TABLE IF EXISTS `screen_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen_catalog` (
  `id` int(11) NOT NULL,
  `screen_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen_catalog`
--

LOCK TABLES `screen_catalog` WRITE;
/*!40000 ALTER TABLE `screen_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `screen_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_measure`
--

DROP TABLE IF EXISTS `unit_measure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_measure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_measure`
--

LOCK TABLES `unit_measure` WRITE;
/*!40000 ALTER TABLE `unit_measure` DISABLE KEYS */;
INSERT INTO `unit_measure` VALUES (1,'H87','Pieza','Múltiplos / Fracciones / Decimales'),(2,'EA','Elemento','Unidades de venta'),(3,'E48','Unidad de Servicio','Unidades específicas de la industria (varias)'),(4,'ACT','Actividad','Unidades de venta'),(5,'KGM','Kilogramo','Mecánica'),(6,'E51','Trabajo','Unidades específicas de la industria (varias)'),(7,'A9','Tarifa','Diversos'),(8,'MTR','Metro','Tiempo y Espacio'),(9,'AB','Paquete a granel','Diversos'),(10,'BB','Caja base','Unidades específicas de la industria (varias)'),(11,'KT','Kit','Unidades de venta'),(12,'SET','Conjunto','Unidades de venta'),(13,'LTR','Litro','Tiempo y Espacio'),(14,'XBX','Caja','Unidades de empaque'),(15,'MON','Mes','Tiempo y Espacio'),(16,'HUR','Hora','Tiempo y Espacio'),(17,'MTK','	Metro cuadrado','Tiempo y Espacio'),(18,'11','Equipos','Diversos'),(19,'MGM','Miligramo','Mecánica'),(20,'XPK','Paquete','Unidades de empaque'),(21,'XKI','	Kit (Conjunto de piezas)','Unidades de empaque'),(22,'AS','Variedad','Diversos'),(23,'GRM','Gramo','Mecánica'),(24,'PR','Par','Números enteros / Números / Ratios'),(25,'DPC','Docenas de piezas','Unidades de venta'),(26,'xun','Unidad','Unidades de empaque'),(27,'DAY','Día','Tiempo y Espacio'),(28,'XLT','Lote','Unidades de empaque'),(29,'10','Grupos','Diversos'),(30,'MLT','Mililitro','Tiempo y Espacio'),(31,'E54','Viaje','Unidades específicas de la industria (varias)');
/*!40000 ALTER TABLE `unit_measure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permissions` (
  `user_id` int(11) DEFAULT NULL,
  `screen_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'luis','udave123','luis','udave','luis@juan.com'),(3,'pepe','123','pepe','pepe','pepe@juan.com'),(4,'pepe',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-14 19:06:40
