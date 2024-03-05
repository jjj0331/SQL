CREATE TABLE `programs` (
  `title_id` char(8) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `genre_id` char(8) DEFAULT NULL,
  PRIMARY KEY (`title_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `programs_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`)
)