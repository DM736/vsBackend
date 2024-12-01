-- MySQL dump 10.13  Distrib 8.0.1-dmr, for Win64 (x86_64)
--
-- Host: 127.0.1.2    Database: virtualapp
-- ------------------------------------------------------
-- Server version	8.0.1-dmr-log

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
-- Table structure for table `transaccions`
--

DROP TABLE IF EXISTS `transaccions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaccions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `apellido` varchar(90) DEFAULT NULL,
  `cedula` varchar(100) DEFAULT NULL,
  `cesta` int(8) DEFAULT NULL,
  `metodoDpago` varchar(50) DEFAULT NULL,
  `direcc` varchar(100) DEFAULT NULL,
  `valorTotal` varchar(45) DEFAULT NULL,
  `cantidad` varchar(10) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccions`
--

LOCK TABLES `transaccions` WRITE;
/*!40000 ALTER TABLE `transaccions` DISABLE KEYS */;
INSERT INTO `transaccions` VALUES (1,'Jose Francisco','Tellez','80374738',NULL,'Tarjeta de Credito',NULL,'2379999','3','2024-10-31 04:19:29'),(2,'Juan Esteban','Sanchez Torres','97354282',NULL,'Tarjeta de credito',NULL,'3399999','1','2024-10-31 04:19:29'),(10,'Jose Francisco1','Rojas Perez','91372634',NULL,'Tarjeta de credito',NULL,'1990923','3','2024-10-31 04:29:43'),(11,'Juan','perez','10038473723',22,'Tarjeta de Credito','Calle 65 C 34 A 56  ','4299899','2','2024-12-01 03:48:34');
/*!40000 ALTER TABLE `transaccions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-01 17:26:37
