-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816448485.hosting-data.io    Database: db816448485
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
-- Table structure for table `dotc_blog`
--

DROP TABLE IF EXISTS `dotc_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_blog` (
  `blog_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `blog_uid` varchar(32) COLLATE utf8_bin NOT NULL,
  `blog_creadt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `blog_upddt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `blog_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `blog_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `blog_desc` longtext COLLATE utf8_bin,
  `blog_status` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`blog_id`),
  KEY `dotc_idx_blog_blog_upddt` (`blog_upddt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_category`
--

DROP TABLE IF EXISTS `dotc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_category` (
  `cat_id` bigint(20) NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `cat_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_desc` longtext COLLATE utf8_bin,
  `cat_position` int(11) DEFAULT '0',
  `cat_lft` int(11) DEFAULT NULL,
  `cat_rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `dotc_uk_cat_url` (`cat_url`,`blog_id`),
  KEY `dotc_idx_category_blog_id` (`blog_id`) USING BTREE,
  KEY `dotc_idx_category_cat_lft_blog_id` (`blog_id`,`cat_lft`) USING BTREE,
  KEY `dotc_idx_category_cat_rgt_blog_id` (`blog_id`,`cat_rgt`) USING BTREE,
  CONSTRAINT `dotc_fk_category_blog` FOREIGN KEY (`blog_id`) REFERENCES `dotc_blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_comment`
--

DROP TABLE IF EXISTS `dotc_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_comment` (
  `comment_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `comment_dt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `comment_tz` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT 'UTC',
  `comment_upddt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `comment_author` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `comment_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `comment_site` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `comment_content` longtext COLLATE utf8_bin,
  `comment_words` longtext COLLATE utf8_bin,
  `comment_ip` varchar(39) COLLATE utf8_bin DEFAULT NULL,
  `comment_status` smallint(6) DEFAULT '0',
  `comment_spam_status` varchar(128) COLLATE utf8_bin DEFAULT '0',
  `comment_spam_filter` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `comment_trackback` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `dotc_idx_comment_post_id` (`post_id`) USING BTREE,
  KEY `dotc_idx_comment_post_id_dt_status` (`post_id`,`comment_dt`,`comment_status`) USING BTREE,
  CONSTRAINT `dotc_fk_comment_post` FOREIGN KEY (`post_id`) REFERENCES `dotc_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_link`
--

DROP TABLE IF EXISTS `dotc_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_link` (
  `link_id` bigint(20) NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `link_href` varchar(255) COLLATE utf8_bin NOT NULL,
  `link_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `link_desc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link_lang` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `link_xfn` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link_position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `dotc_idx_link_blog_id` (`blog_id`) USING BTREE,
  CONSTRAINT `dotc_fk_link_blog` FOREIGN KEY (`blog_id`) REFERENCES `dotc_blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_log`
--

DROP TABLE IF EXISTS `dotc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_log` (
  `log_id` bigint(20) NOT NULL,
  `user_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `log_table` varchar(255) COLLATE utf8_bin NOT NULL,
  `log_dt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `log_ip` varchar(39) COLLATE utf8_bin NOT NULL,
  `log_msg` longtext COLLATE utf8_bin,
  PRIMARY KEY (`log_id`),
  KEY `dotc_idx_log_user_id` (`user_id`) USING BTREE,
  KEY `dotc_fk_log_blog` (`blog_id`),
  CONSTRAINT `dotc_fk_log_blog` FOREIGN KEY (`blog_id`) REFERENCES `dotc_blog` (`blog_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_media`
--

DROP TABLE IF EXISTS `dotc_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_media` (
  `media_id` bigint(20) NOT NULL,
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `media_path` varchar(255) COLLATE utf8_bin NOT NULL,
  `media_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `media_file` varchar(255) COLLATE utf8_bin NOT NULL,
  `media_dir` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '.',
  `media_meta` longtext COLLATE utf8_bin,
  `media_dt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `media_creadt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `media_upddt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `media_private` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`media_id`),
  KEY `dotc_idx_media_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `dotc_fk_media_user` FOREIGN KEY (`user_id`) REFERENCES `dotc_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_meta`
--

DROP TABLE IF EXISTS `dotc_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_meta` (
  `meta_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`meta_id`,`meta_type`,`post_id`),
  KEY `dotc_idx_meta_post_id` (`post_id`) USING BTREE,
  KEY `dotc_idx_meta_meta_type` (`meta_type`) USING BTREE,
  CONSTRAINT `dotc_fk_meta_post` FOREIGN KEY (`post_id`) REFERENCES `dotc_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_permissions`
--

DROP TABLE IF EXISTS `dotc_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_permissions` (
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `permissions` longtext COLLATE utf8_bin,
  PRIMARY KEY (`user_id`,`blog_id`),
  KEY `dotc_idx_permissions_blog_id` (`blog_id`) USING BTREE,
  CONSTRAINT `dotc_fk_permissions_user` FOREIGN KEY (`user_id`) REFERENCES `dotc_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dotc_fk_permissions_blog` FOREIGN KEY (`blog_id`) REFERENCES `dotc_blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_ping`
--

DROP TABLE IF EXISTS `dotc_ping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_ping` (
  `post_id` bigint(20) NOT NULL,
  `ping_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `ping_dt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`post_id`,`ping_url`),
  CONSTRAINT `dotc_fk_ping_post` FOREIGN KEY (`post_id`) REFERENCES `dotc_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_post`
--

DROP TABLE IF EXISTS `dotc_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_post` (
  `post_id` bigint(20) NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `cat_id` bigint(20) DEFAULT NULL,
  `post_dt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `post_tz` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT 'UTC',
  `post_creadt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `post_upddt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `post_password` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `post_type` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'post',
  `post_format` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'xhtml',
  `post_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_lang` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `post_title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `post_excerpt` longtext COLLATE utf8_bin,
  `post_excerpt_xhtml` longtext COLLATE utf8_bin,
  `post_content` longtext COLLATE utf8_bin,
  `post_content_xhtml` longtext COLLATE utf8_bin NOT NULL,
  `post_notes` longtext COLLATE utf8_bin,
  `post_meta` longtext COLLATE utf8_bin,
  `post_words` longtext COLLATE utf8_bin,
  `post_status` smallint(6) NOT NULL DEFAULT '0',
  `post_firstpub` smallint(6) NOT NULL DEFAULT '0',
  `post_selected` smallint(6) NOT NULL DEFAULT '0',
  `post_position` int(11) NOT NULL DEFAULT '0',
  `post_open_comment` smallint(6) NOT NULL DEFAULT '0',
  `post_open_tb` smallint(6) NOT NULL DEFAULT '0',
  `nb_comment` int(11) NOT NULL DEFAULT '0',
  `nb_trackback` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `dotc_uk_post_url` (`post_url`,`post_type`,`blog_id`),
  KEY `dotc_idx_post_cat_id` (`cat_id`) USING BTREE,
  KEY `dotc_idx_post_user_id` (`user_id`) USING BTREE,
  KEY `dotc_idx_post_blog_id` (`blog_id`) USING BTREE,
  KEY `dotc_idx_post_post_dt` (`post_dt`) USING BTREE,
  KEY `dotc_idx_post_post_dt_post_id` (`post_dt`,`post_id`) USING BTREE,
  KEY `dotc_idx_blog_post_post_dt_post_id` (`blog_id`,`post_dt`,`post_id`) USING BTREE,
  KEY `dotc_idx_blog_post_post_status` (`blog_id`,`post_status`) USING BTREE,
  CONSTRAINT `dotc_fk_post_blog` FOREIGN KEY (`blog_id`) REFERENCES `dotc_blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dotc_fk_post_category` FOREIGN KEY (`cat_id`) REFERENCES `dotc_category` (`cat_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `dotc_fk_post_user` FOREIGN KEY (`user_id`) REFERENCES `dotc_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_post_media`
--

DROP TABLE IF EXISTS `dotc_post_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_post_media` (
  `media_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `link_type` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'attachment',
  PRIMARY KEY (`media_id`,`post_id`,`link_type`),
  KEY `dotc_idx_post_media_post_id` (`post_id`) USING BTREE,
  KEY `dotc_idx_post_media_media_id` (`media_id`) USING BTREE,
  CONSTRAINT `dotc_fk_media_post` FOREIGN KEY (`post_id`) REFERENCES `dotc_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dotc_fk_media` FOREIGN KEY (`media_id`) REFERENCES `dotc_media` (`media_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_pref`
--

DROP TABLE IF EXISTS `dotc_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_pref` (
  `pref_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `pref_ws` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'system',
  `pref_value` longtext COLLATE utf8_bin,
  `pref_type` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT 'string',
  `pref_label` longtext COLLATE utf8_bin,
  UNIQUE KEY `dotc_uk_pref` (`pref_ws`,`pref_id`,`user_id`),
  KEY `dotc_idx_pref_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `dotc_fk_pref_user` FOREIGN KEY (`user_id`) REFERENCES `dotc_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_session`
--

DROP TABLE IF EXISTS `dotc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_session` (
  `ses_id` varchar(40) COLLATE utf8_bin NOT NULL,
  `ses_time` int(11) NOT NULL DEFAULT '0',
  `ses_start` int(11) NOT NULL DEFAULT '0',
  `ses_value` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ses_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_setting`
--

DROP TABLE IF EXISTS `dotc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_setting` (
  `setting_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `setting_ns` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'system',
  `setting_value` longtext COLLATE utf8_bin,
  `setting_type` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT 'string',
  `setting_label` longtext COLLATE utf8_bin,
  UNIQUE KEY `dotc_uk_setting` (`setting_ns`,`setting_id`,`blog_id`),
  KEY `dotc_idx_setting_blog_id` (`blog_id`) USING BTREE,
  CONSTRAINT `dotc_fk_setting_blog` FOREIGN KEY (`blog_id`) REFERENCES `dotc_blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_spamrule`
--

DROP TABLE IF EXISTS `dotc_spamrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_spamrule` (
  `rule_id` bigint(20) NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `rule_type` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT 'word',
  `rule_content` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `dotc_idx_spamrule_blog_id` (`blog_id`) USING BTREE,
  CONSTRAINT `dotc_fk_spamrule_blog` FOREIGN KEY (`blog_id`) REFERENCES `dotc_blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_user`
--

DROP TABLE IF EXISTS `dotc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_user` (
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `user_super` smallint(6) DEFAULT NULL,
  `user_status` smallint(6) NOT NULL DEFAULT '1',
  `user_pwd` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_change_pwd` smallint(6) NOT NULL DEFAULT '0',
  `user_recover_key` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_firstname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_displayname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_desc` longtext COLLATE utf8_bin,
  `user_default_blog` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_options` longtext COLLATE utf8_bin,
  `user_lang` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `user_tz` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT 'UTC',
  `user_post_status` smallint(6) NOT NULL DEFAULT '-2',
  `user_creadt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `user_upddt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`user_id`),
  KEY `dotc_idx_user_user_default_blog` (`user_default_blog`) USING BTREE,
  KEY `dotc_idx_user_user_super` (`user_super`) USING BTREE,
  CONSTRAINT `dotc_fk_user_default_blog` FOREIGN KEY (`user_default_blog`) REFERENCES `dotc_blog` (`blog_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dotc_version`
--

DROP TABLE IF EXISTS `dotc_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dotc_version` (
  `module` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
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
