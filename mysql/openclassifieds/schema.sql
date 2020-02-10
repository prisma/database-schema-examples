-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816448999.hosting-data.io    Database: db816448999
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
-- Table structure for table `opcl_access`
--

DROP TABLE IF EXISTS `opcl_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_access` (
  `id_access` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_role` int(10) unsigned NOT NULL,
  `access` varchar(100) NOT NULL,
  PRIMARY KEY (`id_access`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_ads`
--

DROP TABLE IF EXISTS `opcl_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_ads` (
  `id_ad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL DEFAULT '0',
  `id_location` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(145) NOT NULL,
  `seotitle` varchar(145) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(145) DEFAULT '0',
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  `price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `phone` varchar(30) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `published` datetime DEFAULT NULL,
  `featured` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `has_images` tinyint(1) NOT NULL DEFAULT '0',
  `stock` int(10) unsigned DEFAULT NULL,
  `rate` float(4,2) DEFAULT NULL,
  `favorited` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ad`) USING BTREE,
  UNIQUE KEY `opcl_ads_UK_seotitle` (`seotitle`),
  KEY `opcl_ads_IK_id_user` (`id_user`),
  KEY `opcl_ads_IK_id_category` (`id_category`),
  KEY `opcl_ads_IK_title` (`title`),
  KEY `opcl_ads_IK_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_categories`
--

DROP TABLE IF EXISTS `opcl_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_categories` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `order` int(2) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_category_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_deep` int(2) unsigned NOT NULL DEFAULT '0',
  `seoname` varchar(145) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `last_modified` datetime DEFAULT NULL,
  `has_image` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`) USING BTREE,
  UNIQUE KEY `opcl_categories_IK_seo_name` (`seoname`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_config`
--

DROP TABLE IF EXISTS `opcl_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_config` (
  `group_name` varchar(128) NOT NULL,
  `config_key` varchar(128) NOT NULL,
  `config_value` mediumtext,
  PRIMARY KEY (`config_key`),
  UNIQUE KEY `opcl_config_UK_group_name_AND_config_key` (`group_name`,`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_content`
--

DROP TABLE IF EXISTS `opcl_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_content` (
  `id_content` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(8) NOT NULL DEFAULT 'en_UK',
  `order` int(2) unsigned NOT NULL DEFAULT '0',
  `title` varchar(145) NOT NULL,
  `seotitle` varchar(145) NOT NULL,
  `description` mediumtext,
  `from_email` varchar(145) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` enum('page','email','help') NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_content`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_coupons`
--

DROP TABLE IF EXISTS `opcl_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_coupons` (
  `id_coupon` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned DEFAULT NULL,
  `name` varchar(145) NOT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `discount_amount` decimal(14,3) NOT NULL DEFAULT '0.000',
  `discount_percentage` decimal(14,3) NOT NULL DEFAULT '0.000',
  `number_coupons` int(10) DEFAULT NULL,
  `valid_date` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_coupon`),
  UNIQUE KEY `opcl_coupons_UK_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_crontab`
--

DROP TABLE IF EXISTS `opcl_crontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_crontab` (
  `id_crontab` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `period` varchar(50) NOT NULL,
  `callback` varchar(140) NOT NULL,
  `params` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_started` datetime DEFAULT NULL,
  `date_finished` datetime DEFAULT NULL,
  `date_next` datetime DEFAULT NULL,
  `times_executed` bigint(20) DEFAULT '0',
  `output` varchar(50) DEFAULT NULL,
  `running` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_crontab`),
  UNIQUE KEY `opcl_crontab_UK_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_favorites`
--

DROP TABLE IF EXISTS `opcl_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_favorites` (
  `id_favorite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_ad` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_favorite`) USING BTREE,
  KEY `opcl_favorites_IK_id_user_AND_id_ad` (`id_user`,`id_ad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_forums`
--

DROP TABLE IF EXISTS `opcl_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_forums` (
  `id_forum` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `order` int(2) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_forum_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_deep` int(2) unsigned NOT NULL DEFAULT '0',
  `seoname` varchar(145) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_forum`) USING BTREE,
  UNIQUE KEY `opcl_forums_IK_seo_name` (`seoname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_locations`
--

DROP TABLE IF EXISTS `opcl_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_locations` (
  `id_location` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `order` int(2) unsigned NOT NULL DEFAULT '0',
  `id_location_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_deep` int(2) unsigned NOT NULL DEFAULT '0',
  `seoname` varchar(145) NOT NULL,
  `description` text,
  `last_modified` datetime DEFAULT NULL,
  `has_image` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  `id_geoname` int(10) unsigned DEFAULT NULL,
  `fcodename_geoname` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id_location`),
  UNIQUE KEY `opcl_loations_UK_seoname` (`seoname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_messages`
--

DROP TABLE IF EXISTS `opcl_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_messages` (
  `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_ad` int(10) unsigned DEFAULT NULL,
  `id_message_parent` int(10) unsigned DEFAULT NULL,
  `id_user_from` int(10) unsigned NOT NULL,
  `id_user_to` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `read_date` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_to` tinyint(1) NOT NULL DEFAULT '0',
  `status_from` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_message`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_orders`
--

DROP TABLE IF EXISTS `opcl_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_orders` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_ad` int(10) unsigned DEFAULT NULL,
  `id_product` varchar(20) NOT NULL,
  `id_coupon` int(10) unsigned DEFAULT NULL,
  `paymethod` varchar(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pay_date` datetime DEFAULT NULL,
  `currency` char(3) NOT NULL,
  `amount` decimal(14,3) NOT NULL DEFAULT '0.000',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(145) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `featured_days` int(10) unsigned DEFAULT NULL,
  `VAT_country` varchar(20) DEFAULT NULL,
  `VAT_number` varchar(20) DEFAULT NULL,
  `VAT` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `opcl_orders_IK_id_user` (`id_user`),
  KEY `opcl_orders_IK_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_plans`
--

DROP TABLE IF EXISTS `opcl_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_plans` (
  `id_plan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `seoname` varchar(145) NOT NULL,
  `description` mediumtext NOT NULL,
  `price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `days` int(10) DEFAULT '1',
  `amount_ads` int(10) DEFAULT '1',
  `marketplace_fee` decimal(14,3) NOT NULL DEFAULT '0.000',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_plan`),
  UNIQUE KEY `opcl_plan_UK_seoname` (`seoname`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_posts`
--

DROP TABLE IF EXISTS `opcl_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_posts` (
  `id_post` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_post_parent` int(10) unsigned DEFAULT NULL,
  `id_forum` int(10) unsigned DEFAULT NULL,
  `title` varchar(245) NOT NULL,
  `seotitle` varchar(245) NOT NULL,
  `description` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_post`) USING BTREE,
  UNIQUE KEY `opcl_posts_UK_seotitle` (`seotitle`),
  KEY `opcl_posts_IK_id_user` (`id_user`),
  KEY `opcl_posts_IK_id_post_parent` (`id_post_parent`),
  KEY `opcl_posts_IK_id_forum` (`id_forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_reviews`
--

DROP TABLE IF EXISTS `opcl_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_reviews` (
  `id_review` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_ad` int(10) unsigned NOT NULL,
  `rate` int(2) unsigned NOT NULL DEFAULT '0',
  `description` varchar(1000) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_review`) USING BTREE,
  KEY `opcl_reviews_IK_id_user` (`id_user`),
  KEY `opcl_reviews_IK_id_ad` (`id_ad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_roles`
--

DROP TABLE IF EXISTS `opcl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_roles` (
  `id_role` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `opcl_roles_UK_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_subscribers`
--

DROP TABLE IF EXISTS `opcl_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_subscribers` (
  `id_subscribe` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL DEFAULT '0',
  `id_location` int(10) unsigned NOT NULL DEFAULT '0',
  `min_price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `max_price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_subscribe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_subscriptions`
--

DROP TABLE IF EXISTS `opcl_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_subscriptions` (
  `id_subscription` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `id_plan` int(10) unsigned NOT NULL,
  `amount_ads` int(10) DEFAULT '1',
  `amount_ads_left` int(10) DEFAULT '0',
  `expire_date` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_subscription`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_users`
--

DROP TABLE IF EXISTS `opcl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_users` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `seoname` varchar(145) DEFAULT NULL,
  `email` varchar(145) NOT NULL,
  `password` varchar(64) NOT NULL,
  `description` text,
  `status` int(1) NOT NULL DEFAULT '0',
  `id_role` int(10) unsigned DEFAULT '1',
  `id_location` int(10) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` datetime DEFAULT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `last_ip` bigint(20) DEFAULT NULL,
  `user_agent` varchar(40) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `token_created` datetime DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `api_token` varchar(40) DEFAULT NULL,
  `hybridauth_provider_name` varchar(40) DEFAULT NULL,
  `hybridauth_provider_uid` varchar(245) DEFAULT NULL,
  `subscriber` tinyint(1) NOT NULL DEFAULT '1',
  `rate` float(4,2) DEFAULT NULL,
  `has_image` tinyint(1) NOT NULL DEFAULT '0',
  `failed_attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_failed` datetime DEFAULT NULL,
  `notification_date` datetime DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `stripe_user_id` varchar(140) DEFAULT NULL,
  `stripe_agreement` varchar(40) DEFAULT NULL,
  `google_authenticator` varchar(40) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `opcl_users_UK_email` (`email`),
  UNIQUE KEY `opcl_users_UK_token` (`token`),
  UNIQUE KEY `opcl_users_UK_api_token` (`api_token`),
  UNIQUE KEY `opcl_users_UK_seoname` (`seoname`),
  UNIQUE KEY `opcl_users_UK_provider_AND_uid` (`hybridauth_provider_name`,`hybridauth_provider_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcl_visits`
--

DROP TABLE IF EXISTS `opcl_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcl_visits` (
  `id_visit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_ad` int(10) unsigned DEFAULT NULL,
  `hits` int(10) NOT NULL DEFAULT '0',
  `contacts` int(10) NOT NULL DEFAULT '0',
  `created` date NOT NULL,
  PRIMARY KEY (`id_visit`),
  UNIQUE KEY `opcl_visits_UK_id_ad_AND_created` (`id_ad`,`created`)
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

-- Dump completed on 2020-02-10 18:20:31
