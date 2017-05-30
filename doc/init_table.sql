
drop table hj_course_info;

CREATE TABLE `hj_course_info` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(45)  NOT NULL,
  `type` tinyint(3) NOT NULL,
  `cover_dir` varchar(100) NOT NULL,
  `duration` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `normal_cost` double NOT NULL,
  `cost_desc` varchar(200)  DEFAULT NULL,
  `course_desc` varchar(2000)  NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8