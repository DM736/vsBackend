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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'Jose F.','jos71@gmail.com','a937fjjK192','2024-09-20 14:55:19',NULL),(3,'Esteban Sanchez','Essanch@gmail.com','1038263773ud','2024-09-20 15:01:47',NULL),(4,'Laura','LauVasq@gmail.com','0008900088j','2024-09-20 15:06:00',NULL),(5,'Estheph','Esthep@gmail.com','927382910375','2024-09-20 15:23:55',NULL),(6,'juan','perezj@gmail.com','1234567890','2024-11-01 18:14:28','2024-11-01 18:14:28'),(17,'user prueba3697','pruebap@gmail.com','$2a$10$s/olidB7WmzGJ3aq4md7eOB4cOzUM5/WxJhT45/QTT7PiR6rxPjTC','2024-11-02 22:29:49','2024-11-02 22:29:49'),(18,'pepito p','pepitoprz34@gmail.com','$2a$10$dsi9yBdWC5Lo1B/SaP0dUeXjk7ucoQAFgG2ItsTwY3xdk4V2442eC','2024-11-03 02:43:25','2024-11-03 02:43:25'),(19,'juan pablo','correo9834@gmail.com','$2a$10$XPmFgicAEG29hHJNOxs6quI9FrXgTMaXJ2JdKh5aPbRx/yKrd/p4K','2024-11-03 03:28:19','2024-11-03 03:28:19'),(22,'pepito125352','pepCorr67@gmail.com','$2a$10$DZZuRphYzVV/NjbvfNhjy.Qcz72R39Kur/tgUlCMEAlQ4CksnlHX6','2024-11-06 00:19:26','2024-11-06 00:19:26'),(23,'user12632','usua@gmail.com','$2a$10$FI7FqeRZKkmEzWRK3qf3xOJVjw/Pb6C4I47rZs1QScVaG2R0jNP3S','2024-11-28 06:28:35','2024-11-28 06:28:35');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
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
