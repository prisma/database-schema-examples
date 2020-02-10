-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: all-prisma.de    Database: d02ff8bb
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
-- Table structure for table `df_collections`
--

DROP TABLE IF EXISTS `df_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_collections_items`
--

DROP TABLE IF EXISTS `df_collections_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_collections_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `share_id` int(9) DEFAULT NULL,
  `added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_pid` (`cid`),
  KEY `pid` (`pid`),
  KEY `cid` (`cid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_file_handlers`
--

DROP TABLE IF EXISTS `df_file_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_file_handlers` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(9) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handler` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_file_logs`
--

DROP TABLE IF EXISTS `df_file_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_file_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`),
  KEY `action` (`action`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_logs`
--

DROP TABLE IF EXISTS `df_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '2002-02-02 00:00:00',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` mediumint(9) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_folders_notifications`
--

DROP TABLE IF EXISTS `df_modules_folders_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_folders_notifications` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `uid` int(9) NOT NULL,
  `pathid` int(10) NOT NULL,
  `shareid` int(8) DEFAULT NULL,
  `notify_write` int(1) NOT NULL DEFAULT '0',
  `notify_read` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`pathid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_metadata_dt`
--

DROP TABLE IF EXISTS `df_modules_metadata_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_metadata_dt` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `owner` mediumint(9) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_metadata_fields`
--

DROP TABLE IF EXISTS `df_modules_metadata_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_metadata_fields` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `fsid` mediumint(9) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide_fieldset_name_in_column` smallint(1) NOT NULL DEFAULT '0',
  `show_column_by_default` smallint(1) NOT NULL DEFAULT '0',
  `system` smallint(1) NOT NULL DEFAULT '0',
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `system` (`system`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_metadata_fieldsets`
--

DROP TABLE IF EXISTS `df_modules_metadata_fieldsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_metadata_fieldsets` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `owner` mediumint(9) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generic` smallint(1) NOT NULL DEFAULT '0',
  `system` smallint(1) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_metadata_files`
--

DROP TABLE IF EXISTS `df_modules_metadata_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_metadata_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `type_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid` (`pid`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_metadata_values`
--

DROP TABLE IF EXISTS `df_modules_metadata_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_metadata_values` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date_added` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `uid` mediumint(9) NOT NULL,
  `share_id` mediumint(9) DEFAULT NULL,
  `file_id` mediumint(9) NOT NULL,
  `field_id` mediumint(9) NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `date_added` (`date_added`),
  KEY `uid` (`uid`,`file_id`,`field_id`),
  KEY `file_id` (`file_id`,`field_id`),
  KEY `uid_2` (`uid`,`field_id`),
  KEY `val` (`val`(100)),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_notifications`
--

DROP TABLE IF EXISTS `df_modules_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_notifications` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `owner` mediumint(9) DEFAULT NULL,
  `object_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `object_id` mediumint(9) NOT NULL DEFAULT '0',
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_search_index_queue`
--

DROP TABLE IF EXISTS `df_modules_search_index_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_search_index_queue` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(9) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_shares`
--

DROP TABLE IF EXISTS `df_modules_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_shares` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(9) NOT NULL,
  `created` datetime NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `with_gid` mediumint(9) DEFAULT NULL,
  `with_uid` mediumint(9) DEFAULT NULL,
  `anonymous` smallint(1) NOT NULL DEFAULT '0',
  `perms_upload` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `perms_download` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `perms_comment` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `perms_read_comments` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `perms_alter` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `perms_share` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`path`(248))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_trash`
--

