CREATE TABLE `tv_schedule` (
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `ch` int DEFAULT NULL,
  `episode_id` int DEFAULT NULL,
  `viewer` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `tv_schedule_ibfk_1` (`episode_id`),
  CONSTRAINT `tv_schedule_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`episode_id`)
)