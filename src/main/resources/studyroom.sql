-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: studyroom
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `chat_log`
--

DROP TABLE IF EXISTS `chat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender` int NOT NULL,
  `receiver` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `text_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: group chat; 2: private chat',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_log`
--

LOCK TABLES `chat_log` WRITE;
/*!40000 ALTER TABLE `chat_log` DISABLE KEYS */;
INSERT INTO `chat_log` VALUES (47,2,0,'2022-12-03 18:31:36','小黑子',1),(48,3,0,'2022-12-03 18:31:43','？？',1),(49,4,0,'2022-12-03 18:32:12','露出鸡脚了吧',1),(50,6,0,'2022-12-03 18:39:23','纯路人感觉完全没必要',1),(51,5,0,'2022-12-03 18:40:16','hahahaha',1),(52,7,0,'2022-12-03 18:42:07','What day is it today?',1),(53,8,0,'2022-12-03 18:42:45','Friday?',1),(54,9,0,'2022-12-03 18:44:43','Today is Saturday',1),(55,10,0,'2022-12-03 18:49:34','Your hairstyle looks so good',1),(56,9,0,'2022-12-03 18:49:50','Thanks!',1),(57,8,0,'2022-12-03 20:31:32','just a test',1),(58,8,0,'2022-12-03 20:43:38','e',1),(59,3,4,'2022-12-03 20:55:59','hello',2),(60,3,4,'2022-12-03 20:56:33','hello',2),(61,2,4,'2022-12-03 21:11:11','hii',2),(62,5,7,'2022-12-03 21:11:58','Hi, Elon',2),(63,8,2,'2022-12-03 21:12:22','Hi, Taylor',2),(64,4,2,'2022-12-03 21:12:37','Hiii, Taylor',2),(65,6,2,'2022-12-03 21:12:51','How are you, Taylor',2),(66,4,3,'2022-12-04 02:03:56','halo, emilia',2),(69,3,4,'2022-12-04 02:05:02','hi',2),(73,3,2,'2022-12-04 02:14:39','Hi, taylor',2),(74,4,0,'2022-12-04 03:52:50','a',1),(75,4,2,'2022-12-04 03:53:33','test',2),(76,10,0,'2022-12-05 01:20:05','halo',1),(77,2,0,'2022-12-05 01:27:39','hii',1),(78,4,0,'2022-12-05 02:29:50','halo',1),(79,10,3,'2022-12-05 02:34:24','Hi, I am emilia',2),(80,10,3,'2022-12-05 02:34:32','Hi, I am tcefrep',2);
/*!40000 ALTER TABLE `chat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mid` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,2,'Good night','2022-12-04 11:45:07'),(2,1,6,'Good night +1','2022-12-04 11:46:09'),(4,4,2,'ohhh','2022-12-04 12:22:13'),(6,4,2,'ff','2022-12-04 12:31:26'),(7,5,2,'Your hairstyle looks so cool!','2022-12-04 12:32:55'),(11,6,6,'hhh','2022-12-04 12:43:37'),(12,7,8,'I can\'t agree with you more!','2022-12-04 12:47:48'),(13,8,6,'cool','2022-12-04 12:48:54'),(26,7,7,'Beautiful!','2022-12-04 12:56:00'),(27,6,2,'hhhhh','2022-12-04 20:18:49');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribution`
--

DROP TABLE IF EXISTS `distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distribution` (
  `uid` varchar(5) NOT NULL,
  `field` varchar(45) NOT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`uid`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribution`
--

LOCK TABLES `distribution` WRITE;
/*!40000 ALTER TABLE `distribution` DISABLE KEYS */;
INSERT INTO `distribution` VALUES ('1','cs',12),('1','is',23),('1','nlp',21),('1','ses',31),('10','cs',13),('10','is',14),('10','nlp',12),('10','ses',21),('123','cs',10),('123','is',10),('123','nlp',8),('123','ses',30),('2','cs',14),('2','is',31),('2','nlp',23),('2','ses',43),('3','cs',21),('3','is',45),('3','nlp',32),('3','ses',21),('4','cs',14),('4','is',16),('4','nlp',2),('4','ses',31),('456','cs',21),('456','is',15),('456','nlp',1),('456','ses',10),('5','cs',43),('5','is',32),('5','nlp',44),('5','ses',11),('6','cs',22),('6','is',33),('6','nlp',44),('6','ses',11),('7','cs',22),('7','is',33),('7','nlp',12),('7','ses',11),('789','cs',22),('789','is',33),('789','nlp',11),('789','ses',23),('8','cs',4),('8','is',12),('8','nlp',23),('8','ses',21),('9','cs',23),('9','is',32),('9','nlp',34),('9','ses',2);
/*!40000 ALTER TABLE `distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farm`
--

DROP TABLE IF EXISTS `farm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farm` (
  `uid` varchar(45) NOT NULL,
  `plant` varchar(45) DEFAULT NULL,
  `water` int DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farm`
--

LOCK TABLES `farm` WRITE;
/*!40000 ALTER TABLE `farm` DISABLE KEYS */;
INSERT INTO `farm` VALUES ('1','lemon',0),('10','lemon',0),('123','orange',0),('2','lemon',0),('3','lemon',0),('4','lemon',0),('456','orange',0),('5','lemon',0),('6','lemon',0),('7','lemon',0),('789','lemon',0),('8','lemon',0),('9','lemon',0);
/*!40000 ALTER TABLE `farm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `mid` int DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (7,1,8,'2022-12-02 10:38:31'),(10,2,5,'2022-12-02 10:45:44'),(14,2,2,'2022-12-02 10:46:07'),(15,2,1,'2022-12-02 10:46:08'),(17,2,3,'2022-12-03 18:34:53'),(18,2,8,'2022-12-03 18:34:56'),(20,3,5,'2022-12-03 22:53:50'),(21,4,4,'2022-12-04 21:35:52');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruit`
--

DROP TABLE IF EXISTS `fruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fruit` (
  `uid` varchar(45) NOT NULL,
  `fruit` varchar(45) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`uid`,`fruit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruit`
--

LOCK TABLES `fruit` WRITE;
/*!40000 ALTER TABLE `fruit` DISABLE KEYS */;
INSERT INTO `fruit` VALUES ('1','lemon',0),('1','orange',0),('10','lemon',0),('10','orange',0),('123','lemon',10),('123','orange',20),('2','lemon',0),('2','orange',0),('3','lemon',0),('3','orange',0),('4','lemon',0),('4','orange',0),('456','lemon',2),('456','orange',0),('5','lemon',0),('5','orange',0),('6','lemon',0),('6','orange',0),('7','lemon',0),('7','orange',0),('789','lemon',0),('789','orange',0),('8','lemon',0),('8','orange',0),('9','lemon',0),('9','orange',0);
/*!40000 ALTER TABLE `fruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moments`
--

DROP TABLE IF EXISTS `moments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `likes` int NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moments`
--

LOCK TABLES `moments` WRITE;
/*!40000 ALTER TABLE `moments` DISABLE KEYS */;
INSERT INTO `moments` VALUES (1,8,'It\'s time to sleep',19,'2022-12-01 14:08:34','images/moments/cover/sleep.png'),(2,2,'My Dream!',1,'2022-12-01 15:31:30','images/moments/cover/robot.png'),(3,4,'Mom! I am so scared',4,'2022-12-01 16:52:19','images/moments/cover/devil.png'),(4,7,'I hope you guys can study hard, otherwise ...',3,'2022-12-01 20:12:12','images/moments/cover/fire.png'),(5,3,'I have studied 10 hours today, I feel better!!',13,'2022-12-01 16:56:52','images/moments/cover/ikun.png'),(6,5,'A good day starts with leetcode 2235',3,'2022-12-01 19:36:27','images/moments/cover/lc2235.png'),(7,6,'You reap what you sow!',9,'2022-12-01 19:51:14','images/moments/cover/classroom.png'),(8,4,'Daily Attendance',2,'2022-12-01 16:55:44','images/moments/cover/attendence.png'),(9,2,'I feel hopeless. What should I do?',5,'2022-12-01 20:46:49','images/moments/cover/notes.png');
/*!40000 ALTER TABLE `moments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `rid` int NOT NULL,
  `tid` int NOT NULL,
  `uid` varchar(45) NOT NULL,
  `field` varchar(45) NOT NULL,
  PRIMARY KEY (`rid`,`tid`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,1,'123','cs'),(1,1,'456','nlp'),(1,1,'123','ses'),(1,2,'123','cs'),(1,2,'456','ses'),(1,3,'456','cs'),(1,3,'123','ses'),(1,4,'123','cs'),(1,4,'456','ses'),(1,5,'123','ses'),(1,8,'123','ses'),(1,9,'123','ses'),(2,1,'123','cs'),(2,2,'123','ses'),(2,4,'456','cs'),(2,4,'123','ses'),(2,5,'123','ses'),(2,8,'789','ses'),(2,9,'123','ses'),(3,4,'789','cs'),(3,4,'123','ses'),(3,9,'789','ses'),(4,4,'789','cs'),(4,4,'1','ses'),(5,4,'1','ses');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `uid` varchar(5) NOT NULL,
  `accumulation` int DEFAULT NULL,
  `reputation` int DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES ('1',15,30),('10',15,30),('123',11,44),('2',10,15),('3',6,24),('4',6,7),('456',24,2),('5',56,45),('6',21,32),('7',7,17),('789',24,6),('8',12,34),('9',32,0);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `id` int NOT NULL,
  `is_sit_down` tinyint(1) DEFAULT NULL,
  `room_id` int NOT NULL,
  PRIMARY KEY (`id`,`room_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,1,1),(2,1,1),(3,0,1),(4,0,1),(5,0,1),(6,0,1);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studyroom`
--

DROP TABLE IF EXISTS `studyroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studyroom` (
  `id` int NOT NULL,
  `type_id` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studyroom`
--

LOCK TABLES `studyroom` WRITE;
/*!40000 ALTER TABLE `studyroom` DISABLE KEYS */;
INSERT INTO `studyroom` VALUES (1,1,24,'2022-11-18 21:57:36');
/*!40000 ALTER TABLE `studyroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studytime`
--

DROP TABLE IF EXISTS `studytime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studytime` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `room_id` int NOT NULL DEFAULT '1',
  `target_time` int DEFAULT NULL,
  `real_time` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT NULL,
  `goal` varchar(255) NOT NULL DEFAULT 'study',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studytime`
--

LOCK TABLES `studytime` WRITE;
/*!40000 ALTER TABLE `studytime` DISABLE KEYS */;
INSERT INTO `studytime` VALUES (125,1,1,60,55,NULL,NULL,NULL,'Read'),(126,1,1,120,60,NULL,NULL,NULL,'Study'),(127,1,1,60,40,NULL,NULL,NULL,'Work'),(128,1,1,120,80,NULL,NULL,NULL,'Review'),(129,1,1,120,120,NULL,NULL,NULL,'Rest');
/*!40000 ALTER TABLE `studytime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `room_id` int NOT NULL DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT NULL,
  `goal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'study',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,1,1,NULL,NULL,1,'study'),(3,1,0,'2022-11-29 20:58:05','2022-11-29 21:01:05',1,'study'),(4,2,1,'2022-11-29 21:10:46','2022-11-29 21:43:46',1,'study'),(5,2,1,'2022-11-29 21:11:22','2022-11-29 22:25:22',1,'study'),(6,2,1,'2022-11-29 21:12:36','2022-11-29 21:44:36',1,'study'),(7,13,1,'2022-11-29 21:29:04','2022-11-29 21:32:04',0,'study'),(8,13,1,'2022-11-29 21:29:10','2022-11-29 21:32:10',0,'study'),(9,13,1,'2022-11-29 21:29:14','2022-11-29 21:36:14',0,'study'),(10,96,1,'2022-11-29 21:30:37','2022-11-29 21:32:37',0,'study'),(11,21,1,'2022-11-29 21:34:46','2022-11-29 22:35:46',1,'study'),(12,6,1,'2022-11-29 21:35:39','2022-11-29 21:55:39',0,'study'),(13,27,1,'2022-11-29 21:38:13','2022-11-29 21:38:13',0,'study'),(14,34,1,'2022-11-29 21:40:24','2022-11-29 21:42:24',0,'study'),(15,9,1,'2022-11-29 21:49:09','2022-11-29 22:03:09',0,'study'),(16,21,1,'2022-11-30 22:16:17','2022-11-30 22:30:17',1,'study'),(112,64,1,'2022-11-29 22:49:29','2022-11-29 23:05:29',0,'study'),(113,69,1,'2022-11-29 22:50:11','2022-11-29 23:12:11',0,'study'),(114,27,1,'2022-11-29 22:52:01','2022-11-29 22:55:01',0,'study'),(115,27,1,'2022-11-29 22:52:01','2022-11-29 22:55:01',1,'study'),(116,30,1,'2022-11-29 22:55:59','2022-11-29 22:58:59',0,'study'),(117,29,1,'2022-11-29 22:58:27','2022-11-29 22:58:27',0,'test goal'),(118,29,1,'2022-11-29 22:58:50','2022-11-29 23:21:50',0,'test goal'),(119,29,1,'2022-11-29 22:59:15','2022-11-29 23:00:15',1,'test goal'),(120,52,1,'2022-11-29 23:01:31','2022-11-29 23:04:31',1,'read'),(121,23,1,'2022-11-29 23:06:39','2022-11-29 23:10:39',0,'work'),(122,97,1,'2022-11-30 12:39:48','2022-11-30 13:05:48',1,'work'),(123,4,1,'2022-11-30 13:49:33','2022-11-30 14:03:33',0,'study'),(124,96,1,'2022-11-30 19:23:35','2022-11-30 19:25:35',1,'work'),(125,0,1,'2022-12-04 19:34:23','2022-12-04 20:24:23',0,'study'),(126,0,1,'2022-12-04 19:35:15','2022-12-04 20:35:15',0,'study'),(127,0,1,'2022-12-04 19:37:15','2022-12-04 20:34:15',0,'study'),(128,0,1,'2022-12-04 19:40:26','2022-12-04 20:25:26',0,'study'),(129,4,1,'2022-12-04 21:34:59','2022-12-04 21:54:59',0,'study');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `tid` int NOT NULL,
  `field` varchar(45) NOT NULL,
  `host` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tid`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'cs','123'),(1,'is',NULL),(1,'nlp','456'),(1,'ses','123'),(2,'cs','123'),(2,'is','789'),(2,'nlp','789'),(2,'ses','123'),(3,'cs','123'),(3,'nlp','789'),(3,'ses','123'),(4,'cs','123'),(4,'ses','123'),(5,'ses','123'),(6,'ses','123'),(7,'ses','123'),(8,'ses','123'),(9,'ses','123');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Computer Science'),(2,'Science'),(3,'Arts'),(4,'Math'),(5,'Business'),(6,'Architechture'),(7,'Chemistry');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(256) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `username` varchar(256) NOT NULL,
  `createtime` date DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=790 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'lzl','123456',22,'Male','null',NULL,'jacob','2022-11-17','images/avatar/avatar2.png'),(2,'taylor','123456',30,'Female',NULL,NULL,'Taylor','2022-11-16','images/avatar/taylor.png'),(3,'emilia','123456',35,'Female',NULL,NULL,'Emilia','2022-12-01','images/avatar/emilia.png'),(4,'zee','123456',45,'Male',NULL,NULL,'ZeeTao','2022-12-01','images/avatar/avatar3.png'),(5,'lisa','123456',25,'Female',NULL,NULL,'Lisa','2022-12-01','images/avatar/lisa.png'),(6,'ikun','123456',22,'Male',NULL,NULL,'Ikun','2022-12-01','images/avatar/avatar1.png'),(7,'elon','123456',50,'Male',NULL,NULL,'Elon','2022-12-01','images/avatar/elon.png'),(8,'lazyGoat','123456',20,'Male',NULL,NULL,'Lazy Goat','2022-12-01','images/avatar/lazyGoat.png'),(9,'gg','123456',19,'Male',NULL,NULL,'GG','2022-12-03','images/avatar/avatar4.png'),(10,'tcefrep','123456',22,'Male',NULL,NULL,'Tcefre','2022-12-03','images/avatar/avatar6.png'),(123,'quindex','123456',26,'Male',NULL,NULL,'Quindex',NULL,NULL),(456,'zyx','123456',26,'Male',NULL,NULL,'zyx',NULL,NULL),(789,'who','123456',26,'Male',NULL,NULL,'who',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 15:55:43
