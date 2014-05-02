CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Table structure for table `empinformation`
--

DROP TABLE IF EXISTS `empinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empinformation` (
  `employeename` varchar(40) NOT NULL,
  `employeeid` varchar(23) NOT NULL,
  `employeeaddress` varchar(45) NOT NULL,
  `challenged` varchar(45) NOT NULL,
  `employeedob` varchar(45) NOT NULL,
  `empbloddgroup` varchar(45) NOT NULL,
  `employeecaste` varchar(45) NOT NULL,
  `employeewardno` varchar(45) NOT NULL,
  `employeeaccno` varchar(45) NOT NULL,
  `empvillage` varchar(45) NOT NULL,
  `empblock` varchar(45) NOT NULL,
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empinformation`
--

LOCK TABLES `empinformation` WRITE;
/*!40000 ALTER TABLE `empinformation` DISABLE KEYS */;
INSERT INTO `empinformation` VALUES ('Boopathy','1020','ddfd','no','3/3/534','ab+','bc','12','2323','',''),('fd','1212','dfdf','yes','08-04-2014','ab+','bc','12','2323','',''),('bbb','TN-01-12','efee','yes','05/27/2014','o+','sc','1','454545','ALLANGUDI','Valangaiman'),('bbb','TN-01-23','bgfrg','yes','05/26/2014','o+','mbc','1','2323','ALLANGUDI','Valangaiman'),('bb','TN-01-232','brgrg','yes','05/05/2014','o+','mbc','1','3434','KALATHUR','Valangaiman'),('bbb','TN-01-33','erferf','yes','05/19/2014','ab+','bc','1','34343','RAJAKARUPPU','Valangaiman'),('leela','TN-02-12','dindiglul','no','05/11/2014','ab+','mbc','2','232323','GOVINDAKUDI','Thiruvarur');
/*!40000 ALTER TABLE `empinformation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-02 18:23:33
