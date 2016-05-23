-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `isAdmin` bit(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Susan',24,'\0','2016-05-23 14:40:54'),(2,'Yoca',17,'\0','2016-05-23 14:41:13'),(3,'Rem',45,'\0','2016-05-23 14:41:29'),(4,'Rose',45,'\0','2016-05-23 14:41:48'),(5,'Tom',36,'','2016-05-23 14:42:11'),(6,'Usama',27,'\0','2016-05-23 14:42:23'),(7,'Lilu',12,'\0','2016-05-23 14:43:07'),(8,'Emelya',22,'\0','2016-05-23 14:43:16'),(9,'Honny',31,'\0','2016-05-23 14:43:26'),(10,'Ketty',22,'\0','2016-05-23 14:43:43'),(11,'Alex',57,'\0','2016-05-23 14:43:57'),(12,'Bob',19,'\0','2016-05-23 14:44:13'),(13,'Vikki',29,'\0','2016-05-23 14:44:35'),(14,'Fill',33,'\0','2016-05-23 14:44:44'),(15,'Fedya',44,'\0','2016-05-23 14:44:55'),(16,'Sava',46,'\0','2016-05-23 14:45:16'),(17,'Catty',57,'\0','2016-05-23 14:45:36'),(18,'Andy',23,'\0','2016-05-23 14:45:46'),(19,'Vova',51,'\0','2016-05-23 14:46:02'),(20,'Ca',40,'\0','2016-05-23 14:46:22'),(21,'Petya',3,'\0','2016-05-23 14:46:39');
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

-- Dump completed on 2016-05-23 18:27:15
