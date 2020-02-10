-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816438002.hosting-data.io    Database: db816438002
-- ------------------------------------------------------
-- Server version	5.5.60-0+deb7u1-log

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
-- Dumping data for table `kokn_albums`
--

LOCK TABLES `kokn_albums` WRITE;
/*!40000 ALTER TABLE `kokn_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_applications`
--

LOCK TABLES `kokn_applications` WRITE;
/*!40000 ALTER TABLE `kokn_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_categories`
--

LOCK TABLES `kokn_categories` WRITE;
/*!40000 ALTER TABLE `kokn_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_content`
--

LOCK TABLES `kokn_content` WRITE;
/*!40000 ALTER TABLE `kokn_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_drafts`
--

LOCK TABLES `kokn_drafts` WRITE;
/*!40000 ALTER TABLE `kokn_drafts` DISABLE KEYS */;
INSERT INTO `kokn_drafts` VALUES (1,'elementary','{\"navigation\":{\"items\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\"},{\"auto\":\"timeline\"},{\"auto\":\"albums\"},{\"auto\":\"contents\"},{\"auto\":\"essays\"}],\"groups\":[{\"key\":\"footer\",\"label\":\"Footer\",\"items\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\"},{\"auto\":\"albums\"},{\"auto\":\"contents\"},{\"auto\":\"essays\"}]},{\"key\":\"aside_links\",\"label\":\"Aside links\",\"items\":[]}]}}','{\"navigation\":{\"items\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\"},{\"auto\":\"timeline\"},{\"auto\":\"albums\"},{\"auto\":\"contents\"},{\"auto\":\"essays\"}],\"groups\":[{\"key\":\"footer\",\"label\":\"Footer\",\"items\":[{\"auto\":\"home\",\"front\":true,\"path\":\"\\/home\\/\"},{\"auto\":\"albums\"},{\"auto\":\"contents\"},{\"auto\":\"essays\"}]},{\"key\":\"aside_links\",\"label\":\"Aside links\",\"items\":[]}]}}',1,1,1581271089,1581271089);
/*!40000 ALTER TABLE `kokn_drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_history`
--

LOCK TABLES `kokn_history` WRITE;
/*!40000 ALTER TABLE `kokn_history` DISABLE KEYS */;
INSERT INTO `kokn_history` VALUES (1,1,'s:14:\"system:install\";',1581271089);
/*!40000 ALTER TABLE `kokn_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_join_albums_categories`
--

LOCK TABLES `kokn_join_albums_categories` WRITE;
/*!40000 ALTER TABLE `kokn_join_albums_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_join_albums_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_join_albums_content`
--

LOCK TABLES `kokn_join_albums_content` WRITE;
/*!40000 ALTER TABLE `kokn_join_albums_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_join_albums_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_join_albums_covers`
--

LOCK TABLES `kokn_join_albums_covers` WRITE;
/*!40000 ALTER TABLE `kokn_join_albums_covers` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_join_albums_covers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_join_albums_tags`
--

LOCK TABLES `kokn_join_albums_tags` WRITE;
/*!40000 ALTER TABLE `kokn_join_albums_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_join_albums_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_join_albums_text`
--

LOCK TABLES `kokn_join_albums_text` WRITE;
/*!40000 ALTER TABLE `kokn_join_albums_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_join_albums_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_join_categories_content`
--

LOCK TABLES `kokn_join_categories_content` WRITE;
/*!40000 ALTER TABLE `kokn_join_categories_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_join_categories_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_join_categories_text`
--

LOCK TABLES `kokn_join_categories_text` WRITE;
/*!40000 ALTER TABLE `kokn_join_categories_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_join_categories_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_join_content_tags`
--

LOCK TABLES `kokn_join_content_tags` WRITE;
/*!40000 ALTER TABLE `kokn_join_content_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_join_content_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_join_tags_text`
--

LOCK TABLES `kokn_join_tags_text` WRITE;
/*!40000 ALTER TABLE `kokn_join_tags_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_join_tags_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_plugins`
--

LOCK TABLES `kokn_plugins` WRITE;
/*!40000 ALTER TABLE `kokn_plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_settings`
--

LOCK TABLES `kokn_settings` WRITE;
/*!40000 ALTER TABLE `kokn_settings` DISABLE KEYS */;
INSERT INTO `kokn_settings` VALUES (1,'site_timezone','America/Los_Angeles'),(2,'console_show_notifications','yes'),(3,'console_enable_keyboard_shortcuts','yes'),(4,'uploading_default_license','all'),(5,'uploading_default_visibility','public'),(6,'uploading_default_album_visibility','public'),(7,'uploading_default_max_download_size','none'),(8,'uploading_publish_on_captured_date','false'),(9,'site_title','Koken'),(10,'site_page_title','Site Owner'),(11,'site_tagline','Your site tagline'),(12,'site_copyright','© Site Owner'),(13,'site_description',''),(14,'site_keywords','photography, Site Owner'),(15,'site_date_format','F j, Y'),(16,'site_time_format','g:i a'),(17,'site_privacy','public'),(18,'site_hidpi','true'),(19,'site_url','default'),(20,'use_default_labels_links','true'),(21,'uuid','da5dee087266419023071e664009d61f'),(22,'retain_image_metadata','false'),(23,'image_use_defaults','true'),(24,'image_tiny_quality','80'),(25,'image_small_quality','80'),(26,'image_medium_quality','85'),(27,'image_medium_large_quality','85'),(28,'image_large_quality','85'),(29,'image_xlarge_quality','90'),(30,'image_huge_quality','90'),(31,'image_tiny_sharpening','0.7'),(32,'image_small_sharpening','0.6'),(33,'image_medium_sharpening','0.6'),(34,'image_medium_large_sharpening','0.6'),(35,'image_large_sharpening','0.6'),(36,'image_xlarge_sharpening','0.3'),(37,'image_huge_sharpening','0'),(38,'last_upload','false'),(39,'last_migration','42'),(40,'has_toured','0'),(41,'email_handler','DDI_Email'),(42,'email_delivery_address','piotrowski+ionos.de@gmail.com'),(43,'image_processing_library','gd');
/*!40000 ALTER TABLE `kokn_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_slugs`
--

LOCK TABLES `kokn_slugs` WRITE;
/*!40000 ALTER TABLE `kokn_slugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_tags`
--

LOCK TABLES `kokn_tags` WRITE;
/*!40000 ALTER TABLE `kokn_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_text`
--

LOCK TABLES `kokn_text` WRITE;
/*!40000 ALTER TABLE `kokn_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_trash`
--

LOCK TABLES `kokn_trash` WRITE;
/*!40000 ALTER TABLE `kokn_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `kokn_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_urls`
--

LOCK TABLES `kokn_urls` WRITE;
/*!40000 ALTER TABLE `kokn_urls` DISABLE KEYS */;
INSERT INTO `kokn_urls` VALUES (1,'a:10:{i:0;a:2:{s:4:\"type\";s:7:\"content\";s:4:\"data\";a:4:{s:8:\"singular\";s:7:\"Content\";s:6:\"plural\";s:7:\"Content\";s:5:\"order\";s:17:\"published_on DESC\";s:3:\"url\";s:4:\"slug\";}}i:1;a:2:{s:4:\"type\";s:8:\"favorite\";s:4:\"data\";a:3:{s:8:\"singular\";s:8:\"Favorite\";s:6:\"plural\";s:9:\"Favorites\";s:5:\"order\";s:10:\"manual ASC\";}}i:2;a:2:{s:4:\"type\";s:7:\"feature\";s:4:\"data\";a:3:{s:8:\"singular\";s:7:\"Feature\";s:6:\"plural\";s:8:\"Features\";s:5:\"order\";s:10:\"manual ASC\";}}i:3;a:2:{s:4:\"type\";s:5:\"album\";s:4:\"data\";a:4:{s:8:\"singular\";s:5:\"Album\";s:6:\"plural\";s:6:\"Albums\";s:5:\"order\";s:10:\"manual ASC\";s:3:\"url\";s:4:\"slug\";}}i:4;a:2:{s:4:\"type\";s:3:\"set\";s:4:\"data\";a:3:{s:8:\"singular\";s:3:\"Set\";s:6:\"plural\";s:4:\"Sets\";s:5:\"order\";s:9:\"title ASC\";}}i:5;a:2:{s:4:\"type\";s:5:\"essay\";s:4:\"data\";a:4:{s:8:\"singular\";s:5:\"Essay\";s:6:\"plural\";s:6:\"Essays\";s:5:\"order\";s:17:\"published_on DESC\";s:3:\"url\";s:9:\"date+slug\";}}i:6;a:2:{s:4:\"type\";s:4:\"page\";s:4:\"data\";a:3:{s:8:\"singular\";s:4:\"Page\";s:6:\"plural\";s:5:\"Pages\";s:3:\"url\";s:4:\"slug\";}}i:7;a:2:{s:4:\"type\";s:3:\"tag\";s:4:\"data\";a:2:{s:8:\"singular\";s:3:\"Tag\";s:6:\"plural\";s:4:\"Tags\";}}i:8;a:2:{s:4:\"type\";s:8:\"category\";s:4:\"data\";a:2:{s:8:\"singular\";s:8:\"Category\";s:6:\"plural\";s:10:\"Categories\";}}i:9;a:2:{s:4:\"type\";s:8:\"timeline\";s:4:\"data\";a:2:{s:8:\"singular\";s:8:\"Timeline\";s:6:\"plural\";s:8:\"Timeline\";}}}',1581271088);
/*!40000 ALTER TABLE `kokn_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kokn_users`
--

LOCK TABLES `kokn_users` WRITE;
/*!40000 ALTER TABLE `kokn_users` DISABLE KEYS */;
INSERT INTO `kokn_users` VALUES (1,'$P$BRx1y4OBlAYB5hhD0zrgpZq5IpZS4d0','piotrowski+ionos.de@gmail.com',1581271089,1581271089,'Site','Owner','Site','Owner','both','piotrowski+ionos.de@gmail.com',NULL,NULL,NULL,'673a18cfeaa826b9c2fcdaa3639a6004',NULL);
/*!40000 ALTER TABLE `kokn_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 19:28:50
