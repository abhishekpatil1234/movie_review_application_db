-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: movie_review_application_db
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1001,'Epic sci-fi adventure on Pandora','SCI_FI','Avatar',8.5),(1002,'Superheroes unite to save the universe','ACTION','Avengers: Endgame',8.7),(1003,'Romantic tragedy aboard a doomed ship','ROMANCE','Titanic',7.9),(1004,'Animated classic of a lion’s journey','ANIMATION','The Lion King',8.5),(1005,'Dinosaurs wreak havoc once again','SCI_FI','Jurassic World',7),(1006,'A new adventure in the Star Wars saga','SCI_FI','Star Wars: The Force Awakens',7.8),(1007,'Batman faces his greatest nemesis, the Joker','ACTION','The Dark Knight',9),(1008,'Elsa and Anna embark on a magical journey','ANIMATION','Frozen II',7.4),(1009,'The epic conclusion to the wizarding saga','FANTASY','Harry Potter and the Deathly Hallows Part 2',8.1),(1010,'A Marvel superhero defends his nation','ACTION','Black Panther',7.3),(1011,'The epic conclusion to the trilogy','FANTASY','The Lord of the Rings: The Return of the King',8.9),(1012,'A mind-bending thriller about dreams','SCI_FI','Inception',8.8),(1013,'Spider-Man’s multiverse adventure','ACTION','Spider-Man: No Way Home',8.3),(1014,'A sequel to the 80s classic','ACTION','Top Gun: Maverick',8.4),(1015,'Earth\'s mightiest heroes unite','ACTION','The Avengers',8),(1016,'Fast cars and action-packed drama','ACTION','Furious 7',7.1),(1017,'A new take on the Dark Knight','ACTION','The Batman',7.9),(1018,'A dark origin story of the Joker','DRAMA','Joker',8.4),(1019,'A hilarious and action-packed antihero film','ACTION','Deadpool',8),(1020,'A hacker discovers the shocking truth about reality','SCI_FI','The Matrix',8.7),(1023,'abc','ACTION','abc',1),(1024,'a race between four friends and a cop trying to find hidden money under the big W','COMEDY','dhamal',7),(1025,'3 misfits trying to make money by ploting a kidnapping','COMEDY','hera pheri',7),(1026,'4 friends trying to impress a girl got caught up with crime lord','COMEDY','dhol',7),(1027,'a con artist tries to rob a running train by creating a deception of movie director','COMEDY','tees maar khan',7),(1028,'a regular man is suddenly gets the ability to hear inner thoughts of the womens','COMEDY','aga baai arecchya',7),(1029,'4 friends disguised as a married couples to so they could live as a paying gues at the old woman\'s house.','COMEDY','ashi hi banawa banawi',7),(1030,'6 hitman on train has a job of acquiring a suitcase and killing other hitmens','ACTION','bullet train',8);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'abhishek@gmail.com','{noop}pass','admin','abhishek123');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_list`
--

DROP TABLE IF EXISTS `watch_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watch_list` (
  `watch_list_id` bigint NOT NULL AUTO_INCREMENT,
  `added_at` datetime(6) DEFAULT NULL,
  `movie_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`watch_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_list`
--

LOCK TABLES `watch_list` WRITE;
/*!40000 ALTER TABLE `watch_list` DISABLE KEYS */;
INSERT INTO `watch_list` VALUES (1,NULL,1001,1),(2,NULL,1002,1),(3,NULL,1003,3);
/*!40000 ALTER TABLE `watch_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-20 13:54:10
