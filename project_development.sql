-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: project_development
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.17.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','$2a$10$o7yD4ovIVWYs20IDxFDP9u2BlYOXm1iU4StTWfVgPpXlwawObq9ie','2017-06-20 16:41:28','2017-06-20 16:41:28'),(2,'admin2','$2a$10$9Ae3RvcYiASdxj7x1gzhG.tfWjeNjVdZDw2KGMduDCpi8sULG60QS','2017-06-21 05:01:11','2017-06-21 05:01:11');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-06-05 13:26:57','2017-06-05 13:26:57');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `areaname` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_areas_on_state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Masai',1,'2017-06-20 16:38:52','2017-06-20 16:38:52'),(2,'Bukit Bintang',14,'2017-06-20 16:40:59','2017-06-20 16:40:59'),(3,'Johor Bahru',1,'2017-06-20 16:41:05','2017-06-20 16:41:05'),(4,'Kulai',1,'2017-06-20 16:41:10','2017-06-20 16:41:10');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `details` text,
  `attachment` varchar(255) DEFAULT NULL,
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_certificates_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
INSERT INTO `certificates` VALUES (2,'AAAAAAAAAAAA','AAAAAAAAAAAAAAA','23jk580.jpg',1,'2017-06-21 12:24:37','2017-06-21 12:24:37');
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `languagetype` varchar(255) DEFAULT NULL,
  `details` text,
  `price` varchar(255) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_courses_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Intensive English Program','English','This 18-lesson per week program is ELEC\'s most popular and covers all of the major language skills including: grammar, vocabulary, conversation, pronunciation, reading, writing and listening comprehension. Students in Intensive English Program (IEP) study Monday through Friday.','-','23jk580.jpg','9:00 - 10:30	Speaking - Listening - Grammar 10:30 - 10:45	Break 10:45 - 12:15	Reading - Writing - Grammar 12:25 - 1:00	Lunch  1:00 - 2:00	 Communicate with Confidence 1 2:00 - 2:15	Break  2:15 - 3:15	Communicate with Confidence 2',3,'2017-06-23 05:36:53','2017-06-23 05:43:30'),(2,'Semi- Intensive English Program','English','The semi-Intensive Program at ELEC is designed to promote communicative competence in English. These classes are designed for those who have a busy lifestyle but need to improve their English language skills. Students who register for this program participate in 3 days classes, either in the morning or afternoon. Students study 6 hours per week.\r\n\r\nSemi- Intensive English Program Highlights:\r\n\r\n3 days a week classes (Mon, Wed, Fri)\r\nOpen to students at any level, beginner through advanced\r\n2 hours per session\r\n12 Lessons a month','',NULL,'3 days a week classes (Mon, Wed, Fri)',3,'2017-06-23 05:46:15','2017-06-23 05:46:15'),(3,'IELTS Test Registration and Examination Center','English','Having an IELTS (International English Language Testing System) certificate has been one of the necessities for students who are willing to study in a foreign university or people who want to migrate to other countries.\r\n\r\nHence, ELEC offers IELTS course . The students who have limited time with an almost good proficiency of English can join a 1-Month IELTS Preparation Course and those who have an average knowledge of English are recommended to attend a 2-month Course which includes IELTS Foundation and Preparation. Our center\'s IELTS Preparation Course guarantees students to achieve band 6 out of 9 either in General or Academic IELTS Test; provided that there English proficiency when they join the course is upper-Intermediate (Level 9 and above).\r\n\r\nStudents who are studying in general English classes can also join IELTS preparation courses provided that they have passed Intermediate level (L8) successfully.','',NULL,'',3,'2017-06-23 05:47:48','2017-06-23 05:47:48');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'Yek Boon Keat','dx3152@hotmail.com','+60167193152','AAAAAAAAA','AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA','2017-06-21 05:25:35','2017-06-21 05:25:35'),(2,'Yek Wenjie','dx3152@hotmail.com','+60167193152','AAAAAAAAAAAAAAAAAAA','AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA','2017-06-21 05:25:57','2017-06-21 05:25:57'),(3,'Yek Wenjie','dx3152@hotmail.com','+60167193152','AAAAAAAAAAAAAAAAAAA','AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA','2017-06-21 05:26:55','2017-06-21 05:26:55'),(4,'Yek Wenjie','dx3152@hotmail.com','+60167193152','AAAAAAaaaaaaaaaaaaaaa','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2017-06-21 05:27:26','2017-06-21 05:27:26');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','2017-06-21 05:01:24','2017-06-21 05:01:24'),(2,'Korea','2017-06-21 05:01:28','2017-06-21 05:01:28'),(3,'Mandarin','2017-06-21 05:01:33','2017-06-21 05:01:33'),(4,'Bahasa Melayu','2017-06-21 05:01:41','2017-06-21 05:01:41'),(5,'India','2017-06-21 05:01:48','2017-06-21 05:01:48');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsfeeds`
--

DROP TABLE IF EXISTS `newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsfeeds` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `details` text,
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_newsfeeds_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeeds`
--

LOCK TABLES `newsfeeds` WRITE;
/*!40000 ALTER TABLE `newsfeeds` DISABLE KEYS */;
INSERT INTO `newsfeeds` VALUES (2,'AAA','AAA',1,'2017-06-21 12:33:50','2017-06-21 12:33:50');
/*!40000 ALTER TABLE `newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `details` text,
  `attachments` varchar(255) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotions_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170603133919'),('20170610073847'),('20170610122808'),('20170610133406'),('20170611005158'),('20170611115201'),('20170611125625'),('20170619120448'),('20170620071859'),('20170620155222'),('20170620155411'),('20170621044851'),('20170621115856'),('20170621115919');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_attachments`
