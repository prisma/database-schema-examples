-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816439434.hosting-data.io    Database: db816439434
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
-- Table structure for table `index_5e404df0a4aa1`
--

DROP TABLE IF EXISTS `index_5e404df0a4aa1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_5e404df0a4aa1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` varchar(235) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `creation_date` datetime DEFAULT NULL,
  `modification_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `language` text COLLATE utf8mb4_unicode_ci,
  `gallery_id` text COLLATE utf8mb4_unicode_ci,
  `view_permission` text COLLATE utf8mb4_unicode_ci,
  `attachments` text COLLATE utf8mb4_unicode_ci,
  `primary_image` text COLLATE utf8mb4_unicode_ci,
  `geo_located` text COLLATE utf8mb4_unicode_ci,
  `geo_location` text COLLATE utf8mb4_unicode_ci,
  `allowed_groups` text COLLATE utf8mb4_unicode_ci,
  `allowed_users` text COLLATE utf8mb4_unicode_ci,
  `relations` text COLLATE utf8mb4_unicode_ci,
  `relation_types` text COLLATE utf8mb4_unicode_ci,
  `relation_count` text COLLATE utf8mb4_unicode_ci,
  `title_initial` text COLLATE utf8mb4_unicode_ci,
  `title_firstword` text COLLATE utf8mb4_unicode_ci,
  `searchable` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `contents` mediumtext COLLATE utf8mb4_unicode_ci,
  `user_country` text COLLATE utf8mb4_unicode_ci,
  `user_gender` text COLLATE utf8mb4_unicode_ci,
  `user_homepage` text COLLATE utf8mb4_unicode_ci,
  `user_realName` text COLLATE utf8mb4_unicode_ci,
  `user_allowmsgs` text COLLATE utf8mb4_unicode_ci,
  `user_language` text COLLATE utf8mb4_unicode_ci,
  `user_style` text COLLATE utf8mb4_unicode_ci,
  `user_page` text COLLATE utf8mb4_unicode_ci,
  `groups` text COLLATE utf8mb4_unicode_ci,
  `addongroup` text COLLATE utf8mb4_unicode_ci,
  `addonleadergroup` text COLLATE utf8mb4_unicode_ci,
  `addonpendinggroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `object_type` (`object_type`,`object_id`(160))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messu_archive`
--

DROP TABLE IF EXISTS `messu_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messu_archive` (
  `msgId` int(14) NOT NULL AUTO_INCREMENT,
  `user` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_from` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_to` text COLLATE utf8mb4_unicode_ci,
  `user_cc` text COLLATE utf8mb4_unicode_ci,
  `user_bcc` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replyto_hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(14) DEFAULT NULL,
  `isRead` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isReplied` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isFlagged` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(2) DEFAULT NULL,
  PRIMARY KEY (`msgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messu_messages`
--

DROP TABLE IF EXISTS `messu_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messu_messages` (
  `msgId` int(14) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_from` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_to` text COLLATE utf8mb4_unicode_ci,
  `user_cc` text COLLATE utf8mb4_unicode_ci,
  `user_bcc` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replyto_hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(14) DEFAULT NULL,
  `isRead` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isReplied` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isFlagged` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(2) DEFAULT NULL,
  PRIMARY KEY (`msgId`),
  KEY `userIsRead` (`user`(190),`isRead`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messu_sent`
--

