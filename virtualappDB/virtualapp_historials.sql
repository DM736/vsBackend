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
-- Table structure for table `historials`
--

DROP TABLE IF EXISTS `historials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `nombreProduc` varchar(100) DEFAULT NULL,
  `productooid` int(10) DEFAULT NULL,
  `precio` int(30) DEFAULT NULL,
  `cantidad` int(20) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historials`
--

LOCK TABLES `historials` WRITE;
/*!40000 ALTER TABLE `historials` DISABLE KEYS */;
INSERT INTO `historials` VALUES (5,22,'Pepito ','Portatil Asus Vivo16” pulgadas, Intel Core i5, 16GB RAM, 512GB Disco SSD',1,2199900,1,'2024-11-24 06:30:45'),(6,22,'Pepito','Portatil HP Em0021la, AMD Ryzen 5, 16GB RAM, 512GB Disco SSD',2,2099999,1,'2024-11-24 22:39:52'),(7,22,'Pepito','Portatil Lenovo, Ideapad Slim3 15.6”, AMD Ryzen 5 16GB RAM 512GB Disco SSD',5,1999990,1,'2024-11-24 22:39:52'),(8,22,'Pepito','Portatil Asus Vivo16” pulgadas, Intel Core i5, 16GB RAM, 512GB Disco SSD',1,2199900,1,'2024-11-24 23:21:22'),(9,22,'Pepito','Portatil HP Em0021la, AMD Ryzen 5, 16GB RAM, 512GB Disco SSD',2,2099999,1,'2024-11-24 23:21:22'),(12,22,'Juan','Portatil Asus Vivo16” pulgadas, Intel Core i5, 16GB RAM, 512GB Disco SSD',1,NULL,1,'2024-12-01 00:33:27'),(13,22,'Juan','Portatil Asus Vivo16” pulgadas, Intel Core i5, 16GB RAM, 512GB Disco SSD',1,NULL,1,'2024-12-01 01:47:18'),(14,22,'Juan','Portatil HP Em0021la, AMD Ryzen 5, 16GB RAM, 512GB Disco SSD',2,NULL,1,'2024-12-01 01:47:18'),(15,22,'Juan','Celular Moto Edge 50 fusion, 256GB, con camara Frontal de 50MPX y camara Posterior de 32MPX',8,NULL,1,'2024-12-01 01:47:18'),(16,22,'Juan','Portatil Asus Vivo16” pulgadas, Intel Core i5, 16GB RAM, 512GB Disco SSD',1,NULL,1,'2024-12-01 03:42:24'),(17,22,'Juan','Portatil HP Em0021la, AMD Ryzen 5, 16GB RAM, 512GB Disco SSD',2,NULL,1,'2024-12-01 03:42:24'),(18,22,'Juan','Portatil Asus Vivo16” pulgadas, Intel Core i5, 16GB RAM, 512GB Disco SSD',1,NULL,1,'2024-12-01 03:45:43'),(19,22,'Juan','Portatil HP Em0021la, AMD Ryzen 5, 16GB RAM, 512GB Disco SSD',2,NULL,1,'2024-12-01 03:45:43'),(20,22,'Juan','Portatil Asus Vivo16” pulgadas, Intel Core i5, 16GB RAM, 512GB Disco SSD',1,NULL,1,'2024-12-01 03:48:34'),(21,22,'Juan','Portatil HP Em0021la, AMD Ryzen 5, 16GB RAM, 512GB Disco SSD',2,NULL,1,'2024-12-01 03:48:34');
/*!40000 ALTER TABLE `historials` ENABLE KEYS */;
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