--

DROP TABLE IF EXISTS `school_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `directory` varchar(255) DEFAULT NULL,
  `attachmenttype` varchar(255) DEFAULT NULL,
  `description` text,
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_school_attachments_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_attachments`
--

LOCK TABLES `school_attachments` WRITE;
/*!40000 ALTER TABLE `school_attachments` DISABLE KEYS */;
INSERT INTO `school_attachments` VALUES (1,'IMG_0970.jpg','Picture','AAAAAAAAAAAA',1,'2017-06-21 05:07:39','2017-06-21 05:07:39'),(2,'elec-logo2.png','Picture','',3,'2017-06-23 05:48:08','2017-06-23 05:48:08');
/*!40000 ALTER TABLE `school_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_users`
--

DROP TABLE IF EXISTS `school_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` text,
  `city` text,
  `state` text,
  `postcode` text,
  `description` text,
  `transportation` text,
  `profilepicture` text,
  `status` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_users`
--

LOCK TABLES `school_users` WRITE;
/*!40000 ALTER TABLE `school_users` DISABLE KEYS */;
INSERT INTO `school_users` VALUES (1,'Wenjie Language School','$2a$10$1VK/a1q/.7cPt5Ea9QjGn.ZFb2JnZlSMs3nDfZHLNs6REk4L6FMrC','dx3152@hotmail.com','0167193152','www.wenjieyek.com','Block 5, No 03-11, Jalan Kemuning\r\nTaman Sri Plentong','Masai','Johor','81750','Best Language School','No','IMG_0970.jpg',1,'2017-06-21 05:06:17','2017-06-21 10:23:45'),(2,'testdeactive','$2a$10$T2pzEqxcHOcpIIKW9MK8xu93n4rJ6lWe4NakmZzU90vL2/n2WlKCm','testdeactive@hotmail.com','11111','testdeactive','testdeactive','Masai','Johor','81750','testdeactivetestdeactive','testdeactivetestdeactive','IMG_0970.jpg',1,'2017-06-21 08:29:08','2017-06-21 10:03:14'),(3,'ELEC Language Center','$2a$10$4XWcatDjdEUarmIxVGrgMOyCpHiZB3peGUfTrzje2SoDTaYaR0ELO','elec@hotmail.com','0321669827','http://www.elec.edu.my','Unit B-1-8 & B-1-9 & B-1-10\r\nBlock B Megan Avenue II\r\nNo 12 Jalan Yap Kwan Seng\r\n50450 Kuala Lumpur, MALAYSIA','Bukit Bintang','Kuala Lumpur','50450','ELEC Education Group is a Malaysia based company and was founded in 2010. Its goal is to provide local and international students with the highest standards of education and facilities. ELEC Education Group includes two sub-groups namely: ELEC Language Center and ELEC Training Center.\r\n\r\nELEC Language Center offers language learning programs in English, Mandarin and Malay.\r\n\r\nELEC Training Center offers programs in Tourism, Accounting, Business Administration and ICT with an internationally recognised certificate (LCCI) awarded at the end of each term.\r\n\r\nOur programs will be student centered and focus on guiding you by making use of our experienced staff and expertise. Your success is our priority.','no','elec-logo2.png',1,'2017-06-23 05:35:26','2017-06-24 10:25:54');
/*!40000 ALTER TABLE `school_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Johor','2017-06-20 16:33:40','2017-06-20 16:33:40'),(2,'Kedah','2017-06-20 16:33:46','2017-06-20 16:33:46'),(3,'Kelantan','2017-06-20 16:33:55','2017-06-20 16:33:55'),(4,'Melaka','2017-06-20 16:34:00','2017-06-20 16:34:00'),(5,'Sembilan','2017-06-20 16:34:10','2017-06-20 16:34:10'),(6,'Pahang','2017-06-20 16:34:17','2017-06-20 16:34:17'),(7,'Perak','2017-06-20 16:34:22','2017-06-20 16:34:22'),(8,'Perlis','2017-06-20 16:34:29','2017-06-20 16:34:29'),(9,'Penang','2017-06-20 16:34:40','2017-06-20 16:34:40'),(10,'Sabah','2017-06-20 16:34:44','2017-06-20 16:34:44'),(11,'Sarawak','2017-06-20 16:34:49','2017-06-20 16:34:49'),(12,'Selangor','2017-06-20 16:34:55','2017-06-20 16:34:55'),(13,'Terengganu','2017-06-20 16:35:01','2017-06-20 16:35:01'),(14,'Kuala Lumpur','2017-06-20 16:35:07','2017-06-20 16:35:07');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `languagetype` varchar(255) DEFAULT NULL,
  `details` text,
  `profilepicture` varchar(255) DEFAULT NULL,
  `resumes` varchar(255) DEFAULT NULL,
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_teachers_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testdeactive@hotmail.com','$2a$10$uFK2zevJmd.iymaNGwnqmOLmtC/LS2Q7Q8d10576vG7iKLz/1SKGO','testdeactive@hotmail.com','11111111',1,'2017-06-21 08:32:26','2017-06-21 10:23:15');
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

-- Dump completed on 2017-06-25 13:53:59
