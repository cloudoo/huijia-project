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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8

drop table hj_course_info;

CREATE TABLE `hj_course_info` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `cover_dir` varchar(100) NOT NULL,
  `duration` int(11) NOT NULL,
  `min` int(11) NOT NULL DEFAULT '1',
  `max` int(11) NOT NULL DEFAULT '1',
  `normal_cost` float NOT NULL,
  `cost_desc` varchar(200) DEFAULT NULL,
  `course_desc` varchar(2000) NOT NULL,
  `valid` tinyint(4) NOT NULL,
  `op_tm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8

drop TABLE hj_trainee_info;

CREATE TABLE `hj_trainee_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `gender` int(11) DEFAULT '0',
  `cellphone` varchar(45) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '-1',
  `register_tm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
