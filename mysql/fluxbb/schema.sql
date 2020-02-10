-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816449196.hosting-data.io    Database: db816449196
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
-- Table structure for table `flux_bans`
--

DROP TABLE IF EXISTS `flux_bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_bans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `expire` int(10) unsigned DEFAULT NULL,
  `ban_creator` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `flux_bans_username_idx` (`username`(25))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_categories`
--

DROP TABLE IF EXISTS `flux_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(80) NOT NULL DEFAULT 'New Category',
  `disp_position` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_censoring`
--

DROP TABLE IF EXISTS `flux_censoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_censoring` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `search_for` varchar(60) NOT NULL DEFAULT '',
  `replace_with` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_config`
--

DROP TABLE IF EXISTS `flux_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_config` (
  `conf_name` varchar(255) NOT NULL DEFAULT '',
  `conf_value` text,
  PRIMARY KEY (`conf_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_forum_perms`
--

DROP TABLE IF EXISTS `flux_forum_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_forum_perms` (
  `group_id` int(10) NOT NULL DEFAULT '0',
  `forum_id` int(10) NOT NULL DEFAULT '0',
  `read_forum` tinyint(1) NOT NULL DEFAULT '1',
  `post_replies` tinyint(1) NOT NULL DEFAULT '1',
  `post_topics` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`group_id`,`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_forum_subscriptions`
--

DROP TABLE IF EXISTS `flux_forum_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_forum_subscriptions` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_forums`
--

DROP TABLE IF EXISTS `flux_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_forums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(80) NOT NULL DEFAULT 'New forum',
  `forum_desc` text,
  `redirect_url` varchar(100) DEFAULT NULL,
  `moderators` text,
  `num_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_post` int(10) unsigned DEFAULT NULL,
  `last_post_id` int(10) unsigned DEFAULT NULL,
  `last_poster` varchar(200) DEFAULT NULL,
  `sort_by` tinyint(1) NOT NULL DEFAULT '0',
  `disp_position` int(10) NOT NULL DEFAULT '0',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_groups`
--

