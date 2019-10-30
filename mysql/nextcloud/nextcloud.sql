SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `jvMDv_accounts` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_activity` (
  `activity_id` bigint(20) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `affecteduser` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `app` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `subjectparams` longtext COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `messageparams` longtext COLLATE utf8mb4_bin,
  `file` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `link` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_activity_mq` (
  `mail_id` bigint(20) NOT NULL,
  `amq_timestamp` int(11) NOT NULL DEFAULT '0',
  `amq_latest_send` int(11) NOT NULL DEFAULT '0',
  `amq_type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amq_affecteduser` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `amq_appid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amq_subject` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amq_subjectparams` varchar(4000) COLLATE utf8mb4_bin NOT NULL,
  `object_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_addressbookchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `addressbookid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_addressbooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_appconfig` (
  `appid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_authtoken` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `login_name` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `password` longtext COLLATE utf8mb4_bin,
  `name` longtext COLLATE utf8mb4_bin NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `remember` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_check` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scope` longtext COLLATE utf8mb4_bin,
  `expires` int(10) UNSIGNED DEFAULT NULL,
  `private_key` longtext COLLATE utf8mb4_bin,
  `public_key` longtext COLLATE utf8mb4_bin,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `password_invalid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_bruteforce_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `occurred` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `subnet` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `metadata` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendarchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `calendarid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  `calendartype` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendarobjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calendardata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarid` bigint(20) UNSIGNED NOT NULL,
  `lastmodified` int(10) UNSIGNED DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `componenttype` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstoccurence` bigint(20) UNSIGNED DEFAULT NULL,
  `lastoccurence` bigint(20) UNSIGNED DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `classification` int(11) DEFAULT '0',
  `calendartype` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendarobjects_props` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calendarid` bigint(20) NOT NULL DEFAULT '0',
  `objectid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `parameter` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendartype` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarorder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendarcolor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timezone` longtext COLLATE utf8mb4_bin,
  `components` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `transparent` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendarsubscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `refreshrate` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarorder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendarcolor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `striptodos` smallint(6) DEFAULT NULL,
  `stripalarms` smallint(6) DEFAULT NULL,
  `stripattachments` smallint(6) DEFAULT NULL,
  `lastmodified` int(10) UNSIGNED DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `source` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendar_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `recurrenceid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `attendee` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `organizer` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sequence` bigint(20) UNSIGNED DEFAULT NULL,
  `token` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `expiration` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendar_reminders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calendar_id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `is_recurring` smallint(6) NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `recurrence_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_recurrence_exception` smallint(6) NOT NULL,
  `event_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `alarm_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `is_relative` smallint(6) NOT NULL,
  `notification_date` bigint(20) UNSIGNED NOT NULL,
  `is_repeat_based` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendar_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `backend_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_restrictions` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendar_resources_md` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resource_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendar_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `backend_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_restrictions` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_calendar_rooms_md` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addressbookid` bigint(20) NOT NULL DEFAULT '0',
  `carddata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastmodified` bigint(20) UNSIGNED DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_cards_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addressbookid` bigint(20) NOT NULL DEFAULT '0',
  `cardid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `preferred` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_collres_accesscache` (
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `collection_id` bigint(20) DEFAULT '0',
  `resource_type` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `resource_id` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `access` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_collres_collections` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_collres_resources` (
  `collection_id` bigint(20) NOT NULL,
  `resource_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `topmost_parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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

CREATE TABLE `jvMDv_comments_read_markers` (
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `marker_datetime` datetime DEFAULT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_credentials` (
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `credentials` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_dav_cal_proxy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `proxy_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `permissions` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_dav_shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `access` smallint(6) DEFAULT NULL,
  `resourceid` bigint(20) UNSIGNED NOT NULL,
  `publicuri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_directlink` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `expiration` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_federated_reshares` (
  `share_id` int(11) NOT NULL,
  `remote_id` int(11) NOT NULL COMMENT 'share ID at the remote server'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_filecache` (
  `fileid` bigint(20) NOT NULL,
  `storage` bigint(20) NOT NULL DEFAULT '0',
  `path` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `path_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `parent` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `mimetype` bigint(20) NOT NULL DEFAULT '0',
  `mimepart` bigint(20) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `mtime` bigint(20) NOT NULL DEFAULT '0',
  `storage_mtime` bigint(20) NOT NULL DEFAULT '0',
  `encrypted` int(11) NOT NULL DEFAULT '0',
  `unencrypted_size` bigint(20) NOT NULL DEFAULT '0',
  `etag` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `permissions` int(11) DEFAULT '0',
  `checksum` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_filecache_extended` (
  `fileid` int(10) UNSIGNED NOT NULL,
  `metadata_etag` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `creation_time` bigint(20) NOT NULL DEFAULT '0',
  `upload_time` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_files_trash` (
  `auto_id` int(11) NOT NULL,
  `id` varchar(250) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timestamp` varchar(12) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `location` varchar(512) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_file_locks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lock` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ttl` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_flow_checks` (
  `id` int(11) NOT NULL,
  `class` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `operator` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `value` longtext COLLATE utf8mb4_bin,
  `hash` varchar(32) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_flow_operations` (
  `id` int(11) NOT NULL,
  `class` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `checks` longtext COLLATE utf8mb4_bin,
  `operation` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_groups` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_group_admin` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_group_user` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `argument` varchar(4000) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT '0',
  `last_checked` int(11) DEFAULT '0',
  `reserved_at` int(11) DEFAULT '0',
  `execution_duration` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_login_flow_v2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` bigint(20) UNSIGNED NOT NULL,
  `started` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `poll_token` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `login_token` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `public_key` text COLLATE utf8mb4_bin NOT NULL,
  `private_key` text COLLATE utf8mb4_bin NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `login_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `server` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `app_password` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_migrations` (
  `app` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_mimetypes` (
  `id` bigint(20) NOT NULL,
  `mimetype` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_mounts` (
  `id` bigint(20) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `root_id` int(11) NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `mount_point` varchar(4000) COLLATE utf8mb4_bin NOT NULL,
  `mount_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_notifications` (
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
  `icon` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `actions` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_notifications_pushtokens` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `token` int(11) NOT NULL DEFAULT '0',
  `deviceidentifier` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `devicepublickey` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `devicepublickeyhash` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `pushtokenhash` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `proxyserver` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `apptype` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT 'unknown'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_oauth2_access_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `token_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `hashed_code` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `encrypted_token` varchar(786) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_oauth2_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8mb4_bin NOT NULL,
  `client_identifier` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `secret` varchar(64) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_preferences` (
  `userid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `appid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_privacy_admins` (
  `id` int(11) NOT NULL,
  `displayname` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_properties` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertypath` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyvalue` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_schedulingobjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendardata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastmodified` int(10) UNSIGNED DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_share` (
  `id` bigint(20) NOT NULL,
  `share_type` smallint(6) NOT NULL DEFAULT '0',
  `share_with` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uid_owner` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid_initiator` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
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
  `password_by_talk` tinyint(1) NOT NULL DEFAULT '0',
  `note` longtext COLLATE utf8mb4_bin,
  `hide_download` smallint(6) NOT NULL DEFAULT '0',
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_share_external` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT '-1',
  `share_type` int(11) DEFAULT NULL,
  `remote` varchar(512) COLLATE utf8mb4_bin NOT NULL COMMENT 'Url of the remove owncloud instance',
  `remote_id` int(11) NOT NULL DEFAULT '-1',
  `share_token` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'Public share token',
  `password` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Optional password for the public share',
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'Original name on the remote server',
  `owner` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'User that owns the public share on the remote server',
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'Local user which added the external share',
  `mountpoint` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT 'Full path where the share is mounted',
  `mountpoint_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT 'md5 hash of the mountpoint',
  `accepted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_storages` (
  `numeric_id` bigint(20) NOT NULL,
  `id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_systemtag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `visibility` smallint(6) NOT NULL DEFAULT '1',
  `editable` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_systemtag_group` (
  `systemtagid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_systemtag_object_mapping` (
  `objectid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `objecttype` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `systemtagid` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_text_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `current_version` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `last_saved_version` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `last_saved_version_time` bigint(20) UNSIGNED NOT NULL,
  `last_saved_version_etag` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `base_version_etag` varchar(64) COLLATE utf8mb4_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_text_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `guest_name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `color` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL,
  `token` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `last_contact` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_text_steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  `version` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_trusted_servers` (
  `id` int(11) NOT NULL,
  `url` varchar(512) COLLATE utf8mb4_bin NOT NULL COMMENT 'Url of trusted server',
  `url_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'sha1 hash of the url without the protocol',
  `token` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'token used to exchange the shared secret',
  `shared_secret` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'shared secret used to authenticate',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT 'current status of the connection',
  `sync_token` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'cardDav sync token'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_twofactor_backupcodes` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `code` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `used` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_twofactor_providers` (
  `provider_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `enabled` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_users` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `displayname` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid_lower` varchar(64) COLLATE utf8mb4_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_vcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_vcategory_to_object` (
  `objid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `categoryid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;

CREATE TABLE `jvMDv_whats_new` (
  `id` int(10) UNSIGNED NOT NULL,
  `version` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '11',
  `etag` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `last_check` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;


ALTER TABLE `jvMDv_accounts`
  ADD PRIMARY KEY (`uid`);

ALTER TABLE `jvMDv_activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `activity_user_time` (`affecteduser`,`timestamp`),
  ADD KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  ADD KEY `activity_filter` (`affecteduser`,`type`,`app`,`timestamp`),
  ADD KEY `activity_object` (`object_type`,`object_id`);

ALTER TABLE `jvMDv_activity_mq`
  ADD PRIMARY KEY (`mail_id`),
  ADD KEY `amp_user` (`amq_affecteduser`),
  ADD KEY `amp_latest_send_time` (`amq_latest_send`),
  ADD KEY `amp_timestamp_time` (`amq_timestamp`);

ALTER TABLE `jvMDv_addressbookchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressbookid_synctoken` (`addressbookid`,`synctoken`);

ALTER TABLE `jvMDv_addressbooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `addressbook_index` (`principaluri`,`uri`);

ALTER TABLE `jvMDv_appconfig`
  ADD PRIMARY KEY (`appid`,`configkey`),
  ADD KEY `appconfig_config_key_index` (`configkey`),
  ADD KEY `appconfig_appid_key` (`appid`);

ALTER TABLE `jvMDv_authtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authtoken_token_index` (`token`),
  ADD KEY `authtoken_last_activity_idx` (`last_activity`),
  ADD KEY `authtoken_uid_index` (`uid`),
  ADD KEY `authtoken_version_index` (`version`);

ALTER TABLE `jvMDv_bruteforce_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bruteforce_attempts_ip` (`ip`),
  ADD KEY `bruteforce_attempts_subnet` (`subnet`);

ALTER TABLE `jvMDv_calendarchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calid_type_synctoken` (`calendarid`,`calendartype`,`synctoken`);

ALTER TABLE `jvMDv_calendarobjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calobjects_index` (`calendarid`,`calendartype`,`uri`);

ALTER TABLE `jvMDv_calendarobjects_props`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendarobject_name_index` (`name`,`calendartype`),
  ADD KEY `calendarobject_index` (`objectid`,`calendartype`),
  ADD KEY `calendarobject_value_index` (`value`,`calendartype`);

ALTER TABLE `jvMDv_calendars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calendars_index` (`principaluri`,`uri`);

ALTER TABLE `jvMDv_calendarsubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calsub_index` (`principaluri`,`uri`);

ALTER TABLE `jvMDv_calendar_invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_invitation_tokens` (`token`);

ALTER TABLE `jvMDv_calendar_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_reminder_objid` (`object_id`),
  ADD KEY `calendar_reminder_uidrec` (`uid`,`recurrence_id`);

ALTER TABLE `jvMDv_calendar_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_resources_bkdrsc` (`backend_id`,`resource_id`),
  ADD KEY `calendar_resources_email` (`email`),
  ADD KEY `calendar_resources_name` (`displayname`);

ALTER TABLE `jvMDv_calendar_resources_md`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_resources_md_idk` (`resource_id`,`key`);

ALTER TABLE `jvMDv_calendar_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_rooms_bkdrsc` (`backend_id`,`resource_id`),
  ADD KEY `calendar_rooms_email` (`email`),
  ADD KEY `calendar_rooms_name` (`displayname`);

ALTER TABLE `jvMDv_calendar_rooms_md`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_rooms_md_idk` (`room_id`,`key`);

ALTER TABLE `jvMDv_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_abid` (`addressbookid`);

ALTER TABLE `jvMDv_cards_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_contactid_index` (`cardid`),
  ADD KEY `card_name_index` (`name`),
  ADD KEY `card_value_index` (`value`),
  ADD KEY `cards_prop_abid` (`addressbookid`);

ALTER TABLE `jvMDv_collres_accesscache`
  ADD UNIQUE KEY `collres_unique_user` (`user_id`,`collection_id`,`resource_type`,`resource_id`),
  ADD KEY `collres_user_res` (`user_id`,`resource_type`,`resource_id`),
  ADD KEY `collres_user_coll` (`user_id`,`collection_id`);

ALTER TABLE `jvMDv_collres_collections`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `jvMDv_collres_resources`
  ADD UNIQUE KEY `collres_unique_res` (`collection_id`,`resource_type`,`resource_id`);

ALTER TABLE `jvMDv_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_topmost_parent_id_idx` (`topmost_parent_id`),
  ADD KEY `comments_object_index` (`object_type`,`object_id`,`creation_timestamp`),
  ADD KEY `comments_actor_index` (`actor_type`,`actor_id`);

ALTER TABLE `jvMDv_comments_read_markers`
  ADD UNIQUE KEY `comments_marker_index` (`user_id`,`object_type`,`object_id`),
  ADD KEY `comments_marker_object_index` (`object_type`,`object_id`);

ALTER TABLE `jvMDv_credentials`
  ADD PRIMARY KEY (`user`,`identifier`),
  ADD KEY `credentials_user` (`user`);

ALTER TABLE `jvMDv_dav_cal_proxy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dav_cal_proxy_uidx` (`owner_id`,`proxy_id`,`permissions`),
  ADD KEY `dav_cal_proxy_ioid` (`owner_id`),
  ADD KEY `dav_cal_proxy_ipid` (`proxy_id`);

ALTER TABLE `jvMDv_dav_shares`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dav_shares_index` (`principaluri`,`resourceid`,`type`,`publicuri`);

ALTER TABLE `jvMDv_directlink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directlink_token_idx` (`token`),
  ADD KEY `directlink_expiration_idx` (`expiration`);

ALTER TABLE `jvMDv_federated_reshares`
  ADD UNIQUE KEY `share_id_index` (`share_id`);

ALTER TABLE `jvMDv_filecache`
  ADD PRIMARY KEY (`fileid`),
  ADD UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  ADD KEY `fs_parent_name_hash` (`parent`,`name`),
  ADD KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  ADD KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  ADD KEY `fs_storage_size` (`storage`,`size`,`fileid`),
  ADD KEY `fs_mtime` (`mtime`);

ALTER TABLE `jvMDv_filecache_extended`
  ADD UNIQUE KEY `fce_fileid_idx` (`fileid`),
  ADD KEY `fce_ctime_idx` (`creation_time`),
  ADD KEY `fce_utime_idx` (`upload_time`);

ALTER TABLE `jvMDv_files_trash`
  ADD PRIMARY KEY (`auto_id`),
  ADD KEY `id_index` (`id`),
  ADD KEY `timestamp_index` (`timestamp`),
  ADD KEY `user_index` (`user`);

ALTER TABLE `jvMDv_file_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lock_key_index` (`key`),
  ADD KEY `lock_ttl_index` (`ttl`);

ALTER TABLE `jvMDv_flow_checks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flow_unique_hash` (`hash`);

ALTER TABLE `jvMDv_flow_operations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `jvMDv_groups`
  ADD PRIMARY KEY (`gid`);

ALTER TABLE `jvMDv_group_admin`
  ADD PRIMARY KEY (`gid`,`uid`),
  ADD KEY `group_admin_uid` (`uid`);

ALTER TABLE `jvMDv_group_user`
  ADD PRIMARY KEY (`gid`,`uid`),
  ADD KEY `gu_uid_index` (`uid`);

ALTER TABLE `jvMDv_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_class_index` (`class`);

ALTER TABLE `jvMDv_login_flow_v2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `poll_token` (`poll_token`),
  ADD UNIQUE KEY `login_token` (`login_token`),
  ADD KEY `timestamp` (`timestamp`);

ALTER TABLE `jvMDv_migrations`
  ADD PRIMARY KEY (`app`,`version`);

ALTER TABLE `jvMDv_mimetypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mimetype_id_index` (`mimetype`);

ALTER TABLE `jvMDv_mounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mounts_user_root_index` (`user_id`,`root_id`),
  ADD KEY `mounts_user_index` (`user_id`),
  ADD KEY `mounts_storage_index` (`storage_id`),
  ADD KEY `mounts_root_index` (`root_id`),
  ADD KEY `mounts_mount_id_index` (`mount_id`);

ALTER TABLE `jvMDv_notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `oc_notifications_app` (`app`),
  ADD KEY `oc_notifications_user` (`user`),
  ADD KEY `oc_notifications_timestamp` (`timestamp`),
  ADD KEY `oc_notifications_object` (`object_type`,`object_id`);

ALTER TABLE `jvMDv_notifications_pushtokens`
  ADD UNIQUE KEY `oc_notifpushtoken` (`uid`,`token`);

ALTER TABLE `jvMDv_oauth2_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth2_access_hash_idx` (`hashed_code`),
  ADD KEY `oauth2_access_client_id_idx` (`client_id`);

ALTER TABLE `jvMDv_oauth2_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth2_client_id_idx` (`client_identifier`);

ALTER TABLE `jvMDv_preferences`
  ADD PRIMARY KEY (`userid`,`appid`,`configkey`);

ALTER TABLE `jvMDv_privacy_admins`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `jvMDv_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_index` (`userid`);

ALTER TABLE `jvMDv_schedulingobjects`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `jvMDv_share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_share_type_index` (`item_type`,`share_type`),
  ADD KEY `file_source_index` (`file_source`),
  ADD KEY `token_index` (`token`),
  ADD KEY `share_with_index` (`share_with`),
  ADD KEY `parent_index` (`parent`),
  ADD KEY `owner_index` (`uid_owner`),
  ADD KEY `initiator_index` (`uid_initiator`);

ALTER TABLE `jvMDv_share_external`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`),
  ADD KEY `sh_external_user` (`user`);

ALTER TABLE `jvMDv_storages`
  ADD PRIMARY KEY (`numeric_id`),
  ADD UNIQUE KEY `storages_id_index` (`id`);

ALTER TABLE `jvMDv_systemtag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_ident` (`name`,`visibility`,`editable`);

ALTER TABLE `jvMDv_systemtag_group`
  ADD PRIMARY KEY (`gid`,`systemtagid`);

ALTER TABLE `jvMDv_systemtag_object_mapping`
  ADD UNIQUE KEY `mapping` (`objecttype`,`objectid`,`systemtagid`);

ALTER TABLE `jvMDv_text_documents`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `jvMDv_text_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rd_session_token_idx` (`token`);

ALTER TABLE `jvMDv_text_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rd_steps_did_idx` (`document_id`),
  ADD KEY `rd_steps_version_idx` (`version`);

ALTER TABLE `jvMDv_trusted_servers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url_hash` (`url_hash`);

ALTER TABLE `jvMDv_twofactor_backupcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `twofactor_backupcodes_uid` (`user_id`);

ALTER TABLE `jvMDv_twofactor_providers`
  ADD PRIMARY KEY (`provider_id`,`uid`),
  ADD KEY `twofactor_providers_uid` (`uid`);

ALTER TABLE `jvMDv_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `user_uid_lower` (`uid_lower`);

ALTER TABLE `jvMDv_vcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid_index` (`uid`),
  ADD KEY `type_index` (`type`),
  ADD KEY `category_index` (`category`);

ALTER TABLE `jvMDv_vcategory_to_object`
  ADD PRIMARY KEY (`categoryid`,`objid`,`type`),
  ADD KEY `vcategory_objectd_index` (`objid`,`type`);

ALTER TABLE `jvMDv_whats_new`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `version` (`version`),
  ADD KEY `version_etag_idx` (`version`,`etag`);


ALTER TABLE `jvMDv_activity`
  MODIFY `activity_id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_activity_mq`
  MODIFY `mail_id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_addressbookchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_addressbooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_authtoken`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_bruteforce_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendarchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendarobjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendarobjects_props`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendarsubscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendar_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendar_reminders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendar_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendar_resources_md`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendar_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_calendar_rooms_md`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_cards_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_collres_collections`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_dav_cal_proxy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_dav_shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_directlink`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_filecache`
  MODIFY `fileid` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_files_trash`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_file_locks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_flow_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_flow_operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_login_flow_v2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_mimetypes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_mounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_oauth2_access_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_oauth2_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_privacy_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_properties`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_schedulingobjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_share`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_share_external`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_storages`
  MODIFY `numeric_id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_systemtag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_text_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_text_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_text_steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_trusted_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_twofactor_backupcodes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_vcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `jvMDv_whats_new`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
