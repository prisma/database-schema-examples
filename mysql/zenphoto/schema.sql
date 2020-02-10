-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816433430.hosting-data.io    Database: db816433430
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
-- Table structure for table `zenp_admin_to_object`
--

DROP TABLE IF EXISTS `zenp_admin_to_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_admin_to_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `adminid` int(11) unsigned NOT NULL,
  `objectid` int(11) unsigned NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'album',
  `edit` int(11) DEFAULT '32767',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_administrators`
--

DROP TABLE IF EXISTS `zenp_administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_administrators` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passhash` int(1) DEFAULT NULL,
  `passupdate` datetime DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `rights` int(11) DEFAULT NULL,
  `custom_data` text COLLATE utf8_unicode_ci,
  `valid` int(1) NOT NULL DEFAULT '1',
  `group` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `loggedin` datetime DEFAULT NULL,
  `lastloggedin` datetime DEFAULT NULL,
  `quota` int(11) DEFAULT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prime_album` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_credentials` text COLLATE utf8_unicode_ci,
  `challenge_phrase` text COLLATE utf8_unicode_ci,
  `lastchange` datetime DEFAULT NULL,
  `lastchangeuser` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` tinytext COLLATE utf8_unicode_ci,
  `website` tinytext COLLATE utf8_unicode_ci,
  `city` tinytext COLLATE utf8_unicode_ci,
  `country` tinytext COLLATE utf8_unicode_ci,
  `state` tinytext COLLATE utf8_unicode_ci,
  `postal` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`,`valid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_albums`
--

DROP TABLE IF EXISTS `zenp_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_albums` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(11) unsigned DEFAULT NULL,
  `folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8_unicode_ci,
  `desc` text COLLATE utf8_unicode_ci,
  `date` datetime DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `show` int(1) unsigned NOT NULL DEFAULT '1',
  `closecomments` int(1) unsigned NOT NULL DEFAULT '0',
  `commentson` int(1) unsigned NOT NULL DEFAULT '1',
  `thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mtime` int(32) DEFAULT NULL,
  `sort_type` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subalbum_sort_type` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) unsigned DEFAULT NULL,
  `image_sortdirection` int(1) unsigned DEFAULT '0',
  `album_sortdirection` int(1) unsigned DEFAULT '0',
  `hitcounter` int(11) unsigned DEFAULT '0',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_hint` text COLLATE utf8_unicode_ci,
  `publishdate` datetime DEFAULT NULL,
  `expiredate` datetime DEFAULT NULL,
  `total_value` int(11) DEFAULT '0',
  `total_votes` int(11) DEFAULT '0',
  `used_ips` longtext COLLATE utf8_unicode_ci,
  `custom_data` text COLLATE utf8_unicode_ci,
  `dynamic` int(1) DEFAULT '0',
  `search_params` text COLLATE utf8_unicode_ci,
  `album_theme` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `rating_status` int(1) DEFAULT '3',
  `watermark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `watermark_thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codeblock` text COLLATE utf8_unicode_ci,
  `lastchange` datetime DEFAULT NULL,
  `lastchangeuser` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `folder` (`folder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_captcha`
--

DROP TABLE IF EXISTS `zenp_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_captcha` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ptime` int(32) unsigned NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_comments`
--

DROP TABLE IF EXISTS `zenp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `inmoderation` int(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(52) COLLATE utf8_unicode_ci DEFAULT 'images',
  `IP` text COLLATE utf8_unicode_ci,
  `private` int(1) DEFAULT '0',
  `anon` int(1) DEFAULT '0',
  `custom_data` text COLLATE utf8_unicode_ci,
  `lastchange` datetime DEFAULT NULL,
  `lastchangeuser` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ownerid` (`ownerid`),
  KEY `ownerid_2` (`ownerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_images`
--

DROP TABLE IF EXISTS `zenp_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `albumid` int(11) unsigned DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8_unicode_ci,
  `desc` text COLLATE utf8_unicode_ci,
  `location` text COLLATE utf8_unicode_ci,
  `city` tinytext COLLATE utf8_unicode_ci,
  `state` tinytext COLLATE utf8_unicode_ci,
  `country` tinytext COLLATE utf8_unicode_ci,
  `credit` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `commentson` int(1) unsigned NOT NULL DEFAULT '1',
  `show` int(1) NOT NULL DEFAULT '1',
  `date` datetime DEFAULT NULL,
  `sort_order` int(11) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `thumbX` int(10) unsigned DEFAULT NULL,
  `thumbY` int(10) unsigned DEFAULT NULL,
  `thumbW` int(10) unsigned DEFAULT NULL,
  `thumbH` int(10) unsigned DEFAULT NULL,
  `mtime` int(32) DEFAULT NULL,
  `publishdate` datetime DEFAULT NULL,
  `expiredate` datetime DEFAULT NULL,
  `hitcounter` int(11) unsigned DEFAULT '0',
  `total_value` int(11) unsigned DEFAULT '0',
  `total_votes` int(11) unsigned DEFAULT '0',
  `used_ips` longtext COLLATE utf8_unicode_ci,
  `custom_data` text COLLATE utf8_unicode_ci,
  `rating` float DEFAULT NULL,
  `rating_status` int(1) DEFAULT '3',
  `hasMetadata` int(1) DEFAULT '0',
  `watermark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `watermark_use` int(1) DEFAULT '7',
  `owner` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `codeblock` text COLLATE utf8_unicode_ci,
  `user` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hint` text COLLATE utf8_unicode_ci,
  `lastchange` datetime DEFAULT NULL,
  `lastchangeuser` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFMake` mediumtext COLLATE utf8_unicode_ci,
  `EXIFModel` mediumtext COLLATE utf8_unicode_ci,
  `EXIFDescription` mediumtext COLLATE utf8_unicode_ci,
  `IPTCObjectName` mediumtext COLLATE utf8_unicode_ci,
  `IPTCImageHeadline` mediumtext COLLATE utf8_unicode_ci,
  `IPTCImageCaption` mediumtext COLLATE utf8_unicode_ci,
  `IPTCImageCaptionWriter` mediumtext COLLATE utf8_unicode_ci,
  `EXIFDateTime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFDateTimeOriginal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFDateTimeDigitized` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IPTCDateCreated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IPTCTimeCreated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IPTCDigitizeDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IPTCDigitizeTime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFArtist` mediumtext COLLATE utf8_unicode_ci,
  `IPTCImageCredit` mediumtext COLLATE utf8_unicode_ci,
  `IPTCByLine` mediumtext COLLATE utf8_unicode_ci,
  `IPTCByLineTitle` mediumtext COLLATE utf8_unicode_ci,
  `IPTCSource` mediumtext COLLATE utf8_unicode_ci,
  `IPTCContact` mediumtext COLLATE utf8_unicode_ci,
  `EXIFCopyright` mediumtext COLLATE utf8_unicode_ci,
  `IPTCCopyright` mediumtext COLLATE utf8_unicode_ci,
  `IPTCKeywords` mediumtext COLLATE utf8_unicode_ci,
  `EXIFExposureTime` mediumtext COLLATE utf8_unicode_ci,
  `EXIFFNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFISOSpeedRatings` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFExposureBiasValue` mediumtext COLLATE utf8_unicode_ci,
  `EXIFMeteringMode` mediumtext COLLATE utf8_unicode_ci,
  `EXIFFlash` mediumtext COLLATE utf8_unicode_ci,
  `EXIFImageWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFImageHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFOrientation` mediumtext COLLATE utf8_unicode_ci,
  `EXIFSoftware` mediumtext COLLATE utf8_unicode_ci,
  `EXIFContrast` mediumtext COLLATE utf8_unicode_ci,
  `EXIFSharpness` mediumtext COLLATE utf8_unicode_ci,
  `EXIFSaturation` mediumtext COLLATE utf8_unicode_ci,
  `EXIFWhiteBalance` mediumtext COLLATE utf8_unicode_ci,
  `EXIFSubjectDistance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFFocalLength` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFLensType` mediumtext COLLATE utf8_unicode_ci,
  `EXIFLensInfo` mediumtext COLLATE utf8_unicode_ci,
  `EXIFFocalLengthIn35mmFilm` mediumtext COLLATE utf8_unicode_ci,
  `IPTCCity` mediumtext COLLATE utf8_unicode_ci,
  `IPTCSubLocation` mediumtext COLLATE utf8_unicode_ci,
  `IPTCState` mediumtext COLLATE utf8_unicode_ci,
  `IPTCLocationCode` mediumtext COLLATE utf8_unicode_ci,
  `IPTCLocationName` mediumtext COLLATE utf8_unicode_ci,
  `IPTCContentLocationCode` mediumtext COLLATE utf8_unicode_ci,
  `IPTCContentLocationName` mediumtext COLLATE utf8_unicode_ci,
  `EXIFGPSLatitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFGPSLatitudeRef` mediumtext COLLATE utf8_unicode_ci,
  `EXIFGPSLongitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFGPSLongitudeRef` mediumtext COLLATE utf8_unicode_ci,
  `EXIFGPSAltitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXIFGPSAltitudeRef` mediumtext COLLATE utf8_unicode_ci,
  `IPTCOriginatingProgram` mediumtext COLLATE utf8_unicode_ci,
  `IPTCProgramVersion` mediumtext COLLATE utf8_unicode_ci,
  `VideoFormat` mediumtext COLLATE utf8_unicode_ci,
  `VideoSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VideoArtist` mediumtext COLLATE utf8_unicode_ci,
  `VideoTitle` mediumtext COLLATE utf8_unicode_ci,
  `VideoBitrate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VideoBitrate_mode` mediumtext COLLATE utf8_unicode_ci,
  `VideoBits_per_sample` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VideoCodec` mediumtext COLLATE utf8_unicode_ci,
  `VideoCompression_ratio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VideoDataformat` mediumtext COLLATE utf8_unicode_ci,
  `VideoEncoder` mediumtext COLLATE utf8_unicode_ci,
  `VideoSamplerate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VideoChannelmode` mediumtext COLLATE utf8_unicode_ci,
  `VideoChannels` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VideoFramerate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VideoResolution_x` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VideoResolution_y` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VideoAspect_ratio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VideoPlaytime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XMPrating` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`,`albumid`),
  KEY `albumid` (`albumid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_menu`
--

DROP TABLE IF EXISTS `zenp_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(11) unsigned DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `include_li` int(1) unsigned DEFAULT '1',
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` varchar(48) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `show` int(1) unsigned NOT NULL DEFAULT '1',
  `menuset` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `span_class` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `span_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_news`
--

DROP TABLE IF EXISTS `zenp_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `extracontent` text COLLATE utf8_unicode_ci,
  `show` int(1) unsigned NOT NULL DEFAULT '1',
  `date` datetime DEFAULT NULL,
  `titlelink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentson` int(1) unsigned DEFAULT '0',
  `codeblock` text COLLATE utf8_unicode_ci,
  `author` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lastchange` datetime DEFAULT NULL,
  `lastchangeuser` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hitcounter` int(11) unsigned DEFAULT '0',
  `permalink` int(1) unsigned NOT NULL DEFAULT '0',
  `locked` int(1) unsigned NOT NULL DEFAULT '0',
  `expiredate` datetime DEFAULT NULL,
  `total_value` int(11) unsigned DEFAULT '0',
  `total_votes` int(11) unsigned DEFAULT '0',
  `used_ips` longtext COLLATE utf8_unicode_ci,
  `rating` float DEFAULT NULL,
  `rating_status` int(1) DEFAULT '3',
  `sticky` int(1) DEFAULT '0',
  `custom_data` text COLLATE utf8_unicode_ci,
  `truncation` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `titlelink` (`titlelink`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_news2cat`
--

DROP TABLE IF EXISTS `zenp_news2cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_news2cat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) unsigned NOT NULL,
  `news_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_news_categories`
--

DROP TABLE IF EXISTS `zenp_news_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_news_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `titlelink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` int(1) unsigned NOT NULL DEFAULT '0',
  `hitcounter` int(11) unsigned DEFAULT '0',
  `user` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hint` text COLLATE utf8_unicode_ci,
  `parentid` int(11) DEFAULT NULL,
  `sort_order` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `custom_data` text COLLATE utf8_unicode_ci,
  `show` int(1) unsigned NOT NULL DEFAULT '1',
  `lastchange` datetime DEFAULT NULL,
  `lastchangeuser` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titlelink` (`titlelink`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_obj_to_tag`
--

DROP TABLE IF EXISTS `zenp_obj_to_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_obj_to_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int(11) unsigned NOT NULL,
  `type` tinytext COLLATE utf8_unicode_ci,
  `objectid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagid` (`tagid`),
  KEY `objectid` (`objectid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_options`
--

DROP TABLE IF EXISTS `zenp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_options` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `theme` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `creator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_option` (`name`,`ownerid`,`theme`)
) ENGINE=MyISAM AUTO_INCREMENT=703 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_pages`
--

DROP TABLE IF EXISTS `zenp_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(11) unsigned DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `extracontent` text COLLATE utf8_unicode_ci,
  `sort_order` varchar(48) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `show` int(1) unsigned NOT NULL DEFAULT '1',
  `titlelink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentson` int(1) unsigned DEFAULT '0',
  `codeblock` text COLLATE utf8_unicode_ci,
  `author` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `lastchange` datetime DEFAULT NULL,
  `lastchangeuser` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hitcounter` int(11) unsigned DEFAULT '0',
  `permalink` int(1) unsigned NOT NULL DEFAULT '0',
  `locked` int(1) unsigned NOT NULL DEFAULT '0',
  `expiredate` datetime DEFAULT NULL,
  `total_value` int(11) unsigned DEFAULT '0',
  `total_votes` int(11) unsigned DEFAULT '0',
  `used_ips` longtext COLLATE utf8_unicode_ci,
  `rating` float DEFAULT NULL,
  `rating_status` int(1) DEFAULT '3',
  `user` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hint` text COLLATE utf8_unicode_ci,
  `custom_data` text COLLATE utf8_unicode_ci,
  `truncation` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `titlelink` (`titlelink`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_plugin_storage`
--

DROP TABLE IF EXISTS `zenp_plugin_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_plugin_storage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `aux` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `aux` (`aux`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_search_cache`
--

DROP TABLE IF EXISTS `zenp_search_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_search_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `criteria` text COLLATE utf8_unicode_ci,
  `date` datetime DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `criteria` (`criteria`(255))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zenp_tags`
--

DROP TABLE IF EXISTS `zenp_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zenp_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
