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
-- Table structure for table `mon_alerta`
--

DROP TABLE IF EXISTS `mon_alerta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mon_alerta` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `id_componente` bigint(16) NOT NULL,
  `id_pagina` bigint(16) NOT NULL,
  `id_persona` bigint(16) DEFAULT NULL,
  `tipo` varchar(100) NOT NULL,
  `fecha_actual` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `REL_4003` (`id_persona`),
  KEY `REL_4007` (`id_componente`),
  KEY `REL_4004` (`id_pagina`),
  CONSTRAINT `REL_4003` FOREIGN KEY (`id_persona`) REFERENCES `gen_persona` (`id`),
  CONSTRAINT `REL_4004` FOREIGN KEY (`id_pagina`) REFERENCES `mon_pagina` (`id`),
  CONSTRAINT `REL_4007` FOREIGN KEY (`id_componente`) REFERENCES `mon_componente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mon_alerta`
--

LOCK TABLES `mon_alerta` WRITE;
/*!40000 ALTER TABLE `mon_alerta` DISABLE KEYS */;
/*!40000 ALTER TABLE `mon_alerta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-24  7:16:52
