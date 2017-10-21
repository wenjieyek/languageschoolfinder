-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: project_development
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
INSERT INTO `admins` VALUES (1,'admin','$2a$10$d7EIkIHBliY9Wh1I6kK45uJ1o02ulMN4ngqtod8Gp6a9Ogp0dJiHK','2017-06-29 03:44:30','2017-06-29 03:44:30'),(2,'admin2','$2a$10$JqTcTbXtR7Uxc43lzwGiheuutbGZ5iu0i5Lt7.xatpigYO9aOCB2u','2017-06-29 03:44:47','2017-06-29 03:44:47');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ahoy_events`
--

DROP TABLE IF EXISTS `ahoy_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ahoy_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `visit_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `properties` text,
  `time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ahoy_events_on_visit_id_and_name` (`visit_id`,`name`),
  KEY `index_ahoy_events_on_user_id_and_name` (`user_id`,`name`),
  KEY `index_ahoy_events_on_name_and_time` (`name`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ahoy_events`
--

LOCK TABLES `ahoy_events` WRITE;
/*!40000 ALTER TABLE `ahoy_events` DISABLE KEYS */;
INSERT INTO `ahoy_events` VALUES (16,1,NULL,'Get Current View and ID','1','2017-10-14 23:31:43'),(17,1,NULL,'Get Current View and ID','1','2017-10-14 23:31:47'),(18,1,NULL,'Get Current View and ID','1','2017-10-14 23:33:00'),(19,1,NULL,'Get Current View and ID','2','2017-10-14 23:33:43'),(20,1,NULL,'Get Current View and ID','2','2017-10-14 23:33:46'),(21,1,NULL,'Get Current View and ID','2','2017-10-14 23:33:47'),(22,1,NULL,'Get Current View and ID','2','2017-10-14 23:33:47'),(23,1,NULL,'Get Current View and ID','2','2017-10-14 23:33:48'),(24,1,NULL,'Get Current View and ID','1','2017-10-14 23:49:29'),(25,1,NULL,'Get Current View and ID','1','2017-10-15 00:00:55'),(26,1,NULL,'Get Current View and ID','1','2017-10-15 00:01:55'),(27,1,NULL,'Get Current View and ID','1','2017-10-15 00:02:28'),(28,2,NULL,'Get Current View and ID','1','2017-10-15 13:20:59'),(29,2,NULL,'Get Current View and ID','2','2017-10-15 13:21:00'),(30,2,NULL,'Get Current View and ID','1','2017-10-15 13:58:53'),(31,2,NULL,'Get Current View and ID','1','2017-10-15 13:59:07'),(32,2,NULL,'Get Current View and ID','1','2017-10-15 13:59:08'),(33,2,NULL,'Get Current View and ID','1','2017-10-15 13:59:10'),(34,2,NULL,'Get Current View and ID','1','2017-10-15 13:59:15'),(35,2,NULL,'Get Current View and ID','1','2017-10-15 13:59:42'),(36,2,NULL,'Get Current View and ID','1','2017-10-15 13:59:46'),(37,2,NULL,'Get Current View and ID','1','2017-10-15 13:59:50'),(38,2,NULL,'Get Current View and ID','1','2017-10-15 13:59:52'),(39,2,NULL,'Get Current View and ID','1','2017-10-15 13:59:53'),(40,2,NULL,'Get Current View and ID','1','2017-10-15 13:59:57'),(41,2,NULL,'Get Current View and ID','2','2017-10-15 14:01:50'),(42,2,NULL,'Get Current View and ID','2','2017-10-15 14:01:54'),(43,2,NULL,'Get Current View and ID','2','2017-10-15 14:01:55'),(44,2,NULL,'Get Current View and ID','2','2017-10-15 14:01:56'),(45,2,NULL,'Get Current View and ID','2','2017-10-15 14:02:00'),(46,2,NULL,'Get Current View and ID','2','2017-10-15 14:02:23'),(47,2,NULL,'Get Current View and ID','2','2017-10-15 14:05:57'),(48,2,NULL,'Get Current View and ID','2','2017-10-15 14:05:58'),(49,2,NULL,'Get Current View and ID','2','2017-10-15 14:05:59'),(50,2,NULL,'Get Current View and ID','2','2017-10-15 14:07:31'),(51,2,NULL,'Get Current View and ID','2','2017-10-15 14:13:56'),(52,2,NULL,'Get Current View and ID','2','2017-10-15 14:14:00'),(53,2,NULL,'Get Current View and ID','2','2017-10-15 14:17:55'),(54,2,NULL,'Get Current View and ID','2','2017-10-15 14:18:12'),(55,2,NULL,'Get Current View and ID','2','2017-10-15 14:18:13'),(56,2,NULL,'Get Current View and ID','2','2017-10-15 14:18:19'),(57,2,NULL,'Get Current View and ID','1','2017-10-15 14:19:26'),(58,2,NULL,'Get Current View and ID','1','2017-10-15 14:19:41'),(59,3,NULL,'Get Current View and ID','2','2017-10-15 19:31:13'),(60,4,NULL,'Get Current View and ID','2','2017-10-16 16:45:41'),(61,5,NULL,'Get Current View and ID','1','2017-10-18 21:39:26'),(62,6,NULL,'Get Current View and ID','2','2017-10-19 21:44:22'),(63,6,NULL,'Get Current View and ID','1','2017-10-19 21:44:29');
/*!40000 ALTER TABLE `ahoy_events` ENABLE KEYS */;
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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-10-02 06:57:38','2017-10-02 06:57:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Johor Bahru',1,'2017-06-29 03:50:26','2017-06-29 03:50:26'),(2,'Kulai',1,'2017-06-29 03:50:31','2017-06-29 03:50:31'),(3,'Masai',1,'2017-06-29 03:50:36','2017-06-29 03:50:36'),(5,'Bukit Bintang',13,'2017-06-29 03:50:55','2017-09-03 11:55:10'),(6,'Kulai',1,'2017-10-10 01:27:59','2017-10-10 01:27:59'),(7,'Senai',1,'2017-10-10 01:28:31','2017-10-10 01:28:31'),(8,'Skudai',1,'2017-10-10 01:28:40','2017-10-10 01:28:40');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `school_user_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_bookmarks_on_school_user_id` (`school_user_id`),
  KEY `index_bookmarks_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
INSERT INTO `bookmarks` VALUES (5,1,1,'Southern University College','2017-10-15 21:59:57','2017-10-15 21:59:57'),(8,2,1,'ELEC Education Group','2017-10-15 22:14:00','2017-10-15 22:14:00');
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
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
INSERT INTO `certificates` VALUES (1,'Malaysia English Test Center','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','att_o_sr_serebro.jpg',1,'2017-10-01 06:09:18','2017-10-01 06:09:18'),(2,'Toefl English Test Center','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','att_o_sr_serebro.jpg',1,'2017-10-01 06:09:58','2017-10-01 06:09:58');
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
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_courses_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'English for Beginner ','English','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','RM1200','20151021111014.pdf',1,'2017-10-01 06:10:48','2017-10-01 06:10:48'),(2,'Advanced English','English','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','RM3000','20151021111014.pdf',1,'2017-10-01 06:11:18','2017-10-01 06:11:18'),(3,'Mandarin for Beginner','Mandarin','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','RM1300',NULL,1,'2017-10-10 11:47:39','2017-10-10 11:47:39'),(4,'English for Beginner ','English','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','RM1200',NULL,2,'2017-10-12 06:52:12','2017-10-12 06:52:12'),(5,'Advanced English','English','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','',NULL,2,'2017-10-12 06:52:23','2017-10-12 06:52:23'),(6,'Mandarin for Beginner','Mandarin','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','',NULL,2,'2017-10-12 06:52:34','2017-10-12 06:52:34'),(7,'Korean for Beginner ','Korean','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','',NULL,2,'2017-10-12 06:52:45','2017-10-12 06:52:45');
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
  `status` int(11) DEFAULT '0',
  `details` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'Yek Boon Keat','dx3152@hotmail.com','+60167193152','Hail Hydra',1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-10-05 07:00:26','2017-10-05 07:03:50'),(2,'Yek Wenjie','dx3152@hotmail.com','+60167193152','Lorem ipsum dolor sit amet',0,'Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet','2017-10-05 08:38:40','2017-10-05 08:38:40');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiries`