DROP TABLE IF EXISTS `df_modules_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_trash` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(9) NOT NULL,
  `relative_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_deleted` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_user_groups`
--

DROP TABLE IF EXISTS `df_modules_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_user_groups` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` mediumint(9) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_user_roles`
--

DROP TABLE IF EXISTS `df_modules_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_user_roles` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `system` smallint(1) NOT NULL DEFAULT '0',
  `owner` mediumint(9) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_users` smallint(1) NOT NULL DEFAULT '0',
  `admin_roles` smallint(1) NOT NULL DEFAULT '0',
  `admin_notifications` smallint(1) NOT NULL DEFAULT '0',
  `admin_logs` smallint(1) NOT NULL DEFAULT '0',
  `admin_metadata` smallint(1) NOT NULL DEFAULT '0',
  `admin_over` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_max_users` smallint(7) NOT NULL DEFAULT '0',
  `admin_homefolder_template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homefolder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_folder` smallint(1) NOT NULL DEFAULT '1',
  `space_quota_max` int(20) DEFAULT NULL,
  `space_quota_current` int(20) NOT NULL DEFAULT '0',
  `readonly` smallint(1) DEFAULT NULL,
  `upload` smallint(1) DEFAULT NULL,
  `upload_max_size` bigint(20) DEFAULT NULL,
  `upload_limit_types` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download` smallint(1) DEFAULT NULL,
  `download_folders` smallint(1) DEFAULT NULL,
  `read_comments` smallint(1) DEFAULT NULL,
  `write_comments` smallint(1) DEFAULT NULL,
  `email` smallint(1) NOT NULL DEFAULT '0',
  `weblink` smallint(1) NOT NULL DEFAULT '0',
  `share` smallint(1) NOT NULL DEFAULT '0',
  `share_guests` smallint(1) NOT NULL DEFAULT '0',
  `metadata` smallint(1) NOT NULL DEFAULT '0',
  `file_history` smallint(1) NOT NULL DEFAULT '0',
  `users_may_see` text COLLATE utf8mb4_unicode_ci,
  `change_pass` smallint(1) NOT NULL DEFAULT '1',
  `edit_profile` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_modules_weblinks`
--

DROP TABLE IF EXISTS `df_modules_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_modules_weblinks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_rnd` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `uid` mediumint(9) NOT NULL,
  `pathid` int(10) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `share_id` mediumint(9) DEFAULT NULL,
  `short_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `download_limit` mediumint(6) DEFAULT NULL,
  `allow_uploads` int(1) NOT NULL DEFAULT '0',
  `allow_downloads` int(1) NOT NULL DEFAULT '1',
  `force_save` tinyint(1) DEFAULT '0',
  `system` smallint(1) NOT NULL DEFAULT '0',
  `notify` mediumint(1) NOT NULL DEFAULT '0',
  `download_terms` text COLLATE utf8mb4_unicode_ci,
  `show_comments` tinyint(1) NOT NULL DEFAULT '0',
  `show_comments_names` tinyint(1) NOT NULL DEFAULT '0',
  `require_login` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_rnd` (`id_rnd`),
  KEY `uid` (`uid`,`pathid`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_notifications_logs`
--

DROP TABLE IF EXISTS `df_notifications_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_notifications_logs` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `has_errors` smallint(1) NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_oauth_access_token_scopes`
--

DROP TABLE IF EXISTS `df_oauth_access_token_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_oauth_access_token_scopes` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `access_token_id` mediumint(8) NOT NULL,
  `scope` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `access_token_id` (`access_token_id`),
  KEY `scope` (`scope`),
  CONSTRAINT `df_oauth_access_token_scopes_ibfk_1` FOREIGN KEY (`access_token_id`) REFERENCES `df_oauth_access_tokens` (`id`) ON DELETE CASCADE,
  CONSTRAINT `df_oauth_access_token_scopes_ibfk_2` FOREIGN KEY (`scope`) REFERENCES `df_oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_oauth_access_tokens`
--

DROP TABLE IF EXISTS `df_oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_oauth_access_tokens` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sid` mediumint(8) NOT NULL,
  `expiry` int(11) NOT NULL,
  `device_uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token` (`access_token`),
  KEY `sid` (`sid`),
  CONSTRAINT `df_oauth_access_tokens_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `df_oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_oauth_auth_code_scopes`
--

DROP TABLE IF EXISTS `df_oauth_auth_code_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_oauth_auth_code_scopes` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `auth_code_id` mediumint(9) NOT NULL,
  `scope` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_code_id` (`auth_code_id`),
  KEY `scope` (`scope`),
  CONSTRAINT `df_oauth_auth_code_scopes_ibfk_1` FOREIGN KEY (`auth_code_id`) REFERENCES `df_oauth_auth_codes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `df_oauth_auth_code_scopes_ibfk_2` FOREIGN KEY (`scope`) REFERENCES `df_oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_oauth_auth_codes`
--

DROP TABLE IF EXISTS `df_oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_oauth_auth_codes` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `auth_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sid` mediumint(8) NOT NULL,
  `redirect_uri` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  CONSTRAINT `df_oauth_auth_codes_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `df_oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_oauth_client_redirect_uris`
--

DROP TABLE IF EXISTS `df_oauth_client_redirect_uris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_oauth_client_redirect_uris` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cid` mediumint(8) NOT NULL,
  `uri` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  CONSTRAINT `df_oauth_client_redirect_uris_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `df_oauth_clients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_oauth_clients`
--

DROP TABLE IF EXISTS `df_oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_oauth_clients` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `enabled` smallint(1) NOT NULL DEFAULT '0',
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_url` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8mb4_unicode_ci,
  `publisher_website` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `df_oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_oauth_refresh_tokens` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `refresh_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` mediumint(9) NOT NULL,
  `expiry` int(11) NOT NULL,
  `device_uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `refresh_token` (`refresh_token`),
  KEY `access_token_id` (`access_token_id`),
  CONSTRAINT `df_oauth_refresh_tokens_ibfk_1` FOREIGN KEY (`access_token_id`) REFERENCES `df_oauth_access_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_oauth_scopes`
