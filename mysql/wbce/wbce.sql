SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `ALwjp_addons` (
  `addon_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `function` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `platform` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `license` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_blocking` (
  `source_ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_dbsessions` (
  `id` varchar(148) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Session Id',
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'Session Data',
  `last_accessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Last timestamp',
  `user` int(11) NOT NULL COMMENT 'User Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='WBCE Session Table';

CREATE TABLE `ALwjp_groups` (
  `group_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `system_permissions` text COLLATE utf8_unicode_ci NOT NULL,
  `module_permissions` text COLLATE utf8_unicode_ci NOT NULL,
  `template_permissions` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_mod_droplets` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `modified_when` int(11) NOT NULL DEFAULT '0',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `admin_edit` int(11) NOT NULL DEFAULT '0',
  `admin_view` int(11) NOT NULL DEFAULT '0',
  `show_wysiwyg` int(11) NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_mod_jsadmin` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_mod_menu_link` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `target_page_id` int(11) NOT NULL DEFAULT '0',
  `redirect_type` int(3) NOT NULL DEFAULT '301',
  `anchor` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `extern` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_mod_miniform` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `emailfrom` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirm_user` int(11) NOT NULL DEFAULT '0',
  `confirm_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'form',
  `successpage` int(11) NOT NULL DEFAULT '0',
  `use_ajax` int(11) NOT NULL DEFAULT '1',
  `use_recaptcha` int(11) NOT NULL DEFAULT '0',
  `recaptcha_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recaptcha_secret` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remote_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remote_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable_tls` int(11) NOT NULL DEFAULT '0',
  `no_store` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_mod_miniform_data` (
  `message_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `session_data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `submitted_when` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_mod_news_img_groups` (
  `group_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_news_img_img` (
  `id` int(11) NOT NULL,
  `picname` varchar(255) NOT NULL DEFAULT '',
  `picdesc` varchar(255) NOT NULL DEFAULT '',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_news_img_posts` (
  `post_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `image` varchar(256) NOT NULL DEFAULT '',
  `content_short` text NOT NULL,
  `content_long` text NOT NULL,
  `content_block2` text NOT NULL,
  `published_when` int(11) NOT NULL DEFAULT '0',
  `published_until` int(11) NOT NULL DEFAULT '0',
  `posted_when` int(11) NOT NULL DEFAULT '0',
  `posted_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_news_img_settings` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `header` text NOT NULL,
  `post_loop` text NOT NULL,
  `view_order` int(11) NOT NULL DEFAULT '0',
  `footer` text NOT NULL,
  `block2` text NOT NULL,
  `posts_per_page` int(11) NOT NULL DEFAULT '0',
  `post_header` text NOT NULL,
  `post_content` text NOT NULL,
  `image_loop` text NOT NULL,
  `post_footer` text NOT NULL,
  `resize_preview` varchar(50) DEFAULT NULL,
  `crop_preview` char(1) NOT NULL DEFAULT 'N',
  `gallery` text NOT NULL,
  `imgthumbsize` varchar(50) DEFAULT NULL,
  `imgmaxwidth` varchar(50) DEFAULT NULL,
  `imgmaxheight` varchar(50) DEFAULT NULL,
  `imgmaxsize` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_outputfilter_dashboard` (
  `id` int(11) NOT NULL,
  `userfunc` tinyint(4) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `allowedit` tinyint(4) NOT NULL DEFAULT '0',
  `allowedittarget` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(249) NOT NULL,
  `func` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `csspath` varchar(255) NOT NULL,
  `funcname` varchar(255) NOT NULL,
  `configurl` varchar(255) NOT NULL,
  `plugin` varchar(255) NOT NULL,
  `helppath` text NOT NULL,
  `modules` text NOT NULL,
  `desc` longtext NOT NULL,
  `pages` text NOT NULL,
  `pages_parent` text NOT NULL,
  `additional_values` longtext NOT NULL,
  `additional_fields` text NOT NULL,
  `additional_fields_languages` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_page_seo_tool` (
  `settings_json` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_sitemap` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `header` text NOT NULL,
  `sitemaploop` text NOT NULL,
  `footer` text NOT NULL,
  `level_header` text NOT NULL,
  `level_footer` text NOT NULL,
  `static` int(11) NOT NULL DEFAULT '0',
  `startatroot` int(11) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `show_hidden` int(11) NOT NULL DEFAULT '0',
  `show_settings` int(1) NOT NULL DEFAULT '1',
  `menus` varchar(30) NOT NULL DEFAULT '0',
  `layout` varchar(128) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_wbstats_day` (
  `id` int(11) NOT NULL,
  `day` varchar(8) NOT NULL DEFAULT '',
  `user` int(10) NOT NULL DEFAULT '0',
  `view` int(10) NOT NULL DEFAULT '0',
  `bots` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_wbstats_ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(32) NOT NULL DEFAULT '',
  `session` varchar(64) NOT NULL DEFAULT '',
  `time` int(20) NOT NULL DEFAULT '0',
  `online` int(20) NOT NULL DEFAULT '0',
  `page` varchar(255) NOT NULL DEFAULT '',
  `loggedin` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_wbstats_keywords` (
  `id` int(11) NOT NULL,
  `day` varchar(8) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `view` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_wbstats_lang` (
  `id` int(11) NOT NULL,
  `day` varchar(8) NOT NULL DEFAULT '',
  `language` varchar(2) NOT NULL DEFAULT '',
  `view` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_wbstats_pages` (
  `id` int(11) NOT NULL,
  `day` varchar(8) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL DEFAULT '',
  `view` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_wbstats_ref` (
  `id` int(11) NOT NULL,
  `day` varchar(8) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `view` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `ALwjp_mod_wrapper` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `height` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_mod_wysiwyg` (
  `section_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_pages` (
  `page_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `root_parent` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `page_trail` text COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visibility` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visibility_backup` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `menu` int(11) NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `searching` int(11) NOT NULL DEFAULT '0',
  `admin_groups` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_users` text COLLATE utf8_unicode_ci NOT NULL,
  `viewing_groups` text COLLATE utf8_unicode_ci NOT NULL,
  `viewing_users` text COLLATE utf8_unicode_ci NOT NULL,
  `modified_when` int(11) NOT NULL DEFAULT '0',
  `modified_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_search` (
  `search_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `extra` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_sections` (
  `section_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `block` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `publ_start` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `publ_end` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `namesection` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_settings` (
  `setting_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ALwjp_users` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DE',
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `signup_checksum` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '0',
  `gdpr_check` int(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remember_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_reset` int(11) NOT NULL DEFAULT '0',
  `timezone` int(11) NOT NULL DEFAULT '0',
  `date_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `home_folder` text COLLATE utf8_unicode_ci NOT NULL,
  `login_when` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `signup_timestamp` int(11) NOT NULL DEFAULT '0',
  `signup_timeout` int(11) NOT NULL DEFAULT '0',
  `signup_confirmcode` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


ALTER TABLE `ALwjp_addons`
  ADD PRIMARY KEY (`addon_id`);

ALTER TABLE `ALwjp_blocking`
  ADD PRIMARY KEY (`source_ip`);

ALTER TABLE `ALwjp_dbsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_accessed` (`last_accessed`),
  ADD KEY `user` (`user`);

ALTER TABLE `ALwjp_groups`
  ADD PRIMARY KEY (`group_id`);

ALTER TABLE `ALwjp_mod_droplets`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ALwjp_mod_jsadmin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ALwjp_mod_menu_link`
  ADD PRIMARY KEY (`section_id`);

ALTER TABLE `ALwjp_mod_miniform`
  ADD PRIMARY KEY (`section_id`);

ALTER TABLE `ALwjp_mod_miniform_data`
  ADD PRIMARY KEY (`message_id`);

ALTER TABLE `ALwjp_mod_news_img_groups`
  ADD PRIMARY KEY (`group_id`);

ALTER TABLE `ALwjp_mod_news_img_img`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ALwjp_mod_news_img_posts`
  ADD PRIMARY KEY (`post_id`);

ALTER TABLE `ALwjp_mod_news_img_settings`
  ADD PRIMARY KEY (`section_id`);

ALTER TABLE `ALwjp_mod_outputfilter_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `type` (`type`);

ALTER TABLE `ALwjp_mod_sitemap`
  ADD PRIMARY KEY (`section_id`);

ALTER TABLE `ALwjp_mod_wbstats_day`
  ADD PRIMARY KEY (`id`),
  ADD KEY `day` (`day`);

ALTER TABLE `ALwjp_mod_wbstats_ips`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ALwjp_mod_wbstats_keywords`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ALwjp_mod_wbstats_lang`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ALwjp_mod_wbstats_pages`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ALwjp_mod_wbstats_ref`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ALwjp_mod_wrapper`
  ADD PRIMARY KEY (`section_id`);

ALTER TABLE `ALwjp_mod_wysiwyg`
  ADD PRIMARY KEY (`section_id`);

ALTER TABLE `ALwjp_pages`
  ADD PRIMARY KEY (`page_id`);

ALTER TABLE `ALwjp_search`
  ADD PRIMARY KEY (`search_id`);

ALTER TABLE `ALwjp_sections`
  ADD PRIMARY KEY (`section_id`);

ALTER TABLE `ALwjp_settings`
  ADD PRIMARY KEY (`setting_id`);

ALTER TABLE `ALwjp_users`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `ALwjp_addons`
  MODIFY `addon_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_droplets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_miniform_data`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_news_img_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_news_img_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_news_img_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_outputfilter_dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_wbstats_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_wbstats_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_wbstats_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_wbstats_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_wbstats_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_mod_wbstats_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_search`
  MODIFY `search_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `ALwjp_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
