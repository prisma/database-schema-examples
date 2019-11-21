SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `q4hat_caddie` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `element_id` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_categories` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `id_uppercat` smallint(5) UNSIGNED DEFAULT NULL,
  `comment` text,
  `dir` varchar(255) DEFAULT NULL,
  `rank` smallint(5) UNSIGNED DEFAULT NULL,
  `status` enum('public','private') NOT NULL DEFAULT 'public',
  `site_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `visible` enum('true','false') NOT NULL DEFAULT 'true',
  `representative_picture_id` mediumint(8) UNSIGNED DEFAULT NULL,
  `uppercats` varchar(255) NOT NULL DEFAULT '',
  `commentable` enum('true','false') NOT NULL DEFAULT 'true',
  `global_rank` varchar(255) DEFAULT NULL,
  `image_order` varchar(128) DEFAULT NULL,
  `permalink` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `image_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `author_id` mediumint(8) UNSIGNED DEFAULT NULL,
  `anonymous_id` varchar(45) NOT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `content` longtext,
  `validated` enum('true','false') NOT NULL DEFAULT 'false',
  `validation_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_config` (
  `param` varchar(40) NOT NULL DEFAULT '',
  `value` text,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='configuration table';

CREATE TABLE `q4hat_favorites` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `image_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_groups` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_default` enum('true','false') NOT NULL DEFAULT 'false',
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_group_access` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cat_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT '1970-01-01',
  `time` time NOT NULL DEFAULT '00:00:00',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `IP` varchar(15) NOT NULL DEFAULT '',
  `section` enum('categories','tags','search','list','favorites','most_visited','best_rated','recent_pics','recent_cats') DEFAULT NULL,
  `category_id` smallint(5) DEFAULT NULL,
  `tag_ids` varchar(50) DEFAULT NULL,
  `image_id` mediumint(8) DEFAULT NULL,
  `image_type` enum('picture','high','other') DEFAULT NULL,
  `format_id` int(11) UNSIGNED DEFAULT NULL,
  `auth_key_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_history_summary` (
  `year` smallint(4) NOT NULL DEFAULT '0',
  `month` tinyint(2) DEFAULT NULL,
  `day` tinyint(2) DEFAULT NULL,
  `hour` tinyint(2) DEFAULT NULL,
  `nb_pages` int(11) DEFAULT NULL,
  `history_id_from` int(10) UNSIGNED DEFAULT NULL,
  `history_id_to` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_images` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_available` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `date_creation` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text,
  `author` varchar(255) DEFAULT NULL,
  `hit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filesize` mediumint(9) UNSIGNED DEFAULT NULL,
  `width` smallint(9) UNSIGNED DEFAULT NULL,
  `height` smallint(9) UNSIGNED DEFAULT NULL,
  `coi` char(4) DEFAULT NULL COMMENT 'center of interest',
  `representative_ext` varchar(4) DEFAULT NULL,
  `date_metadata_update` date DEFAULT NULL,
  `rating_score` float(5,2) UNSIGNED DEFAULT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `storage_category_id` smallint(5) UNSIGNED DEFAULT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `md5sum` char(32) DEFAULT NULL,
  `added_by` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rotation` tinyint(3) UNSIGNED DEFAULT NULL,
  `latitude` double(8,6) DEFAULT NULL,
  `longitude` double(9,6) DEFAULT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_image_category` (
  `image_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `category_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `rank` mediumint(8) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_image_format` (
  `format_id` int(11) UNSIGNED NOT NULL,
  `image_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ext` varchar(255) NOT NULL,
  `filesize` mediumint(9) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_image_tag` (
  `image_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `tag_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_languages` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_old_permalinks` (
  `cat_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `permalink` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_deleted` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `last_hit` datetime DEFAULT NULL,
  `hit` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_plugins` (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` enum('inactive','active') NOT NULL DEFAULT 'inactive',
  `version` varchar(64) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_rate` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `element_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `anonymous_id` varchar(45) NOT NULL DEFAULT '',
  `rate` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '1970-01-01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_search` (
  `id` int(10) UNSIGNED NOT NULL,
  `last_seen` date DEFAULT NULL,
  `rules` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_sessions` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `data` mediumtext NOT NULL,
  `expiration` datetime NOT NULL DEFAULT '1970-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_sites` (
  `id` tinyint(4) NOT NULL,
  `galleries_url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_tags` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_themes` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_upgrade` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `applied` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_users` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `mail_address` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_user_access` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `cat_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_user_auth_keys` (
  `auth_key_id` int(11) UNSIGNED NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `created_on` datetime NOT NULL,
  `duration` int(11) UNSIGNED DEFAULT NULL,
  `expired_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_user_cache` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `need_update` enum('true','false') NOT NULL DEFAULT 'true',
  `cache_update_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forbidden_categories` mediumtext,
  `nb_total_images` mediumint(8) UNSIGNED DEFAULT NULL,
  `last_photo_date` datetime DEFAULT NULL,
  `nb_available_tags` int(5) DEFAULT NULL,
  `nb_available_comments` int(5) DEFAULT NULL,
  `image_access_type` enum('NOT IN','IN') NOT NULL DEFAULT 'NOT IN',
  `image_access_list` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_user_cache_categories` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `cat_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `date_last` datetime DEFAULT NULL,
  `max_date_last` datetime DEFAULT NULL,
  `nb_images` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_images` mediumint(8) UNSIGNED DEFAULT '0',
  `nb_categories` mediumint(8) UNSIGNED DEFAULT '0',
  `count_categories` mediumint(8) UNSIGNED DEFAULT '0',
  `user_representative_picture_id` mediumint(8) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_user_feed` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_check` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_user_group` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_user_infos` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `nb_image_page` smallint(3) UNSIGNED NOT NULL DEFAULT '15',
  `status` enum('webmaster','admin','normal','generic','guest') NOT NULL DEFAULT 'guest',
  `language` varchar(50) NOT NULL DEFAULT 'en_UK',
  `expand` enum('true','false') NOT NULL DEFAULT 'false',
  `show_nb_comments` enum('true','false') NOT NULL DEFAULT 'false',
  `show_nb_hits` enum('true','false') NOT NULL DEFAULT 'false',
  `recent_period` tinyint(3) UNSIGNED NOT NULL DEFAULT '7',
  `theme` varchar(255) NOT NULL DEFAULT 'elegant',
  `registration_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `enabled_high` enum('true','false') NOT NULL DEFAULT 'true',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `activation_key` varchar(255) DEFAULT NULL,
  `activation_key_expire` datetime DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `last_visit_from_history` enum('true','false') NOT NULL DEFAULT 'false',
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `q4hat_user_mail_notification` (
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `check_key` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `enabled` enum('true','false') NOT NULL DEFAULT 'false',
  `last_send` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE `q4hat_caddie`
  ADD PRIMARY KEY (`user_id`,`element_id`);

ALTER TABLE `q4hat_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_i3` (`permalink`),
  ADD KEY `categories_i2` (`id_uppercat`),
  ADD KEY `lastmodified` (`lastmodified`);

ALTER TABLE `q4hat_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_i2` (`validation_date`),
  ADD KEY `comments_i1` (`image_id`);

ALTER TABLE `q4hat_config`
  ADD PRIMARY KEY (`param`);

ALTER TABLE `q4hat_favorites`
  ADD PRIMARY KEY (`user_id`,`image_id`);

ALTER TABLE `q4hat_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_ui1` (`name`),
  ADD KEY `lastmodified` (`lastmodified`);

ALTER TABLE `q4hat_group_access`
  ADD PRIMARY KEY (`group_id`,`cat_id`);

ALTER TABLE `q4hat_history`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `q4hat_history_summary`
  ADD UNIQUE KEY `history_summary_ymdh` (`year`,`month`,`day`,`hour`);

ALTER TABLE `q4hat_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_i2` (`date_available`),
  ADD KEY `images_i3` (`rating_score`),
  ADD KEY `images_i4` (`hit`),
  ADD KEY `images_i5` (`date_creation`),
  ADD KEY `images_i1` (`storage_category_id`),
  ADD KEY `images_i6` (`latitude`),
  ADD KEY `lastmodified` (`lastmodified`);

ALTER TABLE `q4hat_image_category`
  ADD PRIMARY KEY (`image_id`,`category_id`),
  ADD KEY `image_category_i1` (`category_id`);

ALTER TABLE `q4hat_image_format`
  ADD PRIMARY KEY (`format_id`);

ALTER TABLE `q4hat_image_tag`
  ADD PRIMARY KEY (`image_id`,`tag_id`),
  ADD KEY `image_tag_i1` (`tag_id`);

ALTER TABLE `q4hat_languages`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `q4hat_old_permalinks`
  ADD PRIMARY KEY (`permalink`);

ALTER TABLE `q4hat_plugins`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `q4hat_rate`
  ADD PRIMARY KEY (`element_id`,`user_id`,`anonymous_id`);

ALTER TABLE `q4hat_search`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `q4hat_sessions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `q4hat_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sites_ui1` (`galleries_url`);

ALTER TABLE `q4hat_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_i1` (`url_name`),
  ADD KEY `lastmodified` (`lastmodified`);

ALTER TABLE `q4hat_themes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `q4hat_upgrade`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `q4hat_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_ui1` (`username`);

ALTER TABLE `q4hat_user_access`
  ADD PRIMARY KEY (`user_id`,`cat_id`);

ALTER TABLE `q4hat_user_auth_keys`
  ADD PRIMARY KEY (`auth_key_id`);

ALTER TABLE `q4hat_user_cache`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `q4hat_user_cache_categories`
  ADD PRIMARY KEY (`user_id`,`cat_id`);

ALTER TABLE `q4hat_user_feed`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `q4hat_user_group`
  ADD PRIMARY KEY (`group_id`,`user_id`);

ALTER TABLE `q4hat_user_infos`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `lastmodified` (`lastmodified`);

ALTER TABLE `q4hat_user_mail_notification`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail_notification_ui1` (`check_key`);


ALTER TABLE `q4hat_categories`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `q4hat_comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `q4hat_groups`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `q4hat_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `q4hat_images`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `q4hat_image_format`
  MODIFY `format_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `q4hat_search`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `q4hat_sites`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

ALTER TABLE `q4hat_tags`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `q4hat_users`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `q4hat_user_auth_keys`
  MODIFY `auth_key_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
