-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: product
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `group1`
--

DROP TABLE IF EXISTS `group1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group1` (
  `group_name` varchar(45) NOT NULL,
  `group_description` varchar(45) DEFAULT NULL,
  `isActive` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group1`
--

LOCK TABLES `group1` WRITE;
/*!40000 ALTER TABLE `group1` DISABLE KEYS */;
INSERT INTO `group1` VALUES ('\'Group 1\'','\'Group Number 1\'','\'yes\''),('\'Group 10\'','\'Group Number 10\'','\'yes\''),('\'Group 11\'','\'Group Number 11\'','\'yes\''),('\'Group 12\'','\'Group Number 12\'','\'yes\''),('\'Group 13\'','\'Group Number 13\'','\'yes\''),('\'Group 14\'','\'Group Number 14\'','\'yes\''),('\'Group 15\'','\'Group Number 15\'','\'yes\''),('\'Group 16\'','\'Group Number 16\'','\'yes\''),('\'Group 17\'','\'Group Number 17\'','\'yes\''),('\'Group 18\'','\'Group Number 18\'','\'yes\''),('\'Group 19\'','\'Group Number 19\'','\'yes\''),('\'Group 2\'','\'Group Number 2\'','\'yes\''),('\'Group 20\'','\'Group Number 20\'','\'yes\''),('\'Group 21\'','\'Group Number 21\'','\'yes\''),('\'Group 22\'','\'Group Number 22\'','\'yes\''),('\'Group 3\'','\'Group Number 3\'','\'yes\''),('\'Group 4\'','\'Group Number 4\'','\'yes\''),('\'Group 5\'','\'Group Number 5\'','\'yes\''),('\'Group 6\'','\'Group Number 6\'','\'yes\''),('\'Group 7\'','\'Group Number 7\'','\'yes\''),('\'Group 8\'','\'Group Number 8\'','\'yes\''),('\'Group 9\'','\'Group Number 9\'','\'yes\'');
/*!40000 ALTER TABLE `group1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product1`
--

DROP TABLE IF EXISTS `product1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product1` (
  `product_name` varchar(45) DEFAULT NULL,
  `model_name` varchar(45) DEFAULT NULL,
  `product_serial_no` varchar(45) NOT NULL,
  `group_associated` varchar(45) DEFAULT NULL,
  `product_MRP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_serial_no`),
  KEY `group_associated_idx` (`group_associated`),
  CONSTRAINT `group_associated` FOREIGN KEY (`group_associated`) REFERENCES `group1` (`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product1`
--

LOCK TABLES `product1` WRITE;
/*!40000 ALTER TABLE `product1` DISABLE KEYS */;
INSERT INTO `product1` VALUES ('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659401\'','\'Group 1\'','\'11001\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659402\'','\'Group 2\'','\'11002\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659403\'','\'Group 3\'','\'11003\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659404\'','\'Group 4\'','\'11004\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659405\'','\'Group 5\'','\'11005\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659406\'','\'Group 6\'','\'11006\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659407\'','\'Group 7\'','\'11007\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659408\'','\'Group 8\'','\'11008\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659409\'','\'Group 9\'','\'11009\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659410\'','\'Group 10\'','\'11010\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659411\'','\'Group 11\'','\'11011\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659412\'','\'Group 12\'','\'11012\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659413\'','\'Group 13\'','\'11013\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659414\'','\'Group 14\'','\'11014\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659415\'','\'Group 15\'','\'11015\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659416\'','\'Group 16\'','\'11016\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659417\'','\'Group 17\'','\'11017\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659418\'','\'Group 18\'','\'11018\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659419\'','\'Group 19\'','\'11019\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659420\'','\'Group 20\'','\'11020\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659421\'','\'Group 21\'','\'11021\''),('\'Demo Product 5\'','\'Product Model 5\'','\'98765987659422\'','\'Group 22\'','\'11022\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659501\'','\'Group 1\'','\'6001\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659502\'','\'Group 2\'','\'6002\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659503\'','\'Group 3\'','\'6003\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659504\'','\'Group 4\'','\'6004\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659505\'','\'Group 5\'','\'6005\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659506\'','\'Group 6\'','\'6006\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659507\'','\'Group 7\'','\'6007\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659508\'','\'Group 8\'','\'6008\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659509\'','\'Group 9\'','\'6009\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659510\'','\'Group 10\'','\'6010\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659511\'','\'Group 11\'','\'6011\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659512\'','\'Group 12\'','\'6012\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659513\'','\'Group 13\'','\'6013\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659514\'','\'Group 14\'','\'6014\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659515\'','\'Group 15\'','\'6015\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659516\'','\'Group 16\'','\'6016\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659517\'','\'Group 17\'','\'6017\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659518\'','\'Group 18\'','\'6018\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659519\'','\'Group 19\'','\'6019\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659520\'','\'Group 20\'','\'6020\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659521\'','\'Group 21\'','\'6021\''),('\'Demo Product 4\'','\'Product Model 4\'','\'98765987659522\'','\'Group 22\'','\'6022\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659601\'','\'Group 1\'','\'5001\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659602\'','\'Group 2\'','\'5002\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659603\'','\'Group 3\'','\'5003\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659604\'','\'Group 4\'','\'5004\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659605\'','\'Group 5\'','\'5005\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659606\'','\'Group 6\'','\'5006\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659607\'','\'Group 7\'','\'5007\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659608\'','\'Group 8\'','\'5008\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659609\'','\'Group 9\'','\'5009\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659610\'','\'Group 10\'','\'5010\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659611\'','\'Group 11\'','\'5011\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659612\'','\'Group 12\'','\'5012\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659613\'','\'Group 13\'','\'5013\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659614\'','\'Group 14\'','\'5014\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659615\'','\'Group 15\'','\'5015\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659616\'','\'Group 16\'','\'5016\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659617\'','\'Group 17\'','\'5017\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659618\'','\'Group 18\'','\'5018\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659619\'','\'Group 19\'','\'5019\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659620\'','\'Group 20\'','\'5020\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659621\'','\'Group 21\'','\'5021\''),('\'Demo Product 3\'','\'Product Model 3\'','\'98765987659622\'','\'Group 22\'','\'5022\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659801\'','\'Group 1\'','\'1001\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659802\'','\'Group 2\'','\'1002\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659803\'','\'Group 3\'','\'1003\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659804\'','\'Group 4\'','\'1004\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659805\'','\'Group 5\'','\'1005\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659806\'','\'Group 6\'','\'1006\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659807\'','\'Group 7\'','\'1007\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659808\'','\'Group 8\'','\'1008\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659809\'','\'Group 9\'','\'1009\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659810\'','\'Group 10\'','\'1010\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659811\'','\'Group 11\'','\'1011\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659812\'','\'Group 12\'','\'1012\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659813\'','\'Group 13\'','\'1013\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659814\'','\'Group 14\'','\'1014\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659815\'','\'Group 15\'','\'1015\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659816\'','\'Group 16\'','\'1016\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659817\'','\'Group 17\'','\'1017\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659818\'','\'Group 18\'','\'1018\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659819\'','\'Group 19\'','\'1019\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659820\'','\'Group 20\'','\'1020\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659821\'','\'Group 21\'','\'1021\''),('\'Demo Product 1\'','\'Product Model 1\'','\'98765987659822\'','\'Group 22\'','\'1022\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659901\'','\'Group 1\'','\'10001\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659902\'','\'Group 2\'','\'10002\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659903\'','\'Group 3\'','\'10003\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659904\'','\'Group 4\'','\'10004\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659905\'','\'Group 5\'','\'10005\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659906\'','\'Group 6\'','\'10006\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659907\'','\'Group 7\'','\'10007\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659908\'','\'Group 8\'','\'10008\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659909\'','\'Group 9\'','\'10009\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659910\'','\'Group 10\'','\'10010\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659911\'','\'Group 11\'','\'10011\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659912\'','\'Group 12\'','\'10012\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659913\'','\'Group 13\'','\'10013\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659914\'','\'Group 14\'','\'10014\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659915\'','\'Group 15\'','\'10015\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659916\'','\'Group 16\'','\'10016\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659917\'','\'Group 17\'','\'10017\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659918\'','\'Group 18\'','\'10018\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659919\'','\'Group 19\'','\'10019\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659920\'','\'Group 20\'','\'10020\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659921\'','\'Group 21\'','\'10021\''),('\'Demo Product 2\'','\'Product Model 2\'','\'98765987659922\'','\'Group 22\'','\'10022\'');
/*!40000 ALTER TABLE `product1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-17 14:41:07
