-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816436308.hosting-data.io    Database: db816436308
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
-- Table structure for table `form_account_settings`
--

DROP TABLE IF EXISTS `form_account_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_account_settings` (
  `account_id` mediumint(8) unsigned NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` mediumtext NOT NULL,
  PRIMARY KEY (`account_id`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_accounts`
--

DROP TABLE IF EXISTS `form_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_accounts` (
  `account_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account_type` enum('admin','client') NOT NULL DEFAULT 'client',
  `account_status` enum('active','disabled','pending') NOT NULL DEFAULT 'disabled',
  `last_logged_in` datetime DEFAULT NULL,
  `ui_language` varchar(50) NOT NULL DEFAULT 'en_us',
  `timezone_offset` varchar(4) DEFAULT NULL,
  `sessions_timeout` varchar(10) NOT NULL DEFAULT '30',
  `date_format` varchar(50) NOT NULL DEFAULT 'M jS, g:i A',
  `login_page` varchar(50) NOT NULL DEFAULT 'client_forms',
  `logout_url` varchar(255) DEFAULT NULL,
  `theme` varchar(50) NOT NULL DEFAULT 'default',
  `swatch` varchar(255) NOT NULL,
  `menu_id` mediumint(8) unsigned NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `temp_reset_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_client_forms`
--

DROP TABLE IF EXISTS `form_client_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_client_forms` (
  `account_id` mediumint(8) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`account_id`,`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_client_views`
--

DROP TABLE IF EXISTS `form_client_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_client_views` (
  `account_id` mediumint(8) unsigned NOT NULL,
  `view_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`account_id`,`view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_email_template_edit_submission_views`
--

DROP TABLE IF EXISTS `form_email_template_edit_submission_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_email_template_edit_submission_views` (
  `email_id` mediumint(8) unsigned NOT NULL,
  `view_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`email_id`,`view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_email_template_recipients`
--

DROP TABLE IF EXISTS `form_email_template_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_email_template_recipients` (
  `recipient_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email_template_id` mediumint(8) unsigned NOT NULL,
  `recipient_user_type` enum('admin','client','form_email_field','custom') NOT NULL,
  `recipient_type` enum('main','cc','bcc') NOT NULL DEFAULT 'main',
  `account_id` mediumint(9) DEFAULT NULL,
  `form_email_id` mediumint(8) unsigned DEFAULT NULL,
  `custom_recipient_name` varchar(200) DEFAULT NULL,
  `custom_recipient_email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`recipient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_email_template_when_sent_views`
--

DROP TABLE IF EXISTS `form_email_template_when_sent_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_email_template_when_sent_views` (
  `email_id` mediumint(9) NOT NULL,
  `view_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_email_templates`
--

DROP TABLE IF EXISTS `form_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_email_templates` (
  `email_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `email_template_name` varchar(100) DEFAULT NULL,
  `email_status` enum('enabled','disabled') NOT NULL DEFAULT 'enabled',
  `view_mapping_type` enum('all','specific') NOT NULL DEFAULT 'all',
  `view_mapping_view_id` mediumint(9) DEFAULT NULL,
  `limit_email_content_to_fields_in_view` mediumint(9) DEFAULT NULL,
  `email_event_trigger` set('on_submission','on_edit','on_delete') DEFAULT NULL,
  `include_on_edit_submission_page` enum('no','all_views','specific_views') NOT NULL DEFAULT 'no',
  `subject` varchar(255) DEFAULT NULL,
  `email_from` enum('admin','client','form_email_field','custom','none') DEFAULT NULL,
  `email_from_account_id` mediumint(8) unsigned DEFAULT NULL,
  `email_from_form_email_id` mediumint(8) unsigned DEFAULT NULL,
  `custom_from_name` varchar(100) DEFAULT NULL,
  `custom_from_email` varchar(100) DEFAULT NULL,
  `email_reply_to` enum('admin','client','form_email_field','custom','none') DEFAULT NULL,
  `email_reply_to_account_id` mediumint(8) unsigned DEFAULT NULL,
  `email_reply_to_form_email_id` mediumint(8) unsigned DEFAULT NULL,
  `custom_reply_to_name` varchar(100) DEFAULT NULL,
  `custom_reply_to_email` varchar(100) DEFAULT NULL,
  `html_template` mediumtext,
  `text_template` mediumtext,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_field_options`
--

DROP TABLE IF EXISTS `form_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field_options` (
  `list_id` mediumint(8) unsigned NOT NULL,
  `list_group_id` mediumint(9) NOT NULL,
  `option_order` smallint(4) NOT NULL,
  `option_value` varchar(255) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `is_new_sort_group` enum('yes','no') NOT NULL,
  PRIMARY KEY (`list_id`,`list_group_id`,`option_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_field_settings`
--

DROP TABLE IF EXISTS `form_field_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field_settings` (
  `field_id` mediumint(8) unsigned NOT NULL,
  `setting_id` mediumint(9) NOT NULL,
  `setting_value` mediumtext,
  PRIMARY KEY (`field_id`,`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_field_type_setting_options`
--

DROP TABLE IF EXISTS `form_field_type_setting_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field_type_setting_options` (
  `setting_id` mediumint(9) NOT NULL,
  `option_text` varchar(255) DEFAULT NULL,
  `option_value` varchar(255) DEFAULT NULL,
  `option_order` smallint(6) NOT NULL,
  `is_new_sort_group` enum('yes','no') NOT NULL,
  PRIMARY KEY (`setting_id`,`option_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_field_type_settings`
--

DROP TABLE IF EXISTS `form_field_type_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field_type_settings` (
  `setting_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_type_id` mediumint(8) unsigned NOT NULL,
  `field_label` varchar(255) NOT NULL,
  `field_setting_identifier` varchar(50) NOT NULL,
  `field_type` enum('textbox','textarea','radios','checkboxes','select','multi-select','option_list_or_form_field') NOT NULL,
  `field_orientation` enum('horizontal','vertical','na') NOT NULL DEFAULT 'na',
  `default_value_type` enum('static','dynamic') NOT NULL DEFAULT 'static',
  `default_value` varchar(255) DEFAULT NULL,
  `list_order` smallint(6) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_field_type_validation_rules`
--

DROP TABLE IF EXISTS `form_field_type_validation_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field_type_validation_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_type_id` mediumint(9) NOT NULL,
  `rsv_rule` varchar(50) NOT NULL,
  `rule_label` varchar(100) NOT NULL,
  `rsv_field_name` varchar(255) NOT NULL,
  `custom_function` varchar(100) NOT NULL,
  `custom_function_required` enum('yes','no','na') NOT NULL DEFAULT 'na',
  `default_error_message` mediumtext NOT NULL,
  `list_order` smallint(6) NOT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_field_types`
--

DROP TABLE IF EXISTS `form_field_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field_types` (
  `field_type_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `is_editable` enum('yes','no') NOT NULL,
  `is_enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `non_editable_info` mediumtext,
  `managed_by_module_id` mediumint(9) DEFAULT NULL,
  `field_type_name` varchar(255) NOT NULL,
  `field_type_identifier` varchar(50) NOT NULL,
  `group_id` smallint(6) NOT NULL,
  `is_file_field` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_date_field` enum('yes','no') NOT NULL DEFAULT 'no',
  `raw_field_type_map` varchar(50) DEFAULT NULL,
  `raw_field_type_map_multi_select_id` mediumint(9) DEFAULT NULL,
  `list_order` smallint(6) NOT NULL,
  `compatible_field_sizes` varchar(255) NOT NULL,
  `view_field_rendering_type` enum('none','php','smarty') NOT NULL DEFAULT 'none',
  `view_field_php_function_source` varchar(255) DEFAULT NULL,
  `view_field_php_function` varchar(255) DEFAULT NULL,
  `view_field_smarty_markup` mediumtext NOT NULL,
  `edit_field_smarty_markup` mediumtext NOT NULL,
  `php_processing` mediumtext NOT NULL,
  `resources_css` mediumtext,
  `resources_js` mediumtext,
  PRIMARY KEY (`field_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_field_validation`
--

DROP TABLE IF EXISTS `form_field_validation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field_validation` (
  `rule_id` mediumint(8) unsigned NOT NULL,
  `field_id` mediumint(9) NOT NULL,
  `error_message` mediumtext NOT NULL,
  UNIQUE KEY `rule_id` (`rule_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_form_email_fields`
--

DROP TABLE IF EXISTS `form_form_email_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_form_email_fields` (
  `form_email_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `email_field_id` mediumint(9) NOT NULL,
  `first_name_field_id` mediumint(9) DEFAULT NULL,
  `last_name_field_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`form_email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_form_fields`
--

DROP TABLE IF EXISTS `form_form_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_form_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_name` varchar(255) NOT NULL DEFAULT '',
  `field_test_value` mediumtext,
  `field_size` varchar(255) DEFAULT 'medium',
  `field_type_id` smallint(6) NOT NULL DEFAULT '1',
  `is_system_field` enum('yes','no') NOT NULL DEFAULT 'no',
  `data_type` enum('string','number','date') NOT NULL DEFAULT 'string',
  `field_title` varchar(100) DEFAULT NULL,
  `col_name` varchar(100) DEFAULT NULL,
  `list_order` smallint(5) unsigned DEFAULT NULL,
  `is_new_sort_group` enum('yes','no') NOT NULL DEFAULT 'yes',
  `include_on_redirect` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_forms`
--

DROP TABLE IF EXISTS `form_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_forms` (
  `form_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `form_type` enum('internal','external','form_builder') NOT NULL DEFAULT 'external',
  `access_type` enum('admin','public','private') NOT NULL DEFAULT 'public',
  `submission_type` enum('code','direct') DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_active` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_initialized` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_complete` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_multi_page_form` enum('yes','no') NOT NULL DEFAULT 'no',
  `form_name` varchar(255) NOT NULL DEFAULT '',
  `form_url` varchar(255) NOT NULL DEFAULT '',
  `redirect_url` varchar(255) DEFAULT NULL,
  `auto_delete_submission_files` enum('yes','no') NOT NULL DEFAULT 'yes',
  `submission_strip_tags` enum('yes','no') NOT NULL DEFAULT 'yes',
  `edit_submission_page_label` text,
  `add_submission_button_label` varchar(255) DEFAULT '',
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_hook_calls`
--

DROP TABLE IF EXISTS `form_hook_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_hook_calls` (
  `hook_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hook_type` enum('code','template') NOT NULL DEFAULT 'code',
  `action_location` varchar(100) NOT NULL,
  `module_folder` varchar(255) NOT NULL,
  `function_name` varchar(255) NOT NULL,
  `hook_function` varchar(255) NOT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT '50',
  PRIMARY KEY (`hook_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_hooks`
--

DROP TABLE IF EXISTS `form_hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_hooks` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hook_type` enum('code','template') NOT NULL,
  `component` enum('core','api','module') NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `action_location` varchar(255) NOT NULL,
  `function_name` varchar(255) NOT NULL,
  `params` mediumtext,
  `overridable` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_list_groups`
--

DROP TABLE IF EXISTS `form_list_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_list_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` varchar(50) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `custom_data` text NOT NULL,
  `list_order` smallint(6) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_menu_items`
--

DROP TABLE IF EXISTS `form_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_menu_items` (
  `menu_item_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` mediumint(8) unsigned NOT NULL,
  `display_text` varchar(100) NOT NULL,
  `page_identifier` varchar(50) NOT NULL,
  `custom_options` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_submenu` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_new_sort_group` enum('yes','no') NOT NULL DEFAULT 'yes',
  `list_order` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`menu_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_menus`
--

DROP TABLE IF EXISTS `form_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_menus` (
  `menu_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `menu` varchar(255) NOT NULL,
  `menu_type` enum('admin','client') NOT NULL DEFAULT 'client',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_data_visualization_cache`
--

DROP TABLE IF EXISTS `form_module_data_visualization_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_data_visualization_cache` (
  `vis_id` mediumint(8) unsigned NOT NULL,
  `last_cached` datetime NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`vis_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_data_visualization_clients`
--

DROP TABLE IF EXISTS `form_module_data_visualization_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_data_visualization_clients` (
  `vis_id` mediumint(8) unsigned NOT NULL,
  `account_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`vis_id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_data_visualizations`
--

DROP TABLE IF EXISTS `form_module_data_visualizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_data_visualizations` (
  `vis_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vis_name` varchar(255) NOT NULL,
  `vis_type` enum('activity','field') NOT NULL,
  `chart_type` enum('line_chart','area_chart','column_chart','bar_chart','pie_chart') NOT NULL,
  `form_id` mediumint(9) NOT NULL,
  `view_id` mediumint(9) DEFAULT NULL,
  `field_id` mediumint(9) DEFAULT NULL,
  `access_type` enum('admin','public','private') NOT NULL DEFAULT 'public',
  `access_view_mapping` enum('all','except','only') NOT NULL DEFAULT 'all',
  `access_views` mediumtext NOT NULL,
  `cache_update_frequency` varchar(8) NOT NULL,
  `date_range` varchar(20) DEFAULT NULL,
  `submission_count_group` enum('year','month','week','day') DEFAULT NULL,
  `colour` varchar(10) DEFAULT NULL,
  `line_width` tinyint(4) DEFAULT NULL,
  `field_chart_ignore_empty_fields` enum('yes','no') DEFAULT NULL,
  `pie_chart_format` enum('2D','3D') DEFAULT NULL,
  `include_legend_quicklinks` enum('yes','no') DEFAULT NULL,
  `include_legend_full_size` enum('yes','no') DEFAULT NULL,
  PRIMARY KEY (`vis_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_export_group_clients`
--

DROP TABLE IF EXISTS `form_module_export_group_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_export_group_clients` (
  `export_group_id` mediumint(8) unsigned NOT NULL,
  `account_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`export_group_id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_export_groups`
--

DROP TABLE IF EXISTS `form_module_export_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_export_groups` (
  `export_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `access_type` enum('admin','public','private') NOT NULL DEFAULT 'public',
  `form_view_mapping` enum('all','except','only') NOT NULL DEFAULT 'all',
  `forms_and_views` mediumtext,
  `visibility` enum('show','hide') NOT NULL DEFAULT 'show',
  `icon` varchar(100) NOT NULL,
  `action` enum('file','popup','new_window') NOT NULL DEFAULT 'popup',
  `action_button_text` varchar(255) NOT NULL DEFAULT '',
  `content_type` varchar(50) NOT NULL,
  `popup_height` varchar(5) DEFAULT NULL,
  `popup_width` varchar(5) DEFAULT NULL,
  `headers` text,
  `smarty_template` mediumtext NOT NULL,
  `list_order` tinyint(4) NOT NULL,
  PRIMARY KEY (`export_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_export_types`
--

DROP TABLE IF EXISTS `form_module_export_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_export_types` (
  `export_type_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `export_type_name` varchar(255) NOT NULL,
  `export_type_visibility` enum('show','hide') NOT NULL DEFAULT 'show',
  `filename` varchar(255) NOT NULL,
  `export_group_id` smallint(6) DEFAULT NULL,
  `smarty_template` text NOT NULL,
  `list_order` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`export_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_form_builder_form_placeholders`
--

DROP TABLE IF EXISTS `form_module_form_builder_form_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_form_builder_form_placeholders` (
  `published_form_id` mediumint(9) NOT NULL,
  `placeholder_id` mediumint(9) NOT NULL,
  `placeholder_value` mediumtext NOT NULL,
  UNIQUE KEY `published_form_id` (`published_form_id`,`placeholder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_form_builder_form_templates`
--

DROP TABLE IF EXISTS `form_module_form_builder_form_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_form_builder_form_templates` (
  `published_form_id` mediumint(9) NOT NULL,
  `template_type` varchar(30) NOT NULL,
  `template_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`published_form_id`,`template_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_form_builder_forms`
--

DROP TABLE IF EXISTS `form_module_form_builder_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_form_builder_forms` (
  `published_form_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `is_online` enum('yes','no') NOT NULL,
  `is_published` enum('yes','no') NOT NULL,
  `form_id` mediumint(9) NOT NULL,
  `view_id` mediumint(9) NOT NULL,
  `set_id` mediumint(9) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `folder_path` mediumtext NOT NULL,
  `folder_url` mediumtext NOT NULL,
  `include_review_page` enum('yes','no') NOT NULL,
  `include_thanks_page_in_nav` enum('yes','no') NOT NULL,
  `thankyou_page_content` mediumtext,
  `form_offline_page_content` mediumtext,
  `review_page_title` varchar(255) DEFAULT NULL,
  `thankyou_page_title` varchar(255) DEFAULT NULL,
  `offline_date` datetime DEFAULT NULL,
  `list_order` smallint(6) NOT NULL,
  PRIMARY KEY (`published_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_form_builder_template_set_placeholder_opts`
--

DROP TABLE IF EXISTS `form_module_form_builder_template_set_placeholder_opts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_form_builder_template_set_placeholder_opts` (
  `placeholder_id` mediumint(9) NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `field_order` smallint(6) NOT NULL,
  PRIMARY KEY (`placeholder_id`,`field_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_form_builder_template_set_placeholders`
--

DROP TABLE IF EXISTS `form_module_form_builder_template_set_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_form_builder_template_set_placeholders` (
  `placeholder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `set_id` mediumint(9) NOT NULL,
  `placeholder_label` varchar(255) NOT NULL,
  `placeholder` varchar(255) NOT NULL,
  `field_type` enum('textbox','textarea','password','radios','checkboxes','select','multi-select') NOT NULL,
  `field_orientation` enum('horizontal','vertical','na') NOT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `field_order` smallint(6) NOT NULL,
  PRIMARY KEY (`placeholder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_form_builder_template_set_resources`
--

DROP TABLE IF EXISTS `form_module_form_builder_template_set_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_form_builder_template_set_resources` (
  `resource_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `resource_type` enum('css','js') NOT NULL,
  `template_set_id` mediumint(8) unsigned NOT NULL,
  `resource_name` varchar(255) NOT NULL,
  `placeholder` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `last_updated` datetime NOT NULL,
  `list_order` smallint(6) NOT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_form_builder_template_sets`
--

DROP TABLE IF EXISTS `form_module_form_builder_template_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_form_builder_template_sets` (
  `set_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `set_name` varchar(255) NOT NULL,
  `version` varchar(20) NOT NULL,
  `description` mediumtext,
  `is_complete` enum('yes','no') NOT NULL,
  `list_order` smallint(6) NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_form_builder_templates`
--

DROP TABLE IF EXISTS `form_module_form_builder_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_form_builder_templates` (
  `template_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `set_id` mediumint(9) NOT NULL,
  `template_type` varchar(30) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `content` mediumtext,
  `list_order` smallint(6) NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_menu_items`
--

DROP TABLE IF EXISTS `form_module_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_menu_items` (
  `menu_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` mediumint(8) unsigned NOT NULL,
  `display_text` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_submenu` enum('yes','no') NOT NULL DEFAULT 'no',
  `list_order` smallint(6) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_pages`
--

DROP TABLE IF EXISTS `form_module_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_pages` (
  `page_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(50) NOT NULL,
  `access_type` enum('admin','public','private') NOT NULL DEFAULT 'admin',
  `content_type` enum('html','php','smarty') NOT NULL DEFAULT 'html',
  `use_wysiwyg` enum('yes','no') NOT NULL DEFAULT 'yes',
  `heading` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_pages_clients`
--

DROP TABLE IF EXISTS `form_module_pages_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_pages_clients` (
  `page_id` mediumint(9) unsigned NOT NULL,
  `client_id` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`page_id`,`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_module_swift_mailer_email_template_fields`
--

DROP TABLE IF EXISTS `form_module_swift_mailer_email_template_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_module_swift_mailer_email_template_fields` (
  `email_template_id` mediumint(9) NOT NULL,
  `return_path` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`email_template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_modules`
--

DROP TABLE IF EXISTS `form_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `is_installed` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_enabled` enum('yes','no') NOT NULL DEFAULT 'no',
  `origin_language` varchar(50) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `module_folder` varchar(100) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `author_email` varchar(200) DEFAULT NULL,
  `author_link` varchar(255) DEFAULT NULL,
  `module_date` datetime NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_multi_page_form_urls`
--

DROP TABLE IF EXISTS `form_multi_page_form_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_multi_page_form_urls` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `form_url` varchar(255) NOT NULL,
  `page_num` tinyint(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`form_id`,`page_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_new_view_submission_defaults`
--

DROP TABLE IF EXISTS `form_new_view_submission_defaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_new_view_submission_defaults` (
  `view_id` mediumint(9) NOT NULL,
  `field_id` mediumint(9) NOT NULL,
  `default_value` text NOT NULL,
  `list_order` smallint(6) NOT NULL,
  PRIMARY KEY (`view_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_option_lists`
--

DROP TABLE IF EXISTS `form_option_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_option_lists` (
  `list_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `option_list_name` varchar(100) NOT NULL,
  `is_grouped` enum('yes','no') NOT NULL,
  `original_form_id` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_public_form_omit_list`
--

DROP TABLE IF EXISTS `form_public_form_omit_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_public_form_omit_list` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `account_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`form_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_public_view_omit_list`
--

DROP TABLE IF EXISTS `form_public_view_omit_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_public_view_omit_list` (
  `view_id` mediumint(8) unsigned NOT NULL,
  `account_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`view_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_sessions`
--

DROP TABLE IF EXISTS `form_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_sessions` (
  `session_id` varchar(100) NOT NULL DEFAULT '',
  `session_data` text NOT NULL,
  `expires` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_settings`
--

DROP TABLE IF EXISTS `form_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_settings` (
  `setting_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(100) NOT NULL,
  `setting_value` text NOT NULL,
  `module` varchar(100) NOT NULL DEFAULT 'core',
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_themes`
--

DROP TABLE IF EXISTS `form_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_themes` (
  `theme_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme_folder` varchar(100) NOT NULL,
  `theme_name` varchar(50) NOT NULL,
  `uses_swatches` enum('yes','no') NOT NULL DEFAULT 'no',
  `swatches` mediumtext,
  `author` varchar(200) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `author_link` varchar(255) DEFAULT NULL,
  `theme_link` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `is_enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `theme_version` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_view_columns`
--

DROP TABLE IF EXISTS `form_view_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_view_columns` (
  `view_id` mediumint(9) NOT NULL,
  `field_id` mediumint(9) NOT NULL,
  `list_order` smallint(6) NOT NULL,
  `is_sortable` enum('yes','no') NOT NULL,
  `auto_size` enum('yes','no') NOT NULL DEFAULT 'yes',
  `custom_width` varchar(10) DEFAULT NULL,
  `truncate` enum('truncate','no_truncate') NOT NULL DEFAULT 'truncate',
  PRIMARY KEY (`view_id`,`field_id`,`list_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_view_fields`
--

DROP TABLE IF EXISTS `form_view_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_view_fields` (
  `view_id` mediumint(8) unsigned NOT NULL,
  `field_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(9) DEFAULT NULL,
  `is_editable` enum('yes','no') NOT NULL DEFAULT 'yes',
  `is_searchable` enum('yes','no') NOT NULL DEFAULT 'yes',
  `list_order` smallint(5) unsigned DEFAULT NULL,
  `is_new_sort_group` enum('yes','no') NOT NULL,
  PRIMARY KEY (`view_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_view_filters`
--

DROP TABLE IF EXISTS `form_view_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_view_filters` (
  `filter_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `view_id` mediumint(8) unsigned NOT NULL,
  `filter_type` enum('standard','client_map') NOT NULL DEFAULT 'standard',
  `field_id` mediumint(8) unsigned NOT NULL,
  `operator` enum('equals','not_equals','like','not_like','before','after') NOT NULL DEFAULT 'equals',
  `filter_values` mediumtext NOT NULL,
  `filter_sql` mediumtext NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_view_tabs`
--

DROP TABLE IF EXISTS `form_view_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_view_tabs` (
  `view_id` mediumint(8) unsigned NOT NULL,
  `tab_number` tinyint(3) unsigned NOT NULL,
  `tab_label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`view_id`,`tab_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `form_views`
--

DROP TABLE IF EXISTS `form_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_views` (
  `view_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `access_type` enum('admin','public','private','hidden') NOT NULL DEFAULT 'public',
  `view_name` varchar(100) NOT NULL,
  `view_order` smallint(6) NOT NULL DEFAULT '1',
  `is_new_sort_group` enum('yes','no') NOT NULL,
  `group_id` smallint(6) DEFAULT NULL,
  `num_submissions_per_page` smallint(6) NOT NULL DEFAULT '10',
  `default_sort_field` varchar(255) NOT NULL DEFAULT 'submission_date',
  `default_sort_field_order` enum('asc','desc') NOT NULL DEFAULT 'desc',
  `may_add_submissions` enum('yes','no') NOT NULL DEFAULT 'yes',
  `may_copy_submissions` enum('yes','no') NOT NULL DEFAULT 'no',
  `may_edit_submissions` enum('yes','no') NOT NULL DEFAULT 'yes',
  `may_delete_submissions` enum('yes','no') NOT NULL DEFAULT 'yes',
  `has_client_map_filter` enum('yes','no') NOT NULL DEFAULT 'no',
  `has_standard_filter` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 18:20:12
