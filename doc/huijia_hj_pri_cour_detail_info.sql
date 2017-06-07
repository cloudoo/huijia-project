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
-- Table structure for table `hj_pri_cour_detail_info`
--

DROP TABLE IF EXISTS `hj_pri_cour_detail_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hj_pri_cour_detail_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sch_cour_id` int(11) NOT NULL,
  `shop_name` varchar(45) NOT NULL,
  `coacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `course_date` date NOT NULL,
  `start_tm` varchar(45) NOT NULL,
  `end_tm` varchar(45) NOT NULL,
  `cards_type` varchar(2) DEFAULT NULL,
  `other_type` varchar(2) DEFAULT NULL,
  `op_tm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hj_pri_cour_detail_info`
--

LOCK TABLES `hj_pri_cour_detail_info` WRITE;
/*!40000 ALTER TABLE `hj_pri_cour_detail_info` DISABLE KEYS */;
INSERT INTO `hj_pri_cour_detail_info` VALUES (26,5,'测试店',2,2,0,'2017-07-06','10:00','11:00',NULL,NULL,'2017-06-04 12:59:30'),(27,5,'测试店',2,2,0,'2017-07-06','10:00','11:00',NULL,NULL,'2017-06-04 12:59:30'),(28,5,'测试店',2,2,0,'2017-07-06','10:00','11:00',NULL,NULL,'2017-06-04 12:59:30'),(29,5,'测试店',2,2,0,'2017-07-06','10:00','11:00',NULL,NULL,'2017-06-04 12:59:30'),(30,5,'测试店',2,2,0,'2017-07-06','10:00','11:00',NULL,NULL,'2017-06-04 12:59:30'),(31,9,'海珠区荟佳店',2,2,0,'2017-06-07','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(32,9,'海珠区荟佳店',2,2,0,'2017-06-08','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(33,9,'海珠区荟佳店',2,2,0,'2017-06-09','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(34,9,'海珠区荟佳店',2,2,0,'2017-06-14','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(35,9,'海珠区荟佳店',2,2,0,'2017-06-15','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(36,9,'海珠区荟佳店',2,2,0,'2017-06-16','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(37,9,'海珠区荟佳店',2,2,0,'2017-06-21','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(38,9,'海珠区荟佳店',2,2,0,'2017-06-22','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(39,9,'海珠区荟佳店',2,2,0,'2017-06-23','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(40,9,'海珠区荟佳店',2,2,0,'2017-06-28','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(41,9,'海珠区荟佳店',2,2,0,'2017-06-29','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(42,9,'海珠区荟佳店',2,2,0,'2017-06-30','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(43,9,'海珠区荟佳店',2,2,0,'2017-07-05','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(44,9,'海珠区荟佳店',2,2,0,'2017-07-06','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(45,9,'海珠区荟佳店',2,2,0,'2017-07-07','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(46,9,'海珠区荟佳店',2,2,0,'2017-07-12','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(47,9,'海珠区荟佳店',2,2,0,'2017-07-13','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(48,9,'海珠区荟佳店',2,2,0,'2017-07-14','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(49,9,'海珠区荟佳店',2,2,0,'2017-07-19','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(50,9,'海珠区荟佳店',2,2,0,'2017-07-20','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(51,9,'海珠区荟佳店',2,2,0,'2017-07-21','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(52,9,'海珠区荟佳店',2,2,0,'2017-07-26','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(53,9,'海珠区荟佳店',2,2,0,'2017-07-27','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(54,9,'海珠区荟佳店',2,2,0,'2017-07-28','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(55,9,'海珠区荟佳店',2,2,0,'2017-08-02','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(56,9,'海珠区荟佳店',2,2,0,'2017-08-03','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(57,9,'海珠区荟佳店',2,2,0,'2017-08-04','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(58,9,'海珠区荟佳店',2,2,0,'2017-08-09','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(59,9,'海珠区荟佳店',2,2,0,'2017-08-10','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(60,9,'海珠区荟佳店',2,2,0,'2017-08-11','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(61,9,'海珠区荟佳店',2,2,0,'2017-08-16','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(62,9,'海珠区荟佳店',2,2,0,'2017-08-17','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(63,9,'海珠区荟佳店',2,2,0,'2017-08-18','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(64,9,'海珠区荟佳店',2,2,0,'2017-08-23','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(65,9,'海珠区荟佳店',2,2,0,'2017-08-24','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(66,9,'海珠区荟佳店',2,2,0,'2017-08-25','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(67,9,'海珠区荟佳店',2,2,0,'2017-08-30','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(68,9,'海珠区荟佳店',2,2,0,'2017-08-31','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(69,9,'海珠区荟佳店',2,2,0,'2017-09-01','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(70,9,'海珠区荟佳店',2,2,0,'2017-09-06','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(71,9,'海珠区荟佳店',2,2,0,'2017-09-07','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(72,9,'海珠区荟佳店',2,2,0,'2017-09-08','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(73,9,'海珠区荟佳店',2,2,0,'2017-09-13','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(74,9,'海珠区荟佳店',2,2,0,'2017-09-14','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(75,9,'海珠区荟佳店',2,2,0,'2017-09-15','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(76,9,'海珠区荟佳店',2,2,0,'2017-09-20','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(77,9,'海珠区荟佳店',2,2,0,'2017-09-21','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(78,9,'海珠区荟佳店',2,2,0,'2017-09-22','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(79,9,'海珠区荟佳店',2,2,0,'2017-09-27','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(80,9,'海珠区荟佳店',2,2,0,'2017-09-28','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(81,9,'海珠区荟佳店',2,2,0,'2017-09-29','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(82,9,'海珠区荟佳店',2,2,0,'2017-10-04','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(83,9,'海珠区荟佳店',2,2,0,'2017-10-05','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58'),(84,9,'海珠区荟佳店',2,2,0,'2017-10-06','11:00','13:00',NULL,NULL,'2017-06-07 13:49:58');
/*!40000 ALTER TABLE `hj_pri_cour_detail_info` ENABLE KEYS */;
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