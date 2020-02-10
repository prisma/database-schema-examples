-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: all-prisma.de    Database: d02ff654
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
-- Table structure for table `ALwjp_addons`
--

DROP TABLE IF EXISTS `ALwjp_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_addons` (
  `addon_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `function` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `platform` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `license` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`addon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_blocking`
--

DROP TABLE IF EXISTS `ALwjp_blocking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_blocking` (
  `source_ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`source_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_dbsessions`
--

DROP TABLE IF EXISTS `ALwjp_dbsessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_dbsessions` (
  `id` varchar(148) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Session Id',
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Session Data',
  `last_accessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Last timestamp',
  `user` int(11) NOT NULL COMMENT 'User Id',
  PRIMARY KEY (`id`),
  KEY `last_accessed` (`last_accessed`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='WBCE Session Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_groups`
--

DROP TABLE IF EXISTS `ALwjp_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `system_permissions` text COLLATE utf8_unicode_ci NOT NULL,
  `module_permissions` text COLLATE utf8_unicode_ci NOT NULL,
  `template_permissions` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_droplets`
--

DROP TABLE IF EXISTS `ALwjp_mod_droplets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_droplets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `modified_when` int(11) NOT NULL DEFAULT '0',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `admin_edit` int(11) NOT NULL DEFAULT '0',
  `admin_view` int(11) NOT NULL DEFAULT '0',
  `show_wysiwyg` int(11) NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_jsadmin`
--

DROP TABLE IF EXISTS `ALwjp_mod_jsadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_jsadmin` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_menu_link`
--

DROP TABLE IF EXISTS `ALwjp_mod_menu_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_menu_link` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `target_page_id` int(11) NOT NULL DEFAULT '0',
  `redirect_type` int(3) NOT NULL DEFAULT '301',
  `anchor` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `extern` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_miniform`
--

DROP TABLE IF EXISTS `ALwjp_mod_miniform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_miniform` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `emailfrom` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirm_user` int(11) NOT NULL DEFAULT '0',
  `confirm_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'form',
  `successpage` int(11) NOT NULL DEFAULT '0',
  `use_ajax` int(11) NOT NULL DEFAULT '1',
  `use_recaptcha` int(11) NOT NULL DEFAULT '0',
  `recaptcha_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recaptcha_secret` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remote_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remote_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable_tls` int(11) NOT NULL DEFAULT '0',
  `no_store` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_miniform_data`
--

DROP TABLE IF EXISTS `ALwjp_mod_miniform_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_miniform_data` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `session_data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `submitted_when` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_news_img_groups`
--

DROP TABLE IF EXISTS `ALwjp_mod_news_img_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_news_img_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_news_img_img`
--

DROP TABLE IF EXISTS `ALwjp_mod_news_img_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_news_img_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picname` varchar(255) NOT NULL DEFAULT '',
  `picdesc` varchar(255) NOT NULL DEFAULT '',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_news_img_posts`
--

DROP TABLE IF EXISTS `ALwjp_mod_news_img_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_news_img_posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `image` varchar(256) NOT NULL DEFAULT '',
  `content_short` text NOT NULL,
  `content_long` text NOT NULL,
  `content_block2` text NOT NULL,
  `published_when` int(11) NOT NULL DEFAULT '0',
  `published_until` int(11) NOT NULL DEFAULT '0',
  `posted_when` int(11) NOT NULL DEFAULT '0',
  `posted_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_news_img_settings`
--

DROP TABLE IF EXISTS `ALwjp_mod_news_img_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_news_img_settings` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `header` text NOT NULL,
  `post_loop` text NOT NULL,
  `view_order` int(11) NOT NULL DEFAULT '0',
  `footer` text NOT NULL,
  `block2` text NOT NULL,
  `posts_per_page` int(11) NOT NULL DEFAULT '0',
  `post_header` text NOT NULL,
  `post_content` text NOT NULL,
  `image_loop` text NOT NULL,
  `post_footer` text NOT NULL,
  `resize_preview` varchar(50) DEFAULT NULL,
  `crop_preview` char(1) NOT NULL DEFAULT 'N',
  `gallery` text NOT NULL,
  `imgthumbsize` varchar(50) DEFAULT NULL,
  `imgmaxwidth` varchar(50) DEFAULT NULL,
  `imgmaxheight` varchar(50) DEFAULT NULL,
  `imgmaxsize` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_outputfilter_dashboard`
--

DROP TABLE IF EXISTS `ALwjp_mod_outputfilter_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_outputfilter_dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userfunc` tinyint(4) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `allowedit` tinyint(4) NOT NULL DEFAULT '0',
  `allowedittarget` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(249) NOT NULL,
  `func` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `csspath` varchar(255) NOT NULL,
  `funcname` varchar(255) NOT NULL,
  `configurl` varchar(255) NOT NULL,
  `plugin` varchar(255) NOT NULL,
  `helppath` text NOT NULL,
  `modules` text NOT NULL,
  `desc` longtext NOT NULL,
  `pages` text NOT NULL,
  `pages_parent` text NOT NULL,
  `additional_values` longtext NOT NULL,
  `additional_fields` text NOT NULL,
  `additional_fields_languages` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_page_seo_tool`
--

DROP TABLE IF EXISTS `ALwjp_mod_page_seo_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_page_seo_tool` (
  `settings_json` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_sitemap`
--

DROP TABLE IF EXISTS `ALwjp_mod_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_sitemap` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `header` text NOT NULL,
  `sitemaploop` text NOT NULL,
  `footer` text NOT NULL,
  `level_header` text NOT NULL,
  `level_footer` text NOT NULL,
  `static` int(11) NOT NULL DEFAULT '0',
  `startatroot` int(11) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `show_hidden` int(11) NOT NULL DEFAULT '0',
  `show_settings` int(1) NOT NULL DEFAULT '1',
  `menus` varchar(30) NOT NULL DEFAULT '0',
  `layout` varchar(128) NOT NULL DEFAULT '0',
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_wbstats_day`
--

DROP TABLE IF EXISTS `ALwjp_mod_wbstats_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_wbstats_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(8) NOT NULL DEFAULT '',
  `user` int(10) NOT NULL DEFAULT '0',
  `view` int(10) NOT NULL DEFAULT '0',
  `bots` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `day` (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_wbstats_ips`
--

DROP TABLE IF EXISTS `ALwjp_mod_wbstats_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_wbstats_ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) NOT NULL DEFAULT '',
  `session` varchar(64) NOT NULL DEFAULT '',
  `time` int(20) NOT NULL DEFAULT '0',
  `online` int(20) NOT NULL DEFAULT '0',
  `page` varchar(255) NOT NULL DEFAULT '',
  `loggedin` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_wbstats_keywords`
--

DROP TABLE IF EXISTS `ALwjp_mod_wbstats_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_wbstats_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(8) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `view` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_wbstats_lang`
--

DROP TABLE IF EXISTS `ALwjp_mod_wbstats_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_wbstats_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(8) NOT NULL DEFAULT '',
  `language` varchar(2) NOT NULL DEFAULT '',
  `view` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_wbstats_pages`
--

DROP TABLE IF EXISTS `ALwjp_mod_wbstats_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_wbstats_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(8) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL DEFAULT '',
  `view` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_wbstats_ref`
--

DROP TABLE IF EXISTS `ALwjp_mod_wbstats_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_wbstats_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(8) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `view` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_wrapper`
--

DROP TABLE IF EXISTS `ALwjp_mod_wrapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_wrapper` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `height` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_mod_wysiwyg`
--

DROP TABLE IF EXISTS `ALwjp_mod_wysiwyg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_mod_wysiwyg` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_pages`
--

DROP TABLE IF EXISTS `ALwjp_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `root_parent` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `page_trail` text COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visibility` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visibility_backup` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `menu` int(11) NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `searching` int(11) NOT NULL DEFAULT '0',
  `admin_groups` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_users` text COLLATE utf8_unicode_ci NOT NULL,
  `viewing_groups` text COLLATE utf8_unicode_ci NOT NULL,
  `viewing_users` text COLLATE utf8_unicode_ci NOT NULL,
  `modified_when` int(11) NOT NULL DEFAULT '0',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_search`
--

DROP TABLE IF EXISTS `ALwjp_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_search` (
  `search_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `extra` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`search_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_sections`
--

DROP TABLE IF EXISTS `ALwjp_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_sections` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `block` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `publ_start` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `publ_end` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `namesection` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_settings`
--

DROP TABLE IF EXISTS `ALwjp_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALwjp_users`
--

DROP TABLE IF EXISTS `ALwjp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALwjp_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DE',
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `signup_checksum` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '0',
  `gdpr_check` int(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remember_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_reset` int(11) NOT NULL DEFAULT '0',
  `timezone` int(11) NOT NULL DEFAULT '0',
  `date_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `home_folder` text COLLATE utf8_unicode_ci NOT NULL,
  `login_when` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `signup_timestamp` int(11) NOT NULL DEFAULT '0',
  `signup_timeout` int(11) NOT NULL DEFAULT '0',
  `signup_confirmcode` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-07 13:40:38
