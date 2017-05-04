-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: apartments
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1-log

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
) ENGINE=InnoDB AUTO_INCREMENT=1706 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apt`
--

LOCK TABLES `apt` WRITE;
/*!40000 ALTER TABLE `apt` DISABLE KEYS */;
INSERT INTO `apt` VALUES (1101,2200,3,2,'retro',30,'Hackensack','r'),(1102,1200,1,1,'traditional',65,'Union','v'),(1103,1650,3,1,'cottage',95,'Newark','r'),(1104,1725,2,2,'contemporary',15,'Voorhees','r'),(1105,1025,1,1,'mediterranean',55,'Waldwick','v'),(1106,3200,3,2,'traditional',33,'Englewood','v'),(1107,2300,2,1,'contemporary',23,'Paramus','r'),(1108,1350,2,1,'cottage',23,'Hackensack','v'),(1109,2200,2,1,'retro',21,'Lodi','v'),(1110,2300,2,1,'traditional',45,'Westwood','r'),(1111,1900,2,1,'contemporary',35,'Moonachie','v'),(1112,2120,2,2,'contemporary',67,'Upper Saddle River','r'),(1113,4060,3,2,'traditional',50,'Carlstadt','r'),(1114,3280,3,2,'traditional',79,'Oradell','r'),(1115,3320,3,3,'mediterranean',74,'Bergenfield','r'),(1116,920,2,2,'traditional',27,'Oakland','r'),(1117,3660,1,1,'contemporary',25,'East Rutherford','r'),(1118,3650,1,1,'cottage',71,'Ridgefield Park','r'),(1119,4190,3,2,'mediterranean',82,'Paramus','v'),(1120,5200,4,4,'rustic',63,'Lodi','v'),(1121,2570,4,3,'mediterranean',21,'Edgewater','v'),(1122,3730,1,1,'mediterranean',45,'South Hackensack','v'),(1123,5470,4,4,'retro',45,'Rochelle Park','v'),(1124,3920,2,1,'cottage',78,'Leonia','v'),(1125,4800,4,3,'rustic',20,'Wallington','r'),(1126,1660,2,2,'rustic',26,'Saddle Brook','v'),(1127,1580,2,1,'contemporary',13,'Fort Lee','v'),(1128,3700,1,1,'cottage',69,'Upper Saddle River','r'),(1129,4910,2,1,'traditional',85,'Northvale','v'),(1130,1310,1,1,'cottage',47,'Harrington Park','v'),(1131,5070,3,3,'retro',43,'Washington Township','v'),(1132,2250,4,2,'rustic',86,'Teterboro','v'),(1133,1660,1,1,'traditional',81,'Franklin Lakes','v'),(1134,5340,1,1,'cottage',28,'Hackensack','r'),(1135,1130,2,1,'retro',47,'Park Ridge','r'),(1136,3390,3,2,'retro',50,'Maywood','v'),(1137,4600,4,3,'contemporary',77,'Waldwick','r'),(1138,4430,3,1,'retro',14,'Englewood Cliffs','r'),(1139,4110,3,2,'traditional',32,'Wyckoff','r'),(1140,4740,1,1,'retro',30,'Edgewater','r'),(1141,1720,1,1,'traditional',53,'Ridgefield','v'),(1142,4230,1,1,'cottage',55,'Paramus','v'),(1143,4140,1,1,'contemporary',62,'Mahwah','v'),(1144,4890,2,1,'contemporary',71,'East Rutherford','r'),(1145,2660,1,1,'mediterranean',87,'Wyckoff','r'),(1146,2880,2,1,'retro',43,'Little Ferry','v'),(1147,4660,1,1,'rustic',17,'Rockleigh','v'),(1148,5300,2,1,'cottage',24,'Carlstadt','r'),(1149,1690,2,2,'traditional',62,'Garfield','r'),(1150,4240,4,3,'rustic',59,'Edgewater','v'),(1151,1100,3,2,'rustic',62,'Park Ridge','r'),(1152,4750,4,2,'contemporary',21,'Closter','v'),(1153,4890,3,1,'traditional',41,'Glen Rock','r'),(1154,1390,2,2,'mediterranean',26,'Norwood','r'),(1155,2870,1,1,'cottage',17,'Garfield','v'),(1156,1150,2,2,'rustic',78,'Teterboro','v'),(1157,2750,4,3,'cottage',74,'New Milford','v'),(1158,1970,2,1,'rustic',33,'Carlstadt','r'),(1159,3660,4,1,'contemporary',30,'Englewood Cliffs','r'),(1160,5060,1,1,'mediterranean',10,'Mahwah','r'),(1161,1960,1,1,'contemporary',47,'Old Tappan','v'),(1162,4610,3,1,'mediterranean',23,'Paramus','r'),(1163,5130,3,2,'retro',75,'River Edge','v'),(1164,4300,4,3,'contemporary',78,'Paramus','r'),(1165,2790,3,1,'retro',17,'Lyndhurst','r'),(1166,2930,4,1,'contemporary',28,'North Arlington','v'),(1167,1180,1,1,'cottage',70,'Northvale','r'),(1168,2830,1,1,'mediterranean',38,'Wood-Ridge','v'),(1169,2360,1,1,'rustic',40,'South Hackensack','v'),(1170,5370,4,4,'cottage',49,'Maywood','v'),(1171,3030,1,1,'contemporary',38,'Washington Township','v'),(1172,1730,4,1,'traditional',84,'Garfield','r'),(1173,4360,3,1,'retro',43,'Bogota','v'),(1174,1650,1,1,'mediterranean',23,'North Arlington','r'),(1175,1290,1,1,'cottage',16,'Elmwood Park','v'),(1176,5410,4,3,'traditional',25,'Wood-Ridge','v'),(1177,2140,1,1,'mediterranean',22,'River Edge','v'),(1178,4760,1,1,'contemporary',15,'Ho Ho Kus','r'),(1179,2890,1,1,'traditional',66,'Rockleigh','r'),(1180,940,1,1,'cottage',78,'Hillsdale','r'),(1181,2040,1,1,'cottage',71,'Teaneck','r'),(1182,1420,2,2,'traditional',43,'Lodi','v'),(1183,4310,2,2,'cottage',25,'Oradell','v'),(1184,3370,4,3,'contemporary',64,'Mahwah','v'),(1185,1170,2,2,'retro',32,'River Vale','v'),(1186,4090,1,1,'mediterranean',80,'Glen Rock','v'),(1187,3900,2,1,'contemporary',41,'River Edge','v'),(1188,1430,2,2,'contemporary',51,'Wyckoff','v'),(1189,3830,3,3,'mediterranean',42,'Tenafly','v'),(1190,2350,4,4,'traditional',55,'Rockleigh','v'),(1191,2010,4,4,'retro',17,'Wood-Ridge','v'),(1192,5340,1,1,'retro',58,'Waldwick','v'),(1193,2200,3,2,'mediterranean',39,'Harrington Park','v'),(1194,1760,2,1,'contemporary',38,'Woodcliff Lake','r'),(1195,970,4,2,'retro',55,'Rockleigh','r'),(1196,2310,3,3,'mediterranean',39,'River Vale','v'),(1197,3170,2,2,'cottage',27,'Rutherford','r'),(1198,4580,2,1,'cottage',27,'Hackensack','v'),(1199,5470,4,1,'rustic',83,'Hillsdale','r'),(1200,1870,3,2,'cottage',55,'Norwood','v'),(1201,2230,4,1,'mediterranean',63,'Franklin Lakes','r'),(1202,920,3,2,'cottage',53,'Old Tappan','v'),(1203,2880,2,1,'traditional',81,'Norwood','v'),(1204,3920,4,4,'cottage',59,'Palisades Park','v'),(1205,3160,2,1,'contemporary',78,'Paramus','v'),(1206,3540,4,2,'cottage',87,'Oakland','r'),(1207,5410,2,1,'retro',38,'Teaneck','v'),(1208,4250,3,1,'rustic',35,'Haworth','r'),(1209,3970,3,1,'contemporary',39,'Lyndhurst','r'),(1210,1920,4,2,'mediterranean',70,'Westwood','r'),(1211,1820,4,3,'contemporary',33,'Ho Ho Kus','v'),(1212,4080,3,2,'contemporary',46,'Oakland','v'),(1213,4440,2,1,'contemporary',16,'Franklin Lakes','r'),(1214,3440,3,3,'rustic',62,'Old Tappan','v'),(1215,4040,4,4,'mediterranean',60,'Demarest','v'),(1216,3380,2,1,'rustic',33,'Harrington Park','r'),(1217,2160,1,1,'contemporary',58,'Mahwah','r'),(1218,2090,1,1,'contemporary',45,'Westwood','v'),(1219,3170,4,4,'cottage',40,'Saddle River','v'),(1220,4830,1,1,'contemporary',68,'Maywood','v'),(1221,4400,3,3,'contemporary',76,'Fairview','r'),(1222,3510,2,2,'cottage',55,'Oakland','r'),(1223,3450,3,1,'rustic',21,'Oakland','r'),(1224,3980,1,1,'retro',38,'East Rutherford','r'),(1225,2090,1,1,'traditional',84,'Allendale','r'),(1226,2920,4,2,'retro',26,'Haworth','v'),(1227,5450,4,2,'cottage',27,'Closter','v'),(1228,4260,3,3,'traditional',74,'Saddle Brook','r'),(1229,4670,1,1,'traditional',37,'Carlstadt','r'),(1230,3130,2,2,'mediterranean',26,'Fair Lawn','v'),(1231,3590,1,1,'retro',48,'Garfield','r'),(1232,4440,4,3,'retro',66,'Wyckoff','r'),(1233,3680,1,1,'rustic',42,'Franklin Lakes','v'),(1234,3370,4,3,'rustic',28,'Wyckoff','r'),(1235,5370,2,2,'contemporary',30,'Hillsdale','r'),(1236,5140,2,2,'contemporary',62,'Little Ferry','v'),(1237,1450,1,1,'contemporary',56,'Waldwick','r'),(1238,3970,1,1,'contemporary',19,'Midland Park','v'),(1239,2580,2,1,'mediterranean',24,'Franklin Lakes','v'),(1240,3490,4,2,'rustic',71,'Moonachie','r'),(1241,2830,2,1,'traditional',26,'Wood-Ridge','v'),(1242,1320,4,4,'cottage',76,'Ridgewood','v'),(1243,1440,3,1,'retro',13,'Old Tappan','r'),(1244,4100,4,4,'cottage',72,'Hackensack','r'),(1245,4440,2,2,'mediterranean',38,'Bogota','v'),(1246,5120,2,1,'rustic',86,'Leonia','r'),(1247,4470,4,1,'mediterranean',52,'Dumont','v'),(1248,5070,4,3,'cottage',45,'Park Ridge','r'),(1249,2370,2,2,'contemporary',14,'Cresskill','r'),(1250,3330,1,1,'contemporary',63,'Ramsey','v'),(1251,3340,2,2,'traditional',32,'Englewood Cliffs','v'),(1252,2580,4,1,'traditional',79,'Wallington','r'),(1253,4090,4,3,'retro',83,'Fairview','v'),(1254,3870,1,1,'rustic',41,'Rutherford','v'),(1255,3350,3,1,'mediterranean',38,'Park Ridge','r'),(1256,2340,3,3,'contemporary',65,'Emerson','r'),(1257,4520,2,2,'rustic',83,'Westwood','r'),(1258,3980,4,4,'contemporary',64,'Washington Township','r'),(1259,3470,3,1,'retro',27,'Hasbrouck Heights','v'),(1260,2680,2,2,'contemporary',60,'Montvale','r'),(1261,4710,4,4,'retro',75,'Oakland','v'),(1262,2180,4,1,'cottage',76,'Lyndhurst','r'),(1263,1030,1,1,'retro',54,'Old Tappan','r'),(1264,1670,1,1,'retro',63,'Rochelle Park','v'),(1265,1410,3,1,'traditional',66,'Closter','v'),(1266,3480,4,1,'traditional',46,'Wallington','v'),(1267,3680,1,1,'traditional',12,'South Hackensack','v'),(1268,3980,3,1,'contemporary',17,'Norwood','v'),(1269,2720,3,2,'cottage',33,'Demarest','v'),(1270,1340,3,1,'contemporary',67,'Englewood Cliffs','v'),(1271,1550,2,1,'rustic',22,'Bergenfield','v'),(1272,3180,3,1,'rustic',29,'Glen Rock','v'),(1273,1680,1,1,'traditional',28,'Allendale','r'),(1274,5280,1,1,'contemporary',28,'Ridgefield Park','v'),(1275,2570,1,1,'retro',51,'Woodcliff Lake','r'),(1276,4700,2,1,'cottage',29,'Garfield','r'),(1277,3300,4,4,'mediterranean',81,'Harrington Park','v'),(1278,4910,3,1,'contemporary',48,'Rutherford','v'),(1279,3790,4,4,'mediterranean',26,'Waldwick','v'),(1280,3010,4,3,'rustic',31,'Carlstadt','r'),(1281,5080,1,1,'traditional',76,'Harrington Park','v'),(1282,2180,3,3,'mediterranean',22,'East Rutherford','r'),(1283,1470,3,1,'cottage',35,'Cresskill','r'),(1284,2440,4,3,'mediterranean',48,'Lyndhurst','r'),(1285,4210,3,3,'mediterranean',71,'Mahwah','v'),(1286,2550,2,1,'mediterranean',63,'Hackensack','r'),(1287,5150,2,1,'rustic',19,'Harrington Park','v'),(1288,5360,3,3,'cottage',68,'Elmwood Park','v'),(1289,4870,2,2,'contemporary',37,'Emerson','v'),(1290,2740,4,3,'contemporary',74,'Hackensack','r'),(1291,3720,2,2,'mediterranean',42,'Harrington Park','v'),(1292,5080,4,1,'cottage',53,'North Arlington','v'),(1293,3510,1,1,'retro',59,'Park Ridge','r'),(1294,3490,3,1,'traditional',23,'Wyckoff','v'),(1295,3120,3,1,'traditional',49,'Upper Saddle River','r'),(1296,3890,1,1,'rustic',53,'Hackensack','v'),(1297,2920,2,2,'retro',83,'Englewood Cliffs','v'),(1298,1690,3,2,'cottage',87,'Lyndhurst','r'),(1299,2010,4,4,'cottage',85,'Rutherford','r'),(1300,4820,1,1,'contemporary',46,'Ho Ho Kus','v'),(1301,4750,1,1,'traditional',39,'Moonachie','r'),(1302,2120,2,2,'cottage',16,'Leonia','v'),(1303,1210,3,1,'mediterranean',69,'Englewood','v'),(1304,2030,3,3,'traditional',66,'Englewood Cliffs','v'),(1305,1300,3,3,'contemporary',14,'Fair Lawn','v'),(1306,3500,4,3,'contemporary',57,'East Rutherford','r'),(1307,1040,1,1,'contemporary',14,'Ridgefield','v'),(1308,3140,1,1,'retro',72,'Edgewater','r'),(1309,1300,4,4,'traditional',65,'Norwood','r'),(1310,3660,2,2,'rustic',39,'Hasbrouck Heights','v'),(1311,4260,2,2,'rustic',13,'Wyckoff','r'),(1312,3220,1,1,'mediterranean',22,'Edgewater','r'),(1313,1410,4,2,'mediterranean',72,'Leonia','r'),(1314,4400,4,2,'retro',44,'Mahwah','v'),(1315,3770,2,2,'cottage',71,'Tenafly','v'),(1316,5350,4,3,'rustic',49,'Rochelle Park','r'),(1317,1300,3,1,'rustic',82,'Fairview','r'),(1318,5140,4,1,'retro',61,'Garfield','v'),(1319,3500,1,1,'cottage',16,'Englewood','r'),(1320,3340,3,1,'mediterranean',11,'Tenafly','v'),(1321,5250,2,2,'rustic',82,'Northvale','v'),(1322,1910,3,1,'contemporary',41,'Allendale','v'),(1323,5180,4,1,'contemporary',67,'Fairview','r'),(1324,2250,1,1,'traditional',59,'Carlstadt','r'),(1325,4410,4,4,'cottage',25,'Cliffside Park','r'),(1326,5060,2,1,'traditional',48,'Emerson','v'),(1327,3820,4,2,'rustic',73,'Wood-Ridge','r'),(1328,5340,2,1,'rustic',38,'Saddle Brook','v'),(1329,3170,1,1,'mediterranean',45,'Ridgewood','r'),(1330,2670,3,1,'cottage',45,'Maywood','r'),(1331,4310,4,3,'traditional',69,'Fairview','v'),(1332,1480,3,3,'rustic',65,'Saddle Brook','v'),(1333,1200,3,3,'cottage',33,'Fort Lee','r'),(1334,3270,1,1,'traditional',38,'Northvale','r'),(1335,2770,3,3,'contemporary',48,'Midland Park','r'),(1336,5200,1,1,'cottage',73,'Cliffside Park','r'),(1337,1990,3,2,'retro',61,'Lodi','r'),(1338,2620,4,1,'traditional',51,'Wood-Ridge','v'),(1339,1170,2,2,'cottage',49,'Carlstadt','r'),(1340,3280,4,1,'traditional',17,'Saddle River','r'),(1341,4300,2,1,'traditional',16,'River Edge','r'),(1342,1130,3,3,'rustic',63,'Oakland','v'),(1343,1180,4,4,'cottage',66,'Bergenfield','v'),(1344,2830,2,1,'mediterranean',12,'Fairview','r'),(1345,4290,4,3,'retro',61,'Rutherford','v'),(1346,4780,3,2,'rustic',44,'Washington Township','r'),(1347,5420,1,1,'mediterranean',32,'Hillsdale','r'),(1348,5260,2,1,'rustic',51,'Ridgefield Park','r'),(1349,3080,4,2,'traditional',51,'Leonia','r'),(1350,4240,4,1,'cottage',68,'Alpine','v'),(1351,4760,3,3,'mediterranean',86,'Lodi','v'),(1352,2850,4,2,'contemporary',59,'Hasbrouck Heights','v'),(1353,2110,4,2,'rustic',77,'Carlstadt','v'),(1354,4520,2,1,'retro',16,'Lyndhurst','v'),(1355,2940,2,2,'cottage',37,'Rockleigh','r'),(1356,2690,1,1,'retro',69,'Cresskill','v'),(1357,3020,4,1,'contemporary',56,'Upper Saddle River','r'),(1358,1850,3,1,'cottage',41,'Rutherford','r'),(1359,1720,2,1,'cottage',27,'Hackensack','r'),(1360,1920,3,3,'traditional',74,'Haworth','r'),(1361,2900,3,1,'rustic',14,'Tenafly','r'),(1362,5070,3,2,'rustic',59,'Edgewater','v'),(1363,3440,4,2,'contemporary',79,'Fort Lee','r'),(1364,2100,1,1,'cottage',55,'Saddle Brook','r'),(1365,2550,2,2,'cottage',57,'Westwood','v'),(1366,4300,2,1,'contemporary',66,'East Rutherford','r'),(1367,3230,3,2,'retro',38,'Washington Township','v'),(1368,1810,1,1,'cottage',55,'Hasbrouck Heights','v'),(1369,4140,1,1,'cottage',51,'Ridgewood','v'),(1370,3760,2,2,'traditional',79,'Emerson','v'),(1371,4290,1,1,'traditional',10,'River Vale','r'),(1372,4360,1,1,'traditional',53,'Hillsdale','r'),(1373,4660,3,2,'mediterranean',38,'Ridgefield Park','r'),(1374,2340,4,2,'traditional',71,'Alpine','r'),(1375,3230,1,1,'rustic',42,'Wallington','v'),(1376,1160,1,1,'cottage',84,'Oakland','v'),(1377,5160,2,1,'traditional',23,'Ridgefield','r'),(1378,1870,2,1,'retro',70,'Fair Lawn','v'),(1379,1170,1,1,'cottage',67,'Closter','r'),(1380,2300,3,2,'contemporary',13,'Allendale','v'),(1381,3290,4,1,'traditional',16,'Harrington Park','r'),(1382,3270,4,4,'traditional',29,'Garfield','r'),(1383,4420,3,3,'mediterranean',14,'Tenafly','v'),(1384,3010,2,1,'rustic',32,'Wyckoff','v'),(1385,4760,4,2,'traditional',14,'Fair Lawn','r'),(1386,3020,2,2,'rustic',34,'Ho Ho Kus','v'),(1387,5440,2,2,'retro',10,'Hackensack','v'),(1388,5460,2,1,'contemporary',66,'Rockleigh','r'),(1389,1210,2,1,'cottage',56,'Ho Ho Kus','r'),(1390,4440,2,2,'cottage',72,'East Rutherford','r'),(1391,3050,1,1,'cottage',44,'Ridgefield','v'),(1392,4880,2,1,'retro',63,'Ridgefield Park','r'),(1393,1810,4,1,'retro',71,'Tenafly','r'),(1394,5080,4,1,'mediterranean',73,'Tenafly','r'),(1395,2190,2,1,'contemporary',87,'Northvale','v'),(1396,4150,4,3,'rustic',84,'Hackensack','r'),(1397,3990,3,1,'traditional',11,'Glen Rock','v'),(1398,5130,2,2,'mediterranean',12,'Fort Lee','v'),(1399,2110,1,1,'mediterranean',75,'Mahwah','v'),(1400,4980,4,4,'contemporary',76,'Paramus','r'),(1401,1440,4,4,'traditional',11,'Maywood','r'),(1402,2510,1,1,'cottage',48,'Ridgefield','v'),(1403,3840,2,1,'contemporary',73,'North Arlington','v'),(1404,1700,3,2,'contemporary',66,'Westwood','v'),(1405,4230,3,1,'mediterranean',13,'Rochelle Park','v'),(1406,1450,2,1,'rustic',74,'Fort Lee','v'),(1407,4350,1,1,'mediterranean',25,'Washington Township','v'),(1408,4180,4,3,'mediterranean',13,'Rockleigh','r'),(1409,1650,4,4,'cottage',84,'Northvale','v'),(1410,3630,3,3,'retro',71,'Elmwood Park','r'),(1411,4760,2,2,'rustic',86,'North Arlington','v'),(1412,5360,3,3,'contemporary',60,'Alpine','r'),(1413,4260,4,2,'cottage',35,'Old Tappan','r'),(1414,3540,2,1,'contemporary',26,'Rochelle Park','r'),(1415,3080,4,3,'contemporary',40,'River Vale','r'),(1416,4270,4,4,'traditional',14,'Garfield','r'),(1417,5440,4,4,'traditional',31,'Northvale','r'),(1418,2300,3,3,'contemporary',73,'Carlstadt','v'),(1419,1160,1,1,'traditional',83,'Midland Park','r'),(1420,2820,4,4,'retro',84,'South Hackensack','r'),(1421,4150,2,2,'contemporary',82,'Montvale','v'),(1422,1400,1,1,'cottage',62,'Carlstadt','r'),(1423,3710,4,1,'traditional',33,'Norwood','v'),(1424,1070,4,4,'retro',76,'Franklin Lakes','v'),(1425,5270,2,2,'cottage',17,'Upper Saddle River','r'),(1426,3950,2,2,'mediterranean',74,'Leonia','v'),(1427,2140,1,1,'traditional',13,'Ho Ho Kus','v'),(1428,4840,2,2,'mediterranean',81,'South Hackensack','r'),(1429,5280,1,1,'cottage',27,'Dumont','r'),(1430,1660,1,1,'rustic',23,'Cliffside Park','v'),(1431,2900,3,3,'retro',74,'North Arlington','v'),(1432,5460,4,4,'rustic',66,'Fort Lee','v'),(1433,2790,3,2,'retro',42,'Wallington','r'),(1434,1600,4,3,'retro',40,'Fort Lee','v'),(1435,4060,4,1,'mediterranean',38,'Moonachie','r'),(1436,2150,1,1,'contemporary',42,'Hillsdale','r'),(1437,3950,4,1,'traditional',38,'Moonachie','v'),(1438,1650,4,4,'retro',32,'Lodi','r'),(1439,1920,4,4,'mediterranean',21,'Fort Lee','r'),(1440,3260,2,1,'rustic',85,'Allendale','v'),(1441,3830,4,1,'rustic',50,'Maywood','r'),(1442,1550,4,1,'mediterranean',77,'Leonia','v'),(1443,5250,3,3,'traditional',29,'Garfield','r'),(1444,5300,1,1,'retro',57,'Saddle Brook','v'),(1445,1690,3,2,'mediterranean',60,'Lodi','v'),(1446,2250,3,1,'contemporary',52,'Demarest','v'),(1447,2400,1,1,'rustic',16,'Franklin Lakes','v'),(1448,4380,1,1,'rustic',59,'Hackensack','r'),(1449,5080,1,1,'traditional',71,'Lyndhurst','r'),(1450,5320,1,1,'mediterranean',33,'Old Tappan','r'),(1451,2950,2,1,'traditional',18,'Ridgewood','v'),(1452,3450,4,4,'retro',86,'Closter','r'),(1453,5140,3,3,'rustic',33,'Norwood','v'),(1454,3710,1,1,'retro',77,'Northvale','v'),(1455,1350,3,2,'traditional',33,'Washington Township','r'),(1456,2710,2,1,'traditional',54,'Wyckoff','r'),(1457,2060,2,1,'cottage',22,'Franklin Lakes','r'),(1458,4760,4,4,'mediterranean',13,'Edgewater','v'),(1459,3210,3,3,'traditional',85,'Teaneck','r'),(1460,2490,1,1,'mediterranean',61,'Lodi','v'),(1461,5220,2,1,'traditional',12,'Ridgewood','v'),(1462,4060,2,2,'rustic',35,'South Hackensack','r'),(1463,1490,3,1,'mediterranean',69,'Upper Saddle River','r'),(1464,1300,4,2,'rustic',22,'Rockleigh','v'),(1465,2030,3,3,'mediterranean',16,'Closter','r'),(1466,2980,2,2,'rustic',63,'Ramsey','r'),(1467,1290,1,1,'retro',17,'Ho Ho Kus','v'),(1468,2280,4,2,'mediterranean',18,'Wallington','v'),(1469,2330,1,1,'mediterranean',13,'Montvale','v'),(1470,3050,4,1,'contemporary',73,'Norwood','r'),(1471,4260,3,3,'cottage',40,'Midland Park','v'),(1472,4850,4,2,'rustic',47,'River Vale','v'),(1473,1520,1,1,'traditional',86,'Englewood','v'),(1474,4200,1,1,'contemporary',47,'Fairview','r'),(1475,3520,1,1,'mediterranean',46,'Teterboro','v'),(1476,3980,1,1,'retro',45,'Closter','v'),(1477,1930,2,1,'mediterranean',86,'Mahwah','v'),(1478,5490,3,1,'cottage',81,'Hasbrouck Heights','r'),(1479,2840,4,4,'mediterranean',79,'Hackensack','v'),(1480,2210,4,1,'traditional',42,'Rochelle Park','v'),(1481,1750,1,1,'mediterranean',48,'Elmwood Park','r'),(1482,2890,3,1,'traditional',31,'Rochelle Park','r'),(1483,2450,3,1,'cottage',14,'Cliffside Park','r'),(1484,4810,3,3,'cottage',57,'Saddle River','v'),(1485,5170,1,1,'contemporary',59,'Wyckoff','r'),(1486,2070,4,2,'traditional',47,'Oakland','r'),(1487,3000,2,1,'cottage',25,'River Edge','v'),(1488,2630,2,2,'rustic',23,'River Vale','r'),(1489,4180,4,3,'retro',11,'Garfield','r'),(1490,4390,2,1,'mediterranean',32,'Emerson','v'),(1491,2260,3,1,'mediterranean',22,'Cresskill','v'),(1492,2280,3,3,'mediterranean',21,'Oradell','r'),(1493,1800,1,1,'rustic',72,'Montvale','r'),(1494,4260,3,2,'mediterranean',12,'Westwood','r'),(1495,1020,3,2,'traditional',40,'Westwood','r'),(1496,1960,2,2,'retro',77,'Bergenfield','r'),(1497,5090,4,1,'traditional',19,'Ho Ho Kus','r'),(1498,3570,3,3,'contemporary',66,'Little Ferry','v'),(1499,1200,2,1,'retro',33,'Fairview','v'),(1500,2580,1,1,'mediterranean',17,'Tenafly','v'),(1501,2300,2,1,'cottage',56,'Lodi','v'),(1502,3950,2,1,'retro',54,'Norwood','r'),(1503,5310,1,1,'cottage',20,'Franklin Lakes','v'),(1504,2250,2,1,'cottage',40,'Saddle River','r'),(1505,2330,3,1,'mediterranean',35,'Maywood','v'),(1506,4780,2,2,'retro',23,'Lyndhurst','r'),(1507,5480,1,1,'mediterranean',54,'Northvale','r'),(1508,1650,2,2,'mediterranean',42,'South Hackensack','r'),(1509,1120,1,1,'rustic',66,'Rochelle Park','v'),(1510,2730,1,1,'retro',38,'Saddle Brook','r'),(1511,3580,3,2,'rustic',46,'Park Ridge','v'),(1512,4690,2,2,'retro',85,'Moonachie','r'),(1513,4150,1,1,'contemporary',84,'Closter','v'),(1514,3360,4,2,'contemporary',60,'Cliffside Park','v'),(1515,1150,4,2,'contemporary',45,'Allendale','v'),(1516,1860,1,1,'contemporary',82,'Westwood','v'),(1517,3200,1,1,'contemporary',71,'Westwood','v'),(1518,1470,2,2,'traditional',16,'Leonia','v'),(1519,1030,3,3,'cottage',75,'Fort Lee','r'),(1520,5150,3,1,'retro',72,'Wood-Ridge','r'),(1521,2300,3,3,'retro',15,'River Edge','r'),(1522,2600,3,3,'rustic',82,'Englewood','v'),(1523,1590,2,1,'mediterranean',55,'South Hackensack','r'),(1524,5360,2,1,'mediterranean',59,'Wood-Ridge','r'),(1525,2460,4,2,'cottage',47,'Little Ferry','r'),(1526,1570,1,1,'contemporary',18,'Emerson','r'),(1527,5490,3,1,'rustic',62,'Hasbrouck Heights','r'),(1528,3290,3,1,'mediterranean',85,'Oradell','v'),(1529,5040,1,1,'retro',27,'Englewood Cliffs','v'),(1530,2390,4,2,'retro',33,'Ridgewood','v'),(1531,4980,2,1,'cottage',52,'Garfield','r'),(1532,2270,2,1,'retro',35,'Paramus','r'),(1533,970,2,2,'mediterranean',83,'Ridgefield','v'),(1534,4370,4,1,'rustic',37,'Garfield','r'),(1535,2110,4,4,'contemporary',13,'Franklin Lakes','r'),(1536,3840,1,1,'cottage',82,'Wood-Ridge','v'),(1537,3140,2,2,'mediterranean',82,'East Rutherford','v'),(1538,1890,1,1,'mediterranean',77,'Maywood','v'),(1539,1680,3,1,'traditional',81,'Haworth','v'),(1540,3390,3,2,'contemporary',40,'Leonia','v'),(1541,3270,2,1,'rustic',40,'Closter','r'),(1542,4730,2,1,'traditional',47,'Fairview','r'),(1543,1110,4,2,'contemporary',50,'Rochelle Park','v'),(1544,1730,1,1,'traditional',24,'New Milford','r'),(1545,4170,4,3,'contemporary',62,'Allendale','r'),(1546,2540,1,1,'cottage',85,'Upper Saddle River','r'),(1547,3940,1,1,'retro',70,'Allendale','v'),(1548,2140,2,1,'retro',21,'Waldwick','r'),(1549,3420,3,2,'rustic',85,'Emerson','v'),(1550,2040,4,3,'contemporary',79,'Tenafly','v'),(1551,3080,2,1,'retro',45,'Allendale','v'),(1552,4430,3,3,'cottage',37,'Waldwick','r'),(1553,1670,4,1,'traditional',49,'Westwood','r'),(1554,1840,3,3,'mediterranean',56,'Alpine','v'),(1555,4990,4,1,'retro',64,'South Hackensack','r'),(1556,1800,4,2,'mediterranean',46,'North Arlington','r'),(1557,1000,1,1,'retro',31,'Glen Rock','r'),(1558,4270,2,1,'traditional',64,'Allendale','v'),(1559,4150,4,1,'cottage',22,'Northvale','r'),(1560,4030,2,2,'rustic',58,'East Rutherford','r'),(1561,5390,2,1,'traditional',49,'Leonia','r'),(1562,1590,3,2,'rustic',78,'Carlstadt','r'),(1563,4140,4,4,'mediterranean',68,'Upper Saddle River','r'),(1564,3380,4,3,'traditional',84,'Hasbrouck Heights','r'),(1565,4360,4,4,'contemporary',68,'Ridgefield Park','r'),(1566,5110,2,1,'mediterranean',28,'Alpine','v'),(1567,3820,4,1,'traditional',81,'Wallington','v'),(1568,4080,2,1,'traditional',77,'Ridgewood','v'),(1569,1840,3,1,'retro',35,'Washington Township','v'),(1570,2160,3,1,'retro',55,'Franklin Lakes','r'),(1571,4560,1,1,'retro',35,'North Arlington','v'),(1572,2380,2,2,'retro',54,'Bergenfield','v'),(1573,5480,3,3,'cottage',43,'Teterboro','v'),(1574,3240,1,1,'contemporary',16,'Bergenfield','v'),(1575,4520,4,1,'traditional',58,'Saddle River','v'),(1576,3390,4,4,'mediterranean',11,'Westwood','v'),(1577,5310,2,1,'traditional',17,'Washington Township','r'),(1578,4230,2,2,'rustic',44,'Fort Lee','r'),(1579,4160,2,2,'rustic',64,'Haworth','v'),(1580,1430,4,4,'mediterranean',44,'Bogota','r'),(1581,5060,2,2,'mediterranean',19,'Bogota','v'),(1582,1780,1,1,'cottage',44,'Waldwick','r'),(1583,1950,3,2,'cottage',72,'Midland Park','v'),(1584,3430,3,3,'mediterranean',19,'Northvale','r'),(1585,2700,1,1,'contemporary',84,'South Hackensack','v'),(1586,4010,1,1,'traditional',28,'Woodcliff Lake','r'),(1587,4520,4,2,'mediterranean',35,'Oradell','v'),(1588,4220,2,1,'traditional',37,'Allendale','v'),(1589,4280,2,2,'rustic',45,'East Rutherford','r'),(1590,5390,2,2,'mediterranean',27,'North Arlington','v'),(1591,3240,2,1,'rustic',12,'Cresskill','r'),(1592,3350,4,2,'cottage',74,'Upper Saddle River','r'),(1593,4810,3,2,'traditional',55,'Englewood','v'),(1594,3710,1,1,'contemporary',84,'Closter','r'),(1595,2430,2,1,'contemporary',67,'Garfield','v'),(1596,2380,2,1,'contemporary',57,'Alpine','r'),(1597,2670,4,4,'retro',35,'Englewood','r'),(1598,1780,2,2,'contemporary',85,'Ridgewood','v'),(1599,2240,1,1,'contemporary',56,'Rockleigh','v'),(1600,3290,3,1,'cottage',37,'Wallington','v'),(1601,2300,1,1,'mediterranean',67,'Wallington','r'),(1602,3280,2,2,'mediterranean',46,'River Vale','v'),(1603,3860,1,1,'contemporary',57,'Elmwood Park','r'),(1604,2650,4,4,'rustic',62,'Paramus','r'),(1605,920,4,2,'cottage',54,'South Hackensack','v'),(1606,1920,4,1,'mediterranean',20,'Little Ferry','v'),(1607,3480,4,2,'retro',36,'Leonia','r'),(1608,1780,4,1,'mediterranean',33,'Moonachie','r'),(1609,1080,3,2,'cottage',51,'Hasbrouck Heights','r'),(1610,5070,2,2,'contemporary',48,'North Arlington','v'),(1611,2160,1,1,'rustic',17,'Franklin Lakes','r'),(1612,3930,4,2,'retro',14,'River Vale','r'),(1613,4770,4,3,'traditional',80,'North Arlington','r'),(1614,3950,3,3,'cottage',87,'Saddle River','r'),(1615,1600,4,4,'cottage',85,'Westwood','r'),(1616,2990,2,1,'retro',24,'Bogota','v'),(1617,3490,4,3,'traditional',32,'Ho Ho Kus','v'),(1618,4680,4,4,'retro',87,'Waldwick','v'),(1619,4800,2,1,'cottage',64,'Franklin Lakes','r'),(1620,3490,1,1,'traditional',43,'Park Ridge','r'),(1621,3710,1,1,'contemporary',64,'Lodi','v'),(1622,1480,4,2,'retro',32,'Emerson','v'),(1623,5250,4,1,'rustic',46,'Paramus','v'),(1624,1180,2,1,'traditional',30,'River Edge','v'),(1625,5460,1,1,'rustic',44,'Englewood','v'),(1626,4540,3,2,'retro',60,'Wyckoff','v'),(1627,3670,4,3,'mediterranean',21,'Franklin Lakes','r'),(1628,2680,2,2,'mediterranean',77,'Englewood','v'),(1629,2860,3,2,'traditional',80,'Ridgewood','r'),(1630,3570,4,4,'mediterranean',36,'Palisades Park','v'),(1631,1590,4,1,'contemporary',65,'Woodcliff Lake','v'),(1632,1710,1,1,'rustic',30,'Englewood Cliffs','v'),(1633,1670,3,3,'contemporary',17,'Paramus','v'),(1634,2630,3,3,'cottage',34,'Ridgewood','r'),(1635,1850,1,1,'contemporary',14,'Ridgefield','r'),(1636,3000,4,1,'mediterranean',24,'East Rutherford','v'),(1637,3850,1,1,'cottage',10,'Northvale','r'),(1638,2230,1,1,'rustic',48,'Edgewater','r'),(1639,5040,1,1,'contemporary',79,'Norwood','v'),(1640,5440,3,1,'mediterranean',14,'New Milford','r'),(1641,4540,4,4,'retro',25,'Rockleigh','r'),(1642,3120,2,1,'retro',32,'Teaneck','v'),(1643,1920,4,2,'cottage',59,'Emerson','v'),(1644,2760,1,1,'mediterranean',78,'Maywood','r'),(1645,2190,4,2,'traditional',84,'Lodi','v'),(1646,5210,2,1,'mediterranean',23,'Wood-Ridge','v'),(1647,2160,1,1,'cottage',58,'Mahwah','v'),(1648,2790,4,4,'traditional',70,'Moonachie','r'),(1649,1970,4,2,'rustic',24,'Northvale','r'),(1650,2210,1,1,'retro',41,'Dumont','v'),(1651,3570,3,3,'mediterranean',87,'Wyckoff','r'),(1652,5000,2,1,'mediterranean',22,'Cliffside Park','v'),(1653,1310,1,1,'rustic',87,'Oradell','r'),(1654,5340,4,4,'mediterranean',44,'Wallington','v'),(1655,5190,4,1,'rustic',57,'East Rutherford','v'),(1656,1960,3,1,'contemporary',31,'South Hackensack','r'),(1657,3620,2,1,'rustic',53,'Oradell','r'),(1658,3650,4,4,'rustic',60,'Old Tappan','v'),(1659,4780,4,3,'mediterranean',27,'Washington Township','r'),(1660,2820,1,1,'retro',38,'Rutherford','r'),(1661,3380,4,3,'cottage',34,'Fairview','v'),(1662,2510,4,2,'retro',73,'Hillsdale','v'),(1663,2960,3,1,'rustic',59,'Mahwah','r'),(1664,4610,4,4,'retro',36,'Cliffside Park','v'),(1665,4540,2,2,'retro',40,'Cliffside Park','v'),(1666,2540,4,4,'traditional',19,'Mahwah','v'),(1667,4770,4,1,'traditional',49,'Saddle Brook','v'),(1668,1560,4,1,'contemporary',25,'Rutherford','r'),(1669,2590,1,1,'retro',78,'Wood-Ridge','r'),(1670,970,1,1,'traditional',82,'Hackensack','r'),(1671,1850,2,1,'rustic',16,'South Hackensack','r'),(1672,4880,2,2,'cottage',74,'Cresskill','v'),(1673,930,4,1,'mediterranean',54,'Hackensack','v'),(1674,2190,3,1,'rustic',59,'Bergenfield','r'),(1675,920,2,1,'traditional',49,'Hillsdale','r'),(1676,2580,4,3,'contemporary',80,'Lodi','v'),(1677,4590,3,2,'traditional',55,'Demarest','r'),(1678,2130,2,1,'rustic',84,'Dumont','r'),(1679,2750,2,2,'contemporary',46,'Upper Saddle River','r'),(1680,4010,2,2,'mediterranean',63,'Paramus','r'),(1681,3850,1,1,'cottage',73,'Alpine','v'),(1682,2910,4,4,'mediterranean',66,'Maywood','r'),(1683,3520,2,2,'contemporary',74,'Woodcliff Lake','r'),(1684,2290,4,4,'mediterranean',46,'Haworth','v'),(1685,1120,2,2,'contemporary',77,'East Rutherford','r'),(1686,3620,4,1,'rustic',23,'Wallington','r'),(1687,2200,3,3,'mediterranean',29,'Garfield','r'),(1688,1060,1,1,'contemporary',34,'Closter','v'),(1689,5350,1,1,'contemporary',33,'River Edge','v'),(1690,1950,3,1,'rustic',86,'Glen Rock','r'),(1691,4490,3,3,'traditional',40,'Little Ferry','r'),(1692,2510,3,3,'rustic',71,'Ridgefield Park','r'),(1693,4140,2,2,'mediterranean',11,'Ramsey','r'),(1694,1910,4,2,'mediterranean',34,'Park Ridge','v'),(1695,4000,2,1,'traditional',72,'Bergenfield','v'),(1696,5060,3,1,'contemporary',26,'Emerson','r'),(1697,5000,4,3,'traditional',48,'Carlstadt','r'),(1698,3490,3,3,'retro',86,'Bergenfield','r'),(1699,2670,3,1,'retro',21,'Fairview','v'),(1700,5300,3,1,'retro',72,'Garfield','v'),(1701,2300,2,1,'retro',50,'Hackensack','r'),(1702,4600,4,4,'cottage',47,'Palisades Park','v'),(1703,3990,3,1,'contemporary',30,'Wyckoff','v'),(1704,5220,2,1,'traditional',70,'Little Ferry','r'),(1705,3380,1,1,'mediterranean',53,'Saddle River','v');
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
INSERT INTO `renter` VALUES ('jsher','Lodi','rustic',1000,5000),('kevmck','Paramus','traditional',1,6000),('kgraham','Wallington','traditional',1200,6500);
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
INSERT INTO `user` VALUES ('admin','7a4c5f17f3b9f05c7344437370dd9b26a83e6dcf853e2fe630e3f76340e38708ab0873e0759cdd694eff3999b22e1d10a86690152ee250ce9f98222b654f2d12','administrator'),('jsher','d3a859372905633b132f1e89af7b3c5a6d927d0d2857bb62eaf7858ec1b9d24b14166d3cee48cc1426c2f28c981ebefeec63560acc55218a70dbe7fe2534543a','renter'),('kevmck','87eabcac154d0c87b16e6db9dd8124263feeb8eaedf4eba71ae789e66e660b17cb9c989c3c10d8e5c6684ca6f158643801cc9e2e4901bfc47cf6dfbcb95aebf8','renter'),('kgraham','580adbc22176945623deb2f92c8669e50a27b1d848d546761b8b344c780f4b0c8f06b2a488377b6510748dad1e64a9c2c90bf34705ac66936db8fc6c3e1adbf8','renter');
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

-- Dump completed on 2017-05-03 22:39:34
