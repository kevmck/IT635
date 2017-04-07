-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: apartments
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `apt`
--

DROP TABLE IF EXISTS `apt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apt` (
  `aptnumber` int(11) NOT NULL AUTO_INCREMENT,
  `rent` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `style` varchar(255) NOT NULL,
  `aptage` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `rentalstatus` varchar(1) NOT NULL,
  PRIMARY KEY (`aptnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=1191 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apt`
--

LOCK TABLES `apt` WRITE;
/*!40000 ALTER TABLE `apt` DISABLE KEYS */;
INSERT INTO `apt` VALUES (1101,2200,3,2,'retro',30,'Hackensack','r'),(1102,1200,1,1,'traditional',65,'Union','v'),(1103,1650,3,1,'cottage',95,'Newark','r'),(1104,1725,2,2,'contemporary',15,'Voorhees','r'),(1105,1025,1,1,'mediterranean',55,'Waldwick','v'),(1106,3200,3,2,'traditional',33,'Englewood','v'),(1107,2300,2,1,'contemporary',23,'Paramus','r'),(1108,1350,2,1,'cottage',23,'Hackensack','v'),(1109,2200,2,1,'retro',21,'Lodi','v'),(1110,2300,2,1,'traditional',45,'Westwood','r'),(1111,1900,2,1,'contemporary',35,'Moonachie','v'),(1112,2120,2,2,'contemporary',67,'Upper Saddle River','r'),(1113,4060,3,2,'traditional',50,'Carlstadt','r'),(1114,3280,3,2,'traditional',79,'Oradell','r'),(1115,3320,3,3,'mediterranean',74,'Bergenfield','r'),(1116,920,2,2,'traditional',27,'Oakland','r'),(1117,3660,1,1,'contemporary',25,'East Rutherford','r'),(1118,3650,1,1,'cottage',71,'Ridgefield Park','r'),(1119,4190,3,2,'mediterranean',82,'Paramus','v'),(1120,5200,4,4,'rustic',63,'Lodi','v'),(1121,2570,4,3,'mediterranean',21,'Edgewater','v'),(1122,3730,1,1,'mediterranean',45,'South Hackensack','v'),(1123,5470,4,4,'retro',45,'Rochelle Park','v'),(1124,3920,2,1,'cottage',78,'Leonia','v'),(1125,4800,4,3,'rustic',20,'Wallington','r'),(1126,1660,2,2,'rustic',26,'Saddle Brook','v'),(1127,1580,2,1,'contemporary',13,'Fort Lee','v'),(1128,3700,1,1,'cottage',69,'Upper Saddle River','r'),(1129,4910,2,1,'traditional',85,'Northvale','v'),(1130,1310,1,1,'cottage',47,'Harrington Park','v'),(1131,5070,3,3,'retro',43,'Washington Township','v'),(1132,2250,4,2,'rustic',86,'Teterboro','v'),(1133,1660,1,1,'traditional',81,'Franklin Lakes','v'),(1134,5340,1,1,'cottage',28,'Hackensack','r'),(1135,1130,2,1,'retro',47,'Park Ridge','r'),(1136,3390,3,2,'retro',50,'Maywood','v'),(1137,4600,4,3,'contemporary',77,'Waldwick','r'),(1138,4430,3,1,'retro',14,'Englewood Cliffs','r'),(1139,4110,3,2,'traditional',32,'Wyckoff','r'),(1140,4740,1,1,'retro',30,'Edgewater','r'),(1141,1720,1,1,'traditional',53,'Ridgefield','v'),(1142,4230,1,1,'cottage',55,'Paramus','v'),(1143,4140,1,1,'contemporary',62,'Mahwah','v'),(1144,4890,2,1,'contemporary',71,'East Rutherford','r'),(1145,2660,1,1,'mediterranean',87,'Wyckoff','r'),(1146,2880,2,1,'retro',43,'Little Ferry','v'),(1147,4660,1,1,'rustic',17,'Rockleigh','v'),(1148,5300,2,1,'cottage',24,'Carlstadt','r'),(1149,1690,2,2,'traditional',62,'Garfield','r'),(1150,4240,4,3,'rustic',59,'Edgewater','v'),(1151,1100,3,2,'rustic',62,'Park Ridge','r'),(1152,4750,4,2,'contemporary',21,'Closter','v'),(1153,4890,3,1,'traditional',41,'Glen Rock','r'),(1154,1390,2,2,'mediterranean',26,'Norwood','r'),(1155,2870,1,1,'cottage',17,'Garfield','v'),(1156,1150,2,2,'rustic',78,'Teterboro','v'),(1157,2750,4,3,'cottage',74,'New Milford','v'),(1158,1970,2,1,'rustic',33,'Carlstadt','r'),(1159,3660,4,1,'contemporary',30,'Englewood Cliffs','r'),(1160,5060,1,1,'mediterranean',10,'Mahwah','r'),(1161,1960,1,1,'contemporary',47,'Old Tappan','v'),(1162,4610,3,1,'mediterranean',23,'Paramus','r'),(1163,5130,3,2,'retro',75,'River Edge','v'),(1164,4300,4,3,'contemporary',78,'Paramus','r'),(1165,2790,3,1,'retro',17,'Lyndhurst','r'),(1166,2930,4,1,'contemporary',28,'North Arlington','v'),(1167,1180,1,1,'cottage',70,'Northvale','r'),(1168,2830,1,1,'mediterranean',38,'Wood-Ridge','v'),(1169,2360,1,1,'rustic',40,'South Hackensack','v'),(1170,5370,4,4,'cottage',49,'Maywood','v'),(1171,3030,1,1,'contemporary',38,'Washington Township','v'),(1172,1730,4,1,'traditional',84,'Garfield','r'),(1173,4360,3,1,'retro',43,'Bogota','v'),(1174,1650,1,1,'mediterranean',23,'North Arlington','r'),(1175,1290,1,1,'cottage',16,'Elmwood Park','v'),(1176,5410,4,3,'traditional',25,'Wood-Ridge','v'),(1177,2140,1,1,'mediterranean',22,'River Edge','v'),(1178,4760,1,1,'contemporary',15,'Ho Ho Kus','r'),(1179,2890,1,1,'traditional',66,'Rockleigh','r'),(1180,940,1,1,'cottage',78,'Hillsdale','r'),(1181,2040,1,1,'cottage',71,'Teaneck','r'),(1182,1420,2,2,'traditional',43,'Lodi','v'),(1183,4310,2,2,'cottage',25,'Oradell','v'),(1184,3370,4,3,'contemporary',64,'Mahwah','v'),(1185,1170,2,2,'retro',32,'River Vale','v'),(1186,4090,1,1,'mediterranean',80,'Glen Rock','v'),(1187,3900,2,1,'contemporary',41,'River Edge','v'),(1188,1430,2,2,'contemporary',51,'Wyckoff','v'),(1189,3830,3,3,'mediterranean',42,'Tenafly','v'),(1190,2350,4,4,'traditional',55,'Rockleigh','v');
/*!40000 ALTER TABLE `apt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renter`
--

DROP TABLE IF EXISTS `renter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renter` (
  `renteruname` varchar(255) NOT NULL,
  `locationsearch` varchar(255) NOT NULL,
  `stylesearch` varchar(255) NOT NULL,
  `minrent` int(11) NOT NULL,
  `maxrent` int(11) NOT NULL,
  PRIMARY KEY (`renteruname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renter`
--

LOCK TABLES `renter` WRITE;
/*!40000 ALTER TABLE `renter` DISABLE KEYS */;
INSERT INTO `renter` VALUES ('dj','Lodi','cottage',2300,6000),('jsheriff','waldwick','retro',1500,3600),('kevmck','Hackensack','cottage',2000,4500),('new','Rochelle Park','Rustic',3000,5600),('pmclaren','Englewood','cottage',800,3000),('tmckenzie','Hackensack','retro',1800,3000);
/*!40000 ALTER TABLE `renter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','password','administrator'),('bass','password','renter'),('jsheriff','kevin','renter'),('kevmck','password','renter'),('pmclaren','password','renter'),('tmckenzie','password','renter');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-17  1:39:13
