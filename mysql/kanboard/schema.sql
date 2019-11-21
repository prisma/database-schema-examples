SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `actions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `action_has_params` (
  `id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `columns` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_limit` int(11) DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `hide_in_dashboard` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `column_has_move_restrictions` (
  `restriction_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `src_column_id` int(11) NOT NULL,
  `dst_column_id` int(11) NOT NULL,
  `only_assigned` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `column_has_restrictions` (
  `restriction_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `rule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `date_creation` bigint(20) DEFAULT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_modification` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `currencies` (
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `custom_filters` (
  `id` int(11) NOT NULL,
  `filter` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_shared` tinyint(1) DEFAULT '0',
  `append` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `group_has_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `invites` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `last_logins` (
  `id` int(11) NOT NULL,
  `auth_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_creation` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opposite_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `password_reset` (
  `token` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_expiration` int(11) NOT NULL,
  `date_creation` int(11) NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `plugin_schema_versions` (
  `plugin` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `predefined_task_descriptions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` bigint(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  `is_private` tinyint(1) DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `start_date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `end_date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `owner_id` int(11) DEFAULT '0',
  `priority_default` int(11) DEFAULT '0',
  `priority_start` int(11) DEFAULT '0',
  `priority_end` int(11) DEFAULT '3',
  `email` mediumtext COLLATE utf8mb4_unicode_ci,
  `predefined_email_subjects` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_activities` (
  `id` int(11) NOT NULL,
  `date_creation` bigint(20) DEFAULT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_daily_column_stats` (
  `id` int(11) NOT NULL,
  `day` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_daily_stats` (
  `id` int(11) NOT NULL,
  `day` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `avg_lead_time` int(11) NOT NULL DEFAULT '0',
  `avg_cycle_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_has_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `color_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_has_files` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_image` tinyint(1) DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_has_groups` (
  `group_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_has_metadata` (
  `project_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `changed_by` int(11) NOT NULL DEFAULT '0',
  `changed_on` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_has_notification_types` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `notification_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_has_roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_has_users` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `project_role_has_restrictions` (
  `restriction_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `rule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `remember_me` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration` int(11) DEFAULT NULL,
  `date_creation` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `schema_version` (
  `version` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `settings` (
  `option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  `changed_by` int(11) NOT NULL DEFAULT '0',
  `changed_on` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `subtasks` (
  `id` int(11) NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '0',
  `time_estimated` float DEFAULT NULL,
  `time_spent` float DEFAULT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `subtask_time_tracking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtask_id` int(11) NOT NULL,
  `start` bigint(20) DEFAULT NULL,
  `end` bigint(20) DEFAULT NULL,
  `time_spent` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `swimlanes` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT '1',
  `is_active` int(11) DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `color_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `date_creation` bigint(20) DEFAULT NULL,
  `date_completed` bigint(20) DEFAULT NULL,
  `date_due` bigint(20) DEFAULT NULL,
  `color_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `category_id` int(11) DEFAULT '0',
  `creator_id` int(11) DEFAULT '0',
  `date_modification` int(11) DEFAULT '0',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_started` bigint(20) DEFAULT NULL,
  `time_spent` float DEFAULT '0',
  `time_estimated` float DEFAULT '0',
  `swimlane_id` int(11) NOT NULL,
  `date_moved` bigint(20) DEFAULT NULL,
  `recurrence_status` int(11) NOT NULL DEFAULT '0',
  `recurrence_trigger` int(11) NOT NULL DEFAULT '0',
  `recurrence_factor` int(11) NOT NULL DEFAULT '0',
  `recurrence_timeframe` int(11) NOT NULL DEFAULT '0',
  `recurrence_basedate` int(11) NOT NULL DEFAULT '0',
  `recurrence_parent` int(11) DEFAULT NULL,
  `recurrence_child` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `external_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `task_has_external_links` (
  `id` int(11) NOT NULL,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `task_has_files` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_image` tinyint(1) DEFAULT '0',
  `task_id` int(11) NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `task_has_links` (
  `id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `opposite_task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `task_has_metadata` (
  `task_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `changed_by` int(11) NOT NULL DEFAULT '0',
  `changed_on` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `task_has_tags` (
  `task_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `transitions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `src_column_id` int(11) NOT NULL,
  `dst_column_id` int(11) NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  `time_spent` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ldap_user` tinyint(1) DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifications_enabled` tinyint(1) DEFAULT '0',
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disable_login_form` tinyint(1) DEFAULT '0',
  `twofactor_activated` tinyint(1) DEFAULT '0',
  `twofactor_secret` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `notifications_filter` int(11) DEFAULT '4',
  `nb_failed_login` int(11) DEFAULT '0',
  `lock_expiration_date` bigint(20) DEFAULT NULL,
  `gitlab_id` int(11) DEFAULT NULL,
  `role` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'app-user',
  `is_active` tinyint(1) DEFAULT '1',
  `avatar_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filter` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `user_has_metadata` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `changed_by` int(11) NOT NULL DEFAULT '0',
  `changed_on` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `user_has_notifications` (
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `user_has_notification_types` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `user_has_unread_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_creation` bigint(20) NOT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

ALTER TABLE `action_has_params`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_id` (`action_id`);

ALTER TABLE `columns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_title_project` (`title`,`project_id`),
  ADD KEY `columns_project_idx` (`project_id`);

ALTER TABLE `column_has_move_restrictions`
  ADD PRIMARY KEY (`restriction_id`),
  ADD UNIQUE KEY `role_id` (`role_id`,`src_column_id`,`dst_column_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `src_column_id` (`src_column_id`),
  ADD KEY `dst_column_id` (`dst_column_id`);

ALTER TABLE `column_has_restrictions`
  ADD PRIMARY KEY (`restriction_id`),
  ADD UNIQUE KEY `role_id` (`role_id`,`column_id`,`rule`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `column_id` (`column_id`);

ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comments_reference_idx` (`reference`),
  ADD KEY `comments_task_idx` (`task_id`);

ALTER TABLE `currencies`
  ADD UNIQUE KEY `currency` (`currency`);

ALTER TABLE `custom_filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `group_has_users`
  ADD UNIQUE KEY `group_id` (`group_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `invites`
  ADD PRIMARY KEY (`email`,`token`);

ALTER TABLE `last_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `label` (`label`);

ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`token`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `plugin_schema_versions`
  ADD PRIMARY KEY (`plugin`);

ALTER TABLE `predefined_task_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `project_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `task_id` (`task_id`);

ALTER TABLE `project_daily_column_stats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_daily_column_stats_idx` (`day`,`project_id`,`column_id`),
  ADD KEY `column_id` (`column_id`),
  ADD KEY `project_id` (`project_id`);

ALTER TABLE `project_daily_stats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_daily_stats_idx` (`day`,`project_id`),
  ADD KEY `project_id` (`project_id`);

ALTER TABLE `project_has_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_project_category` (`project_id`,`name`),
  ADD KEY `categories_project_idx` (`project_id`);

ALTER TABLE `project_has_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

ALTER TABLE `project_has_groups`
  ADD UNIQUE KEY `group_id` (`group_id`,`project_id`),
  ADD KEY `project_id` (`project_id`);

ALTER TABLE `project_has_metadata`
  ADD UNIQUE KEY `project_id` (`project_id`,`name`);

ALTER TABLE `project_has_notification_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_id` (`project_id`,`notification_type`);

ALTER TABLE `project_has_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `project_id` (`project_id`,`role`);

ALTER TABLE `project_has_users`
  ADD UNIQUE KEY `idx_project_user` (`project_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `project_role_has_restrictions`
  ADD PRIMARY KEY (`restriction_id`),
  ADD UNIQUE KEY `role_id` (`role_id`,`rule`),
  ADD KEY `project_id` (`project_id`);

ALTER TABLE `remember_me`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `settings`
  ADD PRIMARY KEY (`option`);

ALTER TABLE `subtasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subtasks_task_idx` (`task_id`);

ALTER TABLE `subtask_time_tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subtask_id` (`subtask_id`);

ALTER TABLE `swimlanes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`project_id`),
  ADD KEY `swimlanes_project_idx` (`project_id`);

ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_id` (`project_id`,`name`);

ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_task_active` (`is_active`),
  ADD KEY `column_id` (`column_id`),
  ADD KEY `tasks_reference_idx` (`reference`),
  ADD KEY `tasks_project_idx` (`project_id`),
  ADD KEY `tasks_swimlane_ibfk_1` (`swimlane_id`);

ALTER TABLE `task_has_external_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`);

ALTER TABLE `task_has_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_task_idx` (`task_id`);

ALTER TABLE `task_has_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_has_links_unique` (`link_id`,`task_id`,`opposite_task_id`),
  ADD KEY `opposite_task_id` (`opposite_task_id`),
  ADD KEY `task_has_links_task_index` (`task_id`);

ALTER TABLE `task_has_metadata`
  ADD UNIQUE KEY `task_id` (`task_id`,`name`);

ALTER TABLE `task_has_tags`
  ADD UNIQUE KEY `tag_id` (`tag_id`,`task_id`),
  ADD KEY `task_id` (`task_id`);

ALTER TABLE `transitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `src_column_id` (`src_column_id`),
  ADD KEY `dst_column_id` (`dst_column_id`),
  ADD KEY `transitions_task_index` (`task_id`),
  ADD KEY `transitions_project_index` (`project_id`),
  ADD KEY `transitions_user_index` (`user_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_idx` (`username`);

ALTER TABLE `user_has_metadata`
  ADD UNIQUE KEY `user_id` (`user_id`,`name`);

ALTER TABLE `user_has_notifications`
  ADD UNIQUE KEY `user_has_notifications_unique_idx` (`user_id`,`project_id`),
  ADD KEY `user_has_notifications_ibfk_2` (`project_id`);

ALTER TABLE `user_has_notification_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_has_notification_types_user_idx` (`user_id`,`notification_type`);

ALTER TABLE `user_has_unread_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);


ALTER TABLE `actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `action_has_params`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `column_has_move_restrictions`
  MODIFY `restriction_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `column_has_restrictions`
  MODIFY `restriction_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `custom_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `last_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `predefined_task_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `project_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `project_daily_column_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `project_daily_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `project_has_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `project_has_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `project_has_notification_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `project_has_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `project_role_has_restrictions`
  MODIFY `restriction_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `remember_me`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `subtasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `subtask_time_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `swimlanes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `task_has_external_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `task_has_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `task_has_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `transitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `user_has_notification_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `user_has_unread_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `actions`
  ADD CONSTRAINT `actions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `action_has_params`
  ADD CONSTRAINT `action_has_params_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE;

ALTER TABLE `columns`
  ADD CONSTRAINT `columns_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `column_has_move_restrictions`
  ADD CONSTRAINT `column_has_move_restrictions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `column_has_move_restrictions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `project_has_roles` (`role_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `column_has_move_restrictions_ibfk_3` FOREIGN KEY (`src_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `column_has_move_restrictions_ibfk_4` FOREIGN KEY (`dst_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE;

ALTER TABLE `column_has_restrictions`
  ADD CONSTRAINT `column_has_restrictions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `column_has_restrictions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `project_has_roles` (`role_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `column_has_restrictions_ibfk_3` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE;

ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

ALTER TABLE `custom_filters`
  ADD CONSTRAINT `custom_filters_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `custom_filters_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

ALTER TABLE `group_has_users`
  ADD CONSTRAINT `group_has_users_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_has_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

ALTER TABLE `last_logins`
  ADD CONSTRAINT `last_logins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

ALTER TABLE `password_reset`
  ADD CONSTRAINT `password_reset_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

ALTER TABLE `predefined_task_descriptions`
  ADD CONSTRAINT `predefined_task_descriptions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_activities`
  ADD CONSTRAINT `project_activities_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_activities_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_activities_ibfk_3` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_daily_column_stats`
  ADD CONSTRAINT `project_daily_column_stats_ibfk_1` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_daily_column_stats_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_daily_stats`
  ADD CONSTRAINT `project_daily_stats_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_has_categories`
  ADD CONSTRAINT `project_has_categories_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_has_files`
  ADD CONSTRAINT `project_has_files_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_has_groups`
  ADD CONSTRAINT `project_has_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_has_groups_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_has_metadata`
  ADD CONSTRAINT `project_has_metadata_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_has_notification_types`
  ADD CONSTRAINT `project_has_notification_types_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_has_roles`
  ADD CONSTRAINT `project_has_roles_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_has_users`
  ADD CONSTRAINT `project_has_users_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_has_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

ALTER TABLE `project_role_has_restrictions`
  ADD CONSTRAINT `project_role_has_restrictions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_role_has_restrictions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `project_has_roles` (`role_id`) ON DELETE CASCADE;

ALTER TABLE `remember_me`
  ADD CONSTRAINT `remember_me_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

ALTER TABLE `subtasks`
  ADD CONSTRAINT `subtasks_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

ALTER TABLE `subtask_time_tracking`
  ADD CONSTRAINT `subtask_time_tracking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subtask_time_tracking_ibfk_2` FOREIGN KEY (`subtask_id`) REFERENCES `subtasks` (`id`) ON DELETE CASCADE;

ALTER TABLE `swimlanes`
  ADD CONSTRAINT `swimlanes_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_swimlane_ibfk_1` FOREIGN KEY (`swimlane_id`) REFERENCES `swimlanes` (`id`) ON DELETE CASCADE;

ALTER TABLE `task_has_external_links`
  ADD CONSTRAINT `task_has_external_links_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

ALTER TABLE `task_has_files`
  ADD CONSTRAINT `task_has_files_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

ALTER TABLE `task_has_links`
  ADD CONSTRAINT `task_has_links_ibfk_1` FOREIGN KEY (`link_id`) REFERENCES `links` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_has_links_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_has_links_ibfk_3` FOREIGN KEY (`opposite_task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

ALTER TABLE `task_has_metadata`
  ADD CONSTRAINT `task_has_metadata_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

ALTER TABLE `task_has_tags`
  ADD CONSTRAINT `task_has_tags_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_has_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

ALTER TABLE `transitions`
  ADD CONSTRAINT `transitions_ibfk_1` FOREIGN KEY (`src_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transitions_ibfk_2` FOREIGN KEY (`dst_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transitions_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transitions_ibfk_4` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transitions_ibfk_5` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

ALTER TABLE `user_has_metadata`
  ADD CONSTRAINT `user_has_metadata_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

ALTER TABLE `user_has_notifications`
  ADD CONSTRAINT `user_has_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_notifications_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

ALTER TABLE `user_has_notification_types`
  ADD CONSTRAINT `user_has_notification_types_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

ALTER TABLE `user_has_unread_notifications`
  ADD CONSTRAINT `user_has_unread_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
