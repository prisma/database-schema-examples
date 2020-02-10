-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: all-prisma.de    Database: d02ff9c2
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
-- Table structure for table `j1l44_faqadminlog`
--

DROP TABLE IF EXISTS `j1l44_faqadminlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqadminlog` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `usr` int(11) NOT NULL,
  `text` text NOT NULL,
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqattachment`
--

DROP TABLE IF EXISTS `j1l44_faqattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqattachment` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `record_lang` varchar(5) NOT NULL,
  `real_hash` char(32) NOT NULL,
  `virtual_hash` char(32) NOT NULL,
  `password_hash` char(40) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL,
  `encrypted` int(11) NOT NULL DEFAULT '0',
  `mime_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqattachment_file`
--

DROP TABLE IF EXISTS `j1l44_faqattachment_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqattachment_file` (
  `virtual_hash` char(32) NOT NULL,
  `contents` blob NOT NULL,
  PRIMARY KEY (`virtual_hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqcaptcha`
--

DROP TABLE IF EXISTS `j1l44_faqcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqcaptcha` (
  `id` varchar(6) NOT NULL,
  `useragent` varchar(255) NOT NULL,
  `language` varchar(5) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `captcha_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqcategories`
--

DROP TABLE IF EXISTS `j1l44_faqcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqcategories` (
  `id` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `parent_id` smallint(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '-1',
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`id`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqcategory_group`
--

