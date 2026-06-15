CREATE DATABASE  IF NOT EXISTS `cwslife_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cwslife_db`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: cwslife_db
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_inquiries`
--

DROP TABLE IF EXISTS `contact_inquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_inquiries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_inquiries`
--

LOCK TABLES `contact_inquiries` WRITE;
/*!40000 ALTER TABLE `contact_inquiries` DISABLE KEYS */;
INSERT INTO `contact_inquiries` VALUES (1,'Rahul','Sharma','rahul@gmail.com','9876543210','I want to know more about your services','2026-04-03 05:08:48',1),(2,'Dip','salve','dipcws@gmail.com','9822554466','I want to know more about your services','2026-04-03 06:02:58',1),(4,'justin','Bieber','justin@gmail.com','9988774455','Need to know more about company','2026-05-05 09:12:32',1),(7,'Taylor','Swift','taylor@gmail.com','1122334455','want to know more about your service','2026-05-28 09:23:48',1),(11,'venkatesh','Kumar','venky@gmail.com','1122334455','need to connect regrading project requirement','2026-06-01 08:21:59',1),(12,'jason','Holder','jason@gmail.com','2323565689','Call us for immediate assistance','2026-06-02 05:55:52',1),(21,'salman','khan','saluu@gmail.com','121211212121','Have questions, feedback, or need support? We’re here to help. Reach out to us anytime, and our team will get back to you as soon as possible.','2026-06-08 05:02:43',1),(22,'sharukh','khan','sha@gmail.com','12121212121','Have questions, feedback, or need support? We’re here to help. Reach out to us anytime, and our team will get back to you as soon as possible','2026-06-08 10:09:51',1),(23,'Ajay','Devgan','Aj@gmail.com','9855662211','Our animal welfare initiatives focus on supporting stray animals, promoting awareness about animal care, and responsible treatment of animals.','2026-06-08 10:39:28',1),(24,'Virat','Kohli','kohli@gmail.com','9595956898','Have questions, feedback, or need support? We’re here to help. Reach out to us anytime, and our team will get back to you as soon as possible.','2026-06-13 06:59:00',0);
/*!40000 ALTER TABLE `contact_inquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_logs`
--

DROP TABLE IF EXISTS `email_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` text,
  `recipient_email` varchar(255) DEFAULT NULL,
  `sent_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_logs`
--

LOCK TABLES `email_logs` WRITE;
/*!40000 ALTER TABLE `email_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_subscribers`
--

DROP TABLE IF EXISTS `email_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_subscribers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `subscribed_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6waqk0ix4bvkngcq4fjm24aup` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_subscribers`
--

LOCK TABLES `email_subscribers` WRITE;
/*!40000 ALTER TABLE `email_subscribers` DISABLE KEYS */;
INSERT INTO `email_subscribers` VALUES (1,'dipali@creativewebsolution.in','2026-05-25 12:30:17.068009'),(2,'dipali@creativewebsolutio.in','2026-05-25 12:31:48.391603'),(3,'dipalicws@gmail.com','2026-06-05 14:17:58.313125');
/*!40000 ALTER TABLE `email_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_stats`
--

DROP TABLE IF EXISTS `event_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_stats` (
  `id` bigint NOT NULL,
  `total_deleted` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_stats`
--

