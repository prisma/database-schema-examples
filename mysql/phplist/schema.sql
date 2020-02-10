-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816439842.hosting-data.io    Database: db816439842
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
-- Table structure for table `phpl_admin`
--

DROP TABLE IF EXISTS `phpl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(25) NOT NULL,
  `namelc` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedby` varchar(25) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `passwordchanged` date DEFAULT NULL,
  `superuser` tinyint(4) DEFAULT '0',
  `disabled` tinyint(4) DEFAULT '0',
  `privileges` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginnameidx` (`loginname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_admin_attribute`
--

DROP TABLE IF EXISTS `phpl_admin_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_admin_attribute` (
  `adminattributeid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminattributeid`,`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_admin_password_request`
--

DROP TABLE IF EXISTS `phpl_admin_password_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_admin_password_request` (
  `id_key` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `key_value` varchar(32) NOT NULL,
  PRIMARY KEY (`id_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_adminattribute`
--

DROP TABLE IF EXISTS `phpl_adminattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_adminattribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `required` tinyint(4) DEFAULT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_admintoken`
--

DROP TABLE IF EXISTS `phpl_admintoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_admintoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `entered` int(11) NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_attachment`
--

DROP TABLE IF EXISTS `phpl_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `remotefile` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `description` text,
  `size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_attribute`
--

