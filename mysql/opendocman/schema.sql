-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816575446.hosting-data.io    Database: db816575446
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
-- Table structure for table `opdm_access_log`
--

DROP TABLE IF EXISTS `opdm_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_access_log` (
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` enum('A','B','C','V','D','M','X','I','O','Y','R') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_admin`
--

DROP TABLE IF EXISTS `opdm_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_admin` (
  `id` int(11) unsigned DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_category`
--

DROP TABLE IF EXISTS `opdm_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_data`
--

DROP TABLE IF EXISTS `opdm_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` int(11) unsigned NOT NULL DEFAULT '0',
  `owner` int(11) unsigned DEFAULT NULL,
  `realname` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT '',
  `status` smallint(6) DEFAULT NULL,
  `department` smallint(6) unsigned DEFAULT NULL,
  `default_rights` tinyint(4) DEFAULT NULL,
  `publishable` tinyint(4) DEFAULT NULL,
  `reviewer` int(11) unsigned DEFAULT NULL,
  `reviewer_comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `data_idx` (`id`,`owner`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `publishable` (`publishable`),
  KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_department`
--

DROP TABLE IF EXISTS `opdm_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_department` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_dept_perms`
--

DROP TABLE IF EXISTS `opdm_dept_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_dept_perms` (
  `fid` int(11) unsigned DEFAULT NULL,
  `dept_id` int(11) unsigned DEFAULT NULL,
  `rights` tinyint(4) NOT NULL DEFAULT '0',
  KEY `rights` (`rights`),
  KEY `dept_id` (`dept_id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_dept_reviewer`
--

DROP TABLE IF EXISTS `opdm_dept_reviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_dept_reviewer` (
  `dept_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_filetypes`
--

DROP TABLE IF EXISTS `opdm_filetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_filetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_log`
--

DROP TABLE IF EXISTS `opdm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_log` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(25) DEFAULT NULL,
  `note` text,
  `revision` varchar(255) DEFAULT NULL,
  KEY `id` (`id`),
  KEY `modified_on` (`modified_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_odmsys`
--

DROP TABLE IF EXISTS `opdm_odmsys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_odmsys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_name` varchar(16) DEFAULT NULL,
  `sys_value` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_rights`
--

DROP TABLE IF EXISTS `opdm_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_rights` (
  `RightId` tinyint(4) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_settings`
--

DROP TABLE IF EXISTS `opdm_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `validation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_udf`
--

DROP TABLE IF EXISTS `opdm_udf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_udf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) DEFAULT NULL,
  `display_name` varchar(16) DEFAULT NULL,
  `field_type` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_user`
--

DROP TABLE IF EXISTS `opdm_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `department` int(11) unsigned DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `pw_reset_code` char(32) DEFAULT NULL,
  `can_add` tinyint(1) DEFAULT '1',
  `can_checkin` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opdm_user_perms`
--

DROP TABLE IF EXISTS `opdm_user_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opdm_user_perms` (
  `fid` int(11) unsigned DEFAULT NULL,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `rights` tinyint(4) NOT NULL DEFAULT '0',
  KEY `user_perms_idx` (`fid`,`uid`,`rights`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `rights` (`rights`)
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

-- Dump completed on 2020-02-10 18:20:21
