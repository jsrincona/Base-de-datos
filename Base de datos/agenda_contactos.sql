-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: agenda
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contactos` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del contacto',
  `con_nombre` varchar(30) NOT NULL COMMENT 'nombre del contacto',
  `con_apellido` varchar(30) NOT NULL COMMENT 'apellido del contacto',
  `con_telefono_domicilio` varchar(15) NOT NULL COMMENT 'telefono de la casa',
  `con_telefono_oficina` varchar(15) NOT NULL COMMENT 'telefono trabajo',
  `con_celular` varchar(20) NOT NULL COMMENT 'celular personal',
  `con_correo` varchar(150) NOT NULL COMMENT 'email personal',
  `con_direccion_residencia` varchar(150) NOT NULL COMMENT 'direccion de residencia',
  `con_direccion_trabajo` varchar(150) NOT NULL COMMENT 'direccion de trabajo',
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='tabla con los nombres de conocidos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'Johan','Rincón Amaya','8932066','8932066','3007879469','johanrincon.a@hotmail.com','Cll 75 # 80a-20','Cll 75 # 80a-20'),(2,'Nicolás','Gutierrez Morales','4610710','4610710','3106010259','ndgutierrezm@correo.udistrital.edu.co','Cll 93 # 30b-97','Cll 93 # 30b-97'),(3,'José','Diaz Aguilar','4974320','4974320','3043364257','nikolasbatwe@hotmail.com','Cra 23 # 3-64','Cra 23 # 3-64'),(4,'Cristhian','Yara Pardo','5701252','5701252','3204231096','cmyarap@correo.udistrital.edu.co','Cra 77 # 7-77','Cra 77 # 7-77'),(5,'Juan Felipe','Herrera Poveda','8285065','8285065','3188419339','jtherrerap@correo.udistrital.edu.co','Cra 23 # 3-43','Cra 23 # 3-43'),(6,'Fabian Enrique','León','4516130','4516130','3207649016','fleonb@correo.udistrital.edu.co','Cll 18 # 1f-34','Cll 18 # 1f-34'),(7,'Esteban','Narato Triana','2517629','2517629','3193398040','jenoratot@correo.udistrital.edu.co','Cra 77 # 7-77','Cra 77 # 7-77'),(8,'Ivan','Chauta Gaviria','3528102','3528102','3506632164','santiagochauta@gmail.com','Cra 76 # 7-77','Cra 76 # 7-77'),(9,'Kevin','García Cuellar','2287315','2287315','3103048275','kevingarcia.cuellar94@gmail.com','Cra 72 # 7-77','Cra 72 # 7-77'),(10,'Kevin Andres','Forero Guartero','4178898','4178898','3204178898','kevinandresforero@hotmail.com','Cra 21 # 7-77','Cra 21 # 7-77'),(11,'Alex','Rodriguez','7156701','7156701','3138040642','alex.h2401@hotmail.com','Cra 23 # 7-77','Cra 23 # 7-77'),(12,'Vivian','Peña Hurtado','7427353','7427353','3114612307','pavipehu1@gmail.com','Cra 13 # 7-77','Cra 13 # 7-77'),(13,'Alejandro','Gonzales','7033212','7033212','3173881033','diegobermu1003@hotmail.com','Cra 3 # 7-77','Cra 3 # 7-77'),(14,'Nicolas','Valderrama','4022153','4022153','3143155135','espectopatrom@gmail.com','Cra 1 # 7-77','Cra 1 # 7-77'),(15,'Camilo Andres','Caimán','4610589','4610589','3005931246','caimanco8@gmail.com','Cra 45 # 7-77','Cra 45 # 7-77'),(16,'Kevin Duvan','Bernal Ortiz','7782636','7782636','3132248033','kevinduvanbernalortiz@gmail.com','Cll 23 # 7-77','Cll 23 # 7-77'),(17,'Julián','Torres','4381237','4381237','3202882608','julianfelpieatxd@outlook.es','Cll 3 # 7-77','Cll 3 # 7-77'),(18,'Leider','Chaverra Correa','7367012','7367012','3205366740','leiderre14@gmail.com','Cll 1 # 7-77','Cll 1 # 7-77'),(19,'Jefferson','Bojaca','2981148','2981148','3320433497','manuel.bojaca@outlook.com','Cll 33 # 7-77','Cll 33 # 7-77');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-06 17:35:11
