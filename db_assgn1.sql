-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_ass1
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `antonym`
--

DROP TABLE IF EXISTS `antonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antonym` (
  `meaning_id` int NOT NULL,
  `antonym_id` int NOT NULL,
  PRIMARY KEY (`meaning_id`),
  KEY `word_id_99_idx` (`meaning_id`),
  KEY `antonym_id_33933_idx` (`antonym_id`),
  CONSTRAINT `antonym_id_33933` FOREIGN KEY (`antonym_id`) REFERENCES `words` (`word_id`),
  CONSTRAINT `meaning_id_99` FOREIGN KEY (`meaning_id`) REFERENCES `meaning` (`meaning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antonym`
--

LOCK TABLES `antonym` WRITE;
/*!40000 ALTER TABLE `antonym` DISABLE KEYS */;
INSERT INTO `antonym` VALUES (5,3),(6,4),(8,6),(7,7);
/*!40000 ALTER TABLE `antonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bengali`
--

DROP TABLE IF EXISTS `bengali`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bengali` (
  `word_id` int NOT NULL,
  `bengali_word` varchar(45) NOT NULL,
  PRIMARY KEY (`word_id`,`bengali_word`),
  CONSTRAINT `word_id_83` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bengali`
--

LOCK TABLES `bengali` WRITE;
/*!40000 ALTER TABLE `bengali` DISABLE KEYS */;
INSERT INTO `bengali` VALUES (1,'à¦à¦¾à¦®à¦à¦¿à¦à¦¾'),(1,'à¦¬à¦¾à¦¦à§à¦¡à¦¼'),(2,'à¦à§à¦²à¦¾à¦¬ à¦¸à§à¦à¦¿à¦'),(2,'à¦¨à§à¦¶à¦à§à¦²à¦¾à¦¬'),(3,'à¦à¦¿à¦à¦¨'),(4,'à¦¸à§à¦¨à§à¦¦à¦°'),(5,'à¦®à¦¨à§à¦¦'),(6,'à¦­à§à¦·à¦£'),(7,'à¦¬à§à¦');
/*!40000 ALTER TABLE `bengali` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `example` (
  `word_id` int NOT NULL,
  `meaning_id` int NOT NULL,
  `pos_id` int NOT NULL,
  `example` varchar(500) NOT NULL,
  PRIMARY KEY (`word_id`,`meaning_id`,`pos_id`),
  KEY `pos_id_1_idx` (`pos_id`),
  KEY `meaning_id_1_idx` (`meaning_id`),
  KEY `meaning_id_2_idx` (`meaning_id`),
  CONSTRAINT `meaning_id_2` FOREIGN KEY (`meaning_id`) REFERENCES `meaning` (`meaning_id`),
  CONSTRAINT `pos_id_1` FOREIGN KEY (`pos_id`) REFERENCES `parts_speech` (`pos_id`),
  CONSTRAINT `word_id_2` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;
INSERT INTO `example` VALUES (1,1,1,'he plays cricket with bat.'),(1,2,2,'bat can see in night.'),(2,3,3,'golf is played wth help of club.'),(2,4,4,'akshat was dancing in club yestarday.'),(3,5,5,'the view of east india is beatiful.'),(4,6,6,'the girl sitting in park was pretty.'),(5,7,7,'when my friend doesn\'t take bath he looks ugly.'),(6,8,8,'when ram writes  in a hurry his handwriting is horrible.'),(7,9,9,'wolf is a carnivore .');
/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hindi`
--

DROP TABLE IF EXISTS `hindi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hindi` (
  `word_id` int NOT NULL,
  `hindi_word` varchar(100) NOT NULL,
  PRIMARY KEY (`word_id`,`hindi_word`),
  CONSTRAINT `word_id_33` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hindi`
--

LOCK TABLES `hindi` WRITE;
/*!40000 ALTER TABLE `hindi` DISABLE KEYS */;
INSERT INTO `hindi` VALUES (1,'à¤à¤®à¤à¤¾à¤¦à¤¡à¤¼'),(1,'à¤¬à¤²à¥à¤²à¥'),(2,'à¤¡à¤à¤¡à¤¾ '),(2,'à¤¨à¤¾à¤à¤ à¤à¥à¤²à¤¬ '),(3,'à¤¬à¥à¤¯à¥à¤à¤«à¤²'),(4,'à¤ªà¥à¤°à¤¿à¤à¥à¤à¥'),(5,'à¤¯à¥à¤à¥'),(6,'à¤à¤°à¤¾à¤¬'),(7,'à¤­à¥à¤¡à¤¼à¤¿à¤¯à¤¾');
/*!40000 ALTER TABLE `hindi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `living`
--

DROP TABLE IF EXISTS `living`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `living` (
  `word_id` int NOT NULL,
  `scientific_name` varchar(55) COLLATE utf32_unicode_ci DEFAULT NULL,
  `image` longblob NOT NULL,
  PRIMARY KEY (`word_id`),
  KEY `word_id_934_idx` (`word_id`),
  CONSTRAINT `word_id_8888` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `living`
--

LOCK TABLES `living` WRITE;
/*!40000 ALTER TABLE `living` DISABLE KEYS */;

/*!40000 ALTER TABLE `living` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meaning`
--

DROP TABLE IF EXISTS `meaning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meaning` (
  `word_id` int NOT NULL,
  `meaning` varchar(500) NOT NULL,
  `meaning_id` int NOT NULL,
  `pos_id` int NOT NULL,
  PRIMARY KEY (`meaning_id`),
  KEY `word_id_1_idx` (`word_id`),
  KEY `pos_id_22_idx` (`pos_id`),
  CONSTRAINT `pos_id22` FOREIGN KEY (`pos_id`) REFERENCES `parts_speech` (`pos_id`),
  CONSTRAINT `word_id_1` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meaning`
--

LOCK TABLES `meaning` WRITE;
/*!40000 ALTER TABLE `meaning` DISABLE KEYS */;
INSERT INTO `meaning` VALUES (1,'a piece of wood for hitting the ball in sports such as table tennis, cricket or baseball.',1,1),(1,'a mammal',2,2),(2,'a piece of wood for hitting the ball in sports such as table tennis, cricket or baseball.',3,3),(2,'a dance bar',4,4),(3,'delighting the senses or exciting intellectual or emotional admiration',5,5),(4,'pleasing by delicacy or grace; not imposing',6,6),(5,'provoking horror',7,7),(6,'provoking horror usually',8,8),(7,'any of various predatory carnivorous canine mammals of North America and Eurasia that usually hunt in packs',9,9);
/*!40000 ALTER TABLE `meaning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts_speech`
--

DROP TABLE IF EXISTS `parts_speech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts_speech` (
  `pos_id` int NOT NULL,
  `pos` varchar(55) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts_speech`
--

LOCK TABLES `parts_speech` WRITE;
/*!40000 ALTER TABLE `parts_speech` DISABLE KEYS */;
INSERT INTO `parts_speech` VALUES (1,'noun'),(2,'noun'),(3,'noun'),(4,'adjective'),(5,'adjective'),(6,'adjective'),(7,'adjective'),(8,'adjective'),(9,'noun');
/*!40000 ALTER TABLE `parts_speech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_syll`
--

DROP TABLE IF EXISTS `pro_syll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pro_syll` (
  `word_id` int NOT NULL,
  `pronunciation` varchar(55) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `syllable` varchar(55) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  PRIMARY KEY (`word_id`,`pronunciation`),
  CONSTRAINT `word_id` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_syll`
--

LOCK TABLES `pro_syll` WRITE;
/*!40000 ALTER TABLE `pro_syll` DISABLE KEYS */;
INSERT INTO `pro_syll` VALUES (1,'bÃ¦t','bat'),(2,'kluhb','club'),(3,'byutÉfÉl','beau-ti-ful'),(4,'prÉªti','pret-ty'),(5,'Êgli','ug-ly'),(6,'hÉrÉbÉl',' hor-ri-ble'),(7,'wÊlf',' wolf');
/*!40000 ALTER TABLE `pro_syll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punjabi`
--

DROP TABLE IF EXISTS `punjabi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punjabi` (
  `word_id` int NOT NULL,
  `punjabi_word` varchar(100) NOT NULL,
  PRIMARY KEY (`word_id`,`punjabi_word`),
  CONSTRAINT `word_id_333` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punjabi`
--

LOCK TABLES `punjabi` WRITE;
/*!40000 ALTER TABLE `punjabi` DISABLE KEYS */;
INSERT INTO `punjabi` VALUES (1,'à¨à©±à¨®à¨à¨¾à¨¦à¨°'),(1,'à¨à¨®à¨à¨¿à©±à¨¦à©'),(2,'à¨à©à¨¬à¨°à©'),(2,'à¨¡à©°à¨¡à¨¾'),(3,'à¨¸à©à©°à¨¦à¨° à¨¹à©à¥¤'),(4,' à¨ªà©à¨°à¨¿à¨à©'),(5,'à¨à©à¨à¨¾'),(6,'à¨¡à¨°à¨¾à¨à¨£à¨¾'),(7,'à¨­à©à©à©à¨');
/*!40000 ALTER TABLE `punjabi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synonym_`
--

DROP TABLE IF EXISTS `synonym_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `synonym_` (
  `meaning_id` int NOT NULL,
  `synonym_id` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`meaning_id`),
  KEY `meaning_id_44_idx` (`meaning_id`),
  KEY `synonym_id_idx` (`synonym_id`),
  CONSTRAINT `meaning_id_44` FOREIGN KEY (`meaning_id`) REFERENCES `meaning` (`meaning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synonym_`
--

LOCK TABLES `synonym_` WRITE;
/*!40000 ALTER TABLE `synonym_` DISABLE KEYS */;
INSERT INTO `synonym_` VALUES (6,'3'),(7,'4'),(5,'6'),(8,'7');
/*!40000 ALTER TABLE `synonym_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `words` (
  `word_id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(55) NOT NULL,
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'Bat'),(2,'Club'),(3,'Beautiful'),(4,'Pretty'),(5,'Ugly'),(6,'Horrible'),(7,'Wolf');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-29  2:47:27
