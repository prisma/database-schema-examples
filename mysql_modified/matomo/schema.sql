SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `t2ark_access` (
  `idaccess` int(10) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `idsite` int(10) UNSIGNED NOT NULL,
  `access` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_brute_force_log` (
  `id_brute_force_log` bigint(11) NOT NULL,
  `ip_address` varchar(60) DEFAULT NULL,
  `attempted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_goal` (
  `idsite` int(11) NOT NULL,
  `idgoal` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `match_attribute` varchar(20) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `pattern_type` varchar(25) NOT NULL,
  `case_sensitive` tinyint(4) NOT NULL,
  `allow_multiple` tinyint(4) NOT NULL,
  `revenue` float NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `event_value_as_revenue` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_logger_message` (
  `idlogger_message` int(10) UNSIGNED NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_log_action` (
  `idaction` int(10) UNSIGNED NOT NULL,
  `name` text,
  `hash` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `url_prefix` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_log_conversion` (
  `idvisit` bigint(10) UNSIGNED NOT NULL,
  `idsite` int(10) UNSIGNED NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idaction_url` int(10) UNSIGNED DEFAULT NULL,
  `idlink_va` bigint(10) UNSIGNED DEFAULT NULL,
  `idgoal` int(10) NOT NULL,
  `buster` int(10) UNSIGNED NOT NULL,
  `idorder` varchar(100) DEFAULT NULL,
  `items` smallint(5) UNSIGNED DEFAULT NULL,
  `url` text NOT NULL,
  `visitor_days_since_first` smallint(5) UNSIGNED DEFAULT NULL,
  `visitor_days_since_order` smallint(5) UNSIGNED DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_count_visits` int(11) UNSIGNED NOT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_type` tinyint(1) UNSIGNED DEFAULT NULL,
  `config_device_brand` varchar(100) DEFAULT NULL,
  `config_device_model` varchar(100) DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `location_region` char(3) DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  `revenue_discount` float DEFAULT NULL,
  `revenue_shipping` float DEFAULT NULL,
  `revenue_subtotal` float DEFAULT NULL,
  `revenue_tax` float DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_log_conversion_item` (
  `idsite` int(10) UNSIGNED NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idvisit` bigint(10) UNSIGNED NOT NULL,
  `idorder` varchar(100) NOT NULL,
  `idaction_sku` int(10) UNSIGNED NOT NULL,
  `idaction_name` int(10) UNSIGNED NOT NULL,
  `idaction_category` int(10) UNSIGNED NOT NULL,
  `idaction_category2` int(10) UNSIGNED NOT NULL,
  `idaction_category3` int(10) UNSIGNED NOT NULL,
  `idaction_category4` int(10) UNSIGNED NOT NULL,
  `idaction_category5` int(10) UNSIGNED NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_log_link_visit_action` (
  `idlink_va` bigint(10) UNSIGNED NOT NULL,
  `idsite` int(10) UNSIGNED NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `idvisit` bigint(10) UNSIGNED NOT NULL,
  `idaction_url_ref` int(10) UNSIGNED DEFAULT '0',
  `idaction_name_ref` int(10) UNSIGNED DEFAULT NULL,
  `custom_float` float DEFAULT NULL,
  `server_time` datetime NOT NULL,
  `idpageview` char(6) DEFAULT NULL,
  `interaction_position` smallint(5) UNSIGNED DEFAULT NULL,
  `idaction_name` int(10) UNSIGNED DEFAULT NULL,
  `idaction_url` int(10) UNSIGNED DEFAULT NULL,
  `time_spent_ref_action` int(10) UNSIGNED DEFAULT NULL,
  `idaction_event_action` int(10) UNSIGNED DEFAULT NULL,
  `idaction_event_category` int(10) UNSIGNED DEFAULT NULL,
  `idaction_content_interaction` int(10) UNSIGNED DEFAULT NULL,
  `idaction_content_name` int(10) UNSIGNED DEFAULT NULL,
  `idaction_content_piece` int(10) UNSIGNED DEFAULT NULL,
  `idaction_content_target` int(10) UNSIGNED DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_log_profiling` (
  `query` text NOT NULL,
  `count` int(10) UNSIGNED DEFAULT NULL,
  `sum_time_ms` float DEFAULT NULL,
  `idprofiling` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_log_visit` (
  `idvisit` bigint(10) UNSIGNED NOT NULL,
  `idsite` int(10) UNSIGNED NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `visit_last_action_time` datetime NOT NULL,
  `config_id` binary(8) NOT NULL,
  `location_ip` varbinary(16) NOT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `visit_first_action_time` datetime NOT NULL,
  `visit_goal_buyer` tinyint(1) DEFAULT NULL,
  `visit_goal_converted` tinyint(1) DEFAULT NULL,
  `visitor_days_since_first` smallint(5) UNSIGNED DEFAULT NULL,
  `visitor_days_since_order` smallint(5) UNSIGNED DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_count_visits` int(11) UNSIGNED NOT NULL,
  `visit_entry_idaction_name` int(10) UNSIGNED DEFAULT NULL,
  `visit_entry_idaction_url` int(11) UNSIGNED DEFAULT NULL,
  `visit_exit_idaction_name` int(10) UNSIGNED DEFAULT NULL,
  `visit_exit_idaction_url` int(10) UNSIGNED DEFAULT '0',
  `visit_total_actions` int(11) UNSIGNED DEFAULT NULL,
  `visit_total_interactions` smallint(5) UNSIGNED DEFAULT '0',
  `visit_total_searches` smallint(5) UNSIGNED DEFAULT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_type` tinyint(1) UNSIGNED DEFAULT NULL,
  `referer_url` text,
  `location_browser_lang` varchar(20) DEFAULT NULL,
  `config_browser_engine` varchar(10) DEFAULT NULL,
  `config_browser_name` varchar(10) DEFAULT NULL,
  `config_browser_version` varchar(20) DEFAULT NULL,
  `config_device_brand` varchar(100) DEFAULT NULL,
  `config_device_model` varchar(100) DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `config_os` char(3) DEFAULT NULL,
  `config_os_version` varchar(100) DEFAULT NULL,
  `visit_total_events` int(11) UNSIGNED DEFAULT NULL,
  `visitor_localtime` time DEFAULT NULL,
  `visitor_days_since_last` smallint(5) UNSIGNED DEFAULT NULL,
  `config_resolution` varchar(18) DEFAULT NULL,
  `config_cookie` tinyint(1) DEFAULT NULL,
  `config_director` tinyint(1) DEFAULT NULL,
  `config_flash` tinyint(1) DEFAULT NULL,
  `config_gears` tinyint(1) DEFAULT NULL,
  `config_java` tinyint(1) DEFAULT NULL,
  `config_pdf` tinyint(1) DEFAULT NULL,
  `config_quicktime` tinyint(1) DEFAULT NULL,
  `config_realplayer` tinyint(1) DEFAULT NULL,
  `config_silverlight` tinyint(1) DEFAULT NULL,
  `config_windowsmedia` tinyint(1) DEFAULT NULL,
  `visit_total_time` int(11) UNSIGNED NOT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `location_region` char(3) DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_option` (
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_plugin_setting` (
  `plugin_name` varchar(60) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `json_encoded` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_login` varchar(100) NOT NULL DEFAULT '',
  `idplugin_setting` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_privacy_logdata_anonymizations` (
  `idlogdata_anonymization` bigint(20) UNSIGNED NOT NULL,
  `idsites` text,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `anonymize_ip` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `anonymize_location` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `anonymize_userid` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `unset_visit_columns` text NOT NULL,
  `unset_link_visit_action_columns` text NOT NULL,
  `output` mediumtext,
  `scheduled_date` datetime DEFAULT NULL,
  `job_start_date` datetime DEFAULT NULL,
  `job_finish_date` datetime DEFAULT NULL,
  `requester` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_report` (
  `idreport` int(11) NOT NULL,
  `idsite` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `idsegment` int(11) DEFAULT NULL,
  `period` varchar(10) NOT NULL,
  `hour` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `format` varchar(10) NOT NULL,
  `reports` text NOT NULL,
  `parameters` text,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_sent` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `evolution_graph_within_period` tinyint(4) NOT NULL DEFAULT '0',
  `evolution_graph_period_n` int(11) NOT NULL,
  `period_param` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_report_subscriptions` (
  `idreport` int(11) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `ts_subscribed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ts_unsubscribed` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_segment` (
  `idsegment` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `login` varchar(100) NOT NULL,
  `enable_all_users` tinyint(4) NOT NULL DEFAULT '0',
  `enable_only_idsite` int(11) DEFAULT NULL,
  `auto_archive` tinyint(4) NOT NULL DEFAULT '0',
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_edit` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_sequence` (
  `name` varchar(120) NOT NULL,
  `value` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_session` (
  `id` varchar(255) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_site` (
  `idsite` int(10) UNSIGNED NOT NULL,
  `name` varchar(90) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ecommerce` tinyint(4) DEFAULT '0',
  `sitesearch` tinyint(4) DEFAULT '1',
  `sitesearch_keyword_parameters` text NOT NULL,
  `sitesearch_category_parameters` text NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `currency` char(3) NOT NULL,
  `exclude_unknown_urls` tinyint(1) DEFAULT '0',
  `excluded_ips` text NOT NULL,
  `excluded_parameters` text NOT NULL,
  `excluded_user_agents` text NOT NULL,
  `group` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `keep_url_fragment` tinyint(4) NOT NULL DEFAULT '0',
  `creator_login` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_site_setting` (
  `idsite` int(10) UNSIGNED NOT NULL,
  `plugin_name` varchar(60) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `json_encoded` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `idsite_setting` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_site_url` (
  `idsite` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_tracking_failure` (
  `idsite` bigint(20) UNSIGNED NOT NULL,
  `idfailure` smallint(5) UNSIGNED NOT NULL,
  `date_first_occurred` datetime NOT NULL,
  `request_url` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_twofactor_recovery_code` (
  `idrecoverycode` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `recovery_code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_user` (
  `login` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alias` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `twofactor_secret` varchar(40) NOT NULL DEFAULT '',
  `token_auth` char(32) NOT NULL,
  `superuser_access` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `date_registered` timestamp NULL DEFAULT NULL,
  `ts_password_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_user_dashboard` (
  `login` varchar(100) NOT NULL,
  `iddashboard` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `layout` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t2ark_user_language` (
  `login` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  `use_12_hour_clock` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `t2ark_access`
  ADD PRIMARY KEY (`idaccess`),
  ADD KEY `index_loginidsite` (`login`,`idsite`);

ALTER TABLE `t2ark_brute_force_log`
  ADD PRIMARY KEY (`id_brute_force_log`),
  ADD KEY `index_ip_address` (`ip_address`);

ALTER TABLE `t2ark_goal`
  ADD PRIMARY KEY (`idsite`,`idgoal`);

ALTER TABLE `t2ark_logger_message`
  ADD PRIMARY KEY (`idlogger_message`);

ALTER TABLE `t2ark_log_action`
  ADD PRIMARY KEY (`idaction`),
  ADD KEY `index_type_hash` (`type`,`hash`);

ALTER TABLE `t2ark_log_conversion`
  ADD PRIMARY KEY (`idvisit`,`idgoal`,`buster`),
  ADD UNIQUE KEY `unique_idsite_idorder` (`idsite`,`idorder`),
  ADD KEY `index_idsite_datetime` (`idsite`,`server_time`);

ALTER TABLE `t2ark_log_conversion_item`
  ADD PRIMARY KEY (`idvisit`,`idorder`,`idaction_sku`),
  ADD KEY `index_idsite_servertime` (`idsite`,`server_time`);

ALTER TABLE `t2ark_log_link_visit_action`
  ADD PRIMARY KEY (`idlink_va`),
  ADD KEY `index_idvisit` (`idvisit`),
  ADD KEY `index_idsite_servertime` (`idsite`,`server_time`);

ALTER TABLE `t2ark_log_profiling`
  ADD PRIMARY KEY (`idprofiling`),
  ADD UNIQUE KEY `query` (`query`(100));

ALTER TABLE `t2ark_log_visit`
  ADD PRIMARY KEY (`idvisit`),
  ADD KEY `index_idsite_config_datetime` (`idsite`,`config_id`,`visit_last_action_time`),
  ADD KEY `index_idsite_datetime` (`idsite`,`visit_last_action_time`),
  ADD KEY `index_idsite_idvisitor` (`idsite`,`idvisitor`);

ALTER TABLE `t2ark_option`
  ADD PRIMARY KEY (`option_name`),
  ADD KEY `autoload` (`autoload`);

ALTER TABLE `t2ark_plugin_setting`
  ADD PRIMARY KEY (`idplugin_setting`),
  ADD KEY `plugin_name` (`plugin_name`,`user_login`);

ALTER TABLE `t2ark_privacy_logdata_anonymizations`
  ADD PRIMARY KEY (`idlogdata_anonymization`),
  ADD KEY `job_start_date` (`job_start_date`);

ALTER TABLE `t2ark_report`
  ADD PRIMARY KEY (`idreport`);

ALTER TABLE `t2ark_report_subscriptions`
  ADD PRIMARY KEY (`idreport`,`email`),
  ADD UNIQUE KEY `unique_token` (`token`);

ALTER TABLE `t2ark_segment`
  ADD PRIMARY KEY (`idsegment`);

ALTER TABLE `t2ark_sequence`
  ADD PRIMARY KEY (`name`);

ALTER TABLE `t2ark_session`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `t2ark_site`
  ADD PRIMARY KEY (`idsite`);

ALTER TABLE `t2ark_site_setting`
  ADD PRIMARY KEY (`idsite_setting`),
  ADD KEY `idsite` (`idsite`,`plugin_name`);

ALTER TABLE `t2ark_site_url`
  ADD PRIMARY KEY (`idsite`,`url`);

ALTER TABLE `t2ark_tracking_failure`
  ADD PRIMARY KEY (`idsite`,`idfailure`);

ALTER TABLE `t2ark_twofactor_recovery_code`
  ADD PRIMARY KEY (`idrecoverycode`);

ALTER TABLE `t2ark_user`
  ADD PRIMARY KEY (`login`),
  ADD UNIQUE KEY `uniq_keytoken` (`token_auth`);

ALTER TABLE `t2ark_user_dashboard`
  ADD PRIMARY KEY (`login`,`iddashboard`);

ALTER TABLE `t2ark_user_language`
  ADD PRIMARY KEY (`login`);


ALTER TABLE `t2ark_access`
  MODIFY `idaccess` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_brute_force_log`
  MODIFY `id_brute_force_log` bigint(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_logger_message`
  MODIFY `idlogger_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_log_action`
  MODIFY `idaction` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_log_link_visit_action`
  MODIFY `idlink_va` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_log_profiling`
  MODIFY `idprofiling` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_log_visit`
  MODIFY `idvisit` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_plugin_setting`
  MODIFY `idplugin_setting` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_privacy_logdata_anonymizations`
  MODIFY `idlogdata_anonymization` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_report`
  MODIFY `idreport` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_segment`
  MODIFY `idsegment` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_site`
  MODIFY `idsite` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_site_setting`
  MODIFY `idsite_setting` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `t2ark_twofactor_recovery_code`
  MODIFY `idrecoverycode` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
