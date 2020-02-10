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
-- Table structure for table `kokn_albums`
--

DROP TABLE IF EXISTS `kokn_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_albums` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `old_slug` text,
  `summary` varchar(255) DEFAULT NULL,
  `description` text,
  `sort` varchar(255) DEFAULT 'manual ASC',
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `left_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_on` int(10) DEFAULT NULL,
  `featured_order` int(11) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `video_count` int(11) NOT NULL DEFAULT '0',
  `published_on` int(10) DEFAULT NULL,
  `created_on` int(10) NOT NULL,
  `modified_on` int(10) NOT NULL,
  `album_type` tinyint(1) NOT NULL DEFAULT '0',
  `internal_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deleted` (`deleted`),
  KEY `level` (`level`),
  KEY `left_id` (`left_id`),
  KEY `right_id` (`right_id`),
  KEY `total_count` (`total_count`),
  KEY `video_count` (`video_count`),
  KEY `created_on` (`created_on`),
  KEY `published_on` (`published_on`),
  KEY `modified_on` (`modified_on`),
  KEY `album_type` (`album_type`),
  KEY `internal_id` (`internal_id`),
  KEY `featured_featured_order` (`featured`,`featured_order`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_applications`
--

DROP TABLE IF EXISTS `kokn_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_applications` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `nonce` varchar(32) DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  `role` varchar(10) DEFAULT 'read',
  `name` varchar(255) DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `single_use` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `nonce` (`nonce`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_categories`
--

DROP TABLE IF EXISTS `kokn_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_categories` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `album_count` int(11) NOT NULL DEFAULT '0',
  `text_count` int(11) NOT NULL DEFAULT '0',
  `content_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `album_count` (`album_count`),
  KEY `content_count` (`content_count`),
  KEY `text_count` (`text_count`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_content`
--

DROP TABLE IF EXISTS `kokn_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_content` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `old_slug` text,
  `filename` varchar(255) DEFAULT NULL,
  `caption` text,
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `max_download` tinyint(1) NOT NULL DEFAULT '0',
  `license` char(3) NOT NULL DEFAULT 'all',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_order` int(11) DEFAULT NULL,
  `favorite_order` int(11) DEFAULT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT '0',
  `favorited_on` int(10) DEFAULT NULL,
  `featured_on` int(10) DEFAULT NULL,
  `uploaded_on` int(10) NOT NULL,
  `captured_on` int(10) NOT NULL,
  `published_on` int(10) DEFAULT NULL,
  `modified_on` int(10) NOT NULL,
  `file_modified_on` int(10) NOT NULL,
  `focal_point` varchar(255) DEFAULT NULL,
  `filesize` int(11) NOT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `aspect_ratio` decimal(5,3) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `file_type` tinyint(1) NOT NULL DEFAULT '0',
  `lg_preview` varchar(255) DEFAULT NULL,
  `internal_id` char(32) NOT NULL,
  `has_exif` tinyint(1) NOT NULL DEFAULT '0',
  `has_iptc` tinyint(1) NOT NULL DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `source_url` varchar(255) DEFAULT NULL,
  `html` text,
  `storage_url` varchar(255) DEFAULT NULL,
  `storage_url_midsize` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filename` (`filename`),
  KEY `title` (`title`),
  KEY `deleted` (`deleted`),
  KEY `uploaded_on` (`uploaded_on`),
  KEY `captured_on` (`captured_on`),
  KEY `modified_on` (`modified_on`),
  KEY `published_on` (`published_on`),
  KEY `filesize` (`filesize`),
  KEY `file_type` (`file_type`),
  KEY `has_iptc` (`has_iptc`),
  KEY `has_exif` (`has_exif`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `aspect_ratio` (`aspect_ratio`),
  KEY `featured_featured_order` (`featured`,`featured_order`),
  KEY `favorite_favorite_order` (`favorite`,`favorite_order`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_drafts`
--

DROP TABLE IF EXISTS `kokn_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_drafts` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `live_data` mediumtext,
  `data` mediumtext NOT NULL,
  `current` tinyint(1) NOT NULL DEFAULT '0',
  `draft` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` int(10) NOT NULL,
  `modified_on` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `path` (`path`),
  KEY `current` (`current`),
  KEY `draft` (`draft`),
  KEY `created_on` (`created_on`),
  KEY `modified_on` (`modified_on`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_history`
--

DROP TABLE IF EXISTS `kokn_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_history` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` text,
  `created_on` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `created_on` (`created_on`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_join_albums_categories`
--

DROP TABLE IF EXISTS `kokn_join_albums_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_join_albums_categories` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_join_albums_content`
--

DROP TABLE IF EXISTS `kokn_join_albums_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_join_albums_content` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `content_id` (`content_id`),
  KEY `order` (`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_join_albums_covers`
--

DROP TABLE IF EXISTS `kokn_join_albums_covers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_join_albums_covers` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `cover_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `cover_id` (`cover_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_join_albums_tags`
--

DROP TABLE IF EXISTS `kokn_join_albums_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_join_albums_tags` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `album_id` (`album_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_join_albums_text`
--

DROP TABLE IF EXISTS `kokn_join_albums_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_join_albums_text` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `text_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `text_id` (`text_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_join_categories_content`
--

DROP TABLE IF EXISTS `kokn_join_categories_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_join_categories_content` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_join_categories_text`
--

DROP TABLE IF EXISTS `kokn_join_categories_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_join_categories_text` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `text_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `text_id` (`text_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_join_content_tags`
--

DROP TABLE IF EXISTS `kokn_join_content_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_join_content_tags` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `content_id` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_join_tags_text`
--

DROP TABLE IF EXISTS `kokn_join_tags_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_join_tags_text` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `text_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `text_id` (`text_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_plugins`
--

DROP TABLE IF EXISTS `kokn_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_plugins` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '1',
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `path` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_settings`
--

DROP TABLE IF EXISTS `kokn_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_settings` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_slugs`
--

DROP TABLE IF EXISTS `kokn_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_slugs` (
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_tags`
--

DROP TABLE IF EXISTS `kokn_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_tags` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_on` int(10) NOT NULL,
  `modified_on` int(10) NOT NULL,
  `last_used` int(10) DEFAULT NULL,
  `album_count` int(11) NOT NULL DEFAULT '0',
  `text_count` int(11) NOT NULL DEFAULT '0',
  `content_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_text`
--

DROP TABLE IF EXISTS `kokn_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_text` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` text,
  `draft_title` text,
  `slug` varchar(255) DEFAULT NULL,
  `old_slug` text,
  `featured_image_id` int(10) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_on` int(10) DEFAULT NULL,
  `featured_order` int(11) DEFAULT NULL,
  `custom_featured_image` varchar(255) DEFAULT NULL,
  `content` longtext,
  `draft` longtext,
  `excerpt` varchar(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `page_type` int(1) NOT NULL DEFAULT '0',
  `published_on` int(10) DEFAULT NULL,
  `created_on` int(10) NOT NULL,
  `modified_on` int(10) NOT NULL,
  `internal_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `created_on` (`created_on`),
  KEY `modified_on` (`modified_on`),
  KEY `published_on` (`published_on`),
  KEY `page_type` (`page_type`),
  KEY `internal_id` (`internal_id`),
  KEY `featured_image_id` (`featured_image_id`),
  KEY `slug` (`slug`),
  KEY `featured_featured_order` (`featured`,`featured_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_trash`
--

DROP TABLE IF EXISTS `kokn_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_trash` (
  `id` varchar(255) NOT NULL,
  `data` text,
  `created_on` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_on` (`created_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_urls`
--

DROP TABLE IF EXISTS `kokn_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_urls` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `data` text,
  `created_on` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kokn_users`
--

DROP TABLE IF EXISTS `kokn_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kokn_users` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_on` int(10) NOT NULL,
  `modified_on` int(10) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `public_first_name` varchar(255) DEFAULT NULL,
  `public_last_name` varchar(255) DEFAULT NULL,
  `public_display` varchar(255) DEFAULT 'both',
  `public_email` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `internal_id` char(32) NOT NULL,
  `remember_me` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password` (`password`),
  KEY `email` (`email`),
  KEY `internal_id` (`internal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 18:20:12