LOCK TABLES `event_stats` WRITE;
/*!40000 ALTER TABLE `event_stats` DISABLE KEYS */;
INSERT INTO `event_stats` VALUES (1,4);
/*!40000 ALTER TABLE `event_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(6) DEFAULT NULL,
  `delete_count` int NOT NULL,
  `update_count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (4,'Gudi Padwa','Festival','2026-03-19','Mark the beginning of a new year with optimism and fresh energy. Join us for a simple celebration embracing tradition, new beginnings, and team bonding.','/uploads/events/gudi.jpeg','PAST','2026-05-14 10:45:24',NULL,0,0),(5,'Holi','Festival','2026-03-07','Add colors to your workday with a fun-filled Holi celebration. Enjoy music, light activities, and festive treats while strengthening team connections in a joyful environment.','/uploads/events/holi.png','PAST','2026-05-14 10:45:24',NULL,0,0),(6,'Women Day','Event','2026-03-12','Celebrate and appreciate the incredible women in our workplace. Participate in engaging sessions, recognition activities, and discussions promoting equality and empowerment.','/uploads/events/womesday.png','PAST','2026-05-14 10:45:24',NULL,0,0),(19,'Independence Day','Event','2026-08-15','Celebrate the spirit of unity and patriotism at our workplace. Join us for a flag hoisting ceremony, team activities, and a short cultural program honoring our nation’s journey and values.',NULL,'UPCOMING','2026-05-18 09:54:35','2026-06-03 15:53:51.797953',0,0),(21,'Ganesh Chaturthi','Festival','2026-09-14','Join us in welcoming Lord Ganesha with devotion and positivity. Experience traditional rituals, festive decor, and a joyful gathering that brings togetherness to our workplace.',NULL,'UPCOMING','2026-05-21 07:34:57',NULL,0,0),(22,'Diwali Celebration','Festival','2025-10-22','Celebrated the festival of lights with decorations, sweets, cultural performances, and joyful moments shared among team members.','/uploads/events/diwali.jpg','PAST','2026-05-21 08:04:55',NULL,0,0),(23,'Dussehra Celebration','Festival','2025-10-02','Team members gathered to celebrate the victory of good over evil with cultural activities and festive traditions.','/uploads/events/dusra10.jpg','PAST','2026-05-21 08:04:55',NULL,0,0),(24,'Republic Day Celebration','Event','2026-01-26','Celebrated Republic Day with patriotic activities, flag hoisting, and team participation honoring the spirit of the nation.','/uploads/events/republic4.jpeg','PAST','2026-05-21 08:04:55','2026-06-10 13:30:13.090148',0,2),(25,'Dussehra','Festival','2026-10-12','Celebrate the triumph of good over evil with a meaningful office gathering. Enjoy cultural activities and symbolic traditions that inspire positivity, growth, and success.',NULL,'UPCOMING','2026-05-21 08:32:38',NULL,0,0),(32,'Diwali','Festival','2026-09-22','Celebrate the festival of lights with colorful decorations, cultural performances, sweets, and joyful moments that spread happiness and positivity across the workplace.',NULL,'UPCOMING','2026-05-25 07:04:17',NULL,0,0),(35,'Christmas','Festival','2026-12-25','Enjoy the Christmas celebration with festive decorations, fun games, gift exchanges, music, and cheerful moments with colleagues and friends.',NULL,'UPCOMING','2026-05-25 10:03:48',NULL,0,0);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) DEFAULT NULL,
  `upload_date` datetime(6) DEFAULT NULL,
  `category` enum('CWS_VIDEO','birthday','events','infrastructure','team') DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `large_image_path` varchar(255) DEFAULT NULL,
  `medium_image_path` varchar(255) DEFAULT NULL,
  `small_image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (15,NULL,'2026-06-12 11:03:53.091000','team',NULL,'Our Team','/gallery/large_1781242430348_admingallery12.png','/gallery/medium_1781242430348_admingallery12.png','/gallery/small_1781242430348_admingallery12.png'),(16,NULL,'2026-06-12 11:10:12.960000','team',NULL,'Our Team','/gallery/large_1781242810415_office.JPG','/gallery/medium_1781242810415_office.JPG','/gallery/small_1781242810415_office.JPG'),(17,NULL,'2026-06-13 11:13:37.021000','events',NULL,'Gudi Padwa','/gallery/large_1781329415570_gudi.jpeg','/gallery/medium_1781329415570_gudi.jpeg','/gallery/small_1781329415570_gudi.jpeg'),(18,NULL,'2026-06-13 12:16:19.520000','events',NULL,'Diwali Celebration','/gallery/large_1781333173840_diwali9.jpg','/gallery/medium_1781333173840_diwali9.jpg','/gallery/small_1781333173840_diwali9.jpg'),(19,NULL,'2026-06-13 12:17:09.035000','events',NULL,'Makar Sankranti','/gallery/large_1781333227759_sankrant2.jpeg','/gallery/medium_1781333227759_sankrant2.jpeg','/gallery/small_1781333227759_sankrant2.jpeg'),(20,NULL,'2026-06-13 12:26:37.328000','CWS_VIDEO',NULL,'Office Video','/gallery/1781333797306_newvideo.mp4',NULL,NULL),(21,NULL,'2026-06-13 12:33:19.535000','team',NULL,'Diwali Celebration','/gallery/large_1781334193387_admingallery8.jpg','/gallery/medium_1781334193387_admingallery8.jpg','/gallery/small_1781334193387_admingallery8.jpg'),(22,NULL,'2026-06-13 12:58:23.277000','birthday',NULL,'Birthday celebration','/gallery/large_1781335701060_admingallery16.png','/gallery/medium_1781335701060_admingallery16.png','/gallery/small_1781335701060_admingallery16.png'),(23,NULL,'2026-06-13 12:58:46.352000','infrastructure',NULL,'Our Office','/gallery/large_1781335725097_admingallery11.png','/gallery/medium_1781335725097_admingallery11.png','/gallery/small_1781335725097_admingallery11.png'),(24,NULL,'2026-06-13 12:59:37.790000','events',NULL,'Our Team','/gallery/large_1781335771802_Blogs3.JPG','/gallery/medium_1781335771802_Blogs3.JPG','/gallery/small_1781335771802_Blogs3.JPG'),(25,NULL,'2026-06-13 15:33:26.134000','events',NULL,'Diwali Celebration','/gallery/large_1781344998558_diwali91.jpg','/gallery/medium_1781344998558_diwali91.jpg','/gallery/small_1781344998558_diwali91.jpg');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `job_id` bigint NOT NULL AUTO_INCREMENT,
  `department` varchar(255) DEFAULT NULL,
  `description` text,
  `education` text,
  `experience` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `openings` int DEFAULT NULL,
  `posted_on` date DEFAULT NULL,
  `requirements` text,
  `responsibilities` text,
  `roles` text,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` timestamp NOT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
INSERT INTO `password_reset_tokens` VALUES (2,'dipali@creativewebsolution.in','e7ed2fdf-e24a-476a-b2fa-3e837f529a48','2026-04-27 09:47:09',0,'2026-04-27 09:17:10'),(4,'dipalikshirsagar0607@gmail.com','fc8d0e8f-6729-4aa9-aba2-87157d45a6dc','2026-05-04 07:40:16',0,'2026-05-04 07:10:17');
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_contribution`
--

DROP TABLE IF EXISTS `social_contribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_contribution` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `page_link` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK4c4kkpa6psranxuqu3jtqp8ip` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_contribution`
--

LOCK TABLES `social_contribution` WRITE;
/*!40000 ALTER TABLE `social_contribution` DISABLE KEYS */;
INSERT INTO `social_contribution` VALUES (6,'We organized a local park cleanup to support environmental sustainability and awareness.','/uploads/1780637303433_1 (3).png','https://app-lifeqa-fe.azurewebsites.net/environmental-clean-up.html','Environmental cleanup'),(17,'Our animal welfare initiatives focus on supporting stray animals, promoting awareness about animal care, and responsible treatment of animals.','/uploads/1781336967463_1 (2).png','https://app-lifeqa-fe.azurewebsites.net/karma-foundation.html','Karma foundation');
/*!40000 ALTER TABLE `social_contribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_gallery`
--

DROP TABLE IF EXISTS `social_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_gallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKcd64us85d6byaiulbhnhtxqiv` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_gallery`
--

LOCK TABLES `social_gallery` WRITE;
/*!40000 ALTER TABLE `social_gallery` DISABLE KEYS */;
INSERT INTO `social_gallery` VALUES (2,'/uploads/1780464423944_1 (1).png','envoirmental cleanup'),(3,'/uploads/1780287258675_1 (4).png','Disability Support'),(5,'/uploads/1780464444963_2 (2).png','Group Discussion'),(8,'/uploads/1780553791771_socialservice6.png','handicap girl'),(12,'/uploads/1780915020245_AW1.png','dog');
/*!40000 ALTER TABLE `social_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_career_form`
--

DROP TABLE IF EXISTS `user_career_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_career_form` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `job_id` bigint DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `resume_file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_career_form`
--

LOCK TABLES `user_career_form` WRITE;
/*!40000 ALTER TABLE `user_career_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_career_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dipali Kshirsagar','dipali@creativewebsolution.in','Admin@1234',NULL,'SUPER_ADMIN','2026-04-06 12:55:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `total_visitors` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` VALUES (1,89,NULL,'2026-06-15 10:15:03.169730');
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-15 10:30:55
