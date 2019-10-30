-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: dd35330
-- Generation Time: Oct 30, 2019 at 01:17 PM
-- Server version: 5.7.26-nmm1-log
-- PHP Version: 7.2.19-nmm1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d02ff98e`
--

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_accounts`
--

CREATE TABLE `q6f2w_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lower_user_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `quota` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_login` int(11) NOT NULL DEFAULT '0',
  `backend` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `home` varchar(1024) COLLATE utf8mb4_bin NOT NULL,
  `state` smallint(6) NOT NULL DEFAULT '0' COMMENT '0: initial, 1: enabled, 2: disabled, 3: deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_account_terms`
--

CREATE TABLE `q6f2w_account_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_addressbookchanges`
--

CREATE TABLE `q6f2w_addressbookchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `addressbookid` int(11) NOT NULL,
  `operation` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_addressbooks`
--

CREATE TABLE `q6f2w_addressbooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_appconfig`
--

CREATE TABLE `q6f2w_appconfig` (
  `appid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_authtoken`
--

CREATE TABLE `q6f2w_authtoken` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `login_name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `password` longtext COLLATE utf8mb4_bin,
  `name` longtext COLLATE utf8mb4_bin NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_check` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_calendarchanges`
--

CREATE TABLE `q6f2w_calendarchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `calendarid` int(11) NOT NULL,
  `operation` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_calendarobjects`
--

CREATE TABLE `q6f2w_calendarobjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calendardata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarid` int(10) UNSIGNED NOT NULL,
  `lastmodified` int(10) UNSIGNED DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `componenttype` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstoccurence` bigint(20) UNSIGNED DEFAULT NULL,
  `lastoccurence` bigint(20) UNSIGNED DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `classification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_calendars`
--

CREATE TABLE `q6f2w_calendars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarorder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendarcolor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timezone` longtext COLLATE utf8mb4_bin,
  `components` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `transparent` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_calendarsubscriptions`
--

CREATE TABLE `q6f2w_calendarsubscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `refreshrate` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarorder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendarcolor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `striptodos` smallint(6) DEFAULT NULL,
  `stripalarms` smallint(6) DEFAULT NULL,
  `stripattachments` smallint(6) DEFAULT NULL,
  `lastmodified` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_cards`
--

CREATE TABLE `q6f2w_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addressbookid` int(11) NOT NULL DEFAULT '0',
  `carddata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastmodified` bigint(20) UNSIGNED DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_cards_properties`
--

CREATE TABLE `q6f2w_cards_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addressbookid` bigint(20) NOT NULL DEFAULT '0',
  `cardid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `preferred` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_comments`
--

CREATE TABLE `q6f2w_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topmost_parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `children_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `actor_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `actor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_bin,
  `verb` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `creation_timestamp` datetime DEFAULT NULL,
  `latest_child_timestamp` datetime DEFAULT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_comments_read_markers`
--

CREATE TABLE `q6f2w_comments_read_markers` (
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `marker_datetime` datetime DEFAULT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_credentials`
--

CREATE TABLE `q6f2w_credentials` (
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `credentials` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_dav_job_status`
--

CREATE TABLE `q6f2w_dav_job_status` (
  `id` bigint(20) NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:guid)',
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `status_info` varchar(4000) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_dav_properties`
--

CREATE TABLE `q6f2w_dav_properties` (
  `id` bigint(20) NOT NULL,
  `propertypath` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyvalue` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_dav_shares`
--

CREATE TABLE `q6f2w_dav_shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `access` smallint(6) DEFAULT NULL,
  `resourceid` int(10) UNSIGNED NOT NULL,
  `publicuri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_external_applicable`
--

CREATE TABLE `q6f2w_external_applicable` (
  `applicable_id` bigint(20) NOT NULL,
  `mount_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_external_config`
--

CREATE TABLE `q6f2w_external_config` (
  `config_id` bigint(20) NOT NULL,
  `mount_id` bigint(20) NOT NULL,
  `key` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(4096) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_external_mounts`
--

CREATE TABLE `q6f2w_external_mounts` (
  `mount_id` bigint(20) NOT NULL,
  `mount_point` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `storage_backend` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `auth_backend` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_external_options`
--

CREATE TABLE `q6f2w_external_options` (
  `option_id` bigint(20) NOT NULL,
  `mount_id` bigint(20) NOT NULL,
  `key` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(256) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_federated_reshares`
--

CREATE TABLE `q6f2w_federated_reshares` (
  `share_id` bigint(20) NOT NULL,
  `remote_id` bigint(20) NOT NULL COMMENT 'share ID at the remote server'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_filecache`
--

CREATE TABLE `q6f2w_filecache` (
  `fileid` bigint(20) NOT NULL,
  `storage` int(11) NOT NULL DEFAULT '0',
  `path` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `path_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `parent` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `mimetype` int(11) NOT NULL DEFAULT '0',
  `mimepart` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `mtime` bigint(20) NOT NULL DEFAULT '0',
  `storage_mtime` bigint(20) NOT NULL DEFAULT '0',
  `encrypted` int(11) NOT NULL DEFAULT '0',
  `unencrypted_size` bigint(20) NOT NULL DEFAULT '0',
  `etag` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `permissions` int(11) DEFAULT '0',
  `checksum` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_files_trash`
--

CREATE TABLE `q6f2w_files_trash` (
  `auto_id` bigint(20) NOT NULL,
  `id` varchar(250) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timestamp` varchar(12) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `location` varchar(512) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_file_locks`
--

CREATE TABLE `q6f2w_file_locks` (
  `id` int(10) UNSIGNED NOT NULL,
  `lock` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ttl` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_groups`
--

CREATE TABLE `q6f2w_groups` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_group_admin`
--

CREATE TABLE `q6f2w_group_admin` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_group_user`
--

CREATE TABLE `q6f2w_group_user` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_jobs`
--

CREATE TABLE `q6f2w_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `argument` varchar(4000) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT '0',
  `last_checked` int(11) DEFAULT '0',
  `reserved_at` int(11) DEFAULT '0',
  `execution_duration` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_migrations`
--

CREATE TABLE `q6f2w_migrations` (
  `app` varchar(177) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(14) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_mimetypes`
--

CREATE TABLE `q6f2w_mimetypes` (
  `id` int(11) NOT NULL,
  `mimetype` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_mounts`
--

CREATE TABLE `q6f2w_mounts` (
  `id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `root_id` bigint(20) NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `mount_point` varchar(4000) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_notifications`
--

CREATE TABLE `q6f2w_notifications` (
  `notification_id` int(11) NOT NULL,
  `app` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `subject` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `subject_parameters` longtext COLLATE utf8mb4_bin,
  `message` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `message_parameters` longtext COLLATE utf8mb4_bin,
  `link` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `actions` longtext COLLATE utf8mb4_bin,
  `icon` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_persistent_locks`
--

CREATE TABLE `q6f2w_persistent_locks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) NOT NULL COMMENT 'FK to fileid in table oc_file_cache',
  `owner_account_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'owner of the lock - FK to account table',
  `owner` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'owner of the lock - just a human readable string',
  `timeout` int(10) UNSIGNED NOT NULL COMMENT 'timestamp when the lock expires',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT 'timestamp when the lock was created',
  `token` varchar(1024) COLLATE utf8mb4_bin NOT NULL COMMENT 'uuid for webdav locks - 1024 random chars for WOPI locks',
  `token_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT 'md5(token)',
  `scope` smallint(6) NOT NULL COMMENT '1 - exclusive, 2 - shared',
  `depth` smallint(6) NOT NULL COMMENT '0, 1 or infinite'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_preferences`
--

CREATE TABLE `q6f2w_preferences` (
  `userid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `appid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_privatedata`
--

CREATE TABLE `q6f2w_privatedata` (
  `keyid` int(10) UNSIGNED NOT NULL,
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `app` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `key` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_properties`
--

CREATE TABLE `q6f2w_properties` (
  `id` bigint(20) NOT NULL,
  `fileid` bigint(20) UNSIGNED DEFAULT NULL,
  `propertyname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyvalue` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_schedulingobjects`
--

CREATE TABLE `q6f2w_schedulingobjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendardata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastmodified` int(10) UNSIGNED DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_share`
--

CREATE TABLE `q6f2w_share` (
  `id` int(11) NOT NULL,
  `share_type` smallint(6) NOT NULL DEFAULT '0',
  `share_with` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uid_owner` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid_initiator` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `item_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `item_source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `item_target` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `file_source` bigint(20) DEFAULT NULL,
  `file_target` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT '0',
  `stime` bigint(20) NOT NULL DEFAULT '0',
  `accepted` smallint(6) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `mail_send` smallint(6) NOT NULL DEFAULT '0',
  `share_name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `attributes` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_share_external`
--

CREATE TABLE `q6f2w_share_external` (
  `id` bigint(20) NOT NULL,
  `remote` varchar(512) COLLATE utf8mb4_bin NOT NULL COMMENT 'Url of the remote owncloud instance',
  `remote_id` bigint(20) NOT NULL DEFAULT '-1',
  `share_token` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'Public share token',
  `password` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Optional password for the public share',
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'Original name on the remote server',
  `owner` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'User that owns the public share on the remote server',
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'Local user which added the external share',
  `mountpoint` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT 'Full path where the share is mounted',
  `mountpoint_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT 'md5 hash of the mountpoint',
  `accepted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_storages`
--

CREATE TABLE `q6f2w_storages` (
  `id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `numeric_id` int(11) NOT NULL,
  `available` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_systemtag`
--

CREATE TABLE `q6f2w_systemtag` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `visibility` smallint(6) NOT NULL DEFAULT '1',
  `editable` smallint(6) NOT NULL DEFAULT '1',
  `assignable` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_systemtag_group`
--

CREATE TABLE `q6f2w_systemtag_group` (
  `systemtagid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gid` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_systemtag_object_mapping`
--

CREATE TABLE `q6f2w_systemtag_object_mapping` (
  `objectid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `objecttype` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `systemtagid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_trusted_servers`
--

CREATE TABLE `q6f2w_trusted_servers` (
  `id` int(11) NOT NULL,
  `url` varchar(512) COLLATE utf8mb4_bin NOT NULL COMMENT 'Url of trusted server',
  `url_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'sha1 hash of the url without the protocol',
  `token` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'token used to exchange the shared secret',
  `shared_secret` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'shared secret used to authenticate',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT 'current status of the connection',
  `sync_token` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'cardDav sync token'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_users`
--

CREATE TABLE `q6f2w_users` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `displayname` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_vcategory`
--

CREATE TABLE `q6f2w_vcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `q6f2w_vcategory_to_object`
--

CREATE TABLE `q6f2w_vcategory_to_object` (
  `objid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `categoryid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `q6f2w_accounts`
--
ALTER TABLE `q6f2w_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_907AA303A76ED395` (`user_id`),
  ADD UNIQUE KEY `lower_user_id_index` (`lower_user_id`),
  ADD KEY `display_name_index` (`display_name`),
  ADD KEY `email_index` (`email`);

--
-- Indexes for table `q6f2w_account_terms`
--
ALTER TABLE `q6f2w_account_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id_index` (`account_id`),
  ADD KEY `term_index` (`term`);

--
-- Indexes for table `q6f2w_addressbookchanges`
--
ALTER TABLE `q6f2w_addressbookchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressbookid_synctoken` (`addressbookid`,`synctoken`);

--
-- Indexes for table `q6f2w_addressbooks`
--
ALTER TABLE `q6f2w_addressbooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `addressbook_index` (`principaluri`,`uri`);

--
-- Indexes for table `q6f2w_appconfig`
--
ALTER TABLE `q6f2w_appconfig`
  ADD PRIMARY KEY (`appid`,`configkey`),
  ADD KEY `appconfig_config_key_index` (`configkey`),
  ADD KEY `appconfig_appid_key` (`appid`);

--
-- Indexes for table `q6f2w_authtoken`
--
ALTER TABLE `q6f2w_authtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authtoken_token_index` (`token`),
  ADD KEY `authtoken_last_activity_index` (`last_activity`);

--
-- Indexes for table `q6f2w_calendarchanges`
--
ALTER TABLE `q6f2w_calendarchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendarid_synctoken` (`calendarid`,`synctoken`);

--
-- Indexes for table `q6f2w_calendarobjects`
--
ALTER TABLE `q6f2w_calendarobjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calobjects_index` (`calendarid`,`uri`);

--
-- Indexes for table `q6f2w_calendars`
--
ALTER TABLE `q6f2w_calendars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calendars_index` (`principaluri`,`uri`);

--
-- Indexes for table `q6f2w_calendarsubscriptions`
--
ALTER TABLE `q6f2w_calendarsubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calsub_index` (`principaluri`,`uri`);

--
-- Indexes for table `q6f2w_cards`
--
ALTER TABLE `q6f2w_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressbookid_uri_index` (`addressbookid`,`uri`);

--
-- Indexes for table `q6f2w_cards_properties`
--
ALTER TABLE `q6f2w_cards_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_value_index` (`value`),
  ADD KEY `card_name_index` (`name`),
  ADD KEY `card_contactid_index` (`cardid`);

--
-- Indexes for table `q6f2w_comments`
--
ALTER TABLE `q6f2w_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_topmost_parent_id_idx` (`topmost_parent_id`),
  ADD KEY `comments_object_index` (`object_type`,`object_id`,`creation_timestamp`),
  ADD KEY `comments_actor_index` (`actor_type`,`actor_id`);

--
-- Indexes for table `q6f2w_comments_read_markers`
--
ALTER TABLE `q6f2w_comments_read_markers`
  ADD UNIQUE KEY `comments_marker_index` (`user_id`,`object_type`,`object_id`),
  ADD KEY `comments_marker_object_index` (`object_type`,`object_id`);

--
-- Indexes for table `q6f2w_credentials`
--
ALTER TABLE `q6f2w_credentials`
  ADD PRIMARY KEY (`user`,`identifier`),
  ADD KEY `credentials_user` (`user`);

--
-- Indexes for table `q6f2w_dav_job_status`
--
ALTER TABLE `q6f2w_dav_job_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_18BBA548D17F50A6` (`uuid`);

--
-- Indexes for table `q6f2w_dav_properties`
--
ALTER TABLE `q6f2w_dav_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propertypath_index` (`propertypath`);

--
-- Indexes for table `q6f2w_dav_shares`
--
ALTER TABLE `q6f2w_dav_shares`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dav_shares_index` (`principaluri`,`resourceid`,`type`,`publicuri`);

--
-- Indexes for table `q6f2w_external_applicable`
--
ALTER TABLE `q6f2w_external_applicable`
  ADD PRIMARY KEY (`applicable_id`),
  ADD UNIQUE KEY `applicable_type_value_mount` (`type`,`value`,`mount_id`),
  ADD KEY `applicable_mount` (`mount_id`),
  ADD KEY `applicable_type_value` (`type`,`value`);

--
-- Indexes for table `q6f2w_external_config`
--
ALTER TABLE `q6f2w_external_config`
  ADD PRIMARY KEY (`config_id`),
  ADD UNIQUE KEY `config_mount_key` (`mount_id`,`key`),
  ADD KEY `config_mount` (`mount_id`);

--
-- Indexes for table `q6f2w_external_mounts`
--
ALTER TABLE `q6f2w_external_mounts`
  ADD PRIMARY KEY (`mount_id`);

--
-- Indexes for table `q6f2w_external_options`
--
ALTER TABLE `q6f2w_external_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_mount_key` (`mount_id`,`key`),
  ADD KEY `option_mount` (`mount_id`);

--
-- Indexes for table `q6f2w_federated_reshares`
--
ALTER TABLE `q6f2w_federated_reshares`
  ADD UNIQUE KEY `share_id_index` (`share_id`);

--
-- Indexes for table `q6f2w_filecache`
--
ALTER TABLE `q6f2w_filecache`
  ADD PRIMARY KEY (`fileid`),
  ADD UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  ADD KEY `fs_parent_name_hash` (`parent`,`name`),
  ADD KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  ADD KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  ADD KEY `fs_storage_size` (`storage`,`size`,`fileid`);

--
-- Indexes for table `q6f2w_files_trash`
--
ALTER TABLE `q6f2w_files_trash`
  ADD PRIMARY KEY (`auto_id`),
  ADD KEY `id_index` (`id`),
  ADD KEY `timestamp_index` (`timestamp`),
  ADD KEY `user_index` (`user`);

--
-- Indexes for table `q6f2w_file_locks`
--
ALTER TABLE `q6f2w_file_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lock_key_index` (`key`),
  ADD KEY `lock_ttl_index` (`ttl`);

--
-- Indexes for table `q6f2w_groups`
--
ALTER TABLE `q6f2w_groups`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `q6f2w_group_admin`
--
ALTER TABLE `q6f2w_group_admin`
  ADD PRIMARY KEY (`gid`,`uid`),
  ADD KEY `group_admin_uid` (`uid`);

--
-- Indexes for table `q6f2w_group_user`
--
ALTER TABLE `q6f2w_group_user`
  ADD PRIMARY KEY (`gid`,`uid`),
  ADD KEY `gu_uid_index` (`uid`);

--
-- Indexes for table `q6f2w_jobs`
--
ALTER TABLE `q6f2w_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_class_index` (`class`);

--
-- Indexes for table `q6f2w_migrations`
--
ALTER TABLE `q6f2w_migrations`
  ADD PRIMARY KEY (`app`,`version`);

--
-- Indexes for table `q6f2w_mimetypes`
--
ALTER TABLE `q6f2w_mimetypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mimetype_id_index` (`mimetype`);

--
-- Indexes for table `q6f2w_mounts`
--
ALTER TABLE `q6f2w_mounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mounts_user_root_index` (`user_id`,`root_id`),
  ADD KEY `mounts_user_index` (`user_id`),
  ADD KEY `mounts_storage_index` (`storage_id`),
  ADD KEY `mounts_root_index` (`root_id`);

--
-- Indexes for table `q6f2w_notifications`
--
ALTER TABLE `q6f2w_notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `IDX_16B80748C96E70CF` (`app`),
  ADD KEY `IDX_16B807488D93D649` (`user`),
  ADD KEY `IDX_16B80748A5D6E63E` (`timestamp`),
  ADD KEY `IDX_16B8074811CB6B3A232D562B` (`object_type`,`object_id`);

--
-- Indexes for table `q6f2w_persistent_locks`
--
ALTER TABLE `q6f2w_persistent_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F0C3D55BB3BC57DA` (`token_hash`),
  ADD KEY `IDX_F0C3D55B93CB796C` (`file_id`),
  ADD KEY `IDX_F0C3D55BC901C6FF` (`owner_account_id`);

--
-- Indexes for table `q6f2w_preferences`
--
ALTER TABLE `q6f2w_preferences`
  ADD PRIMARY KEY (`userid`,`appid`,`configkey`);

--
-- Indexes for table `q6f2w_privatedata`
--
ALTER TABLE `q6f2w_privatedata`
  ADD PRIMARY KEY (`keyid`);

--
-- Indexes for table `q6f2w_properties`
--
ALTER TABLE `q6f2w_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fileid_index` (`fileid`);

--
-- Indexes for table `q6f2w_schedulingobjects`
--
ALTER TABLE `q6f2w_schedulingobjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `q6f2w_share`
--
ALTER TABLE `q6f2w_share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_share_type_index` (`item_type`,`share_type`),
  ADD KEY `file_source_index` (`file_source`),
  ADD KEY `token_index` (`token`),
  ADD KEY `share_with_index` (`share_with`),
  ADD KEY `item_source_index` (`item_source`),
  ADD KEY `item_source_type_index` (`item_source`,`share_type`,`item_type`);

--
-- Indexes for table `q6f2w_share_external`
--
ALTER TABLE `q6f2w_share_external`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`),
  ADD KEY `sh_external_user` (`user`);

--
-- Indexes for table `q6f2w_storages`
--
ALTER TABLE `q6f2w_storages`
  ADD PRIMARY KEY (`numeric_id`),
  ADD UNIQUE KEY `storages_id_index` (`id`);

--
-- Indexes for table `q6f2w_systemtag`
--
ALTER TABLE `q6f2w_systemtag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_ident` (`name`,`visibility`,`editable`,`assignable`);

--
-- Indexes for table `q6f2w_systemtag_group`
--
ALTER TABLE `q6f2w_systemtag_group`
  ADD PRIMARY KEY (`gid`,`systemtagid`);

--
-- Indexes for table `q6f2w_systemtag_object_mapping`
--
ALTER TABLE `q6f2w_systemtag_object_mapping`
  ADD UNIQUE KEY `mapping` (`objecttype`,`objectid`,`systemtagid`);

--
-- Indexes for table `q6f2w_trusted_servers`
--
ALTER TABLE `q6f2w_trusted_servers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url_hash` (`url_hash`);

--
-- Indexes for table `q6f2w_users`
--
ALTER TABLE `q6f2w_users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `q6f2w_vcategory`
--
ALTER TABLE `q6f2w_vcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid_index` (`uid`),
  ADD KEY `type_index` (`type`),
  ADD KEY `category_index` (`category`);

--
-- Indexes for table `q6f2w_vcategory_to_object`
--
ALTER TABLE `q6f2w_vcategory_to_object`
  ADD PRIMARY KEY (`categoryid`,`objid`,`type`),
  ADD KEY `vcategory_objectd_index` (`objid`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `q6f2w_accounts`
--
ALTER TABLE `q6f2w_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_account_terms`
--
ALTER TABLE `q6f2w_account_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_addressbookchanges`
--
ALTER TABLE `q6f2w_addressbookchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_addressbooks`
--
ALTER TABLE `q6f2w_addressbooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_authtoken`
--
ALTER TABLE `q6f2w_authtoken`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_calendarchanges`
--
ALTER TABLE `q6f2w_calendarchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_calendarobjects`
--
ALTER TABLE `q6f2w_calendarobjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_calendars`
--
ALTER TABLE `q6f2w_calendars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_calendarsubscriptions`
--
ALTER TABLE `q6f2w_calendarsubscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_cards`
--
ALTER TABLE `q6f2w_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_cards_properties`
--
ALTER TABLE `q6f2w_cards_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_comments`
--
ALTER TABLE `q6f2w_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_dav_job_status`
--
ALTER TABLE `q6f2w_dav_job_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_dav_properties`
--
ALTER TABLE `q6f2w_dav_properties`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_dav_shares`
--
ALTER TABLE `q6f2w_dav_shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_external_applicable`
--
ALTER TABLE `q6f2w_external_applicable`
  MODIFY `applicable_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_external_config`
--
ALTER TABLE `q6f2w_external_config`
  MODIFY `config_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_external_mounts`
--
ALTER TABLE `q6f2w_external_mounts`
  MODIFY `mount_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_external_options`
--
ALTER TABLE `q6f2w_external_options`
  MODIFY `option_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_filecache`
--
ALTER TABLE `q6f2w_filecache`
  MODIFY `fileid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_files_trash`
--
ALTER TABLE `q6f2w_files_trash`
  MODIFY `auto_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_file_locks`
--
ALTER TABLE `q6f2w_file_locks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_jobs`
--
ALTER TABLE `q6f2w_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_mimetypes`
--
ALTER TABLE `q6f2w_mimetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_mounts`
--
ALTER TABLE `q6f2w_mounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_notifications`
--
ALTER TABLE `q6f2w_notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_persistent_locks`
--
ALTER TABLE `q6f2w_persistent_locks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_privatedata`
--
ALTER TABLE `q6f2w_privatedata`
  MODIFY `keyid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_properties`
--
ALTER TABLE `q6f2w_properties`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_schedulingobjects`
--
ALTER TABLE `q6f2w_schedulingobjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_share`
--
ALTER TABLE `q6f2w_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_share_external`
--
ALTER TABLE `q6f2w_share_external`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_storages`
--
ALTER TABLE `q6f2w_storages`
  MODIFY `numeric_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_systemtag`
--
ALTER TABLE `q6f2w_systemtag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_trusted_servers`
--
ALTER TABLE `q6f2w_trusted_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q6f2w_vcategory`
--
ALTER TABLE `q6f2w_vcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `q6f2w_persistent_locks`
--
ALTER TABLE `q6f2w_persistent_locks`
  ADD CONSTRAINT `FK_F0C3D55B93CB796C` FOREIGN KEY (`file_id`) REFERENCES `q6f2w_filecache` (`fileid`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F0C3D55BC901C6FF` FOREIGN KEY (`owner_account_id`) REFERENCES `q6f2w_accounts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
