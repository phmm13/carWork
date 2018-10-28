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
-- Table structure for table `tb_versao`
--

DROP TABLE IF EXISTS `tb_versao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_versao` (
  `idt_versao` int(11) NOT NULL,
  `nme_versao` varchar(50) NOT NULL,
  `cod_modelo` int(11) NOT NULL,
  PRIMARY KEY (`idt_versao`),
  KEY `fk_Versão_Modelo1_idx` (`cod_modelo`),
  CONSTRAINT `fk_Versão_Modelo1` FOREIGN KEY (`cod_modelo`) REFERENCES `tb_modelo` (`idt_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_versao`
--

LOCK TABLES `tb_versao` WRITE;
/*!40000 ALTER TABLE `tb_versao` DISABLE KEYS */;
INSERT INTO `tb_versao` VALUES (1,'Mobi Easy',1),(2,'Mobi Way',1),(3,'Mobi Drive GSR',1),(4,'Argo Drive',2),(5,'Argo HGT',2),(6,'Uno Way',3),(7,'Uno Drive',3),(8,'Uno Sporting GSR',3),(9,'Siena Essence',4),(10,'Siena Working',4),(11,'Siena Hard Working',4),(12,'Confort',5),(13,'Confort Plus',5),(14,'Rspec',5),(15,'Modelo de entrada',6),(16,'GL',6),(17,'GLS',6),(18,'Attitude',7),(19,'Pulse',7),(20,'GLS',8),(21,'Versao Limitada',8),(22,'Track',9),(23,'TrendLine',9),(24,'Comfortline',10),(25,'TSI',10),(26,'Cross Up',11),(27,'Pepper',11),(28,'TSI',12),(29,'GTI',12),(30,'Sport',13),(31,' M Sport',13),(32,'Sport',14),(33,'Sport GT',14),(34,' M5 Sport',15),(35,'Sport',16),(36,'M',16),(37,'RS5 Coupe',17),(38,'TTS Coupe',18),(39,'TTS Roadster',18),(40,'SportBack',19),(41,'Roadster',20);
/*!40000 ALTER TABLE `tb_versao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-18 21:15:10
