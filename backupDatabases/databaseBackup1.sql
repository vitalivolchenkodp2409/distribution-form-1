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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_fives`
--

LOCK TABLES `demo48_fives` WRITE;
/*!40000 ALTER TABLE `demo48_fives` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_migrations`
--

LOCK TABLES `demo48_migrations` WRITE;
/*!40000 ALTER TABLE `demo48_migrations` DISABLE KEYS */;
INSERT INTO `demo48_migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2018_07_30_065528_create_zeros_table',1),(9,'2018_07_31_073938_create_ones_table',1),(10,'2018_07_31_113149_create_twos_table',1),(11,'2018_08_01_073905_create_threes_table',1),(12,'2018_08_01_114349_create_fours_table',1),(13,'2018_08_01_131912_create_fives_table',1),(14,'2018_08_09_191843_add_is_locked_to_users_table',1);
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
INSERT INTO `demo48_oauth_access_tokens` VALUES ('036d8e538b568bd752fb24b5dee382422ac86acb2970fc1e3e12c33a3a5e3dbbf2fa3689f51fb4fe',4,2,NULL,'[\"name\",\"last_dub_time\"]',0,'2018-09-18 16:49:26','2018-09-18 16:49:26','2018-10-03 12:49:26'),('04b5a18fa650b5f0cab41fde2cf02cd8bfeae5976dff56bf75136e0d21225390c336c33a291625e8',4,1,NULL,'[\"name\"]',0,'2018-09-19 23:41:21','2018-09-19 23:41:21','2018-10-04 19:41:21'),('0eee1608942b8d44a8677dde39048af8e65c361856b2def9e684a08f8a959756aee43526a5ddd222',4,2,NULL,'[\"name\"]',0,'2018-09-18 17:18:05','2018-09-18 17:18:05','2018-10-03 13:18:05'),('10fcf0b8dd6f9d3155a80f63999db7888f7f156a98f0ec9868299e2ac9599a60a9aae700a640aefd',4,2,NULL,'[\"name\"]',0,'2018-09-18 17:12:13','2018-09-18 17:12:13','2018-10-03 13:12:13'),('16339910a222af79754d971d8e9d4786a392b29450e8c2304a06bdc2f4e1e8966808260fb10067dc',4,2,NULL,'[\"name\"]',0,'2018-09-21 02:26:53','2018-09-21 02:26:53','2018-10-05 22:26:53'),('173c2f7235ab1445590fa82b736739bf43c6df7a3da2502c31988c51df38f18549fbb2e33649908d',4,1,NULL,'[\"name\"]',0,'2018-09-21 12:57:32','2018-09-21 12:57:32','2018-10-06 08:57:32'),('17c8f2e67bed086819c47970b14795ea68fcaa649771e74a8723701bca84629547648898dda0dc93',4,2,NULL,'[\"name\"]',0,'2018-09-21 03:07:22','2018-09-21 03:07:22','2018-10-05 23:07:22'),('18a778fa1541bb647e7bba3b1acab10c8fa5e46cc0c98c2d27c396b31e575ce261b66ea352efd4c5',4,1,NULL,'[\"name\"]',0,'2018-09-20 07:08:20','2018-09-20 07:08:20','2018-10-05 03:08:20'),('197df936bceaeb061d0a722c7baa4ee72e36890f6c266f3b6729ab39115796105418cdffbe2a2301',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:34:34','2018-09-20 00:34:34','2018-10-04 20:34:34'),('20d501af1128021afc2a9911172b6d71946f12e12d9c0cbef839b646d4c63a43ae318cd6b35c8e9c',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:38:08','2018-09-20 00:38:08','2018-10-04 20:38:08'),('22276e5476f0f1d9989d58a47df68107f17d1223a859bf2623f90d45082f3877c3df4910a1fd2f2b',4,1,NULL,'[\"name\"]',0,'2018-09-20 01:22:52','2018-09-20 01:22:52','2018-10-04 21:22:52'),('2d562e592fd88738d8469fe9dee5e3dd3ba265ce542644eef7f6a7433b55444a801c14c7fb7b4625',4,2,NULL,'[\"name\"]',0,'2018-09-21 02:54:43','2018-09-21 02:54:43','2018-10-05 22:54:43'),('2eed3ab5f0387c92e952d5b8cfe730d456697ab689c6b686d9447dc8740e5afaa5dfc286fda72868',4,1,NULL,'[\"name\"]',0,'2018-09-21 14:33:05','2018-09-21 14:33:05','2018-10-06 10:33:05'),('333d9aae41240a2ac6a9d8af1ab45bc1f48cff950c5c462dbae8b39ba7471541abb3e57c51aca40b',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:24:42','2018-09-20 00:24:42','2018-10-04 20:24:42'),('3487a5a82a859942f39db522273aace80c4cb0af48a3f869a78b14725cbef1fd7c8f726e52f06a67',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:29:50','2018-09-20 00:29:50','2018-10-04 20:29:50'),('4821742370821c9d9459c8cd5440800413d4beab6719295de5f188bc0dd2f0a9798045b02050c236',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:06:59','2018-09-20 00:06:59','2018-10-04 20:06:59'),('4867990212119f2fcf60cd471900dd02288c4596d520f748365684f797e3a1846477555442d44e01',4,2,NULL,'[\"name\"]',0,'2018-09-18 22:14:02','2018-09-18 22:14:02','2018-10-03 18:14:02'),('4da1d28c4ca2294fb59dd47727a12d4d2e8329278fb19d5c64e4d4af60936afce6f2a90fc48d2c90',4,2,NULL,'[\"name\",\"last_dub_time\"]',0,'2018-09-18 16:51:42','2018-09-18 16:51:42','2018-10-03 12:51:42'),('5591234728a01167d5c70614365bdf9242d5967ffdca0a234a952a205734052f6a68bf8b0dffcb06',4,2,NULL,'[\"name\",\"last_dub_time\"]',0,'2018-09-18 16:46:29','2018-09-18 16:46:29','2018-10-03 12:46:29'),('5a59e2a984dff12429ba3e6f3f33dc5130586bc5831edcb17955e7e561ac8d0340139aea9f13e349',4,1,NULL,'[\"name\"]',0,'2018-09-21 12:56:57','2018-09-21 12:56:57','2018-10-06 08:56:57'),('5e2192b656d7c04e0f1a9afbc794cb6c2fe9ed4f9424af5f1014628c219cfba7e942219a44c5ee40',4,2,NULL,'[\"name\"]',0,'2018-09-19 19:19:38','2018-09-19 19:19:38','2018-10-04 15:19:38'),('67b08936c4025383ae83b7fdd50b37e2398f7f1dd7d54994b4c6d2b00a444dfb1164cfc6acab4522',4,1,NULL,'[\"name\"]',0,'2018-09-21 13:49:59','2018-09-21 13:49:59','2018-10-06 09:49:59'),('6cdb2f62fccbe0e2cfc838c11f39b4ed68bc43751dfd02a7af6adbaa9bff2b064862b6712b601ec5',4,1,NULL,'[\"name\"]',0,'2018-09-20 07:09:42','2018-09-20 07:09:42','2018-10-05 03:09:42'),('8d7a655f15fc2a9039acb112484d22c486b00b189a5bd4b4acda8fde894e9628c81b360848b684ac',4,2,NULL,'[\"name\"]',0,'2018-09-18 17:04:54','2018-09-18 17:04:54','2018-10-03 13:04:54'),('8ff3b5b4fd0f8aa64bb07e05786f068d51014310b863f30c38ee189d7e4501681484e47ea67b0a7f',4,1,NULL,'[\"name\"]',0,'2018-09-21 12:09:58','2018-09-21 12:09:58','2018-10-06 08:09:58'),('943d307eb2000b6f4e775ce4ce13dc64e7520c3c7900b0a628549a9cc73f0e7b80eb5feb69e6fc33',4,1,NULL,'[\"name\"]',0,'2018-09-20 01:13:16','2018-09-20 01:13:16','2018-10-04 21:13:16'),('978fbb2d4cfdb2dcd05ee34c6a402492317d2cdcb4ef9e313c53a55e901fff72307dabe018d19832',4,2,NULL,'[\"name\"]',0,'2018-09-19 18:55:26','2018-09-19 18:55:26','2018-10-04 14:55:26'),('9a72998273bf9771df534fbe6d843534f4666121a230c3c1c70325f5631b17f4c33c051268ce9135',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:40:40','2018-09-20 00:40:40','2018-10-04 20:40:40'),('9f5a6d027b482143624a87ce84dafe75cb9ced4918d80a3fa781d7f09d4302d0818affba2cfe41a9',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:37:20','2018-09-20 00:37:20','2018-10-04 20:37:20'),('a095aacb5c0393fa39fbdcbc65054e3f3e6d4d477479cb9d2d58c2c86a9b0a33184b5bae68eb94e1',4,1,NULL,'[\"name\"]',0,'2018-09-21 12:07:17','2018-09-21 12:07:17','2018-10-06 08:07:17'),('ac43346d44de1a2d4635ad37251220cb11618e745a41dc64d83257c6f2302dfd0fc1d0f903ae73a8',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:38:55','2018-09-20 00:38:55','2018-10-04 20:38:55'),('b384c3afdf55002ffc1becd2be55ba8ac141b73099493da04661aee4a061ea813a64a7ce26f04853',4,1,NULL,'[\"name\"]',0,'2018-09-19 23:53:39','2018-09-19 23:53:39','2018-10-04 19:53:39'),('b507af23bd64eeec4e9a8c385c492ba1cfc2bf80d4256154984c3cee357e27b89f44cc7d7fd81821',4,1,NULL,'[\"name\"]',0,'2018-09-20 07:05:10','2018-09-20 07:05:10','2018-10-05 03:05:10'),('b8cf580150a42a831250904219c8f23a24fc01163d6c03623474087aafdd3537c558cb6f65cec479',4,2,NULL,'[\"name\"]',0,'2018-09-21 02:48:53','2018-09-21 02:48:53','2018-10-05 22:48:53'),('bc630e3b08bf75b84418abad19fc7677a373db5a6f91057d0d68d2bb606112b8fae14a4d6d02f245',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:32:30','2018-09-20 00:32:30','2018-10-04 20:32:30'),('bcf8fd4c3aef0ba6b4146750ea0a0922142c15e19890760787e43e3ac63fb3b22ba234342c01bd99',4,1,NULL,'[\"name\"]',0,'2018-09-21 12:54:02','2018-09-21 12:54:02','2018-10-06 08:54:02'),('bf0707b23228165284e4c15141c93f46108f61b1524e5d6777f4c24b01ef38cdbf40466e97fb86df',4,1,NULL,'[\"name\"]',0,'2018-09-20 07:08:26','2018-09-20 07:08:26','2018-10-05 03:08:26'),('ccf9a31723b031519efb8ea9cbb1feec92692b5a9a2481c8e1d8166af17339c8ee0e51bfc3e0793a',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:17:42','2018-09-20 00:17:42','2018-10-04 20:17:42'),('d1577df0fdf2526ea7d450888f9d39c6e82e8168d1e8a19d71085d493cf09c09e473b944ae1baca4',4,1,NULL,'[\"name\"]',0,'2018-09-20 00:34:27','2018-09-20 00:34:27','2018-10-04 20:34:27'),('daba7c74326a4e7fd323825c97d4763b74f1bf23f241e90a6cf33c272da1297a4c4b68cea7502676',4,1,NULL,'[\"name\"]',0,'2018-09-20 01:16:03','2018-09-20 01:16:03','2018-10-04 21:16:03'),('e77695c9922487257cee5d1a7296ecb05d43563fc5a115735f1f73b947e66e67fcef272dd5394f88',4,1,NULL,'[\"name\"]',0,'2018-09-20 01:37:29','2018-09-20 01:37:29','2018-10-04 21:37:29'),('ef08884bd3e478417199f962dc53fce012670d5f06b911783430ffc38f40b1050c66d26c3a4d42f0',4,1,NULL,'[\"name\"]',0,'2018-09-19 23:58:20','2018-09-19 23:58:20','2018-10-04 19:58:20'),('f33a3cc304d6f4e1ec24e5efc31c80349bf7cb34af651fafbe121764e20ca1643f15a56f3e1a8bb7',4,1,NULL,'[\"name\"]',0,'2018-09-20 01:05:28','2018-09-20 01:05:28','2018-10-04 21:05:28'),('f419997432fba4e345ef83a7c27959a2adae1578c891cb1c257651ad076ab152938363ca6125be51',4,1,NULL,'[\"name\"]',0,'2018-09-20 01:54:00','2018-09-20 01:54:00','2018-10-04 21:54:00'),('f839c02bf3c8bca80081f262e276a397ad5a6659e14324b9a851736c3ce641a64df60f77764f471d',4,1,NULL,'[\"name\"]',0,'2018-09-20 01:08:19','2018-09-20 01:08:19','2018-10-04 21:08:19'),('ff47b5f24649e10e1d9b84b9549449bbe2893467172d6af905922d6e5a3a1b7efd39729f788375e3',4,1,NULL,'[\"name\"]',0,'2018-09-20 01:01:10','2018-09-20 01:01:10','2018-10-04 21:01:10');
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
INSERT INTO `demo48_oauth_auth_codes` VALUES ('0051b2681013077c76247890fbcba243e12ab2f6fd418e802a6aaef68f1c61fdd6d1e50293bd086d',4,1,'[\"name\"]',1,'2018-09-19 19:51:20'),('0730e657d893fcd132d94b1f6550ec6d8e6aacb560c8b8333f40129e78951b6ee370fba57e7d313c',4,2,'[\"name\"]',1,'2018-09-20 22:36:53'),('0a0aab1df609c931a3de9a5135e57e9cfec0ffc6b73af46a35ebbb4860368019d800e45c7093b44f',4,1,'[\"name\"]',1,'2018-09-19 20:47:20'),('10f635739b8262d4a3d70cdf80c7ccaaf81367c48fcd388ab72bbac67e62197e742453d36a2f2ffc',4,1,'[\"name\"]',1,'2018-09-21 08:17:15'),('14159780d7b87d480607b8964f0691a023f3d72d896dd55a056baf93201af087f0be771fa37383be',4,2,'[\"name\"]',1,'2018-09-20 23:17:22'),('1690e5e31e19478c4016e7d78e3fd4a9e2bdd69e822eaa8281b0176ee718bde0ed4efa6f04d2cba6',4,2,'[\"name\"]',1,'2018-09-18 13:22:12'),('1ad1f079fd73639bc2691f7d971c1f7e2c07961d9099a5ace344d287352ff90d16c0dd3fa66ad123',4,1,'[\"name\"]',1,'2018-09-19 20:50:39'),('26bfb190a1a1320bb0cdd36d4049cfae327968e05945f6b91dd7168d1e27cb79c87c5c6fb810128b',4,1,'[\"name\"]',0,'2018-09-20 03:14:22'),('2d61a70040bad7b0d96845c4b4616f4c3a1e77e7466d7dc36b6170aa33fbde1c1d5298938e22e20c',4,1,'[\"name\"]',1,'2018-09-21 10:43:03'),('387c00d96d8479d647e4c4ebc8863a7f11dbf8471724e0089cfe54a63e4c032dda429c23daf46237',4,1,'[\"name\"]',0,'2018-09-19 19:37:38'),('3a3a82d548bc85b380408c2ccea4f0c99871c918385438cd26050b45aa7a9f7ab4423e6704c901db',4,1,'[\"name\"]',1,'2018-09-19 21:47:28'),('3c1c05c961102750916a5b02f6d3dc1e86a5e2e11002a785dd51fe84a1fb41c0e50b4de6652c1b7c',4,2,'[\"name\"]',1,'2018-09-20 23:04:42'),('430b91f7570fb31c7ed819af850e4d412c622ddef6664ac72a25a99d7e0ba4aa26273db792adf255',4,1,'[\"name\"]',1,'2018-09-21 09:59:58'),('48281442ac71e413deade0bac9491b1ecd7991561fc504479cfa59c526129adff8e575b6333658b4',4,1,'[\"name\"]',1,'2018-09-20 03:18:26'),('4da24de985e08281d445b47405b62c63b67261cf90340c86e835930cc45802fb5e7c90f59001b128',4,1,'[\"name\"]',1,'2018-09-19 20:34:41'),('4da59126ba3ca1d23696124d3115bfc7aae512d704166e08a01f48a10ea09ac4d598ce69d22cfe39',4,1,'[\"name\"]',1,'2018-09-19 21:15:27'),('54e30940a2fc42595652827ca2874589d4b1aa9a00adb475b13162bd53c465fb610d2821b0755d16',4,1,'[\"name\"]',0,'2018-09-19 19:18:09'),('56c5393aafcf361c149640fb575bc833d2fb62c7a9492052750cfd28d1ae3b8003ac2f2cc694779b',4,1,'[\"name\"]',1,'2018-09-19 21:26:02'),('58311965ce67752c09bb64a7c5fb00a7cc2e8bbbad9616bfe08d294712bab2df35f45a7de2ec9868',4,1,'[\"name\"]',1,'2018-09-19 20:08:19'),('5c445cf47384f00b329ce2a17dbe5ecdb14f9e91060d138dcc363c175ca9eddf9b57c365aebb5c9f',4,1,'[\"name\"]',1,'2018-09-19 20:48:54'),('5d0d762fdfed3134913d12ac120ac5f7d3649d1d16bf8dba3317ffde867904a4c97273897a865964',4,2,'[\"name\",\"last_dub_time\"]',1,'2018-09-18 13:01:40'),('61dc2db246de989c8bbf092a0595a67a0b2eaa6ef3408f5eb27c8523b185e88fe378839960f2be93',4,2,'[\"name\"]',1,'2018-09-20 22:58:53'),('656c0d1faa3880d9973d548b4910e396b6da8bb6e2addc1a97c0a2106fe2c409b1953e9c3009e157',4,2,'[\"name\",\"last_dub_time\"]',1,'2018-09-18 12:56:27'),('6e49fca568506e8fcf1b71b245f0674b3fd4a66bfbe3e6603cf3852485ebc19945e0dde9e75c3d74',4,1,'[\"name\"]',1,'2018-09-19 22:04:00'),('7310a7784860f5396a7656dae8e2c6ed60f931b47d409455f7f22750a7bbe7c5e2729f84876ada0d',4,1,'[\"name\"]',1,'2018-09-19 20:42:30'),('7bacd896f68addf9b6523ad3c9c42aa3f5d06d8fdfd12a916960fb87d66c71c4cd5a7087221f39ce',4,1,'[\"name\"]',1,'2018-09-19 20:27:41'),('815544b4b60dae614bbe700f3a58273ad103d96cb83ee4a4bc219fec615304231d4aa70accb1c974',4,1,'[\"name\"]',1,'2018-09-19 21:23:16'),('82b2e9dc96aeecb6e258f98cae5a8026a4b064e55cfe20d45531bc866a7161e72b35c7c914b06600',4,1,'[\"name\"]',1,'2018-09-20 03:15:09'),('84e255eca80021b7ec51239887aebdec4143c6be165469b724263fa50ddbffcbf9f617d3bbcd9cd6',4,1,'[\"name\"]',1,'2018-09-19 20:16:59'),('881e6d983990e4d114e24b9867de6539fe725c10c91e10f66edba0c71ee118f391d11f9abb000b74',4,1,'[\"name\"]',1,'2018-09-19 21:11:09'),('89e00e7c4adaf2a30fd29cdc12d6cb9c7ee69b0e0c74515303da8fa435342ba26557f90aab223c18',4,2,'[\"name\"]',1,'2018-09-18 13:28:03'),('8d0d42c40e00918a68f2cb498f98b168fbe97b38f476ff6874ad4b8819f598f15fe7ad2579a84191',4,1,'[\"name\"]',1,'2018-09-20 03:18:19'),('8f997df624393f5c7b61252bb2ce581e0f36b66f20965e0bbb9be2d7933e875c42e09b747469d16a',4,2,'[\"name\"]',1,'2018-09-18 13:14:52'),('99e74d75187e9ed2a89d2d6b6dc2db351c0cd805d963305cbac4c5be038879b66e5ca4d8ac2ba35f',4,1,'[\"name\"]',0,'2018-09-19 19:30:48'),('aaef91d904cce308038f57be7d276d92f8cc9a2e9515966bf2ac0de995b6743db3c49ef6cf6a964d',4,2,'[\"name\"]',1,'2018-09-19 15:05:25'),('ab99ce4b0bf9a1cadbbf4a5db7f3d40546e74d8680b1d8c8ea0ad7443c9db3b133556b06f36850ae',4,1,'[\"name\"]',0,'2018-09-19 19:47:35'),('b17e0a12af7a661df56b64a17c0ac643c65503381544544a6b3974a3395a2c344777e3a8bd955268',4,1,'[\"name\"]',1,'2018-09-21 09:06:57'),('b2b711fbdf23b64817fadf8e419be346cde905db32d41bce7102be9d71eac5d7f53111d2ae2124e5',4,1,'[\"name\"]',1,'2018-09-19 21:18:17'),('b2e89a139f66097e878197c82703a85ae6d65d686ed6084125581aa54adbacc0bb763c2edfd46dda',4,1,'[\"name\"]',1,'2018-09-19 20:03:38'),('b610fcf9e4c244019f1c6e5b50567f6dbbb61a2681a44e852320b1b64e1932f80b8ea7be8cf5618b',4,1,'[\"name\"]',1,'2018-09-19 20:44:33'),('bebba14d4432e8613a66e1f921a89090be2e5e8cce186f7a29c92e3d1503fbf68a13becd49bc603a',4,1,'[\"name\"]',0,'2018-09-19 21:08:24'),('bee678c6317a3411ba0dca464ec2006994efda8bd4b066b279d3bd8b8b18c06b4f9bbc4675ed346f',4,1,'[\"name\"]',1,'2018-09-19 21:32:51'),('c5ea4080fdfbed665d32621d41b98a9577e53c9f08906cf996894a23cdc7b4902803d1026924cecc',4,1,'[\"name\"]',1,'2018-09-21 08:19:57'),('cddeabb7158a3a77fe986d28a4eaf5b5f1349c4d2791b5bc14a8bc4f8a1f705d77f6a6b78a64bf3f',4,1,'[\"name\"]',1,'2018-09-19 20:48:07'),('d07ee47e4e210516c7b45bf130339369b34b00e47424896e88c9b4e9a261f627024d6a242867b0d6',4,2,'[\"name\",\"last_dub_time\"]',1,'2018-09-18 12:59:25'),('d0ebb9a6ca405483f52636ac8d4446c73daaa2446bb6793b5f9b5057f7b9c31c9480d5f95c2c708c',4,1,'[\"name\"]',1,'2018-09-21 09:07:31'),('d0f7f8aaf1c9b2ac7f5f445faefb0ae1b7bfe53c27b9f8c177c3fa99014bc2c9ae2d2926c939b716',4,1,'[\"name\"]',1,'2018-09-20 03:19:42'),('d4495391cf773de1a1cb00d17cd644327e3b5980c8ea8b68ec77dfc67c12177e59bf65c94dbba4b3',4,1,'[\"name\"]',1,'2018-09-19 20:39:50'),('e1e48d91d82cc1e1f13cb1aedb3df6f02cbe85f8b8595c87ad82dd0a8b6cf50f02aee628e5a78163',4,2,'[\"name\"]',1,'2018-09-19 15:29:37'),('e49f546e8a63b26eb648e00acc19b701171d08a4b451511811b06959bdd41e2326e9eb716ca675e0',4,1,'[\"name\"]',1,'2018-09-19 20:44:27'),('ee1487454fac27adecab5caba543ed9eeaea2f0a270945829c3f436360835eef8b4c0afe37832584',4,2,'[\"name\"]',1,'2018-09-18 18:24:02'),('f277d2157477267d06935abb77d14012bee55fa60acd4f690c4bccd63a0f64279ce26163b880d971',4,1,'[\"name\"]',0,'2018-09-19 16:28:06'),('fceab60609ea459e99ced781d69730a3cd4e47a7e6c33b16536329bda16314c1ab5e65f412bfbe61',4,1,'[\"name\"]',1,'2018-09-21 09:04:00'),('ff1ab1498ece4feac79da902781673c08e2dc58058b5dc344c3afa5cac46c4a04fe51738a2157117',4,1,'[\"name\"]',0,'2018-09-19 19:31:40');
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
INSERT INTO `demo48_oauth_clients` VALUES (1,4,'laravel-irt','WMvGWr4iy6sCFLFZ0ZeqSCyHnZnUKQYOxK8wxoME','http://poster.projectoblio.com:8000/login/irt/callback',0,0,0,'2018-09-16 18:26:34','2018-09-19 23:16:05'),(2,4,'dubs','Bg6hks53kwQgIQIqm023xGLc1Ng0xhc5qUKb1XKS','https://testdubs.projectoblio.com/dubRedirect',0,0,0,'2018-09-18 16:19:18','2018-09-18 16:19:18');
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
INSERT INTO `demo48_oauth_refresh_tokens` VALUES ('00ff683af59252bd00c971c7864b8153b86cc45098f2b8f4eba34ab28a94367895434b524b59b66f','4821742370821c9d9459c8cd5440800413d4beab6719295de5f188bc0dd2f0a9798045b02050c236',0,'2018-10-19 20:06:59'),('0afc7fcf0642a48ac93803252394055580691d6843b7472f634bc23be050ab30a0b0a0d77407df2f','17c8f2e67bed086819c47970b14795ea68fcaa649771e74a8723701bca84629547648898dda0dc93',0,'2018-10-20 23:07:22'),('1275d7c699640c86082e3fb934146fc837b5cec21269562724a073575cc444838fda84691c55ea9d','d1577df0fdf2526ea7d450888f9d39c6e82e8168d1e8a19d71085d493cf09c09e473b944ae1baca4',0,'2018-10-19 20:34:27'),('1638a24713545c1efdccaef38791e0ee35d14d5922b1ef864da86b77ac6cb22767e131d10ca7ef1f','943d307eb2000b6f4e775ce4ce13dc64e7520c3c7900b0a628549a9cc73f0e7b80eb5feb69e6fc33',0,'2018-10-19 21:13:16'),('21b7d6b5c1a3fcdfedffeb523c7439fcabe37e931f483592ddc5870549a9df1b82868cfb29f33ca1','bc630e3b08bf75b84418abad19fc7677a373db5a6f91057d0d68d2bb606112b8fae14a4d6d02f245',0,'2018-10-19 20:32:30'),('339f2c432b4d3d0aead1dd446858121fc4122bde76efb946b081dc841a7543093cd5d5bde7534973','bf0707b23228165284e4c15141c93f46108f61b1524e5d6777f4c24b01ef38cdbf40466e97fb86df',0,'2018-10-20 03:08:26'),('34f9079bc09b497c0249346e7abc7cff1c1d648ff5d36538a6a386f50e17f6826b9527edc547678b','8ff3b5b4fd0f8aa64bb07e05786f068d51014310b863f30c38ee189d7e4501681484e47ea67b0a7f',0,'2018-10-21 08:09:58'),('36a17c56e289956485d1ecd1ef09558b3f3080661a4cf1ce34303989e36e2336b82b2e3dea1815dd','4da1d28c4ca2294fb59dd47727a12d4d2e8329278fb19d5c64e4d4af60936afce6f2a90fc48d2c90',0,'2018-10-18 12:51:42'),('4b2af78cf55c4cc3026c60cc9085f596f67ca9b0b31f12287c575652b9b1e60c23e9a0f59ca6fa0d','978fbb2d4cfdb2dcd05ee34c6a402492317d2cdcb4ef9e313c53a55e901fff72307dabe018d19832',0,'2018-10-19 14:55:26'),('53ef90eb7d52ae54ec75306bc293abf4e0e6be75f91b5103f117da459b1f5f2a8cb29cece83d16f9','197df936bceaeb061d0a722c7baa4ee72e36890f6c266f3b6729ab39115796105418cdffbe2a2301',0,'2018-10-19 20:34:34'),('5ea87e78d9a606c99efe7a3d0ecd4edb49f020b76d812f63c84ef7e7d0cc60afc5df5e4860e7f9ab','4867990212119f2fcf60cd471900dd02288c4596d520f748365684f797e3a1846477555442d44e01',0,'2018-10-18 18:14:02'),('60ca412b3a1d9a962756f3d67b448994d0d2b30b072a57f7157bc5ccaba9514489cea67cf50a1c83','04b5a18fa650b5f0cab41fde2cf02cd8bfeae5976dff56bf75136e0d21225390c336c33a291625e8',0,'2018-10-19 19:41:21'),('66c55e381f20a21f46b69b9167a360325542f688067756f6414cbfbf1be168aa5630dcb609eb946c','67b08936c4025383ae83b7fdd50b37e2398f7f1dd7d54994b4c6d2b00a444dfb1164cfc6acab4522',0,'2018-10-21 09:49:59'),('6c0452ee536e9466806d92345b483a04bb8c78d2023e1b95792250c59d2023c04f8da4e67dc6c82f','20d501af1128021afc2a9911172b6d71946f12e12d9c0cbef839b646d4c63a43ae318cd6b35c8e9c',0,'2018-10-19 20:38:08'),('7acd98451ca055f57ef344ac152ecd40f7ab0ae129a8f0e576b8e1debdc4bdf8d6ea9b87ab86495f','16339910a222af79754d971d8e9d4786a392b29450e8c2304a06bdc2f4e1e8966808260fb10067dc',0,'2018-10-20 22:26:53'),('8655a00eb718296c068d4adb95397dcbf4b0e7ed9736442df0daf14e9065ec24a5917bf45c0c3ac3','10fcf0b8dd6f9d3155a80f63999db7888f7f156a98f0ec9868299e2ac9599a60a9aae700a640aefd',0,'2018-10-18 13:12:13'),('8efd0807e71593d31d01db29bd5dbbf8257c22dfce64cfef321ee63f32c7b1df7092d3a6e93c6f2c','a095aacb5c0393fa39fbdcbc65054e3f3e6d4d477479cb9d2d58c2c86a9b0a33184b5bae68eb94e1',0,'2018-10-21 08:07:17'),('90bfdb8a8f296bc5f78a863f207810ef0c3ca413bbe9d3f4d051927ba4140e115578691f0d45ec6a','daba7c74326a4e7fd323825c97d4763b74f1bf23f241e90a6cf33c272da1297a4c4b68cea7502676',0,'2018-10-19 21:16:03'),('9ce039bd40fffa3bf29cdc7ee56557b12f1ed209c455650b03e52fd5e99d081afdac3291aeac1558','173c2f7235ab1445590fa82b736739bf43c6df7a3da2502c31988c51df38f18549fbb2e33649908d',0,'2018-10-21 08:57:32'),('9ff5633c26ebf2cf8fa0675ca3ecbb4594285f36fccb3ab07a442ee0393a624a45fcda6ebe9d2738','0eee1608942b8d44a8677dde39048af8e65c361856b2def9e684a08f8a959756aee43526a5ddd222',0,'2018-10-18 13:18:05'),('a439d6815406c0966ccf121b440e443ef576508387dbd9e3050222031f29fa754975c0ab0366ce50','333d9aae41240a2ac6a9d8af1ab45bc1f48cff950c5c462dbae8b39ba7471541abb3e57c51aca40b',0,'2018-10-19 20:24:42'),('a63632ba4783997103db9834d343e16a80fea8a19e2633c2778986d26b829272115ce573c3d22a31','b384c3afdf55002ffc1becd2be55ba8ac141b73099493da04661aee4a061ea813a64a7ce26f04853',0,'2018-10-19 19:53:39'),('a8c19dd274c84ffcb4bcbfffd4aaecbc1ef58bf7bf7c881741bccb4ba850dcc102e3d5ab6cb1b6ef','ac43346d44de1a2d4635ad37251220cb11618e745a41dc64d83257c6f2302dfd0fc1d0f903ae73a8',0,'2018-10-19 20:38:55'),('aab3b5994bba447c0d63e05f028d28a2fbe7a20ca3825404f72d46db87a0b7f08d8b5045471a50f3','b507af23bd64eeec4e9a8c385c492ba1cfc2bf80d4256154984c3cee357e27b89f44cc7d7fd81821',0,'2018-10-20 03:05:10'),('aaf58e158229def9c5722938fca970ff04d23e6f45ab95a67ac824136017dc7ac1f4f37c167492d8','5a59e2a984dff12429ba3e6f3f33dc5130586bc5831edcb17955e7e561ac8d0340139aea9f13e349',0,'2018-10-21 08:56:57'),('ab4baf81deeae9ac0993be0e694de33dc3523c577919a3e8a0768d1ac42963102c9f4caa280617a4','f33a3cc304d6f4e1ec24e5efc31c80349bf7cb34af651fafbe121764e20ca1643f15a56f3e1a8bb7',0,'2018-10-19 21:05:28'),('abafb2add56e61b22075d645fa8f36a45deebf272554c6098827db4b9cb1dd8cf8831ea925e2b258','2eed3ab5f0387c92e952d5b8cfe730d456697ab689c6b686d9447dc8740e5afaa5dfc286fda72868',0,'2018-10-21 10:33:05'),('af40871c04697f7216a0c0ee51b50a33968361c31e98723c5ff7b38603e1e9660f223e9c1463cca9','2d562e592fd88738d8469fe9dee5e3dd3ba265ce542644eef7f6a7433b55444a801c14c7fb7b4625',0,'2018-10-20 22:54:43'),('b0f1524725f778f8f9fb2ee1e62a504f429b22250887d83505cd0bda869aa4a080154adc7927fcb6','18a778fa1541bb647e7bba3b1acab10c8fa5e46cc0c98c2d27c396b31e575ce261b66ea352efd4c5',0,'2018-10-20 03:08:20'),('b0fa501d4e6904b3539e4b82ebaba5eb874838761dceba7761e0e59def8f0094f269bb9b60cdbf35','6cdb2f62fccbe0e2cfc838c11f39b4ed68bc43751dfd02a7af6adbaa9bff2b064862b6712b601ec5',0,'2018-10-20 03:09:42'),('b3d83ade719295d28997bbdc386ec6d336272730440fc66f361f2a655e36d52691022508f2f14b7f','f419997432fba4e345ef83a7c27959a2adae1578c891cb1c257651ad076ab152938363ca6125be51',0,'2018-10-19 21:54:00'),('bba7b61b46355102df36b22e75380bdfe9239eca77d5685b2eadc5c16ecdc47bebfe8e4302079c29','ccf9a31723b031519efb8ea9cbb1feec92692b5a9a2481c8e1d8166af17339c8ee0e51bfc3e0793a',0,'2018-10-19 20:17:42'),('bc61226a5cb51a575205156eabc8975d7ee5061656bb710f9c3eb7a6fe92db5294f3bf1cfbecd025','3487a5a82a859942f39db522273aace80c4cb0af48a3f869a78b14725cbef1fd7c8f726e52f06a67',0,'2018-10-19 20:29:50'),('cf8be1ba8ab5f84db40a27b2b9264f6e6cc1db09aa6912143c94fefa3a894778ba270f6250af085e','bcf8fd4c3aef0ba6b4146750ea0a0922142c15e19890760787e43e3ac63fb3b22ba234342c01bd99',0,'2018-10-21 08:54:02'),('d235db05aec24d1305ca9ed4e4f19bd918c8b3d3bc5995c5b2fbdcf52efcc0b63c1655748b63a87b','ef08884bd3e478417199f962dc53fce012670d5f06b911783430ffc38f40b1050c66d26c3a4d42f0',0,'2018-10-19 19:58:20'),('d73a0f1a984a9821e6c7cb1c1dec85ce114d3301745a158a13d1203de2e62650e6f190b223065bd3','e77695c9922487257cee5d1a7296ecb05d43563fc5a115735f1f73b947e66e67fcef272dd5394f88',0,'2018-10-19 21:37:29'),('d8c01da8fed827a202bd9dc578e9cf7e54b14074fec4bd88ea5cf1be8d9dae0a1fdd264c6255d28e','8d7a655f15fc2a9039acb112484d22c486b00b189a5bd4b4acda8fde894e9628c81b360848b684ac',0,'2018-10-18 13:04:54'),('df962ae1c464efea0d6e801642d6b1ef2097f6ca5e0799cbd1ad795f7a0e312cd46776b6c1bad52b','b8cf580150a42a831250904219c8f23a24fc01163d6c03623474087aafdd3537c558cb6f65cec479',0,'2018-10-20 22:48:53'),('e171180638d211aee98fef86d703e144ace60c5edde9498dfe8a6dcd3547bf8a87425001aba29918','036d8e538b568bd752fb24b5dee382422ac86acb2970fc1e3e12c33a3a5e3dbbf2fa3689f51fb4fe',0,'2018-10-18 12:49:26'),('e1fcf69bbe143f30a7b5cca18f5ac464c53066020cad7b57d3480a77e13e388d932b67d4e67e7362','9f5a6d027b482143624a87ce84dafe75cb9ced4918d80a3fa781d7f09d4302d0818affba2cfe41a9',0,'2018-10-19 20:37:20'),('e693861e0b55f02d57463a0f24329697f0050f8b79f17481ac2171739b4c20aeb76c38f7f76c4c0b','ff47b5f24649e10e1d9b84b9549449bbe2893467172d6af905922d6e5a3a1b7efd39729f788375e3',0,'2018-10-19 21:01:10'),('f1da70c957bfc1c8770a2906ea31937211e9b8ab2f7821cff98115de601b0a22dfb1ecafd3c0028e','22276e5476f0f1d9989d58a47df68107f17d1223a859bf2623f90d45082f3877c3df4910a1fd2f2b',0,'2018-10-19 21:22:52'),('f2dfba611874010e89cc26f42b6992e8abd992330f3ff43c79f911c4ca83065510b299b662c78bfb','f839c02bf3c8bca80081f262e276a397ad5a6659e14324b9a851736c3ce641a64df60f77764f471d',0,'2018-10-19 21:08:19'),('f9f6d8cc15736c0d1cf3dbd1ed82394760901c16b024c928d5dbe3fc920b267cee6d3492faec5c4b','5e2192b656d7c04e0f1a9afbc794cb6c2fe9ed4f9424af5f1014628c219cfba7e942219a44c5ee40',0,'2018-10-19 15:19:38'),('fc0031eebc375e3060a5cddad7a1fd9bba17f5045c2e25ac4f19cf40e8a562eb477feefe37c977b8','9a72998273bf9771df534fbe6d843534f4666121a230c3c1c70325f5631b17f4c33c051268ce9135',0,'2018-10-19 20:40:40'),('fc77094ef5256b94875545c0c2217c2fc7ed39ce276cffa4092d34b3be9250916201ba9924aa4d54','5591234728a01167d5c70614365bdf9242d5967ffdca0a234a952a205734052f6a68bf8b0dffcb06',0,'2018-10-18 12:46:29');
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
  `point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `arrows` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `karma` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `last_dub_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `form_level` int(11) DEFAULT '0',
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo48_users`
--

