-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816442063.hosting-data.io    Database: db816442063
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
-- Dumping data for table `elgg_access_collection_membership`
--

LOCK TABLES `elgg_access_collection_membership` WRITE;
/*!40000 ALTER TABLE `elgg_access_collection_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collection_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_access_collections`
--

LOCK TABLES `elgg_access_collections` WRITE;
/*!40000 ALTER TABLE `elgg_access_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_annotations`
--

LOCK TABLES `elgg_annotations` WRITE;
/*!40000 ALTER TABLE `elgg_annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_api_users`
--

LOCK TABLES `elgg_api_users` WRITE;
/*!40000 ALTER TABLE `elgg_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_config`
--

LOCK TABLES `elgg_config` WRITE;
/*!40000 ALTER TABLE `elgg_config` DISABLE KEYS */;
INSERT INTO `elgg_config` VALUES ('view','s:7:\"default\";',1),('language','s:2:\"en\";',1),('default_access','s:1:\"2\";',1),('allow_registration','b:1;',1),('walled_garden','b:0;',1),('allow_user_default_access','s:0:\"\";',1),('default_limit','i:10;',1),('search_ft_min_word_len','s:1:\"4\";',1),('search_ft_max_word_len','s:2:\"84\";',1);
/*!40000 ALTER TABLE `elgg_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_datalists`
--

LOCK TABLES `elgg_datalists` WRITE;
/*!40000 ALTER TABLE `elgg_datalists` DISABLE KEYS */;
INSERT INTO `elgg_datalists` VALUES ('installed','1581275408'),('dataroot','/homepages/33/d816427774/htdocs/clickandbuilds/Elgg/Elgg/data/'),('default_site','1'),('version','2016092300'),('simplecache_enabled','1'),('system_cache_enabled','1'),('simplecache_lastupdate','1581275408'),('processed_upgrades','a:3:{i:0;s:56:\"2015062900-1.11.2-discussion_plugin-e28c7afa4f5f24ec.php\";i:1;s:57:\"2016090100-2.2.0-wider_subtype_class-40b951c36343280b.php\";i:2;s:59:\"2016092300-2.2.0-database-guid-columns-5a57ba1bfdd8d925.php\";}'),('admin_registered','1'),('__site_secret__','zeHYjQLKgCGbwCJ56jA4L3nQYGEhMXmV');
/*!40000 ALTER TABLE `elgg_datalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_entities`
--

LOCK TABLES `elgg_entities` WRITE;
/*!40000 ALTER TABLE `elgg_entities` DISABLE KEYS */;
INSERT INTO `elgg_entities` VALUES (1,'site',0,0,1,0,2,1581275408,1581275408,1581275408,'yes'),(2,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(3,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(4,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(5,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(6,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(7,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(8,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(9,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(10,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(11,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(12,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(13,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(14,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(15,'object',1,1,1,1,2,1581275408,1581275408,1581275408,'yes'),(16,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(17,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(18,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(19,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(20,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(21,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(22,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(23,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(24,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(25,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(26,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(27,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(28,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(29,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(30,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(31,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(32,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(33,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(34,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(35,'object',1,1,1,1,2,1581275409,1581275409,1581275409,'yes'),(36,'user',0,0,1,0,2,1581275413,1581275413,1581275413,'yes'),(37,'object',3,36,1,36,0,1581275413,1581275413,1581275413,'yes'),(38,'object',3,36,1,36,0,1581275413,1581275413,1581275413,'yes'),(39,'object',3,36,1,36,0,1581275413,1581275413,1581275413,'yes'),(40,'object',3,36,1,36,0,1581275413,1581275413,1581275413,'yes'),(41,'object',3,36,1,36,0,1581275413,1581275413,1581275413,'yes');
/*!40000 ALTER TABLE `elgg_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_entity_relationships`
--

LOCK TABLES `elgg_entity_relationships` WRITE;
/*!40000 ALTER TABLE `elgg_entity_relationships` DISABLE KEYS */;
INSERT INTO `elgg_entity_relationships` VALUES (1,2,'active_plugin',1,1581275409),(2,3,'active_plugin',1,1581275410),(3,4,'active_plugin',1,1581275410),(4,5,'active_plugin',1,1581275410),(5,10,'active_plugin',1,1581275410),(6,13,'active_plugin',1,1581275410),(7,14,'active_plugin',1,1581275410),(8,15,'active_plugin',1,1581275410),(9,16,'active_plugin',1,1581275410),(10,17,'active_plugin',1,1581275410),(11,19,'active_plugin',1,1581275410),(12,20,'active_plugin',1,1581275410),(13,21,'active_plugin',1,1581275410),(14,22,'active_plugin',1,1581275410),(15,23,'active_plugin',1,1581275410),(16,24,'active_plugin',1,1581275410),(17,25,'active_plugin',1,1581275410),(18,26,'active_plugin',1,1581275410),(19,27,'active_plugin',1,1581275410),(20,28,'active_plugin',1,1581275410),(21,29,'active_plugin',1,1581275410),(22,32,'active_plugin',1,1581275410),(23,34,'active_plugin',1,1581275410),(24,36,'member_of_site',1,1581275413);
/*!40000 ALTER TABLE `elgg_entity_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_entity_subtypes`
--

LOCK TABLES `elgg_entity_subtypes` WRITE;
/*!40000 ALTER TABLE `elgg_entity_subtypes` DISABLE KEYS */;
INSERT INTO `elgg_entity_subtypes` VALUES (1,'object','plugin','ElggPlugin'),(2,'object','file','ElggFile'),(3,'object','widget','ElggWidget'),(4,'object','comment','ElggComment'),(5,'object','elgg_upgrade','ElggUpgrade'),(6,'object','blog','ElggBlog'),(7,'object','discussion_reply','ElggDiscussionReply'),(8,'object','thewire','ElggWire');
/*!40000 ALTER TABLE `elgg_entity_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_geocode_cache`
--

LOCK TABLES `elgg_geocode_cache` WRITE;
/*!40000 ALTER TABLE `elgg_geocode_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_groups_entity`
--

LOCK TABLES `elgg_groups_entity` WRITE;
/*!40000 ALTER TABLE `elgg_groups_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_groups_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_hmac_cache`
--

LOCK TABLES `elgg_hmac_cache` WRITE;
/*!40000 ALTER TABLE `elgg_hmac_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_hmac_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_metadata`
--

LOCK TABLES `elgg_metadata` WRITE;
/*!40000 ALTER TABLE `elgg_metadata` DISABLE KEYS */;
INSERT INTO `elgg_metadata` VALUES (1,1,1,2,'text',0,2,1581275408,'yes'),(2,36,3,4,'integer',0,2,1581275413,'yes'),(3,36,5,4,'text',0,2,1581275414,'yes'),(4,36,6,7,'text',0,2,1581275414,'yes');
/*!40000 ALTER TABLE `elgg_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_metastrings`
--

LOCK TABLES `elgg_metastrings` WRITE;
/*!40000 ALTER TABLE `elgg_metastrings` DISABLE KEYS */;
INSERT INTO `elgg_metastrings` VALUES (1,'email'),(2,'piotrowski+ionos.de@prisma.io'),(3,'notification:method:email'),(4,'1'),(5,'validated'),(6,'validated_method'),(7,'admin_user');
/*!40000 ALTER TABLE `elgg_metastrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_objects_entity`
--

LOCK TABLES `elgg_objects_entity` WRITE;
/*!40000 ALTER TABLE `elgg_objects_entity` DISABLE KEYS */;
INSERT INTO `elgg_objects_entity` VALUES (2,'aalborg_theme',''),(3,'blog',''),(4,'bookmarks',''),(5,'ckeditor',''),(6,'custom_index',''),(7,'dashboard',''),(8,'developers',''),(9,'diagnostics',''),(10,'discussions',''),(11,'embed',''),(12,'externalpages',''),(13,'file',''),(14,'garbagecollector',''),(15,'groups',''),(16,'htmlawed',''),(17,'invitefriends',''),(18,'legacy_urls',''),(19,'likes',''),(20,'logbrowser',''),(21,'logrotate',''),(22,'members',''),(23,'messageboard',''),(24,'messages',''),(25,'notifications',''),(26,'pages',''),(27,'profile',''),(28,'reportedcontent',''),(29,'search',''),(30,'site_notifications',''),(31,'tagcloud',''),(32,'thewire',''),(33,'twitter_api',''),(34,'uservalidationbyemail',''),(35,'web_services',''),(37,'',''),(38,'',''),(39,'',''),(40,'',''),(41,'','');
/*!40000 ALTER TABLE `elgg_objects_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_private_settings`
--

LOCK TABLES `elgg_private_settings` WRITE;
/*!40000 ALTER TABLE `elgg_private_settings` DISABLE KEYS */;
INSERT INTO `elgg_private_settings` VALUES (1,2,'elgg:internal:priority','34'),(2,3,'elgg:internal:priority','1'),(3,4,'elgg:internal:priority','2'),(4,5,'elgg:internal:priority','3'),(5,6,'elgg:internal:priority','4'),(6,7,'elgg:internal:priority','5'),(7,8,'elgg:internal:priority','6'),(8,9,'elgg:internal:priority','7'),(9,10,'elgg:internal:priority','8'),(10,11,'elgg:internal:priority','9'),(11,12,'elgg:internal:priority','10'),(12,13,'elgg:internal:priority','11'),(13,14,'elgg:internal:priority','12'),(14,15,'elgg:internal:priority','13'),(15,16,'elgg:internal:priority','14'),(16,17,'elgg:internal:priority','15'),(17,18,'elgg:internal:priority','16'),(18,19,'elgg:internal:priority','17'),(19,20,'elgg:internal:priority','18'),(20,21,'elgg:internal:priority','19'),(21,22,'elgg:internal:priority','20'),(22,23,'elgg:internal:priority','21'),(23,24,'elgg:internal:priority','22'),(24,25,'elgg:internal:priority','23'),(25,26,'elgg:internal:priority','24'),(26,27,'elgg:internal:priority','25'),(27,28,'elgg:internal:priority','26'),(28,29,'elgg:internal:priority','27'),(29,30,'elgg:internal:priority','28'),(30,31,'elgg:internal:priority','29'),(31,32,'elgg:internal:priority','30'),(32,33,'elgg:internal:priority','31'),(33,34,'elgg:internal:priority','32'),(34,35,'elgg:internal:priority','33'),(35,32,'limit','140'),(36,37,'handler','control_panel'),(37,37,'context','admin'),(38,37,'column','1'),(39,37,'order','0'),(40,38,'handler','admin_welcome'),(41,38,'context','admin'),(42,38,'order','10'),(43,38,'column','1'),(44,39,'handler','online_users'),(45,39,'context','admin'),(46,39,'column','2'),(47,39,'order','0'),(48,40,'handler','new_users'),(49,40,'context','admin'),(50,40,'order','10'),(51,40,'column','2'),(52,41,'handler','content_stats'),(53,41,'context','admin'),(54,41,'order','20'),(55,41,'column','2');
/*!40000 ALTER TABLE `elgg_private_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_queue`
--

LOCK TABLES `elgg_queue` WRITE;
/*!40000 ALTER TABLE `elgg_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_river`
--

LOCK TABLES `elgg_river` WRITE;
/*!40000 ALTER TABLE `elgg_river` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_river` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_sites_entity`
--

LOCK TABLES `elgg_sites_entity` WRITE;
/*!40000 ALTER TABLE `elgg_sites_entity` DISABLE KEYS */;
INSERT INTO `elgg_sites_entity` VALUES (1,'Elgg','','http://elgg.ionos-prisma.de/');
/*!40000 ALTER TABLE `elgg_sites_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_system_log`
--

LOCK TABLES `elgg_system_log` WRITE;
/*!40000 ALTER TABLE `elgg_system_log` DISABLE KEYS */;
INSERT INTO `elgg_system_log` VALUES (1,2,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(2,3,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(3,4,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(4,5,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(5,6,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(6,7,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(7,8,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(8,9,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(9,10,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(10,11,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(11,12,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(12,13,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(13,14,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(14,15,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275408,'2001:8d8:5c0:453:3128:0:1:1'),(15,16,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(16,17,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(17,18,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(18,19,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(19,20,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(20,21,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(21,22,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(22,23,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(23,24,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(24,25,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(25,26,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(26,27,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(27,28,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(28,29,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(29,30,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(30,31,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(31,32,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(32,33,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(33,34,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(34,35,'ElggPlugin','object','plugin','create',0,1,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(35,1,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275409,'2001:8d8:5c0:453:3128:0:1:1'),(36,2,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(37,3,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(38,4,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(39,5,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(40,6,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(41,7,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(42,8,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(43,9,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(44,10,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(45,11,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(46,12,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(47,13,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(48,14,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(49,15,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(50,16,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(51,17,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(52,18,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(53,19,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(54,20,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(55,21,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(56,22,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(57,23,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1581275410,'2001:8d8:5c0:453:3128:0:1:1'),(58,36,'ElggUser','user','','create',0,0,2,'yes',1581275413,'2001:8d8:5c0:453:3128:0:1:1'),(59,24,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1581275413,'2001:8d8:5c0:453:3128:0:1:1'),(60,2,'ElggMetadata','metadata','notification:method:email','create',0,0,2,'yes',1581275413,'2001:8d8:5c0:453:3128:0:1:1'),(61,36,'ElggUser','user','','make_admin',0,0,2,'yes',1581275413,'2001:8d8:5c0:453:3128:0:1:1'),(62,37,'ElggWidget','object','widget','create',0,36,2,'yes',1581275413,'2001:8d8:5c0:453:3128:0:1:1'),(63,38,'ElggWidget','object','widget','create',0,36,2,'yes',1581275413,'2001:8d8:5c0:453:3128:0:1:1'),(64,39,'ElggWidget','object','widget','create',0,36,2,'yes',1581275413,'2001:8d8:5c0:453:3128:0:1:1'),(65,40,'ElggWidget','object','widget','create',0,36,2,'yes',1581275413,'2001:8d8:5c0:453:3128:0:1:1'),(66,41,'ElggWidget','object','widget','create',0,36,2,'yes',1581275413,'2001:8d8:5c0:453:3128:0:1:1'),(67,3,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1581275414,'2001:8d8:5c0:453:3128:0:1:1'),(68,4,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1581275414,'2001:8d8:5c0:453:3128:0:1:1'),(69,36,'ElggUser','user','','login:before',0,0,2,'yes',1581275414,'2001:8d8:5c0:453:3128:0:1:1'),(70,36,'ElggUser','user','','login',36,0,2,'yes',1581275414,'2001:8d8:5c0:453:3128:0:1:1'),(71,36,'ElggUser','user','','login:after',36,0,2,'yes',1581275414,'2001:8d8:5c0:453:3128:0:1:1');
/*!40000 ALTER TABLE `elgg_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_users_apisessions`
--

LOCK TABLES `elgg_users_apisessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_apisessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_apisessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_users_entity`
--

LOCK TABLES `elgg_users_entity` WRITE;
/*!40000 ALTER TABLE `elgg_users_entity` DISABLE KEYS */;
INSERT INTO `elgg_users_entity` VALUES (36,'admin','admin','7f5fd9ee7090db98ecd486d2085cffc7','de85f414','','piotrowski+ionos.de@prisma.io','en','no','yes',0,0,1581275414,0);
/*!40000 ALTER TABLE `elgg_users_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_users_remember_me_cookies`
--

LOCK TABLES `elgg_users_remember_me_cookies` WRITE;
/*!40000 ALTER TABLE `elgg_users_remember_me_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_remember_me_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `elgg_users_sessions`
--

LOCK TABLES `elgg_users_sessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_sessions` DISABLE KEYS */;
INSERT INTO `elgg_users_sessions` VALUES ('5ef73e98d58751982b1e819640b3564f',1581275414,'_sf2_attributes|a:1:{s:4:\"guid\";i:36;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1581275414;s:1:\"c\";i:1581275414;s:1:\"l\";s:1:\"0\";}'),('b510363d469dd0d93b4c0654bcf7c842',1581275414,'_sf2_attributes|a:1:{s:4:\"guid\";i:36;}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1581275414;s:1:\"c\";i:1581275414;s:1:\"l\";s:1:\"0\";}'),('00a5bf3255d9466265c9521d726b9709',1581291817,'_sf2_attributes|a:1:{s:14:\"__elgg_session\";s:22:\"xJrxDOYr1RFmODiNJgCPtM\";}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1581291814;s:1:\"c\";i:1581291814;s:1:\"l\";s:1:\"0\";}'),('15bea66e9b621cbcdacc083d4e212d7b',1581291818,'_sf2_attributes|a:1:{s:14:\"__elgg_session\";s:22:\"1CPA4GLgjhOXmfRZ4FIJpe\";}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1581291818;s:1:\"c\";i:1581291817;s:1:\"l\";s:1:\"0\";}'),('053bdb9e5f37634e137be7af5b989337',1581342705,'_sf2_attributes|a:1:{s:14:\"__elgg_session\";s:22:\"aJ7jwoYe6XcFPbdWIJUpoe\";}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1581342704;s:1:\"c\";i:1581342704;s:1:\"l\";s:1:\"0\";}'),('541b1418acbaa009a479021eba89169f',1581342706,'_sf2_attributes|a:1:{s:14:\"__elgg_session\";s:22:\"D7xfUei2_h_ZwBf3jAlf6J\";}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1581342706;s:1:\"c\";i:1581342706;s:1:\"l\";s:1:\"0\";}'),('9e8ad2b13a1a3c57decc88d829d37dbb',1581345326,'_sf2_attributes|a:1:{s:14:\"__elgg_session\";s:22:\"9-FFkebBF4oemmIQTmfP91\";}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1581345326;s:1:\"c\";i:1581345326;s:1:\"l\";s:1:\"0\";}'),('a873fcab6a105a16352cb6765a06ea50',1581345327,'_sf2_attributes|a:1:{s:14:\"__elgg_session\";s:22:\"m9tmVujhtHBvGng7rQC0hc\";}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1581345327;s:1:\"c\";i:1581345327;s:1:\"l\";s:1:\"0\";}'),('cd9a547bb85a9335dd09c4920dc58c75',1581354760,'_sf2_attributes|a:1:{s:14:\"__elgg_session\";s:22:\"_oUI_MvgBSlCFpf5FLEO_F\";}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1581354759;s:1:\"c\";i:1581354759;s:1:\"l\";s:1:\"0\";}'),('b50febf0ba02d4c2cf934b79f12c1234',1581354760,'_sf2_attributes|a:1:{s:14:\"__elgg_session\";s:22:\"TcvUgHw9xsLzWGmMfn2BxS\";}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1581354760;s:1:\"c\";i:1581354760;s:1:\"l\";s:1:\"0\";}');
/*!40000 ALTER TABLE `elgg_users_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 19:28:58
