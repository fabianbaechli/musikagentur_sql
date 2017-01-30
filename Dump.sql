CREATE DATABASE  IF NOT EXISTS `musikagentur` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `musikagentur`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: musikagentur
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `tbl_auftritt`
--

DROP TABLE IF EXISTS `tbl_auftritt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_auftritt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_band` int(11) NOT NULL,
  `fk_veranstaltung` int(11) NOT NULL,
  `fk_dj` int(11) NOT NULL,
  `von` datetime NOT NULL,
  `bis` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_band` (`fk_band`),
  KEY `fk_veranstaltung` (`fk_veranstaltung`),
  KEY `fk_dj` (`fk_dj`),
  CONSTRAINT `tbl_auftritt_ibfk_1` FOREIGN KEY (`fk_band`) REFERENCES `tbl_band` (`id`),
  CONSTRAINT `tbl_auftritt_ibfk_2` FOREIGN KEY (`fk_veranstaltung`) REFERENCES `tbl_veranstaltung` (`id`),
  CONSTRAINT `tbl_auftritt_ibfk_3` FOREIGN KEY (`fk_dj`) REFERENCES `tbl_person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_auftritt`
--

LOCK TABLES `tbl_auftritt` WRITE;
/*!40000 ALTER TABLE `tbl_auftritt` DISABLE KEYS */;
INSERT INTO `tbl_auftritt` VALUES (1,1,1,1,'2017-12-12 18:00:00','2017-12-01 18:30:00'),(2,2,1,2,'2017-12-01 19:00:00','2017-12-01 19:30:00'),(3,3,2,3,'2017-12-01 20:00:00','2017-12-01 20:30:00'),(4,5,3,4,'2017-12-01 23:00:00','2017-12-01 23:30:00'),(5,2,4,4,'2017-12-01 22:15:00','2017-12-01 22:45:00'),(6,5,5,5,'2017-12-01 15:15:00','2017-12-01 16:00:00'),(7,2,3,3,'2017-12-01 13:35:00','2017-12-01 14:00:00'),(8,3,2,1,'2017-12-01 14:00:00','2017-12-01 14:30:00'),(9,4,1,2,'2017-12-01 12:00:00','2017-12-01 12:30:00'),(10,1,3,2,'2017-12-01 21:00:00','2017-12-01 21:30:00'),(11,1,3,3,'2017-12-01 21:30:00','2017-12-01 22:00:00'),(12,2,2,4,'2017-12-01 19:30:00','2017-12-01 20:00:00');
/*!40000 ALTER TABLE `tbl_auftritt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_band`
--

DROP TABLE IF EXISTS `tbl_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_band` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_promoter` int(11) NOT NULL,
  `name_band` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_band` (`name_band`),
  KEY `fk_promoter` (`fk_promoter`),
  CONSTRAINT `tbl_band_ibfk_1` FOREIGN KEY (`fk_promoter`) REFERENCES `tbl_person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_band`
--

LOCK TABLES `tbl_band` WRITE;
/*!40000 ALTER TABLE `tbl_band` DISABLE KEYS */;
INSERT INTO `tbl_band` VALUES (1,1,'Sliky Johnson\'s'),(2,1,'Die Rollenden Steine'),(3,2,'Raped By The Raccoon'),(4,2,'Gibe Me Tha SuCC Boi'),(5,1,'Attack Helicopter');
/*!40000 ALTER TABLE `tbl_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_instrument`
--

DROP TABLE IF EXISTS `tbl_instrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_instrument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_instrument` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_instrument` (`name_instrument`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_instrument`
--

LOCK TABLES `tbl_instrument` WRITE;
/*!40000 ALTER TABLE `tbl_instrument` DISABLE KEYS */;
INSERT INTO `tbl_instrument` VALUES (6,'Drums'),(4,'Gitarre, Akustisch'),(3,'Gitarre, Elektronisch'),(2,'Piano'),(5,'Tamburin'),(1,'Vocal');
/*!40000 ALTER TABLE `tbl_instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_musiker_band`
--

DROP TABLE IF EXISTS `tbl_musiker_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_musiker_band` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_musiker` int(11) NOT NULL,
  `fk_band` int(11) NOT NULL,
  `fk_instrument` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_musiker` (`fk_musiker`),
  KEY `fk_band` (`fk_band`),
  KEY `fk_instrument` (`fk_instrument`),
  CONSTRAINT `tbl_musiker_band_ibfk_1` FOREIGN KEY (`fk_musiker`) REFERENCES `tbl_person` (`id`),
  CONSTRAINT `tbl_musiker_band_ibfk_2` FOREIGN KEY (`fk_band`) REFERENCES `tbl_band` (`id`),
  CONSTRAINT `tbl_musiker_band_ibfk_3` FOREIGN KEY (`fk_instrument`) REFERENCES `tbl_instrument` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_musiker_band`
--

LOCK TABLES `tbl_musiker_band` WRITE;
/*!40000 ALTER TABLE `tbl_musiker_band` DISABLE KEYS */;
INSERT INTO `tbl_musiker_band` VALUES (1,1,2,1),(2,2,2,2),(3,3,2,3),(4,4,2,4),(5,5,3,5),(6,6,3,1),(7,7,3,2),(8,8,3,2),(9,9,3,3),(10,10,3,4),(11,11,4,5),(12,2,5,1),(13,3,4,3),(14,12,4,2),(15,12,1,4);
/*!40000 ALTER TABLE `tbl_musiker_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ort`
--

DROP TABLE IF EXISTS `tbl_ort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plz` int(11) NOT NULL,
  `name_ortschaft` varchar(50) NOT NULL,
  `Provinz` varchar(50) NOT NULL,
  `land` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plz` (`plz`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ort`
--

LOCK TABLES `tbl_ort` WRITE;
/*!40000 ALTER TABLE `tbl_ort` DISABLE KEYS */;
INSERT INTO `tbl_ort` VALUES (1,8320,'Fehraltorf','Zürich','Schweiz'),(2,8442,'Hettlingen','Zürich','Schweiz'),(3,8303,'Bassersdorf','Zürich','Schweiz'),(4,8053,'Zürich Stadt','Zürich','Schweiz'),(5,90079,'Los Angeles','California','United States Of America'),(6,10011,'New York','Colorado','United States Of America');
/*!40000 ALTER TABLE `tbl_ort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_person`
--

DROP TABLE IF EXISTS `tbl_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vorname` varchar(50) NOT NULL,
  `nachname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel_num` varchar(15) NOT NULL,
  `fk_ort` int(11) NOT NULL,
  `strasse` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `tel_num` (`tel_num`),
  KEY `fk_ort` (`fk_ort`),
  CONSTRAINT `tbl_person_ibfk_1` FOREIGN KEY (`fk_ort`) REFERENCES `tbl_ort` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_person`
--

LOCK TABLES `tbl_person` WRITE;
/*!40000 ALTER TABLE `tbl_person` DISABLE KEYS */;
INSERT INTO `tbl_person` VALUES (1,'Fabian','Bächli','fb@spline.ch','0449450663',1,'Chüeferistrasse 14c'),(2,'Fabrice','Bosshard','fabice.bosshard@gmail.com','0449549050',3,'Fliederweg 12'),(3,'Leonard','Schütz','leni.schuetz@me.com','0449430543',6,'Mainstreet 59'),(4,'Dennis','Schäppi','dennis.schaeppi@hotmail.com','0791323212',5,'Marketstreet 94'),(5,'Nico','Lutz','nico.lutz@bluewin.ch','0724561232',4,'Bahnhofstrasse'),(6,'Aline','Freud','aline.freud@bluewin.ch','0734561232',2,'Müllstrasse'),(7,'Demir','Sols','demir.sols@bluewin.ch','0744561232',3,'Hopfweg'),(8,'Henry','Hamat','henry.hamat@bluewin.ch','0764561232',4,'Sürlistrasse'),(9,'Abnam','Solut','as@bluewin.ch','0784561232',5,'Moorweg'),(10,'Savir','Rabish','sr@bluewin.ch','0774561232',5,'Sulmanweg'),(11,'Lolo','kurtz','lolok@bluewin.ch','0794561232',1,'Bahnhofstrasse'),(12,'Alex','Maurer','alex.maurer@gmail.com','0767341232',2,'Föhrenstrasse 32');
/*!40000 ALTER TABLE `tbl_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_veranstaltung`
--

DROP TABLE IF EXISTS `tbl_veranstaltung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_veranstaltung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_veranstaltung` varchar(50) NOT NULL,
  `von` date NOT NULL,
  `bis` date NOT NULL,
  `fk_ort` int(11) NOT NULL,
  `fk_veranstalter` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IX_Veranstaltung_Datum` (`name_veranstaltung`,`von`),
  KEY `fk_ort` (`fk_ort`),
  KEY `fk_veranstalter` (`fk_veranstalter`),
  CONSTRAINT `tbl_veranstaltung_ibfk_1` FOREIGN KEY (`fk_ort`) REFERENCES `tbl_ort` (`id`),
  CONSTRAINT `tbl_veranstaltung_ibfk_2` FOREIGN KEY (`fk_veranstalter`) REFERENCES `tbl_person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_veranstaltung`
--

LOCK TABLES `tbl_veranstaltung` WRITE;
/*!40000 ALTER TABLE `tbl_veranstaltung` DISABLE KEYS */;
INSERT INTO `tbl_veranstaltung` VALUES (1,'Harem Festival','2017-05-27','2017-05-30',1,3),(2,'Frauenfeld','2017-07-06','2017-07-09',2,3),(3,'Greenfield','2017-02-04','2017-02-07',1,2),(4,'Burning Man','2017-03-03','2017-03-10',5,3),(5,'Frauenfeld','2018-07-06','2018-07-09',2,3),(6,'Tomorrowland','2017-04-10','2017-04-24',6,5);
/*!40000 ALTER TABLE `tbl_veranstaltung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'musikagentur'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-30  9:15:45