DROP TABLE IF EXISTS `messu_sent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messu_sent` (
  `msgId` int(14) NOT NULL AUTO_INCREMENT,
  `user` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_from` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_to` text COLLATE utf8mb4_unicode_ci,
  `user_cc` text COLLATE utf8mb4_unicode_ci,
  `user_bcc` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replyto_hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(14) DEFAULT NULL,
  `isRead` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isReplied` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isFlagged` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(2) DEFAULT NULL,
  PRIMARY KEY (`msgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sesskey` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` int(11) unsigned NOT NULL,
  `expireref` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_acct_account`
--

DROP TABLE IF EXISTS `tiki_acct_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_acct_account` (
  `accountBookId` int(10) unsigned NOT NULL,
  `accountId` int(10) unsigned NOT NULL DEFAULT '0',
  `accountName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountNotes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountBudget` double NOT NULL DEFAULT '0',
  `accountLocked` int(1) NOT NULL DEFAULT '0',
  `accountTax` int(11) NOT NULL DEFAULT '0',
  `accountUserId` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountBookId`,`accountId`),
  KEY `accountTax` (`accountTax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_acct_bankaccount`
--

DROP TABLE IF EXISTS `tiki_acct_bankaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_acct_bankaccount` (
  `bankBookId` int(10) unsigned NOT NULL,
  `bankAccountId` int(10) unsigned NOT NULL,
  `externalNumber` int(10) NOT NULL,
  `bankCountry` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankCode` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankIBAN` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankBIC` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankDelimeter` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ';',
  `bankDecPoint` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `bankThousand` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.',
  `bankHasHeader` tinyint(1) NOT NULL DEFAULT '1',
  `fieldNameAccount` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldNameBookingDate` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formatBookingDate` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldNameValueDate` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formatValueDate` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldNameBookingText` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldNameReason` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldNameCounterpartName` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldNameCounterpartAccount` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldNameCounterpartBankCode` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldNameAmount` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amountType` int(10) unsigned NOT NULL,
  `fieldNameAmountSign` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SignPositive` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SignNegative` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bankBookId`,`bankAccountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_acct_book`
--

DROP TABLE IF EXISTS `tiki_acct_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_acct_book` (
  `bookId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookClosed` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `bookStartDate` date DEFAULT NULL,
  `bookEndDate` date DEFAULT NULL,
  `bookCurrency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EUR',
  `bookCurrencyPos` int(11) NOT NULL,
  `bookDecimals` int(11) NOT NULL DEFAULT '2',
  `bookDecPoint` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `bookThousand` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.',
  `exportSeparator` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ';',
  `exportEOL` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LF',
  `exportQuote` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '"',
  `bookAutoTax` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_acct_item`
--

DROP TABLE IF EXISTS `tiki_acct_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_acct_item` (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `itemBookId` int(10) unsigned NOT NULL,
  `itemJournalId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemAccountId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` int(1) NOT NULL DEFAULT '-1',
  `itemAmount` double NOT NULL DEFAULT '0',
  `itemText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemTs` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_acct_journal`
--

DROP TABLE IF EXISTS `tiki_acct_journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_acct_journal` (
  `journalBookId` int(10) unsigned NOT NULL,
  `journalId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `journalDate` date DEFAULT NULL,
  `journalDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `journalCancelled` int(1) NOT NULL DEFAULT '0',
  `journalTs` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`journalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_acct_stack`
--

DROP TABLE IF EXISTS `tiki_acct_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_acct_stack` (
  `stackBookId` int(10) unsigned NOT NULL,
  `stackId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stackDate` date DEFAULT NULL,
  `stackDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stackTs` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`stackId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_acct_stackitem`
--

DROP TABLE IF EXISTS `tiki_acct_stackitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_acct_stackitem` (
  `stackBookId` int(10) unsigned NOT NULL,
  `stackItemStackId` int(10) unsigned NOT NULL DEFAULT '0',
  `stackItemAccountId` int(10) unsigned NOT NULL DEFAULT '0',
  `stackItemType` int(1) NOT NULL DEFAULT '-1',
  `stackItemAmount` double NOT NULL DEFAULT '0',
  `stackItemText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`stackBookId`,`stackItemStackId`,`stackItemAccountId`,`stackItemType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_acct_statement`
--

DROP TABLE IF EXISTS `tiki_acct_statement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_acct_statement` (
  `statementBookId` int(10) unsigned NOT NULL,
  `statementAccountId` int(10) unsigned NOT NULL DEFAULT '0',
  `statementId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `statementBookingDate` date DEFAULT NULL,
  `statementValueDate` date DEFAULT NULL,
  `statementBookingText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statementReason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statementCounterpart` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statementCounterpartAccount` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statementCounterpartBankCode` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statementAmount` double NOT NULL,
  `statementJournalId` int(10) unsigned NOT NULL DEFAULT '0',
  `statementStackId` int(11) NOT NULL,
  PRIMARY KEY (`statementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_acct_tax`
--

DROP TABLE IF EXISTS `tiki_acct_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_acct_tax` (
  `taxBookId` int(10) unsigned NOT NULL,
  `taxId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taxText` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxAmount` double NOT NULL DEFAULT '0',
  `taxIsFix` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`taxId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_actionlog`
--

DROP TABLE IF EXISTS `tiki_actionlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_actionlog` (
  `actionId` int(8) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastModif` int(14) DEFAULT NULL,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `objectType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `categId` int(12) NOT NULL DEFAULT '0',
  `client` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`actionId`),
  KEY `lastModif` (`lastModif`),
  KEY `object` (`object`(100),`objectType`,`action`(100))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_actionlog_conf`
--

DROP TABLE IF EXISTS `tiki_actionlog_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_actionlog_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `objectType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`action`,`objectType`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_actionlog_params`
--

DROP TABLE IF EXISTS `tiki_actionlog_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_actionlog_params` (
  `actionId` int(8) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  KEY `actionId` (`actionId`),
  KEY `nameValue` (`name`,`value`(151))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_activity_stream`
--

DROP TABLE IF EXISTS `tiki_activity_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_activity_stream` (
  `activityId` int(8) NOT NULL AUTO_INCREMENT,
  `eventType` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventDate` int(11) NOT NULL,
  `arguments` blob,
  PRIMARY KEY (`activityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_activity_stream_mapping`
--

DROP TABLE IF EXISTS `tiki_activity_stream_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_activity_stream_mapping` (
  `field_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_activity_stream_rules`
--

DROP TABLE IF EXISTS `tiki_activity_stream_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_activity_stream_rules` (
  `ruleId` int(8) NOT NULL AUTO_INCREMENT,
  `eventType` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruleType` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rule` text COLLATE utf8mb4_unicode_ci,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ruleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_areas`
--

DROP TABLE IF EXISTS `tiki_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_areas` (
  `categId` int(11) NOT NULL,
  `perspectives` text COLLATE utf8mb4_unicode_ci,
  `exclusive` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `share_common` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `enabled` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  KEY `categId` (`categId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_article_types`
--

DROP TABLE IF EXISTS `tiki_article_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_article_types` (
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_ratings` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_pre_publ` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_post_expire` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `heading_only` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_comments` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `show_image` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `show_avatar` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_author` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `show_pubdate` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `show_expdate` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_reads` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `show_size` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `show_topline` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `show_subtitle` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `show_linkto` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `show_image_caption` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `creator_edit` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_can_rate_article` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type`),
  KEY `show_pre_publ` (`show_pre_publ`),
  KEY `show_post_expire` (`show_post_expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_articles`
--

DROP TABLE IF EXISTS `tiki_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_articles` (
  `articleId` int(8) NOT NULL AUTO_INCREMENT,
  `topline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 's',
  `authorName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topicId` int(14) DEFAULT NULL,
  `topicName` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(12) DEFAULT NULL,
  `useImage` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_caption` text COLLATE utf8mb4_unicode_ci,
  `image_type` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(14) DEFAULT NULL,
  `image_x` int(4) DEFAULT NULL,
  `image_y` int(4) DEFAULT NULL,
  `list_image_x` int(4) DEFAULT NULL,
  `list_image_y` int(4) DEFAULT NULL,
  `image_data` longblob,
  `publishDate` int(14) DEFAULT NULL,
  `expireDate` int(14) DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbreads` int(14) DEFAULT NULL,
  `votes` int(8) DEFAULT NULL,
  `points` int(14) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `isfloat` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ispublished` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`articleId`),
  KEY `title` (`title`(191)),
  KEY `heading` (`heading`(191)),
  KEY `body` (`body`(191)),
  KEY `nbreads` (`nbreads`),
  KEY `author` (`author`(32)),
  KEY `topicId` (`topicId`),
  KEY `publishDate` (`publishDate`),
  KEY `expireDate` (`expireDate`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_auth_tokens`
--

DROP TABLE IF EXISTS `tiki_auth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_auth_tokens` (
  `tokenId` int(11) NOT NULL AUTO_INCREMENT,
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timeout` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '1',
  `maxhits` int(11) NOT NULL DEFAULT '1',
  `token` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups` text COLLATE utf8mb4_unicode_ci,
  `createUser` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `userPrefix` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '_token',
  PRIMARY KEY (`tokenId`),
  KEY `tiki_auth_tokens_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_banners`
--

DROP TABLE IF EXISTS `tiki_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_banners` (
  `bannerId` int(12) NOT NULL AUTO_INCREMENT,
  `client` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `which` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageData` longblob,
  `imageType` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HTMLData` text COLLATE utf8mb4_unicode_ci,
  `fixedURLData` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textData` text COLLATE utf8mb4_unicode_ci,
  `fromDate` int(14) DEFAULT NULL,
  `toDate` int(14) DEFAULT NULL,
  `useDates` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mon` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tue` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wed` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thu` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fri` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sat` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sun` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hourFrom` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hourTo` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `maxImpressions` int(8) DEFAULT NULL,
  `impressions` int(8) DEFAULT NULL,
  `maxUserImpressions` int(8) DEFAULT '-1',
  `maxClicks` int(8) DEFAULT NULL,
  `clicks` int(8) DEFAULT NULL,
  `zone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onlyInURIs` text COLLATE utf8mb4_unicode_ci,
  `exceptInURIs` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`bannerId`),
  KEY `ban1` (`zone`,`useDates`,`impressions`,`maxImpressions`,`hourFrom`,`hourTo`,`fromDate`,`toDate`,`mon`,`tue`,`wed`,`thu`,`fri`,`sat`,`sun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_banning`
--

DROP TABLE IF EXISTS `tiki_banning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_banning` (
  `banId` int(12) NOT NULL AUTO_INCREMENT,
  `mode` enum('user','ip') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip1` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip2` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip3` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip4` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_from` timestamp NULL DEFAULT NULL,
  `date_to` timestamp NULL DEFAULT NULL,
  `use_dates` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`banId`),
  KEY `ban` (`use_dates`,`date_from`,`date_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_banning_sections`
--

DROP TABLE IF EXISTS `tiki_banning_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_banning_sections` (
  `banId` int(12) NOT NULL DEFAULT '0',
  `section` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`banId`,`section`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_blog_activity`
--

DROP TABLE IF EXISTS `tiki_blog_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_blog_activity` (
  `blogId` int(8) NOT NULL DEFAULT '0',
  `day` int(14) NOT NULL DEFAULT '0',
  `posts` int(8) DEFAULT NULL,
  PRIMARY KEY (`blogId`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_blog_posts`
--

DROP TABLE IF EXISTS `tiki_blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_blog_posts` (
  `postId` int(8) NOT NULL AUTO_INCREMENT,
  `blogId` int(8) NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `data_size` int(11) unsigned NOT NULL DEFAULT '0',
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `created` int(14) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hits` bigint(20) DEFAULT '0',
  `trackbacks_to` text COLLATE utf8mb4_unicode_ci,
  `trackbacks_from` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priv` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `wysiwyg` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`postId`),
  KEY `data` (`data`(191)),
  KEY `blogId` (`blogId`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_blog_posts_images`
--

DROP TABLE IF EXISTS `tiki_blog_posts_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_blog_posts_images` (
  `imgId` int(14) NOT NULL AUTO_INCREMENT,
  `postId` int(14) NOT NULL DEFAULT '0',
  `filename` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filetype` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` int(14) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`imgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_blogs`
--

DROP TABLE IF EXISTS `tiki_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_blogs` (
  `blogId` int(8) NOT NULL AUTO_INCREMENT,
  `created` int(14) DEFAULT NULL,
  `lastModif` int(14) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `public` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posts` int(8) DEFAULT NULL,
  `maxPosts` int(8) DEFAULT NULL,
  `hits` int(8) DEFAULT NULL,
  `activity` decimal(4,2) DEFAULT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci,
  `post_heading` text COLLATE utf8mb4_unicode_ci,
  `use_find` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_title` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `use_title_in_post` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `use_description` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `use_breadcrumbs` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `use_author` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_excerpt` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_date` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_poster` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_comments` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_avatar` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `always_owner` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_related` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_max` int(4) DEFAULT '5',
  PRIMARY KEY (`blogId`),
  KEY `title` (`title`(191)),
  KEY `description` (`description`(191)),
  KEY `hits` (`hits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_calendar_categories`
--

DROP TABLE IF EXISTS `tiki_calendar_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_calendar_categories` (
  `calcatId` int(11) NOT NULL AUTO_INCREMENT,
  `calendarId` int(14) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`calcatId`),
  UNIQUE KEY `catname` (`calendarId`,`name`(16))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_calendar_items`
--

DROP TABLE IF EXISTS `tiki_calendar_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_calendar_items` (
  `calitemId` int(14) NOT NULL AUTO_INCREMENT,
  `calendarId` int(14) NOT NULL DEFAULT '0',
  `start` int(14) NOT NULL DEFAULT '0',
  `end` int(14) NOT NULL DEFAULT '0',
  `locationId` int(14) DEFAULT NULL,
  `categoryId` int(14) DEFAULT NULL,
  `nlId` int(12) NOT NULL DEFAULT '0',
  `priority` enum('0','1','2','3','4','5','6','7','8','9') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` char(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `recurrenceId` int(14) DEFAULT NULL,
  `changed` tinyint(1) DEFAULT '0',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created` int(14) NOT NULL DEFAULT '0',
  `lastmodif` int(14) NOT NULL DEFAULT '0',
  `allday` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`calitemId`),
  KEY `calendarId` (`calendarId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_calendar_locations`
--

DROP TABLE IF EXISTS `tiki_calendar_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_calendar_locations` (
  `callocId` int(14) NOT NULL AUTO_INCREMENT,
  `calendarId` int(14) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` blob,
  PRIMARY KEY (`callocId`),
  UNIQUE KEY `locname` (`calendarId`,`name`(16))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_calendar_options`
--

DROP TABLE IF EXISTS `tiki_calendar_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_calendar_options` (
  `calendarId` int(14) NOT NULL DEFAULT '0',
  `optionName` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`calendarId`,`optionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_calendar_recurrence`
--

DROP TABLE IF EXISTS `tiki_calendar_recurrence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_calendar_recurrence` (
  `recurrenceId` int(14) NOT NULL AUTO_INCREMENT,
  `calendarId` int(14) NOT NULL DEFAULT '0',
  `start` int(4) NOT NULL DEFAULT '0',
  `end` int(4) NOT NULL DEFAULT '2359',
  `allday` tinyint(1) NOT NULL DEFAULT '0',
  `locationId` int(14) DEFAULT NULL,
  `categoryId` int(14) DEFAULT NULL,
  `nlId` int(12) NOT NULL DEFAULT '0',
  `priority` enum('1','2','3','4','5','6','7','8','9') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` char(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` blob,
  `weekly` tinyint(1) DEFAULT '0',
  `weekday` tinyint(1) DEFAULT NULL,
  `monthly` tinyint(1) DEFAULT '0',
  `dayOfMonth` int(2) DEFAULT NULL,
  `yearly` tinyint(1) DEFAULT '0',
  `dateOfYear` int(4) DEFAULT NULL,
  `nbRecurrences` int(8) DEFAULT NULL,
  `startPeriod` int(14) DEFAULT NULL,
  `endPeriod` int(14) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created` int(14) NOT NULL DEFAULT '0',
  `lastmodif` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`recurrenceId`),
  KEY `calendarId` (`calendarId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_calendar_roles`
--

DROP TABLE IF EXISTS `tiki_calendar_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_calendar_roles` (
  `calitemId` int(14) NOT NULL DEFAULT '0',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role` enum('0','1','2','3','6') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`calitemId`,`username`(16),`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_calendars`
--

DROP TABLE IF EXISTS `tiki_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_calendars` (
  `calendarId` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customlocations` enum('n','y') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `customcategories` enum('n','y') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `customlanguages` enum('n','y') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `custompriorities` enum('n','y') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `customparticipants` enum('n','y') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `customsubscription` enum('n','y') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `customstatus` enum('n','y') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `created` int(14) NOT NULL DEFAULT '0',
  `lastmodif` int(14) NOT NULL DEFAULT '0',
  `personal` enum('n','y') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`calendarId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_cart_inventory_hold`
--

DROP TABLE IF EXISTS `tiki_cart_inventory_hold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_cart_inventory_hold` (
  `productId` int(14) NOT NULL,
  `quantity` int(14) NOT NULL,
  `timeHeld` int(14) NOT NULL,
  `hash` char(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_categories`
--

DROP TABLE IF EXISTS `tiki_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_categories` (
  `categId` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentId` int(12) DEFAULT NULL,
  `rootId` int(11) NOT NULL DEFAULT '0',
  `hits` int(8) DEFAULT NULL,
  PRIMARY KEY (`categId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_categorized_objects`
--

DROP TABLE IF EXISTS `tiki_categorized_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_categorized_objects` (
  `catObjectId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_category_objects`
--

DROP TABLE IF EXISTS `tiki_category_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_category_objects` (
  `catObjectId` int(12) NOT NULL DEFAULT '0',
  `categId` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catObjectId`,`categId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_category_sites`
--

DROP TABLE IF EXISTS `tiki_category_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_category_sites` (
  `categId` int(10) NOT NULL DEFAULT '0',
  `siteId` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`categId`,`siteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_chat_channels`
--

DROP TABLE IF EXISTS `tiki_chat_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_chat_channels` (
  `channelId` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_users` int(8) DEFAULT NULL,
  `mode` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moderator` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh` int(6) DEFAULT NULL,
  PRIMARY KEY (`channelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_chat_messages`
--

DROP TABLE IF EXISTS `tiki_chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_chat_messages` (
  `messageId` int(8) NOT NULL AUTO_INCREMENT,
  `channelId` int(8) NOT NULL DEFAULT '0',
  `data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'anonymous',
  `timestamp` int(14) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_chat_users`
--

DROP TABLE IF EXISTS `tiki_chat_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_chat_users` (
  `nickname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `channelId` int(8) NOT NULL DEFAULT '0',
  `timestamp` int(14) DEFAULT NULL,
  PRIMARY KEY (`nickname`(183),`channelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_comments`
--

DROP TABLE IF EXISTS `tiki_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_comments` (
  `threadId` int(14) NOT NULL AUTO_INCREMENT,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `objectType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parentId` int(14) DEFAULT NULL,
  `userName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `commentDate` int(14) DEFAULT NULL,
  `hits` int(8) DEFAULT NULL,
  `type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` decimal(8,2) DEFAULT NULL,
  `votes` int(8) DEFAULT NULL,
  `average` decimal(8,4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smiley` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_reply_to` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_rating` tinyint(2) DEFAULT NULL,
  `archived` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `locked` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`threadId`),
  UNIQUE KEY `no_repeats` (`parentId`,`userName`(40),`title`(43),`commentDate`,`message_id`(40),`in_reply_to`(40)),
  KEY `title` (`title`(191)),
  KEY `data` (`data`(191)),
  KEY `hits` (`hits`),
  KEY `tc_pi` (`parentId`),
  KEY `objectType` (`object`(160),`objectType`),
  KEY `commentDate` (`commentDate`),
  KEY `threaded` (`message_id`(89),`in_reply_to`(88),`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_connect`
--

DROP TABLE IF EXISTS `tiki_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_connect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci,
  `guid` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `server` (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_content`
--

DROP TABLE IF EXISTS `tiki_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_content` (
  `contentId` int(8) NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci,
  `contentLabel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`contentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_content_templates`
--

DROP TABLE IF EXISTS `tiki_content_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_content_templates` (
  `templateId` int(10) NOT NULL AUTO_INCREMENT,
  `template_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `content` longblob,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_content_templates_sections`
--

DROP TABLE IF EXISTS `tiki_content_templates_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_content_templates_sections` (
  `templateId` int(10) NOT NULL DEFAULT '0',
  `section` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`templateId`,`section`(181))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_contributions`
--

DROP TABLE IF EXISTS `tiki_contributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_contributions` (
  `contributionId` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`contributionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_contributions_assigned`
--

DROP TABLE IF EXISTS `tiki_contributions_assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_contributions_assigned` (
  `contributionId` int(12) NOT NULL,
  `objectId` int(12) NOT NULL,
  PRIMARY KEY (`objectId`,`contributionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_cookies`
--

DROP TABLE IF EXISTS `tiki_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_cookies` (
  `cookieId` int(10) NOT NULL AUTO_INCREMENT,
  `cookie` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`cookieId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_copyrights`
--

DROP TABLE IF EXISTS `tiki_copyrights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_copyrights` (
  `copyrightId` int(12) NOT NULL AUTO_INCREMENT,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `authors` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_order` int(11) DEFAULT NULL,
  `userName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`copyrightId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_credits`
--

DROP TABLE IF EXISTS `tiki_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_credits` (
  `creditId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(8) NOT NULL,
  `credit_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiration_date` timestamp NULL DEFAULT NULL,
  `total_amount` float NOT NULL DEFAULT '0',
  `used_amount` float NOT NULL DEFAULT '0',
  `product_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`creditId`),
  KEY `userId` (`userId`,`credit_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_credits_types`
--

DROP TABLE IF EXISTS `tiki_credits_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_credits_types` (
  `credit_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_text` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_text` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_static_level` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `scaling_divisor` float NOT NULL DEFAULT '1',
  PRIMARY KEY (`credit_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_credits_usage`
--

DROP TABLE IF EXISTS `tiki_credits_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_credits_usage` (
  `usageId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `usage_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `credit_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_amount` float NOT NULL DEFAULT '0',
  `product_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`usageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_custom_route`
--

DROP TABLE IF EXISTS `tiki_custom_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_custom_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `short_url` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_db_status`
--

DROP TABLE IF EXISTS `tiki_db_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_db_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tableName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_directory_categories`
--

DROP TABLE IF EXISTS `tiki_directory_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_directory_categories` (
  `categId` int(10) NOT NULL AUTO_INCREMENT,
  `parent` int(10) DEFAULT NULL,
  `name` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `childrenType` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sites` int(10) DEFAULT NULL,
  `viewableChildren` int(4) DEFAULT NULL,
  `allowSites` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showCount` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editorGroup` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(12) DEFAULT NULL,
  PRIMARY KEY (`categId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_directory_search`
--

DROP TABLE IF EXISTS `tiki_directory_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_directory_search` (
  `term` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(14) DEFAULT NULL,
  PRIMARY KEY (`term`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_directory_sites`
--

DROP TABLE IF EXISTS `tiki_directory_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_directory_sites` (
  `siteId` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(12) DEFAULT NULL,
  `isValid` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `lastModif` int(14) DEFAULT NULL,
  `cache` longblob,
  `cache_timestamp` int(14) DEFAULT NULL,
  PRIMARY KEY (`siteId`),
  KEY `isValid` (`isValid`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_discount`
--

DROP TABLE IF EXISTS `tiki_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `code` (`code`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_download`
--

DROP TABLE IF EXISTS `tiki_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userId` int(8) NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` int(14) NOT NULL DEFAULT '0',
  `IP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `object` (`object`(163),`userId`,`type`),
  KEY `userId` (`userId`),
  KEY `type` (`type`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_dsn`
--

DROP TABLE IF EXISTS `tiki_dsn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_dsn` (
  `dsnId` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dsn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`dsnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_dynamic_variables`
--

DROP TABLE IF EXISTS `tiki_dynamic_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_dynamic_variables` (
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `lang` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_extwiki`
--

DROP TABLE IF EXISTS `tiki_extwiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_extwiki` (
  `extwikiId` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extwiki` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indexname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`extwikiId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_faq_questions`
--

DROP TABLE IF EXISTS `tiki_faq_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_faq_questions` (
  `questionId` int(10) NOT NULL AUTO_INCREMENT,
  `faqId` int(10) DEFAULT NULL,
  `position` int(4) DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created` int(14) DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  KEY `faqId` (`faqId`),
  KEY `question` (`question`(191)),
  KEY `answer` (`answer`(191)),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_faqs`
--

DROP TABLE IF EXISTS `tiki_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_faqs` (
  `faqId` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created` int(14) DEFAULT NULL,
  `questions` int(5) DEFAULT NULL,
  `hits` int(8) DEFAULT NULL,
  `canSuggest` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`faqId`),
  KEY `title` (`title`(191)),
  KEY `description` (`description`(191)),
  KEY `hits` (`hits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_feature`
--

DROP TABLE IF EXISTS `tiki_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_feature` (
  `feature_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` mediumint(9) NOT NULL,
  `status` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `setting_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'feature',
  `template` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordinal` mediumint(9) NOT NULL DEFAULT '1',
  `depends_on` mediumint(9) DEFAULT NULL,
  `keyword` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tip` text COLLATE utf8mb4_unicode_ci,
  `feature_count` mediumint(9) NOT NULL DEFAULT '0',
  `feature_path` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`feature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_featured_links`
--

DROP TABLE IF EXISTS `tiki_featured_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_featured_links` (
  `url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `hits` int(8) DEFAULT NULL,
  `position` int(6) DEFAULT NULL,
  `type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`url`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_file_backlinks`
--

DROP TABLE IF EXISTS `tiki_file_backlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_file_backlinks` (
  `fileId` int(14) NOT NULL,
  `objectId` int(12) NOT NULL,
  KEY `objectId` (`objectId`),
  KEY `fileId` (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_file_drafts`
--

DROP TABLE IF EXISTS `tiki_file_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_file_drafts` (
  `fileId` int(14) NOT NULL,
  `filename` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` int(14) DEFAULT NULL,
  `filetype` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` longtext COLLATE utf8mb4_unicode_ci,
  `lastModif` int(14) DEFAULT NULL,
  `lockedby` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`fileId`,`user`(177))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_file_galleries`
--

DROP TABLE IF EXISTS `tiki_file_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_file_galleries` (
  `galleryId` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `template` int(10) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created` int(14) DEFAULT NULL,
  `visible` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastModif` int(14) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hits` int(14) DEFAULT NULL,
  `votes` int(8) DEFAULT NULL,
  `points` decimal(8,2) DEFAULT NULL,
  `maxRows` int(10) DEFAULT NULL,
  `public` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_id` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_icon` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_name` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_size` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_description` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_desc` int(8) DEFAULT NULL,
  `show_created` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_hits` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_lastDownload` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentId` int(14) NOT NULL DEFAULT '-1',
  `lockable` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `show_lockedby` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archives` int(4) DEFAULT '0',
  `sort_mode` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_modified` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_author` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_creator` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subgal_conf` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_last_user` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_comment` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_files` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_explorer` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_path` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_slideshow` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_view` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quota` int(8) DEFAULT '0',
  `size` int(14) DEFAULT NULL,
  `wiki_syntax` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backlinkPerms` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `show_backlinks` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_deleteAfter` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_checked` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_share` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_max_size_x` int(8) NOT NULL DEFAULT '0',
  `image_max_size_y` int(8) NOT NULL DEFAULT '0',
  `show_source` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'o',
  `icon_fileId` int(14) unsigned DEFAULT NULL,
  PRIMARY KEY (`galleryId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_file_handlers`
--

DROP TABLE IF EXISTS `tiki_file_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_file_handlers` (
  `mime_type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmd` varchar(238) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_files`
--

DROP TABLE IF EXISTS `tiki_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_files` (
  `fileId` int(14) NOT NULL AUTO_INCREMENT,
  `galleryId` int(14) NOT NULL DEFAULT '0',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created` int(14) DEFAULT NULL,
  `filename` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` int(14) DEFAULT NULL,
  `filetype` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(14) DEFAULT NULL,
  `maxhits` int(14) DEFAULT NULL,
  `lastDownload` int(14) DEFAULT NULL,
  `votes` int(8) DEFAULT NULL,
  `points` decimal(8,2) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_reference` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_data` longtext COLLATE utf8mb4_unicode_ci,
  `metadata` longtext COLLATE utf8mb4_unicode_ci,
  `lastModif` int(14) DEFAULT NULL,
  `lastModifUser` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockedby` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archiveId` int(14) DEFAULT '0',
  `deleteAfter` int(14) DEFAULT NULL,
  `ocr_state` tinyint(1) DEFAULT NULL,
  `ocr_lang` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ocr_data` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`fileId`),
  KEY `name` (`name`(191)),
  KEY `description` (`description`(191)),
  KEY `created` (`created`),
  KEY `archiveId` (`archiveId`),
  KEY `galleryId` (`galleryId`),
  KEY `hits` (`hits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_forum_attachments`
--

DROP TABLE IF EXISTS `tiki_forum_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_forum_attachments` (
  `attId` int(14) NOT NULL AUTO_INCREMENT,
  `threadId` int(14) NOT NULL DEFAULT '0',
  `qId` int(14) NOT NULL DEFAULT '0',
  `forumId` int(14) DEFAULT NULL,
  `filename` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filetype` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` int(12) DEFAULT NULL,
  `data` longblob,
  `dir` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`attId`),
  KEY `threadId` (`threadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_forum_reads`
--

DROP TABLE IF EXISTS `tiki_forum_reads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_forum_reads` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `threadId` int(14) NOT NULL DEFAULT '0',
  `forumId` int(14) DEFAULT NULL,
  `timestamp` int(14) DEFAULT NULL,
  PRIMARY KEY (`user`(177),`threadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_forums`
--

DROP TABLE IF EXISTS `tiki_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_forums` (
  `forumId` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created` int(14) DEFAULT NULL,
  `lastPost` int(14) DEFAULT NULL,
  `threads` int(8) DEFAULT NULL,
  `comments` int(8) DEFAULT NULL,
  `controlFlood` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floodInterval` int(8) DEFAULT NULL,
  `moderator` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(8) DEFAULT NULL,
  `mail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useMail` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usePruneUnreplied` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pruneUnrepliedAge` int(8) DEFAULT NULL,
  `usePruneOld` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pruneMaxAge` int(8) DEFAULT NULL,
  `topicsPerPage` int(6) DEFAULT NULL,
  `topicOrdering` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `threadOrdering` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `att` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `att_store` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `att_store_dir` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `att_max_size` int(12) DEFAULT NULL,
  `att_list_nb` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ui_level` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_use_password` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moderator_group` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outbound_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outbound_mails_for_inbound_mails` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outbound_mails_reply_link` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outbound_from` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_pop_server` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_pop_port` int(4) DEFAULT NULL,
  `inbound_pop_user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_pop_password` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic_smileys` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ui_avatar` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ui_rating_choice_topic` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ui_flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ui_posts` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ui_email` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ui_online` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic_summary` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_description` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topics_list_replies` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topics_list_reads` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topics_list_pts` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topics_list_lastpost` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topics_list_lastpost_title` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topics_list_lastpost_avatar` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topics_list_author` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topics_list_author_avatar` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vote_threads` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_last_n` int(2) DEFAULT '0',
  `threadStyle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentsPerPage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_flat` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mandatory_contribution` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forumLanguage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`forumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_forums_queue`
--

DROP TABLE IF EXISTS `tiki_forums_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_forums_queue` (
  `qId` int(14) NOT NULL AUTO_INCREMENT,
  `object` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentId` int(14) DEFAULT NULL,
  `forumId` int(14) DEFAULT NULL,
  `timestamp` int(14) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic_smiley` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic_title` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_reply_to` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`qId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_forums_reported`
--

DROP TABLE IF EXISTS `tiki_forums_reported`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_forums_reported` (
  `threadId` int(12) NOT NULL DEFAULT '0',
  `forumId` int(12) NOT NULL DEFAULT '0',
  `parentId` int(12) NOT NULL DEFAULT '0',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timestamp` int(14) DEFAULT NULL,
  `reason` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`threadId`,`forumId`,`parentId`,`user`(182))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_freetagged_objects`
--

DROP TABLE IF EXISTS `tiki_freetagged_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_freetagged_objects` (
  `tagId` int(12) NOT NULL AUTO_INCREMENT,
  `objectId` int(11) NOT NULL DEFAULT '0',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagId`,`user`(168),`objectId`),
  KEY `tagId` (`tagId`),
  KEY `user` (`user`(191)),
  KEY `objectId` (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_freetags`
--

DROP TABLE IF EXISTS `tiki_freetags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_freetags` (
  `tagId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `raw_tag` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_galleries`
--

DROP TABLE IF EXISTS `tiki_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_galleries` (
  `galleryId` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created` int(14) DEFAULT NULL,
  `lastModif` int(14) DEFAULT NULL,
  `visible` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geographic` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hits` int(14) DEFAULT NULL,
  `maxRows` int(10) DEFAULT NULL,
  `rowImages` int(10) DEFAULT NULL,
  `thumbSizeX` int(10) DEFAULT NULL,
  `thumbSizeY` int(10) DEFAULT NULL,
  `public` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortorder` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `sortdirection` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'desc',
  `galleryimage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'first',
  `parentgallery` int(14) NOT NULL DEFAULT '-1',
  `showname` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `showimageid` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `showdescription` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `showcreated` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `showuser` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `showhits` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `showxysize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `showfilesize` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `showfilename` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `defaultscale` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'o',
  `showcategories` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`galleryId`),
  KEY `name` (`name`),
  KEY `description` (`description`(191)),
  KEY `hits` (`hits`),
  KEY `parentgallery` (`parentgallery`),
  KEY `visibleUser` (`visible`,`user`(190))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_galleries_scales`
--

DROP TABLE IF EXISTS `tiki_galleries_scales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_galleries_scales` (
  `galleryId` int(14) NOT NULL DEFAULT '0',
  `scale` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`galleryId`,`scale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_goal_events`
--

DROP TABLE IF EXISTS `tiki_goal_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_goal_events` (
  `eventId` int(11) NOT NULL AUTO_INCREMENT,
  `eventDate` int(11) NOT NULL,
  `eventType` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `targetType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `targetObject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups` blob NOT NULL,
  PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_goals`
--

DROP TABLE IF EXISTS `tiki_goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_goals` (
  `goalId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `description` text COLLATE utf8mb4_unicode_ci,
  `enabled` int(11) NOT NULL DEFAULT '0',
  `daySpan` int(11) NOT NULL DEFAULT '14',
  `from` datetime DEFAULT NULL,
  `to` datetime DEFAULT NULL,
  `eligible` blob,
  `conditions` blob,
  `rewards` blob,
  PRIMARY KEY (`goalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_group_inclusion`
--

DROP TABLE IF EXISTS `tiki_group_inclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_group_inclusion` (
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `includeGroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`groupName`(120),`includeGroup`(120))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_group_watches`
--

DROP TABLE IF EXISTS `tiki_group_watches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_group_watches` (
  `watchId` int(12) NOT NULL AUTO_INCREMENT,
  `group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `event` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `object` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`watchId`),
  KEY `event-object-group` (`event`,`object`(100),`group`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_groupalert`
--

DROP TABLE IF EXISTS `tiki_groupalert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_groupalert` (
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `objectType` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `objectId` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `displayEachuser` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`groupName`(161),`objectType`,`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_h5p_contents`
--

DROP TABLE IF EXISTS `tiki_h5p_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_h5p_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `library_id` int(10) unsigned NOT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filtered` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disable` int(10) unsigned NOT NULL DEFAULT '0',
  `content_type` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authors` mediumtext COLLATE utf8mb4_unicode_ci,
  `license` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `source` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_from` int(10) unsigned DEFAULT NULL,
  `year_to` int(10) unsigned DEFAULT NULL,
  `license_version` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_extras` longtext COLLATE utf8mb4_unicode_ci,
  `author_comments` longtext COLLATE utf8mb4_unicode_ci,
  `changes` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fileId` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_h5p_contents_libraries`
--

DROP TABLE IF EXISTS `tiki_h5p_contents_libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_h5p_contents_libraries` (
  `content_id` int(10) unsigned NOT NULL,
  `library_id` int(10) unsigned NOT NULL,
  `dependency_type` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `drop_css` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`content_id`,`library_id`,`dependency_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_h5p_libraries`
--

DROP TABLE IF EXISTS `tiki_h5p_libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_h5p_libraries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major_version` int(10) unsigned NOT NULL,
  `minor_version` int(10) unsigned NOT NULL,
  `patch_version` int(10) unsigned NOT NULL,
  `runnable` int(10) unsigned NOT NULL,
  `restricted` int(10) unsigned NOT NULL DEFAULT '0',
  `fullscreen` int(10) unsigned NOT NULL,
  `embed_types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preloaded_js` text COLLATE utf8mb4_unicode_ci,
  `preloaded_css` text COLLATE utf8mb4_unicode_ci,
  `drop_library_css` text COLLATE utf8mb4_unicode_ci,
  `semantics` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tutorial_url` varchar(1023) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_icon` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata_settings` text COLLATE utf8mb4_unicode_ci,
  `add_to` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name_version` (`name`,`major_version`,`minor_version`,`patch_version`),
  KEY `runnable` (`runnable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_h5p_libraries_cachedassets`
--

DROP TABLE IF EXISTS `tiki_h5p_libraries_cachedassets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_h5p_libraries_cachedassets` (
  `library_id` int(10) unsigned NOT NULL,
  `hash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`library_id`,`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_h5p_libraries_hub_cache`
--

DROP TABLE IF EXISTS `tiki_h5p_libraries_hub_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_h5p_libraries_hub_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `machine_name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major_version` int(10) unsigned NOT NULL,
  `minor_version` int(10) unsigned NOT NULL,
  `patch_version` int(10) unsigned NOT NULL,
  `h5p_major_version` int(10) unsigned DEFAULT NULL,
  `h5p_minor_version` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(511) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  `updated_at` int(10) unsigned NOT NULL,
  `is_recommended` int(10) unsigned NOT NULL,
  `popularity` int(10) unsigned NOT NULL,
  `screenshots` text COLLATE utf8mb4_unicode_ci,
  `license` text COLLATE utf8mb4_unicode_ci,
  `example` varchar(511) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tutorial` varchar(511) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `categories` text COLLATE utf8mb4_unicode_ci,
  `owner` varchar(511) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name_version` (`machine_name`,`major_version`,`minor_version`,`patch_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_h5p_libraries_languages`
--

DROP TABLE IF EXISTS `tiki_h5p_libraries_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_h5p_libraries_languages` (
  `library_id` int(10) unsigned NOT NULL,
  `language_code` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`library_id`,`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_h5p_libraries_libraries`
--

DROP TABLE IF EXISTS `tiki_h5p_libraries_libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_h5p_libraries_libraries` (
  `library_id` int(10) unsigned NOT NULL,
  `required_library_id` int(10) unsigned NOT NULL,
  `dependency_type` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`library_id`,`required_library_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_h5p_results`
--

DROP TABLE IF EXISTS `tiki_h5p_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_h5p_results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `score` int(10) unsigned NOT NULL,
  `max_score` int(10) unsigned NOT NULL,
  `opened` int(10) unsigned NOT NULL,
  `finished` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_user` (`content_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_h5p_tmpfiles`
--

DROP TABLE IF EXISTS `tiki_h5p_tmpfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_h5p_tmpfiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `path` (`path`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_history`
--

DROP TABLE IF EXISTS `tiki_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_history` (
  `historyId` int(12) NOT NULL AUTO_INCREMENT,
  `pageName` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(8) NOT NULL DEFAULT '0',
  `version_minor` int(8) NOT NULL DEFAULT '0',
  `lastModif` int(14) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pageName`,`version`),
  KEY `user` (`user`(191)),
  KEY `historyId` (`historyId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_hotwords`
--

DROP TABLE IF EXISTS `tiki_hotwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_hotwords` (
  `word` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`word`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_html_pages`
--

DROP TABLE IF EXISTS `tiki_html_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_html_pages` (
  `pageName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` longblob,
  `refresh` int(10) DEFAULT NULL,
  `type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  PRIMARY KEY (`pageName`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_html_pages_dynamic_zones`
--

DROP TABLE IF EXISTS `tiki_html_pages_dynamic_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_html_pages_dynamic_zones` (
  `pageName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zone` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`pageName`,`zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_images`
--

DROP TABLE IF EXISTS `tiki_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_images` (
  `imageId` int(14) NOT NULL AUTO_INCREMENT,
  `galleryId` int(14) NOT NULL DEFAULT '0',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `lon` float DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hits` int(14) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `name` (`name`(191)),
  KEY `description` (`description`(191)),
  KEY `hits` (`hits`),
  KEY `ti_gId` (`galleryId`),
  KEY `ti_cr` (`created`),
  KEY `ti_us` (`user`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_images_data`
--

DROP TABLE IF EXISTS `tiki_images_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_images_data` (
  `imageId` int(14) NOT NULL DEFAULT '0',
  `xsize` int(8) NOT NULL DEFAULT '0',
  `ysize` int(8) NOT NULL DEFAULT '0',
  `type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(14) DEFAULT NULL,
  `filetype` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `etag` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`imageId`,`xsize`,`ysize`,`type`),
  KEY `t_i_d_it` (`imageId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_integrator_reps`
--

DROP TABLE IF EXISTS `tiki_integrator_reps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_integrator_reps` (
  `repID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `css_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `visibility` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `cacheable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `expiration` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`repID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_integrator_rules`
--

DROP TABLE IF EXISTS `tiki_integrator_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_integrator_rules` (
  `ruleID` int(11) NOT NULL AUTO_INCREMENT,
  `repID` int(11) NOT NULL DEFAULT '0',
  `ord` int(2) unsigned NOT NULL DEFAULT '0',
  `srch` blob NOT NULL,
  `repl` blob NOT NULL,
  `type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `casesense` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `rxmod` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enabled` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ruleID`),
  KEY `repID` (`repID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_invite`
--

DROP TABLE IF EXISTS `tiki_invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inviter` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ts` int(11) NOT NULL,
  `emailsubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailcontent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wikicontent` text COLLATE utf8mb4_unicode_ci,
  `wikipageafter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_invited`
--

DROP TABLE IF EXISTS `tiki_invited`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_invited` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_invite` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` enum('no','registered','logged') COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_on_user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_invite` (`id_invite`),
  KEY `used_on_user` (`used_on_user`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_language`
--

DROP TABLE IF EXISTS `tiki_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_language` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `source` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` char(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tran` text COLLATE utf8mb4_unicode_ci,
  `changed` tinyint(1) DEFAULT NULL,
  `general` tinyint(1) DEFAULT NULL COMMENT 'true if this translation is general and can be contributed to the Tiki community, false if it is specific to this instance',
  `userId` int(8) DEFAULT NULL,
  `lastModif` int(14) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_link_cache`
--

DROP TABLE IF EXISTS `tiki_link_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_link_cache` (
  `cacheId` int(14) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `refresh` int(14) DEFAULT NULL,
  PRIMARY KEY (`cacheId`),
  KEY `url` (`url`(191)),
  KEY `urlindex` (`url`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_links`
--

DROP TABLE IF EXISTS `tiki_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_links` (
  `fromPage` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `toPage` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`fromPage`(96),`toPage`(95)),
  KEY `toPage` (`toPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_live_support_events`
--

DROP TABLE IF EXISTS `tiki_live_support_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_live_support_events` (
  `eventId` int(14) NOT NULL AUTO_INCREMENT,
  `reqId` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seqId` int(14) DEFAULT NULL,
  `senderId` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `timestamp` int(14) DEFAULT NULL,
  PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_live_support_message_comments`
--

DROP TABLE IF EXISTS `tiki_live_support_message_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_live_support_message_comments` (
  `cId` int(12) NOT NULL AUTO_INCREMENT,
  `msgId` int(12) DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `timestamp` int(14) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_live_support_messages`
--

DROP TABLE IF EXISTS `tiki_live_support_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_live_support_messages` (
  `msgId` int(12) NOT NULL AUTO_INCREMENT,
  `data` text COLLATE utf8mb4_unicode_ci,
  `timestamp` int(14) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(2) DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` int(4) DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`msgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_live_support_modules`
--

DROP TABLE IF EXISTS `tiki_live_support_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_live_support_modules` (
  `modId` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`modId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_live_support_operators`
--

DROP TABLE IF EXISTS `tiki_live_support_operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_live_support_operators` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accepted_requests` int(10) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longest_chat` int(10) DEFAULT NULL,
  `shortest_chat` int(10) DEFAULT NULL,
  `average_chat` int(10) DEFAULT NULL,
  `last_chat` int(14) DEFAULT NULL,
  `time_online` int(10) DEFAULT NULL,
  `votes` int(10) DEFAULT NULL,
  `points` int(10) DEFAULT NULL,
  `status_since` int(14) DEFAULT NULL,
  PRIMARY KEY (`user`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_live_support_requests`
--

DROP TABLE IF EXISTS `tiki_live_support_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_live_support_requests` (
  `reqId` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tiki_user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operator` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operator_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `req_timestamp` int(14) DEFAULT NULL,
  `timestamp` int(14) DEFAULT NULL,
  `status` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_started` int(14) DEFAULT NULL,
  `chat_ended` int(14) DEFAULT NULL,
  PRIMARY KEY (`reqId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_logs`
--

DROP TABLE IF EXISTS `tiki_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_logs` (
  `logId` int(8) NOT NULL AUTO_INCREMENT,
  `logtype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logmessage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loguser` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logip` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logclient` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logtime` int(14) NOT NULL,
  PRIMARY KEY (`logId`),
  KEY `logtype` (`logtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_mail_events`
--

DROP TABLE IF EXISTS `tiki_mail_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_mail_events` (
  `event` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_mail_queue`
--

DROP TABLE IF EXISTS `tiki_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_mail_queue` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8mb4_unicode_ci,
  `attempts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_mailin_accounts`
--

DROP TABLE IF EXISTS `tiki_mailin_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_mailin_accounts` (
  `accountId` int(12) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `account` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `protocol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pop',
  `host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(4) DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anonymous` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `admin` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `attachments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `routing` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `article_topicId` int(4) DEFAULT NULL,
  `article_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discard_after` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_inlineImages` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `save_html` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `categoryId` int(12) DEFAULT NULL,
  `namespace` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respond_email` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `leave_email` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_menu_languages`
--

DROP TABLE IF EXISTS `tiki_menu_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_menu_languages` (
  `menuId` int(8) NOT NULL AUTO_INCREMENT,
  `language` char(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`menuId`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_menu_options`
--

DROP TABLE IF EXISTS `tiki_menu_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_menu_options` (
  `optionId` int(8) NOT NULL AUTO_INCREMENT,
  `menuId` int(8) DEFAULT NULL,
  `type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(4) DEFAULT NULL,
  `section` text COLLATE utf8mb4_unicode_ci,
  `perm` text COLLATE utf8mb4_unicode_ci,
  `groupname` text COLLATE utf8mb4_unicode_ci,
  `userlevel` int(4) DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`optionId`),
  UNIQUE KEY `uniq_menu` (`menuId`,`name`(30),`url`(50),`position`,`section`(60),`perm`(50),`groupname`(50))
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_menus`
--

DROP TABLE IF EXISTS `tiki_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_menus` (
  `menuId` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_items_icons` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `parse` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_minical_events`
--

DROP TABLE IF EXISTS `tiki_minical_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_minical_events` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `eventId` int(12) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start` int(14) DEFAULT NULL,
  `end` int(14) DEFAULT NULL,
  `security` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(3) DEFAULT NULL,
  `topicId` int(12) DEFAULT NULL,
  `reminded` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_minical_topics`
--

DROP TABLE IF EXISTS `tiki_minical_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_minical_topics` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `topicId` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filetype` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isIcon` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`topicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_minichat`
--

DROP TABLE IF EXISTS `tiki_minichat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_minichat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ts` int(10) unsigned NOT NULL,
  `user` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nick` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel` (`channel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_modules`
--

DROP TABLE IF EXISTS `tiki_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_modules` (
  `moduleId` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ord` int(4) NOT NULL DEFAULT '0',
  `type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cache_time` int(14) DEFAULT NULL,
  `rows` int(4) DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `groups` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`moduleId`),
  KEY `positionType` (`position`,`type`),
  KEY `namePosOrdParam` (`name`(100),`position`,`ord`,`params`(120))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_newsletter_groups`
--

DROP TABLE IF EXISTS `tiki_newsletter_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_newsletter_groups` (
  `nlId` int(12) NOT NULL DEFAULT '0',
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `include_groups` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  PRIMARY KEY (`nlId`,`groupName`(179))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_newsletter_included`
--

DROP TABLE IF EXISTS `tiki_newsletter_included`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_newsletter_included` (
  `nlId` int(12) NOT NULL DEFAULT '0',
  `includedId` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nlId`,`includedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_newsletter_pages`
--

DROP TABLE IF EXISTS `tiki_newsletter_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_newsletter_pages` (
  `nlId` int(12) NOT NULL,
  `wikiPageName` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validateAddrs` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `addToList` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`nlId`,`wikiPageName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_newsletter_subscriptions`
--

DROP TABLE IF EXISTS `tiki_newsletter_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_newsletter_subscriptions` (
  `nlId` int(12) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribed` int(14) DEFAULT NULL,
  `isUser` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `included` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`nlId`,`email`(178),`isUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_newsletters`
--

DROP TABLE IF EXISTS `tiki_newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_newsletters` (
  `nlId` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created` int(14) DEFAULT NULL,
  `lastSent` int(14) DEFAULT NULL,
  `editions` int(10) DEFAULT NULL,
  `users` int(10) DEFAULT NULL,
  `allowUserSub` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `allowAnySub` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubMsg` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `validateAddr` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `frequency` int(14) DEFAULT NULL,
  `allowTxt` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `author` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowArticleClip` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `autoArticleClip` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `articleClipTypes` text COLLATE utf8mb4_unicode_ci,
  `articleClipRange` int(14) DEFAULT NULL,
  `emptyClipBlocksSend` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`nlId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_oauthserver_clients`
--

DROP TABLE IF EXISTS `tiki_oauthserver_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_oauthserver_clients` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_object_attributes`
--

DROP TABLE IF EXISTS `tiki_object_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_object_attributes` (
  `attributeId` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemId` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`attributeId`),
  UNIQUE KEY `item_attribute_uq` (`type`,`itemId`(91),`attribute`(50)),
  KEY `attribute_lookup_ix` (`attribute`,`value`(121))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_object_ratings`
--

DROP TABLE IF EXISTS `tiki_object_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_object_ratings` (
  `catObjectId` int(12) NOT NULL DEFAULT '0',
  `pollId` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catObjectId`,`pollId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_object_relations`
--

DROP TABLE IF EXISTS `tiki_object_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_object_relations` (
  `relationId` int(11) NOT NULL AUTO_INCREMENT,
  `relation` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_itemId` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_itemId` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`relationId`),
  KEY `relation_source_ix` (`source_type`,`source_itemId`),
  KEY `relation_target_ix` (`target_type`,`target_itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_object_scores`
--

DROP TABLE IF EXISTS `tiki_object_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_object_scores` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `triggerObjectType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `triggerObjectId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `triggerUser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `triggerEvent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruleId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipientObjectType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipientObjectId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pointsAssigned` int(11) NOT NULL,
  `pointsBalance` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `reversalOf` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_objects`
--

DROP TABLE IF EXISTS `tiki_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_objects` (
  `objectId` int(12) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created` int(14) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `href` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(8) DEFAULT NULL,
  `comments_locked` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`objectId`),
  KEY `type` (`type`,`objectId`),
  KEY `itemId` (`itemId`(141),`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_output`
--

DROP TABLE IF EXISTS `tiki_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_output` (
  `entityId` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `objectType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `outputType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(8) NOT NULL DEFAULT '0',
  `outputId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`outputId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_page_footnotes`
--

DROP TABLE IF EXISTS `tiki_page_footnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_page_footnotes` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pageName` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`user`(150),`pageName`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_page_references`
--

DROP TABLE IF EXISTS `tiki_page_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_page_references` (
  `ref_id` int(14) NOT NULL AUTO_INCREMENT,
  `page_id` int(14) DEFAULT NULL,
  `biblio_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `part` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ref_id`),
  UNIQUE KEY `uk1_tiki_page_ref_biblio_code` (`page_id`,`biblio_code`),
  KEY `PageId` (`page_id`),
  KEY `idx_tiki_page_ref_title` (`title`(191)),
  KEY `idx_tiki_page_ref_author` (`author`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_pages`
--

DROP TABLE IF EXISTS `tiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_pages` (
  `page_id` int(14) NOT NULL AUTO_INCREMENT,
  `pageName` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pageSlug` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(8) DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastModif` int(14) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int(8) NOT NULL DEFAULT '0',
  `version_minor` int(8) NOT NULL DEFAULT '0',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` int(8) DEFAULT NULL,
  `votes` int(8) DEFAULT NULL,
  `cache` longtext COLLATE utf8mb4_unicode_ci,
  `wiki_cache` int(10) DEFAULT NULL,
  `cache_timestamp` int(14) DEFAULT NULL,
  `pageRank` decimal(4,3) DEFAULT NULL,
  `creator` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_size` int(10) unsigned DEFAULT '0',
  `lang` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockedby` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) DEFAULT '0',
  `created` int(14) DEFAULT NULL,
  `wysiwyg` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wiki_authors_style` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `comments_enabled` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `pageName` (`pageName`),
  UNIQUE KEY `pageSlug` (`pageSlug`),
  KEY `data` (`data`(191)),
  KEY `pageRank` (`pageRank`),
  KEY `lastModif` (`lastModif`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_pages_changes`
--

DROP TABLE IF EXISTS `tiki_pages_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_pages_changes` (
  `page_id` int(14) NOT NULL DEFAULT '0',
  `version` int(10) NOT NULL DEFAULT '0',
  `segments_added` int(10) DEFAULT NULL,
  `segments_removed` int(10) DEFAULT NULL,
  `segments_total` int(10) DEFAULT NULL,
  PRIMARY KEY (`page_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_pages_translation_bits`
--

DROP TABLE IF EXISTS `tiki_pages_translation_bits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_pages_translation_bits` (
  `translation_bit_id` int(14) NOT NULL AUTO_INCREMENT,
  `page_id` int(14) NOT NULL,
  `version` int(8) NOT NULL,
  `source_translation_bit` int(10) DEFAULT NULL,
  `original_translation_bit` int(10) DEFAULT NULL,
  `flags` set('critical') COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`translation_bit_id`),
  KEY `page_id` (`page_id`),
  KEY `original_translation_bit` (`original_translation_bit`),
  KEY `source_translation_bit` (`source_translation_bit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_pageviews`
--

DROP TABLE IF EXISTS `tiki_pageviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_pageviews` (
  `day` int(14) NOT NULL DEFAULT '0',
  `pageviews` int(14) DEFAULT NULL,
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_payment_received`
--

DROP TABLE IF EXISTS `tiki_payment_received`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_payment_received` (
  `paymentReceivedId` int(11) NOT NULL AUTO_INCREMENT,
  `paymentRequestId` int(11) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(7,2) DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'paid',
  `details` text COLLATE utf8mb4_unicode_ci,
  `userId` int(8) DEFAULT NULL,
  PRIMARY KEY (`paymentReceivedId`),
  KEY `payment_request_ix` (`paymentRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_payment_requests`
--

DROP TABLE IF EXISTS `tiki_payment_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_payment_requests` (
  `paymentRequestId` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(7,2) NOT NULL,
  `amount_paid` decimal(7,2) NOT NULL DEFAULT '0.00',
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `due_date` timestamp NULL DEFAULT NULL,
  `authorized_until` timestamp NULL DEFAULT NULL,
  `cancel_date` timestamp NULL DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actions` text COLLATE utf8mb4_unicode_ci,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `userId` int(8) DEFAULT NULL,
  PRIMARY KEY (`paymentRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_perspective_preferences`
--

DROP TABLE IF EXISTS `tiki_perspective_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_perspective_preferences` (
  `perspectiveId` int(11) NOT NULL,
  `pref` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`perspectiveId`,`pref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_perspectives`
--

DROP TABLE IF EXISTS `tiki_perspectives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_perspectives` (
  `perspectiveId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`perspectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_plugin_security`
--

DROP TABLE IF EXISTS `tiki_plugin_security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_plugin_security` (
  `fingerprint` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_by` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_objectType` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_objectId` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`fingerprint`(191)),
  KEY `last_object` (`last_objectType`,`last_objectId`(171))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_poll_objects`
--

DROP TABLE IF EXISTS `tiki_poll_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_poll_objects` (
  `catObjectId` int(11) NOT NULL DEFAULT '0',
  `pollId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`catObjectId`,`pollId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_poll_options`
--

DROP TABLE IF EXISTS `tiki_poll_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_poll_options` (
  `pollId` int(8) NOT NULL DEFAULT '0',
  `optionId` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(4) NOT NULL DEFAULT '0',
  `votes` int(8) DEFAULT NULL,
  PRIMARY KEY (`optionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_polls`
--

DROP TABLE IF EXISTS `tiki_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_polls` (
  `pollId` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `votes` int(8) DEFAULT NULL,
  `active` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publishDate` int(14) DEFAULT NULL,
  `voteConsiderationSpan` int(4) DEFAULT '0',
  PRIMARY KEY (`pollId`),
  KEY `tiki_poll_lookup` (`active`,`title`(190))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_preferences`
--

DROP TABLE IF EXISTS `tiki_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_preferences` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_private_messages`
--

DROP TABLE IF EXISTS `tiki_private_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_private_messages` (
  `messageId` int(8) NOT NULL AUTO_INCREMENT,
  `toNickname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `poster` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'anonymous',
  `timestamp` int(14) DEFAULT NULL,
  `received` tinyint(1) NOT NULL DEFAULT '0',
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  KEY `received` (`received`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_profile_symbols`
--

DROP TABLE IF EXISTS `tiki_profile_symbols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_profile_symbols` (
  `domain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `named` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`domain`,`profile`(70),`object`(71)),
  KEY `named` (`named`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_programmed_content`
--

DROP TABLE IF EXISTS `tiki_programmed_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_programmed_content` (
  `pId` int(8) NOT NULL AUTO_INCREMENT,
  `contentId` int(8) NOT NULL DEFAULT '0',
  `content_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `publishDate` int(14) NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_queue`
--

DROP TABLE IF EXISTS `tiki_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_queue` (
  `entryId` int(11) NOT NULL AUTO_INCREMENT,
  `queue` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `handler` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`entryId`),
  KEY `queue_name_ix` (`queue`),
  KEY `queue_handler_ix` (`handler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_quiz_question_options`
--

DROP TABLE IF EXISTS `tiki_quiz_question_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_quiz_question_options` (
  `optionId` int(10) NOT NULL AUTO_INCREMENT,
  `questionId` int(10) DEFAULT NULL,
  `optionText` text COLLATE utf8mb4_unicode_ci,
  `points` int(4) DEFAULT NULL,
  PRIMARY KEY (`optionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_quiz_questions`
--

DROP TABLE IF EXISTS `tiki_quiz_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_quiz_questions` (
  `questionId` int(10) NOT NULL AUTO_INCREMENT,
  `quizId` int(10) DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `position` int(4) DEFAULT NULL,
  `type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxPoints` int(4) DEFAULT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_quiz_results`
--

DROP TABLE IF EXISTS `tiki_quiz_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_quiz_results` (
  `resultId` int(10) NOT NULL AUTO_INCREMENT,
  `quizId` int(10) DEFAULT NULL,
  `fromPoints` int(4) DEFAULT NULL,
  `toPoints` int(4) DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`resultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_quiz_stats`
--

DROP TABLE IF EXISTS `tiki_quiz_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_quiz_stats` (
  `quizId` int(10) NOT NULL DEFAULT '0',
  `questionId` int(10) NOT NULL DEFAULT '0',
  `optionId` int(10) NOT NULL DEFAULT '0',
  `votes` int(10) DEFAULT NULL,
  PRIMARY KEY (`quizId`,`questionId`,`optionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_quiz_stats_sum`
--

DROP TABLE IF EXISTS `tiki_quiz_stats_sum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_quiz_stats_sum` (
  `quizId` int(10) NOT NULL DEFAULT '0',
  `quizName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timesTaken` int(10) DEFAULT NULL,
  `avgpoints` decimal(5,2) DEFAULT NULL,
  `avgavg` decimal(5,2) DEFAULT NULL,
  `avgtime` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`quizId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_quizzes`
--

DROP TABLE IF EXISTS `tiki_quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_quizzes` (
  `quizId` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `canRepeat` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeResults` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `questionsPerPage` int(4) DEFAULT NULL,
  `timeLimited` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeLimit` int(14) DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `taken` int(10) DEFAULT NULL,
  `immediateFeedback` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showAnswers` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shuffleQuestions` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shuffleAnswers` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publishDate` int(14) DEFAULT NULL,
  `expireDate` int(14) DEFAULT NULL,
  `bDeleted` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nAuthor` int(4) DEFAULT NULL,
  `bOnline` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bRandomQuestions` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nRandomQuestions` tinyint(4) DEFAULT NULL,
  `bLimitQuestionsPerPage` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nLimitQuestionsPerPage` tinyint(4) DEFAULT NULL,
  `bMultiSession` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nCanRepeat` tinyint(4) DEFAULT NULL,
  `sGradingMethod` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sShowScore` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sShowCorrectAnswers` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sPublishStats` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bAdditionalQuestions` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bForum` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sForum` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sPrologue` text COLLATE utf8mb4_unicode_ci,
  `sData` text COLLATE utf8mb4_unicode_ci,
  `sEpilogue` text COLLATE utf8mb4_unicode_ci,
  `passingperct` int(4) DEFAULT '0',
  PRIMARY KEY (`quizId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_rating_configs`
--

DROP TABLE IF EXISTS `tiki_rating_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_rating_configs` (
  `ratingConfigId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` int(11) NOT NULL DEFAULT '3600',
  `formula` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `callbacks` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ratingConfigId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_rating_obtained`
--

DROP TABLE IF EXISTS `tiki_rating_obtained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_rating_obtained` (
  `ratingId` int(11) NOT NULL AUTO_INCREMENT,
  `ratingConfigId` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object` int(11) NOT NULL,
  `expire` int(11) NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`ratingId`),
  UNIQUE KEY `tiki_obtained_rating_uq` (`type`,`object`,`ratingConfigId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_received_articles`
--

DROP TABLE IF EXISTS `tiki_received_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_received_articles` (
  `receivedArticleId` int(14) NOT NULL AUTO_INCREMENT,
  `receivedFromSite` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivedFromUser` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivedDate` int(14) DEFAULT NULL,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(12) DEFAULT NULL,
  `useImage` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(14) DEFAULT NULL,
  `image_x` int(4) DEFAULT NULL,
  `image_y` int(4) DEFAULT NULL,
  `image_data` longblob,
  `publishDate` int(14) DEFAULT NULL,
  `expireDate` int(14) DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci,
  `body` longblob,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`receivedArticleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_received_pages`
--

DROP TABLE IF EXISTS `tiki_received_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_received_pages` (
  `receivedPageId` int(14) NOT NULL AUTO_INCREMENT,
  `pageName` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` longblob,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivedFromSite` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivedFromUser` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivedDate` int(14) DEFAULT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) unsigned DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structureName` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentName` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_alias` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pos` int(4) DEFAULT NULL,
  PRIMARY KEY (`receivedPageId`),
  KEY `structureName` (`structureName`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_referer_stats`
--

DROP TABLE IF EXISTS `tiki_referer_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_referer_stats` (
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) DEFAULT NULL,
  `last` int(14) DEFAULT NULL,
  `lasturl` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`referer`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_registration_fields`
--

DROP TABLE IF EXISTS `tiki_registration_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_registration_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `show` tinyint(1) NOT NULL DEFAULT '1',
  `size` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_related_categories`
--

DROP TABLE IF EXISTS `tiki_related_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_related_categories` (
  `categId` int(10) NOT NULL DEFAULT '0',
  `relatedTo` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`categId`,`relatedTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_rss_feeds`
--

DROP TABLE IF EXISTS `tiki_rss_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_rss_feeds` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rssVer` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `refresh` int(8) DEFAULT '300',
  `lastUpdated` int(14) DEFAULT NULL,
  `cache` longblob,
  PRIMARY KEY (`name`,`rssVer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_rss_items`
--

DROP TABLE IF EXISTS `tiki_rss_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_rss_items` (
  `rssItemId` int(11) NOT NULL AUTO_INCREMENT,
  `rssId` int(11) NOT NULL,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_date` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `categories` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`rssItemId`),
  KEY `tiki_rss_items_rss` (`rssId`),
  KEY `tiki_rss_items_item` (`rssId`,`guid`(177))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_rss_modules`
--

DROP TABLE IF EXISTS `tiki_rss_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_rss_modules` (
  `rssId` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `refresh` int(8) DEFAULT NULL,
  `lastUpdated` int(14) DEFAULT NULL,
  `showTitle` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `showPubDate` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `sitetitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actions` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`rssId`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_scheduler`
--

DROP TABLE IF EXISTS `tiki_scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_scheduler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `run_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `re_run` tinyint(4) DEFAULT NULL,
  `creation_date` int(14) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_scheduler_run`
--

DROP TABLE IF EXISTS `tiki_scheduler_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_scheduler_run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheduler_id` int(11) NOT NULL,
  `start_time` int(14) DEFAULT NULL,
  `end_time` int(14) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `output` text COLLATE utf8mb4_unicode_ci,
  `stalled` tinyint(4) DEFAULT '0',
  `healed` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_schema`
--

DROP TABLE IF EXISTS `tiki_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_schema` (
  `patch_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `install_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`patch_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_score`
--

DROP TABLE IF EXISTS `tiki_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_score` (
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci,
  `reversalEvent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`event`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_search_queries`
--

DROP TABLE IF EXISTS `tiki_search_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_search_queries` (
  `queryId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `lastModif` int(11) DEFAULT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` blob,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`queryId`),
  UNIQUE KEY `tiki_user_query_uq` (`userId`,`label`),
  KEY `query_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_search_stats`
--

DROP TABLE IF EXISTS `tiki_search_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_search_stats` (
  `term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) DEFAULT NULL,
  PRIMARY KEY (`term`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_secdb`
--

DROP TABLE IF EXISTS `tiki_secdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_secdb` (
  `md5_value` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiki_version` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `severity` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`filename`(171),`tiki_version`(20)),
  KEY `sdb_fn` (`filename`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_sefurl_regex_out`
--

DROP TABLE IF EXISTS `tiki_sefurl_regex_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_sefurl_regex_out` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `left` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `silent` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `feature` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `left` (`left`(128)),
  KEY `idx1` (`silent`,`type`,`feature`(30))
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_semantic_tokens`
--

DROP TABLE IF EXISTS `tiki_semantic_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_semantic_tokens` (
  `token` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invert_token` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_semaphores`
--

DROP TABLE IF EXISTS `tiki_semaphores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_semaphores` (
  `semName` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `objectType` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'wiki page',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timestamp` int(14) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`semName`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_sent_newsletters`
--

DROP TABLE IF EXISTS `tiki_sent_newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_sent_newsletters` (
  `editionId` int(12) NOT NULL AUTO_INCREMENT,
  `nlId` int(12) NOT NULL DEFAULT '0',
  `users` int(10) DEFAULT NULL,
  `sent` int(14) DEFAULT NULL,
  `subject` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `datatxt` longblob,
  `wysiwyg` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`editionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_sent_newsletters_errors`
--

DROP TABLE IF EXISTS `tiki_sent_newsletters_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_sent_newsletters_errors` (
  `editionId` int(12) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `error` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  KEY `editionId` (`editionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_sent_newsletters_files`
--

DROP TABLE IF EXISTS `tiki_sent_newsletters_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_sent_newsletters_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `editionId` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `filename` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `editionId` (`editionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_sessions`
--

DROP TABLE IF EXISTS `tiki_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_sessions` (
  `sessionId` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `timestamp` int(14) DEFAULT NULL,
  `tikihost` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sessionId`),
  KEY `user` (`user`(191)),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_sheet_layout`
--

DROP TABLE IF EXISTS `tiki_sheet_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_sheet_layout` (
  `sheetId` int(8) NOT NULL DEFAULT '0',
  `begin` int(10) NOT NULL DEFAULT '0',
  `end` int(10) DEFAULT NULL,
  `headerRow` int(4) NOT NULL DEFAULT '0',
  `footerRow` int(4) NOT NULL DEFAULT '0',
  `className` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parseValues` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `clonedSheetId` int(8) DEFAULT NULL,
  `metadata` longblob,
  UNIQUE KEY `sheetId` (`sheetId`,`begin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_sheet_values`
--

DROP TABLE IF EXISTS `tiki_sheet_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_sheet_values` (
  `sheetId` int(8) NOT NULL DEFAULT '0',
  `begin` int(10) NOT NULL DEFAULT '0',
  `end` int(10) DEFAULT NULL,
  `rowIndex` int(4) NOT NULL DEFAULT '0',
  `columnIndex` int(4) NOT NULL DEFAULT '0',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calculation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(4) NOT NULL DEFAULT '1',
  `height` int(4) NOT NULL DEFAULT '1',
  `format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `clonedSheetId` int(8) DEFAULT NULL,
  UNIQUE KEY `sheetId` (`sheetId`,`begin`,`rowIndex`,`columnIndex`),
  KEY `sheetId_2` (`sheetId`,`rowIndex`,`columnIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_sheets`
--

DROP TABLE IF EXISTS `tiki_sheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_sheets` (
  `sheetId` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parentSheetId` int(8) DEFAULT NULL,
  `clonedSheetId` int(8) DEFAULT NULL,
  PRIMARY KEY (`sheetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_shoutbox`
--

DROP TABLE IF EXISTS `tiki_shoutbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_shoutbox` (
  `msgId` int(10) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` int(14) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tweetId` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_shoutbox_words`
--

DROP TABLE IF EXISTS `tiki_shoutbox_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_shoutbox_words` (
  `word` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_source_auth`
--

DROP TABLE IF EXISTS `tiki_source_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_source_auth` (
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheme` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arguments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`identifier`),
  KEY `tiki_source_auth_ix` (`scheme`,`domain`(171))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_stats`
--

DROP TABLE IF EXISTS `tiki_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_stats` (
  `object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `day` int(14) NOT NULL DEFAULT '0',
  `hits` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object`(157),`type`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_structure_versions`
--

DROP TABLE IF EXISTS `tiki_structure_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_structure_versions` (
  `structure_id` int(14) NOT NULL AUTO_INCREMENT,
  `version` int(14) DEFAULT NULL,
  PRIMARY KEY (`structure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_structures`
--

DROP TABLE IF EXISTS `tiki_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_structures` (
  `page_ref_id` int(14) NOT NULL AUTO_INCREMENT,
  `structure_id` int(14) NOT NULL,
  `parent_id` int(14) DEFAULT NULL,
  `page_id` int(14) NOT NULL,
  `page_version` int(8) DEFAULT NULL,
  `page_alias` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pos` int(4) DEFAULT NULL,
  PRIMARY KEY (`page_ref_id`),
  KEY `pidpaid` (`page_id`,`parent_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_submissions`
--

DROP TABLE IF EXISTS `tiki_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_submissions` (
  `subId` int(8) NOT NULL AUTO_INCREMENT,
  `topline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topicId` int(14) DEFAULT NULL,
  `topicName` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(12) DEFAULT NULL,
  `useImage` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_caption` text COLLATE utf8mb4_unicode_ci,
  `image_type` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(14) DEFAULT NULL,
  `image_x` int(4) DEFAULT NULL,
  `image_y` int(4) DEFAULT NULL,
  `image_data` longblob,
  `publishDate` int(14) DEFAULT NULL,
  `expireDate` int(14) DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `bibliographical_references` text COLLATE utf8mb4_unicode_ci,
  `resume` text COLLATE utf8mb4_unicode_ci,
  `heading` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbreads` int(14) DEFAULT NULL,
  `votes` int(8) DEFAULT NULL,
  `points` int(14) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `isfloat` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`subId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_suggested_faq_questions`
--

DROP TABLE IF EXISTS `tiki_suggested_faq_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_suggested_faq_questions` (
  `sfqId` int(10) NOT NULL AUTO_INCREMENT,
  `faqId` int(10) NOT NULL DEFAULT '0',
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created` int(14) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`sfqId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_survey_question_options`
--

DROP TABLE IF EXISTS `tiki_survey_question_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_survey_question_options` (
  `optionId` int(12) NOT NULL AUTO_INCREMENT,
  `questionId` int(12) NOT NULL DEFAULT '0',
  `qoption` text COLLATE utf8mb4_unicode_ci,
  `votes` int(10) DEFAULT NULL,
  PRIMARY KEY (`optionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_survey_questions`
--

DROP TABLE IF EXISTS `tiki_survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_survey_questions` (
  `questionId` int(12) NOT NULL AUTO_INCREMENT,
  `surveyId` int(12) NOT NULL DEFAULT '0',
  `question` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  `type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(5) DEFAULT NULL,
  `votes` int(10) DEFAULT '0',
  `value` int(10) DEFAULT '0',
  `average` decimal(4,2) DEFAULT NULL,
  `mandatory` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `max_answers` int(5) NOT NULL DEFAULT '0',
  `min_answers` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_surveys`
--

DROP TABLE IF EXISTS `tiki_surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_surveys` (
  `surveyId` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `taken` int(10) DEFAULT NULL,
  `lastTaken` int(14) DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`surveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_tabular_formats`
--

DROP TABLE IF EXISTS `tiki_tabular_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_tabular_formats` (
  `tabularId` int(11) NOT NULL AUTO_INCREMENT,
  `trackerId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format_descriptor` text COLLATE utf8mb4_unicode_ci,
  `filter_descriptor` text COLLATE utf8mb4_unicode_ci,
  `config` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`tabularId`),
  KEY `tabular_tracker_ix` (`trackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_tags`
--

DROP TABLE IF EXISTS `tiki_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_tags` (
  `tagName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pageName` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(8) DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `lastModif` int(14) DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int(8) NOT NULL DEFAULT '0',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tagName`,`pageName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_theme_control_categs`
--

DROP TABLE IF EXISTS `tiki_theme_control_categs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_theme_control_categs` (
  `categId` int(12) NOT NULL DEFAULT '0',
  `theme` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`categId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_theme_control_objects`
--

DROP TABLE IF EXISTS `tiki_theme_control_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_theme_control_objects` (
  `objId` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`objId`(100),`type`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_theme_control_sections`
--

DROP TABLE IF EXISTS `tiki_theme_control_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_theme_control_sections` (
  `section` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`section`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_todo`
--

DROP TABLE IF EXISTS `tiki_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_todo` (
  `todoId` int(12) NOT NULL AUTO_INCREMENT,
  `after` int(12) NOT NULL,
  `event` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objectType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `objectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`todoId`),
  KEY `what` (`objectType`,`objectId`(141)),
  KEY `after` (`after`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_todo_notif`
--

DROP TABLE IF EXISTS `tiki_todo_notif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_todo_notif` (
  `todoId` int(12) NOT NULL,
  `objectType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `objectId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `todoId` (`todoId`),
  KEY `objectId` (`objectId`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_topics`
--

DROP TABLE IF EXISTS `tiki_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_topics` (
  `topicId` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(14) DEFAULT NULL,
  `image_data` longblob,
  `active` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  PRIMARY KEY (`topicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_tracker_fields`
--

DROP TABLE IF EXISTS `tiki_tracker_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_tracker_fields` (
  `fieldId` int(12) NOT NULL AUTO_INCREMENT,
  `trackerId` int(12) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isMain` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isTblVisible` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(4) DEFAULT NULL,
  `isSearchable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `isPublic` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `isHidden` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `isMandatory` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `description` text COLLATE utf8mb4_unicode_ci,
  `isMultilingual` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `itemChoices` text COLLATE utf8mb4_unicode_ci,
  `errorMsg` text COLLATE utf8mb4_unicode_ci,
  `visibleBy` text COLLATE utf8mb4_unicode_ci,
  `editableBy` text COLLATE utf8mb4_unicode_ci,
  `descriptionIsParsed` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `validationParam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `validationMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`fieldId`),
  UNIQUE KEY `permName` (`permName`,`trackerId`),
  KEY `trackerId` (`trackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_tracker_item_attachments`
--

DROP TABLE IF EXISTS `tiki_tracker_item_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_tracker_item_attachments` (
  `attId` int(12) NOT NULL AUTO_INCREMENT,
  `itemId` int(12) NOT NULL DEFAULT '0',
  `filename` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filetype` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` int(14) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(10) DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `comment` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longdesc` blob,
  `version` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`attId`),
  KEY `itemId` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_tracker_item_field_logs`
--

DROP TABLE IF EXISTS `tiki_tracker_item_field_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_tracker_item_field_logs` (
  `version` int(12) NOT NULL,
  `itemId` int(12) NOT NULL DEFAULT '0',
  `fieldId` int(12) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8mb4_unicode_ci,
  KEY `version` (`version`),
  KEY `itemId` (`itemId`),
  KEY `fieldId` (`fieldId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_tracker_item_fields`
--

DROP TABLE IF EXISTS `tiki_tracker_item_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_tracker_item_fields` (
  `itemId` int(12) NOT NULL DEFAULT '0',
  `fieldId` int(12) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`itemId`,`fieldId`),
  KEY `fieldId` (`fieldId`),
  KEY `value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_tracker_items`
--

DROP TABLE IF EXISTS `tiki_tracker_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_tracker_items` (
  `itemId` int(12) NOT NULL AUTO_INCREMENT,
  `trackerId` int(12) NOT NULL DEFAULT '0',
  `created` int(14) DEFAULT NULL,
  `createdBy` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastModif` int(14) DEFAULT NULL,
  `lastModifBy` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`itemId`),
  KEY `trackerId` (`trackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_tracker_options`
--

DROP TABLE IF EXISTS `tiki_tracker_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_tracker_options` (
  `trackerId` int(12) NOT NULL DEFAULT '0',
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`trackerId`,`name`(30))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_trackers`
--

DROP TABLE IF EXISTS `tiki_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_trackers` (
  `trackerId` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionIsParsed` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created` int(14) DEFAULT NULL,
  `lastModif` int(14) DEFAULT NULL,
  `items` int(10) DEFAULT NULL,
  PRIMARY KEY (`trackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_transitions`
--

DROP TABLE IF EXISTS `tiki_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_transitions` (
  `transitionId` int(11) NOT NULL AUTO_INCREMENT,
  `preserve` int(1) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guards` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`transitionId`),
  KEY `transition_lookup` (`type`,`from`(171))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_translated_objects`
--

DROP TABLE IF EXISTS `tiki_translated_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_translated_objects` (
  `traId` int(14) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type`,`objId`(141)),
  KEY `traId` (`traId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_translations_in_progress`
--

DROP TABLE IF EXISTS `tiki_translations_in_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_translations_in_progress` (
  `page_id` int(14) NOT NULL,
  `language` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `page_id_2` (`page_id`,`language`),
  KEY `page_id` (`page_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_untranslated`
--

DROP TABLE IF EXISTS `tiki_untranslated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_untranslated` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `source` tinyblob NOT NULL,
  `lang` char(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`source`(255),`lang`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_url_shortener`
--

DROP TABLE IF EXISTS `tiki_url_shortener`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_url_shortener` (
  `urlId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longurl` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `longurl_hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shorturl` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`urlId`),
  UNIQUE KEY `shorturl` (`shorturl`),
  KEY `longurl_hash` (`longurl_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_answers`
--

DROP TABLE IF EXISTS `tiki_user_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_answers` (
  `userResultId` int(10) NOT NULL DEFAULT '0',
  `quizId` int(10) NOT NULL DEFAULT '0',
  `questionId` int(10) NOT NULL DEFAULT '0',
  `optionId` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userResultId`,`quizId`,`questionId`,`optionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_answers_uploads`
--

DROP TABLE IF EXISTS `tiki_user_answers_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_answers_uploads` (
  `answerUploadId` int(4) NOT NULL AUTO_INCREMENT,
  `userResultId` int(11) NOT NULL DEFAULT '0',
  `questionId` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filetype` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filecontent` longblob NOT NULL,
  PRIMARY KEY (`answerUploadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_assigned_modules`
--

DROP TABLE IF EXISTS `tiki_user_assigned_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_assigned_modules` (
  `moduleId` int(8) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ord` int(4) NOT NULL DEFAULT '0',
  `type` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`(30),`user`(137),`position`,`ord`),
  KEY `id` (`moduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_bookmarks_folders`
--

DROP TABLE IF EXISTS `tiki_user_bookmarks_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_bookmarks_folders` (
  `folderId` int(12) NOT NULL,
  `parentId` int(12) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user`(179),`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_bookmarks_urls`
--

DROP TABLE IF EXISTS `tiki_user_bookmarks_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_bookmarks_urls` (
  `urlId` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `lastUpdated` int(14) DEFAULT NULL,
  `folderId` int(12) NOT NULL DEFAULT '0',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`urlId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_login_cookies`
--

DROP TABLE IF EXISTS `tiki_user_login_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_login_cookies` (
  `userId` int(11) NOT NULL,
  `secret` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`userId`,`secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_mailin_struct`
--

DROP TABLE IF EXISTS `tiki_user_mailin_struct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_mailin_struct` (
  `mailin_struct_id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj_pattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_pattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_id` int(14) NOT NULL,
  `page_id` int(14) DEFAULT NULL,
  `is_active` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`mailin_struct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_menus`
--

DROP TABLE IF EXISTS `tiki_user_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_menus` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menuId` int(12) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(4) DEFAULT NULL,
  `mode` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_modules`
--

DROP TABLE IF EXISTS `tiki_user_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_modules` (
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `parse` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_monitors`
--

DROP TABLE IF EXISTS `tiki_user_monitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_monitors` (
  `monitorId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `event` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`monitorId`),
  UNIQUE KEY `event_target_uq` (`event`,`target`,`userId`),
  KEY `userid_target_ix` (`userId`,`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_notes`
--

DROP TABLE IF EXISTS `tiki_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_notes` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `noteId` int(12) NOT NULL AUTO_INCREMENT,
  `created` int(14) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastModif` int(14) DEFAULT NULL,
  `data` longblob,
  `size` int(14) DEFAULT NULL,
  `parse_mode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`noteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_postings`
--

DROP TABLE IF EXISTS `tiki_user_postings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_postings` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `posts` int(12) DEFAULT NULL,
  `last` int(14) DEFAULT NULL,
  `first` int(14) DEFAULT NULL,
  `level` int(8) DEFAULT NULL,
  PRIMARY KEY (`user`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_preferences`
--

DROP TABLE IF EXISTS `tiki_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_preferences` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `prefName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`user`(151),`prefName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_quizzes`
--

DROP TABLE IF EXISTS `tiki_user_quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_quizzes` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `quizId` int(10) DEFAULT NULL,
  `timestamp` int(14) DEFAULT NULL,
  `timeTaken` int(14) DEFAULT NULL,
  `points` int(12) DEFAULT NULL,
  `maxPoints` int(12) DEFAULT NULL,
  `resultId` int(10) DEFAULT NULL,
  `userResultId` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`userResultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_reports`
--

DROP TABLE IF EXISTS `tiki_user_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `always_email` tinyint(1) NOT NULL,
  `last_report` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_reports_cache`
--

DROP TABLE IF EXISTS `tiki_user_reports_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_reports_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_taken_quizzes`
--

DROP TABLE IF EXISTS `tiki_user_taken_quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_taken_quizzes` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quizId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`user`(141),`quizId`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_tasks`
--

DROP TABLE IF EXISTS `tiki_user_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_tasks` (
  `taskId` int(14) NOT NULL AUTO_INCREMENT,
  `last_version` int(4) NOT NULL DEFAULT '0',
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `creator` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_for_group` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rights_by_creator` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(14) NOT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(2) DEFAULT NULL,
  `completed` int(14) DEFAULT NULL,
  `percentage` int(4) DEFAULT NULL,
  PRIMARY KEY (`taskId`),
  UNIQUE KEY `creator` (`creator`(177),`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_tasks_history`
--

DROP TABLE IF EXISTS `tiki_user_tasks_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_tasks_history` (
  `belongs_to` int(14) NOT NULL,
  `task_version` int(4) NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start` int(14) DEFAULT NULL,
  `end` int(14) DEFAULT NULL,
  `lasteditor` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastchanges` int(14) NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '3',
  `completed` int(14) DEFAULT NULL,
  `deleted` int(14) DEFAULT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(4) DEFAULT NULL,
  `accepted_creator` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted_user` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`belongs_to`,`task_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_votings`
--

DROP TABLE IF EXISTS `tiki_user_votings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_votings` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `optionId` int(10) NOT NULL DEFAULT '0',
  `time` int(14) NOT NULL DEFAULT '0',
  KEY `user` (`user`(100),`id`(100)),
  KEY `ip` (`ip`),
  KEY `id` (`id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_user_watches`
--

DROP TABLE IF EXISTS `tiki_user_watches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_user_watches` (
  `watchId` int(12) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `event` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `object` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`watchId`),
  KEY `event-object-user` (`event`,`object`(100),`user`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_userfiles`
--

DROP TABLE IF EXISTS `tiki_userfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_userfiles` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fileId` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filetype` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `hits` int(8) DEFAULT NULL,
  `isFile` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_userpoints`
--

DROP TABLE IF EXISTS `tiki_userpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_userpoints` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `points` decimal(8,2) DEFAULT NULL,
  `voted` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_webmail_contacts`
--

DROP TABLE IF EXISTS `tiki_webmail_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_webmail_contacts` (
  `contactId` int(12) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_webmail_contacts_ext`
--

DROP TABLE IF EXISTS `tiki_webmail_contacts_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_webmail_contacts_ext` (
  `contactId` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `fieldId` int(10) unsigned NOT NULL,
  KEY `contactId` (`contactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_webmail_contacts_fields`
--

DROP TABLE IF EXISTS `tiki_webmail_contacts_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_webmail_contacts_fields` (
  `user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(2) NOT NULL DEFAULT '0',
  `show` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `fieldId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flagsPublic` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`fieldId`),
  KEY `user` (`user`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_webmail_contacts_groups`
--

DROP TABLE IF EXISTS `tiki_webmail_contacts_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_webmail_contacts_groups` (
  `contactId` int(12) NOT NULL,
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`contactId`,`groupName`(179))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_webservice`
--

DROP TABLE IF EXISTS `tiki_webservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_webservice` (
  `service` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wstype` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `schema_version` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_documentation` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`service`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_webservice_template`
--

DROP TABLE IF EXISTS `tiki_webservice_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_webservice_template` (
  `service` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`service`,`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_wiki_attachments`
--

DROP TABLE IF EXISTS `tiki_wiki_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_wiki_attachments` (
  `attId` int(12) NOT NULL AUTO_INCREMENT,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filetype` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` int(14) DEFAULT NULL,
  `user` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longblob,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(10) DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `comment` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`attId`),
  KEY `page` (`page`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_workspace_templates`
--

DROP TABLE IF EXISTS `tiki_workspace_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_workspace_templates` (
  `templateId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  `is_advanced` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tiki_zones`
--

DROP TABLE IF EXISTS `tiki_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiki_zones` (
  `zone` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_grouppermissions`
--

DROP TABLE IF EXISTS `users_grouppermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_grouppermissions` (
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `permName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`groupName`(30),`permName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `groupDesc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupHome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usersTrackerId` int(11) DEFAULT NULL,
  `groupTrackerId` int(11) DEFAULT NULL,
  `usersFieldId` int(11) DEFAULT NULL,
  `groupFieldId` int(11) DEFAULT NULL,
  `registrationChoice` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registrationUsersFieldIds` text COLLATE utf8mb4_unicode_ci,
  `userChoice` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupDefCat` int(12) DEFAULT '0',
  `groupTheme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `groupColor` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `isExternal` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `expireAfter` int(14) DEFAULT '0',
  `emailPattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `anniversary` char(4) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `prorateInterval` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groupName` (`groupName`(191)),
  KEY `expireAfter` (`expireAfter`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_objectpermissions`
--

DROP TABLE IF EXISTS `users_objectpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_objectpermissions` (
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `permName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `objectType` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `objectId` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`objectId`,`objectType`,`groupName`(99),`permName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_permissions`
--

DROP TABLE IF EXISTS `users_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_permissions` (
  `permName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`permName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_usergroups`
--

DROP TABLE IF EXISTS `users_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_usergroups` (
  `userId` int(8) NOT NULL DEFAULT '0',
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` int(14) DEFAULT NULL,
  `expire` int(14) DEFAULT NULL,
  PRIMARY KEY (`userId`,`groupName`(183))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_users`
--

DROP TABLE IF EXISTS `users_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_users` (
  `userId` int(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `provpass` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastLogin` int(14) DEFAULT NULL,
  `currentLogin` int(14) DEFAULT NULL,
  `registrationDate` int(14) DEFAULT NULL,
  `pass_confirm` int(14) DEFAULT NULL,
  `email_confirm` int(14) DEFAULT NULL,
  `hash` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(14) DEFAULT NULL,
  `avatarName` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatarSize` int(14) DEFAULT NULL,
  `avatarFileType` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatarData` longblob,
  `avatarLibName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatarType` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsuccessful_logins` int(14) DEFAULT '0',
  `openid_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waiting` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `login` (`login`(191)),
  KEY `registrationDate` (`registrationDate`),
  KEY `openid_url` (`openid_url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
