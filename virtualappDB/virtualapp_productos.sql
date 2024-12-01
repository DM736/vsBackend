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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgData` varchar(250) DEFAULT NULL,
  `imgNombre` varchar(255) DEFAULT NULL,
  `imgType` varchar(45) DEFAULT NULL,
  `nombreProducto` varchar(110) DEFAULT NULL,
  `descriProducto` varchar(200) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `tipoProducto` varchar(100) NOT NULL,
  `stockProducto` int(10) DEFAULT NULL,
  `precio` int(20) DEFAULT NULL,
  `caract1` varchar(80) DEFAULT NULL,
  `caract2` varchar(80) DEFAULT NULL,
  `caract3` varchar(80) DEFAULT NULL,
  `caract4` varchar(80) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`tipoProducto`),
  KEY `fk_categoria_idx` (`categoria`),
  KEY `fk_type_idx` (`tipoProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'http://localhost:3000/uploads/Azus Vivo16.png','Azus Vivo16','png','Portatil Asus Vivo16” pulgadas, Intel Core i5, 16GB RAM, 512GB Disco SSD','Portatil Azus Vivo con una pantalla de 16 pulgadas con procesador Intel Core','Azus','Tecnologia','ComputadorLaptop',125,2199900,'16 pulgadas','16GB RAM','512GB SSD','Intel Core I5 12500H','2024-11-10 17:43:38','2024-11-29 17:25:15'),(2,'http://localhost:3000/uploads/HP Em0021la.png','HP Em0021la','png','Portatil HP Em0021la, AMD Ryzen 5, 16GB RAM, 512GB Disco SSD','Portatil HP con una pantalla de 14 pulgadas con procesador AMD Ryzen 5 con 16GB de RAM y con almacenaiento de 512GB SSD','HP','Tecnologia','ComputadorLaptop',150,2099999,'14 pulgadas','16GB RAM','512GB SSD','AMD Ryzen 5 7520U','2024-11-11 19:43:40','2024-11-14 05:05:45'),(3,'http://localhost:3000/uploads/Acer AL14-31P.png','Acer AL14-31P','png','Portatil ACER AL14-31P-353Y 14” Intel Core  I3 N300 8GB 512GB SSD','Portatil Acer con una pantalla de 14 pulgadas con procesador Intel Core I3 con 8GB de RAM y con almacenaiento de 512GB SSD','ACER','Tecnologia','ComputadorLaptop',100,1549999,'14 pulgadas','8GB RAM','512GB SSD','Intel Core I3 N300','2024-11-11 23:26:38','2024-11-14 05:05:45'),(4,'http://localhost:3000/uploads/Mackbook Air MGN63LA.png','Mackbook Air MGN63LA','png','Mackbook Air MGN63LA/A M1, 8GB RAM, 256GB SSD','Mackbook apple con una pantalla de 13 pulgadas con procesador apple M1 con 8GB de RAM y con almacenaiento de 256GB SSD','Apple','Tecnologia','ComputadorLaptop',80,3259999,'13 pulgadas','8GB RAM','256GB SSD','Apple M1 chip','2024-11-11 23:32:49','2024-11-14 05:05:45'),(5,'http://localhost:3000/uploads/Lenovo Ideapad Slim3.png','Lenovo Ideapad Slim3','png','Portatil Lenovo, Ideapad Slim3 15.6”, AMD Ryzen 5 16GB RAM 512GB Disco SSD','Portatil Lenovo Ideapad con una pantalla de 15.6 pulgadas y 16GB de memoria RAM y con almacenamiento de 512GB SSD y procesador AMD Ryzen 5','Lenovo','Tecnologia','ComputadorLaptop',146,1999990,'15.6 pulgadas','16GB RAM','512GB SSD','Ryzen 5-7000','2024-11-11 23:40:46','2024-11-14 05:05:45'),(6,'http://localhost:3000/uploads/Lenovo-LOQ.png','Lenovo-LOQ','png','Portatil Gamer HP Victus, 15.6” Intel Core i5 24GB RAM, 512GB Disco SSD','Portatil Gamer Lenovo LOQ  con pantalla de 15.6 pulgadas con procesador Intel Core I5 12450H con 24GB de RAM y con almacenamiento de 512GB de disco SSD ','Lenovo','Tecnologia','ComputadorLaptop',120,3499999,'15.6 pulgadas','24GB RAM','512GB SSD','Intel Core I5 12450H','2024-11-12 02:38:54','2024-11-14 05:05:45'),(7,'http://localhost:3000/uploads/HP 14-EP1001LA 14.png','HP 14-EP1001LA 14','png','Portatil HPEP1001LA 14” Intel Core i5 24GB RAM, 512GB Disco SSD','Portatil Gamer HP 14-EP1001LA con pantalla de 14 pulgadas con procesador Intel Core Ultra 5 125H con 8GB de RAM y con almacenamiento de 512GB de disco SSD ','HP','Tecnologia','ComputadorLaptop',150,2300000,'14 pulgadas','8GB RAM','512GB SSD','Intel Core Ultra 5 125H','2024-11-12 03:12:23','2024-11-14 05:05:45'),(8,'http://localhost:3000/uploads/Moto Edge50.png','Moto Edge50','png','Celular Moto Edge 50 fusion, 256GB, con camara Frontal de 50MPX y camara Posterior de 32MPX','Celular Moto Edge 50 fusion con almacenamiento de 256GB con 8GB de memoria RAM y con procesador Qualcomm','Motorola','Tecnologia','Celular',110,1100000,'256GB','8GB RAM','50MPX Posterior','32MPX Frontal','2024-11-14 03:12:06','2024-11-14 22:28:22'),(9,'http://localhost:3000/uploads/Samsung-A35.png','Samsung-A35','png','Celular Samsung A35, 256GB, con camara frontal de 13MPX y posterior de 50MPX ','Celular Samsung A35 con 256GB y 8GB de memoria RAM con camaras de 13MPX (Frontal) y 3 camaras (Posterior) de 5MPX, 50MPX, 2MPX','Samsung','Tecnologia','Celular',210,749990,'256GB','8GB RAM','13MPX Frontal','50MPX Posterior','2024-11-14 22:44:53','2024-11-14 22:48:52'),(10,'http://localhost:3000/uploads/Motorola-Edge50Pro.png','Motorola-Edge50Pro','png','Celular Moto Edge50 Pro, 512GB, con camara frontal y Posterior de 50MPX ','Celular Moto A35 con 256GB y 8GB de memoria RAM con camaras de 50MPX (Frontal) y 3 camaras de 13MPX, 50MPX y 10MPX','Motorola','Tecnologia','Celular',105,1799900,'512GB','12GB RAM','50MPX Frontal','50MPX Posterior','2024-11-14 23:29:03','2024-11-14 23:29:03'),(11,'http://localhost:3000/uploads/Motorola-G24.png','Motorola-G24','png','Celular Moto G24, 256GB, con camara frontal de 8MPX Posterior de 50MPX ','Celular Moto G24 con 256GB y 4GB de memoria RAM con camaras de 50MPX (Frontal) y 3 camaras de  50MPX y 2MPX','Motorola','Tecnologia','Celular',150,549990,'256GB','4GB RAM','8MPX Frontal','50MPX Posterior','2024-11-14 23:36:11','2024-11-14 23:36:11'),(12,'http://localhost:3000/uploads/Motorola-G72.png','Motorola-G72','png','Celular Moto G72, 128GB, con camara frontal de 16MPX Posterior de 108MPX ','Celular Moto G72 con 128GB y 6GB de memoria RAM con camaras de 16MPX (Frontal) y 3 camaras de 108MPX, 8MPX y 2MPX','Motorola','Tecnologia','Celular',180,659900,'128GB','6GB RAM','16MPX Frontal','108MPX Posterior','2024-11-14 23:39:04','2024-11-14 23:39:04'),(13,'http://localhost:3000/uploads/Samsung-GS23.png','Samsung-GS23','png','Celular Samsung Galaxy S23 256GB, con camara frontal de 12MPX  y posterior de 50MPX ','Celular Samsung Galaxy S23 con 256GB y 8GB de memoria RAM con camaras de 12MPX (Frontal) y 3 camaras de 10MPX, 50MPX y 12MPX','Samsung','Tecnologia','Celular',180,4799990,'256GB','8GB RAM','12MPX Frontal','50MPX Posterior','2024-11-15 01:12:50','2024-11-15 02:21:29'),(14,'http://localhost:3000/uploads/Iphone-14.png','Iphone-14','png','Iphone 14 128GB, 6 Nucleos, con camara frontal de 12MPX  y posterior de 12MPX ','Iphone 14 con 128GB y 6 Nucleos con camaras de 12MPX (Frontal) y  camaras de 12MPX','Apple','Tecnologia','Celular',180,3989999,'128GB','6 Nucleos','12MPX Frontal','12MPX Posterior','2024-11-15 01:59:36','2024-11-15 02:19:43'),(15,'http://localhost:3000/uploads/Iphone-16-ProMax.png','Iphone-16-ProMax','png','Iphone 16 256GB, 6 Nucleos, con camara frontal de 12MPX  y posterior de 48MPX y 12MPX ','Iphone 16 Pro MAX con 256GB y 6 Nucleos con camaras de 12MPX (Frontal) y  camaras de 48MPX y 12MPX','Apple','Tecnologia','Celular',100,6979000,'256GB','6 Nucleos','12MPX Frontal','48MPX Posterior','2024-11-15 02:15:50','2024-11-15 02:15:50'),(16,'http://localhost:3000/uploads/audifonos-redmi-bud6.png','audifonos-redmi-bud6','png','Audifonos REDMI inhalambricos Ear Buds 6 con 30H de duracion','Aufifonos redmi Ear Bud 6 inhalambricos con 30 Horas de duracion','Redmi','Accesorios','Audifonos',120,98990,'30H Duracion','10M de rango','Bluetooth','Copatible con cualquier dispositivo','2024-11-15 03:35:00','2024-11-15 03:35:00');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
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
