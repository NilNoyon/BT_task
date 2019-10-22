CREATE DATABASE  IF NOT EXISTS `bt_taskdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bt_taskdb`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bt_taskdb
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `bttaskapp_randomuser`
--

DROP TABLE IF EXISTS `bttaskapp_randomuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bttaskapp_randomuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(10) DEFAULT NULL,
  `nameTitle` varchar(20) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `birthDate` datetime(6) NOT NULL,
  `house` varchar(20) DEFAULT NULL,
  `roadName` varchar(45) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bttaskapp_randomuser`
--

LOCK TABLES `bttaskapp_randomuser` WRITE;
/*!40000 ALTER TABLE `bttaskapp_randomuser` DISABLE KEYS */;
INSERT INTO `bttaskapp_randomuser` VALUES (1,'female','Mrs','Stella','Clement','stella.clement@example.com','goldenfrog360','cedric','1968-06-15 03:41:48.385000','5015','Rue Denfert-Rochereau','Nantes','Aveyron','France'),(2,'female','Mrs','Khadija','Grini','khadija.grini@example.com','silvertiger674','gunther','1996-11-22 06:26:52.626000','5163','Professor Lochmanns gate','Revetal','Sør-Trøndelag','Norway'),(3,'male','Mr','Bo','Austrheim','bo.austrheim@example.com','orangeswan433','mack','1961-09-29 23:41:55.274000','9697','Hoff terrasse','Klæbu','Trøndelag','Norway'),(4,'female','Mrs','Kylie','Mccoy','kylie.mccoy@example.com','blueleopard421','wildone','1976-08-20 16:58:05.935000','5509','Stevens Creek Blvd','Warren','Texas','United States'),(5,'female','Ms','Heather','Powell','heather.powell@example.com','purpleelephant187','lust','1989-11-23 21:24:02.364000','6944','Victoria Road','Peterborough','Avon','United Kingdom'),(6,'female','Mrs','Mia','Brooks','mia.brooks@example.com','crazyduck168','heineken','1963-04-12 22:51:53.046000','1627','New Road','Clane','Kerry','Ireland'),(7,'female','Ms','Ayşe','Tuğluk','ayse.tugluk@example.com','blackleopard878','flame','1960-01-13 21:20:04.191000','7662','Maçka Cd','Yozgat','Erzincan','Turkey'),(8,'female','Mrs','Elizabeth','Gilbert','elizabeth.gilbert@example.com','whitemeercat987','cricket1','1978-10-02 19:04:31.760000','8681','Pearse Street','Naas','Clare','Ireland'),(9,'male','Monsieur','Gilles','Chevalier','gilles.chevalier@example.com','sadduck969','milano','1966-09-02 14:29:29.369000','2556','Place de L\'Abbé-Franz-Stock','Hofstetten (Zh)','Luzern','Switzerland'),(10,'female','Miss','Olivia','Hiltunen','olivia.hiltunen@example.com','heavyfish463','xtreme','1963-06-26 20:36:59.809000','7656','Hatanpään Valtatie','Joensuu','Kainuu','Finland');
/*!40000 ALTER TABLE `bttaskapp_randomuser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-23  4:15:04
