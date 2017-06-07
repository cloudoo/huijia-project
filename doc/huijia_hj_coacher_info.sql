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
-- Table structure for table `hj_coacher_info`
--

DROP TABLE IF EXISTS `hj_coacher_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hj_coacher_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `gender` int(11) NOT NULL,
  `cellphone` varchar(45) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `brithday` date DEFAULT NULL,
  `shopinfo` varchar(45) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `techage` int(11) DEFAULT NULL,
  `tech_count_time` int(11) DEFAULT NULL,
  `speciality` varchar(45) DEFAULT NULL,
  `certification` varchar(45) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `introducs` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `pic_dir` varchar(200) DEFAULT NULL,
  `op_tm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hj_coacher_info`
--

LOCK TABLES `hj_coacher_info` WRITE;
/*!40000 ALTER TABLE `hj_coacher_info` DISABLE KEYS */;
INSERT INTO `hj_coacher_info` VALUES (1,'test','风动随心',0,'1365737924',0,'1990-04-15','温建宝 健身 南山店',2,-1,12,-1,'普拉提','高级按摩师','帅哥,肌肉,测试','◇ 2013年4月参加初中高瑜伽教练资格培训 ◇ 2015年10月参加OM国际瑜伽联盟空中瑜伽培训 ◇ 2016年1月通过悠季瑜伽（广州）TTC哈他瑜伽250小时基础教师培训 ◇ 2016年2月-3月学习悠季瑜伽（广州）哈他瑜伽初级，哈他瑜伽一级，高温瑜伽，髋与肩的打开，阿斯汤加瑜伽等课程 ◇ 2016年7月-8月学习悠季瑜伽（广州）女性瑜伽，哈他瑜伽核心，扭转的智慧，克里亚瑜伽与冥想，瑜伽休息术，太阳致敬式瑜伽等课程 ◇ 2016年8月-9月通过悠季瑜伽（广州）ITTC哈他瑜伽100小时中级教师培训 ',NULL,NULL,'2017-06-04 08:32:27'),(2,'test2','鹏池',0,'13642348832',0,'1991-06-19','海珠区 新港店',-1,-1,-1,-1,'瑜伽','初级法师','肌肉,测试','参加初中高瑜伽教练资格培训',NULL,NULL,'2017-05-30 15:26:14'),(3,'test3','搜房网',0,'13740808832',0,'1991-06-19','深圳区 宝山店',-1,-1,-1,-1,'动感单车','中级战士','测试,靓女','国际瑜伽联盟空中瑜伽培训 ',NULL,NULL,'2017-05-30 15:26:14'),(4,'test3','黎明中',0,'13840808889',0,'1991-06-19','世界佛教为哦风景',-1,-1,-1,-1,NULL,'高级按摩师','帅哥,肌肉,测试','瑜伽等课程 ◇ 2016年8月-9月通过悠季瑜伽（广州）ITTC哈他瑜伽100小时中级教师培训 ',NULL,NULL,'2017-05-29 08:27:45');
/*!40000 ALTER TABLE `hj_coacher_info` ENABLE KEYS */;
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
