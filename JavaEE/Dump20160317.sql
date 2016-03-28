CREATE DATABASE  IF NOT EXISTS `travel` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `travel`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: travel
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `bankcustomer`
--

DROP TABLE IF EXISTS `bankcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankcustomer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` double NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankcustomer`
--

LOCK TABLES `bankcustomer` WRITE;
/*!40000 ALTER TABLE `bankcustomer` DISABLE KEYS */;
INSERT INTO `bankcustomer` VALUES (1,200,'An','Devriendt'),(2,-100,'Els','Vandendriessche');
/*!40000 ALTER TABLE `bankcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrental`
--

DROP TABLE IF EXISTS `carrental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrental` (
  `tripid` int(11) NOT NULL,
  `carrentalid` int(11) NOT NULL,
  `provider` varchar(35) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `pickupdate` date DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `cartype` varchar(30) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `bookingstatus` varchar(20) DEFAULT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`carrentalid`),
  KEY `travel_carrentalFK` (`tripid`),
  CONSTRAINT `travel_carrentalFK` FOREIGN KEY (`tripid`) REFERENCES `trip` (`tripid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrental`
--

LOCK TABLES `carrental` WRITE;
/*!40000 ALTER TABLE `carrental` DISABLE KEYS */;
INSERT INTO `carrental` VALUES (128,1,'Avis','New York','2008-06-16','2008-06-23','Economy',89.90,'Confirmed','2014-03-08 20:49:59'),(199,2,'Avis','New York','2008-09-14','2008-09-17','Hybrid',89.90,'Confirmed','2014-03-08 20:49:59'),(202,3,'Hertz','Toronto, ON','2008-10-22','2008-10-24','Sub Compact',44.99,'Confirmed','2014-03-08 20:49:59'),(203,4,'Hertz','Tokyo, JP','2008-10-23','2008-10-30','Economy',59.90,NULL,'2014-03-08 20:49:59'),(367,5,'National','Chicago, IL','2008-10-12','2008-10-19','Economy',NULL,'Confirmed','2014-03-08 20:49:59'),(200,6,'Budget','Washington, DC','2008-06-11','2008-06-18','Economy',52.50,'Confirmed','2014-03-08 20:49:59'),(310,7,'Budget','Washington, DC','2008-08-03','2008-08-08','SUV',52.50,'Confirmed','2014-03-08 20:49:59'),(333,8,'Hertz','Tokyo, JP','2009-02-03','2008-02-09',NULL,55.50,'Confirmed','2014-03-08 20:49:59'),(422,9,'Budget','Washington, DC','2009-04-11','2008-04-18',NULL,NULL,NULL,'2014-03-08 20:49:59'),(455,10,'Budget','Stockholm, SE','2008-05-13','2008-05-20','Economy',50.50,'Confirmed','2014-03-08 20:49:59'),(201,11,'Budget','Washington, DC','2008-07-01','2008-07-08','Economy',NULL,NULL,'2014-03-08 20:49:59'),(590,12,'Budget','Orlando, FL','2008-08-11','2008-08-18','Economy',50.50,'Confirmed','2014-03-08 20:49:59'),(380,13,'Budget','Washington, DC','2009-10-23','2009-10-30','Economy',50.50,'Confirmed','2014-03-08 20:49:59'),(421,14,'Budget','Washington, DC','2009-11-09','2009-11-16','Luxury',69.50,'Confirmed','2014-03-08 20:49:59'),(100,15,'Hertz','San Francisco, CA','2008-05-01','2008-05-08',NULL,35.50,'Confirmed','2014-03-08 20:49:59'),(159,16,'SkiShuttle','Park City, UT','2008-09-01','2008-09-08','Wagon',59.50,'Confirmed','2014-03-08 20:49:59'),(359,17,'Budget','Los Angeles, CA','2009-01-26','2009-01-28','Economy',50.50,'Confirmed','2014-03-08 20:49:59'),(460,18,'Hertz','San Francisco, CA','2009-05-06','2008-05-13','Economy',69.69,'Confirmed','2014-03-08 20:49:59'),(208,19,'Budget','Washington, DC','2008-06-21','2008-06-28','Economy',60.50,'Confirmed','2014-03-08 20:49:59'),(383,20,'Eurocar','Grenoble, FR','2009-10-23','2009-10-30','Compact',60.50,'Confirmed','2014-03-08 20:49:59'),(463,21,'RentAWreck','Washington, DC','2009-06-11','2009-06-18','4 Wheels',12.99,NULL,'2014-03-08 20:49:59');
/*!40000 ALTER TABLE `carrental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight` (
  `tripid` int(11) NOT NULL,
  `flightid` int(11) NOT NULL,
  `direction` char(1) NOT NULL,
  `flightnum` varchar(20) DEFAULT NULL,
  `deptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `depairport` varchar(35) DEFAULT NULL,
  `arrtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `arrairport` varchar(35) DEFAULT NULL,
  `airlinename` varchar(35) DEFAULT NULL,
  `bookingstatus` varchar(20) DEFAULT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`flightid`),
  KEY `travel_flightFK` (`tripid`),
  CONSTRAINT `travel_flightFK` FOREIGN KEY (`tripid`) REFERENCES `trip` (`tripid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (128,1,'D','United Airlines 71','2008-06-16 11:00:00','Oakland (OAK)','2008-06-16 20:30:00','New York Newark Intl Arpt (EWR)','United Airlines','Confirmed','2014-03-08 20:49:59'),(128,2,'R','United Airlines 73','2008-06-23 11:00:00','New York Newark Intl Arpt (EWR)','2008-06-23 21:10:00','Oakland (OAK)','United Airlines','Confirmed','2014-03-08 20:49:59'),(199,3,'D','United Airlines 71','2008-09-14 11:00:00','San Francisco Intl Arpt (SFO)','2008-09-14 20:30:00','New York Newark Intl Arpt (EWR)','United Airlines','Confirmed','2014-03-08 20:49:59'),(199,4,'R','United Airlines 73','2008-09-17 11:00:00','New York Newark Intl Arpt (EWR)','2008-09-17 21:10:00','San Francisco Intl Arpt (SFO)','United Airlines','Confirmed','2014-03-08 20:49:59'),(202,5,'D','Air Canada 101','2008-10-22 08:00:00','Oakland (OAK)','2008-10-22 21:30:00','Toronto Intl Arpt (YYZ)','Air Canada','Confirmed','2014-03-08 20:49:59'),(202,6,'R','Air Canada 220','2008-10-24 11:00:00','Toronto Intl Arpt (YYZ)','2008-10-24 15:10:00','Oakland (OAK)','Air Canada','Confirmed','2014-03-08 20:49:59'),(203,7,'D','Japan Airlines 22','2008-10-23 11:00:00','San Francisco Intl Arpt (SFO)','2008-10-23 20:30:00','Tokyo Narita Intl Arpt (NRT)','Japan Airlines','Confirmed','2014-03-08 20:49:59'),(203,8,'R','Japan Airlines 01','2008-10-30 12:00:00','Tokyo Narita Intl Arpt (NRT)','2008-10-30 22:10:00','San Francisco Intl Arpt (SFO)','Japan Airlines','Confirmed','2014-03-08 20:49:59'),(367,9,'D','United Airlines 62','2008-12-12 08:00:00','San Francisco Intl Arpt (SFO)','2008-12-12 16:30:00','Chicago Ohare Intl Arpt (ORD)','United Airlines','Confirmed','2014-03-08 20:49:59'),(367,10,'R','United Airlines 32','2008-12-19 16:00:00','Chicago Ohare Intl Arpt (ORD)','2008-12-19 22:10:00','San Francisco Intl Arpt (SFO)','United Airlines','Confirmed','2014-03-08 20:49:59'),(200,11,'D','United Airlines 101','2008-06-11 07:00:00','San Francisco Intl Arpt (SFO)','2008-06-11 15:30:00','Washington Dulles Intl Arpt (IAD)','United Airlines','Confirmed','2014-03-08 20:49:59'),(200,12,'R','United Airlines 121','2008-06-18 15:00:00','Washington Dulles Intl Arpt (IAD)','2008-06-18 21:10:00','San Francisco Intl Arpt (SFO)','United Airlines','Confirmed','2014-03-08 20:49:59'),(310,13,'D','American Airlines 10','2008-08-03 05:00:00','San Jose Intl Arpt (SJC)','2008-08-03 16:30:00','Washington Dulles Intl Arpt (IAD)','American Airlines','Confirmed','2014-03-08 20:49:59'),(310,14,'R','American Airlines 12','2008-08-08 12:00:00','Washington Dulles Intl Arpt (IAD)','2008-08-08 21:10:00','San Jose Intl Arpt (SJC)','American Airlines','Confirmed','2014-03-08 20:49:59'),(333,15,'D','Japan Airlines 33','2009-02-02 08:00:00','San Francisco Intl Arpt (SFO)','2009-02-03 16:30:00','Tokyo Narita Intl Arpt (NRT)','Japan Airlines','Confirmed','2014-03-08 20:49:59'),(333,16,'R','Japan Airlines 101','2009-02-09 16:00:00','Tokyo Narita Intl Arpt (NRT)','2009-02-09 22:10:00','San Francisco Intl Arpt (SFO)','Japan Airlines','Confirmed','2014-03-08 20:49:59'),(422,17,'D','United Airlines 101','2009-04-11 07:00:00','San Jose Intl Arpt (SJC)','2009-04-11 15:30:00','Washington Dulles Intl Arpt (IAD)','United Airlines','Confirmed','2014-03-08 20:49:59'),(422,18,'R','United Airlines 121','2009-04-18 15:00:00','Washington Dulles Intl Arpt (IAD)','2009-04-18 21:10:00','San Jose Intl Arpt (SJC)','United Airlines','Confirmed','2014-03-08 20:49:59'),(455,19,'D','Scand Airlines 8823','2008-05-13 07:00:00','San Francisco Intl Arpt (SFO)','2008-05-13 15:30:00','Arlanda-Stockholm, Sweden (ARN)','Scandinavian Airlines','Confirmed','2014-03-08 20:49:59'),(455,20,'R','Scand Airlines 8823','2008-05-20 15:00:00','Arlanda-Stockholm, Sweden (ARN)','2008-05-20 21:10:00','San Francisco Intl Arpt (SFO)','Scandinavian Airlines','Confirmed','2014-03-08 20:49:59'),(592,21,'D','AERO Airlines 001','2008-06-16 07:00:00','San Jose Intl Arpt (SJC)','2008-06-16 15:30:00','Novosibirsk Regional Arpt (NVI)','AEROFLOT Airlines','Confirmed','2014-03-08 20:49:59'),(592,22,'R','AERO Airlines 101','2008-06-23 15:00:00','Novosibirsk Regional Arpt (NVI)','2008-06-23 21:10:00','San Jose Intl Arpt (SJC)','AEROFLOT Airlines','Confirmed','2014-03-08 20:49:59'),(201,23,'D','United Airlines23','2008-07-01 07:00:00','San Jose Intl Arpt (SJC)','2008-07-12 23:30:00','Washington Dulles Intl Arpt (IAD)','United Airlines','Confirmed','2014-03-08 20:49:59'),(201,24,'R','United Airlines 88','2008-07-08 15:00:00','Washington Dulles Intl Arpt (IAD)','2008-07-08 18:10:00','San Jose Intl Arpt (SJC)','United Airlines','Confirmed','2014-03-08 20:49:59'),(590,25,'D','Delta Airlines 201','2008-08-11 07:00:00','San Jose Intl Arpt (SJC)','2008-08-11 15:30:00','Orlando Intl Arpt (ORL)','Delta Airlines','Confirmed','2014-03-08 20:49:59'),(590,26,'R','Delta Airlines 202','2008-08-18 15:00:00','Orlando Intl Arpt (ORL)','2008-08-18 21:10:00','San Jose Intl Arpt (SJC)','Delta Airlines','Confirmed','2014-03-08 20:49:59'),(380,27,'D','United Airlines 23','2009-10-23 07:00:00','San Jose Intl Arpt (SJC)','2009-10-22 23:30:00','Washington Dulles Intl Arpt (IAD)','United Airlines','Confirmed','2014-03-08 20:49:59'),(380,28,'R','United Airlines 88','2009-10-30 16:00:00','Washington Dulles Intl Arpt (IAD)','2009-10-30 19:10:00','San Jose Intl Arpt (SJC)','United Airlines','Confirmed','2014-03-08 20:49:59'),(421,29,'D','United Airlines 23','2009-11-09 08:00:00','San Jose Intl Arpt (SJC)','2009-11-09 00:30:00','Washington Dulles Intl Arpt (IAD)','United Airlines','Confirmed','2014-03-08 20:49:59'),(421,30,'R','United Airlines 88','2009-11-16 16:00:00','Washington Dulles Intl Arpt (IAD)','2009-11-16 19:10:00','San Jose Intl Arpt (SJC)','United Airlines','Confirmed','2014-03-08 20:49:59'),(100,31,'D','United Airlines 709','2008-05-01 07:00:00','Aspen Arpt (ASE)','2008-04-30 23:30:00','San Francisco Intl Arpt (SFO)','United Airlines','Confirmed','2014-03-08 20:49:59'),(100,32,'R','United Airlines 880','2008-05-08 15:00:00','San Francisco Intl Arpt (SFO)','2008-05-08 18:10:00','Aspen Arpt (ASE)','United Airlines','Confirmed','2014-03-08 20:49:59'),(159,33,'D','American Airlines 03','2008-09-01 07:00:00','Aspen Regional Arpt (ASE)','2008-08-31 23:30:00','Park City Regional Arpt (PRK)','American Airlines','Confirmed','2014-03-08 20:49:59'),(159,34,'R','American Airlines 08','2008-09-08 15:00:00','Park City Regional Arpt (PRK)','2008-09-08 18:10:00','Aspen Regional Arpt (ASE)','American Airlines','Confirmed','2014-03-08 20:49:59'),(252,35,'D','United Airlines 23','2008-11-01 08:00:00','Aspen Regional Arpt (ASE)','2008-11-01 00:30:00','Chicago OHare Intl Arpt (ORD)','United Airlines','Confirmed','2014-03-08 20:49:59'),(252,36,'R','United Airlines 88','2008-11-08 16:00:00','Chicago OHare Intl Arpt (ORD)','2008-11-08 19:10:00','Aspen Regional Arpt (ASE)','United Airlines','Confirmed','2014-03-08 20:49:59'),(359,37,'D','Delta Airlines 23','2009-01-26 08:00:00','Aspen Regional Arpt (ASE)','2009-01-26 00:30:00','Los Angeles Intl Arpt (LAX)','Delta Airlines','Confirmed','2014-03-08 20:49:59'),(359,38,'R','Delta Airlines 88','2009-01-28 16:00:00','Los Angeles Intl Arpt (LAX)','2009-01-28 19:10:00','Aspen Regional Arpt (ASE)','Delta Airlines','Confirmed','2014-03-08 20:49:59'),(460,39,'D','United Airlines 709','2009-05-06 07:00:00','Aspen Arpt (ASE)','2008-05-05 23:30:00','San Francisco Intl Arpt (SFO)','United Airlines','Confirmed','2014-03-08 20:49:59'),(460,40,'R','United Airlines 880','2009-05-13 15:00:00','San Francisco Intl Arpt (SFO)','2008-05-13 18:10:00','Aspen Arpt (ASE)','United Airlines','Confirmed','2014-03-08 20:49:59'),(463,41,'D','United Airlines 23','2009-06-11 07:00:00','Glenwood Springs (GSS)','2009-06-10 23:30:00','Philadelphia Intl Arpt (PHL)','United Airlines','Confirmed','2014-03-08 20:49:59'),(463,42,'R','Bankrupt Air 3266','2009-06-18 15:00:00','Philadelphia Intl Arpt (PHL)','2014-03-08 20:49:59','Glenwood Springs (GSS)','Bankrupt Airlines',NULL,'2014-03-08 20:49:59'),(198,43,'D','United Airlines 23','2008-06-11 07:00:00','San Jose Intl Arpt (SJC)','2008-06-10 23:30:00','Grenoble Arpt (GRN)','United Airlines','Confirmed','2014-03-08 20:49:59'),(198,44,'R','United Airlines 88','2008-06-18 15:00:00','Grenoble Arpt (GRN)','2008-06-18 18:10:00','San Jose Intl Arpt (SJC)','United Airlines','Confirmed','2014-03-08 20:49:59'),(208,45,'D','United Airlines 23','2008-06-21 07:00:00','San Jose Intl Arpt (SJC)','2008-06-20 23:30:00','Washington Dulles Intl Arpt (IAD)','United Airlines','Confirmed','2014-03-08 20:49:59'),(208,46,'R','United Airlines 23','2008-06-28 07:00:00','Washington Dulles Intl Arpt (IAD)','2008-06-27 23:30:00','San Jose Intl Arpt (SJC)','United Airlines','Confirmed','2014-03-08 20:49:59'),(383,47,'D','Air France 902','2009-10-23 07:00:00','San Jose Intl Arpt (SJC)','2009-10-22 23:30:00','Grenoble Arpt (GRN)','Air France','Confirmed','2014-03-08 20:49:59'),(383,48,'R','Air France 902','2009-10-30 16:00:00','Grenoble Arpt (GRN)','2009-10-30 19:10:00','San Jose Intl Arpt (SJC)','Air France','Confirmed','2014-03-08 20:49:59'),(420,49,'D','United Airlines 23','2009-11-09 08:00:00','San Jose Intl Arpt (SJC)','2009-11-09 00:30:00','Washington Dulles Intl Arpt (IAD)','United Airlines','Confirmed','2014-03-08 20:49:59'),(420,50,'R','United Airlines 88','2009-11-16 16:00:00','Washington Dulles Intl Arpt (IAD)','2009-11-16 19:10:00','San Jose Intl Arpt (SJC)','United Airlines','Confirmed','2014-03-08 20:49:59');
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `signingDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `tripid` int(11) NOT NULL,
  `hotelid` int(11) NOT NULL,
  `hotelname` varchar(35) DEFAULT NULL,
  `checkindate` date DEFAULT NULL,
  `checkoutdate` date DEFAULT NULL,
  `guests` int(11) DEFAULT NULL,
  `bookingstatus` varchar(20) DEFAULT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hotelid`),
  KEY `travel_hotelFK` (`tripid`),
  CONSTRAINT `travel_hotelFK` FOREIGN KEY (`tripid`) REFERENCES `trip` (`tripid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (128,1,'New York Marriott Financial Center','2008-06-16','2008-06-23',1,'Confirmed','2014-03-08 20:49:59'),(199,2,'New York Marriott Financial Center','2008-09-14','2008-09-17',1,'Confirmed','2014-03-08 20:49:59'),(202,3,'Carl E. Quinn hotel and Resort','2008-10-22','2008-10-24',1,'Confirmed','2014-03-08 20:49:59'),(203,4,'Mikimoto Plaza','2008-10-23','2008-10-30',1,'Confirmed','2014-03-08 20:49:59'),(367,5,'The Drake','2008-12-12','2008-12-19',1,'Confirmed','2014-03-08 20:49:59'),(200,6,'Sheraton Washington','2008-06-11','2008-06-18',1,'Confirmed','2014-03-08 20:49:59'),(310,7,'Sheraton Washington','2008-08-03','2008-08-03',1,'Confirmed','2014-03-08 20:49:59'),(333,8,'Tokyo Marriott','2009-02-03','2009-02-09',1,'Confirmed','2014-03-08 20:49:59'),(422,9,'Sheraton Washington','2009-04-11','2009-04-18',1,'Confirmed','2014-03-08 20:49:59'),(455,10,'Octavian Spa Stockholm','2008-05-13','2008-05-20',1,'Confirmed','2014-03-08 20:49:59'),(592,11,'Best Eastern Vostok S hotel','2008-05-16','2008-06-23',1,'Confirmed','2014-03-08 20:49:59'),(201,12,'Sheraton Washington','2008-07-01','2008-07-08',1,'Confirmed','2014-03-08 20:49:59'),(590,13,'Mickeys Hideaway','2008-08-11','2008-08-18',1,'Confirmed','2014-03-08 20:49:59'),(380,14,'Sheraton Washington','2009-10-23','2009-10-30',1,'Confirmed','2014-03-08 20:49:59'),(421,15,'Mayflower hotel','2009-11-09','2009-11-16',1,'Confirmed','2014-03-08 20:49:59'),(100,16,'Hyatt San Francisco','2008-05-01','2008-05-08',1,'Confirmed','2014-03-08 20:49:59'),(159,17,'Park City Ski Lodge','2008-09-01','2008-09-08',1,'Confirmed','2014-03-08 20:49:59'),(252,18,'Omni Chicago','2008-11-01','2008-11-08',1,'Confirmed','2014-03-08 20:49:59'),(359,19,'Sheraton Los Angeles Airport','2009-01-26','2009-01-28',1,'Confirmed','2014-03-08 20:49:59'),(460,20,'Hyatt San Francisco','2009-05-06','2008-05-13',1,'Confirmed','2014-03-08 20:49:59'),(208,21,'Sheraton Washington','2008-06-21','2008-06-28',1,'Confirmed','2014-03-08 20:49:59'),(383,22,'Grenoble Garden Chateau','2009-10-23','2009-10-30',1,'Confirmed','2014-03-08 20:49:59'),(463,23,'Mounment Hostel','2009-06-11','2009-06-18',1,NULL,'2014-03-08 20:49:59');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `personid` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `jobtitle` varchar(50) DEFAULT NULL,
  `frequentflyer` smallint(6) DEFAULT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`personid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Able, Tony','CEO',1,'2014-03-08 20:49:58'),(2,'Black, John','CTO',1,'2014-03-08 20:49:58'),(3,'Kent, Richard','VP',1,'2014-03-08 20:49:58'),(4,'Chen, Larry','VP/CXO - SGMS',0,'2014-03-08 20:49:58'),(5,'Donaldson, Sue','VP',0,'2014-03-08 20:49:58'),(6,'Murrell, Tony','VP - SFE',0,'2014-03-08 20:49:58');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `persontrip`
--

DROP TABLE IF EXISTS `persontrip`;
/*!50001 DROP VIEW IF EXISTS `persontrip`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `persontrip` (
  `tripid` tinyint NOT NULL,
  `name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip` (
  `tripid` int(11) NOT NULL,
  `personid` int(11) NOT NULL,
  `depdate` date DEFAULT NULL,
  `depcity` varchar(32) DEFAULT NULL,
  `destcity` varchar(32) DEFAULT NULL,
  `triptypeid` int(11) NOT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tripid`),
  KEY `travel_trippersonFK` (`personid`),
  KEY `travel_triptypeFK` (`triptypeid`),
  CONSTRAINT `travel_trippersonFK` FOREIGN KEY (`personid`) REFERENCES `person` (`personid`),
  CONSTRAINT `travel_triptypeFK` FOREIGN KEY (`triptypeid`) REFERENCES `triptype` (`triptypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (100,2,'2008-05-01','Aspen','San Francisco',7,'2014-03-08 20:49:59'),(128,1,'2008-06-16','Oakland','New York',4,'2014-03-08 20:49:59'),(159,2,'2008-09-01','Aspen','Park City',4,'2014-03-08 20:49:59'),(198,5,'2008-06-11','San Jose','Grenoble',3,'2014-03-08 20:49:59'),(199,1,'2008-09-14','San Francisco','New York',4,'2014-03-08 20:49:59'),(200,4,'2008-06-11','San Francisco','Washington DC',3,'2014-03-08 20:49:59'),(201,3,'2008-07-01','San Jose','Washington DC',8,'2014-03-08 20:49:59'),(202,1,'2008-10-22','Oakland','Toronto',4,'2014-03-08 20:49:59'),(203,1,'2008-11-23','San Francisco','Tokyo',5,'2014-03-08 20:49:59'),(208,5,'2008-06-21','San Jose','Washington DC',2,'2014-03-08 20:49:59'),(252,2,'2008-11-01','Vail','Chicago',4,'2014-03-08 20:49:59'),(310,4,'2008-08-03','San Jose','Washington DC',3,'2014-03-08 20:49:59'),(333,4,'2009-02-02','San Francisco','Tokyo',5,'2014-03-08 20:49:59'),(359,2,'2009-01-26',NULL,'Los Angeles',4,'2014-03-08 20:49:59'),(367,1,'2008-12-12','San Francisco','Chicago',2,'2014-03-08 20:49:59'),(380,3,'2009-10-23','San Jose','Washington DC',3,'2014-03-08 20:49:59'),(383,5,'2009-10-23','San Jose','Grenoble',3,'2014-03-08 20:49:59'),(420,5,'2009-06-11',NULL,'Philadelphia',8,'2014-03-08 20:49:59'),(421,3,'2009-11-09',NULL,'Washington DC',4,'2014-03-08 20:49:59'),(422,4,'2009-04-11','San Jose','Washington DC',3,'2014-03-08 20:49:59'),(455,4,'2009-05-13','San Francisco','Stockholm',8,'2014-03-08 20:49:59'),(460,2,'2009-05-06','Aspen','San Francisco',4,'2014-03-08 20:49:59'),(463,2,'2009-05-26','Glenwood Springs','Los Angeles',6,'2014-03-08 20:49:59'),(590,3,'2008-08-11','San Jose','Orlando',6,'2014-03-08 20:49:59'),(592,3,'2008-06-16','San Jose','Novosibirsk',10,'2014-03-08 20:49:59');
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triptype`
--

DROP TABLE IF EXISTS `triptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `triptype` (
  `triptypeid` int(11) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `lastupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`triptypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triptype`
--

LOCK TABLES `triptype` WRITE;
/*!40000 ALTER TABLE `triptype` DISABLE KEYS */;
INSERT INTO `triptype` VALUES (1,'TRNG','Training','2014-03-08 20:49:58'),(2,'SALES','Sales','2014-03-08 20:49:58'),(3,'OTHER','Other','2014-03-08 20:49:58'),(4,'PR/AR','Press and Analyst Meeting','2014-03-08 20:49:58'),(5,'OFFSITE','Offsite Meeting','2014-03-08 20:49:58'),(6,'CONF','Conference/Tradeshow','2014-03-08 20:49:58'),(7,'REM MTG','Remote Office Meeting','2014-03-08 20:49:58'),(8,'CUST VST','Customer Visit','2014-03-08 20:49:58'),(9,'RECRUIT','Recruiting','2014-03-08 20:49:58'),(10,'BUS DEV','Business Development','2014-03-08 20:49:58');
/*!40000 ALTER TABLE `triptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validation_table`
--

DROP TABLE IF EXISTS `validation_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validation_table` (
  `keycol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validation_table`
--

LOCK TABLES `validation_table` WRITE;
/*!40000 ALTER TABLE `validation_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `validation_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `persontrip`
--

/*!50001 DROP TABLE IF EXISTS `persontrip`*/;
/*!50001 DROP VIEW IF EXISTS `persontrip`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `persontrip` AS select `trip`.`tripid` AS `tripid`,`person`.`name` AS `name` from (`trip` join `person`) where (`trip`.`personid` = `person`.`personid`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-17 17:57:33
