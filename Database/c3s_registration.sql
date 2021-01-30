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
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Roll_no` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `Dob` date NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Mobile_no` bigint(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Roll_no_UNIQUE` (`Roll_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,1509010035,'Ankit Kumar','1998-09-26','M','ankitrajpoot005@gmail.com',8882999775,'Dadri','Ankit@246'),(2,1509010033,'Ankit','1998-09-28','M','ankitrajpoot@gmail.com',9810715850,'Gwalior','yo@123'),(5,1509010027,'Amit Singh','1997-06-25','Male','amitksingh@yahoo.com',654546546,'Rewari','Amit@246'),(7,1509010085,'Ankit Agrawal','1998-06-14','Male','agrawalankit361@gmail.com',9451478526,'Jhansi','Ankit@246'),(8,1509010120,'Aparna Gaur','1996-07-26','Female','aparnagaur678@gmail.com',7845961254,'Dadri','Aparna@246'),(9,159010150,'Priya Singh','1996-05-25','female','priyaprakash543@gmail.com',9874562135,'Delhi','Priya@246'),(10,159010158,'Tanvi Singh','1996-07-25','female','tanvisingh543@gmail.com',9874562135,'Delhi','Tanvi@246'),(11,159010155,'Abhishek Singh','1996-07-29','male','abhisheksingh543@gmail.com',9874562135,'Delhi','Abhishek@246'),(12,1509012035,'Pragya Sajwan','1997-06-25','Female','pragyasajwan007@gmail.com',7458652412,'Delhi','Pragya@246'),(13,1509012037,'Kritika Negi','1998-06-14','Female','kritikanegi007@gmail.com',8547859652,'Delhi','Kritika@246'),(14,1509010050,'Ashutosh Saraswat','1998-07-04','male','ashusaraswat@gmail.com',8463453535,'Aligarh','Ashu@246'),(15,1509010045,'Arjun Porwal','1997-06-25','Male','porwal@gmail.com',6254654855,'UP','Porwal@246'),(16,1509010070,'Bhawna Sharma','1998-07-04','Male','bhawna134@gmail.com',6855567855,'Beta 1','Bhawna@246');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-31 14:56:13