DROP TABLE IF EXISTS `phpl_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `required` tinyint(4) DEFAULT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nameindex` (`name`),
  KEY `idnameindex` (`id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_bounce`
--

DROP TABLE IF EXISTS `phpl_bounce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_bounce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `header` text,
  `data` mediumblob,
  `status` varchar(255) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `dateindex` (`date`),
  KEY `statusidx` (`status`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_bounceregex`
--

DROP TABLE IF EXISTS `phpl_bounceregex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_bounceregex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regex` varchar(2083) DEFAULT NULL,
  `regexhash` char(32) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `listorder` int(11) DEFAULT '0',
  `admin` int(11) DEFAULT NULL,
  `comment` text,
  `status` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `regex` (`regexhash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_bounceregex_bounce`
--

DROP TABLE IF EXISTS `phpl_bounceregex_bounce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_bounceregex_bounce` (
  `regex` int(11) NOT NULL,
  `bounce` int(11) NOT NULL,
  PRIMARY KEY (`regex`,`bounce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_config`
--

DROP TABLE IF EXISTS `phpl_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_config` (
  `item` varchar(35) NOT NULL,
  `value` longtext,
  `editable` tinyint(4) DEFAULT '1',
  `type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_eventlog`
--

DROP TABLE IF EXISTS `phpl_eventlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_eventlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entered` datetime DEFAULT NULL,
  `page` varchar(100) DEFAULT NULL,
  `entry` text,
  PRIMARY KEY (`id`),
  KEY `enteredidx` (`entered`),
  KEY `pageidx` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_i18n`
--

DROP TABLE IF EXISTS `phpl_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_i18n` (
  `lan` varchar(10) NOT NULL,
  `original` text NOT NULL,
  `translation` text NOT NULL,
  UNIQUE KEY `lanorigunq` (`lan`,`original`(200)),
  KEY `lanorigidx` (`lan`,`original`(200))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_linktrack`
--

DROP TABLE IF EXISTS `phpl_linktrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_linktrack` (
  `linkid` int(11) NOT NULL AUTO_INCREMENT,
  `messageid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `forward` varchar(255) DEFAULT NULL,
  `firstclick` datetime DEFAULT NULL,
  `latestclick` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `clicked` int(11) DEFAULT '0',
  PRIMARY KEY (`linkid`),
  UNIQUE KEY `miduidurlindex` (`messageid`,`userid`,`url`),
  KEY `midindex` (`messageid`),
  KEY `uidindex` (`userid`),
  KEY `urlindex` (`url`),
  KEY `miduidindex` (`messageid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_linktrack_forward`
--

DROP TABLE IF EXISTS `phpl_linktrack_forward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_linktrack_forward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(2083) DEFAULT NULL,
  `urlhash` char(32) DEFAULT NULL,
  `uuid` varchar(36) DEFAULT '',
  `personalise` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `urlunique` (`urlhash`),
  KEY `urlindex` (`url`(255)),
  KEY `uuididx` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_linktrack_ml`
--

DROP TABLE IF EXISTS `phpl_linktrack_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_linktrack_ml` (
  `messageid` int(11) NOT NULL,
  `forwardid` int(11) NOT NULL,
  `firstclick` datetime DEFAULT NULL,
  `latestclick` datetime DEFAULT NULL,
  `total` int(11) DEFAULT '0',
  `clicked` int(11) DEFAULT '0',
  `htmlclicked` int(11) DEFAULT '0',
  `textclicked` int(11) DEFAULT '0',
  PRIMARY KEY (`messageid`,`forwardid`),
  KEY `midindex` (`messageid`),
  KEY `fwdindex` (`forwardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_linktrack_uml_click`
--

DROP TABLE IF EXISTS `phpl_linktrack_uml_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_linktrack_uml_click` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messageid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `forwardid` int(11) DEFAULT NULL,
  `firstclick` datetime DEFAULT NULL,
  `latestclick` datetime DEFAULT NULL,
  `clicked` int(11) DEFAULT '0',
  `htmlclicked` int(11) DEFAULT '0',
  `textclicked` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `miduidfwdid` (`messageid`,`userid`,`forwardid`),
  KEY `midindex` (`messageid`),
  KEY `uidindex` (`userid`),
  KEY `miduidindex` (`messageid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_linktrack_userclick`
--

DROP TABLE IF EXISTS `phpl_linktrack_userclick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_linktrack_userclick` (
  `linkid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `messageid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data` text,
  `date` datetime DEFAULT NULL,
  KEY `linkindex` (`linkid`),
  KEY `uidindex` (`userid`),
  KEY `midindex` (`messageid`),
  KEY `linkuserindex` (`linkid`,`userid`),
  KEY `linkusermessageindex` (`linkid`,`userid`,`messageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_list`
--

DROP TABLE IF EXISTS `phpl_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `entered` datetime DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL,
  `prefix` varchar(10) DEFAULT NULL,
  `rssfeed` varchar(255) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(4) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `nameidx` (`name`),
  KEY `listorderidx` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_listmessage`
--

DROP TABLE IF EXISTS `phpl_listmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_listmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messageid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `messageid` (`messageid`,`listid`),
  KEY `listmessageidx` (`listid`,`messageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_listuser`
--

DROP TABLE IF EXISTS `phpl_listuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_listuser` (
  `userid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`,`listid`),
  KEY `userenteredidx` (`userid`,`entered`),
  KEY `userlistenteredidx` (`userid`,`listid`,`entered`),
  KEY `useridx` (`userid`),
  KEY `listidx` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_message`
--

DROP TABLE IF EXISTS `phpl_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '(no subject)',
  `fromfield` varchar(255) NOT NULL DEFAULT '',
  `tofield` varchar(255) NOT NULL DEFAULT '',
  `replyto` varchar(255) NOT NULL DEFAULT '',
  `message` longtext,
  `textmessage` longtext,
  `footer` text,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `embargo` datetime DEFAULT NULL,
  `repeatinterval` int(11) DEFAULT '0',
  `repeatuntil` datetime DEFAULT NULL,
  `requeueinterval` int(11) DEFAULT '0',
  `requeueuntil` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userselection` text,
  `sent` datetime DEFAULT NULL,
  `htmlformatted` tinyint(4) DEFAULT '0',
  `sendformat` varchar(20) DEFAULT NULL,
  `template` int(11) DEFAULT NULL,
  `processed` mediumint(8) unsigned DEFAULT '0',
  `astext` int(11) DEFAULT '0',
  `ashtml` int(11) DEFAULT '0',
  `astextandhtml` int(11) DEFAULT '0',
  `aspdf` int(11) DEFAULT '0',
  `astextandpdf` int(11) DEFAULT '0',
  `viewed` int(11) DEFAULT '0',
  `bouncecount` int(11) DEFAULT '0',
  `sendstart` datetime DEFAULT NULL,
  `rsstemplate` varchar(100) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuididx` (`uuid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_message_attachment`
--

DROP TABLE IF EXISTS `phpl_message_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_message_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messageid` int(11) NOT NULL,
  `attachmentid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `messageidx` (`messageid`),
  KEY `messageattidx` (`messageid`,`attachmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_messagedata`
--

DROP TABLE IF EXISTS `phpl_messagedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_messagedata` (
  `name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `data` longtext,
  PRIMARY KEY (`name`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_sendprocess`
--

DROP TABLE IF EXISTS `phpl_sendprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_sendprocess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `started` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alive` int(11) DEFAULT '1',
  `ipaddress` varchar(50) DEFAULT NULL,
  `page` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_subscribepage`
--

DROP TABLE IF EXISTS `phpl_subscribepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_subscribepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `active` tinyint(4) DEFAULT '0',
  `owner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_subscribepage_data`
--

DROP TABLE IF EXISTS `phpl_subscribepage_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_subscribepage_data` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_template`
--

DROP TABLE IF EXISTS `phpl_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `template` longblob,
  `listorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_templateimage`
--

DROP TABLE IF EXISTS `phpl_templateimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_templateimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` int(11) NOT NULL DEFAULT '0',
  `mimetype` varchar(100) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `data` longblob,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `templateidx` (`template`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_urlcache`
--

DROP TABLE IF EXISTS `phpl_urlcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_urlcache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(2083) NOT NULL,
  `lastmodified` int(11) DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `urlindex` (`url`(255))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_user`
--

DROP TABLE IF EXISTS `phpl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `confirmed` tinyint(4) DEFAULT '0',
  `blacklisted` tinyint(4) DEFAULT '0',
  `optedin` tinyint(4) DEFAULT '0',
  `bouncecount` int(11) DEFAULT '0',
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uniqid` varchar(255) DEFAULT NULL,
  `uuid` varchar(36) DEFAULT '',
  `htmlemail` tinyint(4) DEFAULT '0',
  `subscribepage` int(11) DEFAULT NULL,
  `rssfrequency` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `passwordchanged` date DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT '0',
  `extradata` text,
  `foreignkey` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `foreignkey` (`foreignkey`),
  KEY `idxuniqid` (`uniqid`),
  KEY `enteredindex` (`entered`),
  KEY `confidx` (`confirmed`),
  KEY `blidx` (`blacklisted`),
  KEY `optidx` (`optedin`),
  KEY `uuididx` (`uuid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_user_attribute`
--

DROP TABLE IF EXISTS `phpl_user_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_user_attribute` (
  `attributeid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`attributeid`,`userid`),
  KEY `userindex` (`userid`),
  KEY `attindex` (`attributeid`),
  KEY `attuserid` (`userid`,`attributeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_user_blacklist`
--

DROP TABLE IF EXISTS `phpl_user_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_user_blacklist` (
  `email` varchar(255) NOT NULL,
  `added` datetime DEFAULT NULL,
  UNIQUE KEY `email` (`email`),
  KEY `emailidx` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_user_blacklist_data`
--

DROP TABLE IF EXISTS `phpl_user_blacklist_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_user_blacklist_data` (
  `email` varchar(150) NOT NULL,
  `name` varchar(25) NOT NULL,
  `data` text,
  UNIQUE KEY `email` (`email`),
  KEY `emailidx` (`email`),
  KEY `emailnameidx` (`email`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_user_history`
--

DROP TABLE IF EXISTS `phpl_user_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_user_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `detail` text,
  `systeminfo` text,
  PRIMARY KEY (`id`),
  KEY `userididx` (`userid`),
  KEY `dateidx` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_user_message_bounce`
--

DROP TABLE IF EXISTS `phpl_user_message_bounce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_user_message_bounce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` int(11) NOT NULL,
  `bounce` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `umbindex` (`user`,`message`,`bounce`),
  KEY `useridx` (`user`),
  KEY `msgidx` (`message`),
  KEY `bounceidx` (`bounce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_user_message_forward`
--

DROP TABLE IF EXISTS `phpl_user_message_forward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_user_message_forward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` int(11) NOT NULL,
  `forward` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `usermessageidx` (`user`,`message`),
  KEY `useridx` (`user`),
  KEY `messageidx` (`message`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_user_message_view`
--

DROP TABLE IF EXISTS `phpl_user_message_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_user_message_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messageid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `viewed` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `usermsgidx` (`userid`,`messageid`),
  KEY `msgidx` (`messageid`),
  KEY `useridx` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_usermessage`
--

DROP TABLE IF EXISTS `phpl_usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_usermessage` (
  `messageid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `entered` datetime NOT NULL,
  `viewed` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`,`messageid`),
  KEY `messageidindex` (`messageid`),
  KEY `useridindex` (`userid`),
  KEY `enteredindex` (`entered`),
  KEY `statusidx` (`status`),
  KEY `viewedidx` (`viewed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phpl_userstats`
--

DROP TABLE IF EXISTS `phpl_userstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpl_userstats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unixdate` int(11) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `listid` int(11) DEFAULT '0',
  `value` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry` (`unixdate`,`item`,`listid`),
  KEY `dateindex` (`unixdate`),
  KEY `itemindex` (`item`),
  KEY `listindex` (`listid`),
  KEY `listdateindex` (`listid`,`unixdate`)
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

-- Dump completed on 2020-02-10 18:20:18
