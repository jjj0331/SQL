CREATE TABLE `episodes` (
  `episode_id` int NOT NULL AUTO_INCREMENT,
  `episode_name` varchar(2000) DEFAULT NULL,
  `episode_no` int DEFAULT NULL,
  `episode_details` varchar(2000) DEFAULT NULL,
  `series` int DEFAULT NULL,
  `title_id` char(8) DEFAULT NULL,
  PRIMARY KEY (`episode_id`),
  UNIQUE KEY `title_id` (`title_id`,`episode_no`,`series`),
  CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `programs` (`title_id`)
)