LOCK TABLES `demo48_users` WRITE;
/*!40000 ALTER TABLE `demo48_users` DISABLE KEYS */;
INSERT INTO `demo48_users` VALUES (1,'dogboy','dog@dog.com','$2y$10$hH4HpG3nGEhmwdoRAVxPKeTT48KkDrd8UZPr25mfw/ULUbFrUIqDm',NULL,NULL,'0','0','0','0',0,NULL,'CEO7gGwTlEPyZvyj9X1JH0t4Iioqi0lPk3BjMHkINlpB1sSzQn9cYhz1j3Nt','2018-09-16 18:04:43','2018-09-16 18:04:43',0),(2,'dogdog','doood@dog.com','$2y$10$gd6fJCUzs60LUc0ephuLuOQBuitIhtEHC8ddpcSGnAcfGwHRZl362',NULL,NULL,'0','0','0','0',0,NULL,'MsOiKiNOK2BDb3nAOer2yNLG6v2APZorwsyLQg2ETQ59WSWjnULCPU1pssws','2018-09-16 18:05:54','2018-09-16 18:05:54',0),(4,'admin','admin@projectoblio.com','$2y$10$mR4PYZ6aYR.NZqSgmwdQweG1qOJDYI5Tsi/.1w3NuOHuXRgCEzi12','advance',NULL,'0','0','0','0',0,NULL,'6zKZvdo1K6ctLPUhrDXvvYN2EHHvip5ewdt7DoCeMgT0K7spcOWckD79T5JZ','2018-09-16 18:25:48','2018-09-16 18:25:52',0),(5,'dude','dude@dude.com','$2y$10$5hv0nbheMTqix8EssE2aaONpJX8VRx7JoeWj642B8sPz2yPxR0Mq.','anonymous',NULL,'0','0','0','0',0,NULL,NULL,'2018-09-17 22:53:07','2018-09-17 22:53:10',0);
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

-- Dump completed on 2018-09-21 13:33:15
