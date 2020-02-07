-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: all-prisma.de    Database: d02ff3e0
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
-- Table structure for table `lAfOL_batch`
--

DROP TABLE IF EXISTS `lAfOL_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_batch` (
  `bid` int(10) unsigned NOT NULL COMMENT 'Primary Key: Unique batch ID.',
  `token` varchar(64) CHARACTER SET ascii NOT NULL COMMENT 'A string token generated against the current user''s session id and the batch id, used to ensure that only the user who submitted the batch can effectively access it.',
  `timestamp` int(11) NOT NULL COMMENT 'A Unix timestamp indicating when this batch was submitted for processing. Stale batches are purged at cron time.',
  `batch` longblob COMMENT 'A serialized array containing the processing data for the batch.',
  PRIMARY KEY (`bid`),
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores details about batches (processes that run in…';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_block_content`
--

DROP TABLE IF EXISTS `lAfOL_block_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_block_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `revision_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `block_content_field__uuid__value` (`uuid`),
  UNIQUE KEY `block_content__revision_id` (`revision_id`),
  KEY `block_content_field__type__target_id` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for block_content entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_block_content__body`
--

DROP TABLE IF EXISTS `lAfOL_block_content__body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_block_content__body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext NOT NULL,
  `body_summary` longtext,
  `body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `body_format` (`body_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for block_content field body.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_block_content_field_data`
--

DROP TABLE IF EXISTS `lAfOL_block_content_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_block_content_field_data` (
  `id` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `reusable` tinyint(4) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`,`langcode`),
  KEY `block_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  KEY `block_content__revision_id` (`revision_id`),
  KEY `block_content_field__type__target_id` (`type`),
  KEY `block_content__status_type` (`status`,`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for block_content entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_block_content_field_revision`
--

DROP TABLE IF EXISTS `lAfOL_block_content_field_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_block_content_field_revision` (
  `id` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`,`langcode`),
  KEY `block_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision data table for block_content entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_block_content_revision`
--