DROP TABLE IF EXISTS `j1l44_faqcategory_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqcategory_group` (
  `category_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqcategory_user`
--

DROP TABLE IF EXISTS `j1l44_faqcategory_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqcategory_user` (
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqcategoryrelations`
--

DROP TABLE IF EXISTS `j1l44_faqcategoryrelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqcategoryrelations` (
  `category_id` int(11) NOT NULL,
  `category_lang` varchar(5) NOT NULL,
  `record_id` int(11) NOT NULL,
  `record_lang` varchar(5) NOT NULL,
  PRIMARY KEY (`category_id`,`category_lang`,`record_id`,`record_lang`),
  KEY `idx_records` (`record_id`,`record_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqchanges`
--

DROP TABLE IF EXISTS `j1l44_faqchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqchanges` (
  `id` int(11) NOT NULL,
  `beitrag` smallint(6) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `revision_id` int(11) NOT NULL DEFAULT '0',
  `usr` int(11) NOT NULL,
  `datum` int(11) NOT NULL,
  `what` text,
  PRIMARY KEY (`id`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqcomments`
--

DROP TABLE IF EXISTS `j1l44_faqcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqcomments` (
  `id_comment` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `usr` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `datum` varchar(64) NOT NULL,
  `helped` text,
  PRIMARY KEY (`id_comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqconfig`
--

DROP TABLE IF EXISTS `j1l44_faqconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqconfig` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqdata`
--

DROP TABLE IF EXISTS `j1l44_faqdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqdata` (
  `id` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `solution_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL DEFAULT '0',
  `active` char(3) NOT NULL,
  `sticky` int(11) NOT NULL,
  `keywords` text,
  `thema` text NOT NULL,
  `content` longtext,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` char(1) DEFAULT 'y',
  `updated` varchar(15) NOT NULL,
  `links_state` varchar(7) DEFAULT NULL,
  `links_check_date` int(11) NOT NULL DEFAULT '0',
  `date_start` varchar(14) NOT NULL DEFAULT '00000000000000',
  `date_end` varchar(14) NOT NULL DEFAULT '99991231235959',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text,
  PRIMARY KEY (`id`,`lang`),
  FULLTEXT KEY `keywords` (`keywords`,`thema`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqdata_group`
--

DROP TABLE IF EXISTS `j1l44_faqdata_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqdata_group` (
  `record_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqdata_revisions`
--

DROP TABLE IF EXISTS `j1l44_faqdata_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqdata_revisions` (
  `id` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `solution_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL DEFAULT '0',
  `active` char(3) NOT NULL,
  `sticky` int(11) NOT NULL,
  `keywords` text,
  `thema` text NOT NULL,
  `content` longtext,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` char(1) DEFAULT 'y',
  `updated` varchar(15) NOT NULL,
  `links_state` varchar(7) DEFAULT NULL,
  `links_check_date` int(11) NOT NULL DEFAULT '0',
  `date_start` varchar(14) NOT NULL DEFAULT '00000000000000',
  `date_end` varchar(14) NOT NULL DEFAULT '99991231235959',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text,
  PRIMARY KEY (`id`,`lang`,`solution_id`,`revision_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqdata_tags`
--

DROP TABLE IF EXISTS `j1l44_faqdata_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqdata_tags` (
  `record_id` int(11) NOT NULL,
  `tagging_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`,`tagging_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqdata_user`
--

DROP TABLE IF EXISTS `j1l44_faqdata_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqdata_user` (
  `record_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqglossary`
--

DROP TABLE IF EXISTS `j1l44_faqglossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqglossary` (
  `id` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `item` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  PRIMARY KEY (`id`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqgroup`
--

DROP TABLE IF EXISTS `j1l44_faqgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqgroup` (
  `group_id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `description` text,
  `auto_join` int(11) DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqgroup_right`
--

DROP TABLE IF EXISTS `j1l44_faqgroup_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqgroup_right` (
  `group_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`right_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqinstances`
--

DROP TABLE IF EXISTS `j1l44_faqinstances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqinstances` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `comment` text,
  `created` timestamp NOT NULL DEFAULT '1977-04-07 13:47:00',
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqinstances_config`
--

DROP TABLE IF EXISTS `j1l44_faqinstances_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqinstances_config` (
  `instance_id` int(11) NOT NULL,
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`instance_id`,`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqnews`
--

DROP TABLE IF EXISTS `j1l44_faqnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqnews` (
  `id` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `header` varchar(255) NOT NULL,
  `artikel` text NOT NULL,
  `datum` varchar(14) NOT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT 'y',
  `comment` char(1) DEFAULT 'n',
  `date_start` varchar(14) NOT NULL DEFAULT '00000000000000',
  `date_end` varchar(14) NOT NULL DEFAULT '99991231235959',
  `link` varchar(255) DEFAULT NULL,
  `linktitel` varchar(255) DEFAULT NULL,
  `target` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqquestions`
--

DROP TABLE IF EXISTS `j1l44_faqquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqquestions` (
  `id` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `created` varchar(20) NOT NULL,
  `is_visible` char(1) DEFAULT 'Y',
  `answer_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqright`
--

DROP TABLE IF EXISTS `j1l44_faqright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqright` (
  `right_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `for_users` int(11) DEFAULT '1',
  `for_groups` int(11) DEFAULT '1',
  PRIMARY KEY (`right_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqsearches`
--

DROP TABLE IF EXISTS `j1l44_faqsearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqsearches` (
  `id` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `searchterm` varchar(255) NOT NULL,
  `searchdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqsessions`
--

DROP TABLE IF EXISTS `j1l44_faqsessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqsessions` (
  `sid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `idx_time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqstopwords`
--

DROP TABLE IF EXISTS `j1l44_faqstopwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqstopwords` (
  `id` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `stopword` varchar(64) NOT NULL,
  PRIMARY KEY (`id`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqtags`
--

DROP TABLE IF EXISTS `j1l44_faqtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqtags` (
  `tagging_id` int(11) NOT NULL,
  `tagging_name` varchar(255) NOT NULL,
  PRIMARY KEY (`tagging_id`,`tagging_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faquser`
--

DROP TABLE IF EXISTS `j1l44_faquser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faquser` (
  `user_id` int(11) NOT NULL,
  `login` varchar(128) NOT NULL,
  `session_id` varchar(150) DEFAULT NULL,
  `session_timestamp` int(11) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `account_status` varchar(50) DEFAULT NULL,
  `last_login` varchar(14) DEFAULT NULL,
  `auth_source` varchar(100) DEFAULT NULL,
  `member_since` varchar(14) DEFAULT NULL,
  `remember_me` varchar(150) DEFAULT NULL,
  `success` int(1) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faquser_group`
--

DROP TABLE IF EXISTS `j1l44_faquser_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faquser_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faquser_right`
--

DROP TABLE IF EXISTS `j1l44_faquser_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faquser_right` (
  `user_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`right_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faquserdata`
--

DROP TABLE IF EXISTS `j1l44_faquserdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faquserdata` (
  `user_id` int(11) NOT NULL,
  `last_modified` varchar(14) DEFAULT NULL,
  `display_name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faquserlogin`
--

DROP TABLE IF EXISTS `j1l44_faquserlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faquserlogin` (
  `login` varchar(128) NOT NULL,
  `pass` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqvisits`
--

DROP TABLE IF EXISTS `j1l44_faqvisits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqvisits` (
  `id` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `visits` smallint(6) NOT NULL,
  `last_visit` int(11) NOT NULL,
  PRIMARY KEY (`id`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `j1l44_faqvoting`
--

DROP TABLE IF EXISTS `j1l44_faqvoting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `j1l44_faqvoting` (
  `id` int(11) NOT NULL,
  `artikel` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  `usr` int(11) NOT NULL,
  `datum` varchar(20) DEFAULT '',
  `ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-07 13:38:48
