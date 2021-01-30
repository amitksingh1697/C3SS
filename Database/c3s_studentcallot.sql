-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: c3s
-- ------------------------------------------------------
-- Server version	5.5.49

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
-- Table structure for table `studentcallot`
--

DROP TABLE IF EXISTS `studentcallot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentcallot` (
  `SN` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(12) NOT NULL,
  `Instructor` varchar(45) NOT NULL,
  `Topic` varchar(45) NOT NULL,
  PRIMARY KEY (`SN`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentcallot`
--

LOCK TABLES `studentcallot` WRITE;
/*!40000 ALTER TABLE `studentcallot` DISABLE KEYS */;
INSERT INTO `studentcallot` VALUES (22,'Abhishek','abhisheksingh543@gmail.com','9874562135','Ankit Kumar','Machine Learning'),(25,'Aparna','aparnagaur678@gmail.com','7845961254','Ankit Agrawal','Mathematics'),(26,'Aparna','aparnagaur678@gmail.com','7845961254','Amit kumar Singh','Gaming'),(27,'Aparna','aparnagaur678@gmail.com','7845961254','Amit kumar Singh','Gaming'),(28,'Kritika','kritikanegi007@gmail.com','8547859652','Ankit Kumar','Machine Learning'),(29,'Arjun','porwal@gmail.com','6254654855','Amit kumar Singh','Gaming'),(30,'Abhishek','abhisheksingh543@gmail.com','9874562135','Deepa Basantani','Java Adavnce'),(31,'Bhawna','bhawna134@gmail.com','6855567855','Deepa Basantani','Java Adavnce'),(32,'Bhawna','bhawna134@gmail.com','6855567855','Ankit Kumar','Machine Learning');
/*!40000 ALTER TABLE `studentcallot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-31 14:56:16