DROP TABLE IF EXISTS `lAfOL_block_content_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_block_content_revision` (
  `id` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `revision_user` int(10) unsigned DEFAULT NULL COMMENT 'The ID of the target entity.',
  `revision_created` int(11) DEFAULT NULL,
  `revision_log` longtext,
  `revision_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`),
  KEY `block_content__id` (`id`),
  KEY `block_content_field__revision_user__target_id` (`revision_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for block_content entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_block_content_revision__body`
--

DROP TABLE IF EXISTS `lAfOL_block_content_revision__body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_block_content_revision__body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext NOT NULL,
  `body_summary` longtext,
  `body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `body_format` (`body_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for block_content field body.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_bootstrap`
--

DROP TABLE IF EXISTS `lAfOL_cache_bootstrap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_bootstrap` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_config`
--

DROP TABLE IF EXISTS `lAfOL_cache_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_config` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_container`
--

DROP TABLE IF EXISTS `lAfOL_cache_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_container` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_data`
--

DROP TABLE IF EXISTS `lAfOL_cache_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_data` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_default`
--

DROP TABLE IF EXISTS `lAfOL_cache_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_default` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_discovery`
--

DROP TABLE IF EXISTS `lAfOL_cache_discovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_discovery` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_dynamic_page_cache`
--

DROP TABLE IF EXISTS `lAfOL_cache_dynamic_page_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_dynamic_page_cache` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_entity`
--

DROP TABLE IF EXISTS `lAfOL_cache_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_entity` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_menu`
--

DROP TABLE IF EXISTS `lAfOL_cache_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_menu` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_page`
--

DROP TABLE IF EXISTS `lAfOL_cache_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_page` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cache_render`
--

DROP TABLE IF EXISTS `lAfOL_cache_render`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cache_render` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_cachetags`
--

DROP TABLE IF EXISTS `lAfOL_cachetags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_cachetags` (
  `tag` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Namespace-prefixed tag string.',
  `invalidations` int(11) NOT NULL DEFAULT '0' COMMENT 'Number incremented when the tag is invalidated.',
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cache table for tracking cache tag invalidations.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_comment`
--

DROP TABLE IF EXISTS `lAfOL_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_comment` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `comment_field__uuid__value` (`uuid`),
  KEY `comment_field__comment_type__target_id` (`comment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for comment entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_comment__comment_body`
--

DROP TABLE IF EXISTS `lAfOL_comment__comment_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_comment__comment_body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to, which for an unversioned entity type is the same as the entity id',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `comment_body_value` longtext NOT NULL,
  `comment_body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `comment_body_format` (`comment_body_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for comment field comment_body.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_comment_entity_statistics`
--

DROP TABLE IF EXISTS `lAfOL_comment_entity_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_comment_entity_statistics` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The entity_id of the entity for which the statistics are compiled.',
  `entity_type` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT 'node' COMMENT 'The entity_type of the entity to which this comment is a reply.',
  `field_name` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field_name of the field that was used to add this comment.',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT 'The lAfOL_comment.cid of the last comment.',
  `last_comment_timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp of the last comment that was posted within this node, from lAfOL_comment.changed.',
  `last_comment_name` varchar(60) DEFAULT NULL COMMENT 'The name of the latest author to post a comment on this node, from lAfOL_comment.name.',
  `last_comment_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The user ID of the latest author to post a comment on this node, from lAfOL_comment.uid.',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The total number of comments on this entity.',
  PRIMARY KEY (`entity_id`,`entity_type`,`field_name`),
  KEY `last_comment_timestamp` (`last_comment_timestamp`),
  KEY `comment_count` (`comment_count`),
  KEY `last_comment_uid` (`last_comment_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maintains statistics of entity and comments posts to show …';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_comment_field_data`
--

DROP TABLE IF EXISTS `lAfOL_comment_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_comment_field_data` (
  `cid` int(10) unsigned NOT NULL,
  `comment_type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `uid` int(10) unsigned NOT NULL COMMENT 'The ID of the target entity.',
  `pid` int(10) unsigned DEFAULT NULL COMMENT 'The ID of the target entity.',
  `entity_id` int(10) unsigned DEFAULT NULL COMMENT 'The ID of the target entity.',
  `subject` varchar(64) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  `hostname` varchar(128) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `changed` int(11) DEFAULT NULL,
  `thread` varchar(255) NOT NULL,
  `entity_type` varchar(32) CHARACTER SET ascii NOT NULL,
  `field_name` varchar(32) CHARACTER SET ascii NOT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  PRIMARY KEY (`cid`,`langcode`),
  KEY `comment__id__default_langcode__langcode` (`cid`,`default_langcode`,`langcode`),
  KEY `comment_field__comment_type__target_id` (`comment_type`),
  KEY `comment_field__uid__target_id` (`uid`),
  KEY `comment_field__created` (`created`),
  KEY `comment__status_comment_type` (`status`,`comment_type`,`cid`),
  KEY `comment__status_pid` (`pid`,`status`),
  KEY `comment__num_new` (`entity_id`,`entity_type`,`comment_type`,`status`,`created`,`cid`,`thread`(191)),
  KEY `comment__entity_langcode` (`entity_id`,`entity_type`,`comment_type`,`default_langcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for comment entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_config`
--

DROP TABLE IF EXISTS `lAfOL_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_config` (
  `collection` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Primary Key: Config object collection.',
  `name` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Primary Key: Config object name.',
  `data` longblob COMMENT 'A serialized configuration object data.',
  PRIMARY KEY (`collection`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for configuration data.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_file_managed`
--

DROP TABLE IF EXISTS `lAfOL_file_managed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_file_managed` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `uid` int(10) unsigned DEFAULT NULL COMMENT 'The ID of the target entity.',
  `filename` varchar(255) DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `filemime` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `filesize` bigint(20) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `changed` int(11) NOT NULL,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `file_field__uuid__value` (`uuid`),
  KEY `file_field__uid__target_id` (`uid`),
  KEY `file_field__uri` (`uri`(191)),
  KEY `file_field__status` (`status`),
  KEY `file_field__changed` (`changed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for file entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_file_usage`
--

DROP TABLE IF EXISTS `lAfOL_file_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_file_usage` (
  `fid` int(10) unsigned NOT NULL COMMENT 'File ID.',
  `module` varchar(50) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The name of the module that is using the file.',
  `type` varchar(64) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The name of the object type in which the file is used.',
  `id` varchar(64) CHARACTER SET ascii NOT NULL DEFAULT '0' COMMENT 'The primary key of the object using the file.',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The number of times this file is used by this object.',
  PRIMARY KEY (`fid`,`type`,`id`,`module`),
  KEY `type_id` (`type`,`id`),
  KEY `fid_count` (`fid`,`count`),
  KEY `fid_module` (`fid`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Track where a file is used.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_history`
--

DROP TABLE IF EXISTS `lAfOL_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_history` (
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT 'The lAfOL_users.uid that read the lAfOL_node nid.',
  `nid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The lAfOL_node.nid that was read.',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp at which the read occurred.',
  PRIMARY KEY (`uid`,`nid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='A record of which lAfOL_users have read which…';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_key_value`
--

DROP TABLE IF EXISTS `lAfOL_key_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_key_value` (
  `collection` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'A named collection of key and value pairs.',
  `name` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The key of the key-value pair. As KEY is a SQL reserved keyword, name was chosen instead.',
  `value` longblob NOT NULL COMMENT 'The value.',
  PRIMARY KEY (`collection`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Generic key-value storage table. See the state system for…';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_key_value_expire`
--

DROP TABLE IF EXISTS `lAfOL_key_value_expire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_key_value_expire` (
  `collection` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'A named collection of key and value pairs.',
  `name` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The key of the key/value pair.',
  `value` longblob NOT NULL COMMENT 'The value of the key/value pair.',
  `expire` int(11) NOT NULL DEFAULT '2147483647' COMMENT 'The time since Unix epoch in seconds when this item expires. Defaults to the maximum possible time.',
  PRIMARY KEY (`collection`,`name`),
  KEY `all` (`name`,`collection`,`expire`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Generic key/value storage table with an expiration.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_locale_file`
--

DROP TABLE IF EXISTS `lAfOL_locale_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_locale_file` (
  `project` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'A unique short name to identify the project the file belongs to.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Language code of this translation. References lAfOL_language.langcode.',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT 'Filename of the imported file.',
  `version` varchar(128) NOT NULL DEFAULT '' COMMENT 'Version tag of the imported file.',
  `uri` varchar(255) NOT NULL DEFAULT '' COMMENT 'URI of the remote file, the resulting local file or the locally imported file.',
  `timestamp` int(11) DEFAULT '0' COMMENT 'Unix timestamp of the imported file.',
  `last_checked` int(11) DEFAULT '0' COMMENT 'Unix timestamp of the last time this translation was confirmed to be the most recent release available.',
  PRIMARY KEY (`project`,`langcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='File import status information for interface translation…';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_locales_location`
--

DROP TABLE IF EXISTS `lAfOL_locales_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_locales_location` (
  `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of this location.',
  `sid` int(11) NOT NULL COMMENT 'Unique identifier of this string.',
  `type` varchar(50) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The location type (file, config, path, etc).',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Type dependent location information (file name, path, etc).',
  `version` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'none' COMMENT 'Version of Drupal where the location was found.',
  PRIMARY KEY (`lid`),
  KEY `string_id` (`sid`),
  KEY `string_type` (`sid`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8mb4 COMMENT='Location information for source strings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_locales_source`
--

DROP TABLE IF EXISTS `lAfOL_locales_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_locales_source` (
  `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of this string.',
  `source` blob NOT NULL COMMENT 'The original string in English.',
  `context` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The context this string applies to.',
  `version` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'none' COMMENT 'Version of Drupal where the string was last used (for locales optimization).',
  PRIMARY KEY (`lid`),
  KEY `source_context` (`source`(30),`context`)
) ENGINE=InnoDB AUTO_INCREMENT=9737 DEFAULT CHARSET=utf8mb4 COMMENT='List of English source strings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_locales_target`
--

DROP TABLE IF EXISTS `lAfOL_locales_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_locales_target` (
  `lid` int(11) NOT NULL DEFAULT '0' COMMENT 'Source string ID. References lAfOL_locales_source.lid.',
  `translation` blob NOT NULL COMMENT 'Translation string value in this language.',
  `language` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Language code. References lAfOL_language.langcode.',
  `customized` int(11) NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether the translation is custom to this site.',
  PRIMARY KEY (`language`,`lid`),
  KEY `lid` (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores translated versions of strings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_menu_link_content`
--

DROP TABLE IF EXISTS `lAfOL_menu_link_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_menu_link_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `revision_id` int(10) unsigned DEFAULT NULL,
  `bundle` varchar(32) CHARACTER SET ascii NOT NULL,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_link_content_field__uuid__value` (`uuid`),
  UNIQUE KEY `menu_link_content__revision_id` (`revision_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for menu_link_content entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_menu_link_content_data`
--

DROP TABLE IF EXISTS `lAfOL_menu_link_content_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_menu_link_content_data` (
  `id` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL,
  `bundle` varchar(32) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `link__uri` varchar(2048) DEFAULT NULL COMMENT 'The URI of the link.',
  `link__title` varchar(255) DEFAULT NULL COMMENT 'The link text.',
  `link__options` longblob COMMENT 'Serialized array of options for the link.',
  `external` tinyint(4) DEFAULT NULL,
  `rediscover` tinyint(4) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `expanded` tinyint(4) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`,`langcode`),
  KEY `menu_link_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  KEY `menu_link_content__revision_id` (`revision_id`),
  KEY `menu_link_content_field__link__uri` (`link__uri`(30)),
  KEY `menu_link_content__enabled_bundle` (`enabled`,`bundle`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for menu_link_content entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_menu_link_content_field_revision`
--

DROP TABLE IF EXISTS `lAfOL_menu_link_content_field_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_menu_link_content_field_revision` (
  `id` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link__uri` varchar(2048) DEFAULT NULL COMMENT 'The URI of the link.',
  `link__title` varchar(255) DEFAULT NULL COMMENT 'The link text.',
  `link__options` longblob COMMENT 'Serialized array of options for the link.',
  `external` tinyint(4) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`,`langcode`),
  KEY `menu_link_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  KEY `menu_link_content_field__link__uri` (`link__uri`(30))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision data table for menu_link_content entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_menu_link_content_revision`
--

DROP TABLE IF EXISTS `lAfOL_menu_link_content_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_menu_link_content_revision` (
  `id` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `revision_user` int(10) unsigned DEFAULT NULL COMMENT 'The ID of the target entity.',
  `revision_created` int(11) DEFAULT NULL,
  `revision_log_message` longtext,
  `revision_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`),
  KEY `menu_link_content__id` (`id`),
  KEY `menu_link_content__ef029a1897` (`revision_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for menu_link_content entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_menu_tree`
--

DROP TABLE IF EXISTS `lAfOL_menu_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_menu_tree` (
  `menu_name` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The menu name. All links with the same menu name (such as ''tools'') are part of the same menu.',
  `mlid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The menu link ID (mlid) is the integer primary key.',
  `id` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'Unique machine name: the plugin ID.',
  `parent` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The plugin ID for the parent of this link.',
  `route_name` varchar(255) CHARACTER SET ascii DEFAULT NULL COMMENT 'The machine name of a defined Symfony Route this menu item represents.',
  `route_param_key` varchar(255) DEFAULT NULL COMMENT 'An encoded string of route parameters for loading by route.',
  `route_parameters` longblob COMMENT 'Serialized array of route parameters of this menu link.',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'The external path this link points to (when not using a route).',
  `title` longblob COMMENT 'The serialized title for the link. May be a TranslatableMarkup.',
  `description` longblob COMMENT 'The serialized description of this link - used for admin pages and title attribute. May be a TranslatableMarkup.',
  `class` text COMMENT 'The class for this link plugin.',
  `options` longblob COMMENT 'A serialized array of URL options, such as a query string or HTML attributes.',
  `provider` varchar(50) CHARACTER SET ascii NOT NULL DEFAULT 'system' COMMENT 'The name of the module that generated this link.',
  `enabled` smallint(6) NOT NULL DEFAULT '1' COMMENT 'A flag for whether the link should be rendered in menus. (0 = a disabled menu item that may be shown on admin screens, 1 = a normal, visible link)',
  `discovered` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag for whether the link was discovered, so can be purged on rebuild',
  `expanded` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Flag for whether this link should be rendered as expanded in menus - expanded links always have their child links displayed, instead of only when the link is in the active trail (1 = expanded, 0 = not expanded)',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT 'Link weight among links in the same menu at the same depth.',
  `metadata` longblob COMMENT 'A serialized array of data that may be used by the plugin instance.',
  `has_children` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Flag indicating whether any enabled links have this link as a parent (1 = enabled children exist, 0 = no enabled children).',
  `depth` smallint(6) NOT NULL DEFAULT '0' COMMENT 'The depth relative to the top level. A link with empty parent will have depth == 1.',
  `p1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The first mlid in the materialized path. If N = depth, then pN must equal the mlid. If depth > 1 then p(N-1) must equal the parent link mlid. All pX where X > depth must equal zero. The columns p1 .. p9 are also called the parents.',
  `p2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The second mlid in the materialized path. See p1.',
  `p3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The third mlid in the materialized path. See p1.',
  `p4` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The fourth mlid in the materialized path. See p1.',
  `p5` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The fifth mlid in the materialized path. See p1.',
  `p6` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The sixth mlid in the materialized path. See p1.',
  `p7` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The seventh mlid in the materialized path. See p1.',
  `p8` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The eighth mlid in the materialized path. See p1.',
  `p9` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The ninth mlid in the materialized path. See p1.',
  `form_class` varchar(255) DEFAULT NULL COMMENT 'meh',
  PRIMARY KEY (`mlid`),
  UNIQUE KEY `id` (`id`),
  KEY `menu_parents` (`menu_name`,`p1`,`p2`,`p3`,`p4`,`p5`,`p6`,`p7`,`p8`,`p9`),
  KEY `menu_parent_expand_child` (`menu_name`,`expanded`,`has_children`,`parent`(16)),
  KEY `route_values` (`route_name`(32),`route_param_key`(16))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COMMENT='Contains the menu tree hierarchy.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node`
--

DROP TABLE IF EXISTS `lAfOL_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node` (
  `nid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vid` int(10) unsigned DEFAULT NULL,
  `type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `node_field__uuid__value` (`uuid`),
  UNIQUE KEY `node__vid` (`vid`),
  KEY `node_field__type__target_id` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for node entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node__body`
--

DROP TABLE IF EXISTS `lAfOL_node__body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node__body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext NOT NULL,
  `body_summary` longtext,
  `body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `body_format` (`body_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for node field body.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node__comment`
--

DROP TABLE IF EXISTS `lAfOL_node__comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node__comment` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `comment_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Whether comments are allowed on this entity: 0 = no, 1 = closed (read only), 2 = open (read/write).',
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for node field comment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node__field_image`
--

DROP TABLE IF EXISTS `lAfOL_node__field_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node__field_image` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_image_target_id` int(10) unsigned NOT NULL COMMENT 'The ID of the file entity.',
  `field_image_alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `field_image_title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `field_image_width` int(10) unsigned DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `field_image_height` int(10) unsigned DEFAULT NULL COMMENT 'The height of the image in pixels.',
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_image_target_id` (`field_image_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for node field field_image.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node__field_tags`
--

DROP TABLE IF EXISTS `lAfOL_node__field_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node__field_tags` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_tags_target_id` int(10) unsigned NOT NULL COMMENT 'The ID of the target entity.',
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_tags_target_id` (`field_tags_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for node field field_tags.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node_access`
--

DROP TABLE IF EXISTS `lAfOL_node_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node_access` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The lAfOL_node.nid this record affects.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The lAfOL_language.langcode of this node.',
  `fallback` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'Boolean indicating whether this record should be used as a fallback if a language condition is not provided.',
  `gid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The grant ID a user must possess in the specified realm to gain this row''s privileges on the node.',
  `realm` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The realm in which the user must possess the grant ID. Modules can define one or more realms by implementing hook_node_grants().',
  `grant_view` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether a user with the realm/grant pair can view this node.',
  `grant_update` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether a user with the realm/grant pair can edit this node.',
  `grant_delete` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether a user with the realm/grant pair can delete this node.',
  PRIMARY KEY (`nid`,`gid`,`realm`,`langcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Identifies which realm/grant pairs a user must possess in…';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node_field_data`
--

DROP TABLE IF EXISTS `lAfOL_node_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node_field_data` (
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `uid` int(10) unsigned NOT NULL COMMENT 'The ID of the target entity.',
  `title` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `promote` tinyint(4) NOT NULL,
  `sticky` tinyint(4) NOT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`nid`,`langcode`),
  KEY `node__id__default_langcode__langcode` (`nid`,`default_langcode`,`langcode`),
  KEY `node__vid` (`vid`),
  KEY `node_field__type__target_id` (`type`),
  KEY `node_field__uid__target_id` (`uid`),
  KEY `node_field__created` (`created`),
  KEY `node_field__changed` (`changed`),
  KEY `node__status_type` (`status`,`type`,`nid`),
  KEY `node__frontpage` (`promote`,`status`,`sticky`,`created`),
  KEY `node__title_type` (`title`(191),`type`(4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for node entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node_field_revision`
--

DROP TABLE IF EXISTS `lAfOL_node_field_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node_field_revision` (
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `uid` int(10) unsigned NOT NULL COMMENT 'The ID of the target entity.',
  `title` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `promote` tinyint(4) DEFAULT NULL,
  `sticky` tinyint(4) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`vid`,`langcode`),
  KEY `node__id__default_langcode__langcode` (`nid`,`default_langcode`,`langcode`),
  KEY `node_field__uid__target_id` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision data table for node entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node_revision`
--

DROP TABLE IF EXISTS `lAfOL_node_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node_revision` (
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `revision_uid` int(10) unsigned DEFAULT NULL COMMENT 'The ID of the target entity.',
  `revision_timestamp` int(11) DEFAULT NULL,
  `revision_log` longtext,
  `revision_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `node__nid` (`nid`),
  KEY `node_field__langcode` (`langcode`),
  KEY `node_field__revision_uid__target_id` (`revision_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for node entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node_revision__body`
--

DROP TABLE IF EXISTS `lAfOL_node_revision__body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node_revision__body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext NOT NULL,
  `body_summary` longtext,
  `body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `body_format` (`body_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field body.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node_revision__comment`
--

DROP TABLE IF EXISTS `lAfOL_node_revision__comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node_revision__comment` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `comment_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Whether comments are allowed on this entity: 0 = no, 1 = closed (read only), 2 = open (read/write).',
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field comment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node_revision__field_image`
--

DROP TABLE IF EXISTS `lAfOL_node_revision__field_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node_revision__field_image` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_image_target_id` int(10) unsigned NOT NULL COMMENT 'The ID of the file entity.',
  `field_image_alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `field_image_title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `field_image_width` int(10) unsigned DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `field_image_height` int(10) unsigned DEFAULT NULL COMMENT 'The height of the image in pixels.',
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_image_target_id` (`field_image_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field field_image.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_node_revision__field_tags`
--

DROP TABLE IF EXISTS `lAfOL_node_revision__field_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_node_revision__field_tags` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_tags_target_id` int(10) unsigned NOT NULL COMMENT 'The ID of the target entity.',
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `field_tags_target_id` (`field_tags_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field field_tags.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_queue`
--

DROP TABLE IF EXISTS `lAfOL_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_queue` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique item ID.',
  `name` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The queue name.',
  `data` longblob COMMENT 'The arbitrary data for the item.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'Timestamp when the claim lease expires on the item.',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'Timestamp when the item was created.',
  PRIMARY KEY (`item_id`),
  KEY `name_created` (`name`,`created`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores items in queues.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_router`
--

DROP TABLE IF EXISTS `lAfOL_router`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_router` (
  `name` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Primary Key: Machine name of this route',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'The path for this URI',
  `pattern_outline` varchar(255) NOT NULL DEFAULT '' COMMENT 'The pattern',
  `fit` int(11) NOT NULL DEFAULT '0' COMMENT 'A numeric representation of how specific the path is.',
  `route` longblob COMMENT 'A serialized Route object',
  `number_parts` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Number of parts in this router path.',
  PRIMARY KEY (`name`),
  KEY `pattern_outline_parts` (`pattern_outline`(191),`number_parts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maps paths to various callbacks (access, page and title)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_search_dataset`
--

DROP TABLE IF EXISTS `lAfOL_search_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_search_dataset` (
  `sid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Search item ID, e.g. node ID for nodes.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The lAfOL_languages.langcode of the item variant.',
  `type` varchar(64) CHARACTER SET ascii NOT NULL COMMENT 'Type of item, e.g. node.',
  `data` longtext NOT NULL COMMENT 'List of space-separated words from the item.',
  `reindex` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Set to force node reindexing.',
  PRIMARY KEY (`sid`,`langcode`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores items that will be searched.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_search_index`
--

DROP TABLE IF EXISTS `lAfOL_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_search_index` (
  `word` varchar(50) NOT NULL DEFAULT '' COMMENT 'The lAfOL_search_total.word that is associated with the search item.',
  `sid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The lAfOL_search_dataset.sid of the searchable item to which the word belongs.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The lAfOL_languages.langcode of the item variant.',
  `type` varchar(64) CHARACTER SET ascii NOT NULL COMMENT 'The lAfOL_search_dataset.type of the searchable item to which the word belongs.',
  `score` float DEFAULT NULL COMMENT 'The numeric score of the word, higher being more important.',
  PRIMARY KEY (`word`,`sid`,`langcode`,`type`),
  KEY `sid_type` (`sid`,`langcode`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores the search index, associating words, items and…';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_search_total`
--

DROP TABLE IF EXISTS `lAfOL_search_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_search_total` (
  `word` varchar(50) NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique word in the search index.',
  `count` float DEFAULT NULL COMMENT 'The count of the word in the index using Zipf''s law to equalize the probability distribution.',
  PRIMARY KEY (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores search totals for words.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_semaphore`
--

DROP TABLE IF EXISTS `lAfOL_semaphore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_semaphore` (
  `name` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique name.',
  `value` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'A value for the semaphore.',
  `expire` double NOT NULL COMMENT 'A Unix timestamp with microseconds indicating when the semaphore should expire.',
  PRIMARY KEY (`name`),
  KEY `value` (`value`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table for holding semaphores, locks, flags, etc. that…';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_sequences`
--

DROP TABLE IF EXISTS `lAfOL_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_sequences` (
  `value` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The value of the sequence.',
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Stores IDs.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_sessions`
--

DROP TABLE IF EXISTS `lAfOL_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_sessions` (
  `uid` int(10) unsigned NOT NULL COMMENT 'The lAfOL_users.uid corresponding to a session, or 0 for anonymous user.',
  `sid` varchar(128) CHARACTER SET ascii NOT NULL COMMENT 'A session ID (hashed). The value is generated by Drupal''s session handlers.',
  `hostname` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The IP address that last used this session ID (sid).',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp when this session last requested a page. Old records are purged by PHP automatically.',
  `session` longblob COMMENT 'The serialized contents of $_SESSION, an array of name/value pairs that persists across page requests by this session ID. Drupal loads $_SESSION from here at the start of each request and saves it at the end.',
  PRIMARY KEY (`sid`),
  KEY `timestamp` (`timestamp`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Drupal''s session handlers read and write into the sessions…';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_shortcut`
--

DROP TABLE IF EXISTS `lAfOL_shortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_shortcut` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortcut_set` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shortcut_field__uuid__value` (`uuid`),
  KEY `shortcut_field__shortcut_set__target_id` (`shortcut_set`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='The base table for shortcut entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_shortcut_field_data`
--

DROP TABLE IF EXISTS `lAfOL_shortcut_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_shortcut_field_data` (
  `id` int(10) unsigned NOT NULL,
  `shortcut_set` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `link__uri` varchar(2048) DEFAULT NULL COMMENT 'The URI of the link.',
  `link__title` varchar(255) DEFAULT NULL COMMENT 'The link text.',
  `link__options` longblob COMMENT 'Serialized array of options for the link.',
  `default_langcode` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`,`langcode`),
  KEY `shortcut__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  KEY `shortcut_field__shortcut_set__target_id` (`shortcut_set`),
  KEY `shortcut_field__link__uri` (`link__uri`(30))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for shortcut entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_shortcut_set_users`
--

DROP TABLE IF EXISTS `lAfOL_shortcut_set_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_shortcut_set_users` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The lAfOL_users.uid for this set.',
  `set_name` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The lAfOL_shortcut_set.set_name that will be displayed for this user.',
  PRIMARY KEY (`uid`),
  KEY `set_name` (`set_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maps users to shortcut sets.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_taxonomy_index`
--

DROP TABLE IF EXISTS `lAfOL_taxonomy_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_taxonomy_index` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The lAfOL_node.nid this record tracks.',
  `tid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The term ID.',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT 'Boolean indicating whether the node is published (visible to non-administrators).',
  `sticky` tinyint(4) DEFAULT '0' COMMENT 'Boolean indicating whether the node is sticky.',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp when the node was created.',
  PRIMARY KEY (`nid`,`tid`),
  KEY `term_node` (`tid`,`status`,`sticky`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maintains denormalized information about node/term…';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_taxonomy_term__parent`
--

DROP TABLE IF EXISTS `lAfOL_taxonomy_term__parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_taxonomy_term__parent` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `parent_target_id` int(10) unsigned NOT NULL COMMENT 'The ID of the target entity.',
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `revision_id` (`revision_id`),
  KEY `parent_target_id` (`parent_target_id`),
  KEY `bundle_delta_target_id` (`bundle`,`delta`,`parent_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for taxonomy_term field parent.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_taxonomy_term_data`
--

DROP TABLE IF EXISTS `lAfOL_taxonomy_term_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_taxonomy_term_data` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `revision_id` int(10) unsigned DEFAULT NULL,
  `vid` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `taxonomy_term_field__uuid__value` (`uuid`),
  UNIQUE KEY `taxonomy_term__revision_id` (`revision_id`),
  KEY `taxonomy_term_field__vid__target_id` (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for taxonomy_term entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_taxonomy_term_field_data`
--

DROP TABLE IF EXISTS `lAfOL_taxonomy_term_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_taxonomy_term_field_data` (
  `tid` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL,
  `vid` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description__value` longtext,
  `description__format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`tid`,`langcode`),
  KEY `taxonomy_term__id__default_langcode__langcode` (`tid`,`default_langcode`,`langcode`),
  KEY `taxonomy_term__revision_id` (`revision_id`),
  KEY `taxonomy_term_field__name` (`name`(191)),
  KEY `taxonomy_term__status_vid` (`status`,`vid`,`tid`),
  KEY `taxonomy_term__tree` (`vid`,`weight`,`name`(191)),
  KEY `taxonomy_term__vid_name` (`vid`,`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for taxonomy_term entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_taxonomy_term_field_revision`
--

DROP TABLE IF EXISTS `lAfOL_taxonomy_term_field_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_taxonomy_term_field_revision` (
  `tid` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description__value` longtext,
  `description__format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`,`langcode`),
  KEY `taxonomy_term__id__default_langcode__langcode` (`tid`,`default_langcode`,`langcode`),
  KEY `taxonomy_term_field__description__format` (`description__format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision data table for taxonomy_term entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_taxonomy_term_revision`
--

DROP TABLE IF EXISTS `lAfOL_taxonomy_term_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_taxonomy_term_revision` (
  `tid` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `revision_user` int(10) unsigned DEFAULT NULL COMMENT 'The ID of the target entity.',
  `revision_created` int(11) DEFAULT NULL,
  `revision_log_message` longtext,
  `revision_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`),
  KEY `taxonomy_term__tid` (`tid`),
  KEY `taxonomy_term_field__revision_user__target_id` (`revision_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for taxonomy_term entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_taxonomy_term_revision__parent`
--

DROP TABLE IF EXISTS `lAfOL_taxonomy_term_revision__parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_taxonomy_term_revision__parent` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `parent_target_id` int(10) unsigned NOT NULL COMMENT 'The ID of the target entity.',
  PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `parent_target_id` (`parent_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for taxonomy_term field parent.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_url_alias`
--

DROP TABLE IF EXISTS `lAfOL_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_url_alias` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'A unique path alias identifier.',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT 'The Drupal path this alias is for. e.g. node/12.',
  `alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'The alias for this path. e.g. title-of-the-story.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code this alias is for. if ''und'', the alias will be used for unknown languages. Each Drupal path can have an alias for each supported language.',
  PRIMARY KEY (`pid`),
  KEY `alias_langcode_pid` (`alias`(191),`langcode`,`pid`),
  KEY `source_langcode_pid` (`source`(191),`langcode`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='A list of URL aliases for Drupal paths. a user may visit…';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_user__roles`
--

DROP TABLE IF EXISTS `lAfOL_user__roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_user__roles` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to, which for an unversioned entity type is the same as the entity id',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `roles_target_id` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `roles_target_id` (`roles_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for user field roles.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_user__user_picture`
--

DROP TABLE IF EXISTS `lAfOL_user__user_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_user__user_picture` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to, which for an unversioned entity type is the same as the entity id',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `user_picture_target_id` int(10) unsigned NOT NULL COMMENT 'The ID of the file entity.',
  `user_picture_alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `user_picture_title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `user_picture_width` int(10) unsigned DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `user_picture_height` int(10) unsigned DEFAULT NULL COMMENT 'The height of the image in pixels.',
  PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  KEY `bundle` (`bundle`),
  KEY `revision_id` (`revision_id`),
  KEY `user_picture_target_id` (`user_picture_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for user field user_picture.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_users`
--

DROP TABLE IF EXISTS `lAfOL_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_users` (
  `uid` int(10) unsigned NOT NULL,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user_field__uuid__value` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for user entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_users_data`
--

DROP TABLE IF EXISTS `lAfOL_users_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_users_data` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The lAfOL_users.uid this record affects.',
  `module` varchar(50) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The name of the module declaring the variable.',
  `name` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The identifier of the data.',
  `value` longblob COMMENT 'The value.',
  `serialized` tinyint(3) unsigned DEFAULT '0' COMMENT 'Whether value is serialized.',
  PRIMARY KEY (`uid`,`module`,`name`),
  KEY `module` (`module`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores module data as key/value pairs per user.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_users_field_data`
--

DROP TABLE IF EXISTS `lAfOL_users_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_users_field_data` (
  `uid` int(10) unsigned NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `preferred_langcode` varchar(12) CHARACTER SET ascii DEFAULT NULL,
  `preferred_admin_langcode` varchar(12) CHARACTER SET ascii DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `timezone` varchar(32) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `changed` int(11) DEFAULT NULL,
  `access` int(11) NOT NULL,
  `login` int(11) DEFAULT NULL,
  `init` varchar(254) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  PRIMARY KEY (`uid`,`langcode`),
  UNIQUE KEY `user__name` (`name`,`langcode`),
  KEY `user__id__default_langcode__langcode` (`uid`,`default_langcode`,`langcode`),
  KEY `user_field__mail` (`mail`(191)),
  KEY `user_field__created` (`created`),
  KEY `user_field__access` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for user entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lAfOL_watchdog`
--

DROP TABLE IF EXISTS `lAfOL_watchdog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lAfOL_watchdog` (
  `wid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique watchdog event ID.',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The lAfOL_users.uid of the user who triggered the event.',
  `type` varchar(64) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Type of log message, for example "user" or "page not found."',
  `message` longtext NOT NULL COMMENT 'Text of log message to be passed into the t() function.',
  `variables` longblob NOT NULL COMMENT 'Serialized array of variables that match the message string and that is passed into the t() function.',
  `severity` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'The severity level of the event. ranges from 0 (Emergency) to 7 (Debug)',
  `link` text COMMENT 'Link to view the result of the event.',
  `location` text NOT NULL COMMENT 'URL of the origin of the event.',
  `referer` text COMMENT 'URL of referring page.',
  `hostname` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Hostname of the user who triggered the event.',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp of when event occurred.',
  PRIMARY KEY (`wid`),
  KEY `type` (`type`),
  KEY `uid` (`uid`),
  KEY `severity` (`severity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table that contains logs of all system events.';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-07 13:35:57