--

DROP TABLE IF EXISTS `inquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inquiries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `title` text,
  `details` text,
  `status` int(11) DEFAULT '0',
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inquiries_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiries`
--

LOCK TABLES `inquiries` WRITE;
/*!40000 ALTER TABLE `inquiries` DISABLE KEYS */;
INSERT INTO `inquiries` VALUES (1,'','','','','',0,1,'2017-10-05 06:23:17','2017-10-05 06:23:17'),(2,'Yek Wenjie','dx3152@hotmail.com','English for Beginner ','Hail Hydra','Hail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail HydraHail Hydra',1,1,'2017-10-05 06:31:35','2017-10-05 06:41:31');
/*!40000 ALTER TABLE `inquiries` ENABLE KEYS */;
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
INSERT INTO `languages` VALUES (1,'English','2017-06-29 03:51:02','2017-06-29 03:51:02'),(2,'Mandarin','2017-06-29 03:51:05','2017-06-29 03:51:05'),(3,'Bahasa Melayu','2017-06-29 03:51:11','2017-06-29 03:51:11'),(4,'Korean','2017-06-29 03:51:16','2017-06-29 03:51:16'),(5,'French','2017-06-29 03:51:34','2017-06-29 03:51:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeeds`
--

LOCK TABLES `newsfeeds` WRITE;
/*!40000 ALTER TABLE `newsfeeds` DISABLE KEYS */;
INSERT INTO `newsfeeds` VALUES (1,'First Aid Talks','The First Aid talks was organised by Malaysian Red Crescent Johor Bahru Chapter VAD 20 (SUC) and co-organised by the Faculty of Chinese Medicine on 20th September 2017 (Wednesday), with the purpose of providing opportunities for all students in Southern University College to learn first aid skills.\r\n\r\nThe students arrived for registration of this seminar at 6.30p.m. At 7.00p.m., the seminar started on time. During the seminar, our speaker, Mr. Chin Chong Fatt, introduced the meaning of first aids. He also taught the students some emergency treatments to ensure that students can apply the first aid knowledge to help others in emergency situation.\r\n\r\nThe seminar ended at 9.30p.m. The chairman of Malaysian Red Crescent Johor Bahru Chapter VAD 20 (SUC), Mr. Lea Lian Ye, gave some souvenirs to our speaker. From this seminar, the students learnt the skills which cannot be learnt from classroom. We hope that there will be a similar seminar soon.\r\n\r\n<img src=\"http://www.sc.edu.my/newssystem/attached/image/2017/09/20170928180655_610.jpg\" class=\"responsive-img\">',1,'2017-10-01 05:59:12','2017-10-01 06:03:47'),(2,'A Technical Talk “Functional Testing Overview (Manufacturing)” by I- Stone Mr. Lee Yong Ho','On 21st September 2017, Department of Electrical and Electronics Engineering of FEIT has invited Mr. Lee Yong Ho, the Project Manager from I-Stone Solution to give a technical talk on the title of “Functional testing Overview (Manufacturing). I-Stone comprises of a group of dedicated, experienced and specialized engineers who have in depth knowledge of test and manufacturing process as well as system design and integration. They provide one stop test and measurement solution service. They help clients to build highly cost effective test and measurement solutions.\r\n\r\nThe technical talk was attended by approximately 20 students from both diploma and degree programme of Electronics Engineering. During the 2 hours talk, Mr. Lee explained the general ideas of white box and black box testing as well as the operation of his company. He mentioned that the uniqueness of I-Stone is to provide complete design and development services for test and measurement, involve from test concept, electronics design, software design, mechanical design and deployment. He briefly explained the flows of designing a machine as required by the supplier, which involve the Mechanical Engineer, Software Engineer and Electronic Engineer. Engineers have to work together to complete the design within 8-12 weeks, which required a lot of commitment\r\n\r\nAt the same time, Mr. Lee also shared his experience as an engineer and his expectation of our future graduates. He mentioned that the most important element in hiring graduate is the willingness to learn from the bottom. He advised our students that to be successful as an engineer, one need to be passionate about his role and should be keeping abreast of new technologies. He also encouraged our students to be more hand-on practice rather than keep memorising those theories and formulas. Lastly, he welcomed our student to attend the industrial visit to his company, located at Taman University on 29th September 2017.',1,'2017-10-01 06:04:21','2017-10-01 06:04:21'),(3,'Industrial Visit to Pelentong Electronic Industries, Johor Bahru, Johor','On 12th September 2017, 18 EE students led by lecturer Mr. Tan Teck Siang had made a visit to Pelentong Electronic Industries located at Taman MountAustin, Johor.\r\n\r\nBefore visiting the company, the Engineer Raymond Otaku Ting briefed the background of Pelentong Electronic Industries. After that, the students were led by Mr. Ting to visit the manufacturing line. During the visitation, he introduced the wire parameters and its selection. He also explained the process of production. After visiting, General Manager, Mr. Lee Ting Sheng discussed on the collaboration between the company and SUC.\r\n\r\nWe believe that the students have gained a better understanding of industrial production after the visit and this experience will help them in the future.  \r\n\r\n\r\n工业参访新山Pelentong Electronic Industries\r\n\r\n\r\n2017年9月12日，陈德祥讲师带领18位电子工程系的学生参观了位于Taman MountAustin的 Pelentong Electronic Industries.\r\n\r\n在参观公司之前，工程师Raymond Otaku Ting 先介绍公司的背景。之后，他带领学生参观公司的生产线让学生了解整个运作流程并且介绍电线的参数及选用。最后由该公司的总经理李庭盛先生讲解公司的历史并且提到了与本校电子工程系进行产学合作的事件。\r\n\r\n这个活动不仅让学生对工业生产有进一步了解，而且也会帮助到他们的未来。',1,'2017-10-01 06:04:45','2017-10-01 06:04:45'),(4,'Welcoming Activity For Batch 17-C Foundation Students','The Welcoming Activity For Batch 17-C Foundation Students had been recently held on 12th September 2017, 5:00pm to 10:00pm at Music Café in Southern University College. The purpose of this activity is to welcome all the new batch 17-C foundation students and also to develop good relationship between foundation students, staff and lecturers as well as build up team work and organization skills.\r\n\r\nThis activity was started off by self-introduction & speech by Dr. Tan Wei Lun (Deputy Director of School of Foundation Studies), Ms. Renugala (Head of Foundation in Arts), Dr. Lai Sin Yuan (Assistant Professor of Foundation in Science), Ms. Nor Reha Binti Ibrahim (Lecturer of Foundation in Arts), Ms. Chong Chin Yik (Admin Assistant of School of Foundation Studies) and Mr. Jusvin Khoo Chong Zhen (President of Foundation Society). From their speech, they sincerely welcome all the new batch 17-C foundation students in joining our big family. Dr. Tan Wei Lun encouraged students to enjoy their one year foundation study in Southern University College and manage to graduate on time without retake any subject. Ms. Renugala appreciated Foundation Society committee members for organizing this activity, she also encouraged students to have positive mind set when facing difficult situation and be able to handle stress. Dr. Lai Sin Yuan shared another meaning of word – Strength, it means the ability to stand up again and be strong when falling down. Ms. Nor Reha Binti Ibrahim encourages students to reunion without separate in few groups especially Foundation in Science’ group and Foundation in Arts’ group. Ms. Chong Chin Yik mentioned that our school is multi-racial and multi-cultural, she hopes all students can make friend with each other no matter the race, country and culture. She also encouraged students to share their thoughts/ opinions with lecturer or friend whenever they feel to do. Mr. Jusvin Khoo Chong Zhen appreciated all participants for attending this activity and hopes they enjoy it. \r\n\r\nAfter the delicious dinner and joyful group photo session, an excited and ice-breaking game had been prepared by committee members. Then, a great movie from USA – I Am Sam had been shared during this activity, it is about the story of touching and inseparable relationship between a mental deficiency father and his intelligent 6 years old daughter. This movie also won numerous awards such as Critics\' Choice Movie Award for Best Young Actress, Producers Guild of America Award - Stanley Kramer Award, Satellite Special Achievement Award for Outstanding New Talent and etc.\r\n\r\nLast, this activity ended in a deep sense sharing session and grateful moment.',1,'2017-10-01 06:05:00','2017-10-01 06:06:54'),(5,'A Dialogue with DEE Industry Advisors and Professional Engineers','This is part of our degree curriculums commitment that emphasizes on close collaboration between industry and academic: to cultivate students that well- prepared for future employment.\r\n\r\nOn 10th August 2017, Department of Electrical and Electronics Engineering of FEIT has organized a dialogue entitled “Facing Tomorrow Engineering Problems” among students, lecturers, industry advisor and professional engineers (abbreviated as Irs). The speakers were Lee Ting Sheng, general manager of Pelentong Electronics Industries Sdn Bhd, a company that specializing in wire harness manufacturing and professional engineers: Ir Te Chin Cheng, Ir Tan Suh Yong and Ir Eric Yu who are serving in Southern UC.\r\n\r\nIn the dialogue, Mr Lee shared his experience regarding his expectation of fresh graduates. He said firmly that his company certainly will look for graduates who are communicative, proactive, good working attitude, having leadership and well-versed in English. He said engineering knowledge is  changing very fast and soon will be outdated. New technologies keep on surging in the market. A good engineer should be keeping abreast of new technologies, therefore he or she should be a fast learner and also passionate to continue learning new technologies. Therefore he said lecturers should not only impart knowledge for the sake of imparting knowledge but should encourage students to practice self-learning.\r\n\r\nIr Te, Ir Tan and Ir Eric Yu also sharing their road of obtaining professional qualifications. They advised fresh graduates should not to be too choosy in picking their first jobs. Higher salary may not be the main reason in securing first job for a fresh graduate. One should looks for a job that may have bright prospect (even salary is not so attractive in the beginning). When asked by students regarding how to know if a job has bright prospect, Ir Te pointed out that if a company always provides a lot of on-site trainings or workshops and has many experienced engineers that willing to share their technical knowledge, then one should consider to stay with this company for some time to gain more experience before hopping into next job. Ir Eric Yu emphasized that one should learn how to be a master of Public Relations (PR) if he or she wants to climb higher in social ladder, especially after he or she was promoted from engineer to project manager. Finally Ir Tan joked that a good engineer also should know how to find a good partner to build a happy family.\r\n\r\nThe dialogue attracted 17 diploma and degree students, after the dialogue a lunch was served.',1,'2017-10-01 06:05:18','2017-10-01 06:05:18'),(6,'Newsfeed 1','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',2,'2017-10-15 22:03:23','2017-10-15 22:03:23'),(7,'Newsfeed 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',2,'2017-10-15 22:03:31','2017-10-15 22:03:31');
/*!40000 ALTER TABLE `newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_applications`
--

DROP TABLE IF EXISTS `online_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online_applications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `intakedate` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `profilepicture` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ic` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `address` text,
  `status` int(11) DEFAULT '0',
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_online_applications_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_applications`
--

LOCK TABLES `online_applications` WRITE;
/*!40000 ALTER TABLE `online_applications` DISABLE KEYS */;
INSERT INTO `online_applications` VALUES (1,'9 October, 2017','English for Beginner ','20170316110241.jpg','dx3152@hotmail.com','Yek Boon Keat','950404665017','Male','Malaysia',22,'+60167193152','Block 5, No 03-11, Jalan Kemuning\r\nTaman Sri Plentong',1,1,'2017-10-03 00:21:04','2017-10-05 06:17:37'),(2,'','English for Beginner ',NULL,'','','','Male','Malaysia',NULL,'','',0,1,'2017-10-05 06:22:02','2017-10-05 06:22:02'),(3,'','English for Beginner ',NULL,'','','','Male','Malaysia',NULL,'','',0,1,'2017-10-05 08:31:26','2017-10-05 08:31:26'),(4,'12 October, 2017','Advanced English',NULL,'dx3152@hotmail.com','Yek','950404665017','Male','Malaysia',22,'+60167193152','Block 5, No 03-11, Jalan Kemuning\r\nTaman Sri Plentong',0,1,'2017-10-15 08:01:55','2017-10-15 08:01:55');
/*!40000 ALTER TABLE `online_applications` ENABLE KEYS */;
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
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotions_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,'Early Bird Promotion, All Courses Discount 10%','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','20151021111014.pdf','2017-10-01','2017-10-31',1,'2017-10-01 06:16:45','2017-10-01 06:16:45'),(2,'Early Bird Promotion','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,'2017-09-01','2017-09-30',1,'2017-10-01 06:17:06','2017-10-01 06:17:06');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `courses` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `facilities` int(11) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `activities` int(11) DEFAULT NULL,
  `coursename` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comments` text,
  `school_user_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ratings_on_school_user_id` (`school_user_id`),
  KEY `index_ratings_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,5,4,4,4,4,'English for Beginner ','A Very Good School','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',1,1,'2017-10-01 06:21:07','2017-10-01 06:35:24');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20170603133919'),('20170610073847'),('20170610122808'),('20170610133406'),('20170611005158'),('20170611115201'),('20170611125625'),('20170619120448'),('20170620071859'),('20170620155222'),('20170620155411'),('20170621044851'),('20170621115856'),('20170621115919'),('20170715062916'),('20170715102816'),('20170715135419'),('20170716064538'),('20170914041955'),('20171015051335'),('20171015051336');
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
  `details` text,
  `priority` int(11) DEFAULT NULL,
  `school_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_school_attachments_on_school_user_id` (`school_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_attachments`
--

LOCK TABLES `school_attachments` WRITE;
/*!40000 ALTER TABLE `school_attachments` DISABLE KEYS */;
INSERT INTO `school_attachments` VALUES (1,'001.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',2,1,'2017-10-02 07:15:37','2017-10-02 07:15:37'),(2,'002.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',1,1,'2017-10-02 07:15:55','2017-10-02 07:15:55'),(3,'009.jpg','',1,1,'2017-10-02 07:29:18','2017-10-02 07:29:18');
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
  `location` text,
  `status` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_users`
--

LOCK TABLES `school_users` WRITE;
/*!40000 ALTER TABLE `school_users` DISABLE KEYS */;
INSERT INTO `school_users` VALUES (1,'Southern University College','$2a$10$Utm7v66UOil65.oPti3sDOYx0ae8ubud1t90KYN6v.fJGa3tflRb.','southern@hotmail.com','+607 5586605','http://www.southern.edu.my','Jalan Selatan Utama, Off Jalan Skudai, 81300 Skudai, Johor','Johor Bahru','Johor','81300','Southern University College (also known as Southern UC) attained its current status in 2012. It was previously known as Southern College - established in 1990 as the first non-profit institute of higher-education in Malaysia to provide a local educational channel for high school graduates who were unable to further their studies in foreign countries or gain admission to other local tertiary educational institutions.\r\n\r\nHistorically, Southern UC has its origin 42 years ago (in 1975) in Foon Yew High School, Johor Bahru, offering an Advanced Studies Programme. In 1986, the Foon Yew Board of Directors applied to the Ministry of Education to set up a community funded college. Through the persistent effort of the Chinese community leaders, approval was subsequently obtained from the Ministry of Education in 1990 for the establishment of Southern College.\r\n\r\nSouthern UC is located in the Skudai area of Johor Bahru, Malaysia - an area within the Iskandar Malaysia Economic Zone. Its campus land is sized at 33 acres, mainly donated by philanthropist Mr. Seow Wan Heong. Following the development of Iskandar Malaysia Economic Zone, Southern UC will be one of the important educational institutions in Malaysia, and has poised itself to become an international educational institution. The Southern UC campus is a scenic spot, rich in Chinese traditional colours and a multicultural atmosphere that encompasses the spirit of co-existence and multi-culturism.\r\n\r\nCurrently, Southern UC has 7 faculties, 3 schools, and 4 research institutes. The 7 Faculties include Faculty of Humanities and Social Sciences, Faculty of Business and Management, Faculty of Art and Design, Faculty of Engineering and Information Technology, Faculty of Chinese Medicine, Faculty of Education and Public Welfare and Southern Institute of Technical Education (SITE). The 3 schools comprised School of Foundation Studies, School of Tourism Hospitality Management (THM), and School of Professional & Continuing Education (SPACE). And the 4 research institutes include Institute of Graduate Studies and Research (IGSR), Research Institute of Chinese Ethnicity & Culture, Asian Renaissance and Literature Lyceum, and Research Institute of Malay Language and Culture. Southern UC is planning to become a full-fledged university by 2021, and aims to become a well-known International University by 2030.','No','SouthernLogo_01b.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.389126123662!2d103.6796735142341!3d1.5336266988815916!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da73c109632e0b%3A0x74cda51bf210c304!2z5Y2X5pa55aSn5a245a246Zmi!5e0!3m2!1szh-CN!2smy!4v1506837238922\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',1,'2017-10-01 05:55:01','2017-10-01 05:55:01'),(2,'ELEC Education Group','$2a$10$H.CRX84MBTYA4IMbhCj7ZeUoaks4/Esvorb7XTJoy5LBc6DF/Oxye','elec@hotmail.com','+(603) 2164 9827 ','http://www.elec.edu.my','Unit B-1-8 & B-1-9 & B-1-10\r\nBlock B Megan Avenue II\r\nNo 12 Jalan Yap Kwan Seng\r\n50450 Kuala Lumpur, MALAYSIA','Johor Bahru','Selangor','50450','ELEC Education Group is a Malaysia based company and was founded in 2010. Its goal is to provide local and international students with the highest standards of education and facilities. ELEC Education Group includes two sub-groups namely: ELEC Language Center and ELEC Training Center.\r\n\r\nELEC Language Center offers language learning programs in English, Mandarin and Malay.\r\n\r\nELEC Training Center offers programs in Tourism, Accounting, Business Administration and ICT with an internationally recognised certificate (LCCI) awarded at the end of each term.\r\n\r\nOur programs will be student centered and focus on guiding you by making use of our experienced staff and expertise. Your success is our priority.','No','elec-logo2.png','',1,'2017-10-12 06:51:45','2017-10-12 06:53:18');
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
INSERT INTO `states` VALUES (1,'Johor','2017-06-29 03:46:38','2017-06-29 03:46:38'),(2,'Kedah','2017-06-29 03:46:41','2017-06-29 03:46:46'),(3,'Kelantan','2017-06-29 03:46:53','2017-06-29 03:46:53'),(4,'Melaka','2017-06-29 03:46:59','2017-06-29 03:46:59'),(5,'Sembilan','2017-06-29 03:47:06','2017-06-29 03:47:59'),(6,'Kuantan','2017-06-29 03:47:42','2017-06-29 03:47:42'),(7,'Pahang','2017-06-29 03:48:07','2017-06-29 03:48:07'),(8,'Perak','2017-06-29 03:49:05','2017-06-29 03:49:05'),(9,'Perlis','2017-06-29 03:49:13','2017-06-29 03:49:13'),(10,'Penang','2017-06-29 03:49:21','2017-06-29 03:49:21'),(11,'Sabah','2017-06-29 03:49:26','2017-06-29 03:49:26'),(12,'Sarawak','2017-06-29 03:49:32','2017-06-29 03:49:32'),(13,'Selangor','2017-06-29 03:49:41','2017-06-29 03:49:41'),(14,'Terengganu ','2017-06-29 03:49:51','2017-06-29 03:49:51');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Prof. Wong Tai Chee','English','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','20170316110241.jpg','20151021111014.pdf',1,'2017-10-01 06:15:07','2017-10-01 06:15:07'),(2,'Dr Soh Wen Yi','English','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','20160815114006.jpg','20151021111014.pdf',1,'2017-10-01 06:15:26','2017-10-01 06:15:26'),(3,'Prof. Zhan Hang Lun','Mandarin','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','20160115080559.jpg','20151021111014.pdf',1,'2017-10-01 06:15:59','2017-10-01 06:15:59');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetables`
--

DROP TABLE IF EXISTS `timetables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetables` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `day` int(11) DEFAULT NULL,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_timetables_on_course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetables`
--

LOCK TABLES `timetables` WRITE;
/*!40000 ALTER TABLE `timetables` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetables` ENABLE KEYS */;
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
  `profilepicture` varchar(255) DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'Wenjie Yek','$2a$10$yyxIZLaDgSGm3mLA129ZJeRiipYZb0dKuk0N9Y2CLHoIzK5nb2f7W','dx3152@hotmail.com','Block 5, No 03-11, Jalan Kemuning\r\nTaman Sri Plentong','profile_img.png',1,'2017-10-01 06:20:26','2017-10-01 06:20:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visits` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `visit_token` varchar(255) DEFAULT NULL,
  `visitor_token` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` text,
  `referrer` text,
  `landing_page` text,
  `user_id` int(11) DEFAULT NULL,
  `referring_domain` varchar(255) DEFAULT NULL,
  `search_keyword` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `screen_height` int(11) DEFAULT NULL,
  `screen_width` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,0) DEFAULT NULL,
  `longitude` decimal(10,0) DEFAULT NULL,
  `utm_source` varchar(255) DEFAULT NULL,
  `utm_medium` varchar(255) DEFAULT NULL,
  `utm_term` varchar(255) DEFAULT NULL,
  `utm_content` varchar(255) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_visits_on_visit_token` (`visit_token`),
  KEY `index_visits_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (1,'09a2b1db-09c2-45c4-a157-052b98a2c09a','21c1af51-f7e2-4b7b-9da8-156840d00845','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.83 Safari/537.36','http://localhost:3000/','http://localhost:3000/',NULL,'localhost',NULL,'Chrome','Linux','Desktop',768,1366,'Reserved',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'2017-10-14 21:33:16'),(2,'c8b1a19b-3024-4be3-95a0-0eeeaf99d2c5','21c1af51-f7e2-4b7b-9da8-156840d00845','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.83 Safari/537.36',NULL,'http://localhost:3000/',NULL,NULL,NULL,'Chrome','Linux','Desktop',768,1366,'Reserved',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'2017-10-15 13:19:11'),(3,'5e52b0ab-8234-4dd2-851b-2bc4ef9b1822','21c1af51-f7e2-4b7b-9da8-156840d00845','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.83 Safari/537.36',NULL,'http://localhost:3000/',NULL,NULL,NULL,'Chrome','Linux','Desktop',768,1366,'Reserved',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'2017-10-15 19:28:09'),(4,'53799bf9-87a5-48da-8d4e-59e637b6c5f1','21c1af51-f7e2-4b7b-9da8-156840d00845','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.83 Safari/537.36',NULL,'http://localhost:3000/school_users/2/edit',NULL,NULL,NULL,'Chrome','Linux','Desktop',768,1366,'Reserved',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'2017-10-16 16:34:18'),(5,'66a81d8f-525e-41c8-b582-07e0e6eaebf9','21c1af51-f7e2-4b7b-9da8-156840d00845','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.83 Safari/537.36',NULL,'http://localhost:3000/',NULL,NULL,NULL,'Chrome','Linux','Desktop',768,1366,'Reserved',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'2017-10-18 21:39:12'),(6,'90380204-8f9b-4c5e-a044-6fbecdb28c49','21c1af51-f7e2-4b7b-9da8-156840d00845','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.83 Safari/537.36',NULL,'http://localhost:3000/',NULL,NULL,NULL,'Chrome','Linux','Desktop',768,1366,'Reserved',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'2017-10-19 21:43:55');
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-21 13:20:37
