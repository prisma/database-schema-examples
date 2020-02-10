-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816445135.hosting-data.io    Database: db816445135
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
-- Table structure for table `oscl_t_admin`
--

DROP TABLE IF EXISTS `oscl_t_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_admin` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_name` varchar(100) NOT NULL,
  `s_username` varchar(40) NOT NULL,
  `s_password` char(60) NOT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `s_secret` varchar(40) DEFAULT NULL,
  `b_moderator` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pk_i_id`),
  UNIQUE KEY `s_username` (`s_username`),
  UNIQUE KEY `s_email` (`s_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_alerts`
--

DROP TABLE IF EXISTS `oscl_t_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_alerts` (
  `s_email` varchar(100) DEFAULT NULL,
  `fk_i_user_id` int(10) unsigned DEFAULT NULL,
  `s_search` longtext,
  `s_secret` varchar(40) DEFAULT NULL,
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `e_type` enum('INSTANT','HOURLY','DAILY','WEEKLY','CUSTOM') NOT NULL,
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dt_date` datetime DEFAULT NULL,
  `dt_unsub_date` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_alerts_sent`
--

DROP TABLE IF EXISTS `oscl_t_alerts_sent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_alerts_sent` (
  `d_date` date NOT NULL,
  `i_num_alerts_sent` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`d_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_ban_rule`
--

DROP TABLE IF EXISTS `oscl_t_ban_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_ban_rule` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_name` varchar(250) NOT NULL DEFAULT '',
  `s_ip` varchar(50) NOT NULL DEFAULT '',
  `s_email` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_category`
--

DROP TABLE IF EXISTS `oscl_t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_category` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_parent_id` int(10) unsigned DEFAULT NULL,
  `i_expiration_days` int(3) unsigned NOT NULL DEFAULT '0',
  `i_position` int(2) unsigned NOT NULL DEFAULT '0',
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `s_icon` varchar(250) DEFAULT NULL,
  `b_price_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_parent_id` (`fk_i_parent_id`),
  KEY `i_position` (`i_position`),
  CONSTRAINT `oscl_t_category_ibfk_1` FOREIGN KEY (`fk_i_parent_id`) REFERENCES `oscl_t_category` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_category_description`
--

DROP TABLE IF EXISTS `oscl_t_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_category_description` (
  `fk_i_category_id` int(10) unsigned NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_description` text,
  `s_slug` varchar(255) NOT NULL,
  PRIMARY KEY (`fk_i_category_id`,`fk_c_locale_code`),
  KEY `fk_c_locale_code` (`fk_c_locale_code`),
  KEY `idx_s_slug` (`s_slug`),
  CONSTRAINT `oscl_t_category_description_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oscl_t_category` (`pk_i_id`),
  CONSTRAINT `oscl_t_category_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oscl_t_locale` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_category_stats`
--

DROP TABLE IF EXISTS `oscl_t_category_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_category_stats` (
  `fk_i_category_id` int(10) unsigned NOT NULL,
  `i_num_items` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fk_i_category_id`),
  CONSTRAINT `oscl_t_category_stats_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oscl_t_category` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_city`
--

DROP TABLE IF EXISTS `oscl_t_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_city` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_region_id` int(10) unsigned NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `fk_c_country_code` char(2) DEFAULT NULL,
  `b_active` tinyint(1) NOT NULL DEFAULT '1',
  `s_slug` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_region_id` (`fk_i_region_id`),
  KEY `fk_c_country_code` (`fk_c_country_code`),
  KEY `idx_s_name` (`s_name`),
  KEY `idx_s_slug` (`s_slug`),
  CONSTRAINT `oscl_t_city_ibfk_1` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oscl_t_region` (`pk_i_id`),
  CONSTRAINT `oscl_t_city_ibfk_2` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oscl_t_country` (`pk_c_code`)
) ENGINE=InnoDB AUTO_INCREMENT=22260 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_city_area`
--

DROP TABLE IF EXISTS `oscl_t_city_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_city_area` (
  `pk_i_id` int(10) unsigned NOT NULL,
  `fk_i_city_id` int(10) unsigned NOT NULL,
  `s_name` varchar(255) NOT NULL,
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_city_id` (`fk_i_city_id`),
  KEY `idx_s_name` (`s_name`),
  CONSTRAINT `oscl_t_city_area_ibfk_1` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oscl_t_city` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_city_stats`
--

DROP TABLE IF EXISTS `oscl_t_city_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_city_stats` (
  `fk_i_city_id` int(10) unsigned NOT NULL,
  `i_num_items` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fk_i_city_id`),
  KEY `idx_num_items` (`i_num_items`),
  CONSTRAINT `oscl_t_city_stats_ibfk_1` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oscl_t_city` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_country`
--

DROP TABLE IF EXISTS `oscl_t_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_country` (
  `pk_c_code` char(2) NOT NULL,
  `s_name` varchar(80) NOT NULL,
  `s_slug` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_c_code`),
  KEY `idx_s_name` (`s_name`),
  KEY `idx_s_slug` (`s_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_country_stats`
--

DROP TABLE IF EXISTS `oscl_t_country_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_country_stats` (
  `fk_c_country_code` char(2) NOT NULL,
  `i_num_items` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fk_c_country_code`),
  KEY `idx_num_items` (`i_num_items`),
  CONSTRAINT `oscl_t_country_stats_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oscl_t_country` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_cron`
--

DROP TABLE IF EXISTS `oscl_t_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_cron` (
  `e_type` enum('INSTANT','HOURLY','DAILY','WEEKLY','CUSTOM') NOT NULL,
  `d_last_exec` datetime NOT NULL,
  `d_next_exec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_currency`
--

DROP TABLE IF EXISTS `oscl_t_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_currency` (
  `pk_c_code` char(3) NOT NULL,
  `s_name` varchar(40) NOT NULL,
  `s_description` varchar(80) DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pk_c_code`),
  UNIQUE KEY `s_name` (`s_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_item`
--

DROP TABLE IF EXISTS `oscl_t_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_item` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_user_id` int(10) unsigned DEFAULT NULL,
  `fk_i_category_id` int(10) unsigned NOT NULL,
  `dt_pub_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `f_price` float DEFAULT NULL,
  `i_price` bigint(20) DEFAULT NULL,
  `fk_c_currency_code` char(3) DEFAULT NULL,
  `s_contact_name` varchar(100) DEFAULT NULL,
  `s_contact_email` varchar(140) DEFAULT NULL,
  `b_premium` tinyint(1) NOT NULL DEFAULT '0',
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `b_spam` tinyint(1) NOT NULL DEFAULT '0',
  `s_secret` varchar(40) DEFAULT NULL,
  `b_show_email` tinyint(1) DEFAULT NULL,
  `dt_expiration` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  `s_ip` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_user_id` (`fk_i_user_id`),
  KEY `fk_i_category_id` (`fk_i_category_id`),
  KEY `fk_c_currency_code` (`fk_c_currency_code`),
  KEY `idx_pub_date` (`dt_pub_date`),
  KEY `idx_price` (`i_price`),
  KEY `idx_b_premium` (`b_premium`),
  KEY `idx_s_contact_email` (`s_contact_email`(10)),
  CONSTRAINT `oscl_t_item_ibfk_5` FOREIGN KEY (`fk_c_currency_code`) REFERENCES `oscl_t_currency` (`pk_c_code`),
  CONSTRAINT `oscl_t_item_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oscl_t_user` (`pk_i_id`),
  CONSTRAINT `oscl_t_item_ibfk_2` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oscl_t_category` (`pk_i_id`),
  CONSTRAINT `oscl_t_item_ibfk_3` FOREIGN KEY (`fk_c_currency_code`) REFERENCES `oscl_t_currency` (`pk_c_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `oscl_t_item_ibfk_4` FOREIGN KEY (`fk_c_currency_code`) REFERENCES `oscl_t_currency` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_item_comment`
--

DROP TABLE IF EXISTS `oscl_t_item_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_item_comment` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `dt_pub_date` datetime NOT NULL,
  `s_title` varchar(200) NOT NULL,
  `s_author_name` varchar(100) NOT NULL,
  `s_author_email` varchar(100) NOT NULL,
  `s_body` text NOT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `b_spam` tinyint(1) NOT NULL DEFAULT '0',
  `fk_i_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_item_id` (`fk_i_item_id`),
  KEY `fk_i_user_id` (`fk_i_user_id`),
  CONSTRAINT `oscl_t_item_comment_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oscl_t_item` (`pk_i_id`),
  CONSTRAINT `oscl_t_item_comment_ibfk_2` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oscl_t_user` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_item_description`
--

DROP TABLE IF EXISTS `oscl_t_item_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_item_description` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `s_description` mediumtext NOT NULL,
  PRIMARY KEY (`fk_i_item_id`,`fk_c_locale_code`),
  KEY `fk_i_item_id` (`fk_i_item_id`),
  FULLTEXT KEY `s_description` (`s_description`,`s_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_item_location`
--

DROP TABLE IF EXISTS `oscl_t_item_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_item_location` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `fk_c_country_code` char(2) DEFAULT NULL,
  `s_country` varchar(40) DEFAULT NULL,
  `s_address` varchar(100) DEFAULT NULL,
  `s_zip` varchar(15) DEFAULT NULL,
  `fk_i_region_id` int(10) unsigned DEFAULT NULL,
  `s_region` varchar(100) DEFAULT NULL,
  `fk_i_city_id` int(10) unsigned DEFAULT NULL,
  `s_city` varchar(100) DEFAULT NULL,
  `fk_i_city_area_id` int(10) unsigned DEFAULT NULL,
  `s_city_area` varchar(200) DEFAULT NULL,
  `d_coord_lat` decimal(10,6) DEFAULT NULL,
  `d_coord_long` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`fk_i_item_id`),
  KEY `fk_c_country_code` (`fk_c_country_code`),
  KEY `fk_i_region_id` (`fk_i_region_id`),
  KEY `fk_i_city_id` (`fk_i_city_id`),
  KEY `fk_i_city_area_id` (`fk_i_city_area_id`),
  CONSTRAINT `oscl_t_item_location_ibfk_6` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oscl_t_country` (`pk_c_code`),
  CONSTRAINT `oscl_t_item_location_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oscl_t_item` (`pk_i_id`),
  CONSTRAINT `oscl_t_item_location_ibfk_3` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oscl_t_region` (`pk_i_id`),
  CONSTRAINT `oscl_t_item_location_ibfk_4` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oscl_t_city` (`pk_i_id`),
  CONSTRAINT `oscl_t_item_location_ibfk_5` FOREIGN KEY (`fk_i_city_area_id`) REFERENCES `oscl_t_city_area` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_item_meta`
--

DROP TABLE IF EXISTS `oscl_t_item_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_item_meta` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `fk_i_field_id` int(10) unsigned NOT NULL,
  `s_value` text,
  `s_multi` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`fk_i_item_id`,`fk_i_field_id`,`s_multi`),
  KEY `fk_i_field_id` (`fk_i_field_id`),
  KEY `s_value` (`s_value`(255)),
  CONSTRAINT `oscl_t_item_meta_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oscl_t_item` (`pk_i_id`),
  CONSTRAINT `oscl_t_item_meta_ibfk_2` FOREIGN KEY (`fk_i_field_id`) REFERENCES `oscl_t_meta_fields` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_item_resource`
--

DROP TABLE IF EXISTS `oscl_t_item_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_item_resource` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `s_extension` varchar(10) DEFAULT NULL,
  `s_content_type` varchar(40) DEFAULT NULL,
  `s_path` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_i_item_id` (`fk_i_item_id`),
  KEY `idx_s_content_type` (`pk_i_id`,`s_content_type`(10)),
  CONSTRAINT `oscl_t_item_resource_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oscl_t_item` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_item_stats`
--

DROP TABLE IF EXISTS `oscl_t_item_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_item_stats` (
  `fk_i_item_id` int(10) unsigned NOT NULL,
  `i_num_views` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_spam` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_repeated` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_bad_classified` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_offensive` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_expired` int(10) unsigned NOT NULL DEFAULT '0',
  `i_num_premium_views` int(10) unsigned NOT NULL DEFAULT '0',
  `dt_date` date NOT NULL,
  PRIMARY KEY (`fk_i_item_id`,`dt_date`),
  KEY `dt_date` (`dt_date`,`fk_i_item_id`),
  KEY `dt_date_fk_i_item_id` (`dt_date`,`fk_i_item_id`),
  CONSTRAINT `oscl_t_item_stats_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oscl_t_item` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_keywords`
--

DROP TABLE IF EXISTS `oscl_t_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_keywords` (
  `s_md5` varchar(32) NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_original_text` varchar(255) NOT NULL,
  `s_anchor_text` varchar(255) NOT NULL,
  `s_normalized_text` varchar(255) NOT NULL,
  `fk_i_category_id` int(10) unsigned DEFAULT NULL,
  `fk_i_city_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`s_md5`,`fk_c_locale_code`),
  KEY `fk_i_category_id` (`fk_i_category_id`),
  KEY `fk_i_city_id` (`fk_i_city_id`),
  KEY `fk_c_locale_code` (`fk_c_locale_code`),
  CONSTRAINT `oscl_t_keywords_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oscl_t_category` (`pk_i_id`),
  CONSTRAINT `oscl_t_keywords_ibfk_2` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oscl_t_city` (`pk_i_id`),
  CONSTRAINT `oscl_t_keywords_ibfk_3` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oscl_t_locale` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_latest_searches`
--

DROP TABLE IF EXISTS `oscl_t_latest_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_latest_searches` (
  `d_date` datetime NOT NULL,
  `s_search` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_locale`
--

DROP TABLE IF EXISTS `oscl_t_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_locale` (
  `pk_c_code` char(5) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_short_name` varchar(40) NOT NULL,
  `s_description` varchar(100) NOT NULL,
  `s_version` varchar(20) NOT NULL,
  `s_author_name` varchar(100) NOT NULL,
  `s_author_url` varchar(100) NOT NULL,
  `s_currency_format` varchar(50) NOT NULL,
  `s_dec_point` varchar(2) DEFAULT '.',
  `s_thousands_sep` varchar(2) DEFAULT '',
  `i_num_dec` tinyint(4) DEFAULT '2',
  `s_date_format` varchar(20) NOT NULL,
  `s_stop_words` text,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_enabled_bo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pk_c_code`),
  UNIQUE KEY `s_short_name` (`s_short_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_locations_tmp`
--

DROP TABLE IF EXISTS `oscl_t_locations_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_locations_tmp` (
  `id_location` varchar(10) NOT NULL,
  `e_type` enum('COUNTRY','REGION','CITY') NOT NULL,
  PRIMARY KEY (`id_location`,`e_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_log`
--

DROP TABLE IF EXISTS `oscl_t_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_log` (
  `dt_date` datetime NOT NULL,
  `s_section` varchar(50) NOT NULL,
  `s_action` varchar(50) NOT NULL,
  `fk_i_id` int(10) unsigned NOT NULL,
  `s_data` varchar(250) NOT NULL,
  `s_ip` varchar(50) NOT NULL,
  `s_who` varchar(50) NOT NULL,
  `fk_i_who_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_meta_categories`
--

DROP TABLE IF EXISTS `oscl_t_meta_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_meta_categories` (
  `fk_i_category_id` int(10) unsigned NOT NULL,
  `fk_i_field_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fk_i_category_id`,`fk_i_field_id`),
  KEY `fk_i_field_id` (`fk_i_field_id`),
  CONSTRAINT `oscl_t_meta_categories_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oscl_t_category` (`pk_i_id`),
  CONSTRAINT `oscl_t_meta_categories_ibfk_2` FOREIGN KEY (`fk_i_field_id`) REFERENCES `oscl_t_meta_fields` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_meta_fields`
--

DROP TABLE IF EXISTS `oscl_t_meta_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_meta_fields` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_name` varchar(255) NOT NULL,
  `s_slug` varchar(255) NOT NULL,
  `e_type` enum('TEXT','TEXTAREA','DROPDOWN','RADIO','CHECKBOX','URL','DATE','DATEINTERVAL') NOT NULL DEFAULT 'TEXT',
  `s_options` varchar(2048) DEFAULT NULL,
  `b_required` tinyint(1) NOT NULL DEFAULT '0',
  `b_searchable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_pages`
--

DROP TABLE IF EXISTS `oscl_t_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_pages` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_internal_name` varchar(50) DEFAULT NULL,
  `b_indelible` tinyint(1) NOT NULL DEFAULT '0',
  `dt_pub_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `i_order` int(3) NOT NULL DEFAULT '0',
  `b_link` tinyint(1) NOT NULL DEFAULT '1',
  `s_meta` text,
  PRIMARY KEY (`pk_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_pages_description`
--

DROP TABLE IF EXISTS `oscl_t_pages_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_pages_description` (
  `fk_i_pages_id` int(10) unsigned NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_title` varchar(255) NOT NULL,
  `s_text` text,
  PRIMARY KEY (`fk_i_pages_id`,`fk_c_locale_code`),
  KEY `fk_c_locale_code` (`fk_c_locale_code`),
  CONSTRAINT `oscl_t_pages_description_ibfk_1` FOREIGN KEY (`fk_i_pages_id`) REFERENCES `oscl_t_pages` (`pk_i_id`),
  CONSTRAINT `oscl_t_pages_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oscl_t_locale` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_plugin_category`
--

DROP TABLE IF EXISTS `oscl_t_plugin_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_plugin_category` (
  `s_plugin_name` varchar(40) NOT NULL,
  `fk_i_category_id` int(10) unsigned NOT NULL,
  KEY `fk_i_category_id` (`fk_i_category_id`),
  CONSTRAINT `oscl_t_plugin_category_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oscl_t_category` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_preference`
--

DROP TABLE IF EXISTS `oscl_t_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_preference` (
  `s_section` varchar(128) NOT NULL,
  `s_name` varchar(128) NOT NULL,
  `s_value` longtext NOT NULL,
  `e_type` enum('STRING','INTEGER','BOOLEAN') NOT NULL,
  UNIQUE KEY `s_section` (`s_section`,`s_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_region`
--

DROP TABLE IF EXISTS `oscl_t_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_region` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_c_country_code` char(2) NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `b_active` tinyint(1) NOT NULL DEFAULT '1',
  `s_slug` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_i_id`),
  KEY `fk_c_country_code` (`fk_c_country_code`),
  KEY `idx_s_name` (`s_name`),
  KEY `idx_s_slug` (`s_slug`),
  CONSTRAINT `oscl_t_region_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oscl_t_country` (`pk_c_code`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_region_stats`
--

DROP TABLE IF EXISTS `oscl_t_region_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_region_stats` (
  `fk_i_region_id` int(10) unsigned NOT NULL,
  `i_num_items` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fk_i_region_id`),
  KEY `idx_num_items` (`i_num_items`),
  CONSTRAINT `oscl_t_region_stats_ibfk_1` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oscl_t_region` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_user`
--

DROP TABLE IF EXISTS `oscl_t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_user` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dt_reg_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_password` char(60) NOT NULL,
  `s_secret` varchar(40) DEFAULT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `s_website` varchar(100) DEFAULT NULL,
  `s_phone_land` varchar(45) DEFAULT NULL,
  `s_phone_mobile` varchar(45) DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `s_pass_code` varchar(100) DEFAULT NULL,
  `s_pass_date` datetime DEFAULT NULL,
  `s_pass_ip` varchar(15) DEFAULT NULL,
  `fk_c_country_code` char(2) DEFAULT NULL,
  `s_country` varchar(40) DEFAULT NULL,
  `s_address` varchar(100) DEFAULT NULL,
  `s_zip` varchar(15) DEFAULT NULL,
  `fk_i_region_id` int(10) unsigned DEFAULT NULL,
  `s_region` varchar(100) DEFAULT NULL,
  `fk_i_city_id` int(10) unsigned DEFAULT NULL,
  `s_city` varchar(100) DEFAULT NULL,
  `fk_i_city_area_id` int(10) unsigned DEFAULT NULL,
  `s_city_area` varchar(200) DEFAULT NULL,
  `d_coord_lat` decimal(10,6) DEFAULT NULL,
  `d_coord_long` decimal(10,6) DEFAULT NULL,
  `i_permissions` varchar(2) DEFAULT '0',
  `b_company` tinyint(1) NOT NULL DEFAULT '0',
  `i_items` int(10) unsigned DEFAULT '0',
  `i_comments` int(10) unsigned DEFAULT '0',
  `s_username` varchar(100) NOT NULL,
  `dt_access_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `s_access_ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`pk_i_id`),
  UNIQUE KEY `s_email` (`s_email`),
  KEY `fk_c_country_code` (`fk_c_country_code`),
  KEY `fk_i_region_id` (`fk_i_region_id`),
  KEY `fk_i_city_id` (`fk_i_city_id`),
  KEY `fk_i_city_area_id` (`fk_i_city_area_id`),
  KEY `idx_s_name` (`s_name`(6)),
  KEY `idx_s_username` (`s_username`),
  CONSTRAINT `oscl_t_user_ibfk_2` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oscl_t_region` (`pk_i_id`),
  CONSTRAINT `oscl_t_user_ibfk_3` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oscl_t_city` (`pk_i_id`),
  CONSTRAINT `oscl_t_user_ibfk_4` FOREIGN KEY (`fk_i_city_area_id`) REFERENCES `oscl_t_city_area` (`pk_i_id`),
  CONSTRAINT `oscl_t_user_ibfk_5` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oscl_t_country` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_user_description`
--

DROP TABLE IF EXISTS `oscl_t_user_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_user_description` (
  `fk_i_user_id` int(10) unsigned NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_info` text,
  PRIMARY KEY (`fk_i_user_id`,`fk_c_locale_code`),
  KEY `fk_c_locale_code` (`fk_c_locale_code`),
  CONSTRAINT `oscl_t_user_description_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oscl_t_user` (`pk_i_id`),
  CONSTRAINT `oscl_t_user_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oscl_t_locale` (`pk_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_user_email_tmp`
--

DROP TABLE IF EXISTS `oscl_t_user_email_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_user_email_tmp` (
  `fk_i_user_id` int(10) unsigned NOT NULL,
  `s_new_email` varchar(100) NOT NULL,
  `dt_date` datetime NOT NULL,
  PRIMARY KEY (`fk_i_user_id`),
  CONSTRAINT `oscl_t_user_email_tmp_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oscl_t_user` (`pk_i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oscl_t_widget`
--

DROP TABLE IF EXISTS `oscl_t_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oscl_t_widget` (
  `pk_i_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_description` varchar(40) NOT NULL,
  `s_location` varchar(40) NOT NULL,
  `e_kind` enum('TEXT','HTML') NOT NULL,
  `s_content` mediumtext NOT NULL,
  PRIMARY KEY (`pk_i_id`),
  KEY `idx_s_description` (`s_description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 18:20:30
