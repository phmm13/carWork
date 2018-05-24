-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: carwork
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `versao`
--

DROP TABLE IF EXISTS `versao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versao` (
  `id_versao` int(11) NOT NULL,
  `nome_versao` varchar(45) NOT NULL,
  `modelo_id_modelo` int(11) NOT NULL,
  PRIMARY KEY (`id_versao`),
  KEY `fk_Versão_Modelo1_idx` (`modelo_id_modelo`),
  CONSTRAINT `fk_Versão_Modelo1` FOREIGN KEY (`modelo_id_modelo`) REFERENCES `modelo` (`id_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versao`
--

LOCK TABLES `versao` WRITE;
/*!40000 ALTER TABLE `versao` DISABLE KEYS */;
INSERT INTO `versao` VALUES (31,'Mobi Easy',1),(32,'Mobi Like',1),(33,'Mobi Way',1),(34,'Mobi Drive',1),(35,'Mobi Drive GSR',1),(36,'Argo Drive',2),(37,'Argo Drive GSR',2),(38,'Argo Precision',2),(39,'Argo HGT',2),(40,'Uno Drive',3),(41,'Uno Way',3),(42,'Uno Way GSR',3),(43,'Uno Sporting',3),(44,'Uno Sporting GSR',3),(45,'Siena Attractive',4),(46,'Siena Essence',4),(47,'Siena Tetratuel',4),(48,'Strada Working',5),(50,'Strada Hard Working CE',5),(51,'Strada Hard Working CD',5),(52,'Strada Adventure CE',5),(53,'Strada Adventure CD',5),(54,'Fiorino EVO',6),(55,'Fiorino Hard Working',6),(56,'HB20 Confort',7),(57,'HB20 Confort Plus',7),(58,'HB20 Confort com BlueMedia',7),(59,'HB20 Confort Plus com BlueMedia',7),(60,'IX35 Modelo de entrada',8),(61,'IX35 GL',8),(62,'IX35 GLS',8),(63,'Creta Attitude',9),(64,'Creta Pulse',9),(65,'I30 Modelo de Entrada',10),(66,'I30 GLS',10),(67,'I30 Versão Limitada',10),(68,'Azera Completo',11),(69,'New Elantra Completo',12),(70,'Gol TrendLine',13),(71,'Gol Track',13),(72,'Up! Take Up',14),(73,'Up! Move Up',14),(74,'Up! Cross Up',14),(75,'Up! Pepper',14),(76,'Polo 1.0',16),(77,'Polo MSI',16),(78,'Comfortline TSI',16),(79,'Highline  TSI',16),(80,'Xtreme',17),(81,'Connect',17),(82,'Comfortline',18),(83,'Highline',18),(84,'GTI',18),(85,'118 Sport',19),(86,'M140i ',20),(87,'320 Sport',21),(88,'320 Sport GP',21),(89,'320 M Sport',21),(90,'528I M Sport',22),(91,'M4 Sport',23),(92,'X4 M Sport',24),(93,'A1 SportBack',25),(94,'A5 SportBack',26),(95,'RS5 Coupe',26),(96,'RS7 Sportback Performace',27),(97,'TT Coupe',29),(98,'TT Roadster',29),(99,'TTS Coupe',29),(100,'TTS Roadster',29),(101,'TT  RS',29);
/*!40000 ALTER TABLE `versao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-24 10:18:22
