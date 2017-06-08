
CREATE TABLE `hj_reservation_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_tm` timestamp NULL DEFAULT NULL,
  `shop_name` varchar(45) NOT NULL,
  `trainee_id` int(11) NOT NULL,
  `coacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `type` varchar(2) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `reserva_tm` timestamp NULL DEFAULT NULL,
  `cancel_tm` timestamp NULL DEFAULT NULL,
  `cancel_reason` varchar(500) DEFAULT NULL,
  `cards` varchar(45) DEFAULT NULL,
  `op_tm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8