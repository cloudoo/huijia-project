CREATE DATABASE  IF NOT EXISTS `huijia` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `huijia`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: huijia
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `hj_pri_cour_sch_info`
--

DROP TABLE IF EXISTS `hj_pri_cour_sch_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hj_pri_cour_sch_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(45) NOT NULL,
  `coacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `sch_start_dt` date NOT NULL,
  `sch_end_dt` date NOT NULL,
  `start_tm` varchar(45) NOT NULL,
  `end_tm` varchar(45) NOT NULL,
  `weeks` varchar(45) NOT NULL,
  `cards_type` varchar(2) DEFAULT NULL,
  `other_type` varchar(2) DEFAULT NULL,
  `op_tm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hj_pri_cour_sch_info`
--

LOCK TABLES `hj_pri_cour_sch_info` WRITE;
/*!40000 ALTER TABLE `hj_pri_cour_sch_info` DISABLE KEYS */;
INSERT INTO `hj_pri_cour_sch_info` VALUES (5,'测试',1,2,0,'2017-07-05','2017-07-10','9:00','11:00','2,3,5',NULL,NULL,'2017-06-07 11:35:34'),(6,'测试店',2,2,0,'2017-07-06','2017-07-11','11:00','12:00','4,5,6',NULL,NULL,'2017-06-07 13:44:14'),(7,'海珠区荟佳店',2,2,0,'2017-05-06','2017-06-11','9:00','11:00','4,5,6',NULL,NULL,'2017-06-07 12:10:01'),(9,'海珠区荟佳店',2,2,0,'2017-06-06','2017-10-11','11:00','13:00','4,5,6',NULL,NULL,'2017-06-07 13:49:53');
/*!40000 ALTER TABLE `hj_pri_cour_sch_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-07 22:11:53
