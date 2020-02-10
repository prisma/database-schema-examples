-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816450876.hosting-data.io    Database: db816450876
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
-- Table structure for table `e107_admin_log`
--

DROP TABLE IF EXISTS `e107_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_admin_log` (
  `dblog_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dblog_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `dblog_microtime` int(10) unsigned NOT NULL DEFAULT '0',
  `dblog_type` tinyint(3) NOT NULL DEFAULT '0',
  `dblog_eventcode` varchar(10) NOT NULL DEFAULT '',
  `dblog_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dblog_ip` varchar(45) NOT NULL DEFAULT '',
  `dblog_title` varchar(255) NOT NULL DEFAULT '',
  `dblog_remarks` text NOT NULL,
  PRIMARY KEY (`dblog_id`),
  KEY `dblog_datestamp` (`dblog_datestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_audit_log`
--

DROP TABLE IF EXISTS `e107_audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_audit_log` (
  `dblog_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dblog_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `dblog_microtime` int(10) unsigned NOT NULL DEFAULT '0',
  `dblog_eventcode` varchar(10) NOT NULL DEFAULT '',
  `dblog_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dblog_user_name` varchar(100) NOT NULL DEFAULT '',
  `dblog_ip` varchar(45) NOT NULL DEFAULT '',
  `dblog_title` varchar(255) NOT NULL DEFAULT '',
  `dblog_remarks` text NOT NULL,
  PRIMARY KEY (`dblog_id`),
  KEY `dblog_datestamp` (`dblog_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_banlist`
--

DROP TABLE IF EXISTS `e107_banlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_banlist` (
  `banlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `banlist_ip` varchar(100) NOT NULL DEFAULT '',
  `banlist_bantype` tinyint(3) NOT NULL DEFAULT '0',
  `banlist_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `banlist_banexpires` int(10) unsigned NOT NULL DEFAULT '0',
  `banlist_admin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `banlist_reason` tinytext NOT NULL,
  `banlist_notes` tinytext NOT NULL,
  PRIMARY KEY (`banlist_id`),
  KEY `banlist_ip` (`banlist_ip`),
  KEY `banlist_datestamp` (`banlist_datestamp`),
  KEY `banlist_banexpires` (`banlist_banexpires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_comments`
--

DROP TABLE IF EXISTS `e107_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_subject` varchar(100) NOT NULL DEFAULT '',
  `comment_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_author_name` varchar(100) NOT NULL DEFAULT '',
  `comment_author_email` varchar(200) NOT NULL DEFAULT '',
  `comment_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_comment` text NOT NULL,
  `comment_blocked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_ip` varchar(45) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '0',
  `comment_lock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comment_share` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `comment_blocked` (`comment_blocked`),
  KEY `comment_author_id` (`comment_author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_core`
--

DROP TABLE IF EXISTS `e107_core`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_core` (
  `e107_name` varchar(100) NOT NULL DEFAULT '',
  `e107_value` text NOT NULL,
  PRIMARY KEY (`e107_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_core_media`
--

DROP TABLE IF EXISTS `e107_core_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_core_media` (
  `media_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type` varchar(50) NOT NULL DEFAULT '',
  `media_name` varchar(255) NOT NULL DEFAULT '',
  `media_caption` varchar(255) NOT NULL DEFAULT '',
  `media_description` varchar(255) NOT NULL DEFAULT '',
  `media_category` varchar(255) NOT NULL DEFAULT '',
  `media_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `media_author` int(10) unsigned NOT NULL DEFAULT '0',
  `media_url` varchar(255) NOT NULL DEFAULT '',
  `media_size` int(20) unsigned NOT NULL DEFAULT '0',
  `media_dimensions` varchar(25) NOT NULL DEFAULT '',
  `media_userclass` varchar(255) NOT NULL DEFAULT '',
  `media_usedby` text NOT NULL,
  `media_tags` text NOT NULL,
  PRIMARY KEY (`media_id`),
  UNIQUE KEY `media_url` (`media_url`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_core_media_cat`
--

DROP TABLE IF EXISTS `e107_core_media_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_core_media_cat` (
  `media_cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_cat_owner` varchar(255) NOT NULL DEFAULT '',
  `media_cat_category` varchar(255) NOT NULL DEFAULT '',
  `media_cat_title` text NOT NULL,
  `media_cat_sef` varchar(255) NOT NULL DEFAULT '',
  `media_cat_diz` text NOT NULL,
  `media_cat_class` int(5) DEFAULT '0',
  `media_cat_image` varchar(255) NOT NULL DEFAULT '',
  `media_cat_order` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`media_cat_id`),
  UNIQUE KEY `media_cat_category` (`media_cat_category`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_cron`
--

DROP TABLE IF EXISTS `e107_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_cron` (
  `cron_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cron_name` varchar(50) NOT NULL,
  `cron_category` varchar(20) NOT NULL,
  `cron_description` varchar(255) NOT NULL,
  `cron_function` varchar(50) NOT NULL,
  `cron_tab` varchar(255) NOT NULL,
  `cron_lastrun` int(13) unsigned NOT NULL,
  `cron_active` int(1) unsigned NOT NULL,
  PRIMARY KEY (`cron_id`),
  UNIQUE KEY `cron_function` (`cron_function`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_dblog`
--

DROP TABLE IF EXISTS `e107_dblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_dblog` (
  `dblog_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dblog_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `dblog_microtime` int(10) unsigned NOT NULL DEFAULT '0',
  `dblog_type` tinyint(3) NOT NULL DEFAULT '0',
  `dblog_eventcode` varchar(10) NOT NULL DEFAULT '',
  `dblog_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dblog_user_name` varchar(100) NOT NULL DEFAULT '',
  `dblog_ip` varchar(45) NOT NULL DEFAULT '',
  `dblog_caller` varchar(255) NOT NULL DEFAULT '',
  `dblog_title` varchar(255) NOT NULL DEFAULT '',
  `dblog_remarks` text NOT NULL,
  PRIMARY KEY (`dblog_id`),
  KEY `dblog_datestamp` (`dblog_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_generic`
--

DROP TABLE IF EXISTS `e107_generic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_generic` (
  `gen_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gen_type` varchar(80) NOT NULL DEFAULT '',
  `gen_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gen_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `gen_ip` varchar(80) NOT NULL DEFAULT '',
  `gen_intdata` int(10) unsigned NOT NULL DEFAULT '0',
  `gen_chardata` text NOT NULL,
  PRIMARY KEY (`gen_id`),
  KEY `gen_type` (`gen_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_links`
--

DROP TABLE IF EXISTS `e107_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(100) NOT NULL DEFAULT '',
  `link_url` varchar(200) NOT NULL DEFAULT '',
  `link_description` text NOT NULL,
  `link_button` varchar(100) NOT NULL DEFAULT '',
  `link_category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `link_order` int(10) unsigned NOT NULL DEFAULT '0',
  `link_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `link_open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link_class` varchar(255) NOT NULL DEFAULT '0',
  `link_function` varchar(100) NOT NULL DEFAULT '',
  `link_sefurl` varchar(255) NOT NULL,
  `link_owner` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_mail_content`
--

DROP TABLE IF EXISTS `e107_mail_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_mail_content` (
  `mail_source_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail_content_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mail_total_count` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_togo_count` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_sent_count` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_fail_count` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_bounce_count` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_start_send` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_end_send` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_create_date` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_creator` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_create_app` varchar(20) NOT NULL DEFAULT '',
  `mail_e107_priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mail_notify_complete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mail_last_date` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_title` varchar(100) NOT NULL DEFAULT '',
  `mail_subject` varchar(100) NOT NULL DEFAULT '',
  `mail_body` text,
  `mail_body_templated` text,
  `mail_other` text,
  `mail_media` text,
  PRIMARY KEY (`mail_source_id`),
  KEY `mail_content_status` (`mail_content_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_mail_recipients`
--

DROP TABLE IF EXISTS `e107_mail_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_mail_recipients` (
  `mail_target_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail_recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_recipient_email` varchar(80) NOT NULL DEFAULT '',
  `mail_recipient_name` varchar(80) NOT NULL DEFAULT '',
  `mail_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mail_detail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_send_date` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_target_info` text,
  PRIMARY KEY (`mail_target_id`),
  KEY `mail_status` (`mail_status`),
  KEY `mail_detail_id` (`mail_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_menus`
--

DROP TABLE IF EXISTS `e107_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_menus` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) NOT NULL DEFAULT '',
  `menu_location` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `menu_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `menu_class` varchar(255) NOT NULL DEFAULT '0',
  `menu_pages` text NOT NULL,
  `menu_path` varchar(100) NOT NULL DEFAULT '',
  `menu_layout` varchar(100) NOT NULL DEFAULT '',
  `menu_parms` text NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_news`
--

DROP TABLE IF EXISTS `e107_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_news` (
  `news_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) NOT NULL DEFAULT '',
  `news_sef` varchar(200) NOT NULL DEFAULT '',
  `news_body` longtext NOT NULL,
  `news_extended` longtext NOT NULL,
  `news_meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `news_meta_description` text NOT NULL,
  `news_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `news_author` int(10) unsigned NOT NULL DEFAULT '0',
  `news_category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `news_allow_comments` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `news_start` int(10) unsigned NOT NULL DEFAULT '0',
  `news_end` int(10) unsigned NOT NULL DEFAULT '0',
  `news_class` varchar(255) NOT NULL DEFAULT '0',
  `news_render_type` varchar(20) NOT NULL DEFAULT '0',
  `news_comment_total` int(10) unsigned NOT NULL DEFAULT '0',
  `news_summary` text NOT NULL,
  `news_thumbnail` text NOT NULL,
  `news_sticky` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `news_template` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `news_category` (`news_category`),
  KEY `news_start_end` (`news_start`,`news_end`),
  KEY `news_datestamp` (`news_datestamp`),
  KEY `news_sticky` (`news_sticky`),
  KEY `news_render_type` (`news_render_type`),
  KEY `news_class` (`news_class`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_news_category`
--

DROP TABLE IF EXISTS `e107_news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_news_category` (
  `category_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL DEFAULT '',
  `category_sef` varchar(200) NOT NULL DEFAULT '',
  `category_meta_description` text NOT NULL,
  `category_meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `category_manager` tinyint(3) unsigned NOT NULL DEFAULT '254',
  `category_icon` varchar(250) NOT NULL DEFAULT '',
  `category_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category_template` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `category_order` (`category_order`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_online`
--

DROP TABLE IF EXISTS `e107_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_online` (
  `online_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `online_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `online_user_id` varchar(100) NOT NULL DEFAULT '',
  `online_ip` varchar(45) NOT NULL DEFAULT '',
  `online_location` text NOT NULL,
  `online_pagecount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `online_active` int(10) unsigned NOT NULL DEFAULT '0',
  `online_agent` varchar(255) NOT NULL DEFAULT '',
  `online_language` varchar(2) NOT NULL DEFAULT '',
  KEY `online_ip` (`online_ip`),
  KEY `online_ip_user_id` (`online_ip`,`online_user_id`),
  KEY `online_timestamp` (`online_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_page`
--

DROP TABLE IF EXISTS `e107_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(250) NOT NULL DEFAULT '',
  `page_sef` varchar(250) NOT NULL DEFAULT '',
  `page_chapter` int(10) unsigned NOT NULL DEFAULT '0',
  `page_metakeys` varchar(250) NOT NULL DEFAULT '',
  `page_metadscr` mediumtext,
  `page_text` mediumtext,
  `page_author` int(10) unsigned NOT NULL DEFAULT '0',
  `page_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `page_rating_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `page_comment_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `page_password` varchar(50) NOT NULL DEFAULT '',
  `page_class` varchar(250) NOT NULL DEFAULT '0',
  `page_ip_restrict` text,
  `page_template` varchar(50) NOT NULL DEFAULT '',
  `page_order` int(4) unsigned NOT NULL DEFAULT '9999',
  `page_fields` mediumtext,
  `menu_name` varchar(50) DEFAULT '',
  `menu_title` varchar(250) NOT NULL DEFAULT '',
  `menu_text` mediumtext,
  `menu_image` varchar(250) NOT NULL DEFAULT '',
  `menu_icon` varchar(250) NOT NULL DEFAULT '',
  `menu_template` varchar(50) NOT NULL DEFAULT '',
  `menu_class` varchar(250) NOT NULL DEFAULT '0',
  `menu_button_url` varchar(250) NOT NULL DEFAULT '',
  `menu_button_text` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_page_chapters`
--

DROP TABLE IF EXISTS `e107_page_chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_page_chapters` (
  `chapter_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `chapter_parent` int(4) unsigned NOT NULL DEFAULT '0',
  `chapter_name` varchar(200) NOT NULL DEFAULT '',
  `chapter_sef` varchar(200) NOT NULL DEFAULT '',
  `chapter_meta_description` text NOT NULL,
  `chapter_meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `chapter_manager` tinyint(3) unsigned NOT NULL DEFAULT '254',
  `chapter_icon` varchar(250) NOT NULL DEFAULT '',
  `chapter_image` varchar(250) NOT NULL DEFAULT '',
  `chapter_order` int(6) unsigned NOT NULL DEFAULT '0',
  `chapter_template` varchar(50) NOT NULL DEFAULT '',
  `chapter_visibility` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `chapter_fields` mediumtext,
  PRIMARY KEY (`chapter_id`),
  KEY `chapter_order` (`chapter_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_plugin`
--

DROP TABLE IF EXISTS `e107_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_plugin` (
  `plugin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_name` varchar(100) NOT NULL DEFAULT '',
  `plugin_version` varchar(10) NOT NULL DEFAULT '',
  `plugin_path` varchar(100) NOT NULL DEFAULT '',
  `plugin_installflag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `plugin_addons` text NOT NULL,
  `plugin_category` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`plugin_id`),
  UNIQUE KEY `plugin_path` (`plugin_path`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_rate`
--

DROP TABLE IF EXISTS `e107_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rate_table` varchar(100) NOT NULL DEFAULT '',
  `rate_itemid` int(10) unsigned NOT NULL DEFAULT '0',
  `rate_rating` int(10) unsigned NOT NULL DEFAULT '0',
  `rate_votes` int(10) unsigned NOT NULL DEFAULT '0',
  `rate_voters` text NOT NULL,
  `rate_up` int(10) unsigned NOT NULL DEFAULT '0',
  `rate_down` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_submitnews`
--

DROP TABLE IF EXISTS `e107_submitnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_submitnews` (
  `submitnews_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `submitnews_name` varchar(100) NOT NULL DEFAULT '',
  `submitnews_email` varchar(100) NOT NULL DEFAULT '',
  `submitnews_user` int(10) unsigned NOT NULL DEFAULT '0',
  `submitnews_title` varchar(200) NOT NULL DEFAULT '',
  `submitnews_category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `submitnews_item` text NOT NULL,
  `submitnews_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `submitnews_ip` varchar(45) NOT NULL DEFAULT '',
  `submitnews_auth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `submitnews_file` text NOT NULL,
  `submitnews_keywords` varchar(255) NOT NULL DEFAULT '',
  `submitnews_description` text,
  `submitnews_summary` text,
  `submitnews_media` text,
  PRIMARY KEY (`submitnews_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_tmp`
--

DROP TABLE IF EXISTS `e107_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_tmp` (
  `tmp_ip` varchar(45) NOT NULL DEFAULT '',
  `tmp_time` int(10) unsigned NOT NULL DEFAULT '0',
  `tmp_info` text NOT NULL,
  KEY `tmp_ip` (`tmp_ip`),
  KEY `tmp_time` (`tmp_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_upload`
--

DROP TABLE IF EXISTS `e107_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_upload` (
  `upload_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_poster` varchar(100) NOT NULL DEFAULT '',
  `upload_email` varchar(100) NOT NULL DEFAULT '',
  `upload_website` varchar(100) NOT NULL DEFAULT '',
  `upload_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `upload_name` varchar(100) NOT NULL DEFAULT '',
  `upload_version` varchar(10) NOT NULL DEFAULT '',
  `upload_file` varchar(180) NOT NULL DEFAULT '',
  `upload_ss` varchar(100) NOT NULL DEFAULT '',
  `upload_description` text NOT NULL,
  `upload_demo` varchar(100) NOT NULL DEFAULT '',
  `upload_filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `upload_active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upload_category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upload_owner` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`upload_id`),
  KEY `upload_active` (`upload_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_user`
--

DROP TABLE IF EXISTS `e107_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `user_loginname` varchar(100) NOT NULL DEFAULT '',
  `user_customtitle` varchar(100) NOT NULL DEFAULT '',
  `user_password` varchar(255) NOT NULL DEFAULT '',
  `user_sess` varchar(100) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_signature` text NOT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT '',
  `user_hideemail` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_join` int(10) unsigned NOT NULL DEFAULT '0',
  `user_lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `user_currentvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `user_lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `user_chats` int(10) unsigned NOT NULL DEFAULT '0',
  `user_comments` int(10) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(45) NOT NULL DEFAULT '',
  `user_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_prefs` text NOT NULL,
  `user_visits` int(10) unsigned NOT NULL DEFAULT '0',
  `user_admin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_login` varchar(100) NOT NULL DEFAULT '',
  `user_class` text NOT NULL,
  `user_perms` text NOT NULL,
  `user_realm` text NOT NULL,
  `user_pwchange` int(10) unsigned NOT NULL DEFAULT '0',
  `user_xup` text,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_loginname` (`user_loginname`),
  KEY `join_ban_index` (`user_join`,`user_ban`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_user_extended`
--

DROP TABLE IF EXISTS `e107_user_extended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_user_extended` (
  `user_extended_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_hidden_fields` text,
  PRIMARY KEY (`user_extended_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_user_extended_struct`
--

DROP TABLE IF EXISTS `e107_user_extended_struct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_user_extended_struct` (
  `user_extended_struct_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_extended_struct_name` varchar(255) NOT NULL DEFAULT '',
  `user_extended_struct_text` varchar(255) NOT NULL DEFAULT '',
  `user_extended_struct_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_extended_struct_parms` varchar(255) NOT NULL DEFAULT '',
  `user_extended_struct_values` text NOT NULL,
  `user_extended_struct_default` varchar(255) NOT NULL DEFAULT '',
  `user_extended_struct_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_extended_struct_write` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_extended_struct_required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_extended_struct_signup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_extended_struct_applicable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_extended_struct_order` int(10) unsigned NOT NULL DEFAULT '0',
  `user_extended_struct_parent` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_extended_struct_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `e107_userclass_classes`
--

DROP TABLE IF EXISTS `e107_userclass_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e107_userclass_classes` (
  `userclass_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userclass_name` varchar(100) NOT NULL DEFAULT '',
  `userclass_description` varchar(250) NOT NULL DEFAULT '',
  `userclass_editclass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userclass_parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userclass_accum` varchar(250) NOT NULL DEFAULT '',
  `userclass_visibility` smallint(5) NOT NULL DEFAULT '0',
  `userclass_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userclass_icon` varchar(250) NOT NULL DEFAULT '',
  `userclass_perms` text NOT NULL,
  PRIMARY KEY (`userclass_id`)
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

-- Dump completed on 2020-02-10 18:20:32
