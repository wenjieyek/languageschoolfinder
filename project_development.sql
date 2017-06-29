-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
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
INSERT INTO `admins` VALUES (1,'admin','$2a$10$d7EIkIHBliY9Wh1I6kK45uJ1o02ulMN4ngqtod8Gp6a9Ogp0dJiHK','2017-06-29 03:44:30','2017-06-29 03:44:30'),(2,'admin2','$2a$10$JqTcTbXtR7Uxc43lzwGiheuutbGZ5iu0i5Lt7.xatpigYO9aOCB2u','2017-06-29 03:44:47','2017-06-29 03:44:47');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Johor Bahru',1,'2017-06-29 03:50:26','2017-06-29 03:50:26'),(2,'Kulai',1,'2017-06-29 03:50:31','2017-06-29 03:50:31'),(3,'Masai',1,'2017-06-29 03:50:36','2017-06-29 03:50:36'),(4,'Plentong',1,'2017-06-29 03:50:42','2017-06-29 03:50:42'),(5,'Bukit Bintang',13,'2017-06-29 03:50:55','2017-06-29 03:50:55');
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
INSERT INTO `certificates` VALUES (1,'English Certificate','The top of our logo depicts the sun which shines the light of education over our students. The tree at the bottom of the logo represents our students who are growing towards the sun. It essentially means that ELEC’s students develop all the components that make for successful and well-rounded individuals. ELEC will support your academic, professional, social and interpersonal success. ','att_o_sr_serebro.jpg',1,'2017-06-29 04:04:13','2017-06-29 04:04:13'),(2,'Chinese Language Certificate','The top of our logo depicts the sun which shines the light of education over our students. The tree at the bottom of the logo represents our students who are growing towards the sun. It essentially means that ELEC’s students develop all the components that make for successful and well-rounded individuals. ELEC will support your academic, professional, social and interpersonal success. ','att_o_sr_serebro.jpg',1,'2017-06-29 04:04:34','2017-06-29 04:04:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Intensive English Program','English','This 18-lesson per week program is ELEC\'s most popular and covers all of the major language skills including: grammar, vocabulary, conversation, pronunciation, reading, writing and listening comprehension. Students in Intensive English Program (IEP) study Monday through Friday.','RM 1200','All_Program_Academic_Calendar_2017__Std__Chinese.pdf','9:00 - 10:30	Speaking - Listening - Grammar 10:30 - 10:45	Break 10:45 - 12:15	Reading - Writing - Grammar 12:25 - 1:00	Lunch  1:00 - 2:00	 Communicate with Confidence 1 2:00 - 2:15	Break  2:15 - 3:15	Communicate with Confidence 2',1,'2017-06-29 03:56:15','2017-06-29 03:56:15'),(2,'Semi- Intensive English Program','English','The semi-Intensive Program at ELEC is designed to promote communicative competence in English. These classes are designed for those who have a busy lifestyle but need to improve their English language skills. Students who register for this program participate in 3 days classes, either in the morning or afternoon. Students study 6 hours per week.','RM 1200','学科修习记录_Student_Lesson_Record.pdf','English Program	3:30Pm to 5:40	   Mon /Wed /Fri',1,'2017-06-29 03:56:59','2017-06-29 03:56:59'),(3,'English for Business','English','EB is designed to teach English to corporate and other professionals who need custom-made English classes to suit their needs and scheduling demands. The course is structured on the target of enhancing grammar, vocabulary, listening, reading, pronunciation, writing and other communication skills. ','RM 1200','学科修习记录_Student_Lesson_Record.pdf','6 levels of instruction: Beginner, Elementary, Pre-Intermediate, Intermediate, Upper Intermediate, Advanced. 80 hours per level of instruction over 2 months.',1,'2017-06-29 03:58:12','2017-06-29 03:58:12'),(4,'IELTS Test Registration and Examination Center','English','Having an IELTS (International English Language Testing System) certificate has been one of the necessities for students who are willing to study in a foreign university or people who want to migrate to other countries.\r\n\r\nHence, ELEC offers IELTS course . The students who have limited time with an almost good proficiency of English can join a 1-Month IELTS Preparation Course and those who have an average knowledge of English are recommended to attend a 2-month Course which includes IELTS Foundation and Preparation. Our center\'s IELTS Preparation Course guarantees students to achieve band 6 out of 9 either in General or Academic IELTS Test; provided that there English proficiency when they join the course is upper-Intermediate (Level 9 and above).\r\n\r\nStudents who are studying in general English classes can also join IELTS preparation courses provided that they have passed Intermediate level (L8) successfully.','RM 1200','学科修习记录_Student_Lesson_Record.pdf','Every Monday 1 to 5',1,'2017-06-29 04:00:15','2017-06-29 04:00:15'),(5,'Kids English Program (KEP)','English','ELEC provides a very fun and interesting environment for kids aged 4-8 to learn English. Being well-equipped with Audio-Visual system, ELEC makes a pleasant place for kids to get involved with everyday English use and facilitate their learning procedure. Kids would be given a lot of chances to improve their conversation, writing and reading skills. Students study 15 hours per week.','RM 1200','学科修习记录_Student_Lesson_Record.pdf','Every Monday 1 to 5',1,'2017-06-29 04:00:43','2017-06-29 04:00:43'),(6,'Individual English Program (IEP)','English','ELEC provides language courses on an individual (one-on-one) basis. The Individual English Program is designed to suit the student’s specific needs in terms of course length and content. In the Individual English Program (IEP), students can request a special emphasis on a particular language skill or area of expertise.\r\n\r\nIn addition to being an excellent alternative for students requiring a great deal of personal attention, the Individual English Program (IEP) is also appropriate for young students (under 17 years of age) and pre-beginner students who have not yet learned the alphabet in English.','RM 1200','学科修习记录_Student_Lesson_Record.pdf','Every Monday 1 to 5',1,'2017-06-29 04:02:11','2017-06-29 04:02:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'Yek Boon Keat','dx3152@hotmail.com','+60167193152','Website is not function','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2017-06-29 04:26:09','2017-06-29 04:26:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeeds`
--

LOCK TABLES `newsfeeds` WRITE;
/*!40000 ALTER TABLE `newsfeeds` DISABLE KEYS */;
INSERT INTO `newsfeeds` VALUES (1,'Mission and Vision','Our Vision\r\n\r\nTo be the best language center by providing both local and international students with world class educational services that will enhance their abilities in their personal and professional life.\r\n\r\nOur Mission\r\n\r\nTo be committed to the delivery of education of the highest quality.\r\nTo employ diverse and highly skilled instructors.\r\nTo provide  up-to-date facilities to ensure delivering the highest standards in education.\r\nTo be internationally recognized as one of the best language and training centers in Malaysia.',1,'2017-06-29 04:03:00','2017-06-29 04:03:00'),(2,'Our Logo','The top of our logo depicts the sun which shines the light of education over our students. The tree at the bottom of the logo represents our students who are growing towards the sun. It essentially means that ELEC’s students develop all the components that make for successful and well-rounded individuals. ELEC will support your academic, professional, social and interpersonal success. ',1,'2017-06-29 04:03:38','2017-06-29 04:03:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,'All Courses 20% Discount on Early Bird','All Courses 20% Discount on Early Bird, All Courses 20% Discount on Early Bird, All Courses 20% Discount on Early Bird, All Courses 20% Discount on Early Bird,All Courses 20% Discount on Early Bird, All Courses 20% Discount on Early Bird','att_o_sr_serebro.jpg','21 Jun 2017 to 21 August 2017',1,'2017-06-29 04:23:46','2017-06-29 04:23:46');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_attachments`
--

LOCK TABLES `school_attachments` WRITE;
/*!40000 ALTER TABLE `school_attachments` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_users`
--

LOCK TABLES `school_users` WRITE;
/*!40000 ALTER TABLE `school_users` DISABLE KEYS */;
INSERT INTO `school_users` VALUES (1,'ELEC Education Group','$2a$10$j4Cb6M/fbdDnsrjra0e0A.itNF6k5/VVsR4MShibpNyPgeTO24kIe','elec@hotmail.com','+603 2166 9827','http://www.elec.edu.my','Unit B-1-8 & B-1-9 & B-1-10\r\nBlock B Megan Avenue II\r\nNo 12 Jalan Yap Kwan Seng\r\n50450 Kuala Lumpur, MALAYSIA','Bukit Bintang','Selangor','50450','ELEC Education Group is a Malaysia based company and was founded in 2010. Its goal is to provide local and international students with the highest standards of education and facilities. ELEC Education Group includes two sub-groups namely: ELEC Language Center and ELEC Training Center.\r\n\r\nELEC Language Center offers language learning programs in English, Mandarin and Malay.\r\n\r\nELEC Training Center offers programs in Tourism, Accounting, Business Administration and ICT with an internationally recognised certificate (LCCI) awarded at the end of each term.\r\n\r\nOur programs will be student centered and focus on guiding you by making use of our experienced staff and expertise. Your success is our priority.','No','elec-logo2.png',1,'2017-06-29 03:54:05','2017-06-29 03:54:05');
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
INSERT INTO `teachers` VALUES (1,'Jackie ','English','Imagine gaining confidence in speaking, reading, and writing!\r\nAreas of Expertise:\r\n- Accent Reduction & Modification\r\n- Pronunciation, Intonation, Articulation\r\n- Professional Development\r\n- Job Coaching, Interviewing, Resumes, Cover Letters, Recommendation Letters\r\n- Doctorate Defense Preparation\r\n- Academic Support (Writing, Reading, & Speaking)\r\n- Graduate & Postgraduate Support\r\n- Life Coaching\r\n- Holistic & Spiritual Counseling\r\n- Meditation\r\nI\'ve been teaching students since 1997 of all ages. Together we create the an exact plan that works for you! I can\'t wait to be your teacher, coach, and so much more!! I\'m an open and affirming teacher. I welcome everyone regardless of nationality, race, religion, sexual orientation, gender identity, age, etc.\r\n\"We all have our own life to pursue, our own kind of dream to be weaving, and we all have the power to make wishes come true, as long as we keep believing.\" Louisa May Alcott\r\nI look forward to hearing from you very soon.\r\nSincerely,\r\nJackie\r\nEnglish Teacher | Professional Coach | Speaker\r\nhttps://www.linkedin.com/in/jackiejohnson16','1.png',NULL,1,'2017-06-29 04:06:45','2017-06-29 04:06:45'),(2,'Erica','English','Hello! My name is Erica, and I am an experienced and qualified ESL professional. I have two degrees in teaching English (BA English, Education; MA TEFL), and I have been a classroom ESL teacher for the past 11 years, teaching English at an Egyptian K12 school, the American University of Cairo, and Ohio University. I\'ve completed graduate coursework in teaching and learning online and have presented frequently at international conferences on the topic of CALL-Computer Assisted Language Learning. My approach to learning is student-centered, skill-oriented, and task-based, targeting fluency and accuracy in production (and comprehension!) of English. I strive to create and facilitate a comfortable online learning classroom where my students\' language needs are met.','1.png',NULL,1,'2017-06-29 04:07:37','2017-06-29 04:07:37'),(3,'Kelsey','English','My name is Kelsey and I am a native English speaker from Ohio, USA. Currently, I am located in Seattle, Washington bringing my love of teaching to elementary youth in the local schools. I have been teaching for 5 years within Washington State. I have experience teaching non native English speakers as well as children with language delays. Teaching English to students with language delays has taught me to break down the English language into simplified terms so that the speaker has more success in their learning of how to speak and understand English.\r\nI have experience teaching conversational English as well as English that you will need while traveling or just in daily life. We can work on pronunciation, intonation, idioms, and colloquials as they are all a bonus specialty of mine.\r\nWhen you book a lesson, let me know your level of English (beginner, intermediate) and also how you prefer to learn.\r\nAs a teacher, I am accommodating to your goals and learning style. Let\'s have a conversation and figure out the best way for you to learn English!','1.png',NULL,1,'2017-06-29 04:08:36','2017-06-29 04:08:36');
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
INSERT INTO `users` VALUES (1,'wenjieyek','$2a$10$Pk8hoDqLEWDKlT5bWwcXLe7YBGz0eZ9Kh9Cz.0yTpLhV7.NTNErYO','dx3152@hotmail.com','Block 5, No 03-11, Jalan Kemuning\r\nTaman Sri Plentong',1,'2017-06-29 04:25:10','2017-06-29 04:25:10');
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

-- Dump completed on 2017-06-29 15:58:17
