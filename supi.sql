-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: supi
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_brand_has_parent_id_idx` (`parent_id`),
  CONSTRAINT `fk_brand_has_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chedraui_productos`
--

DROP TABLE IF EXISTS `chedraui_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chedraui_productos` (
  `id0` bigint NOT NULL,
  PRIMARY KEY (`id0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chedraui_productos`
--

LOCK TABLES `chedraui_productos` WRITE;
/*!40000 ALTER TABLE `chedraui_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `chedraui_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lacomer_productos`
--

DROP TABLE IF EXISTS `lacomer_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lacomer_productos` (
  `id0` bigint NOT NULL,
  PRIMARY KEY (`id0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lacomer_productos`
--

LOCK TABLES `lacomer_productos` WRITE;
/*!40000 ALTER TABLE `lacomer_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `lacomer_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list` (
  `id` bigint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `receipt_id` bigint DEFAULT NULL,
  `retail_id` bigint DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` timestamp(3) NULL DEFAULT NULL,
  `complete` tinyint DEFAULT NULL,
  `template_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_list_receip_idx` (`receipt_id`),
  KEY `fk_list_retail_idx` (`retail_id`),
  KEY `fk_list_retail_idx1` (`template_id`),
  CONSTRAINT `fk_list_receip` FOREIGN KEY (`receipt_id`) REFERENCES `receipt` (`id`),
  CONSTRAINT `fk_list_retail` FOREIGN KEY (`retail_id`) REFERENCES `retail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_has_products`
--

DROP TABLE IF EXISTS `list_has_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_has_products` (
  `list_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp(3) NULL DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `notes` text,
  KEY `fk_lhp_status_idx` (`status_id`),
  KEY `fk_lhp_product_idx` (`product_id`),
  KEY `fk_list_has_products_idx` (`list_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_lhp_list` FOREIGN KEY (`list_id`) REFERENCES `list` (`id`),
  CONSTRAINT `fk_lhp_product` FOREIGN KEY (`product_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `fk_lhp_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_has_products`
--

LOCK TABLES `list_has_products` WRITE;
/*!40000 ALTER TABLE `list_has_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_has_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presentation`
--

DROP TABLE IF EXISTS `presentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presentation` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `capacity` double DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `retail_id` bigint DEFAULT NULL,
  `supi_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pu_id_idx` (`unit_id`),
  KEY `fk_presentatio_retail_id_idx` (`retail_id`),
  CONSTRAINT `fk_presentatio_retail_id` FOREIGN KEY (`retail_id`) REFERENCES `retail` (`id`),
  CONSTRAINT `fk_presentation_unit_id` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presentation`
--

LOCK TABLES `presentation` WRITE;
/*!40000 ALTER TABLE `presentation` DISABLE KEYS */;
/*!40000 ALTER TABLE `presentation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_has_presentation`
--

DROP TABLE IF EXISTS `product_has_presentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_has_presentation` (
  `product_id` bigint NOT NULL,
  `presentation_id` int NOT NULL,
  KEY `fk_php_product_idx` (`product_id`) /*!80000 INVISIBLE */,
  KEY `fk_php_presentation_idx` (`presentation_id`),
  CONSTRAINT `fk_phpre_presentation` FOREIGN KEY (`presentation_id`) REFERENCES `presentation` (`id`),
  CONSTRAINT `fk_phpre_product` FOREIGN KEY (`product_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_has_presentation`
--

LOCK TABLES `product_has_presentation` WRITE;
/*!40000 ALTER TABLE `product_has_presentation` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_has_presentation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_has_properties`
--

DROP TABLE IF EXISTS `product_has_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_has_properties` (
  `id_product` bigint NOT NULL,
  `id_property` int DEFAULT NULL,
  `label` varchar(200) DEFAULT NULL,
  KEY `fk_php_property_idx` (`id_property`),
  KEY `fk_php_product_idx` (`id_product`),
  CONSTRAINT `fk_php_product` FOREIGN KEY (`id_product`) REFERENCES `producto` (`id`),
  CONSTRAINT `fk_php_property` FOREIGN KEY (`id_property`) REFERENCES `product_property` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_has_properties`
--

LOCK TABLES `product_has_properties` WRITE;
/*!40000 ALTER TABLE `product_has_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_has_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_property`
--

DROP TABLE IF EXISTS `product_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_property` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `field_type` varchar(45) DEFAULT NULL,
  `join_table` varchar(100) DEFAULT NULL,
  `join_var` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_property`
--

LOCK TABLES `product_property` WRITE;
/*!40000 ALTER TABLE `product_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `brand_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_brand_id_idx` (`brand_id`),
  CONSTRAINT `fk_product_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id` bigint NOT NULL,
  `imageid` bigint DEFAULT NULL,
  `retail_id` int DEFAULT NULL,
  `retail_receip_id` varchar(100) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail`
--

DROP TABLE IF EXISTS `retail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retail` (
  `id` bigint NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_retail_chedraui_id` FOREIGN KEY (`id`) REFERENCES `chedraui_productos` (`id0`),
  CONSTRAINT `fk_retail_lacomer_id` FOREIGN KEY (`id`) REFERENCES `lacomer_productos` (`id0`),
  CONSTRAINT `fk_retail_soriana_id` FOREIGN KEY (`id`) REFERENCES `soriana_productos` (`id0`),
  CONSTRAINT `fk_retail_walmart_id` FOREIGN KEY (`id`) REFERENCES `walmart_productos` (`id0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail`
--

LOCK TABLES `retail` WRITE;
/*!40000 ALTER TABLE `retail` DISABLE KEYS */;
/*!40000 ALTER TABLE `retail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soriana_productos`
--

DROP TABLE IF EXISTS `soriana_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soriana_productos` (
  `id0` bigint NOT NULL,
  PRIMARY KEY (`id0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soriana_productos`
--

LOCK TABLES `soriana_productos` WRITE;
/*!40000 ALTER TABLE `soriana_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `soriana_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_has_products`
--

DROP TABLE IF EXISTS `template_has_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_has_products` (
  `template_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `amount` float DEFAULT NULL,
  KEY `fk_template_id_idx` (`template_id`),
  KEY `fk_thp_product_idx` (`product_id`),
  CONSTRAINT `fk_thp_product` FOREIGN KEY (`product_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `fk_thp_template` FOREIGN KEY (`template_id`) REFERENCES `template_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_has_products`
--

LOCK TABLES `template_has_products` WRITE;
/*!40000 ALTER TABLE `template_has_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_has_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_list`
--

DROP TABLE IF EXISTS `template_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_list` (
  `id` bigint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_list`
--

LOCK TABLES `template_list` WRITE;
/*!40000 ALTER TABLE `template_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_list_shared`
--

DROP TABLE IF EXISTS `template_list_shared`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_list_shared` (
  `user_id` bigint DEFAULT NULL,
  `template_list_id` bigint DEFAULT NULL,
  KEY `fk_tsl_use_idx` (`user_id`),
  KEY `fk_tsl_template_list_idx` (`template_list_id`),
  CONSTRAINT `fk_tsl_template_list` FOREIGN KEY (`template_list_id`) REFERENCES `template_list` (`id`),
  CONSTRAINT `fk_tsl_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_list_shared`
--

LOCK TABLES `template_list_shared` WRITE;
/*!40000 ALTER TABLE `template_list_shared` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_list_shared` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` binary(1) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_friend`
--

DROP TABLE IF EXISTS `user_has_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_friend` (
  `source_user_id` bigint DEFAULT NULL,
  `target_user_id` bigint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` timestamp(3) NULL DEFAULT NULL,
  KEY `fk_uhf_source_idx` (`source_user_id`),
  KEY `fk_uhf_target_idx` (`target_user_id`),
  CONSTRAINT `fk_uhf_source` FOREIGN KEY (`source_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_uhf_target` FOREIGN KEY (`target_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_friend`
--

LOCK TABLES `user_has_friend` WRITE;
/*!40000 ALTER TABLE `user_has_friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_list`
--

DROP TABLE IF EXISTS `user_has_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_list` (
  `user_id` bigint NOT NULL,
  `list_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_uhl_list_idx` (`list_id`),
  CONSTRAINT `fk_uhl_list` FOREIGN KEY (`list_id`) REFERENCES `list` (`id`),
  CONSTRAINT `fk_uhl_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_list`
--

LOCK TABLES `user_has_list` WRITE;
/*!40000 ALTER TABLE `user_has_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_template_list`
--

DROP TABLE IF EXISTS `user_has_template_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_template_list` (
  `user_id` bigint DEFAULT NULL,
  `template_list_id` bigint DEFAULT NULL,
  KEY `fk_uhtl_user_idx` (`user_id`),
  KEY `fk_uhtl_template_idx` (`template_list_id`),
  CONSTRAINT `fk_uhtl_template` FOREIGN KEY (`template_list_id`) REFERENCES `template_list` (`id`),
  CONSTRAINT `fk_uhtl_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_template_list`
--

LOCK TABLES `user_has_template_list` WRITE;
/*!40000 ALTER TABLE `user_has_template_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_template_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walmart_productos`
--

DROP TABLE IF EXISTS `walmart_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `walmart_productos` (
  `id0` bigint NOT NULL,
  PRIMARY KEY (`id0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walmart_productos`
--

LOCK TABLES `walmart_productos` WRITE;
/*!40000 ALTER TABLE `walmart_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `walmart_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-17 15:29:39
