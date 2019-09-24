-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: monitor
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `mon_componente`
--

DROP TABLE IF EXISTS `mon_componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mon_componente` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `id_pagina` bigint(16) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha_inicio_monitoreo` date DEFAULT NULL,
  `fecha_final_monitoreo` date DEFAULT NULL,
  `historico` varchar(100) DEFAULT NULL,
  `intervalo_monitoreo` int(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `uri` varchar(100) NOT NULL,
  `tipo_monitoreo` varchar(30) NOT NULL,
  `fecha_revision` datetime NOT NULL,
  `estado_componente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `REL_4006` (`id_pagina`),
  CONSTRAINT `REL_4006` FOREIGN KEY (`id_pagina`) REFERENCES `mon_pagina` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mon_componente`
--

LOCK TABLES `mon_componente` WRITE;
/*!40000 ALTER TABLE `mon_componente` DISABLE KEYS */;
INSERT INTO `mon_componente` VALUES (217,17,'asdasd',NULL,NULL,NULL,1,'asdasd','https://github.com/join/plan','HTTP','2019-08-16 23:55:40',NULL);
/*!40000 ALTER TABLE `mon_componente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-24  7:16:51