--

DROP TABLE IF EXISTS `df_oauth_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_oauth_scopes` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `scope` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_oauth_session_scopes`
--

DROP TABLE IF EXISTS `df_oauth_session_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_oauth_session_scopes` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `sid` mediumint(9) NOT NULL,
  `scope` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `scope` (`scope`),
  CONSTRAINT `df_oauth_session_scopes_ibfk_1` FOREIGN KEY (`scope`) REFERENCES `df_oauth_scopes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `df_oauth_session_scopes_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `df_oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_oauth_sessions`
--

DROP TABLE IF EXISTS `df_oauth_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_oauth_sessions` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `owner_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` mediumint(8) NOT NULL,
  `redirect_uri` text COLLATE utf8mb4_unicode_ci,
  `date_created` datetime DEFAULT NULL,
  `client_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  CONSTRAINT `df_oauth_sessions_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `df_oauth_clients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_paths`
--

DROP TABLE IF EXISTS `df_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_paths` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depth` smallint(3) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `uniq` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq` (`uniq`),
  KEY `filename` (`filename`(248),`depth`),
  KEY `path` (`path`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_relationships`
--

DROP TABLE IF EXISTS `df_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_relationships` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `related_to_id` mediumint(9) NOT NULL DEFAULT '0',
  `object_id` mediumint(9) NOT NULL DEFAULT '0',
  `relation_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`),
  KEY `object_id` (`object_id`,`relation_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_settings`
--

DROP TABLE IF EXISTS `df_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_settings` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `var` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `var` (`var`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_users`
--

DROP TABLE IF EXISTS `df_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_users` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_step_enabled` int(1) NOT NULL DEFAULT '0',
  `two_step_secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_otp` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_pass_change` datetime DEFAULT NULL,
  `cookie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` mediumint(9) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `activated` smallint(1) NOT NULL DEFAULT '0',
  `expiration_date` datetime DEFAULT NULL,
  `require_password_change` int(1) NOT NULL DEFAULT '0',
  `failed_login_attempts` smallint(1) NOT NULL DEFAULT '0',
  `last_access_date` timestamp NULL DEFAULT NULL,
  `last_notif_delivery_date` timestamp NULL DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `last_logout_date` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_notifications` smallint(1) NOT NULL DEFAULT '0',
  `new_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `expiration_date` (`expiration_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_users_permissions`
--

DROP TABLE IF EXISTS `df_users_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_users_permissions` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(9) NOT NULL,
  `role` mediumint(9) DEFAULT NULL,
  `admin_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_users` smallint(1) NOT NULL DEFAULT '0',
  `admin_roles` smallint(1) NOT NULL DEFAULT '0',
  `admin_notifications` smallint(1) NOT NULL DEFAULT '0',
  `admin_logs` smallint(1) NOT NULL DEFAULT '0',
  `admin_metadata` smallint(1) NOT NULL DEFAULT '0',
  `admin_over` text COLLATE utf8mb4_unicode_ci,
  `admin_max_users` smallint(7) NOT NULL DEFAULT '0',
  `admin_homefolder_template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homefolder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `space_quota_max` int(20) DEFAULT NULL,
  `space_quota_current` int(20) NOT NULL DEFAULT '0',
  `readonly` smallint(1) DEFAULT NULL,
  `upload` smallint(1) DEFAULT NULL,
  `upload_max_size` bigint(20) DEFAULT NULL,
  `upload_limit_types` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download` smallint(1) DEFAULT NULL,
  `download_folders` smallint(1) DEFAULT NULL,
  `read_comments` smallint(1) DEFAULT NULL,
  `write_comments` smallint(1) DEFAULT NULL,
  `email` smallint(1) NOT NULL DEFAULT '0',
  `weblink` smallint(1) NOT NULL DEFAULT '0',
  `share` smallint(1) NOT NULL DEFAULT '0',
  `share_guests` smallint(1) NOT NULL DEFAULT '0',
  `metadata` smallint(1) NOT NULL DEFAULT '0',
  `file_history` smallint(1) NOT NULL DEFAULT '0',
  `users_may_see` text COLLATE utf8mb4_unicode_ci,
  `change_pass` smallint(1) NOT NULL DEFAULT '1',
  `edit_profile` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `df_users_sessions`
--

DROP TABLE IF EXISTS `df_users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_users_sessions` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `csrf_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-07 13:36:02
