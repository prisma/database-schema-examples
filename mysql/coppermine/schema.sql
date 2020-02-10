-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816434291.hosting-data.io    Database: db816434291
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
-- Table structure for table `copp_albums`
--

DROP TABLE IF EXISTS `copp_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_albums` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `description` text COLLATE latin1_german2_ci NOT NULL,
  `visibility` int(11) NOT NULL DEFAULT '0',
  `uploads` enum('YES','NO') COLLATE latin1_german2_ci NOT NULL DEFAULT 'NO',
  `comments` enum('YES','NO') COLLATE latin1_german2_ci NOT NULL DEFAULT 'YES',
  `votes` enum('YES','NO') COLLATE latin1_german2_ci NOT NULL DEFAULT 'YES',
  `pos` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '1',
  `thumb` int(11) NOT NULL DEFAULT '0',
  `keyword` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `alb_password` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `alb_password_hint` text COLLATE latin1_german2_ci,
  `moderator_group` int(11) NOT NULL DEFAULT '0',
  `alb_hits` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `alb_category` (`category`),
  KEY `moderator_group` (`moderator_group`),
  KEY `visibility` (`visibility`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Used to store albums';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_banned`
--

DROP TABLE IF EXISTS `copp_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_banned` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `ip_addr` tinytext COLLATE latin1_german2_ci,
  `expiry` datetime DEFAULT NULL,
  `brute_force` tinyint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ban_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Data about banned users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_bridge`
--

DROP TABLE IF EXISTS `copp_bridge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_bridge` (
  `name` varchar(40) COLLATE latin1_german2_ci NOT NULL DEFAULT '0',
  `value` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Stores the bridging data, not used when unbridged';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_categories`
--

DROP TABLE IF EXISTS `copp_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_categories` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `description` text COLLATE latin1_german2_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `thumb` int(11) NOT NULL DEFAULT '0',
  `lft` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rgt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `cat_parent` (`parent`),
  KEY `cat_pos` (`pos`),
  KEY `cat_owner_id` (`owner_id`),
  KEY `depth_cid` (`depth`,`cid`),
  KEY `lft_depth` (`lft`,`depth`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Used to store categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_categorymap`
--

DROP TABLE IF EXISTS `copp_categorymap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_categorymap` (
  `cid` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Holds the categories where groups can create albums';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_comments`
--

DROP TABLE IF EXISTS `copp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_comments` (
  `pid` mediumint(10) NOT NULL DEFAULT '0',
  `msg_id` mediumint(10) NOT NULL AUTO_INCREMENT,
  `msg_author` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `msg_body` text COLLATE latin1_german2_ci NOT NULL,
  `msg_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `msg_raw_ip` tinytext COLLATE latin1_german2_ci,
  `msg_hdr_ip` tinytext COLLATE latin1_german2_ci,
  `author_md5_id` varchar(32) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `approval` enum('YES','NO') COLLATE latin1_german2_ci NOT NULL DEFAULT 'YES',
  `spam` enum('YES','NO') COLLATE latin1_german2_ci NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`msg_id`),
  KEY `com_pic_id` (`pid`),
  KEY `author_id` (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Used to store comments made on pics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_config`
--

DROP TABLE IF EXISTS `copp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_config` (
  `name` varchar(40) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Used to store the configuration options';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_dict`
--

DROP TABLE IF EXISTS `copp_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_dict` (
  `keyId` bigint(20) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(60) COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`keyId`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Holds the keyword dictionary';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_ecards`
--

DROP TABLE IF EXISTS `copp_ecards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_ecards` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `sender_name` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `sender_email` text COLLATE latin1_german2_ci NOT NULL,
  `recipient_name` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `recipient_email` text COLLATE latin1_german2_ci NOT NULL,
  `link` text COLLATE latin1_german2_ci NOT NULL,
  `date` tinytext COLLATE latin1_german2_ci NOT NULL,
  `sender_ip` tinytext COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Used to log ecards';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_exif`
--

DROP TABLE IF EXISTS `copp_exif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_exif` (
  `pid` int(11) NOT NULL,
  `exifData` text COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Stores EXIF data from individual pics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_favpics`
--

DROP TABLE IF EXISTS `copp_favpics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_favpics` (
  `user_id` int(11) NOT NULL,
  `user_favpics` text COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Stores the server side favourites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_filetypes`
--

DROP TABLE IF EXISTS `copp_filetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_filetypes` (
  `extension` char(7) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `mime` char(254) COLLATE latin1_german2_ci DEFAULT NULL,
  `content` char(15) COLLATE latin1_german2_ci DEFAULT NULL,
  `player` varchar(5) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Used to store the file extensions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_hit_stats`
--

DROP TABLE IF EXISTS `copp_hit_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_hit_stats` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `search_phrase` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `sdate` bigint(20) NOT NULL DEFAULT '0',
  `referer` text COLLATE latin1_german2_ci NOT NULL,
  `browser` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `os` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Detailed stats about hits, only used when enabled';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_languages`
--

DROP TABLE IF EXISTS `copp_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_languages` (
  `lang_id` varchar(40) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `english_name` varchar(70) COLLATE latin1_german2_ci DEFAULT NULL,
  `native_name` varchar(70) COLLATE latin1_german2_ci DEFAULT NULL,
  `custom_name` varchar(70) COLLATE latin1_german2_ci DEFAULT NULL,
  `flag` varchar(15) COLLATE latin1_german2_ci DEFAULT NULL,
  `abbr` varchar(15) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `available` enum('YES','NO') COLLATE latin1_german2_ci NOT NULL DEFAULT 'NO',
  `enabled` enum('YES','NO') COLLATE latin1_german2_ci NOT NULL DEFAULT 'NO',
  `complete` enum('YES','NO') COLLATE latin1_german2_ci NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Contains the language file definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_pictures`
--

DROP TABLE IF EXISTS `copp_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_pictures` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL DEFAULT '0',
  `filepath` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `filename` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `total_filesize` int(11) NOT NULL DEFAULT '0',
  `pwidth` smallint(6) NOT NULL DEFAULT '0',
  `pheight` smallint(6) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  `mtime` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `ctime` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `pic_rating` int(11) NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `caption` text COLLATE latin1_german2_ci NOT NULL,
  `keywords` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `approved` enum('YES','NO') COLLATE latin1_german2_ci NOT NULL DEFAULT 'NO',
  `galleryicon` int(11) NOT NULL DEFAULT '0',
  `user1` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user2` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user3` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user4` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `url_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `pic_raw_ip` tinytext COLLATE latin1_german2_ci,
  `pic_hdr_ip` tinytext COLLATE latin1_german2_ci,
  `lasthit_ip` tinytext COLLATE latin1_german2_ci,
  `position` int(11) NOT NULL DEFAULT '0',
  `guest_token` varchar(32) COLLATE latin1_german2_ci DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `owner_id` (`owner_id`),
  KEY `pic_hits` (`hits`),
  KEY `pic_rate` (`pic_rating`),
  KEY `aid_approved` (`aid`,`approved`),
  KEY `pic_aid` (`aid`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Used to store data about individual pics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_plugins`
--

DROP TABLE IF EXISTS `copp_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_plugins` (
  `plugin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(128) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `priority` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`plugin_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `path` (`path`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Stores the plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_sessions`
--

DROP TABLE IF EXISTS `copp_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_sessions` (
  `session_id` char(32) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_id` int(11) DEFAULT '0',
  `time` int(11) DEFAULT NULL,
  `remember` int(1) DEFAULT '0',
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Used to store sessions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_temp_messages`
--

DROP TABLE IF EXISTS `copp_temp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_temp_messages` (
  `message_id` varchar(80) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_id` int(11) DEFAULT '0',
  `time` int(11) DEFAULT NULL,
  `message` text COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Used to store messages from one page to the other';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_usergroups`
--

DROP TABLE IF EXISTS `copp_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_usergroups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `group_quota` int(11) NOT NULL DEFAULT '0',
  `has_admin_access` tinyint(4) NOT NULL DEFAULT '0',
  `can_rate_pictures` tinyint(4) NOT NULL DEFAULT '0',
  `can_send_ecards` tinyint(4) NOT NULL DEFAULT '0',
  `can_post_comments` tinyint(4) NOT NULL DEFAULT '0',
  `can_upload_pictures` tinyint(4) NOT NULL DEFAULT '0',
  `can_create_albums` tinyint(4) NOT NULL DEFAULT '0',
  `pub_upl_need_approval` tinyint(4) NOT NULL DEFAULT '1',
  `priv_upl_need_approval` tinyint(4) NOT NULL DEFAULT '1',
  `access_level` tinyint(4) NOT NULL DEFAULT '3',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_users`
--

DROP TABLE IF EXISTS `copp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group` int(11) NOT NULL DEFAULT '2',
  `user_active` enum('YES','NO') COLLATE latin1_german2_ci NOT NULL DEFAULT 'NO',
  `user_name` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_password_salt` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_password_hash_algorithm` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_password_iterations` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_lastvisit` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `user_regdate` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `user_group_list` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_email` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_email_valid` enum('YES','') COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_profile1` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_profile2` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_profile3` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_profile4` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_profile5` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_profile6` text COLLATE latin1_german2_ci NOT NULL,
  `user_actkey` varchar(32) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_language` varchar(40) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `user_group` (`user_group`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Used to store users, not used when bridged';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_vote_stats`
--

DROP TABLE IF EXISTS `copp_vote_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_vote_stats` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(100) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `rating` smallint(6) NOT NULL DEFAULT '0',
  `ip` varchar(20) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `sdate` bigint(20) NOT NULL DEFAULT '0',
  `referer` text COLLATE latin1_german2_ci NOT NULL,
  `browser` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `os` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Detailed stats about votes, only used when enabled';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `copp_votes`
--

DROP TABLE IF EXISTS `copp_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copp_votes` (
  `pic_id` mediumint(9) NOT NULL DEFAULT '0',
  `user_md5_id` varchar(32) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `vote_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pic_id`,`user_md5_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci COMMENT='Stores votes for individual pics';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 18:20:16
