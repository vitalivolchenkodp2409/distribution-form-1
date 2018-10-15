-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: msf
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `demo48_fives`
--

DROP TABLE IF EXISTS `demo48_fives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_fives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_emails` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fives_user_id_unique` (`user_id`),
  CONSTRAINT `fives_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `demo48_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_fives`
--

LOCK TABLES `demo48_fives` WRITE;
/*!40000 ALTER TABLE `demo48_fives` DISABLE KEYS */;
INSERT INTO `demo48_fives` VALUES (1,5,'distribution.projectoblio.com/storage/selfie/a8yZ1tA73xzx77LrhbTW0W0KZ1ewYzZe4jtDUUpf.',NULL,'7','100.8.201.78','2018-10-08 01:22:53','2018-10-08 01:22:53'),(2,6,'','alexcabreragil@gmail.com','7','103.13.66.234','2018-10-08 09:35:29','2018-10-08 09:35:29'),(3,8,'','nodbone1070289@gmail.com','7','59.153.127.189','2018-10-08 10:00:42','2018-10-08 10:00:42'),(4,9,'distribution.projectoblio.com/storage/selfie/WRNB7Oa9B9uP8G0j5n1eRx64Fc7RUpAtXkv49MzF.mp4','jhojam02@gmail.com','7','103.13.66.234','2018-10-08 10:51:42','2018-10-08 10:51:42'),(5,12,'','rishavmohanpainuli@gmail.com','7','103.13.66.234','2018-10-08 11:01:15','2018-10-08 11:01:15'),(6,15,'','novakbelgrade@gmail.com','7','59.153.127.191','2018-10-09 17:54:05','2018-10-09 17:54:05'),(7,2,'','mathiasmorlock@gmail.com','7','103.13.66.234','2018-10-10 11:07:00','2018-10-10 11:07:00'),(8,3,'','gaabtv@gmail.com','7','103.13.66.234','2018-10-10 11:10:24','2018-10-10 11:10:24'),(9,7,'','antonmaterr@gmail.com','7','103.13.66.234','2018-10-10 11:18:24','2018-10-10 11:18:24'),(10,11,'','juniorxdj56@gmail.com','7','103.13.66.234','2018-10-10 11:25:09','2018-10-10 11:25:09'),(11,16,'','tordalsjo@gmail.com','7','103.13.66.234','2018-10-10 11:27:43','2018-10-10 11:27:43'),(12,17,'distribution.projectoblio.com/storage/selfie/NKUeeYseviD8UwwVnzxpVq6RJ1oXH24lv27w3G64.mp4','floreslozadaluisalejandro@gmail.com','7','103.13.66.234','2018-10-10 11:38:02','2018-10-10 11:38:02'),(13,18,'','huyhuan1213@yahoo.com','7','103.13.66.234','2018-10-10 11:40:56','2018-10-10 11:40:56'),(14,19,'distribution.projectoblio.com/storage/selfie/lKdCjixC0Kr0U4x00c280m1LBY4be7dMmPZ2ovTQ.mp4','getreply01@gmail.com','7','103.13.66.234','2018-10-10 11:42:52','2018-10-10 11:42:52'),(15,20,'','aneeshnewgo@gmail.com','7','103.13.66.234','2018-10-10 13:06:38','2018-10-10 13:06:38'),(16,21,'','kaizokouoni@hotmail.com','7','103.13.66.234','2018-10-10 13:10:28','2018-10-10 13:10:28'),(17,22,'','pirrurris2709@gmail.com','7','103.13.66.234','2018-10-10 13:13:08','2018-10-10 13:13:08'),(18,23,'','ricky.hennig@hotmail.de','7','103.13.66.234','2018-10-10 14:46:13','2018-10-10 14:46:13'),(19,24,'','indiagolf1583@gmail.com','7','103.13.66.234','2018-10-10 14:48:05','2018-10-10 14:48:05'),(20,25,'','thelucifear@gmail.com','7','103.13.66.234','2018-10-10 14:51:14','2018-10-10 14:51:14'),(21,10,'distribution.projectoblio.com/storage/selfie/CjPbGV1ArgLvjZzJGebCd7uKEBvw8qJcfY3LhpOY.bin','milica.atanackovic2312@gmail.com','7','103.13.66.234','2018-10-10 15:02:02','2018-10-10 15:02:02'),(22,4,'','munkamiatt80@gmail.com','7','103.13.66.234','2018-10-10 15:03:55','2018-10-10 15:03:55'),(23,26,'','inesvogel38@gmail.com','7','103.13.66.234','2018-10-10 15:24:21','2018-10-10 15:24:21');
/*!40000 ALTER TABLE `demo48_fives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_fours`
--

DROP TABLE IF EXISTS `demo48_fours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_fours` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university_email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university_website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `undergraduate_major` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graduation_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university_ambassadors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ethereum_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fours_user_id_unique` (`user_id`),
  CONSTRAINT `fours_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `demo48_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_fours`
--

LOCK TABLES `demo48_fours` WRITE;
/*!40000 ALTER TABLE `demo48_fours` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo48_fours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_friends`
--

DROP TABLE IF EXISTS `demo48_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_oblio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_friends`
--

LOCK TABLES `demo48_friends` WRITE;
/*!40000 ALTER TABLE `demo48_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo48_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_migrations`
--

DROP TABLE IF EXISTS `demo48_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_migrations`
--

LOCK TABLES `demo48_migrations` WRITE;
/*!40000 ALTER TABLE `demo48_migrations` DISABLE KEYS */;
INSERT INTO `demo48_migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2018_07_30_065528_create_zeros_table',1),(9,'2018_07_31_073938_create_ones_table',1),(10,'2018_07_31_113149_create_twos_table',1),(11,'2018_08_01_073905_create_threes_table',1),(12,'2018_08_01_114349_create_fours_table',1),(13,'2018_08_01_131912_create_fives_table',1),(14,'2018_08_09_191843_add_is_locked_to_users_table',1),(15,'2018_09_12_092531_create_social_providers_table',1),(16,'2018_09_18_141619_create_photos_table',1),(17,'2018_09_24_074756_create_friends_table',1);
/*!40000 ALTER TABLE `demo48_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_oauth_access_tokens`
--

DROP TABLE IF EXISTS `demo48_oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_oauth_access_tokens`
--

LOCK TABLES `demo48_oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `demo48_oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `demo48_oauth_access_tokens` VALUES ('0f921ab84dfa33ec8f08e73fea1398ad7e7d629cd6602781a3da1635af0e08ccb46f43e7ea19a103',1,2,NULL,'[\"name\"]',0,'2018-10-15 21:24:05','2018-10-15 21:24:05','2018-10-30 17:24:05'),('13a94962d284d474d3f4d2bcfbf0f29db1e90cddd6ddb5c1b5e07736a9eb254b9891121ed43146e4',1,2,NULL,'[\"name\"]',0,'2018-10-13 01:50:33','2018-10-13 01:50:33','2018-10-27 21:50:33'),('1491d3a2998a2838b9f0adbc38ffeacc9191eae61bdfd5a091eed4870c939294540368655034115d',1,1,NULL,'[\"name\"]',0,'2018-10-09 10:03:01','2018-10-09 10:03:01','2018-10-24 06:03:01'),('165425682a89d110256c17885eb2617fb4331556b8cbc11f08e2a6af032b656adb34fc2142111b41',1,1,NULL,'[\"name\"]',0,'2018-10-08 11:08:31','2018-10-08 11:08:31','2018-10-23 07:08:31'),('1e0f658f07e2e8a6bb41ca9f3a177a9908dc302cb6ce8a90eb2d2991ca65f518d042530c2cbc453a',1,2,NULL,'[\"name\"]',0,'2018-10-13 21:19:08','2018-10-13 21:19:08','2018-10-28 17:19:08'),('24f3ea53438ed347f028a1124a17fbac9860c51e949816254d2ac4fb74278217630fc40a4a77c664',1,2,NULL,'[\"name\"]',0,'2018-10-14 22:36:29','2018-10-14 22:36:29','2018-10-29 18:36:29'),('28fc690d3e0e027693ba740c3d844368fa8f2c334c8d76551906743fa545e8faa5c396680396fc25',1,1,NULL,'[\"name\"]',0,'2018-10-12 02:03:19','2018-10-12 02:03:19','2018-10-26 22:03:19'),('2dfbecd815e13d0664ff29a4d7821777d41556ded736dea0b53d3ef83e5803f023c7d4d6ef65d86a',1,1,NULL,'[\"name\"]',0,'2018-10-08 04:14:17','2018-10-08 04:14:17','2018-10-23 00:14:17'),('31b3f379b19b8204e171cae733ab6996e1d8db10b3ebd0eb6e2cee02d576780952dc282f33c0b7d8',1,1,NULL,'[\"name\"]',0,'2018-10-09 09:43:38','2018-10-09 09:43:38','2018-10-24 05:43:38'),('33273d92d54e723da754eac5f4c87d866688e778e59c262a476606913c61d78993431990a923ec93',1,2,NULL,'[\"name\"]',0,'2018-10-13 23:07:56','2018-10-13 23:07:56','2018-10-28 19:07:56'),('367785f1087d30bda748da2e1985930b1ca53816dfbe997e214bb303bddeed2b9a5b23a1b1364747',1,2,NULL,'[\"name\"]',0,'2018-10-13 01:34:55','2018-10-13 01:34:55','2018-10-27 21:34:55'),('3c460821164257695a8807a08081c13adf63f3229b90a92b280da7bca4abc9e7c5c69760d79e3375',1,2,NULL,'[\"name\"]',0,'2018-10-13 21:02:05','2018-10-13 21:02:05','2018-10-28 17:02:05'),('3ef74ab75c48c942f9d4ec2942dc323ef0070de9d1b47a77eece37ad80fe6d7036d02feafc8bb404',1,2,NULL,'[\"name\"]',0,'2018-10-14 04:46:23','2018-10-14 04:46:23','2018-10-29 00:46:23'),('3febd28ec0e4ffa6d5b4df3d05022169918ef9993d894196205dea1704950d76296733225835aa49',1,1,NULL,'[\"name\"]',0,'2018-10-15 03:16:36','2018-10-15 03:16:36','2018-10-29 23:16:36'),('41e8d0219ef8c916b19235fcd6ca80e54e7136499e889ff222cd38f6c23ebb706ac370c8a801c186',1,1,NULL,'[\"name\"]',0,'2018-10-12 05:35:29','2018-10-12 05:35:29','2018-10-27 01:35:29'),('460b4481987c80a3d34cd8619b3838660a675e3144a5691620e546e4f9d3a34b0cc25c63e94c0ffb',1,1,NULL,'[\"name\"]',0,'2018-10-08 04:14:31','2018-10-08 04:14:31','2018-10-23 00:14:31'),('46a5ed40896f1c2df311afc7ff75ee57872fc833a48f08ece7afb6bb91d26fb6e2d1b7d670a5dc70',1,2,NULL,'[\"name\"]',0,'2018-10-11 07:05:35','2018-10-11 07:05:35','2018-10-26 03:05:35'),('4ac2528467cce147c5eb7d8d8a578d63661464e7986a4bbd3c827e35cae893829bfbbd01e6ce67d2',1,2,NULL,'[\"name\"]',0,'2018-10-15 22:01:22','2018-10-15 22:01:22','2018-10-30 18:01:22'),('4e63d9656051ac02aa2761b59ebf9c658566c30faa2385722849028d65aca909f91d959271d097f2',1,2,NULL,'[\"name\"]',0,'2018-10-14 05:19:05','2018-10-14 05:19:05','2018-10-29 01:19:05'),('518ac582ebc7d6d2f1ce3d170b665df37b1fac0893c20a8d2bd6ed9958ce5375f78007192606e7d5',1,2,NULL,'[\"name\"]',0,'2018-10-15 21:05:26','2018-10-15 21:05:26','2018-10-30 17:05:26'),('52589e0d39f1a3fdeafe9f758b64ffbed7ab370145d9f6d61b7d67bf2e826b90fdc47e801a745e79',1,2,NULL,'[\"name\"]',0,'2018-10-10 06:08:22','2018-10-10 06:08:22','2018-10-25 02:08:22'),('53d3a077411a0d9cdcc9acf01fd2b58781a78547977fb7d06e6c465f0028c192d8a9d0ca2883d034',1,2,NULL,'[\"name\"]',0,'2018-10-13 22:14:19','2018-10-13 22:14:19','2018-10-28 18:14:19'),('56441e612f5e32f81dd1c23d073b6b01c71de2368174a55ef599084899b043ba44b6ef4e107fd1eb',13,1,NULL,'[\"name\"]',0,'2018-10-08 11:07:48','2018-10-08 11:07:48','2018-10-23 07:07:48'),('5acc96b1b0becb0835bad586f74b4c8bbe3a3e5baa6cf1ff653cd872dbd8bcde181ad59c149eec17',1,2,NULL,'[\"name\"]',0,'2018-10-14 04:27:37','2018-10-14 04:27:37','2018-10-29 00:27:37'),('5ad98764505a8f21ad9ed36b976c1d0768f91e274c4903edcde9b84203dc87fb3b548d238484937f',1,2,NULL,'[\"name\"]',0,'2018-10-12 17:51:47','2018-10-12 17:51:47','2018-10-27 13:51:47'),('5c659fba39506f7e9b0ac5e7f927cd0037c164a2f8a31bfabc430d91cd03caecd344ad3a4b51c637',1,2,NULL,'[\"name\"]',0,'2018-10-13 20:43:10','2018-10-13 20:43:10','2018-10-28 16:43:10'),('5ca434a9cb4870d0b02fc2c47b538e17aafb49aec14f5e9d97a444ee75d211c410f6e392edc12ef0',1,2,NULL,'[\"name\"]',0,'2018-10-14 22:55:26','2018-10-14 22:55:26','2018-10-29 18:55:26'),('5f2402fd7a42fe5169662d67d9945f71efaafe6eaa0be7c80a4b69ec97d4eaef05bb29dc7eea399b',1,1,NULL,'[\"name\"]',0,'2018-10-12 05:52:46','2018-10-12 05:52:46','2018-10-27 01:52:46'),('65b8c9e74d95ebc40c01d2606bf4fbd813d22b8741fc2953a11c1e46716d752686bdf44a9e87a3a3',1,2,NULL,'[\"name\"]',0,'2018-10-10 04:04:44','2018-10-10 04:04:44','2018-10-25 00:04:44'),('8131eb5f47950fbc99c43da89de486ffddffff75d08d4ce3ddac224b090544301da5bc0f1bc5a0ca',1,2,NULL,'[\"name\"]',0,'2018-10-13 21:20:01','2018-10-13 21:20:01','2018-10-28 17:20:01'),('85a3af0e80a45e7d4ffc228c7b4172dee4634414024ccc33235e6df446419f735e93a65c58ffe23d',1,2,NULL,'[\"name\"]',0,'2018-10-14 23:48:42','2018-10-14 23:48:42','2018-10-29 19:48:42'),('8acb208d519a1d2e6ddbe730cb97b7a1b78d1243710c07bac525afe75ae56bab24ce24ba2c54f2e9',1,2,NULL,'[\"name\"]',0,'2018-10-15 21:24:27','2018-10-15 21:24:27','2018-10-30 17:24:27'),('916565ddef3ef5515796ac226149a404243229f5a9e87e14761ab779ab9c6aaa5c3e0ee1e468351c',1,1,NULL,'[\"name\"]',0,'2018-10-09 09:54:01','2018-10-09 09:54:01','2018-10-24 05:54:01'),('9258eecc941aaf81a5b091d9170a2a2e0ec500e184927933dd89124442d3e7b6c2eb2f087171397d',1,1,NULL,'[\"name\"]',0,'2018-10-09 10:04:17','2018-10-09 10:04:17','2018-10-24 06:04:17'),('936f30e39f17fecd4c2c7dfb39c5910b4f2c6e625d2fef62d118d5d0d7bac35da5b0742bb0a8498c',1,2,NULL,'[\"name\"]',0,'2018-10-10 04:54:00','2018-10-10 04:54:00','2018-10-25 00:54:00'),('950ae5669632aabfe0579b522604d71dc45482e70f304f6dd47d443606fa35e13e449a174aa46597',1,2,NULL,'[\"name\"]',0,'2018-10-15 04:16:00','2018-10-15 04:16:00','2018-10-30 00:16:00'),('9b43d9587adf4d33fd84a636dea5c41af8f390361fddb774d040c9d5655856bdf581da9081088efc',1,1,NULL,'[\"name\"]',0,'2018-10-11 14:49:30','2018-10-11 14:49:30','2018-10-26 10:49:30'),('9db773292d098b9107a39796dc62db33b4bf61bd4e51b8277959d9c529049230ed2851e048f93546',1,2,NULL,'[\"name\"]',0,'2018-10-10 05:00:13','2018-10-10 05:00:13','2018-10-25 01:00:13'),('a540e9a7a48f57894f2331b52f917d77d92d70c0a5295ba1db4b1d4fb263e17a48a03bded7de9b75',1,2,NULL,'[\"name\"]',0,'2018-10-13 22:50:48','2018-10-13 22:50:48','2018-10-28 18:50:48'),('ab9d632eaebb3c9de47fb335e2e2a00391737ba89052b494e753f44b701745795e49c950ea0e7520',1,2,NULL,'[\"name\"]',0,'2018-10-10 04:47:30','2018-10-10 04:47:30','2018-10-25 00:47:30'),('af28d6240a81af7368813acc6344785da18b146b4f2bdfaea61b2d491b71e3634e2ff296690f82f4',1,2,NULL,'[\"name\"]',0,'2018-10-13 21:54:06','2018-10-13 21:54:06','2018-10-28 17:54:06'),('b4a16185f9c9167984d860684728d946062df1f8da0c1c678a77d7b9474216908f66ba0b2174b916',1,1,NULL,'[\"name\"]',0,'2018-10-08 03:49:30','2018-10-08 03:49:30','2018-10-22 23:49:30'),('ba032754aa8cb3b422c98d0295c9e092b52d69e49740c2bf69a9b2238f05f511a366f819d6687431',1,1,NULL,'[\"name\"]',0,'2018-10-15 10:06:28','2018-10-15 10:06:28','2018-10-30 06:06:28'),('bc72aad1d0916c8d03223450c18efcf8129431f374639d00c7bbbc691de017a6ae55bcd9deb6e8e5',1,2,NULL,'[\"name\"]',0,'2018-10-14 23:13:43','2018-10-14 23:13:43','2018-10-29 19:13:43'),('bf037fcf6f50cb8100c3650f189b54a7aa1457f4c673586e5ca84de64d49bda0102176d3dd1f357d',1,2,NULL,'[\"name\"]',0,'2018-10-15 00:26:10','2018-10-15 00:26:10','2018-10-29 20:26:10'),('c1dce8be2f7a91b8faeb9e7e239a99517fd746d4e2ee9b1de6165dad80f55e907ea9da443c579a92',1,2,NULL,'[\"name\"]',0,'2018-10-15 21:04:08','2018-10-15 21:04:08','2018-10-30 17:04:08'),('cf969c006e14f1648c51671f91ac2133f741d1bfd7695cdca01f037acd88e48b4fd3bc9533c6da39',1,2,NULL,'[\"name\"]',0,'2018-10-13 21:34:24','2018-10-13 21:34:24','2018-10-28 17:34:24'),('cfa0f09526c483ef8889bf6e4c16bc9d824ac78bef819379e04547a25dd1044387aa14a3fafe76d9',14,1,NULL,'[\"name\"]',0,'2018-10-09 09:26:05','2018-10-09 09:26:05','2018-10-24 05:26:05'),('d72e511c032281a89665268c11c2eaed5e5c5e8281d60f8f3a56e1c3ab1f2090b0664aad1501d3e9',1,2,NULL,'[\"name\"]',0,'2018-10-10 04:07:55','2018-10-10 04:07:55','2018-10-25 00:07:55'),('d7a77118ca14696dd0fce62759333e29a7dfdc3d2587e27fb971efe6cf38c058d3c55f4c7e430034',1,2,NULL,'[\"name\"]',0,'2018-10-15 00:07:42','2018-10-15 00:07:42','2018-10-29 20:07:42'),('dbf08ea9a3d5efdee0a23fb915e1ab1f660c26441356dbfa3d29e2bf0d4fda5a78f12bdca89ab739',1,2,NULL,'[\"name\"]',0,'2018-10-13 01:15:07','2018-10-13 01:15:07','2018-10-27 21:15:07'),('e254679ab1c3da54737e0291709233014f218aa18613ad8c5887273a4d70d2fff32166b8f6ecfafd',1,2,NULL,'[\"name\"]',0,'2018-10-13 23:07:35','2018-10-13 23:07:35','2018-10-28 19:07:35'),('e64aeb9e6c75e017f9349e204913b63539d74349c54e11b5d0a9c6668b2525d0b28dab6b3d08e945',1,2,NULL,'[\"name\"]',0,'2018-10-13 02:13:50','2018-10-13 02:13:50','2018-10-27 22:13:50'),('f14e7fcc28da96fc15b65ff55999c19b376ef98bfc00fdbe5995003f967e1da5547d8c836dfa9b49',1,2,NULL,'[\"name\"]',0,'2018-10-13 22:34:24','2018-10-13 22:34:24','2018-10-28 18:34:24'),('f3405ea916b33b3f05f0e11063f1ecedcd6da2ba90850b028618cedaf8b650327c4a4072d5541398',1,2,NULL,'[\"name\"]',0,'2018-10-13 23:06:57','2018-10-13 23:06:57','2018-10-28 19:06:57'),('f8a8cb294ec5eaac2996dc7c5024468cf1de00a95d8f4f9fbe75729c5b8098db06496404504f93f2',1,2,NULL,'[\"name\"]',0,'2018-10-10 04:33:34','2018-10-10 04:33:34','2018-10-25 00:33:34'),('fbf263de9a679b99b476c78686c3fde8c798aa153c9adc10ab694ad59e7e05d3afb30b00f014a92a',1,2,NULL,'[\"name\"]',0,'2018-10-14 05:03:59','2018-10-14 05:03:59','2018-10-29 01:03:59'),('fe127f3d618c6d16e4820fe1bc28cbe458ede2845a98b8b3360918f8c79f9c8697a67c60b1edfe7e',1,2,NULL,'[\"name\"]',0,'2018-10-14 23:29:35','2018-10-14 23:29:35','2018-10-29 19:29:35');
/*!40000 ALTER TABLE `demo48_oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_oauth_auth_codes`
--

DROP TABLE IF EXISTS `demo48_oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_oauth_auth_codes`
--

LOCK TABLES `demo48_oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `demo48_oauth_auth_codes` DISABLE KEYS */;
INSERT INTO `demo48_oauth_auth_codes` VALUES ('035bfb7585ea773caec55310cebf45ed02dee2c30ad22931f1d9ba25fcc026925acea5114173f4d8',1,1,'[\"name\"]',1,'2018-10-12 01:45:28'),('0bd6cc6eaa59ad719804837688af3b7fd5f1ad322e0c17578d6858bb7c7979d1739d6848e962002d',1,2,'[\"name\"]',1,'2018-10-14 19:58:41'),('0c86183c83adf9d7f530aef7fd037035911906b05418b493cc72620d591451a2f25fc9b207d7e0fb',1,2,'[\"name\"]',0,'2018-10-13 19:17:24'),('0d60e53680e9eabc0bd20fe463aab1ab1fcd53b5840381b822aaf200efd82e058a1fc38e0eed809b',1,2,'[\"name\"]',1,'2018-10-14 00:56:22'),('10f80e2c96aad7252a2afb914a1b18ccc0e53fcd6f9586caad0adccd69d6b89a10baca8aa02eed09',1,1,'[\"name\"]',1,'2018-10-11 22:13:18'),('1311146dde2b6252812f6da1e22e01246f28b71016f67a2411625161827645899cb9897d74c76231',1,2,'[\"name\"]',0,'2018-10-15 17:34:09'),('13e43e480f3f53cfe6e32d705948fcc71c8bd65cc7e9879fb1ca95b48ff9fbd26078cbf05061cf76',1,1,'[\"name\"]',0,'2018-10-07 23:32:14'),('1cb11ded14f6d8775d4821a688431d90c2f855c4614dcc584d7a60b2ba4b90c3eb4d35e882400caf',1,2,'[\"name\"]',1,'2018-10-14 19:05:25'),('1df3c7a5793e84eb2b479711801e0ad186d3ec40eac10ebcbe475b921ba4198856fe816fc8c84e08',1,2,'[\"name\"]',1,'2018-10-13 17:29:07'),('2348e5c0bf84f9f393cd0448527647c534ba7f217d014c103a53359331e6f36e16bca35808947581',1,2,'[\"name\"]',1,'2018-10-14 01:13:58'),('278e0f0b15078a9c284a91b0cb0b3f9e587e0fbea746dcceadf511e40619df9be5dac00df742f960',1,1,'[\"name\"]',1,'2018-10-15 06:16:26'),('2a62602797cb09e8dde0218dffdb59f1bfa42e0fdd875fb798e89e65bcbad750b28a24505772e07a',1,1,'[\"name\"]',1,'2018-10-08 00:24:30'),('2cd48b14c6cd6d518793b176824a85be984e944919182d7bc1ea034b267df710dd55461172968c48',1,2,'[\"name\"]',1,'2018-10-15 17:15:25'),('34cb2f41565b48476730471305df0b11d4782badafbb47ce02eb1625641ff912bc3d72d20a729882',1,2,'[\"name\"]',1,'2018-10-13 17:30:00'),('3841e2585b53a63dfeda365bddffc514562cd5e20cb2bf5cda27d684ecd98cb1ccf5093e18a3fcf9',1,2,'[\"name\"]',0,'2018-10-13 19:17:42'),('394722ee1a4cb969634f3ad867ce7a591ff7a52946132006aeffba70bd001995151a56a850e02bdc',1,2,'[\"name\"]',1,'2018-10-14 19:39:34'),('39ae74341a16d858fc0048d03fbea14f6204c0426d527e2e03129f0ede48c6d1eae9f60c60d72442',1,2,'[\"name\"]',1,'2018-10-13 19:00:47'),('3c28de2dc422eb390fa5bf6b03c62e99af651d8fdac7b70a5cc5d50b60612dad6778e7f881656263',1,1,'[\"name\"]',0,'2018-10-07 23:29:16'),('4b4560ca44395f8ec72e481eb9ebc0d6a53794f9b87a79035075aa1a9042233c4cc9a0dcf871f2c4',1,2,'[\"name\"]',1,'2018-10-10 01:10:12'),('4c45439054d7f32f29dd582fd254c6ca3631a18464b854554a34613c2b6d57fec3ad01b3f12be3d1',1,2,'[\"name\"]',1,'2018-10-10 00:57:29'),('4ca4c9efa06b4c962f66489469df5d5634c8053d4fbb9a1ef538510e94aa1422a481e6bc766a910b',1,1,'[\"name\"]',1,'2018-10-11 10:59:29'),('504aa72fe3af2bfe79b49d5ba1651fcbec2f06dcaa474c8bfab024655d755089c12e8abbb7b64108',1,2,'[\"name\"]',1,'2018-10-10 02:18:21'),('5896ae79cfd8b0a02740c4a8137e972be9f89108d7c41d14a304c5f45b5a61bb9d7d67dd4cdd9e42',1,2,'[\"name\"]',1,'2018-10-15 18:11:21'),('5ba1d42283c32115d07ee6840adc6f28725dc75f489be43e3e1ea81d7ed39b1bf0009d02e6aba461',1,1,'[\"name\"]',1,'2018-10-07 23:59:29'),('5c4cd3222a48ab2acd82fec85f2e24e7f28f81a39024b19a3294f35bea8eb5fff6c09f585ef4f737',1,2,'[\"name\"]',1,'2018-10-15 00:25:59'),('5f57f10a043e9506b7e6a84a3baddb3ea356c34f42389e28b9b3aa7770ad1dcff3a84a7f7c09a7aa',1,2,'[\"name\"]',1,'2018-10-12 14:01:46'),('65ee0b4abff03ac32635fdab3281d5e50c1971354ec751b989a0ddeb837a543365af7e527b909a20',1,1,'[\"name\"]',1,'2018-10-09 05:53:36'),('679b75fa3880c8bb0c6edf8eb944006dea0470f64d3ccbf31fb297d652ff6721551de9a601e5225e',1,2,'[\"name\"]',1,'2018-10-15 17:14:07'),('6d2248ca1171412780fe602398ad261bbb4092fe91bf45bacabba134ee4a11efa45e8bdf3aacd8f3',1,1,'[\"name\"]',1,'2018-10-14 23:26:35'),('6d60a607953bb956878cf81b9d016424eddc52b730726fc23f3f9bfd46a19e0285cbcb174e7157b4',1,2,'[\"name\"]',1,'2018-10-15 17:34:04'),('6d989f27b2c21be0b54e42fcc40d12f30181df21b273ff82cfe6a2220cd94a3a852a53f082d1a4a6',1,2,'[\"name\"]',1,'2018-10-13 18:44:22'),('6f17e038cbf0e600f15f484514d7f251a3d9c4e3791442aaf879d969c9ac24731b28795453a72c81',1,1,'[\"name\"]',1,'2018-10-09 06:04:00'),('6f2c32d69f1cbdbc14c66a3fa9b9fbddb2fb521187698e85404641830720c1d576435d8cf82387eb',1,1,'[\"name\"]',1,'2018-10-08 00:24:16'),('70e29647b21aa0b868d4117f4de738a8194e0b708bd78d1ad4bb34987040747cc37b7edb6f9493e4',1,1,'[\"name\"]',1,'2018-10-09 06:13:00'),('7875460e04d15690603b3effa774fcf853224c0a18cafda5d844e7b774ab68989aeed6c8ec01f5bc',1,2,'[\"name\"]',1,'2018-10-14 01:29:04'),('79017825b04f31ff5304aa6454351e9acb307a8bcdeff628dd5e8bc6893dfe8f5b77710c473fb738',1,2,'[\"name\"]',1,'2018-10-10 01:03:57'),('79d135da2b09575eb9b4972420f194ecd9c0a45c45164d13c1e19361cd4e9014c5d693cfff046fec',1,1,'[\"name\"]',1,'2018-10-08 07:18:30'),('7d0b06fa1f6d50c9d7f1e886b88b14320f8ebe9506ef446d2fd21403f9b62a73a4d31bf33bcb7687',1,1,'[\"name\"]',0,'2018-10-07 23:30:24'),('7d54d011bd4aca0292055300ed4a84e13fa538136a070a6fceb5fc0eb2fc1dae1515cb3f710239a9',1,2,'[\"name\"]',1,'2018-10-10 00:17:54'),('8c41474360c073e93431541bc8bfce4eaa5f5a6d628bbc53f553e1794004099e237f4ff7228db7ff',1,2,'[\"name\"]',1,'2018-10-14 18:46:28'),('8e381d96d68b15a677d25370a0b26a4fb1b5f450a75d727d32927404e6ed2ee87df3282046d2d457',1,2,'[\"name\"]',1,'2018-10-13 19:17:30'),('8ffeb73b2f20895278635f140f924079d930c2bb4f344edc2e87ec0c4e21607979853d55dbe59685',1,2,'[\"name\"]',1,'2018-10-14 00:37:36'),('931a451fd8d2f615ad8e48f50b50d087cc7703bc78e66f5617ce9bd663f618bce9066c0f73d7b6c0',1,2,'[\"name\"]',1,'2018-10-13 19:16:56'),('98028d548669b6de066866065edbbf691d8aee82eba8cd2333ce80f6153ac0f994af7b1fc825c3ca',1,2,'[\"name\"]',1,'2018-10-11 03:15:34'),('9e46b6222bd7bf2496dc4e469b503033e9667d03f0821819cd94dfc155296c60c59b7900ecfa90fd',1,2,'[\"name\"]',1,'2018-10-13 17:12:04'),('a50408d10bc5f6b85a0a74235990afdc49b10b70794fe1d7897a30c6df531c04a17217ab22b679ef',1,2,'[\"name\"]',1,'2018-10-12 21:44:54'),('a5bfb87367448b1b0a8ccda8c343014e7986ee19a37a4f760ccbcbf8fe5c1202d663d33962bda5a7',1,2,'[\"name\"]',1,'2018-10-13 17:44:23'),('a91c861216b670333dc57a15674ff02efe9024befc07e952b965aa84cfab5353d37d9b622ee9ca37',1,2,'[\"name\"]',1,'2018-10-10 00:43:33'),('acbb3ba9b0155d69d9eef2e9239dddd4db2ea723251bb9db84ff0856d1c8ad238397bed38f8cfbd4',14,1,'[\"name\"]',1,'2018-10-09 05:36:04'),('ae8ee6a30315d57892e3f666e27dedaba3c67be80fe28831a0fced0e0d1711d1e6d9ff4a80fb6881',1,2,'[\"name\"]',1,'2018-10-10 00:14:43'),('b3753e96a672cc5727bb207a84456f65b5da19cdce0eb4f4746aedf0403783dd9e3bf22f915f7e84',13,1,'[\"name\"]',1,'2018-10-08 07:17:47'),('b4dddb0c4eac3fbaa07f6b214edfdff41e2802424a1bdb97a9dd1f09a1c768345c4b4ea92087f7e3',1,2,'[\"name\"]',1,'2018-10-12 22:23:49'),('c21cccb2379511e754465092b82957b9e0fab22467c68cdc0d5ee4327b1ad7d230d3c5bd52e21d0f',1,2,'[\"name\"]',0,'2018-10-15 17:34:14'),('c5dbcbd35a6269306297236382a6d5d834520e050b3435e41fcd38bae6c6cfaa022c16e5e5fe1cf1',1,1,'[\"name\"]',1,'2018-10-12 02:02:45'),('c9a6b872818605779bd80b573d21e3872f66a198b7f630d3a7ebfb475691e4cd707886aee2c0053d',1,2,'[\"name\"]',1,'2018-10-14 19:23:42'),('cdea17156c1c120e71668f08881dc5e6b379411c0f9fd86d2a7a1d5b2d7d3faf51817be804782b28',1,2,'[\"name\"]',1,'2018-10-14 20:36:09'),('d305e351c94ef25235860574686ad1fd9861c55906c3b492c8ce75c535abc6f322aa4b028b6fffaf',1,2,'[\"name\"]',1,'2018-10-12 21:25:06'),('dc4e135327c46b6016fb9cd732c03c25010715ce61439a0ab70d4be5ab1a0b5fb3935294254fa8f6',1,2,'[\"name\"]',1,'2018-10-14 20:17:41'),('ddf30ebac8f59aca2bb58246b4d6bd414b7b386e310e80af001232b2cfb9b18e162df4d192f075e6',1,2,'[\"name\"]',1,'2018-10-13 18:24:13'),('df8b47ef80e221c68dd85df2cc5df97d4de763a121d7ccbeb95048688f7ecd266a7b82cb2729734d',1,2,'[\"name\"]',1,'2018-10-12 22:00:32'),('dff9cfe4cbbad608fe7f58296fbae1896894072b29dcec3cf22194f4a7764b7759af975bf21c36d5',1,2,'[\"name\"]',1,'2018-10-13 19:17:55'),('e638ab8dd26efdceb72ad6ec87d464e1bbadfc616022e82edb26bee24612d72c318eb8c01007457a',1,1,'[\"name\"]',0,'2018-10-07 23:29:04'),('f0d4731183eb5dc5c57eaa7bc58e9324b06c7ad689ec3d1c97238302c8a55be7f8fcd7908c4517eb',1,2,'[\"name\"]',1,'2018-10-13 18:04:04'),('f29434f045a62ac9f93f25e6df0a04ff0b3a368498cdba2c7739ae0576eaec3e99c4291be982afc5',1,2,'[\"name\"]',1,'2018-10-15 17:34:26'),('f3b219e1602f040b4d305f63ec70b228ea5552dcac4d057f5331c6a7c46e254542c62dc30153e735',1,2,'[\"name\"]',0,'2018-10-13 19:17:28'),('f3b3ab1af1e5cc80d6d94148da2b3546a225befe40b62b0592fa8ed09df47f90c31b245280f992cb',1,1,'[\"name\"]',1,'2018-10-09 06:14:16'),('fc013257882d89d04bd9a66fb94b37b99fa35c900e117e4c99ba3f477320b6240302db5adeff9c06',1,2,'[\"name\"]',1,'2018-10-13 16:53:10');
/*!40000 ALTER TABLE `demo48_oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_oauth_clients`
--

DROP TABLE IF EXISTS `demo48_oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_oauth_clients`
--

LOCK TABLES `demo48_oauth_clients` WRITE;
/*!40000 ALTER TABLE `demo48_oauth_clients` DISABLE KEYS */;
INSERT INTO `demo48_oauth_clients` VALUES (1,1,'Lol.how','MFeaPzvCFSoZBOkm475mFoTSUPBjRx8Oeq6txYfj','https://poster.projectoblio.com/login/irt/callback',0,0,0,'2018-10-08 03:16:32','2018-10-08 03:16:32'),(2,1,'dubs','FzYZsaYcO2EeGivBdVISPj4sJ8zevQjFHsdI6Imj','https://testdubs.projectoblio.com/dubRedirect',0,0,0,'2018-10-10 04:03:32','2018-10-10 04:03:32');
/*!40000 ALTER TABLE `demo48_oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `demo48_oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_oauth_personal_access_clients`
--

LOCK TABLES `demo48_oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `demo48_oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo48_oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `demo48_oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_oauth_refresh_tokens`
--

LOCK TABLES `demo48_oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `demo48_oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `demo48_oauth_refresh_tokens` VALUES ('041ce9a4e29128cc9a0c38517991454e55063225f5df92811152ce41b9518e9da65bccbbf9fae3e9','85a3af0e80a45e7d4ffc228c7b4172dee4634414024ccc33235e6df446419f735e93a65c58ffe23d',0,'2018-11-13 19:48:42'),('05ce22b73561d6957bdc6b674ec5a8a30d9d33ca5b10089f3b832cb54c5c465932f681aef0d871ec','2dfbecd815e13d0664ff29a4d7821777d41556ded736dea0b53d3ef83e5803f023c7d4d6ef65d86a',0,'2018-11-07 00:14:17'),('05e69b7d474b082bf56ea045733cc0303a67594c6f7699c56491deca21bacb2125f5ebe5044ced26','e254679ab1c3da54737e0291709233014f218aa18613ad8c5887273a4d70d2fff32166b8f6ecfafd',0,'2018-11-12 19:07:35'),('08e2f5d84ac2f8be8616a4f3d08667a2e74ab11a02de8747e314a23395ef91f457ba455b194b487c','5c659fba39506f7e9b0ac5e7f927cd0037c164a2f8a31bfabc430d91cd03caecd344ad3a4b51c637',0,'2018-11-12 16:43:10'),('0b3c9b692da08b7fa19060e9b1916069af2aa1829a55e5087e1471a2fee13afcdd026c3a2d06cfe9','dbf08ea9a3d5efdee0a23fb915e1ab1f660c26441356dbfa3d29e2bf0d4fda5a78f12bdca89ab739',0,'2018-11-11 21:15:07'),('0cab2bc5b66be56bca422753ea8b44d106191f039a00fba5c9ffdee8751289c01754858f5ab9cfef','460b4481987c80a3d34cd8619b3838660a675e3144a5691620e546e4f9d3a34b0cc25c63e94c0ffb',0,'2018-11-07 00:14:31'),('1467cc2f224c8bdb66cd44bb9094a0ccee67d4d8e38f995b84070715a4bad5ed38b42255da95a73e','1491d3a2998a2838b9f0adbc38ffeacc9191eae61bdfd5a091eed4870c939294540368655034115d',0,'2018-11-08 06:03:01'),('1514c0d1aa745f40ffac7afb4c186d80ca3324723052cdcb5036b0b8903435e0dc9ac4ad1abf1a51','936f30e39f17fecd4c2c7dfb39c5910b4f2c6e625d2fef62d118d5d0d7bac35da5b0742bb0a8498c',0,'2018-11-09 00:54:00'),('18db84189af2827b531434d035944a47ddf306079e5436d2766e5908a699613bc354c98cff5917bd','3c460821164257695a8807a08081c13adf63f3229b90a92b280da7bca4abc9e7c5c69760d79e3375',0,'2018-11-12 17:02:05'),('1c71d85c9ebb528fe8d2cb1ddba4c47bac0f9ff39b37d8c1e3d505382df319cd77aaf4970e1f300e','0f921ab84dfa33ec8f08e73fea1398ad7e7d629cd6602781a3da1635af0e08ccb46f43e7ea19a103',0,'2018-11-14 17:24:05'),('26223e4d4a3c7f52e34b9fcba380c75e2210366ad015466fe985a2cfb51e1de0577fc47e66f0826d','950ae5669632aabfe0579b522604d71dc45482e70f304f6dd47d443606fa35e13e449a174aa46597',0,'2018-11-14 00:16:00'),('29c0236725a258412ba9a1a2a0fe138f5cfd1b12811d3c2e80eb03b7404828ba0fdba76602d609d1','9b43d9587adf4d33fd84a636dea5c41af8f390361fddb774d040c9d5655856bdf581da9081088efc',0,'2018-11-10 10:49:30'),('2e938e0090feb6155282a013651d82e6c33d0b2fa20445b0b6154054a322e238662caaa0bcf4c11b','3ef74ab75c48c942f9d4ec2942dc323ef0070de9d1b47a77eece37ad80fe6d7036d02feafc8bb404',0,'2018-11-13 00:46:23'),('2f9cc803b8a67382f627e85f1b1823f67bc675cd38be3ce02cc7e057781db07a61cad75d2e161c41','518ac582ebc7d6d2f1ce3d170b665df37b1fac0893c20a8d2bd6ed9958ce5375f78007192606e7d5',0,'2018-11-14 17:05:26'),('317a5ced06ff4b6d80ef1479e6b71b8e359c9d7fe40c76decc7d755002677802806a81fbf52dec56','d72e511c032281a89665268c11c2eaed5e5c5e8281d60f8f3a56e1c3ab1f2090b0664aad1501d3e9',0,'2018-11-09 00:07:55'),('34bc6ddc3b2f189dc33ebe194d3fca1b6932e9634c8eab5cd87f5c7ca39933b66c8bca8b04f6e859','cf969c006e14f1648c51671f91ac2133f741d1bfd7695cdca01f037acd88e48b4fd3bc9533c6da39',0,'2018-11-12 17:34:24'),('396be69c6273acf727828436594c9f8286147d880baa0050fe573123bbccb2a58cd0307cfdbac5eb','5f2402fd7a42fe5169662d67d9945f71efaafe6eaa0be7c80a4b69ec97d4eaef05bb29dc7eea399b',0,'2018-11-11 01:52:46'),('4366cfa4711d3f1f5c3fc7498e713894136e4c5016460f7dd5c9e5730cf37ef653a0d23b66cf2958','ba032754aa8cb3b422c98d0295c9e092b52d69e49740c2bf69a9b2238f05f511a366f819d6687431',0,'2018-11-14 06:06:28'),('450fae8468fda8a3011fba0208ff4ecde4d1a5d13c86b77707a817f0bd106ebc89e284686143a8fc','a540e9a7a48f57894f2331b52f917d77d92d70c0a5295ba1db4b1d4fb263e17a48a03bded7de9b75',0,'2018-11-12 18:50:48'),('499fb704bac0af4691d7381005432ddbee10e241d23709ba04d3985364315fc4060ab3784f6dfb22','fe127f3d618c6d16e4820fe1bc28cbe458ede2845a98b8b3360918f8c79f9c8697a67c60b1edfe7e',0,'2018-11-13 19:29:35'),('4e83cb9a1b7ab9068d08f78c2524869746d9a20887d9211fb38ac45720f02c6ca0fcc3a0843b1294','367785f1087d30bda748da2e1985930b1ca53816dfbe997e214bb303bddeed2b9a5b23a1b1364747',0,'2018-11-11 21:34:55'),('5381b83784f026b9dd3b9592df873bbb022a093bda2e811e2bd76a750b4d83378c588cc08d35a7bd','5ca434a9cb4870d0b02fc2c47b538e17aafb49aec14f5e9d97a444ee75d211c410f6e392edc12ef0',0,'2018-11-13 18:55:26'),('5481c3e5c4e9586cc27bdfc9b4aa6e659b884d244e23d2a07c68eabb8078ec71a51854fac6dbfacd','bf037fcf6f50cb8100c3650f189b54a7aa1457f4c673586e5ca84de64d49bda0102176d3dd1f357d',0,'2018-11-13 20:26:10'),('5670e34929200be46e8e1071b0a0f6706fe7503913a24f7db762620c1f99d09edfbce9b5a71e7158','1e0f658f07e2e8a6bb41ca9f3a177a9908dc302cb6ce8a90eb2d2991ca65f518d042530c2cbc453a',0,'2018-11-12 17:19:08'),('5dee3778e28af04e89ae61d2a1cd047c7a7f5ad6b688c1440e38e8aa315d28a8a11310aa55f0db16','24f3ea53438ed347f028a1124a17fbac9860c51e949816254d2ac4fb74278217630fc40a4a77c664',0,'2018-11-13 18:36:29'),('5f8de94551b0adea69a44869cf51e62052f5223d2ce7da42bbfcd41a6c4c9077a27ec0e857e5095f','9258eecc941aaf81a5b091d9170a2a2e0ec500e184927933dd89124442d3e7b6c2eb2f087171397d',0,'2018-11-08 06:04:17'),('61522f0b2cd6ad5811d12b5bb1ef364c6e91efe908797b58eb0fd27485d168d8f7c21b302be3fcb6','3febd28ec0e4ffa6d5b4df3d05022169918ef9993d894196205dea1704950d76296733225835aa49',0,'2018-11-13 23:16:36'),('61a35be434416d31f3cfc6137a794e4675d89ec8907c1161dc76dfde669389857799790f09783813','fbf263de9a679b99b476c78686c3fde8c798aa153c9adc10ab694ad59e7e05d3afb30b00f014a92a',0,'2018-11-13 01:03:59'),('623aeadd928ddfebe8afb972952ce56ee015dc817a464ade988b01888a9014bae808d80ed0d28169','ab9d632eaebb3c9de47fb335e2e2a00391737ba89052b494e753f44b701745795e49c950ea0e7520',0,'2018-11-09 00:47:30'),('655de03597d2ee40a363ebdf54800d23a3214599b91bcebf392b3b557d17b9c19756d0ee586c902d','46a5ed40896f1c2df311afc7ff75ee57872fc833a48f08ece7afb6bb91d26fb6e2d1b7d670a5dc70',0,'2018-11-10 03:05:35'),('6db5e3e1b7eeb97f363e8c927404684a897923e3101041a36fe2c0b6b651c63ae2bb540b250abe60','56441e612f5e32f81dd1c23d073b6b01c71de2368174a55ef599084899b043ba44b6ef4e107fd1eb',0,'2018-11-07 07:07:48'),('71dd9ab234115eb07c37f5797a35a36ef024735baf34d45faff3131093c8a6ab58d719bc8caa4d67','28fc690d3e0e027693ba740c3d844368fa8f2c334c8d76551906743fa545e8faa5c396680396fc25',0,'2018-11-10 22:03:19'),('730d3a9b767eb85a816d19258b1b07204a73bd377b36f2bbb0b50b96c6aeb893c9365834cd12fca2','4e63d9656051ac02aa2761b59ebf9c658566c30faa2385722849028d65aca909f91d959271d097f2',0,'2018-11-13 01:19:05'),('7589d41177b750adb8372adc6e87e9b96035e6c195157e7527d6e6459400e3daf00be418e317af33','8131eb5f47950fbc99c43da89de486ffddffff75d08d4ce3ddac224b090544301da5bc0f1bc5a0ca',0,'2018-11-12 17:20:01'),('7c9389e6e0fc5d897c7586efcd5a50f9b046c4e0bd79996a2bea9faa4c57b3a44a9727983118127e','f3405ea916b33b3f05f0e11063f1ecedcd6da2ba90850b028618cedaf8b650327c4a4072d5541398',0,'2018-11-12 19:06:57'),('7ce717c10476b917137a7e0470307402d41739056d5893f30da6032a759bf879cdcf6e4b4ac48d62','e64aeb9e6c75e017f9349e204913b63539d74349c54e11b5d0a9c6668b2525d0b28dab6b3d08e945',0,'2018-11-11 22:13:50'),('8377b095a3f43f4ec032790b60de1f03ae5545f025bf00f7d4d7680890f57f1ac38c35849fedb49e','13a94962d284d474d3f4d2bcfbf0f29db1e90cddd6ddb5c1b5e07736a9eb254b9891121ed43146e4',0,'2018-11-11 21:50:33'),('85c51501d4b3f842297bf658621522928c301637d1396f265f03e5883ac3873fb5090db8d61a0095','4ac2528467cce147c5eb7d8d8a578d63661464e7986a4bbd3c827e35cae893829bfbbd01e6ce67d2',0,'2018-11-14 18:01:22'),('9020c86fcf1271362a6ab7b33c83b337bff7fd8e96fa62d6dbcaa5080248b4930aca2808539bb35f','916565ddef3ef5515796ac226149a404243229f5a9e87e14761ab779ab9c6aaa5c3e0ee1e468351c',0,'2018-11-08 05:54:01'),('909fceea628fe676e8bf17268c534651dfc9499ba2fdb72e267f9f20fb933d6dd122129161c950ac','52589e0d39f1a3fdeafe9f758b64ffbed7ab370145d9f6d61b7d67bf2e826b90fdc47e801a745e79',0,'2018-11-09 02:08:22'),('914318fa3427e6112e9544ad6cbef68c0e8d79fa52c988a1d897e331b4274ec722995b0518e33362','c1dce8be2f7a91b8faeb9e7e239a99517fd746d4e2ee9b1de6165dad80f55e907ea9da443c579a92',0,'2018-11-14 17:04:08'),('94290c977f539c933055d5cf67ab57782eea069a746690c39a250d92590915f8b6cd7828321b324e','165425682a89d110256c17885eb2617fb4331556b8cbc11f08e2a6af032b656adb34fc2142111b41',0,'2018-11-07 07:08:31'),('992f441c04600989a327d9c2c32cfe2a8c1507195f37d805f0139fdc9bca9bfd8557c4a550bf8d0d','33273d92d54e723da754eac5f4c87d866688e778e59c262a476606913c61d78993431990a923ec93',0,'2018-11-12 19:07:56'),('9e1147cec41c69aa0d2cb9effeb4686c7966652437d4c3fd8359ed0b0f9035280646c48ad3ba989a','5acc96b1b0becb0835bad586f74b4c8bbe3a3e5baa6cf1ff653cd872dbd8bcde181ad59c149eec17',0,'2018-11-13 00:27:37'),('a0a0de17be904c4459f0e7a4605ef0ed021a8311ab428a6678e3b4d6bd90a6d7b680eed5ae651b5a','d7a77118ca14696dd0fce62759333e29a7dfdc3d2587e27fb971efe6cf38c058d3c55f4c7e430034',0,'2018-11-13 20:07:42'),('a6b232a102afbd6edf0d612eb2dd4c6ec18eb44707e34f4f6da608f3befc0b26a99f62fb7e176868','af28d6240a81af7368813acc6344785da18b146b4f2bdfaea61b2d491b71e3634e2ff296690f82f4',0,'2018-11-12 17:54:06'),('ac4c7ce45370eb1d47cda73047be23da0df0221284a89393bd493ad4ed4a9e32fe6c35ebbf57f873','53d3a077411a0d9cdcc9acf01fd2b58781a78547977fb7d06e6c465f0028c192d8a9d0ca2883d034',0,'2018-11-12 18:14:19'),('b18867953ee1ef2d21c4dd2f5f2f1bf743b1e35f42c1e0de574ff17580e47eff00a205ab38dca3b0','9db773292d098b9107a39796dc62db33b4bf61bd4e51b8277959d9c529049230ed2851e048f93546',0,'2018-11-09 01:00:13'),('b62b6906d8b48d93fab3b537e7caa90223aa84e8f68bf10480ea53d80540d9634e9b0af02dbf87da','cfa0f09526c483ef8889bf6e4c16bc9d824ac78bef819379e04547a25dd1044387aa14a3fafe76d9',0,'2018-11-08 05:26:05'),('b659707b325b5859f9bed46f27ffd72a68bea56bc5d10c249c4ddbbf3df6066772a2082cae9bbcd7','bc72aad1d0916c8d03223450c18efcf8129431f374639d00c7bbbc691de017a6ae55bcd9deb6e8e5',0,'2018-11-13 19:13:43'),('b775197188be96d3f97ac42f969637787c2a5c86fce02963219236fca350c57053ebb7169d05a9eb','b4a16185f9c9167984d860684728d946062df1f8da0c1c678a77d7b9474216908f66ba0b2174b916',0,'2018-11-06 23:49:30'),('bda7eeaf472618f6e6d618b16901e5ff38904b1c9b3fcff9db66bfee9f90353e1d05fe8d1a80614c','f14e7fcc28da96fc15b65ff55999c19b376ef98bfc00fdbe5995003f967e1da5547d8c836dfa9b49',0,'2018-11-12 18:34:24'),('be1b63a7b9f4b69bd68135035e6056afecce66322274a37a64f59944592e0285b3a83fa7c802cd56','5ad98764505a8f21ad9ed36b976c1d0768f91e274c4903edcde9b84203dc87fb3b548d238484937f',0,'2018-11-11 13:51:47'),('bedce45a30c00ea61b537714e1a4602cc8341c7558914402c567f44f1eadd50de97da9e47fbdb389','65b8c9e74d95ebc40c01d2606bf4fbd813d22b8741fc2953a11c1e46716d752686bdf44a9e87a3a3',0,'2018-11-09 00:04:44'),('c7763f619a2a2d350bc315af9a8988ad5476c0609f2c8f72907d001ce2b467dde9f54908e9763ce3','f8a8cb294ec5eaac2996dc7c5024468cf1de00a95d8f4f9fbe75729c5b8098db06496404504f93f2',0,'2018-11-09 00:33:34'),('d37e4c61c0ef5ddfdbc37b914cef292b42eb668f26e1988d4894051a7a9f263aa4d45411d7ec0e19','41e8d0219ef8c916b19235fcd6ca80e54e7136499e889ff222cd38f6c23ebb706ac370c8a801c186',0,'2018-11-11 01:35:29'),('f4e116b8bb6798a97192e4dfedab4d01d6878d5a802fbbef9205875c0b49e0c39745eb0789f405a9','31b3f379b19b8204e171cae733ab6996e1d8db10b3ebd0eb6e2cee02d576780952dc282f33c0b7d8',0,'2018-11-08 05:43:38'),('f9b233429eaee71dec0b215ff6284c41d70f1bc4a5cb3c9ca8e6748f0466e4833cfe36801b134e61','8acb208d519a1d2e6ddbe730cb97b7a1b78d1243710c07bac525afe75ae56bab24ce24ba2c54f2e9',0,'2018-11-14 17:24:27');
/*!40000 ALTER TABLE `demo48_oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_ones`
--

DROP TABLE IF EXISTS `demo48_ones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_ones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ones_user_id_foreign` (`user_id`),
  CONSTRAINT `ones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `demo48_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_ones`
--

LOCK TABLES `demo48_ones` WRITE;
/*!40000 ALTER TABLE `demo48_ones` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo48_ones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_password_resets`
--

DROP TABLE IF EXISTS `demo48_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_password_resets`
--

LOCK TABLES `demo48_password_resets` WRITE;
/*!40000 ALTER TABLE `demo48_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo48_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_photos`
--

DROP TABLE IF EXISTS `demo48_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `link_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_photos`
--

LOCK TABLES `demo48_photos` WRITE;
/*!40000 ALTER TABLE `demo48_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo48_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_social_providers`
--

DROP TABLE IF EXISTS `demo48_social_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_social_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_social_providers`
--

LOCK TABLES `demo48_social_providers` WRITE;
/*!40000 ALTER TABLE `demo48_social_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo48_social_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_threes`
--

DROP TABLE IF EXISTS `demo48_threes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_threes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_varified` tinyint(1) NOT NULL DEFAULT '0',
  `point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `threes_user_id_unique` (`user_id`),
  CONSTRAINT `threes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `demo48_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_threes`
--

LOCK TABLES `demo48_threes` WRITE;
/*!40000 ALTER TABLE `demo48_threes` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo48_threes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_twos`
--

DROP TABLE IF EXISTS `demo48_twos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_twos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `privacy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `twos_user_id_foreign` (`user_id`),
  CONSTRAINT `twos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `demo48_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_twos`
--

LOCK TABLES `demo48_twos` WRITE;
/*!40000 ALTER TABLE `demo48_twos` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo48_twos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_users`
--

DROP TABLE IF EXISTS `demo48_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrows` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `karma` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `last_dub_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `form_level` int(11) DEFAULT '0',
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_users`
--

LOCK TABLES `demo48_users` WRITE;
/*!40000 ALTER TABLE `demo48_users` DISABLE KEYS */;
INSERT INTO `demo48_users` VALUES (1,'admin','admin@projectoblio.com','$2y$10$sLsRkjj8qT47sYs8wAINSu88dap7tJJGGHH0gqj8NOFVt.WElHyCK','advance','images/user/15389362941264.png','0','0','0','0',0,'100.8.201.78','nvBfgWRtvI3EfCSvkpIOkTYGWC3M3y0RgQSFgSQAn0UG1UxVd3K2aeRQR5si','2018-10-07 22:18:15','2018-10-12 05:32:56',0),(2,'mathiasmorlock','mathiasmorlock@gmail.com','$2y$10$vjJf0iSlQ1ysf2C4eGjq3upff2xPx.U/iYQ9x1kMjLfp2gadb0972','advance','images/user/15389363857954.png','0','0','0','0',0,'154.59.40.90','4IYgmi2axMzhMrEvcXnsa36mYMZGiUYWz4T7kvbKsX0HI3iWehn5y0jEEKDH','2018-10-07 22:19:45','2018-10-07 22:20:05',0),(3,'gaabtv','gaabtv@gmail.com','$2y$10$CgZ/a3eflUCOaDDueOyymukY060KlqQHfQKwT1MZzk.e.fSb2yETm','advance','images/user/15389379779769.png','0','0','0','0',0,'149.54.5.190','EHFjD3Q2wa6JeMMY8PGeklo0qYatiECWyhgqfFOefQh17Ujuuu62uaTkgVSb','2018-10-07 22:46:17','2018-10-07 22:46:22',0),(4,'munkamiatt80','munkamiatt80@gmail.com','$2y$10$1KWxPGPzYPJvZy1d8bp82.OeE.G6XIaRucWUVa2yn3k2kzEung6se','advance','images/user/15389393322880.png','0','0','0','0',0,'149.54.5.190','IXpn3ULmi5n4wwfZBnZSIxe4MGUG70S4f6Z7qarYabD5beHfQAKsKVlHfHEW','2018-10-07 23:08:52','2018-10-07 23:09:00',0),(5,'boop','boop@gmail.com','$2y$10$XBUzYKf1doOwqgJGSrsDLOSJDuzs7r9ecitzGQFOrOjiqKLAkj5AO','advance','images/user/15389472134462.png','0','0','0','0',0,'100.8.201.78','cqWv1BhhfzARM7ny9ipwYkchyQql7hcKorBySiIU54W2O8xH32ib0QfI6hbX','2018-10-08 01:20:13','2018-10-08 01:20:19',0),(6,'alexcabreragil','alexcabreragil@gmail.com','$2y$10$vpke7QE4nwS/NXmPeWiCYO.Qm1EY7Fvur0h9wrAqy1UmGZo9pq0YC','advance','images/user/15389767621202.png','0','0','0','0',0,'103.13.66.234','5IgNWnS6YIw7ZJQB6JK2yzaU484I6eRLOdf9ttSrDkIt4muk37TNW43OhGxx','2018-10-08 09:32:42','2018-10-08 09:32:49',0),(7,'antonmaterr','antonmaterr@gmail.com','$2y$10$qJ2qD7KyfVF1FpgH7FlW/OCffPgAfVZahl/8KnGcYNtgBd52KPhvy','advance','images/user/15389776602700.png','0','0','0','0',0,'103.13.66.234','DX1M9LuHTC7z3vv3CEHoCfbPH0OO8H3jgJ8W9ecTkY94Xm74UcRmLpiOerTC','2018-10-08 09:47:40','2018-10-08 09:47:43',0),(8,'nodbone1070289','nodbone1070289@gmail.com','$2y$10$Cq/Z.zHJy1N5x6tJoC37tOoeQqM8HvNbyU8F9u2UwJg5DnNp/JBRW','advance','images/user/15389783829647.png','0','0','0','0',0,'59.153.127.189','QU8Pv2ycR3P1D9v1djHMHvrwW8H5L0LS1Wvqlsfubzh51lsLzK4N2ZCk7qin','2018-10-08 09:59:42','2018-10-08 09:59:47',0),(9,'jhojam02','jhojam02@gmail.com','$2y$10$i8kZOPoybhbYlb2eGC/oz.LJpjlYClZ3DWl4jDO1GyEHJLRfK4AOa','advance','images/user/15389814106655.png','0','0','0','0',0,'103.13.66.234','fROK4olBvRNm2AJQegetmXpdudbQatrbgNIfHkzfdyFg4onUfGW1lOITdEj8','2018-10-08 10:50:10','2018-10-08 10:50:21',0),(10,'milica.atanackovic2312','milica.atanackovic2312@gmail.com','$2y$10$Dq6/PoajswBrl6AuzgSQEu7euOJy1QoZhpGTi1Pa33jUU8nxiRDUC','advance','images/user/15389815581192.png','0','0','0','0',0,'103.13.66.234','uXw63bTMobz0T6ARCOe8IlDsImwNHdDZ4kzk5YZ0SFDaTRh4ANLqztIJodOH','2018-10-08 10:52:38','2018-10-08 10:52:40',0),(11,'juniorxdj56','juniorxdj56@gmail.com','$2y$10$fONtt27Vq9r4eOPNfLs/9uvfnnJbGjPIu7wjvT419HSqbBkpp5Yh.','advance','images/user/15389817623740.png','0','0','0','0',0,'103.13.66.234','VhiZ7dAuQd1KmXFk7oi1aOLQQtcZnlQ6UTNdqsFfBOQqcePqv0ioswrAPNTY','2018-10-08 10:56:02','2018-10-08 10:56:05',0),(12,'rishavmohanpainuli','rishavmohanpainuli@gmail.com','$2y$10$eN77Za5ztp3.AMiElASET.Z63CudH7074a4lL/37WDOGiX37iQVDO','advance','images/user/15389820214222.png','0','0','0','0',0,'103.13.66.234','QJzJv38Vm8zkwfxG3gP1UDWAUjHrgdGoptVL4zTPzO640Y1iX4sGYPFl7yhz','2018-10-08 11:00:21','2018-10-08 11:00:24',0),(13,'savanihp','savanihp@gmail.com','$2y$10$mSemvrNxHB207jUbyM6xT.oXdUOFTxAcg6GHpoGTXavIfcWKfKFsW','anonymous','images/user/15389824546149.png','0','0','0','0',0,'123.201.110.90','U2DLd2rFiFmSIFHgMIECXnpjiFuwhZfujuHKQ3doI9e4esYWoWXWc8N9Gjt2','2018-10-08 11:07:34','2018-10-08 11:07:41',0),(14,'hpsavani1','hpsavani@gmail.com','$2y$10$iXknCBFc1uqlwyGkdMGJ2uBlHxebQDepRF/a6Dn4BHBpv940nNQdG',NULL,'images/user/15390627569838.png','0','0','0','0',0,'123.201.110.90',NULL,'2018-10-09 09:25:56','2018-10-09 09:25:56',0),(15,'novakbelgrade','novakbelgrade@gmail.com','$2y$10$HFRRrbP9BizOcLhg.Qj6fOGwPueOfLfM/SRnOA8WYvXC/2EndVp56','advance','images/user/15390931743255.png','0','0','0','0',0,'59.153.127.191','108P8BlUthf0K7Bscl5glB3ETvuQum7S6bUZAup32K1tuErYDYYfXEygyIWg','2018-10-09 17:52:54','2018-10-09 17:52:59',0),(16,'tordalsjo','tordalsjo@gmail.com','$2y$10$C4LfjzsZCgJgJZdSTHvg1.bZb6PvtCwkhe2RDrLBFZG1oGXqi6WNi','advance','images/user/15391563823983.png','0','0','0','0',0,'103.13.66.234','lI3jaZgS3b7crK8v9jBDaghk23fbJriH6FvKpFfs8zzz2iAGAdqbJkJTIaau','2018-10-10 11:26:22','2018-10-10 11:26:26',0),(17,'floreslozadaluisalejandro','floreslozadaluisalejandro@gmail.com','$2y$10$BXqg7JIrsSRceRxglZ47XOVFnNg/xG5KeUIWKM12a.4bHpZ/5CFvi','advance','images/user/15391570264347.png','0','0','0','0',0,'103.13.66.234','M47h4vAOUp6Mc3fEgDfwNe5JqBftFRPUOyhlLofODwb61Yz1fiONOkbLdZT4','2018-10-10 11:37:06','2018-10-10 11:37:10',0),(18,'huyhuan1213','huyhuan1213@yahoo.com','$2y$10$n0sX.C65CKW91sibCmFFFuP68xAVIjLDL/aae14JOIC7S2MQJz85G','advance','images/user/15391571555627.png','0','0','0','0',0,'103.13.66.234','m6q1e3qjAw69zhIFIwIibd27DCVSuXGLJq6qixb1zj06E1Jva60aPNP3fVvn','2018-10-10 11:39:15','2018-10-10 11:39:19',0),(19,'getreply01','getreply01@gmail.com','$2y$10$Odt4SDNr9mKHZW.tuiuTJONeV4vj98/B6Q5GhLzPpa8Jxcn3l.Ic2','advance','images/user/15391573007938.png','0','0','0','0',0,'103.13.66.234','uaFcKbrTkaKUkK8aK3j6JrIg19FJG5ouxvV3noFgObPDxEXFw9PoSrtRiaeA','2018-10-10 11:41:41','2018-10-10 11:41:45',0),(20,'aneeshnewgo','aneeshnewgo@gmail.com','$2y$10$2E5/OUEJwIBiCbkM26qQJu0wc7VmfdJHPWpLr2VgsV8whU6n8hFte','advance','images/user/15391623263295.png','0','0','0','0',0,'103.13.66.234','rxmBpygwh1UkSNoDr7VH82yyHIjhoLN890G9nIL2viFGns7F4ykHY2WnK0SX','2018-10-10 13:05:26','2018-10-10 13:05:31',0),(21,'kaizokouoni','kaizokouoni@hotmail.com','$2y$10$97YGB6kbnNCA8ouMa0mXbuiJkxRG5UM81FLNr9XRvFL4ecLgapF4m','advance','images/user/15391624647971.png','0','0','0','0',0,'103.13.66.234','RTFqAdsxl6oVWP9wNnc1nyFPVltRNE3GlknNnaCGnHIbVqEEBzFKuCeyM38k','2018-10-10 13:07:44','2018-10-10 13:07:46',0),(22,'pirrurris2709','pirrurris2709@gmail.com','$2y$10$9VIML2gpwJn/lOTsebJ6Vuta6HjNKuhADAFgyh9oEP/zsZwieLQo.','advance','images/user/15391626747520.png','0','0','0','0',0,'103.13.66.234','34aFPLoOMG1x0VeBT6oImU2ISqaVWjQc82W7P1h7j3eQkHX09ItcqoASkq2b','2018-10-10 13:11:14','2018-10-10 13:11:16',0),(23,'ricky.hennig','ricky.hennig@hotmail.de','$2y$10$psFNYkdkaf75Z8hM1ZLPLOLWMBRtdkSkwe4ygqqOWdyOihquMi2q2','advance','images/user/15391682984916.png','0','0','0','0',0,'103.13.66.234','n8Ap3PNSW5kW6WaT1pc7ft5aDFay8gHTfSNhMKTGAPXlgBOfiVLex0ftogAj','2018-10-10 14:44:58','2018-10-10 14:45:03',0),(24,'indiagolf1583','indiagolf1583@gmail.com','$2y$10$3UoTTqrWDNaqPQxsqsLsq.4a0HdFWc597h7uMD2f2QsUqUVVSEuIa','advance','images/user/15391684149433.png','0','0','0','0',0,'103.13.66.234','041a0TEMWBs75YT8ud8HUvOiiEXFqmPrGILhORQIj2KY1GH7gHfIQ82GVs8N','2018-10-10 14:46:54','2018-10-10 14:46:57',0),(25,'thelucifear','thelucifear@gmail.com','$2y$10$m4f15xIdpWp6RG/Qcc2jzeGCpF0B9N413bgEHIgvWrtPSKXf8RkPC','advance','images/user/15391685243486.png','0','0','0','0',0,'103.13.66.234','cUoG4oo836j1Z4vjRhmggwijWF1956fbUrE3daLElkO9OacBnAPpQQzzh2ya','2018-10-10 14:48:44','2018-10-10 14:48:47',0),(26,'inesvogel38','inesvogel38@gmail.com','$2y$10$peqDcHuaCcqjAs.rF6CPhe.YCRiel1uk2GlFCNvCEp.wgFJmjp3pC','advance','images/user/15391705976502.png','0','0','0','0',0,'103.13.66.234','JnMyH1wGcOobAGx2EB0ZowwN5KWM8I9OZN6XNJrm6BbGqJne4YNBzvUUvzYl','2018-10-10 15:23:17','2018-10-10 15:23:20',0),(27,'karthicksivaraj17','karthicksivaraj17@gmail.com','$2y$10$ni.Txk.g.xY5d/0fDCPaI.eWn0VUGEvmZQGU1ewWWv3Y07PoDFWZa','advance','images/user/15394250817583.png','0','0','0','0',0,'180.94.88.2','Sc5L34ZeKwee6xZI5nRhXDG9SFRqwZvsK5lTGMGue7NsBXKPeMm8ORkSuFfX','2018-10-13 14:04:41','2018-10-13 14:04:47',0),(28,'kinjal','kinjal.n.modi@trimantra.com','$2y$10$AwBA82mNEnXBmUBhxPdDDubiUWCgEXHpjcR2x/8QJOJT4sTJl4nCK','anonymous','images/user/15395832946347.png','0','0','0','0',0,'123.201.110.90','qGhcV4wzxWZODWuQj9VJH4CN7r0KLimWImoQMTBTRAlgDGDGHxGh41wKRY7l','2018-10-15 10:01:34','2018-10-15 10:01:39',0),(29,'bhumika','bhumika.g.vaishnani@doyenhub.com','$2y$10$b/cIJ9yNaXMKNk4ke5S6WO65y/JUiuNZshYkIJQXA1KmwzKV194sG','anonymous','images/user/15395834617964.png','0','0','0','0',0,'123.201.110.90','hwn9Rxk3N5xFpQKLNHe8XwKipE962wNZEKGTPNRVa97Txvuormg2o0GU9UXr','2018-10-15 10:04:21','2018-10-15 10:04:33',0),(30,'well','thisisawesome@gmail.com','$2y$10$g73IqveuPsDo5QlGmG3LUe5VuiLv6F52w/8Uiy9TCQfk4V6Zi2tGq',NULL,NULL,'0','0','0','0',0,'100.8.201.78',NULL,'2018-10-15 20:11:49','2018-10-15 20:11:49',0);
/*!40000 ALTER TABLE `demo48_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo48_zeros`
--

DROP TABLE IF EXISTS `demo48_zeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo48_zeros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ethereum_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zeros_user_id_foreign` (`user_id`),
  CONSTRAINT `zeros_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `demo48_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_zeros`
--

LOCK TABLES `demo48_zeros` WRITE;
/*!40000 ALTER TABLE `demo48_zeros` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo48_zeros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-15 16:32:07