DROP TABLE IF EXISTS `flux_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_groups` (
  `g_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `g_title` varchar(50) NOT NULL DEFAULT '',
  `g_user_title` varchar(50) DEFAULT NULL,
  `g_promote_min_posts` int(10) unsigned NOT NULL DEFAULT '0',
  `g_promote_next_group` int(10) unsigned NOT NULL DEFAULT '0',
  `g_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_edit_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_rename_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_change_passwords` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_ban_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_promote_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_read_board` tinyint(1) NOT NULL DEFAULT '1',
  `g_view_users` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_replies` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_topics` tinyint(1) NOT NULL DEFAULT '1',
  `g_edit_posts` tinyint(1) NOT NULL DEFAULT '1',
  `g_delete_posts` tinyint(1) NOT NULL DEFAULT '1',
  `g_delete_topics` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_links` tinyint(1) NOT NULL DEFAULT '1',
  `g_set_title` tinyint(1) NOT NULL DEFAULT '1',
  `g_search` tinyint(1) NOT NULL DEFAULT '1',
  `g_search_users` tinyint(1) NOT NULL DEFAULT '1',
  `g_send_email` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_flood` smallint(6) NOT NULL DEFAULT '30',
  `g_search_flood` smallint(6) NOT NULL DEFAULT '30',
  `g_email_flood` smallint(6) NOT NULL DEFAULT '60',
  `g_report_flood` smallint(6) NOT NULL DEFAULT '60',
  PRIMARY KEY (`g_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_online`
--

DROP TABLE IF EXISTS `flux_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_online` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `ident` varchar(200) NOT NULL DEFAULT '',
  `logged` int(10) unsigned NOT NULL DEFAULT '0',
  `idle` tinyint(1) NOT NULL DEFAULT '0',
  `last_post` int(10) unsigned DEFAULT NULL,
  `last_search` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `flux_online_user_id_ident_idx` (`user_id`,`ident`(25)),
  KEY `flux_online_ident_idx` (`ident`(25)),
  KEY `flux_online_logged_idx` (`logged`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_posts`
--

DROP TABLE IF EXISTS `flux_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poster` varchar(200) NOT NULL DEFAULT '',
  `poster_id` int(10) unsigned NOT NULL DEFAULT '1',
  `poster_ip` varchar(39) DEFAULT NULL,
  `poster_email` varchar(80) DEFAULT NULL,
  `message` mediumtext,
  `hide_smilies` tinyint(1) NOT NULL DEFAULT '0',
  `posted` int(10) unsigned NOT NULL DEFAULT '0',
  `edited` int(10) unsigned DEFAULT NULL,
  `edited_by` varchar(200) DEFAULT NULL,
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `flux_posts_topic_id_idx` (`topic_id`),
  KEY `flux_posts_multi_idx` (`poster_id`,`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_reports`
--

DROP TABLE IF EXISTS `flux_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reported_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `zapped` int(10) unsigned DEFAULT NULL,
  `zapped_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flux_reports_zapped_idx` (`zapped`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_search_cache`
--

DROP TABLE IF EXISTS `flux_search_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_search_cache` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `ident` varchar(200) NOT NULL DEFAULT '',
  `search_data` mediumtext,
  PRIMARY KEY (`id`),
  KEY `flux_search_cache_ident_idx` (`ident`(8))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_search_matches`
--

DROP TABLE IF EXISTS `flux_search_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_search_matches` (
  `post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `word_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subject_match` tinyint(1) NOT NULL DEFAULT '0',
  KEY `flux_search_matches_word_id_idx` (`word_id`),
  KEY `flux_search_matches_post_id_idx` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_search_words`
--

DROP TABLE IF EXISTS `flux_search_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_search_words` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word`),
  KEY `flux_search_words_id_idx` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_topic_subscriptions`
--

DROP TABLE IF EXISTS `flux_topic_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_topic_subscriptions` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_topics`
--

DROP TABLE IF EXISTS `flux_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poster` varchar(200) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `posted` int(10) unsigned NOT NULL DEFAULT '0',
  `first_post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_poster` varchar(200) DEFAULT NULL,
  `num_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `moved_to` int(10) unsigned DEFAULT NULL,
  `forum_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `flux_topics_forum_id_idx` (`forum_id`),
  KEY `flux_topics_moved_to_idx` (`moved_to`),
  KEY `flux_topics_last_post_idx` (`last_post`),
  KEY `flux_topics_first_post_id_idx` (`first_post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flux_users`
--

DROP TABLE IF EXISTS `flux_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flux_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL DEFAULT '3',
  `username` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `realname` varchar(40) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `jabber` varchar(80) DEFAULT NULL,
  `icq` varchar(12) DEFAULT NULL,
  `msn` varchar(80) DEFAULT NULL,
  `aim` varchar(30) DEFAULT NULL,
  `yahoo` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `signature` text,
  `disp_topics` tinyint(3) unsigned DEFAULT NULL,
  `disp_posts` tinyint(3) unsigned DEFAULT NULL,
  `email_setting` tinyint(1) NOT NULL DEFAULT '1',
  `notify_with_post` tinyint(1) NOT NULL DEFAULT '0',
  `auto_notify` tinyint(1) NOT NULL DEFAULT '0',
  `show_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `show_img` tinyint(1) NOT NULL DEFAULT '1',
  `show_img_sig` tinyint(1) NOT NULL DEFAULT '1',
  `show_avatars` tinyint(1) NOT NULL DEFAULT '1',
  `show_sig` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` float NOT NULL DEFAULT '0',
  `dst` tinyint(1) NOT NULL DEFAULT '0',
  `time_format` tinyint(1) NOT NULL DEFAULT '0',
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(25) NOT NULL DEFAULT 'English',
  `style` varchar(25) NOT NULL DEFAULT 'Air',
  `num_posts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post` int(10) unsigned DEFAULT NULL,
  `last_search` int(10) unsigned DEFAULT NULL,
  `last_email_sent` int(10) unsigned DEFAULT NULL,
  `last_report_sent` int(10) unsigned DEFAULT NULL,
  `registered` int(10) unsigned NOT NULL DEFAULT '0',
  `registration_ip` varchar(39) NOT NULL DEFAULT '0.0.0.0',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_note` varchar(30) DEFAULT NULL,
  `activate_string` varchar(80) DEFAULT NULL,
  `activate_key` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flux_users_username_idx` (`username`(25)),
  KEY `flux_users_registered_idx` (`registered`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 18:20:31
