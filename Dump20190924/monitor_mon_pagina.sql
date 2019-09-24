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
-- Table structure for table `mon_pagina`
--

DROP TABLE IF EXISTS `mon_pagina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mon_pagina` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `id_compania` bigint(16) NOT NULL,
  `id_webhook` bigint(16) DEFAULT NULL,
  `analytics` text,
  `descripcion` varchar(100) NOT NULL,
  `email_soporte` varchar(100) DEFAULT NULL,
  `estado_pagina` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `publico` varchar(25) NOT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `REL_4002` (`id_compania`),
  KEY `REL_4012` (`id_webhook`),
  CONSTRAINT `REL_4002` FOREIGN KEY (`id_compania`) REFERENCES `gen_compania` (`id`),
  CONSTRAINT `REL_4012` FOREIGN KEY (`id_webhook`) REFERENCES `gen_webhook` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mon_pagina`
--

LOCK TABLES `mon_pagina` WRITE;
/*!40000 ALTER TABLE `mon_pagina` DISABLE KEYS */;
INSERT INTO `mon_pagina` VALUES (17,1,1,NULL,'descripcion','jose@albatross.pe','ACTIVO','titulo','url','PUBLICO','website');
/*!40000 ALTER TABLE `mon_pagina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-24  7:16:53
