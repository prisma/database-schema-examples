-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816446198.hosting-data.io    Database: db816446198
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
-- Table structure for table `xoop_avatar`
--

DROP TABLE IF EXISTS `xoop_avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_avatar` (
  `avatar_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `avatar_file` varchar(30) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `avatar_name` varchar(100) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `avatar_mimetype` varchar(30) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `avatar_created` int(10) NOT NULL DEFAULT '0',
  `avatar_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `avatar_weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `avatar_type` char(1) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`avatar_id`),
  KEY `avatar_type` (`avatar_type`,`avatar_display`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_avatar_user_link`
--

DROP TABLE IF EXISTS `xoop_avatar_user_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_avatar_user_link` (
  `avatar_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `avatar_user_id` (`avatar_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_banner`
--

DROP TABLE IF EXISTS `xoop_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_banner` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imptotal` int(10) unsigned NOT NULL DEFAULT '0',
  `impmade` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicks` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `imageurl` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `clickurl` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `date` int(10) NOT NULL DEFAULT '0',
  `htmlbanner` tinyint(1) NOT NULL DEFAULT '0',
  `htmlcode` text COLLATE latin1_german2_ci,
  PRIMARY KEY (`bid`),
  KEY `idxbannercid` (`cid`),
  KEY `idxbannerbidcid` (`bid`,`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_bannerclient`
--

DROP TABLE IF EXISTS `xoop_bannerclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_bannerclient` (
  `cid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `contact` varchar(60) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `email` varchar(60) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `login` varchar(10) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `passwd` varchar(10) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE latin1_german2_ci,
  PRIMARY KEY (`cid`),
  KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_bannerfinish`
--

DROP TABLE IF EXISTS `xoop_bannerfinish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_bannerfinish` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `impressions` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicks` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datestart` int(10) unsigned NOT NULL DEFAULT '0',
  `dateend` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_block_module_link`
--

DROP TABLE IF EXISTS `xoop_block_module_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_block_module_link` (
  `block_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_id` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`module_id`,`block_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_cache_model`
--

DROP TABLE IF EXISTS `xoop_cache_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_cache_model` (
  `cache_key` varchar(64) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `cache_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_data` text COLLATE latin1_german2_ci,
  PRIMARY KEY (`cache_key`),
  KEY `cache_expires` (`cache_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_config`
--

DROP TABLE IF EXISTS `xoop_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_config` (
  `conf_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `conf_modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `conf_catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `conf_name` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `conf_title` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `conf_value` text COLLATE latin1_german2_ci,
  `conf_desc` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `conf_formtype` varchar(15) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `conf_valuetype` varchar(10) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `conf_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`conf_id`),
  KEY `conf_mod_cat_id` (`conf_modid`,`conf_catid`),
  KEY `conf_order` (`conf_order`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_configcategory`
--

DROP TABLE IF EXISTS `xoop_configcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_configcategory` (
  `confcat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `confcat_name` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `confcat_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`confcat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_configoption`
--

DROP TABLE IF EXISTS `xoop_configoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_configoption` (
  `confop_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `confop_name` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `confop_value` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `conf_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`confop_id`),
  KEY `conf_id` (`conf_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_group_permission`
--

DROP TABLE IF EXISTS `xoop_group_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_group_permission` (
  `gperm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gperm_groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gperm_itemid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gperm_modid` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `gperm_name` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`gperm_id`),
  KEY `groupid` (`gperm_groupid`),
  KEY `itemid` (`gperm_itemid`),
  KEY `gperm_modid` (`gperm_modid`,`gperm_name`(10))
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_groups`
--

DROP TABLE IF EXISTS `xoop_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_groups` (
  `groupid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `description` text COLLATE latin1_german2_ci,
  `group_type` varchar(10) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`groupid`),
  KEY `group_type` (`group_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_groups_users_link`
--

DROP TABLE IF EXISTS `xoop_groups_users_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_groups_users_link` (
  `linkid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`linkid`),
  KEY `groupid_uid` (`groupid`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_image`
--

DROP TABLE IF EXISTS `xoop_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_image` (
  `image_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `image_name` varchar(30) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `image_nicename` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `image_mimetype` varchar(30) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `image_created` int(10) unsigned NOT NULL DEFAULT '0',
  `image_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `image_weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imgcat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `imgcat_id` (`imgcat_id`),
  KEY `image_display` (`image_display`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_imagebody`
--

DROP TABLE IF EXISTS `xoop_imagebody`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_imagebody` (
  `image_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image_body` mediumblob,
  KEY `image_id` (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_imagecategory`
--

DROP TABLE IF EXISTS `xoop_imagecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_imagecategory` (
  `imgcat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `imgcat_name` varchar(100) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `imgcat_maxsize` int(8) unsigned NOT NULL DEFAULT '0',
  `imgcat_maxwidth` smallint(3) unsigned NOT NULL DEFAULT '0',
  `imgcat_maxheight` smallint(3) unsigned NOT NULL DEFAULT '0',
  `imgcat_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `imgcat_weight` smallint(3) unsigned NOT NULL DEFAULT '0',
  `imgcat_type` char(1) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `imgcat_storetype` varchar(5) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`imgcat_id`),
  KEY `imgcat_display` (`imgcat_display`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_imgset`
--

DROP TABLE IF EXISTS `xoop_imgset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_imgset` (
  `imgset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `imgset_name` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `imgset_refid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`imgset_id`),
  KEY `imgset_refid` (`imgset_refid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_imgset_tplset_link`
--

DROP TABLE IF EXISTS `xoop_imgset_tplset_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_imgset_tplset_link` (
  `imgset_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tplset_name` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  KEY `tplset_name` (`tplset_name`(10))
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_imgsetimg`
--

DROP TABLE IF EXISTS `xoop_imgsetimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_imgsetimg` (
  `imgsetimg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `imgsetimg_file` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `imgsetimg_body` blob,
  `imgsetimg_imgset` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`imgsetimg_id`),
  KEY `imgsetimg_imgset` (`imgsetimg_imgset`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_modules`
--

DROP TABLE IF EXISTS `xoop_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_modules` (
  `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `version` smallint(5) unsigned NOT NULL DEFAULT '100',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(3) unsigned NOT NULL DEFAULT '0',
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dirname` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `hasmain` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hasadmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hassearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hasconfig` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hascomments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hasnotification` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `hasmain` (`hasmain`),
  KEY `hasadmin` (`hasadmin`),
  KEY `hassearch` (`hassearch`),
  KEY `hasnotification` (`hasnotification`),
  KEY `dirname` (`dirname`),
  KEY `name` (`name`(15)),
  KEY `isactive` (`isactive`),
  KEY `weight` (`weight`),
  KEY `hascomments` (`hascomments`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_newblocks`
--

DROP TABLE IF EXISTS `xoop_newblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_newblocks` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `func_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `options` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `name` varchar(150) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `content` text COLLATE latin1_german2_ci,
  `side` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `block_type` char(1) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `c_type` char(1) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dirname` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `func_file` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `show_func` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `edit_func` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `template` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `bcachetime` int(10) unsigned NOT NULL DEFAULT '0',
  `last_modified` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  KEY `mid` (`mid`),
  KEY `visible` (`visible`),
  KEY `isactive_visible_mid` (`isactive`,`visible`,`mid`),
  KEY `mid_funcnum` (`mid`,`func_num`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_online`
--

DROP TABLE IF EXISTS `xoop_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_online` (
  `online_uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `online_uname` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `online_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `online_module` smallint(5) unsigned NOT NULL DEFAULT '0',
  `online_ip` varchar(45) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  KEY `online_module` (`online_module`),
  KEY `online_updated` (`online_updated`),
  KEY `online_uid` (`online_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_priv_msgs`
--

DROP TABLE IF EXISTS `xoop_priv_msgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_priv_msgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `msg_image` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `from_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_text` text COLLATE latin1_german2_ci,
  `read_msg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `to_userid` (`to_userid`),
  KEY `touseridreadmsg` (`to_userid`,`read_msg`),
  KEY `msgidfromuserid` (`from_userid`,`msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_ranks`
--

DROP TABLE IF EXISTS `xoop_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_ranks` (
  `rank_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_max` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rank_id`),
  KEY `rank_min` (`rank_min`),
  KEY `rank_max` (`rank_max`),
  KEY `rankminrankmaxranspecial` (`rank_min`,`rank_max`,`rank_special`),
  KEY `rankspecial` (`rank_special`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_session`
--

DROP TABLE IF EXISTS `xoop_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_session` (
  `sess_id` varchar(256) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sess_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `sess_ip` varchar(45) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `sess_data` text COLLATE latin1_german2_ci,
  PRIMARY KEY (`sess_id`),
  KEY `updated` (`sess_updated`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_smiles`
--

DROP TABLE IF EXISTS `xoop_smiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_smiles` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `smile_url` varchar(100) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `emotion` varchar(75) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_tplfile`
--

DROP TABLE IF EXISTS `xoop_tplfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_tplfile` (
  `tpl_id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `tpl_refid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tpl_module` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `tpl_tplset` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `tpl_file` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `tpl_desc` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `tpl_lastmodified` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl_lastimported` int(10) unsigned NOT NULL DEFAULT '0',
  `tpl_type` varchar(20) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tpl_id`),
  UNIQUE KEY `tpl_refid_module_set_file_type` (`tpl_refid`,`tpl_module`,`tpl_tplset`,`tpl_file`,`tpl_type`),
  KEY `tpl_refid` (`tpl_refid`,`tpl_type`),
  KEY `tpl_tplset` (`tpl_tplset`,`tpl_file`(10))
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_tplset`
--

DROP TABLE IF EXISTS `xoop_tplset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_tplset` (
  `tplset_id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `tplset_name` varchar(50) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `tplset_desc` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `tplset_credits` text COLLATE latin1_german2_ci,
  `tplset_created` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tplset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_tplsource`
--

DROP TABLE IF EXISTS `xoop_tplsource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_tplsource` (
  `tpl_id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `tpl_source` mediumtext COLLATE latin1_german2_ci,
  KEY `tpl_id` (`tpl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_users`
--

DROP TABLE IF EXISTS `xoop_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_users` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `uname` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `email` varchar(60) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `url` varchar(100) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_avatar` varchar(30) COLLATE latin1_german2_ci NOT NULL DEFAULT 'blank.gif',
  `user_regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `user_icq` varchar(15) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_from` varchar(100) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_sig` tinytext COLLATE latin1_german2_ci,
  `user_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `actkey` varchar(8) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_aim` varchar(18) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_yim` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_msnm` varchar(100) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `pass` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attachsig` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `theme` varchar(100) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `timezone_offset` float(3,1) NOT NULL DEFAULT '0.0',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `umode` varchar(10) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `uorder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notify_method` tinyint(1) NOT NULL DEFAULT '1',
  `notify_mode` tinyint(1) NOT NULL DEFAULT '0',
  `user_occ` varchar(100) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `bio` tinytext COLLATE latin1_german2_ci,
  `user_intrest` varchar(150) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `user_mailok` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`),
  KEY `uname` (`uname`),
  KEY `email` (`email`),
  KEY `uiduname` (`uid`,`uname`),
  KEY `level` (`level`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_xoopscomments`
--

DROP TABLE IF EXISTS `xoop_xoopscomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_xoopscomments` (
  `com_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `com_pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `com_rootid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `com_modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `com_itemid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `com_icon` varchar(25) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `com_created` int(10) unsigned NOT NULL DEFAULT '0',
  `com_modified` int(10) unsigned NOT NULL DEFAULT '0',
  `com_uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `com_user` varchar(60) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `com_email` varchar(60) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `com_url` varchar(60) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `com_ip` varchar(45) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `com_title` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `com_text` text COLLATE latin1_german2_ci,
  `com_sig` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `com_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `com_exparams` varchar(255) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `dohtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dosmiley` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `doxcode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `doimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dobr` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`com_id`),
  KEY `com_pid` (`com_pid`),
  KEY `com_itemid` (`com_itemid`),
  KEY `com_uid` (`com_uid`),
  KEY `com_title` (`com_title`(40)),
  KEY `com_status` (`com_status`),
  KEY `com_user` (`com_user`),
  KEY `com_email` (`com_email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xoop_xoopsnotifications`
--

DROP TABLE IF EXISTS `xoop_xoopsnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xoop_xoopsnotifications` (
  `not_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `not_modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `not_itemid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `not_category` varchar(30) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `not_event` varchar(30) COLLATE latin1_german2_ci NOT NULL DEFAULT '',
  `not_uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `not_mode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`not_id`),
  KEY `not_modid` (`not_modid`),
  KEY `not_itemid` (`not_itemid`),
  KEY `not_class` (`not_category`),
  KEY `not_uid` (`not_uid`),
  KEY `not_event` (`not_event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
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
