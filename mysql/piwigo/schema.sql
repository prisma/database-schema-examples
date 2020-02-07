-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: all-prisma.de    Database: d02ff6ec
-- ------------------------------------------------------
-- Server version	5.7.28-nmm1-log

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
-- Table structure for table `q4hat_caddie`
--

DROP TABLE IF EXISTS `q4hat_caddie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_caddie` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `element_id` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`element_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_categories`
--

DROP TABLE IF EXISTS `q4hat_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_categories` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `id_uppercat` smallint(5) unsigned DEFAULT NULL,
  `comment` text,
  `dir` varchar(255) DEFAULT NULL,
  `rank` smallint(5) unsigned DEFAULT NULL,
  `status` enum('public','private') NOT NULL DEFAULT 'public',
  `site_id` tinyint(4) unsigned DEFAULT NULL,
  `visible` enum('true','false') NOT NULL DEFAULT 'true',
  `representative_picture_id` mediumint(8) unsigned DEFAULT NULL,
  `uppercats` varchar(255) NOT NULL DEFAULT '',
  `commentable` enum('true','false') NOT NULL DEFAULT 'true',
  `global_rank` varchar(255) DEFAULT NULL,
  `image_order` varchar(128) DEFAULT NULL,
  `permalink` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_i3` (`permalink`),
  KEY `categories_i2` (`id_uppercat`),
  KEY `lastmodified` (`lastmodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_comments`
--

DROP TABLE IF EXISTS `q4hat_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `author_id` mediumint(8) unsigned DEFAULT NULL,
  `anonymous_id` varchar(45) NOT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `content` longtext,
  `validated` enum('true','false') NOT NULL DEFAULT 'false',
  `validation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_i2` (`validation_date`),
  KEY `comments_i1` (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_config`
--

DROP TABLE IF EXISTS `q4hat_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_config` (
  `param` varchar(40) NOT NULL DEFAULT '',
  `value` text,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`param`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='configuration table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_favorites`
--

DROP TABLE IF EXISTS `q4hat_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_favorites` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_group_access`
--

DROP TABLE IF EXISTS `q4hat_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_group_access` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_groups`
--

DROP TABLE IF EXISTS `q4hat_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_groups` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_default` enum('true','false') NOT NULL DEFAULT 'false',
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_ui1` (`name`),
  KEY `lastmodified` (`lastmodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_history`
--

DROP TABLE IF EXISTS `q4hat_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '1970-01-01',
  `time` time NOT NULL DEFAULT '00:00:00',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(15) NOT NULL DEFAULT '',
  `section` enum('categories','tags','search','list','favorites','most_visited','best_rated','recent_pics','recent_cats') DEFAULT NULL,
  `category_id` smallint(5) DEFAULT NULL,
  `tag_ids` varchar(50) DEFAULT NULL,
  `image_id` mediumint(8) DEFAULT NULL,
  `image_type` enum('picture','high','other') DEFAULT NULL,
  `format_id` int(11) unsigned DEFAULT NULL,
  `auth_key_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_history_summary`
--

DROP TABLE IF EXISTS `q4hat_history_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_history_summary` (
  `year` smallint(4) NOT NULL DEFAULT '0',
  `month` tinyint(2) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `nb_pages` int(11) DEFAULT NULL,
  `history_id_from` int(10) unsigned DEFAULT NULL,
  `history_id_to` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `history_summary_ymdh` (`year`,`month`,`day`,`hour`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_image_category`
--

DROP TABLE IF EXISTS `q4hat_image_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_image_category` (
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `category_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`image_id`,`category_id`),
  KEY `image_category_i1` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_image_format`
--

DROP TABLE IF EXISTS `q4hat_image_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_image_format` (
  `format_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ext` varchar(255) NOT NULL,
  `filesize` mediumint(9) unsigned DEFAULT NULL,
  PRIMARY KEY (`format_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_image_tag`
--

DROP TABLE IF EXISTS `q4hat_image_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_image_tag` (
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`,`tag_id`),
  KEY `image_tag_i1` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_images`
--

DROP TABLE IF EXISTS `q4hat_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_images` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_available` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `date_creation` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `author` varchar(255) DEFAULT NULL,
  `hit` int(10) unsigned NOT NULL DEFAULT '0',
  `filesize` mediumint(9) unsigned DEFAULT NULL,
  `width` smallint(9) unsigned DEFAULT NULL,
  `height` smallint(9) unsigned DEFAULT NULL,
  `coi` char(4) DEFAULT NULL COMMENT 'center of interest',
  `representative_ext` varchar(4) DEFAULT NULL,
  `date_metadata_update` date DEFAULT NULL,
  `rating_score` float(5,2) unsigned DEFAULT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `storage_category_id` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `md5sum` char(32) DEFAULT NULL,
  `added_by` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rotation` tinyint(3) unsigned DEFAULT NULL,
  `latitude` double(8,6) DEFAULT NULL,
  `longitude` double(9,6) DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `images_i2` (`date_available`),
  KEY `images_i3` (`rating_score`),
  KEY `images_i4` (`hit`),
  KEY `images_i5` (`date_creation`),
  KEY `images_i1` (`storage_category_id`),
  KEY `images_i6` (`latitude`),
  KEY `lastmodified` (`lastmodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_languages`
--

DROP TABLE IF EXISTS `q4hat_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_languages` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_old_permalinks`
--

DROP TABLE IF EXISTS `q4hat_old_permalinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_old_permalinks` (
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `permalink` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_deleted` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `last_hit` datetime DEFAULT NULL,
  `hit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permalink`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_plugins`
--

DROP TABLE IF EXISTS `q4hat_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_plugins` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` enum('inactive','active') NOT NULL DEFAULT 'inactive',
  `version` varchar(64) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_rate`
--

DROP TABLE IF EXISTS `q4hat_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_rate` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `element_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `anonymous_id` varchar(45) NOT NULL DEFAULT '',
  `rate` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '1970-01-01',
  PRIMARY KEY (`element_id`,`user_id`,`anonymous_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_search`
--

DROP TABLE IF EXISTS `q4hat_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `last_seen` date DEFAULT NULL,
  `rules` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_sessions`
--

DROP TABLE IF EXISTS `q4hat_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_sessions` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `data` mediumtext NOT NULL,
  `expiration` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_sites`
--

DROP TABLE IF EXISTS `q4hat_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_sites` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `galleries_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sites_ui1` (`galleries_url`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_tags`
--

DROP TABLE IF EXISTS `q4hat_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_tags` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `tags_i1` (`url_name`),
  KEY `lastmodified` (`lastmodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_themes`
--

DROP TABLE IF EXISTS `q4hat_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_themes` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_upgrade`
--

DROP TABLE IF EXISTS `q4hat_upgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_upgrade` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `applied` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_user_access`
--

DROP TABLE IF EXISTS `q4hat_user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_user_access` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_user_auth_keys`
--

DROP TABLE IF EXISTS `q4hat_user_auth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_user_auth_keys` (
  `auth_key_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `auth_key` varchar(255) NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `created_on` datetime NOT NULL,
  `duration` int(11) unsigned DEFAULT NULL,
  `expired_on` datetime NOT NULL,
  PRIMARY KEY (`auth_key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_user_cache`
--

DROP TABLE IF EXISTS `q4hat_user_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_user_cache` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `need_update` enum('true','false') NOT NULL DEFAULT 'true',
  `cache_update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `forbidden_categories` mediumtext,
  `nb_total_images` mediumint(8) unsigned DEFAULT NULL,
  `last_photo_date` datetime DEFAULT NULL,
  `nb_available_tags` int(5) DEFAULT NULL,
  `nb_available_comments` int(5) DEFAULT NULL,
  `image_access_type` enum('NOT IN','IN') NOT NULL DEFAULT 'NOT IN',
  `image_access_list` mediumtext,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_user_cache_categories`
--

DROP TABLE IF EXISTS `q4hat_user_cache_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_user_cache_categories` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `date_last` datetime DEFAULT NULL,
  `max_date_last` datetime DEFAULT NULL,
  `nb_images` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count_images` mediumint(8) unsigned DEFAULT '0',
  `nb_categories` mediumint(8) unsigned DEFAULT '0',
  `count_categories` mediumint(8) unsigned DEFAULT '0',
  `user_representative_picture_id` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_user_feed`
--

DROP TABLE IF EXISTS `q4hat_user_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_user_feed` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_check` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_user_group`
--

DROP TABLE IF EXISTS `q4hat_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_user_group` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_user_infos`
--

DROP TABLE IF EXISTS `q4hat_user_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_user_infos` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nb_image_page` smallint(3) unsigned NOT NULL DEFAULT '15',
  `status` enum('webmaster','admin','normal','generic','guest') NOT NULL DEFAULT 'guest',
  `language` varchar(50) NOT NULL DEFAULT 'en_UK',
  `expand` enum('true','false') NOT NULL DEFAULT 'false',
  `show_nb_comments` enum('true','false') NOT NULL DEFAULT 'false',
  `show_nb_hits` enum('true','false') NOT NULL DEFAULT 'false',
  `recent_period` tinyint(3) unsigned NOT NULL DEFAULT '7',
  `theme` varchar(255) NOT NULL DEFAULT 'elegant',
  `registration_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `enabled_high` enum('true','false') NOT NULL DEFAULT 'true',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activation_key` varchar(255) DEFAULT NULL,
  `activation_key_expire` datetime DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `last_visit_from_history` enum('true','false') NOT NULL DEFAULT 'false',
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `lastmodified` (`lastmodified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_user_mail_notification`
--

DROP TABLE IF EXISTS `q4hat_user_mail_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_user_mail_notification` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `check_key` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `enabled` enum('true','false') NOT NULL DEFAULT 'false',
  `last_send` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_mail_notification_ui1` (`check_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `q4hat_users`
--

DROP TABLE IF EXISTS `q4hat_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q4hat_users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `mail_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_ui1` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-07 13:38:53
