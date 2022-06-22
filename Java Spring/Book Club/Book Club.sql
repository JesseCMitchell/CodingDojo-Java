-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: book-club
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `thoughts` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `borrower_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdcwwdxoep0xr94168ct70uogf` (`borrower_id`),
  KEY `FKcykkh3hxh89ammmwch0gw5o1s` (`user_id`),
  CONSTRAINT `FKcykkh3hxh89ammmwch0gw5o1s` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKdcwwdxoep0xr94168ct70uogf` FOREIGN KEY (`borrower_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'James S.A. Corey','2022-06-21 14:47:31.255000','Science Fiction','Incredible chapter in the tale of the Rocinante and her crew!','Caliban\'s War','2022-06-21 17:23:42.481000',NULL,NULL),(2,'Future Publishing','2022-06-21 15:01:15.177000','Children\'s Non-Fiction','Very informative. I learned a lot!','Minecraft Mega Builds and Puzzles','2022-06-21 17:26:40.285000',NULL,2),(3,'JK Rowling','2022-06-21 15:02:52.451000','YA Fantasy','My favorite in the series.','Harry Potter and the Chamber of Secrets',NULL,NULL,3),(4,'Sesame Street','2022-06-21 15:16:04.159000','Children\'s','Elmo elmo elmo elmo elmo','Elmo\'s Favorite Colors',NULL,NULL,4),(5,'Charles Dickens','2022-06-21 16:06:11.605000','Fiction','This was a boring book. Needs more punching. ','Great Expectations',NULL,NULL,5);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2022-06-20 22:52:21.179000','jesse@jmitchellmusic.com','Jesse Mitchell','$2a$10$DlFj1s2Evzx8UBkwY2pree0w9hj9bo6agf6Fo0Af7Sw0lHpa0B7G2',NULL),(2,'2022-06-21 14:58:19.420000','owen@ilovetrucks.com','Owen','$2a$10$0KWHeSztote39Ynl2KoOf.McM6yO0FaYUzNowVJUkq9YWRSr8YMgq',NULL),(3,'2022-06-21 15:02:06.475000','mandaleemitch@gmail.com','Amanda','$2a$10$cKB9E5hSQ4msbi9iCs6aAemCkyfwurZt8l7LYM1U3AdbByNp2JC12',NULL),(4,'2022-06-21 15:15:30.843000','will@mitchell.com','William','$2a$10$XTFM1J.FrK5vvtNO4QZKx.yKhQMADtLn7oOzs.vW6DmciWel5Mcl2',NULL),(5,'2022-06-21 16:05:28.090000','bat@batman.com','Batman','$2a$10$8xP1XWcUxah1LwGT.Z/awurLsQcanuoLkyCxGmWXXBWO0BYM9q7Ma',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 17:36:31
