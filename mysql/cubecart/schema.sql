-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816443080.hosting-data.io    Database: db816443080
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
-- Table structure for table `cube_CubeCart_access_log`
--

DROP TABLE IF EXISTS `cube_CubeCart_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_access_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(1) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL COMMENT 'Supports IPv6 addresses',
  `useragent` text NOT NULL,
  `success` enum('Y','N') NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `time` (`time`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_addressbook`
--

DROP TABLE IF EXISTS `cube_CubeCart_addressbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_addressbook` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `billing` enum('0','1') NOT NULL DEFAULT '0',
  `default` enum('0','1') NOT NULL DEFAULT '0',
  `description` varchar(250) NOT NULL,
  `title` varchar(20) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `line1` varchar(200) NOT NULL,
  `line2` varchar(200) NOT NULL,
  `town` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postcode` varchar(15) NOT NULL,
  `country` smallint(3) unsigned NOT NULL,
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`),
  KEY `billing` (`billing`),
  KEY `hash` (`hash`),
  KEY `default` (`default`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_admin_error_log`
--

DROP TABLE IF EXISTS `cube_CubeCart_admin_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_admin_error_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `read` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_admin_log`
--

DROP TABLE IF EXISTS `cube_CubeCart_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `admin_id` (`admin_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_admin_users`
--

DROP TABLE IF EXISTS `cube_CubeCart_admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_admin_users` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(32) DEFAULT NULL,
  `new_password` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(254) NOT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text,
  `failLevel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blockTime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastTime` int(10) unsigned NOT NULL DEFAULT '0',
  `session_id` varchar(32) DEFAULT NULL,
  `browser` text,
  `ip_address` varchar(45) DEFAULT NULL COMMENT 'Supports IPv6 addresses',
  `language` varchar(5) NOT NULL DEFAULT 'en-US',
  `dashboard_notes` text,
  `order_notify` tinyint(1) unsigned DEFAULT '0',
  `tour_shown` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_alt_shipping`
--

DROP TABLE IF EXISTS `cube_CubeCart_alt_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_alt_shipping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `byprice` smallint(1) NOT NULL,
  `global` smallint(1) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_alt_shipping_prices`
--

DROP TABLE IF EXISTS `cube_CubeCart_alt_shipping_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_alt_shipping_prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alt_ship_id` int(10) unsigned NOT NULL,
  `low` decimal(16,3) NOT NULL DEFAULT '0.000',
  `high` decimal(16,3) NOT NULL DEFAULT '0.000',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_blocker`
--

DROP TABLE IF EXISTS `cube_CubeCart_blocker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_blocker` (
  `block_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `last_attempt` int(10) unsigned NOT NULL DEFAULT '0',
  `ban_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `username` text NOT NULL,
  `location` char(1) NOT NULL,
  `user_agent` text NOT NULL,
  `ip_address` varchar(45) NOT NULL COMMENT 'Supports IPv6 addresses',
  PRIMARY KEY (`block_id`),
  KEY `location` (`location`),
  KEY `last_attempt` (`last_attempt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_category`
--

DROP TABLE IF EXISTS `cube_CubeCart_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `cat_desc` text,
  `cat_parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_image` int(10) NOT NULL,
  `per_ship` decimal(20,2) NOT NULL DEFAULT '0.00',
  `item_ship` decimal(20,2) NOT NULL DEFAULT '0.00',
  `item_int_ship` decimal(20,2) NOT NULL DEFAULT '0.00',
  `per_int_ship` decimal(20,2) NOT NULL DEFAULT '0.00',
  `hide` smallint(1) NOT NULL DEFAULT '0',
  `seo_meta_title` text NOT NULL,
  `seo_meta_description` text NOT NULL,
  `seo_meta_keywords` text NOT NULL,
  `priority` smallint(6) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`),
  KEY `cat_parent_id` (`cat_parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_category_index`
--

DROP TABLE IF EXISTS `cube_CubeCart_category_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_category_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `primary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_category_language`
--

DROP TABLE IF EXISTS `cube_CubeCart_category_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_category_language` (
  `translation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) DEFAULT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `cat_desc` text NOT NULL,
  `seo_meta_title` text,
  `seo_meta_description` text,
  `seo_meta_keywords` text,
  `seo_custom_url` text,
  PRIMARY KEY (`translation_id`) USING BTREE,
  KEY `cat_master_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_code_snippet`
--

DROP TABLE IF EXISTS `cube_CubeCart_code_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_code_snippet` (
  `snippet_id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `unique_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hook_trigger` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `php_code` blob NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`snippet_id`),
  UNIQUE KEY `unique_id` (`unique_id`),
  KEY `hook_trigger` (`hook_trigger`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_config`
--

DROP TABLE IF EXISTS `cube_CubeCart_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_config` (
  `name` varchar(100) NOT NULL,
  `array` mediumtext NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_cookie_consent`
--

DROP TABLE IF EXISTS `cube_CubeCart_cookie_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_cookie_consent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `log` text COLLATE utf8_unicode_ci,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip_address` (`ip_address`),
  KEY `session_id` (`session_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_coupons`
--

DROP TABLE IF EXISTS `cube_CubeCart_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_coupons` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `code` varchar(25) NOT NULL,
  `product_id` text NOT NULL,
  `discount_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `discount_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `expires` date NOT NULL,
  `allowed_uses` int(10) unsigned NOT NULL DEFAULT '0',
  `min_subtotal` decimal(16,2) unsigned NOT NULL DEFAULT '0.00',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `free_shipping` enum('0','1') NOT NULL DEFAULT '0',
  `subtotal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `cart_order_id` varchar(18) DEFAULT NULL,
  `email_sent` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_currency`
--

DROP TABLE IF EXISTS `cube_CubeCart_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_currency` (
  `currency_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varbinary(255) NOT NULL DEFAULT '',
  `code` varchar(7) NOT NULL,
  `iso` int(3) unsigned zerofill DEFAULT NULL,
  `symbol_left` tinyblob,
  `symbol_right` tinyblob,
  `value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `decimal_places` tinyint(2) unsigned DEFAULT '2',
  `updated` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `symbol_decimal` varchar(10) NOT NULL DEFAULT '.',
  `symbol_thousand` varchar(10) NOT NULL DEFAULT ',',
  PRIMARY KEY (`currency_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_customer`
--

DROP TABLE IF EXISTS `cube_CubeCart_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_customer` (
  `customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `password` varchar(128) DEFAULT NULL,
  `salt` varchar(32) DEFAULT NULL,
  `new_password` tinyint(1) NOT NULL DEFAULT '1',
  `verify` varchar(32) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `country` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `registered` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL COMMENT 'Supports IPv6 addresses',
  `order_count` int(10) unsigned DEFAULT '0',
  `type` tinyint(1) unsigned DEFAULT '1',
  `language` varchar(5) NOT NULL DEFAULT 'en-GB',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`),
  FULLTEXT KEY `fulltext` (`first_name`,`last_name`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_customer_group`
--

DROP TABLE IF EXISTS `cube_CubeCart_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_customer_group` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(150) NOT NULL,
  `group_description` text NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `group_name` (`group_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_customer_membership`
--

DROP TABLE IF EXISTS `cube_CubeCart_customer_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_customer_membership` (
  `membership_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`membership_id`),
  KEY `group_id` (`group_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_documents`
--

DROP TABLE IF EXISTS `cube_CubeCart_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_documents` (
  `doc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doc_parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `doc_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `doc_order` int(10) unsigned NOT NULL DEFAULT '0',
  `doc_terms` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `doc_home` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `doc_lang` varchar(5) NOT NULL,
  `doc_name` varchar(200) NOT NULL,
  `doc_content` mediumtext NOT NULL,
  `doc_url` varchar(200) DEFAULT NULL,
  `doc_url_openin` tinyint(1) unsigned DEFAULT NULL,
  `seo_meta_title` text NOT NULL,
  `seo_meta_description` text NOT NULL,
  `seo_meta_keywords` text NOT NULL,
  `seo_custom_url` text NOT NULL,
  `navigation_link` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `doc_parse` tinyint(1) NOT NULL DEFAULT '0',
  `hide_title` enum('0','1') DEFAULT '0',
  `doc_privacy` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`doc_id`),
  KEY `doc_parent_id` (`doc_parent_id`),
  KEY `doc_status` (`doc_status`),
  KEY `doc_home` (`doc_home`),
  KEY `doc_privacy` (`doc_privacy`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_downloads`
--

DROP TABLE IF EXISTS `cube_CubeCart_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_downloads` (
  `digital_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_inv_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cart_order_id` varchar(18) NOT NULL,
  `downloads` int(10) unsigned NOT NULL DEFAULT '0',
  `expire` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `accesskey` varchar(32) NOT NULL,
  PRIMARY KEY (`digital_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_email_content`
--

DROP TABLE IF EXISTS `cube_CubeCart_email_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_email_content` (
  `content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL DEFAULT '',
  `content_type` varchar(70) NOT NULL,
  `language` varchar(5) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `content_html` text NOT NULL,
  `content_text` text NOT NULL,
  PRIMARY KEY (`content_id`),
  KEY `content_type` (`content_type`),
  KEY `language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_email_log`
--

DROP TABLE IF EXISTS `cube_CubeCart_email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_email_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_html` text COLLATE utf8_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email_content_id` int(11) NOT NULL,
  `result` tinyint(1) NOT NULL,
  `fail_reason` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_email_template`
--

DROP TABLE IF EXISTS `cube_CubeCart_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_default` enum('0','1') NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `content_html` text NOT NULL,
  `content_text` text NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_extension_info`
--

DROP TABLE IF EXISTS `cube_CubeCart_extension_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_extension_info` (
  `file_id` int(10) unsigned NOT NULL,
  `seller_id` int(10) unsigned NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_filemanager`
--

DROP TABLE IF EXISTS `cube_CubeCart_filemanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_filemanager` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `filesize` int(10) unsigned NOT NULL,
  `mimetype` varchar(50) NOT NULL,
  `md5hash` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `filepath` (`filepath`),
  KEY `filename` (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_geo_country`
--

DROP TABLE IF EXISTS `cube_CubeCart_geo_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_geo_country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varbinary(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(3) unsigned zerofill DEFAULT NULL,
  `eu` enum('0','1') NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`iso`),
  KEY `id` (`id`),
  KEY `eu` (`eu`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_geo_zone`
--

DROP TABLE IF EXISTS `cube_CubeCart_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_geo_zone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `abbrev` varbinary(4) NOT NULL DEFAULT '',
  `name` varbinary(40) NOT NULL DEFAULT '',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id` (`country_id`,`abbrev`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=575 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_history`
--

DROP TABLE IF EXISTS `cube_CubeCart_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(50) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_hooks`
--

DROP TABLE IF EXISTS `cube_CubeCart_hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_hooks` (
  `hook_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) NOT NULL,
  `hook_name` varchar(255) NOT NULL COMMENT 'A descriptive name for the hook',
  `enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'All hooks should be disabled by DEFAULT',
  `trigger` varchar(255) NOT NULL COMMENT 'The trigger used to call the hook',
  `filepath` text NOT NULL,
  `priority` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hook_id`),
  KEY `trigger` (`trigger`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_image_index`
--

DROP TABLE IF EXISTS `cube_CubeCart_image_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_image_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `file_id` int(10) unsigned NOT NULL,
  `main_img` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`),
  KEY `productId` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_inventory`
--

DROP TABLE IF EXISTS `cube_CubeCart_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_inventory` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Status',
  `live_from` int(11) NOT NULL DEFAULT '0',
  `product_code` varchar(60) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1' COMMENT 'Quantity',
  `description` text,
  `description_short` text COMMENT 'Short Description',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT 'Retail Price',
  `sale_price` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT 'Sale Price',
  `cost_price` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT 'Cost Price',
  `name` varchar(250) DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT '0' COMMENT 'Main Category ID',
  `popularity` int(10) unsigned DEFAULT '0' COMMENT 'Popularity',
  `stock_level` int(11) DEFAULT '0' COMMENT 'Main Stock Level',
  `stock_warning` int(10) NOT NULL DEFAULT '0' COMMENT 'Main Stock Warning level',
  `use_stock_level` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Stock Control',
  `digital` int(4) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Digital?',
  `digital_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Digital Path',
  `product_weight` decimal(10,4) DEFAULT NULL,
  `tax_type` int(10) unsigned DEFAULT NULL COMMENT 'Tax Type',
  `tax_inclusive` tinyint(1) unsigned DEFAULT '0' COMMENT 'Price inclusive of tax',
  `featured` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Featured product',
  `latest` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Included on Homepage',
  `seo_meta_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'SEO Meta Title',
  `seo_meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'SEO Meta Description',
  `seo_meta_keywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'SEO Meta Keywords',
  `upc` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'UPC Code',
  `ean` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'EAN Code',
  `jan` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'JAN Code',
  `isbn` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ISBN Code',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date Added',
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Updated',
  `manufacturer` int(10) unsigned DEFAULT NULL COMMENT 'Manufacturer ID',
  `condition` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Condition',
  `brand` varchar(20) DEFAULT NULL,
  `gtin` varchar(20) DEFAULT NULL,
  `mpn` varchar(70) DEFAULT NULL,
  `google_category` varchar(250) DEFAULT NULL,
  `minimum_quantity` int(10) NOT NULL DEFAULT '0',
  `available` enum('0','1') NOT NULL DEFAULT '1',
  `product_width` decimal(10,4) DEFAULT NULL COMMENT 'Product Width',
  `product_height` decimal(10,4) DEFAULT NULL COMMENT 'Product Height',
  `product_depth` decimal(10,4) DEFAULT NULL COMMENT 'Product Depth',
  `dimension_unit` varchar(2) DEFAULT 'cm',
  PRIMARY KEY (`product_id`),
  KEY `status` (`status`),
  KEY `featured` (`featured`),
  KEY `live_from` (`live_from`),
  FULLTEXT KEY `fulltext` (`product_code`,`description`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_inventory_language`
--

DROP TABLE IF EXISTS `cube_CubeCart_inventory_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_inventory_language` (
  `translation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `language` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `description_short` text,
  `seo_meta_title` text NOT NULL,
  `seo_meta_description` text NOT NULL,
  `seo_meta_keywords` text NOT NULL,
  `seo_custom_url` text NOT NULL,
  PRIMARY KEY (`translation_id`) USING BTREE,
  FULLTEXT KEY `fulltext` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_invoice_template`
--

DROP TABLE IF EXISTS `cube_CubeCart_invoice_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_invoice_template` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hash` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_lang_strings`
--

DROP TABLE IF EXISTS `cube_CubeCart_lang_strings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_lang_strings` (
  `string_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(5) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`string_id`),
  KEY `language` (`language`),
  KEY `type` (`type`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_logo`
--

DROP TABLE IF EXISTS `cube_CubeCart_logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_logo` (
  `logo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL,
  `filename` varchar(150) NOT NULL,
  `mimetype` varchar(100) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `skin` varchar(100) NOT NULL,
  `style` varchar(100) NOT NULL,
  PRIMARY KEY (`logo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_manufacturers`
--

DROP TABLE IF EXISTS `cube_CubeCart_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_manufacturers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `URL` varchar(250) DEFAULT NULL,
  `image` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_modules`
--

DROP TABLE IF EXISTS `cube_CubeCart_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_modules` (
  `module_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(60) NOT NULL,
  `folder` varchar(60) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `countries` tinytext,
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`module_id`) USING BTREE,
  KEY `folder` (`folder`),
  KEY `status` (`status`),
  KEY `module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_newsletter`
--

DROP TABLE IF EXISTS `cube_CubeCart_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_newsletter` (
  `newsletter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_id` int(10) unsigned NOT NULL,
  `date_saved` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_sent` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(250) NOT NULL,
  `sender_email` varchar(254) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `content_html` text NOT NULL,
  `content_text` text NOT NULL,
  `dbl_opt` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_newsletter_subscriber`
--

DROP TABLE IF EXISTS `cube_CubeCart_newsletter_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) NOT NULL,
  `validation` varchar(50) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  `imported` tinyint(1) DEFAULT '0',
  `dbl_opt` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`subscriber_id`),
  KEY `customer_id` (`customer_id`),
  KEY `dbl_opt` (`dbl_opt`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_newsletter_subscriber_log`
--

DROP TABLE IF EXISTS `cube_CubeCart_newsletter_subscriber_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_newsletter_subscriber_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log` text COLLATE utf8_unicode_ci,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_option_assign`
--

DROP TABLE IF EXISTS `cube_CubeCart_option_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_option_assign` (
  `assign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `value_id` int(10) unsigned NOT NULL DEFAULT '0',
  `set_member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `set_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `option_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `option_negative` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `option_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `option_weight` decimal(10,4) DEFAULT NULL,
  `matrix_include` tinyint(1) NOT NULL DEFAULT '0',
  `absolute_price` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`assign_id`),
  KEY `member_id` (`set_member_id`),
  KEY `product` (`product`),
  KEY `set_enabled` (`set_enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_option_group`
--

DROP TABLE IF EXISTS `cube_CubeCart_option_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_option_group` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(50) NOT NULL DEFAULT '',
  `option_description` text NOT NULL,
  `option_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `option_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_option_matrix`
--

DROP TABLE IF EXISTS `cube_CubeCart_option_matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_option_matrix` (
  `matrix_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `options_identifier` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `cached_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cached_array` text COLLATE utf8_unicode_ci NOT NULL,
  `stock_level` int(11) NOT NULL,
  `use_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_code` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ean` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jan` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `restock_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`matrix_id`),
  KEY `product_id` (`product_id`,`options_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_option_value`
--

DROP TABLE IF EXISTS `cube_CubeCart_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value_name` varchar(100) NOT NULL DEFAULT '',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`),
  KEY `option_id` (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_options_set`
--

DROP TABLE IF EXISTS `cube_CubeCart_options_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_options_set` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_name` text NOT NULL,
  `set_description` text NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_options_set_member`
--

DROP TABLE IF EXISTS `cube_CubeCart_options_set_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_options_set_member` (
  `set_member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `value_id` int(10) unsigned NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`set_member_id`),
  KEY `set_id` (`set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_options_set_product`
--

DROP TABLE IF EXISTS `cube_CubeCart_options_set_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_options_set_product` (
  `set_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`set_product_id`),
  KEY `set_id` (`set_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_order_history`
--

DROP TABLE IF EXISTS `cube_CubeCart_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_order_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_order_id` varchar(18) NOT NULL,
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `updated` int(10) unsigned NOT NULL DEFAULT '0',
  `initiator` char(1) NOT NULL DEFAULT 'G',
  PRIMARY KEY (`history_id`),
  KEY `cart_order_id` (`cart_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_order_inventory`
--

DROP TABLE IF EXISTS `cube_CubeCart_order_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_order_inventory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_code` varchar(255) NOT NULL,
  `name` varchar(225) NOT NULL,
  `quantity` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `cost_price` decimal(16,2) NOT NULL,
  `tax` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax_percent` decimal(7,4) NOT NULL DEFAULT '0.0000',
  `cart_order_id` varchar(18) NOT NULL,
  `product_options` blob,
  `options_array` blob,
  `digital` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `stock_updated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `custom` blob,
  `coupon_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `options_identifier` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `cart_order_id` (`cart_order_id`),
  KEY `options_identifier` (`options_identifier`),
  KEY `quantity` (`quantity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_order_notes`
--

DROP TABLE IF EXISTS `cube_CubeCart_order_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_order_notes` (
  `note_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `cart_order_id` varchar(18) NOT NULL,
  `time` int(11) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`note_id`),
  KEY `admin_id` (`admin_id`,`cart_order_id`,`time`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_order_summary`
--

DROP TABLE IF EXISTS `cube_CubeCart_order_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_order_summary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_order_id` varchar(18) NOT NULL,
  `order_date` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `subtotal` decimal(16,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `shipping` decimal(16,2) NOT NULL DEFAULT '0.00',
  `shipping_tax` decimal(16,2) NOT NULL DEFAULT '0.00',
  `shipping_tax_rate` decimal(7,4) NOT NULL DEFAULT '0.0000',
  `total_tax` decimal(16,2) NOT NULL DEFAULT '0.00',
  `total` decimal(16,2) NOT NULL DEFAULT '0.00',
  `offline_capture` blob,
  `ship_method` varchar(100) DEFAULT NULL,
  `weight` decimal(16,4) DEFAULT NULL,
  `ship_product` varchar(100) DEFAULT NULL,
  `ship_date` date DEFAULT NULL,
  `ship_tracking` varchar(100) DEFAULT NULL,
  `gateway` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `line1` varchar(100) NOT NULL,
  `line2` varchar(100) DEFAULT NULL,
  `town` varchar(120) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postcode` varchar(50) NOT NULL,
  `country` smallint(3) unsigned NOT NULL,
  `title_d` varchar(100) NOT NULL,
  `first_name_d` varchar(100) NOT NULL,
  `last_name_d` varchar(100) NOT NULL,
  `company_name_d` varchar(200) DEFAULT NULL,
  `line1_d` varchar(100) NOT NULL,
  `line2_d` varchar(100) DEFAULT NULL,
  `town_d` varchar(120) NOT NULL,
  `state_d` varchar(100) NOT NULL,
  `postcode_d` varchar(50) NOT NULL,
  `country_d` smallint(3) unsigned NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `customer_comments` text,
  `ip_address` varchar(45) NOT NULL COMMENT 'Supports IPv6 addresses',
  `dashboard` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `discount_type` char(2) DEFAULT NULL,
  `basket` mediumblob,
  `lang` varchar(5) DEFAULT NULL,
  `note_to_customer` text NOT NULL,
  `custom_oid` varchar(50) DEFAULT NULL,
  `currency` varchar(3) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_order_id_2` (`cart_order_id`),
  UNIQUE KEY `custom_oid_2` (`custom_oid`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`),
  KEY `email` (`email`),
  KEY `order_date` (`order_date`),
  KEY `cart_order_id` (`cart_order_id`),
  KEY `custom_oid` (`custom_oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_order_tax`
--

DROP TABLE IF EXISTS `cube_CubeCart_order_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_order_tax` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_order_id` varchar(18) NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `amount` decimal(16,2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_order_id` (`cart_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_permissions`
--

DROP TABLE IF EXISTS `cube_CubeCart_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_permissions` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `section_id` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `admin_id` (`admin_id`),
  KEY `section_id` (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_pricing_group`
--

DROP TABLE IF EXISTS `cube_CubeCart_pricing_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_pricing_group` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `sale_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `tax_type` int(10) unsigned NOT NULL,
  `tax_inclusive` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`price_id`),
  KEY `group_id` (`group_id`),
  KEY `product_id` (`product_id`),
  KEY `tax_type` (`tax_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_pricing_quantity`
--

DROP TABLE IF EXISTS `cube_CubeCart_pricing_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_pricing_quantity` (
  `discount_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity` int(10) unsigned NOT NULL,
  `price` decimal(16,2) NOT NULL,
  PRIMARY KEY (`discount_id`),
  KEY `product_id` (`product_id`),
  KEY `group_id` (`group_id`),
  KEY `quantity` (`quantity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_request_log`
--

DROP TABLE IF EXISTS `cube_CubeCart_request_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_request_log` (
  `request_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_url` varchar(255) DEFAULT NULL,
  `request` blob NOT NULL,
  `result` blob NOT NULL,
  `response_code` varchar(3) DEFAULT NULL,
  `is_curl` enum('1','0') NOT NULL,
  `error` blob NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_reviews`
--

DROP TABLE IF EXISTS `cube_CubeCart_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `approved` smallint(1) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rating` decimal(2,1) unsigned NOT NULL DEFAULT '0.0',
  `vote_up` int(11) NOT NULL DEFAULT '0',
  `vote_down` int(11) NOT NULL DEFAULT '0',
  `anon` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `title` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `ip_address` varchar(45) NOT NULL COMMENT 'Supports IPv6 addresses',
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `votes` (`vote_up`,`vote_down`),
  FULLTEXT KEY `fulltext` (`name`,`email`,`title`,`review`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_saved_cart`
--

DROP TABLE IF EXISTS `cube_CubeCart_saved_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_saved_cart` (
  `customer_id` int(10) unsigned NOT NULL,
  `basket` mediumblob NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_search`
--

DROP TABLE IF EXISTS `cube_CubeCart_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_search` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `hits` int(64) NOT NULL DEFAULT '1',
  `searchstr` varbinary(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_seo_urls`
--

DROP TABLE IF EXISTS `cube_CubeCart_seo_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_seo_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `type` varchar(45) NOT NULL,
  `item_id` int(25) unsigned DEFAULT NULL,
  `custom` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`path`),
  KEY `id` (`id`),
  KEY `custom` (`custom`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_sessions`
--

DROP TABLE IF EXISTS `cube_CubeCart_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_sessions` (
  `session_id` varchar(32) NOT NULL,
  `session_start` int(10) unsigned NOT NULL DEFAULT '0',
  `session_last` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `location` varbinary(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL COMMENT 'Supports IPv6 addresses',
  `useragent` text,
  `acp` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `customer_id` (`customer_id`),
  KEY `session_last` (`session_last`),
  KEY `acp` (`acp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_shipping_rates`
--

DROP TABLE IF EXISTS `cube_CubeCart_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_shipping_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `method_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `min_weight` decimal(10,3) NOT NULL DEFAULT '0.000',
  `max_weight` decimal(10,3) NOT NULL DEFAULT '0.000',
  `min_value` decimal(16,2) NOT NULL DEFAULT '0.00',
  `max_value` decimal(16,2) NOT NULL DEFAULT '0.00',
  `min_items` int(11) NOT NULL DEFAULT '0',
  `max_items` int(11) NOT NULL DEFAULT '0',
  `flat_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `weight_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `percent_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `item_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `zone_id` (`zone_id`),
  KEY `method_name` (`method_name`),
  KEY `min_weight` (`min_weight`),
  KEY `max_weight` (`max_weight`),
  KEY `min_value` (`min_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_shipping_zones`
--

DROP TABLE IF EXISTS `cube_CubeCart_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_shipping_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `countries` text COLLATE utf8_unicode_ci NOT NULL,
  `states` text COLLATE utf8_unicode_ci NOT NULL,
  `postcodes` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `zone_name` (`zone_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_system_error_log`
--

DROP TABLE IF EXISTS `cube_CubeCart_system_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_system_error_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `read` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `time` (`time`),
  KEY `read` (`read`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_tax_class`
--

DROP TABLE IF EXISTS `cube_CubeCart_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_tax_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_tax_details`
--

DROP TABLE IF EXISTS `cube_CubeCart_tax_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_tax_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varbinary(150) NOT NULL DEFAULT '',
  `display` varbinary(150) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_tax_rates`
--

DROP TABLE IF EXISTS `cube_CubeCart_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_tax_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL DEFAULT '1',
  `details_id` int(10) unsigned NOT NULL DEFAULT '0',
  `country_id` int(10) unsigned NOT NULL DEFAULT '0',
  `county_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tax_percent` decimal(7,4) NOT NULL DEFAULT '0.0000',
  `goods` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_id` (`type_id`,`details_id`,`country_id`,`county_id`),
  KEY `active` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_trackback`
--

DROP TABLE IF EXISTS `cube_CubeCart_trackback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_trackback` (
  `trackback_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `url` varchar(250) NOT NULL,
  `title` text,
  `excerpt` tinytext,
  `blog_name` text,
  PRIMARY KEY (`trackback_id`),
  UNIQUE KEY `url` (`url`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cube_CubeCart_transactions`
--

DROP TABLE IF EXISTS `cube_CubeCart_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cube_CubeCart_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gateway` varchar(100) DEFAULT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `order_id` varchar(18) DEFAULT NULL,
  `trans_id` varchar(50) DEFAULT NULL,
  `time` int(10) unsigned DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `captured` decimal(16,2) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 18:20:25
