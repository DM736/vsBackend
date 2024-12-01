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
-- Table structure for table `cesta`
--

DROP TABLE IF EXISTS `cesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `productoid` int(8) DEFAULT NULL,
  `imgProducto` varchar(200) DEFAULT NULL,
  `nombreProd` varchar(250) DEFAULT NULL,
  `precio` int(20) DEFAULT NULL,
  `cantidad` int(3) DEFAULT NULL,
  `totalAcumulado` int(20) GENERATED ALWAYS AS ((`precio` * `cantidad`)) STORED,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cesta`
--

LOCK TABLES `cesta` WRITE;
/*!40000 ALTER TABLE `cesta` DISABLE KEYS */;
INSERT INTO `cesta` (`id`, `user`, `productoid`, `imgProducto`, `nombreProd`, `precio`, `cantidad`, `createdAt`, `updatedAt`) VALUES (51,22,1,'http://localhost:3000/uploads/Azus Vivo16.png','Portatil Asus Vivo16” pulgadas, Intel Core i5, 16GB RAM, 512GB Disco SSD',2199900,1,'2024-12-01 04:00:34',NULL),(52,22,2,'http://localhost:3000/uploads/HP Em0021la.png','Portatil HP Em0021la, AMD Ryzen 5, 16GB RAM, 512GB Disco SSD',2099999,1,'2024-12-01 04:00:37',NULL);
/*!40000 ALTER TABLE `cesta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-01 17:26:36
