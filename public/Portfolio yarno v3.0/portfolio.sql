-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `section_1` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `section_2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','2018-04-16 11:30:26','2018-04-16 11:30:26');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `house_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recidence` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `whapp_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'yarnobachmann@gmail.com','+31 6 37241371','Oranjedorpstraat','58','Nieuw-Dordrecht','2018-04-16 12:03:57','2018-04-16 12:10:18','31637241371');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',0,0,0,1,1,0,'',4),(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(34,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(35,5,'id','number','id',1,0,0,0,0,0,'',1),(36,5,'name','text','name',1,1,1,1,1,1,'',2),(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(46,6,'id','number','id',1,0,0,0,0,0,'',1),(47,6,'name','text','Name',1,1,1,1,1,1,'',2),(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(53,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(54,7,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(55,7,'title','text','Title',1,1,1,1,1,1,NULL,2),(56,7,'image','image','Image',1,1,1,1,1,1,'{\"quality\":\"60%\",\"upsize\":true}',3),(57,7,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,4),(58,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(59,8,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(60,8,'name','text','Name',1,1,1,1,1,1,NULL,2),(61,8,'image','image','Image',1,1,1,1,1,1,NULL,3),(62,8,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,4),(63,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(64,9,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(65,9,'section_1','text_area','Section 1',1,1,1,1,1,1,NULL,2),(66,9,'section_2','text_area','Section 2',1,1,1,1,1,1,NULL,3),(67,9,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,4),(68,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(69,10,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(70,10,'section_1','text_area','Section 1',1,1,1,1,1,1,NULL,2),(71,10,'section_2','text_area','Section 2',1,1,1,1,1,1,NULL,3),(72,10,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,4),(73,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(74,11,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(75,11,'email','text','Email',1,1,1,1,1,1,NULL,2),(76,11,'phone_number','text','Phone Number',1,1,1,1,1,1,NULL,3),(77,11,'street_name','text','Street Name',1,1,1,1,1,1,NULL,4),(78,11,'house_number','number','House Number',1,1,1,1,1,1,NULL,5),(79,11,'recidence','text','Recidence',1,1,1,1,1,1,NULL,6),(80,11,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,8),(81,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,9),(82,11,'whapp_number','text','Whapp Number',1,1,1,1,1,1,NULL,7),(83,12,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(84,12,'section_1','text_area','Section 1',1,1,1,1,1,1,NULL,2),(85,12,'section_2','text_area','Section 2',1,1,1,1,1,1,NULL,3),(86,12,'side_image','image','Side Image',1,1,1,1,1,1,NULL,4),(87,12,'right_image','image','Right Image',1,1,1,1,1,1,NULL,5),(88,12,'link_website','text','Link Website',1,1,1,1,1,1,NULL,6),(89,12,'project_id','number','Project Id',1,1,1,1,1,1,NULL,7),(90,12,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,9),(91,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,10),(92,12,'project_view_belongsto_project_relationship','relationship','projects',0,1,1,1,1,1,'{\"model\":\"App\\\\Project\",\"table\":\"projects\",\"type\":\"belongsTo\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\"}',11),(93,8,'project_hasone_project_view_relationship','relationship','project_views',0,1,1,1,1,1,'{\"model\":\"App\\\\ProjectView\",\"table\":\"project_views\",\"type\":\"hasOne\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\"}',6),(94,12,'project_name','text','Project Name',1,1,1,1,1,1,NULL,8);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,'2018-04-10 09:30:19','2018-04-10 09:30:19'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,'2018-04-10 09:30:19','2018-04-10 09:30:19'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,'2018-04-10 09:30:19','2018-04-10 09:30:19'),(7,'images','images','Image','Images','voyager-photos','App\\Image',NULL,NULL,NULL,1,1,'2018-04-16 09:31:11','2018-04-16 09:31:11'),(8,'projects','projects','Project','Projects','voyager-categories','App\\Project',NULL,NULL,NULL,1,1,'2018-04-16 11:16:16','2018-04-16 11:16:16'),(9,'about','about','Over','Over','voyager-news','App\\About',NULL,NULL,NULL,1,1,'2018-04-16 11:25:58','2018-04-16 11:28:14'),(10,'abouts','abouts','Over','Over','voyager-news','App\\About',NULL,NULL,NULL,1,1,'2018-04-16 11:29:09','2018-04-16 11:29:09'),(11,'contacts','contacts','Contact','Contact','voyager-logbook','App\\Contact',NULL,NULL,NULL,1,1,'2018-04-16 11:59:56','2018-04-16 11:59:56'),(12,'project_views','project-views','Project View','Project Views','voyager-documentation','App\\ProjectView',NULL,NULL,NULL,1,1,'2018-04-16 16:34:31','2018-04-16 16:34:31');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (5,'Sofie portret foto','images/April2018/TscaPcgJ7wsvJX7Gf5rR.jpeg','2018-04-16 10:27:06','2018-04-16 10:27:06'),(6,'Muurbegroeiing boven oud houten bankje','images/April2018/aHxtiT1MT4X7UCtPu9xe.jpg','2018-04-16 11:01:11','2018-04-16 11:04:29'),(7,'Sofie met zonnebril effect','images/April2018/d9kGvn8wnGPa4ayzMdRX.jpg','2018-04-16 11:09:44','2018-04-16 11:09:44');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-04-10 09:30:19','2018-04-10 09:30:19','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,9,'2018-04-10 09:30:19','2018-04-16 16:36:37','voyager.media.index',NULL),(4,1,'Users','','_self','voyager-person',NULL,NULL,8,'2018-04-10 09:30:19','2018-04-16 16:36:37','voyager.users.index',NULL),(7,1,'Roles','','_self','voyager-lock',NULL,NULL,7,'2018-04-10 09:30:19','2018-04-16 16:36:37','voyager.roles.index',NULL),(8,1,'Tools','','_self','voyager-tools',NULL,NULL,10,'2018-04-10 09:30:19','2018-04-16 12:01:15',NULL,NULL),(9,1,'Menu Builder','','_self','voyager-list',NULL,8,1,'2018-04-10 09:30:19','2018-04-16 09:31:29','voyager.menus.index',NULL),(10,1,'Database','','_self','voyager-data',NULL,8,2,'2018-04-10 09:30:19','2018-04-16 09:31:29','voyager.database.index',NULL),(11,1,'Compass','','_self','voyager-compass',NULL,8,3,'2018-04-10 09:30:19','2018-04-16 09:31:29','voyager.compass.index',NULL),(12,1,'Settings','','_self','voyager-settings',NULL,NULL,11,'2018-04-10 09:30:19','2018-04-16 12:01:15','voyager.settings.index',NULL),(13,1,'Hooks','','_self','voyager-hook',NULL,8,4,'2018-04-10 09:30:19','2018-04-16 09:31:29','voyager.hooks',NULL),(14,1,'Images','/admin/images','_self','voyager-photos',NULL,NULL,2,'2018-04-16 09:31:11','2018-04-16 09:31:29',NULL,NULL),(15,1,'Projects','/admin/projects','_self','voyager-categories',NULL,NULL,3,'2018-04-16 11:16:16','2018-04-16 11:16:56',NULL,NULL),(16,1,'Over','/admin/abouts','_self','voyager-news','#000000',NULL,5,'2018-04-16 11:25:58','2018-04-16 16:36:37',NULL,''),(17,1,'Contact','/admin/contacts','_self','voyager-logbook',NULL,NULL,6,'2018-04-16 11:59:56','2018-04-16 16:36:37',NULL,NULL),(18,1,'Project Views','/admin/project-views','_self','voyager-documentation',NULL,NULL,4,'2018-04-16 16:34:31','2018-04-16 16:36:37',NULL,NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2018-04-10 09:30:19','2018-04-10 09:30:19');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),(17,'2017_01_15_000000_create_permission_groups_table',1),(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(19,'2017_03_06_000000_add_controller_to_data_types_table',1),(20,'2017_04_11_000000_alter_post_nullable_fields_table',1),(21,'2017_04_21_000000_add_order_to_data_rows_table',1),(22,'2017_07_05_210000_add_policyname_to_data_types_table',1),(23,'2017_08_05_000000_add_group_to_settings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(2,'browse_database',NULL,'2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(3,'browse_media',NULL,'2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(4,'browse_compass',NULL,'2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(5,'browse_menus','menus','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(6,'read_menus','menus','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(7,'edit_menus','menus','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(8,'add_menus','menus','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(9,'delete_menus','menus','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(15,'browse_roles','roles','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(16,'read_roles','roles','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(17,'edit_roles','roles','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(18,'add_roles','roles','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(19,'delete_roles','roles','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(20,'browse_users','users','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(21,'read_users','users','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(22,'edit_users','users','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(23,'add_users','users','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(24,'delete_users','users','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(35,'browse_settings','settings','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(36,'read_settings','settings','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(37,'edit_settings','settings','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(38,'add_settings','settings','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(39,'delete_settings','settings','2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(40,'browse_hooks',NULL,'2018-04-10 09:30:19','2018-04-10 09:30:19',NULL),(41,'browse_images','images','2018-04-16 09:31:11','2018-04-16 09:31:11',NULL),(42,'read_images','images','2018-04-16 09:31:11','2018-04-16 09:31:11',NULL),(43,'edit_images','images','2018-04-16 09:31:11','2018-04-16 09:31:11',NULL),(44,'add_images','images','2018-04-16 09:31:11','2018-04-16 09:31:11',NULL),(45,'delete_images','images','2018-04-16 09:31:11','2018-04-16 09:31:11',NULL),(46,'browse_projects','projects','2018-04-16 11:16:16','2018-04-16 11:16:16',NULL),(47,'read_projects','projects','2018-04-16 11:16:16','2018-04-16 11:16:16',NULL),(48,'edit_projects','projects','2018-04-16 11:16:16','2018-04-16 11:16:16',NULL),(49,'add_projects','projects','2018-04-16 11:16:16','2018-04-16 11:16:16',NULL),(50,'delete_projects','projects','2018-04-16 11:16:16','2018-04-16 11:16:16',NULL),(51,'browse_about','about','2018-04-16 11:25:58','2018-04-16 11:25:58',NULL),(52,'read_about','about','2018-04-16 11:25:58','2018-04-16 11:25:58',NULL),(53,'edit_about','about','2018-04-16 11:25:58','2018-04-16 11:25:58',NULL),(54,'add_about','about','2018-04-16 11:25:58','2018-04-16 11:25:58',NULL),(55,'delete_about','about','2018-04-16 11:25:58','2018-04-16 11:25:58',NULL),(56,'browse_abouts','abouts','2018-04-16 11:29:09','2018-04-16 11:29:09',NULL),(57,'read_abouts','abouts','2018-04-16 11:29:09','2018-04-16 11:29:09',NULL),(58,'edit_abouts','abouts','2018-04-16 11:29:09','2018-04-16 11:29:09',NULL),(59,'add_abouts','abouts','2018-04-16 11:29:09','2018-04-16 11:29:09',NULL),(60,'delete_abouts','abouts','2018-04-16 11:29:09','2018-04-16 11:29:09',NULL),(61,'browse_contacts','contacts','2018-04-16 11:59:56','2018-04-16 11:59:56',NULL),(62,'read_contacts','contacts','2018-04-16 11:59:56','2018-04-16 11:59:56',NULL),(63,'edit_contacts','contacts','2018-04-16 11:59:56','2018-04-16 11:59:56',NULL),(64,'add_contacts','contacts','2018-04-16 11:59:56','2018-04-16 11:59:56',NULL),(65,'delete_contacts','contacts','2018-04-16 11:59:56','2018-04-16 11:59:56',NULL),(66,'browse_project_views','project_views','2018-04-16 16:34:31','2018-04-16 16:34:31',NULL),(67,'read_project_views','project_views','2018-04-16 16:34:31','2018-04-16 16:34:31',NULL),(68,'edit_project_views','project_views','2018-04-16 16:34:31','2018-04-16 16:34:31',NULL),(69,'add_project_views','project_views','2018-04-16 16:34:31','2018-04-16 16:34:31',NULL),(70,'delete_project_views','project_views','2018-04-16 16:34:31','2018-04-16 16:34:31',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_views`
--

DROP TABLE IF EXISTS `project_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `section_1` text COLLATE utf8_unicode_ci NOT NULL,
  `section_2` text COLLATE utf8_unicode_ci NOT NULL,
  `side_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `right_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_views`
--

LOCK TABLES `project_views` WRITE;
/*!40000 ALTER TABLE `project_views` DISABLE KEYS */;
INSERT INTO `project_views` VALUES (1,'lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','project-views/April2018/a53zcLY0cRv7N8tgeKsw.jpg','project-views/April2018/BSIs1I6OeTUjd0dPauDH.jpg','http://www.kingscode.ga/',2,'2018-04-16 16:38:59','2018-04-16 17:17:26','Kingscode');
/*!40000 ALTER TABLE `project_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (2,'Kingscode','projects/April2018/sMDmvClgehAajycjrF7M.png','2018-04-16 11:21:13','2018-04-16 11:21:13');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-04-10 09:30:19','2018-04-10 09:30:19'),(2,'user','Normal User','2018-04-10 09:30:19','2018-04-10 09:30:19');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings/April2018/XuQYE8IC2tLC7LQWnxEm.jpg','','image',5,'Admin'),(6,'admin.title','Admin Title','Yarno','','text',1,'Admin'),(7,'admin.description','Admin Description','Dit is de admin page van Yarno','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings/April2018/Cvs8A5O897IttKDMJYgD.png','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'yarno','minejarno@gmail.com','users/April2018/ldNJx7QJhk8IxmsrWkh6.jpg','$2y$10$.YajTXsFmTTBcC/HMO1.9.rIcRNJUvVre58jFXaAl5rnknQ6Vx4Yy','E3ELHLMD4NhDJmCPl6F3a7YmrTezPUq4GRzDQqFFBWNonPM2Tjto6ms6HQJ7','2018-04-10 09:30:59','2018-04-16 19:24:52');
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

-- Dump completed on 2018-04-16 23:30:51
