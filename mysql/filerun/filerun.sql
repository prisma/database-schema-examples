SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `df_collections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_collections_items` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `share_id` int(9) DEFAULT NULL,
  `added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` mediumint(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_file_handlers` (
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handler` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_file_logs` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_logs` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT '2002-02-02 00:00:00',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` mediumint(9) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_folders_notifications` (
  `id` mediumint(9) NOT NULL,
  `uid` int(9) NOT NULL,
  `pathid` int(10) NOT NULL,
  `shareid` int(8) DEFAULT NULL,
  `notify_write` int(1) NOT NULL DEFAULT '0',
  `notify_read` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_metadata_dt` (
  `id` mediumint(9) NOT NULL,
  `owner` mediumint(9) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_metadata_fields` (
  `id` mediumint(9) NOT NULL,
  `fsid` mediumint(9) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide_fieldset_name_in_column` smallint(1) NOT NULL DEFAULT '0',
  `show_column_by_default` smallint(1) NOT NULL DEFAULT '0',
  `system` smallint(1) NOT NULL DEFAULT '0',
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_metadata_fieldsets` (
  `id` mediumint(9) NOT NULL,
  `owner` mediumint(9) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generic` smallint(1) NOT NULL DEFAULT '0',
  `system` smallint(1) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_metadata_files` (
  `id` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `type_id` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_metadata_values` (
  `id` int(10) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `uid` mediumint(9) NOT NULL,
  `share_id` mediumint(9) DEFAULT NULL,
  `file_id` mediumint(9) NOT NULL,
  `field_id` mediumint(9) NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_notifications` (
  `id` mediumint(9) NOT NULL,
  `owner` mediumint(9) DEFAULT NULL,
  `object_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `object_id` mediumint(9) NOT NULL DEFAULT '0',
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_search_index_queue` (
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_shares` (
  `id` mediumint(9) NOT NULL,
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
  `perms_share` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_trash` (
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `relative_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_deleted` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_user_groups` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` mediumint(9) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_user_roles` (
  `id` mediumint(9) NOT NULL,
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
  `edit_profile` smallint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_modules_weblinks` (
  `id` int(10) NOT NULL,
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
  `require_login` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_notifications_logs` (
  `id` mediumint(9) NOT NULL,
  `date` datetime NOT NULL,
  `has_errors` smallint(1) NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_oauth_access_tokens` (
  `id` mediumint(8) NOT NULL,
  `access_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sid` mediumint(8) NOT NULL,
  `expiry` int(11) NOT NULL,
  `device_uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_oauth_access_token_scopes` (
  `id` mediumint(8) NOT NULL,
  `access_token_id` mediumint(8) NOT NULL,
  `scope` mediumint(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_oauth_auth_codes` (
  `id` mediumint(8) NOT NULL,
  `auth_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sid` mediumint(8) NOT NULL,
  `redirect_uri` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_oauth_auth_code_scopes` (
  `id` mediumint(9) NOT NULL,
  `auth_code_id` mediumint(9) NOT NULL,
  `scope` mediumint(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_oauth_clients` (
  `id` mediumint(9) NOT NULL,
  `enabled` smallint(1) NOT NULL DEFAULT '0',
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_url` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8mb4_unicode_ci,
  `publisher_website` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_oauth_client_redirect_uris` (
  `id` mediumint(8) NOT NULL,
  `cid` mediumint(8) NOT NULL,
  `uri` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_oauth_refresh_tokens` (
  `id` mediumint(8) NOT NULL,
  `refresh_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` mediumint(9) NOT NULL,
  `expiry` int(11) NOT NULL,
  `device_uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_oauth_scopes` (
  `id` mediumint(8) NOT NULL,
  `scope` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_oauth_sessions` (
  `id` mediumint(8) NOT NULL,
  `owner_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` mediumint(8) NOT NULL,
  `redirect_uri` text COLLATE utf8mb4_unicode_ci,
  `date_created` datetime DEFAULT NULL,
  `client_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_oauth_session_scopes` (
  `id` mediumint(9) NOT NULL,
  `sid` mediumint(9) NOT NULL,
  `scope` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_paths` (
  `id` int(10) NOT NULL,
  `path` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depth` smallint(3) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `uniq` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_relationships` (
  `id` mediumint(9) NOT NULL,
  `related_to_id` mediumint(9) NOT NULL DEFAULT '0',
  `object_id` mediumint(9) NOT NULL DEFAULT '0',
  `relation_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_settings` (
  `id` mediumint(9) NOT NULL,
  `var` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_users` (
  `id` mediumint(9) NOT NULL,
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
  `avatar` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_users_permissions` (
  `id` mediumint(9) NOT NULL,
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
  `edit_profile` smallint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `df_users_sessions` (
  `id` mediumint(9) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `csrf_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `df_collections`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_collections_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_pid` (`cid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `cid` (`cid`,`uid`);

ALTER TABLE `df_file_handlers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_file_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `action` (`action`),
  ADD KEY `date` (`date`);

ALTER TABLE `df_logs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_modules_folders_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`,`pathid`);

ALTER TABLE `df_modules_metadata_dt`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_modules_metadata_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `system` (`system`);

ALTER TABLE `df_modules_metadata_fieldsets`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_modules_metadata_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid` (`pid`),
  ADD KEY `type_id` (`type_id`);

ALTER TABLE `df_modules_metadata_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_added` (`date_added`),
  ADD KEY `uid` (`uid`,`file_id`,`field_id`),
  ADD KEY `file_id` (`file_id`,`field_id`),
  ADD KEY `uid_2` (`uid`,`field_id`),
  ADD KEY `val` (`val`(100)),
  ADD KEY `field_id` (`field_id`);

ALTER TABLE `df_modules_notifications`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_modules_search_index_queue`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_modules_shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`,`path`(248));

ALTER TABLE `df_modules_trash`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_modules_user_groups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_modules_user_roles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_modules_weblinks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_rnd` (`id_rnd`),
  ADD KEY `uid` (`uid`,`pathid`),
  ADD KEY `expiry` (`expiry`);

ALTER TABLE `df_notifications_logs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_token` (`access_token`),
  ADD KEY `sid` (`sid`);

ALTER TABLE `df_oauth_access_token_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access_token_id` (`access_token_id`),
  ADD KEY `scope` (`scope`);

ALTER TABLE `df_oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`);

ALTER TABLE `df_oauth_auth_code_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_code_id` (`auth_code_id`),
  ADD KEY `scope` (`scope`);

ALTER TABLE `df_oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cid` (`cid`);

ALTER TABLE `df_oauth_client_redirect_uris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`);

ALTER TABLE `df_oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `refresh_token` (`refresh_token`),
  ADD KEY `access_token_id` (`access_token_id`);

ALTER TABLE `df_oauth_scopes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `df_oauth_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`);

ALTER TABLE `df_oauth_session_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `scope` (`scope`);

ALTER TABLE `df_paths`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq` (`uniq`),
  ADD KEY `filename` (`filename`(248),`depth`),
  ADD KEY `path` (`path`(250));

ALTER TABLE `df_relationships`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `object_id` (`object_id`,`relation_type`);

ALTER TABLE `df_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `var` (`var`);

ALTER TABLE `df_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `expiration_date` (`expiration_date`);

ALTER TABLE `df_users_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`);

ALTER TABLE `df_users_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);


ALTER TABLE `df_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_collections_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_file_handlers`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_file_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_folders_notifications`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_metadata_dt`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_metadata_fields`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_metadata_fieldsets`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_metadata_files`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_metadata_values`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_notifications`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_search_index_queue`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_shares`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_trash`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_user_groups`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_user_roles`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_modules_weblinks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_notifications_logs`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_oauth_access_tokens`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_oauth_access_token_scopes`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_oauth_auth_codes`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_oauth_auth_code_scopes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_oauth_clients`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_oauth_client_redirect_uris`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_oauth_refresh_tokens`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_oauth_scopes`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_oauth_sessions`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_oauth_session_scopes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_paths`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_relationships`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_settings`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_users`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_users_permissions`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

ALTER TABLE `df_users_sessions`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;


ALTER TABLE `df_oauth_access_tokens`
  ADD CONSTRAINT `df_oauth_access_tokens_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `df_oauth_sessions` (`id`) ON DELETE CASCADE;

ALTER TABLE `df_oauth_access_token_scopes`
  ADD CONSTRAINT `df_oauth_access_token_scopes_ibfk_1` FOREIGN KEY (`access_token_id`) REFERENCES `df_oauth_access_tokens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `df_oauth_access_token_scopes_ibfk_2` FOREIGN KEY (`scope`) REFERENCES `df_oauth_scopes` (`id`) ON DELETE CASCADE;

ALTER TABLE `df_oauth_auth_codes`
  ADD CONSTRAINT `df_oauth_auth_codes_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `df_oauth_sessions` (`id`) ON DELETE CASCADE;

ALTER TABLE `df_oauth_auth_code_scopes`
  ADD CONSTRAINT `df_oauth_auth_code_scopes_ibfk_1` FOREIGN KEY (`auth_code_id`) REFERENCES `df_oauth_auth_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `df_oauth_auth_code_scopes_ibfk_2` FOREIGN KEY (`scope`) REFERENCES `df_oauth_scopes` (`id`) ON DELETE CASCADE;

ALTER TABLE `df_oauth_client_redirect_uris`
  ADD CONSTRAINT `df_oauth_client_redirect_uris_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `df_oauth_clients` (`id`) ON DELETE CASCADE;

ALTER TABLE `df_oauth_refresh_tokens`
  ADD CONSTRAINT `df_oauth_refresh_tokens_ibfk_1` FOREIGN KEY (`access_token_id`) REFERENCES `df_oauth_access_tokens` (`id`) ON DELETE CASCADE;

ALTER TABLE `df_oauth_sessions`
  ADD CONSTRAINT `df_oauth_sessions_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `df_oauth_clients` (`id`) ON DELETE CASCADE;

ALTER TABLE `df_oauth_session_scopes`
  ADD CONSTRAINT `df_oauth_session_scopes_ibfk_1` FOREIGN KEY (`scope`) REFERENCES `df_oauth_scopes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `df_oauth_session_scopes_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `df_oauth_sessions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
