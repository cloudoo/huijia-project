CREATE DATABASE  IF NOT EXISTS `huijia` /*!40100 DEFAULT CHARACTER SET utf8 */;
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
-- Table structure for table `hj_trainee_info`
--

DROP TABLE IF EXISTS `hj_trainee_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hj_trainee_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `gender` int(11) DEFAULT '-1',
  `cellphone` varchar(45) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '-1',
  `register_tm` timestamp  NULL ,
  `identit` varchar(45) DEFAULT NULL,
  `brithday` date DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `dis_type` smallint(6) NOT NULL DEFAULT '1',
  `memo` varchar(500) DEFAULT NULL,
  `fit_needs` varchar(45) DEFAULT NULL,
  `coacher_id` bigint(20) DEFAULT NULL,
  `career` varchar(45) DEFAULT NULL,
  `post` varchar(45) DEFAULT NULL,
  `history` varchar(1000) DEFAULT NULL,
  `pic_dir` varchar(500) DEFAULT NULL,
  `op_tm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hj_trainee_info`
--

LOCK TABLES `hj_trainee_info` WRITE;
/*!40000 ALTER TABLE `hj_trainee_info` DISABLE KEYS */;
INSERT INTO `hj_trainee_info` VALUES (1,'风铃草',1,'13847583956',2,'2017-06-04 05:03:21',NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,'2017-06-04 05:03:21'),(2,'sfwef',0,'123131',-1,'2017-06-04 06:37:45',NULL,NULL,NULL,NULL,1,NULL,'fitness',1,NULL,NULL,NULL,NULL,'2017-06-04 06:37:45'),(3,'风铃草2',0,'138475874628',-1,'2017-06-04 04:07:02',NULL,NULL,NULL,NULL,1,NULL,NULL,2,NULL,NULL,NULL,NULL,'2017-06-04 04:07:02'),(4,'风铃草3',1,'138475874628',-1,'2017-06-04 06:44:50',NULL,NULL,160.3,NULL,1,NULL,NULL,2,NULL,NULL,NULL,NULL,'2017-06-04 06:44:50');
/*!40000 ALTER TABLE `hj_trainee_info` ENABLE KEYS */;
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
