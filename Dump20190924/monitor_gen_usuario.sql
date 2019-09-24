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
-- Table structure for table `gen_usuario`
--

DROP TABLE IF EXISTS `gen_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gen_usuario` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `id_persona` bigint(16) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `constrasena` varchar(300) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `estado` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_USUARIO_PERSONA` (`id_persona`),
  CONSTRAINT `REL_4001` FOREIGN KEY (`id_persona`) REFERENCES `gen_persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_usuario`
--

LOCK TABLES `gen_usuario` WRITE;
/*!40000 ALTER TABLE `gen_usuario` DISABLE KEYS */;
INSERT INTO `gen_usuario` VALUES (1,1,'jose@albatross.pe','504a923549dc2d7399fa0c939f1cc8cf',NULL,'ACT'),(2,2,'diego@gmail.com','504a923549dc2d7399fa0c939f1cc8cf',NULL,'ACT');
/*!40000 ALTER TABLE `gen_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-24  7:16:50
