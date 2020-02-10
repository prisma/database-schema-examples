-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816444231.hosting-data.io    Database: db816444231
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
-- Table structure for table `b2ev_antispam__iprange`
--

DROP TABLE IF EXISTS `b2ev_antispam__iprange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_antispam__iprange` (
  `aipr_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aipr_IPv4start` int(10) unsigned NOT NULL,
  `aipr_IPv4end` int(10) unsigned NOT NULL,
  `aipr_user_count` int(10) unsigned DEFAULT '0',
  `aipr_contact_email_count` int(10) unsigned DEFAULT '0',
  `aipr_status` enum('trusted','suspect','blocked') CHARACTER SET ascii DEFAULT NULL,
  `aipr_block_count` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`aipr_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_antispam__keyword`
--

DROP TABLE IF EXISTS `b2ev_antispam__keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_antispam__keyword` (
  `askw_ID` bigint(11) NOT NULL AUTO_INCREMENT,
  `askw_string` varchar(80) NOT NULL,
  `askw_source` enum('local','reported','central') CHARACTER SET ascii NOT NULL DEFAULT 'reported',
  PRIMARY KEY (`askw_ID`),
  UNIQUE KEY `askw_string` (`askw_string`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_automation__automation`
--

DROP TABLE IF EXISTS `b2ev_automation__automation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_automation__automation` (
  `autm_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `autm_name` varchar(255) NOT NULL,
  `autm_status` enum('paused','active') DEFAULT 'paused',
  `autm_owner_user_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`autm_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_automation__newsletter`
--

DROP TABLE IF EXISTS `b2ev_automation__newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_automation__newsletter` (
  `aunl_autm_ID` int(10) unsigned NOT NULL,
  `aunl_enlt_ID` int(10) unsigned NOT NULL,
  `aunl_autostart` tinyint(1) unsigned DEFAULT '1',
  `aunl_autoexit` tinyint(1) unsigned DEFAULT '1',
  `aunl_order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`aunl_autm_ID`,`aunl_enlt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_automation__step`
--

DROP TABLE IF EXISTS `b2ev_automation__step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_automation__step` (
  `step_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `step_autm_ID` int(10) unsigned NOT NULL,
  `step_order` int(11) NOT NULL DEFAULT '1',
  `step_label` varchar(500) DEFAULT NULL,
  `step_type` enum('if_condition','send_campaign','notify_owner','add_usertag','remove_usertag','subscribe','unsubscribe','start_automation','user_status') CHARACTER SET ascii NOT NULL DEFAULT 'if_condition',
  `step_info` text,
  `step_yes_next_step_ID` int(11) DEFAULT NULL,
  `step_yes_next_step_delay` int(10) unsigned DEFAULT NULL,
  `step_no_next_step_ID` int(11) DEFAULT NULL,
  `step_no_next_step_delay` int(10) unsigned DEFAULT NULL,
  `step_error_next_step_ID` int(11) DEFAULT NULL,
  `step_error_next_step_delay` int(10) unsigned DEFAULT NULL,
  `step_diagram` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`step_ID`),
  UNIQUE KEY `step_autm_ID_order` (`step_autm_ID`,`step_order`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_automation__user_state`
--

DROP TABLE IF EXISTS `b2ev_automation__user_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_automation__user_state` (
  `aust_autm_ID` int(10) unsigned NOT NULL,
  `aust_user_ID` int(10) unsigned NOT NULL,
  `aust_next_step_ID` int(10) unsigned DEFAULT NULL,
  `aust_next_exec_ts` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`aust_autm_ID`,`aust_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_basedomains`
--

DROP TABLE IF EXISTS `b2ev_basedomains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_basedomains` (
  `dom_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dom_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `dom_status` enum('unknown','trusted','suspect','blocked') CHARACTER SET ascii NOT NULL DEFAULT 'unknown',
  `dom_type` enum('unknown','normal','searcheng','aggregator','email') CHARACTER SET ascii NOT NULL DEFAULT 'unknown',
  `dom_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dom_ID`),
  UNIQUE KEY `dom_name` (`dom_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_bloggroups`
--

DROP TABLE IF EXISTS `b2ev_bloggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_bloggroups` (
  `bloggroup_blog_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `bloggroup_group_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `bloggroup_ismember` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_can_be_assignee` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_item_propose` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_poststatuses` set('review','draft','private','protected','deprecated','community','published','redirected') CHARACTER SET ascii NOT NULL DEFAULT '',
  `bloggroup_perm_item_type` enum('standard','restricted','admin') CHARACTER SET ascii NOT NULL DEFAULT 'standard',
  `bloggroup_perm_edit` enum('no','own','lt','le','all') CHARACTER SET ascii NOT NULL DEFAULT 'no',
  `bloggroup_perm_delpost` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_edit_ts` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_delcmts` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_recycle_owncmts` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_vote_spam_cmts` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_cmtstatuses` set('review','draft','private','protected','deprecated','community','published') CHARACTER SET ascii NOT NULL DEFAULT '',
  `bloggroup_perm_edit_cmt` enum('no','own','anon','lt','le','all') CHARACTER SET ascii NOT NULL DEFAULT 'no',
  `bloggroup_perm_meta_comment` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_cats` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_properties` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_admin` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_media_upload` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_media_browse` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_media_change` tinyint(4) NOT NULL DEFAULT '0',
  `bloggroup_perm_analytics` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bloggroup_blog_ID`,`bloggroup_group_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_blogs`
--

DROP TABLE IF EXISTS `b2ev_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_blogs` (
  `blog_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_shortname` varchar(255) DEFAULT '',
  `blog_name` varchar(255) NOT NULL DEFAULT '',
  `blog_owner_user_ID` int(11) unsigned NOT NULL DEFAULT '1',
  `blog_advanced_perms` tinyint(1) NOT NULL DEFAULT '0',
  `blog_tagline` varchar(250) DEFAULT '',
  `blog_shortdesc` varchar(250) DEFAULT '',
  `blog_longdesc` text,
  `blog_locale` varchar(20) NOT NULL DEFAULT 'en-EU',
  `blog_access_type` varchar(10) CHARACTER SET ascii NOT NULL DEFAULT 'extrapath',
  `blog_siteurl` varchar(120) NOT NULL DEFAULT '',
  `blog_urlname` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT 'urlname',
  `blog_notes` text,
  `blog_keywords` tinytext,
  `blog_allowtrackbacks` tinyint(1) NOT NULL DEFAULT '0',
  `blog_allowblogcss` tinyint(1) NOT NULL DEFAULT '1',
  `blog_allowusercss` tinyint(1) NOT NULL DEFAULT '1',
  `blog_in_bloglist` enum('public','logged','member','never') CHARACTER SET ascii NOT NULL DEFAULT 'public',
  `blog_links_blog_ID` int(11) DEFAULT NULL,
  `blog_media_location` enum('default','subdir','custom','none') CHARACTER SET ascii NOT NULL DEFAULT 'default',
  `blog_media_subdir` varchar(255) DEFAULT NULL,
  `blog_media_fullpath` varchar(255) DEFAULT NULL,
  `blog_media_url` varchar(255) DEFAULT NULL,
  `blog_type` varchar(16) CHARACTER SET ascii NOT NULL DEFAULT 'std',
  `blog_order` int(11) DEFAULT NULL,
  `blog_normal_skin_ID` int(10) unsigned DEFAULT NULL,
  `blog_mobile_skin_ID` int(10) unsigned DEFAULT NULL,
  `blog_tablet_skin_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`blog_ID`),
  UNIQUE KEY `blog_urlname` (`blog_urlname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_blogusers`
--

DROP TABLE IF EXISTS `b2ev_blogusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_blogusers` (
  `bloguser_blog_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `bloguser_user_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `bloguser_ismember` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_can_be_assignee` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_item_propose` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_poststatuses` set('review','draft','private','protected','deprecated','community','published','redirected') CHARACTER SET ascii NOT NULL DEFAULT '',
  `bloguser_perm_item_type` enum('standard','restricted','admin') CHARACTER SET ascii NOT NULL DEFAULT 'standard',
  `bloguser_perm_edit` enum('no','own','lt','le','all') CHARACTER SET ascii NOT NULL DEFAULT 'no',
  `bloguser_perm_delpost` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_edit_ts` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_delcmts` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_recycle_owncmts` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_vote_spam_cmts` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_cmtstatuses` set('review','draft','private','protected','deprecated','community','published') CHARACTER SET ascii NOT NULL DEFAULT '',
  `bloguser_perm_edit_cmt` enum('no','own','anon','lt','le','all') CHARACTER SET ascii NOT NULL DEFAULT 'no',
  `bloguser_perm_meta_comment` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_cats` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_properties` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_admin` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_media_upload` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_media_browse` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_media_change` tinyint(4) NOT NULL DEFAULT '0',
  `bloguser_perm_analytics` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bloguser_blog_ID`,`bloguser_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_categories`
--

DROP TABLE IF EXISTS `b2ev_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_categories` (
  `cat_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_parent_ID` int(10) unsigned DEFAULT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_urlname` varchar(255) CHARACTER SET ascii NOT NULL,
  `cat_blog_ID` int(10) unsigned NOT NULL DEFAULT '2',
  `cat_image_file_ID` int(10) unsigned DEFAULT NULL,
  `cat_social_media_image_file_ID` int(10) unsigned DEFAULT NULL,
  `cat_description` varchar(255) DEFAULT NULL,
  `cat_order` int(11) DEFAULT NULL,
  `cat_subcat_ordering` enum('parent','alpha','manual') CHARACTER SET ascii DEFAULT NULL,
  `cat_meta` tinyint(1) NOT NULL DEFAULT '0',
  `cat_lock` tinyint(1) NOT NULL DEFAULT '0',
  `cat_last_touched_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `cat_ityp_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cat_ID`),
  UNIQUE KEY `cat_urlname` (`cat_urlname`),
  KEY `cat_blog_ID` (`cat_blog_ID`),
  KEY `cat_parent_ID` (`cat_parent_ID`),
  KEY `cat_order` (`cat_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_coll_favs`
--

DROP TABLE IF EXISTS `b2ev_coll_favs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_coll_favs` (
  `cufv_user_ID` int(10) unsigned NOT NULL,
  `cufv_blog_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cufv_user_ID`,`cufv_blog_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_coll_settings`
--

DROP TABLE IF EXISTS `b2ev_coll_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_coll_settings` (
  `cset_coll_ID` int(11) unsigned NOT NULL,
  `cset_name` varchar(50) CHARACTER SET ascii NOT NULL,
  `cset_value` varchar(10000) DEFAULT NULL COMMENT 'The AdSense plugin wants to store very long snippets of HTML',
  PRIMARY KEY (`cset_coll_ID`,`cset_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_comments`
--

DROP TABLE IF EXISTS `b2ev_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_comments` (
  `comment_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_item_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `comment_type` enum('comment','linkback','trackback','pingback','meta','webmention') CHARACTER SET ascii NOT NULL DEFAULT 'comment',
  `comment_status` enum('published','community','deprecated','protected','private','review','draft','trash') CHARACTER SET ascii NOT NULL DEFAULT 'draft',
  `comment_in_reply_to_cmt_ID` int(10) unsigned DEFAULT NULL,
  `comment_author_user_ID` int(10) unsigned DEFAULT NULL,
  `comment_author` varchar(100) DEFAULT NULL,
  `comment_author_email` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `comment_author_url` varchar(255) DEFAULT NULL,
  `comment_author_IP` varchar(45) CHARACTER SET ascii NOT NULL DEFAULT '',
  `comment_IP_ctry_ID` int(10) unsigned DEFAULT NULL,
  `comment_date` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `comment_last_touched_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `comment_content` text NOT NULL,
  `comment_renderers` varchar(255) CHARACTER SET ascii NOT NULL,
  `comment_rating` tinyint(1) DEFAULT NULL,
  `comment_featured` tinyint(1) NOT NULL DEFAULT '0',
  `comment_nofollow` tinyint(1) NOT NULL DEFAULT '1',
  `comment_helpful_addvotes` int(11) NOT NULL DEFAULT '0',
  `comment_helpful_countvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_spam_addvotes` int(11) NOT NULL DEFAULT '0',
  `comment_spam_countvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_spam_karma` tinyint(4) DEFAULT NULL,
  `comment_allow_msgform` tinyint(4) NOT NULL DEFAULT '0',
  `comment_anon_notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment_anon_notify_last` varchar(16) CHARACTER SET ascii DEFAULT NULL,
  `comment_secret` char(32) CHARACTER SET ascii DEFAULT NULL,
  `comment_notif_status` enum('noreq','todo','started','finished') CHARACTER SET ascii NOT NULL DEFAULT 'noreq' COMMENT 'Have notifications been sent for this comment? How far are we in the process?',
  `comment_notif_ctsk_ID` int(10) unsigned DEFAULT NULL COMMENT 'When notifications for this comment are sent through a scheduled job, what is the job ID?',
  `comment_notif_flags` set('moderators_notified','members_notified','community_notified') NOT NULL DEFAULT '',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_item_ID` (`comment_item_ID`),
  KEY `comment_date` (`comment_date`),
  KEY `comment_type` (`comment_type`),
  KEY `comment_status` (`comment_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_comments__prerendering`
--

DROP TABLE IF EXISTS `b2ev_comments__prerendering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_comments__prerendering` (
  `cmpr_cmt_ID` int(11) unsigned NOT NULL,
  `cmpr_format` enum('htmlbody','entityencoded','xml','text') CHARACTER SET ascii NOT NULL,
  `cmpr_renderers` varchar(255) CHARACTER SET ascii NOT NULL,
  `cmpr_content_prerendered` mediumtext,
  `cmpr_datemodified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  PRIMARY KEY (`cmpr_cmt_ID`,`cmpr_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_comments__votes`
--

DROP TABLE IF EXISTS `b2ev_comments__votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_comments__votes` (
  `cmvt_cmt_ID` int(10) unsigned NOT NULL,
  `cmvt_user_ID` int(10) unsigned NOT NULL,
  `cmvt_helpful` tinyint(1) DEFAULT NULL,
  `cmvt_spam` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cmvt_cmt_ID`,`cmvt_user_ID`),
  KEY `cmvt_cmt_ID` (`cmvt_cmt_ID`),
  KEY `cmvt_user_ID` (`cmvt_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_cron__log`
--

DROP TABLE IF EXISTS `b2ev_cron__log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_cron__log` (
  `clog_ctsk_ID` int(10) unsigned NOT NULL,
  `clog_realstart_datetime` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `clog_realstop_datetime` timestamp NULL DEFAULT NULL,
  `clog_status` enum('started','finished','error','imap_error','timeout','warning') CHARACTER SET ascii NOT NULL DEFAULT 'started',
  `clog_messages` mediumtext,
  `clog_actions_num` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`clog_ctsk_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_cron__task`
--

DROP TABLE IF EXISTS `b2ev_cron__task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_cron__task` (
  `ctsk_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctsk_start_datetime` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `ctsk_repeat_after` int(10) unsigned DEFAULT NULL,
  `ctsk_repeat_variation` int(10) unsigned DEFAULT '0',
  `ctsk_key` varchar(50) CHARACTER SET ascii NOT NULL,
  `ctsk_name` varchar(255) DEFAULT NULL COMMENT 'Specific name of this task. This value is set only if this job name was modified by an admin user',
  `ctsk_params` text,
  PRIMARY KEY (`ctsk_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_email__address`
--

DROP TABLE IF EXISTS `b2ev_email__address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_email__address` (
  `emadr_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emadr_address` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `emadr_status` enum('unknown','working','unattended','redemption','warning','suspicious1','suspicious2','suspicious3','prmerror','spammer') CHARACTER SET ascii NOT NULL DEFAULT 'unknown',
  `emadr_sent_count` int(10) unsigned NOT NULL DEFAULT '0',
  `emadr_sent_last_returnerror` int(10) unsigned NOT NULL DEFAULT '0',
  `emadr_prmerror_count` int(10) unsigned NOT NULL DEFAULT '0',
  `emadr_tmperror_count` int(10) unsigned NOT NULL DEFAULT '0',
  `emadr_spamerror_count` int(10) unsigned NOT NULL DEFAULT '0',
  `emadr_othererror_count` int(10) unsigned NOT NULL DEFAULT '0',
  `emadr_last_sent_ts` timestamp NULL DEFAULT NULL,
  `emadr_last_error_ts` timestamp NULL DEFAULT NULL,
  `emadr_last_open_ts` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`emadr_ID`),
  UNIQUE KEY `emadr_address` (`emadr_address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_email__campaign`
--

DROP TABLE IF EXISTS `b2ev_email__campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_email__campaign` (
  `ecmp_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ecmp_date_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `ecmp_enlt_ID` int(10) unsigned NOT NULL,
  `ecmp_name` varchar(255) NOT NULL,
  `ecmp_email_title` varchar(255) DEFAULT NULL,
  `ecmp_email_defaultdest` varchar(255) DEFAULT NULL,
  `ecmp_email_html` text,
  `ecmp_email_text` text,
  `ecmp_email_plaintext` text,
  `ecmp_sync_plaintext` tinyint(1) NOT NULL DEFAULT '1',
  `ecmp_sent_ts` timestamp NULL DEFAULT NULL,
  `ecmp_auto_sent_ts` timestamp NULL DEFAULT NULL,
  `ecmp_renderers` varchar(255) CHARACTER SET ascii NOT NULL,
  `ecmp_use_wysiwyg` tinyint(1) NOT NULL DEFAULT '0',
  `ecmp_send_ctsk_ID` int(10) unsigned DEFAULT NULL,
  `ecmp_welcome` tinyint(1) NOT NULL DEFAULT '0',
  `ecmp_activate` tinyint(1) NOT NULL DEFAULT '0',
  `ecmp_user_tag_sendskip` varchar(255) DEFAULT NULL,
  `ecmp_user_tag_sendsuccess` varchar(255) DEFAULT NULL,
  `ecmp_user_tag` varchar(255) DEFAULT NULL,
  `ecmp_user_tag_cta1` varchar(255) DEFAULT NULL,
  `ecmp_user_tag_cta2` varchar(255) DEFAULT NULL,
  `ecmp_user_tag_cta3` varchar(255) DEFAULT NULL,
  `ecmp_user_tag_like` varchar(255) DEFAULT NULL,
  `ecmp_user_tag_dislike` varchar(255) DEFAULT NULL,
  `ecmp_user_tag_activate` varchar(255) DEFAULT NULL,
  `ecmp_user_tag_unsubscribe` varchar(255) DEFAULT NULL,
  `ecmp_send_count` int(10) unsigned NOT NULL DEFAULT '0',
  `ecmp_open_count` int(10) unsigned NOT NULL DEFAULT '0',
  `ecmp_img_loads` int(10) unsigned NOT NULL DEFAULT '0',
  `ecmp_link_clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `ecmp_cta1_clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `ecmp_cta2_clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `ecmp_cta3_clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `ecmp_like_count` int(10) unsigned NOT NULL DEFAULT '0',
  `ecmp_dislike_count` int(10) unsigned NOT NULL DEFAULT '0',
  `ecmp_unsub_clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `ecmp_cta1_autm_ID` int(10) unsigned DEFAULT NULL,
  `ecmp_cta1_autm_execute` tinyint(1) NOT NULL DEFAULT '1',
  `ecmp_cta2_autm_ID` int(10) unsigned DEFAULT NULL,
  `ecmp_cta2_autm_execute` tinyint(1) NOT NULL DEFAULT '1',
  `ecmp_cta3_autm_ID` int(10) unsigned DEFAULT NULL,
  `ecmp_cta3_autm_execute` tinyint(1) NOT NULL DEFAULT '1',
  `ecmp_like_autm_ID` int(10) unsigned DEFAULT NULL,
  `ecmp_like_autm_execute` tinyint(1) NOT NULL DEFAULT '1',
  `ecmp_dislike_autm_ID` int(10) unsigned DEFAULT NULL,
  `ecmp_dislike_autm_execute` tinyint(1) NOT NULL DEFAULT '1',
  `ecmp_activate_autm_ID` int(10) unsigned DEFAULT NULL,
  `ecmp_activate_autm_execute` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ecmp_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_email__campaign_send`
--

DROP TABLE IF EXISTS `b2ev_email__campaign_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_email__campaign_send` (
  `csnd_camp_ID` int(11) unsigned NOT NULL,
  `csnd_user_ID` int(11) unsigned NOT NULL,
  `csnd_status` enum('ready_to_send','ready_to_resend','sent','send_error','skipped') CHARACTER SET ascii NOT NULL DEFAULT 'ready_to_send',
  `csnd_emlog_ID` int(11) unsigned DEFAULT NULL,
  `csnd_clicked_unsubscribe` tinyint(1) unsigned DEFAULT '0',
  `csnd_last_sent_ts` timestamp NULL DEFAULT NULL,
  `csnd_last_open_ts` timestamp NULL DEFAULT NULL,
  `csnd_last_click_ts` timestamp NULL DEFAULT NULL,
  `csnd_like` tinyint(1) DEFAULT NULL,
  `csnd_cta1` tinyint(1) DEFAULT NULL,
  `csnd_cta2` tinyint(1) DEFAULT NULL,
  `csnd_cta3` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`csnd_camp_ID`,`csnd_user_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_email__log`
--

DROP TABLE IF EXISTS `b2ev_email__log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_email__log` (
  `emlog_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emlog_key` char(32) DEFAULT NULL,
  `emlog_timestamp` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `emlog_user_ID` int(10) unsigned DEFAULT NULL,
  `emlog_to` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `emlog_result` enum('ok','error','blocked','simulated','ready_to_send') CHARACTER SET ascii NOT NULL DEFAULT 'ok',
  `emlog_subject` varchar(255) DEFAULT NULL,
  `emlog_headers` text,
  `emlog_message` mediumtext,
  `emlog_last_open_ts` timestamp NULL DEFAULT NULL,
  `emlog_last_click_ts` timestamp NULL DEFAULT NULL,
  `emlog_camp_ID` int(10) unsigned DEFAULT NULL COMMENT 'Used to reference campaign when there is no associated campaign_send or the previously associated campaign_send updated its csnd_emlog_ID',
  `emlog_autm_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`emlog_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_email__newsletter`
--

DROP TABLE IF EXISTS `b2ev_email__newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_email__newsletter` (
  `enlt_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enlt_name` varchar(255) NOT NULL,
  `enlt_label` varchar(255) DEFAULT NULL,
  `enlt_active` tinyint(1) unsigned DEFAULT '1',
  `enlt_order` int(11) DEFAULT NULL,
  `enlt_owner_user_ID` int(10) unsigned NOT NULL,
  `enlt_perm_subscribe` enum('admin','anyone','group') CHARACTER SET ascii NOT NULL DEFAULT 'anyone',
  `enlt_perm_groups` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`enlt_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_email__newsletter_subscription`
--

DROP TABLE IF EXISTS `b2ev_email__newsletter_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_email__newsletter_subscription` (
  `enls_user_ID` int(10) unsigned NOT NULL,
  `enls_enlt_ID` int(10) unsigned NOT NULL,
  `enls_last_sent_manual_ts` timestamp NULL DEFAULT NULL,
  `enls_last_sent_auto_ts` timestamp NULL DEFAULT NULL,
  `enls_last_open_ts` timestamp NULL DEFAULT NULL,
  `enls_last_click_ts` timestamp NULL DEFAULT NULL,
  `enls_send_count` int(10) unsigned NOT NULL DEFAULT '0',
  `enls_subscribed` tinyint(1) unsigned DEFAULT '1',
  `enls_subscribed_ts` timestamp NULL DEFAULT NULL,
  `enls_unsubscribed_ts` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`enls_user_ID`,`enls_enlt_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_email__returns`
--

DROP TABLE IF EXISTS `b2ev_email__returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_email__returns` (
  `emret_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emret_address` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `emret_errormsg` varchar(255) DEFAULT NULL,
  `emret_timestamp` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `emret_headers` text,
  `emret_message` text,
  `emret_errtype` char(1) CHARACTER SET ascii NOT NULL DEFAULT 'U',
  PRIMARY KEY (`emret_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_files`
--

DROP TABLE IF EXISTS `b2ev_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_files` (
  `file_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_creator_user_ID` int(10) unsigned DEFAULT NULL,
  `file_type` enum('image','audio','video','other') CHARACTER SET ascii DEFAULT NULL,
  `file_root_type` enum('absolute','user','collection','shared','skins','siteskins','plugins','import','emailcampaign') CHARACTER SET ascii NOT NULL DEFAULT 'absolute',
  `file_root_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `file_path` varchar(767) NOT NULL DEFAULT '',
  `file_title` varchar(255) DEFAULT NULL,
  `file_alt` varchar(255) DEFAULT NULL,
  `file_desc` text,
  `file_hash` binary(16) DEFAULT NULL,
  `file_path_hash` binary(16) DEFAULT NULL,
  `file_can_be_main_profile` tinyint(1) NOT NULL DEFAULT '1',
  `file_download_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_ID`),
  UNIQUE KEY `file_path` (`file_path_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_filetypes`
--

DROP TABLE IF EXISTS `b2ev_filetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_filetypes` (
  `ftyp_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ftyp_extensions` varchar(30) CHARACTER SET ascii NOT NULL,
  `ftyp_name` varchar(30) NOT NULL,
  `ftyp_mimetype` varchar(50) NOT NULL,
  `ftyp_icon` varchar(20) DEFAULT NULL,
  `ftyp_viewtype` varchar(10) CHARACTER SET ascii NOT NULL,
  `ftyp_allowed` enum('any','registered','admin') CHARACTER SET ascii NOT NULL DEFAULT 'admin',
  PRIMARY KEY (`ftyp_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_global__cache`
--

DROP TABLE IF EXISTS `b2ev_global__cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_global__cache` (
  `cach_name` varchar(30) CHARACTER SET ascii NOT NULL,
  `cach_cache` mediumblob,
  PRIMARY KEY (`cach_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_groups`
--

DROP TABLE IF EXISTS `b2ev_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_groups` (
  `grp_ID` int(11) NOT NULL AUTO_INCREMENT,
  `grp_name` varchar(50) NOT NULL DEFAULT '',
  `grp_usage` enum('primary','secondary') CHARACTER SET ascii NOT NULL DEFAULT 'primary',
  `grp_level` int(10) unsigned NOT NULL DEFAULT '0',
  `grp_perm_blogs` enum('user','viewall','editall') CHARACTER SET ascii NOT NULL DEFAULT 'user',
  `grp_perm_bypass_antispam` tinyint(1) NOT NULL DEFAULT '0',
  `grp_perm_xhtmlvalidation` varchar(10) CHARACTER SET ascii NOT NULL DEFAULT 'always',
  `grp_perm_xhtmlvalidation_xmlrpc` varchar(10) CHARACTER SET ascii NOT NULL DEFAULT 'always',
  `grp_perm_xhtml_css_tweaks` tinyint(1) NOT NULL DEFAULT '0',
  `grp_perm_xhtml_iframes` tinyint(1) NOT NULL DEFAULT '0',
  `grp_perm_xhtml_javascript` tinyint(1) NOT NULL DEFAULT '0',
  `grp_perm_xhtml_objects` tinyint(1) NOT NULL DEFAULT '0',
  `grp_perm_stats` enum('none','user','view','edit') CHARACTER SET ascii NOT NULL DEFAULT 'none',
  PRIMARY KEY (`grp_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_groups__groupsettings`
--

DROP TABLE IF EXISTS `b2ev_groups__groupsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_groups__groupsettings` (
  `gset_grp_ID` int(11) unsigned NOT NULL,
  `gset_name` varchar(30) CHARACTER SET ascii NOT NULL,
  `gset_value` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`gset_grp_ID`,`gset_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_hitlog`
--

DROP TABLE IF EXISTS `b2ev_hitlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_hitlog` (
  `hit_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hit_sess_ID` int(10) unsigned DEFAULT NULL,
  `hit_datetime` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `hit_uri` varchar(250) DEFAULT NULL,
  `hit_disp` varchar(30) DEFAULT NULL,
  `hit_ctrl` varchar(30) CHARACTER SET ascii DEFAULT NULL,
  `hit_action` varchar(30) DEFAULT NULL,
  `hit_type` enum('standard','rss','admin','ajax','service','api') CHARACTER SET ascii NOT NULL DEFAULT 'standard',
  `hit_referer_type` enum('search','special','spam','referer','direct','self') CHARACTER SET ascii NOT NULL,
  `hit_referer` varchar(250) DEFAULT NULL,
  `hit_referer_dom_ID` int(10) unsigned DEFAULT NULL,
  `hit_keyphrase_keyp_ID` int(10) unsigned DEFAULT NULL,
  `hit_keyphrase` varchar(255) DEFAULT NULL,
  `hit_serprank` smallint(5) unsigned DEFAULT NULL,
  `hit_coll_ID` int(10) unsigned DEFAULT NULL,
  `hit_remote_addr` varchar(45) CHARACTER SET ascii DEFAULT NULL,
  `hit_agent_type` enum('robot','browser','unknown') CHARACTER SET ascii NOT NULL DEFAULT 'unknown',
  `hit_agent_ID` smallint(5) unsigned DEFAULT NULL,
  `hit_response_code` smallint(6) DEFAULT NULL,
  `hit_method` enum('unknown','GET','POST','PUT','PATCH','DELETE','COPY','HEAD','OPTIONS','LINK','UNLINK','PURGE','LOCK','UNLOCK','PROPFIND','VIEW') CHARACTER SET ascii NOT NULL DEFAULT 'unknown',
  PRIMARY KEY (`hit_ID`),
  KEY `hit_coll_ID` (`hit_coll_ID`),
  KEY `hit_uri` (`hit_uri`),
  KEY `hit_referer_dom_ID` (`hit_referer_dom_ID`),
  KEY `hit_remote_addr` (`hit_remote_addr`),
  KEY `hit_sess_ID` (`hit_sess_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_hits__aggregate`
--

DROP TABLE IF EXISTS `b2ev_hits__aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_hits__aggregate` (
  `hagg_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hagg_date` date NOT NULL DEFAULT '2000-01-01',
  `hagg_coll_ID` int(11) unsigned DEFAULT NULL,
  `hagg_type` enum('standard','rss','admin','ajax','service','api') CHARACTER SET ascii NOT NULL DEFAULT 'standard',
  `hagg_referer_type` enum('search','special','spam','referer','direct','self') CHARACTER SET ascii NOT NULL,
  `hagg_agent_type` enum('robot','browser','unknown') CHARACTER SET ascii NOT NULL DEFAULT 'unknown',
  `hagg_count` int(11) unsigned NOT NULL,
  PRIMARY KEY (`hagg_ID`),
  UNIQUE KEY `hagg_date_coll_ID_types` (`hagg_date`,`hagg_coll_ID`,`hagg_type`,`hagg_referer_type`,`hagg_agent_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_hits__aggregate_sessions`
--

DROP TABLE IF EXISTS `b2ev_hits__aggregate_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_hits__aggregate_sessions` (
  `hags_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hags_date` date NOT NULL DEFAULT '2000-01-01',
  `hags_coll_ID` int(11) unsigned DEFAULT NULL,
  `hags_count_browser` int(11) unsigned NOT NULL DEFAULT '0',
  `hags_count_api` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hags_ID`),
  UNIQUE KEY `hags_date_coll_ID` (`hags_date`,`hags_coll_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_i18n_original_string`
--

DROP TABLE IF EXISTS `b2ev_i18n_original_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_i18n_original_string` (
  `iost_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iost_string` varchar(10000) NOT NULL DEFAULT '',
  `iost_inpotfile` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iost_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_i18n_translated_string`
--

DROP TABLE IF EXISTS `b2ev_i18n_translated_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_i18n_translated_string` (
  `itst_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itst_iost_ID` int(10) unsigned NOT NULL,
  `itst_locale` varchar(20) NOT NULL DEFAULT '',
  `itst_standard` varchar(10000) NOT NULL DEFAULT '',
  `itst_custom` varchar(10000) DEFAULT NULL,
  `itst_inpofile` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itst_ID`),
  KEY `itst_iost_ID_locale` (`itst_iost_ID`,`itst_locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__item`
--

DROP TABLE IF EXISTS `b2ev_items__item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__item` (
  `post_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_parent_ID` int(11) unsigned DEFAULT NULL,
  `post_creator_user_ID` int(11) unsigned NOT NULL,
  `post_lastedit_user_ID` int(11) unsigned DEFAULT NULL,
  `post_assigned_user_ID` int(11) unsigned DEFAULT NULL,
  `post_dateset` tinyint(1) NOT NULL DEFAULT '1',
  `post_datestart` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `post_datedeadline` timestamp NULL DEFAULT NULL,
  `post_datecreated` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `post_datemodified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `post_last_touched_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `post_contents_last_updated_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `post_status` enum('published','community','deprecated','protected','private','review','draft','redirected') CHARACTER SET ascii NOT NULL DEFAULT 'draft',
  `post_single_view` enum('normal','404','redirected') CHARACTER SET ascii NOT NULL DEFAULT 'normal',
  `post_pst_ID` int(11) unsigned DEFAULT NULL,
  `post_ityp_ID` int(10) unsigned NOT NULL DEFAULT '1',
  `post_locale` varchar(20) NOT NULL DEFAULT 'en-EU',
  `post_content` mediumtext,
  `post_excerpt` text,
  `post_excerpt_autogenerated` tinyint(1) NOT NULL DEFAULT '1',
  `post_short_title` varchar(50) DEFAULT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_urltitle` varchar(210) CHARACTER SET ascii NOT NULL,
  `post_canonical_slug_ID` int(10) unsigned DEFAULT NULL,
  `post_tiny_slug_ID` int(10) unsigned DEFAULT NULL,
  `post_titletag` varchar(255) DEFAULT NULL,
  `post_url` varchar(255) DEFAULT NULL,
  `post_main_cat_ID` int(11) unsigned NOT NULL,
  `post_notifications_status` enum('noreq','todo','started','finished') CHARACTER SET ascii NOT NULL DEFAULT 'noreq',
  `post_notifications_ctsk_ID` int(10) unsigned DEFAULT NULL,
  `post_notifications_flags` set('moderators_notified','members_notified','community_notified','pings_sent') NOT NULL DEFAULT '',
  `post_wordcount` int(11) DEFAULT NULL,
  `post_comment_status` enum('disabled','open','closed') CHARACTER SET ascii NOT NULL DEFAULT 'open',
  `post_renderers` varchar(255) CHARACTER SET ascii NOT NULL,
  `post_priority` int(11) unsigned DEFAULT NULL COMMENT 'Task priority in workflow',
  `post_featured` tinyint(1) NOT NULL DEFAULT '0',
  `post_ctry_ID` int(10) unsigned DEFAULT NULL,
  `post_rgn_ID` int(10) unsigned DEFAULT NULL,
  `post_subrg_ID` int(10) unsigned DEFAULT NULL,
  `post_city_ID` int(10) unsigned DEFAULT NULL,
  `post_addvotes` int(11) NOT NULL DEFAULT '0',
  `post_countvotes` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_ID`),
  UNIQUE KEY `post_urltitle` (`post_urltitle`),
  KEY `post_datestart` (`post_datestart`),
  KEY `post_main_cat_ID` (`post_main_cat_ID`),
  KEY `post_creator_user_ID` (`post_creator_user_ID`),
  KEY `post_status` (`post_status`),
  KEY `post_parent_ID` (`post_parent_ID`),
  KEY `post_assigned_user_ID` (`post_assigned_user_ID`),
  KEY `post_ityp_ID` (`post_ityp_ID`),
  KEY `post_pst_ID` (`post_pst_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__item_settings`
--

DROP TABLE IF EXISTS `b2ev_items__item_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__item_settings` (
  `iset_item_ID` int(10) unsigned NOT NULL,
  `iset_name` varchar(50) CHARACTER SET ascii NOT NULL,
  `iset_value` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`iset_item_ID`,`iset_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__itemtag`
--

DROP TABLE IF EXISTS `b2ev_items__itemtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__itemtag` (
  `itag_itm_ID` int(11) unsigned NOT NULL,
  `itag_tag_ID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`itag_itm_ID`,`itag_tag_ID`),
  UNIQUE KEY `tagitem` (`itag_tag_ID`,`itag_itm_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__prerendering`
--

DROP TABLE IF EXISTS `b2ev_items__prerendering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__prerendering` (
  `itpr_itm_ID` int(11) unsigned NOT NULL,
  `itpr_format` enum('htmlbody','entityencoded','xml','text') CHARACTER SET ascii NOT NULL,
  `itpr_renderers` varchar(255) CHARACTER SET ascii NOT NULL,
  `itpr_content_prerendered` mediumtext,
  `itpr_datemodified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  PRIMARY KEY (`itpr_itm_ID`,`itpr_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__status`
--

DROP TABLE IF EXISTS `b2ev_items__status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__status` (
  `pst_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pst_name` varchar(30) NOT NULL,
  PRIMARY KEY (`pst_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__status_type`
--

DROP TABLE IF EXISTS `b2ev_items__status_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__status_type` (
  `its_pst_ID` int(11) unsigned NOT NULL,
  `its_ityp_ID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`its_ityp_ID`,`its_pst_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__subscriptions`
--

DROP TABLE IF EXISTS `b2ev_items__subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__subscriptions` (
  `isub_item_ID` int(11) unsigned NOT NULL,
  `isub_user_ID` int(11) unsigned NOT NULL,
  `isub_comments` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'The user wants to receive notifications for new comments on this post',
  PRIMARY KEY (`isub_item_ID`,`isub_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__tag`
--

DROP TABLE IF EXISTS `b2ev_items__tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__tag` (
  `tag_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`tag_ID`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__type`
--

DROP TABLE IF EXISTS `b2ev_items__type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__type` (
  `ityp_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ityp_name` varchar(30) NOT NULL,
  `ityp_description` text,
  `ityp_usage` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'post',
  `ityp_template_name` varchar(40) DEFAULT NULL,
  `ityp_front_instruction` tinyint(4) DEFAULT '0',
  `ityp_back_instruction` tinyint(4) DEFAULT '0',
  `ityp_instruction` text,
  `ityp_use_short_title` enum('optional','never') CHARACTER SET ascii DEFAULT 'never',
  `ityp_use_title` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'required',
  `ityp_use_url` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'optional',
  `ityp_podcast` tinyint(1) DEFAULT '0',
  `ityp_use_parent` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'never',
  `ityp_use_text` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'optional',
  `ityp_allow_html` tinyint(4) DEFAULT '1',
  `ityp_allow_breaks` tinyint(4) DEFAULT '1',
  `ityp_allow_attachments` tinyint(4) DEFAULT '1',
  `ityp_use_excerpt` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'optional',
  `ityp_use_title_tag` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'optional',
  `ityp_use_meta_desc` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'optional',
  `ityp_use_meta_keywds` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'optional',
  `ityp_use_tags` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'optional',
  `ityp_allow_featured` tinyint(4) DEFAULT '1',
  `ityp_use_country` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'never',
  `ityp_use_region` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'never',
  `ityp_use_sub_region` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'never',
  `ityp_use_city` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'never',
  `ityp_use_coordinates` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'never',
  `ityp_use_comments` tinyint(4) DEFAULT '1',
  `ityp_comment_form_msg` text,
  `ityp_allow_comment_form_msg` tinyint(4) DEFAULT '0',
  `ityp_allow_closing_comments` tinyint(4) DEFAULT '1',
  `ityp_allow_disabling_comments` tinyint(4) DEFAULT '0',
  `ityp_use_comment_expiration` enum('required','optional','never') CHARACTER SET ascii DEFAULT 'optional',
  `ityp_perm_level` enum('standard','restricted','admin') CHARACTER SET ascii NOT NULL DEFAULT 'standard',
  `ityp_evobar_link_text` varchar(255) DEFAULT NULL,
  `ityp_skin_btn_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ityp_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__type_coll`
--

DROP TABLE IF EXISTS `b2ev_items__type_coll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__type_coll` (
  `itc_ityp_ID` int(11) unsigned NOT NULL,
  `itc_coll_ID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`itc_ityp_ID`,`itc_coll_ID`),
  UNIQUE KEY `itemtypecoll` (`itc_ityp_ID`,`itc_coll_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__type_custom_field`
--

DROP TABLE IF EXISTS `b2ev_items__type_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__type_custom_field` (
  `itcf_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itcf_ityp_ID` int(11) unsigned NOT NULL,
  `itcf_label` varchar(255) NOT NULL,
  `itcf_name` varchar(255) CHARACTER SET ascii NOT NULL,
  `itcf_type` enum('double','varchar','text','html','url','image','computed','separator') CHARACTER SET ascii NOT NULL,
  `itcf_order` int(11) DEFAULT NULL,
  `itcf_note` varchar(255) DEFAULT NULL,
  `itcf_public` tinyint(4) DEFAULT '1',
  `itcf_format` varchar(2000) DEFAULT NULL,
  `itcf_formula` varchar(2000) CHARACTER SET ascii DEFAULT NULL,
  `itcf_header_class` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `itcf_cell_class` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `itcf_link` enum('nolink','linkto','permalink','zoom','linkpermzoom','permzoom','linkperm','fieldurl','fieldurlblank') CHARACTER SET ascii NOT NULL DEFAULT 'nolink',
  `itcf_link_nofollow` tinyint(4) DEFAULT '0',
  `itcf_link_class` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `itcf_line_highlight` enum('never','differences','always') CHARACTER SET ascii DEFAULT NULL,
  `itcf_green_highlight` enum('never','lowest','highest') CHARACTER SET ascii DEFAULT NULL,
  `itcf_red_highlight` enum('never','lowest','highest') CHARACTER SET ascii DEFAULT NULL,
  `itcf_description` text,
  `itcf_merge` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`itcf_ID`),
  UNIQUE KEY `itcf_ityp_ID_name` (`itcf_ityp_ID`,`itcf_name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__user_data`
--

DROP TABLE IF EXISTS `b2ev_items__user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__user_data` (
  `itud_user_ID` int(11) unsigned NOT NULL,
  `itud_item_ID` int(11) unsigned NOT NULL,
  `itud_read_item_ts` timestamp NULL DEFAULT NULL,
  `itud_read_comments_ts` timestamp NULL DEFAULT NULL,
  `itud_flagged_item` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itud_user_ID`,`itud_item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__version`
--

DROP TABLE IF EXISTS `b2ev_items__version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__version` (
  `iver_ID` int(10) unsigned NOT NULL,
  `iver_type` enum('archived','proposed') CHARACTER SET ascii NOT NULL DEFAULT 'archived',
  `iver_itm_ID` int(10) unsigned NOT NULL,
  `iver_edit_user_ID` int(10) unsigned DEFAULT NULL,
  `iver_edit_last_touched_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `iver_status` enum('published','community','deprecated','protected','private','review','draft','redirected') CHARACTER SET ascii DEFAULT NULL,
  `iver_title` varchar(255) DEFAULT NULL,
  `iver_content` mediumtext,
  PRIMARY KEY (`iver_ID`,`iver_type`,`iver_itm_ID`),
  KEY `iver_edit_user_ID` (`iver_edit_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__version_custom_field`
--

DROP TABLE IF EXISTS `b2ev_items__version_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__version_custom_field` (
  `ivcf_iver_ID` int(10) unsigned NOT NULL,
  `ivcf_iver_type` enum('archived','proposed') CHARACTER SET ascii NOT NULL DEFAULT 'archived',
  `ivcf_iver_itm_ID` int(10) unsigned NOT NULL,
  `ivcf_itcf_ID` int(10) unsigned NOT NULL,
  `ivcf_itcf_label` varchar(255) NOT NULL,
  `ivcf_value` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`ivcf_iver_ID`,`ivcf_iver_type`,`ivcf_iver_itm_ID`,`ivcf_itcf_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__version_link`
--

DROP TABLE IF EXISTS `b2ev_items__version_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__version_link` (
  `ivl_iver_ID` int(10) unsigned NOT NULL,
  `ivl_iver_type` enum('archived','proposed') CHARACTER SET ascii NOT NULL DEFAULT 'archived',
  `ivl_iver_itm_ID` int(10) unsigned NOT NULL,
  `ivl_link_ID` int(11) unsigned NOT NULL,
  `ivl_file_ID` int(11) unsigned DEFAULT NULL,
  `ivl_position` varchar(10) CHARACTER SET ascii NOT NULL,
  `ivl_order` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ivl_iver_ID`,`ivl_iver_type`,`ivl_iver_itm_ID`,`ivl_link_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_items__votes`
--

DROP TABLE IF EXISTS `b2ev_items__votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_items__votes` (
  `itvt_item_ID` int(10) unsigned NOT NULL,
  `itvt_user_ID` int(10) unsigned NOT NULL,
  `itvt_updown` tinyint(1) DEFAULT NULL,
  `itvt_report` enum('clean','rated','adult','inappropriate','spam') CHARACTER SET ascii DEFAULT NULL,
  `itvt_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  PRIMARY KEY (`itvt_item_ID`,`itvt_user_ID`),
  KEY `itvt_item_ID` (`itvt_item_ID`),
  KEY `itvt_user_ID` (`itvt_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_links`
--

DROP TABLE IF EXISTS `b2ev_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_links` (
  `link_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link_datecreated` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `link_datemodified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `link_creator_user_ID` int(11) unsigned DEFAULT NULL,
  `link_lastedit_user_ID` int(11) unsigned DEFAULT NULL,
  `link_itm_ID` int(11) unsigned DEFAULT NULL,
  `link_cmt_ID` int(11) unsigned DEFAULT NULL COMMENT 'Used for linking files to comments (comment attachments)',
  `link_usr_ID` int(11) unsigned DEFAULT NULL COMMENT 'Used for linking files to users (user profile picture)',
  `link_ecmp_ID` int(11) unsigned DEFAULT NULL COMMENT 'Used for linking files to email campaign',
  `link_msg_ID` int(11) unsigned DEFAULT NULL COMMENT 'Used for linking files to private message',
  `link_tmp_ID` int(11) unsigned DEFAULT NULL COMMENT 'Used for linking files to new creating object',
  `link_file_ID` int(11) unsigned DEFAULT NULL,
  `link_position` varchar(10) CHARACTER SET ascii NOT NULL,
  `link_order` int(11) unsigned NOT NULL,
  PRIMARY KEY (`link_ID`),
  UNIQUE KEY `link_itm_ID_order` (`link_itm_ID`,`link_order`),
  KEY `link_itm_ID` (`link_itm_ID`),
  KEY `link_cmt_ID` (`link_cmt_ID`),
  KEY `link_usr_ID` (`link_usr_ID`),
  KEY `link_file_ID` (`link_file_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_links__vote`
--

DROP TABLE IF EXISTS `b2ev_links__vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_links__vote` (
  `lvot_link_ID` int(11) unsigned NOT NULL,
  `lvot_user_ID` int(11) unsigned NOT NULL,
  `lvot_like` tinyint(1) DEFAULT NULL,
  `lvot_inappropriate` tinyint(1) DEFAULT NULL,
  `lvot_spam` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`lvot_link_ID`,`lvot_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_locales`
--

DROP TABLE IF EXISTS `b2ev_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_locales` (
  `loc_locale` varchar(20) NOT NULL DEFAULT '',
  `loc_datefmt` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'y-m-d',
  `loc_longdatefmt` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'Y-m-d',
  `loc_extdatefmt` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'Y M d',
  `loc_input_datefmt` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'Y-m-d',
  `loc_timefmt` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'H:i:s',
  `loc_shorttimefmt` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'H:i',
  `loc_input_timefmt` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'H:i:s',
  `loc_startofweek` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `loc_name` varchar(40) NOT NULL DEFAULT '',
  `loc_messages` varchar(20) NOT NULL DEFAULT '',
  `loc_priority` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `loc_transliteration_map` varchar(10000) NOT NULL DEFAULT '',
  `loc_enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`loc_locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='saves available locales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_messaging__contact`
--

DROP TABLE IF EXISTS `b2ev_messaging__contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_messaging__contact` (
  `mct_from_user_ID` int(10) unsigned NOT NULL,
  `mct_to_user_ID` int(10) unsigned NOT NULL,
  `mct_blocked` tinyint(1) DEFAULT '0',
  `mct_last_contact_datetime` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  PRIMARY KEY (`mct_from_user_ID`,`mct_to_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_messaging__contact_groups`
--

DROP TABLE IF EXISTS `b2ev_messaging__contact_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_messaging__contact_groups` (
  `cgr_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cgr_user_ID` int(10) unsigned NOT NULL,
  `cgr_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cgr_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_messaging__contact_groupusers`
--

DROP TABLE IF EXISTS `b2ev_messaging__contact_groupusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_messaging__contact_groupusers` (
  `cgu_user_ID` int(10) unsigned NOT NULL,
  `cgu_cgr_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cgu_user_ID`,`cgu_cgr_ID`),
  KEY `cgu_cgr_ID` (`cgu_cgr_ID`),
  CONSTRAINT `b2ev_messaging__contact_groupusers_ibfk_1` FOREIGN KEY (`cgu_cgr_ID`) REFERENCES `b2ev_messaging__contact_groups` (`cgr_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_messaging__message`
--

DROP TABLE IF EXISTS `b2ev_messaging__message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_messaging__message` (
  `msg_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_author_user_ID` int(10) unsigned NOT NULL,
  `msg_datetime` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `msg_thread_ID` int(10) unsigned NOT NULL,
  `msg_text` text,
  `msg_renderers` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`msg_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_messaging__prerendering`
--

DROP TABLE IF EXISTS `b2ev_messaging__prerendering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_messaging__prerendering` (
  `mspr_msg_ID` int(11) unsigned NOT NULL,
  `mspr_format` enum('htmlbody','entityencoded','xml','text') CHARACTER SET ascii NOT NULL,
  `mspr_renderers` varchar(255) CHARACTER SET ascii NOT NULL,
  `mspr_content_prerendered` mediumtext,
  `mspr_datemodified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  PRIMARY KEY (`mspr_msg_ID`,`mspr_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_messaging__thread`
--

DROP TABLE IF EXISTS `b2ev_messaging__thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_messaging__thread` (
  `thrd_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thrd_title` varchar(255) NOT NULL,
  `thrd_datemodified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  PRIMARY KEY (`thrd_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_messaging__threadstatus`
--

DROP TABLE IF EXISTS `b2ev_messaging__threadstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_messaging__threadstatus` (
  `tsta_thread_ID` int(10) unsigned NOT NULL,
  `tsta_user_ID` int(10) unsigned NOT NULL,
  `tsta_first_unread_msg_ID` int(10) unsigned DEFAULT NULL,
  `tsta_thread_leave_msg_ID` int(10) unsigned DEFAULT NULL,
  KEY `tsta_user_ID` (`tsta_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_plugin_captcha_qstn_13_ip_question`
--

DROP TABLE IF EXISTS `b2ev_plugin_captcha_qstn_13_ip_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_plugin_captcha_qstn_13_ip_question` (
  `cptip_IP` int(10) unsigned NOT NULL,
  `cptip_cptq_ID` int(10) unsigned NOT NULL,
  KEY `cptip_IP` (`cptip_IP`,`cptip_cptq_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_plugin_captcha_qstn_13_questions`
--

DROP TABLE IF EXISTS `b2ev_plugin_captcha_qstn_13_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_plugin_captcha_qstn_13_questions` (
  `cptq_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cptq_question` varchar(255) NOT NULL,
  `cptq_answers` varchar(255) NOT NULL,
  PRIMARY KEY (`cptq_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_pluginevents`
--

DROP TABLE IF EXISTS `b2ev_pluginevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_pluginevents` (
  `pevt_plug_ID` int(11) unsigned NOT NULL,
  `pevt_event` varchar(40) CHARACTER SET ascii NOT NULL,
  `pevt_enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pevt_plug_ID`,`pevt_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_plugins`
--

DROP TABLE IF EXISTS `b2ev_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_plugins` (
  `plug_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `plug_priority` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `plug_classname` varchar(40) CHARACTER SET ascii NOT NULL DEFAULT '',
  `plug_code` varchar(32) CHARACTER SET ascii DEFAULT NULL,
  `plug_version` varchar(42) CHARACTER SET ascii NOT NULL DEFAULT '0',
  `plug_name` varchar(255) DEFAULT NULL,
  `plug_shortdesc` varchar(255) DEFAULT NULL,
  `plug_status` enum('enabled','disabled','needs_config','broken') CHARACTER SET ascii NOT NULL,
  `plug_spam_weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`plug_ID`),
  UNIQUE KEY `plug_code` (`plug_code`),
  KEY `plug_status` (`plug_status`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_pluginsettings`
--

DROP TABLE IF EXISTS `b2ev_pluginsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_pluginsettings` (
  `pset_plug_ID` int(11) unsigned NOT NULL,
  `pset_name` varchar(60) CHARACTER SET ascii NOT NULL,
  `pset_value` text,
  PRIMARY KEY (`pset_plug_ID`,`pset_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_pluginusersettings`
--

DROP TABLE IF EXISTS `b2ev_pluginusersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_pluginusersettings` (
  `puset_plug_ID` int(11) unsigned NOT NULL,
  `puset_user_ID` int(11) unsigned NOT NULL,
  `puset_name` varchar(50) CHARACTER SET ascii NOT NULL,
  `puset_value` text,
  PRIMARY KEY (`puset_plug_ID`,`puset_user_ID`,`puset_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_polls__answer`
--

DROP TABLE IF EXISTS `b2ev_polls__answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_polls__answer` (
  `pans_pqst_ID` int(11) unsigned NOT NULL,
  `pans_user_ID` int(11) unsigned NOT NULL,
  `pans_popt_ID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`pans_pqst_ID`,`pans_user_ID`,`pans_popt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_polls__option`
--

DROP TABLE IF EXISTS `b2ev_polls__option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_polls__option` (
  `popt_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `popt_pqst_ID` int(11) unsigned NOT NULL,
  `popt_option_text` varchar(2000) DEFAULT NULL,
  `popt_order` int(11) NOT NULL,
  PRIMARY KEY (`popt_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_polls__question`
--

DROP TABLE IF EXISTS `b2ev_polls__question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_polls__question` (
  `pqst_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pqst_owner_user_ID` int(11) unsigned NOT NULL,
  `pqst_question_text` varchar(2000) DEFAULT NULL,
  `pqst_max_answers` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`pqst_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_postcats`
--

DROP TABLE IF EXISTS `b2ev_postcats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_postcats` (
  `postcat_post_ID` int(11) unsigned NOT NULL,
  `postcat_cat_ID` int(11) unsigned NOT NULL,
  `postcat_order` double DEFAULT NULL,
  PRIMARY KEY (`postcat_post_ID`,`postcat_cat_ID`),
  UNIQUE KEY `catpost` (`postcat_cat_ID`,`postcat_post_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_regional__city`
--

DROP TABLE IF EXISTS `b2ev_regional__city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_regional__city` (
  `city_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_ctry_ID` int(10) unsigned NOT NULL,
  `city_rgn_ID` int(10) unsigned DEFAULT NULL,
  `city_subrg_ID` int(10) unsigned DEFAULT NULL,
  `city_postcode` char(12) CHARACTER SET ascii NOT NULL,
  `city_name` varchar(40) NOT NULL,
  `city_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `city_preferred` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`city_ID`),
  KEY `city_ctry_ID_postcode` (`city_ctry_ID`,`city_postcode`),
  KEY `city_rgn_ID_postcode` (`city_rgn_ID`,`city_postcode`),
  KEY `city_subrg_ID_postcode` (`city_subrg_ID`,`city_postcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_regional__country`
--

DROP TABLE IF EXISTS `b2ev_regional__country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_regional__country` (
  `ctry_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctry_code` char(2) CHARACTER SET ascii NOT NULL,
  `ctry_name` varchar(40) NOT NULL,
  `ctry_curr_ID` int(10) unsigned DEFAULT NULL,
  `ctry_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `ctry_preferred` tinyint(1) NOT NULL DEFAULT '0',
  `ctry_status` enum('trusted','suspect','blocked') CHARACTER SET ascii DEFAULT NULL,
  `ctry_block_count` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ctry_ID`),
  UNIQUE KEY `ctry_code` (`ctry_code`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_regional__currency`
--

DROP TABLE IF EXISTS `b2ev_regional__currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_regional__currency` (
  `curr_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `curr_code` char(3) CHARACTER SET ascii NOT NULL,
  `curr_shortcut` varchar(30) NOT NULL,
  `curr_name` varchar(40) NOT NULL,
  `curr_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`curr_ID`),
  UNIQUE KEY `curr_code` (`curr_code`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_regional__region`
--

DROP TABLE IF EXISTS `b2ev_regional__region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_regional__region` (
  `rgn_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rgn_ctry_ID` int(10) unsigned NOT NULL,
  `rgn_code` char(6) CHARACTER SET ascii NOT NULL,
  `rgn_name` varchar(40) NOT NULL,
  `rgn_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `rgn_preferred` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rgn_ID`),
  UNIQUE KEY `rgn_ctry_ID_code` (`rgn_ctry_ID`,`rgn_code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_regional__subregion`
--

DROP TABLE IF EXISTS `b2ev_regional__subregion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_regional__subregion` (
  `subrg_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subrg_rgn_ID` int(10) unsigned NOT NULL,
  `subrg_code` char(6) CHARACTER SET ascii NOT NULL,
  `subrg_name` varchar(40) NOT NULL,
  `subrg_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `subrg_preferred` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`subrg_ID`),
  UNIQUE KEY `subrg_rgn_ID_code` (`subrg_rgn_ID`,`subrg_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_sessions`
--

DROP TABLE IF EXISTS `b2ev_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_sessions` (
  `sess_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sess_key` char(32) CHARACTER SET ascii DEFAULT NULL,
  `sess_start_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `sess_lastseen_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00' COMMENT 'User last logged activation time. Value may be off by up to 60 seconds',
  `sess_ipaddress` varchar(45) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sess_user_ID` int(10) DEFAULT NULL,
  `sess_data` mediumblob,
  `sess_device` varchar(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  PRIMARY KEY (`sess_ID`),
  KEY `sess_user_ID` (`sess_user_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_settings`
--

DROP TABLE IF EXISTS `b2ev_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_settings` (
  `set_name` varchar(64) CHARACTER SET ascii NOT NULL,
  `set_value` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`set_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_skins__container`
--

DROP TABLE IF EXISTS `b2ev_skins__container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_skins__container` (
  `sco_skin_ID` int(10) unsigned NOT NULL,
  `sco_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sco_skin_ID`,`sco_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_skins__skin`
--

DROP TABLE IF EXISTS `b2ev_skins__skin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_skins__skin` (
  `skin_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skin_class` varchar(32) NOT NULL,
  `skin_name` varchar(32) NOT NULL,
  `skin_type` enum('normal','feed','sitemap','mobile','tablet','rwd') CHARACTER SET ascii NOT NULL DEFAULT 'normal',
  `skin_folder` varchar(32) NOT NULL,
  PRIMARY KEY (`skin_ID`),
  UNIQUE KEY `skin_folder` (`skin_folder`),
  UNIQUE KEY `skin_class` (`skin_class`),
  KEY `skin_name` (`skin_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_slug`
--

DROP TABLE IF EXISTS `b2ev_slug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_slug` (
  `slug_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug_title` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `slug_type` char(6) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'item',
  `slug_itm_ID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`slug_ID`),
  UNIQUE KEY `slug_title` (`slug_title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_subscriptions`
--

DROP TABLE IF EXISTS `b2ev_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_subscriptions` (
  `sub_coll_ID` int(11) unsigned NOT NULL,
  `sub_user_ID` int(11) unsigned NOT NULL,
  `sub_items` tinyint(1) NOT NULL,
  `sub_items_mod` tinyint(1) NOT NULL,
  `sub_comments` tinyint(1) NOT NULL,
  PRIMARY KEY (`sub_coll_ID`,`sub_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_syslog`
--

DROP TABLE IF EXISTS `b2ev_syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_syslog` (
  `slg_ID` int(11) NOT NULL AUTO_INCREMENT,
  `slg_timestamp` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `slg_user_ID` int(10) unsigned DEFAULT NULL,
  `slg_type` enum('info','warning','error','critical_error') CHARACTER SET ascii NOT NULL DEFAULT 'info',
  `slg_origin` enum('core','plugin') CHARACTER SET ascii DEFAULT NULL,
  `slg_origin_ID` int(10) unsigned DEFAULT NULL,
  `slg_object` enum('comment','item','user','file','email_log') CHARACTER SET ascii DEFAULT NULL,
  `slg_object_ID` int(10) unsigned DEFAULT NULL,
  `slg_message` varchar(255) NOT NULL,
  PRIMARY KEY (`slg_ID`),
  KEY `slg_object` (`slg_object`,`slg_object_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_temporary_ID`
--

DROP TABLE IF EXISTS `b2ev_temporary_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_temporary_ID` (
  `tmp_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tmp_type` varchar(32) CHARACTER SET ascii NOT NULL,
  `tmp_coll_ID` int(11) unsigned DEFAULT NULL,
  `tmp_item_ID` int(11) unsigned DEFAULT NULL COMMENT 'Link to parent Item of Comment in order to enable permission checks',
  PRIMARY KEY (`tmp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_track__goal`
--

DROP TABLE IF EXISTS `b2ev_track__goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_track__goal` (
  `goal_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goal_gcat_ID` int(10) unsigned NOT NULL,
  `goal_name` varchar(50) DEFAULT NULL,
  `goal_key` varchar(32) DEFAULT NULL,
  `goal_redir_url` varchar(255) DEFAULT NULL,
  `goal_temp_redir_url` varchar(255) DEFAULT NULL,
  `goal_temp_start_ts` timestamp NULL DEFAULT NULL,
  `goal_temp_end_ts` timestamp NULL DEFAULT NULL,
  `goal_default_value` double DEFAULT NULL,
  `goal_notes` text,
  PRIMARY KEY (`goal_ID`),
  UNIQUE KEY `goal_key` (`goal_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_track__goalcat`
--

DROP TABLE IF EXISTS `b2ev_track__goalcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_track__goalcat` (
  `gcat_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gcat_name` varchar(50) DEFAULT NULL,
  `gcat_color` char(7) CHARACTER SET ascii DEFAULT NULL,
  PRIMARY KEY (`gcat_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_track__goalhit`
--

DROP TABLE IF EXISTS `b2ev_track__goalhit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_track__goalhit` (
  `ghit_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ghit_goal_ID` int(10) unsigned NOT NULL,
  `ghit_hit_ID` int(10) unsigned NOT NULL,
  `ghit_params` text,
  PRIMARY KEY (`ghit_ID`),
  KEY `ghit_goal_ID` (`ghit_goal_ID`),
  KEY `ghit_hit_ID` (`ghit_hit_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_track__keyphrase`
--

DROP TABLE IF EXISTS `b2ev_track__keyphrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_track__keyphrase` (
  `keyp_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyp_phrase` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `keyp_count_refered_searches` int(10) unsigned DEFAULT '0',
  `keyp_count_internal_searches` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`keyp_ID`),
  UNIQUE KEY `keyp_phrase` (`keyp_phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users`
--

DROP TABLE IF EXISTS `b2ev_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users` (
  `user_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(20) NOT NULL,
  `user_pass` varchar(64) NOT NULL,
  `user_salt` varchar(32) NOT NULL DEFAULT '',
  `user_pass_driver` varchar(16) NOT NULL DEFAULT 'evo$md5',
  `user_grp_ID` int(4) NOT NULL DEFAULT '1',
  `user_email` varchar(255) CHARACTER SET ascii NOT NULL,
  `user_status` enum('activated','manualactivated','autoactivated','closed','deactivated','emailchanged','failedactivation','pendingdelete','new') CHARACTER SET ascii NOT NULL DEFAULT 'new',
  `user_avatar_file_ID` int(10) unsigned DEFAULT NULL,
  `user_firstname` varchar(50) DEFAULT NULL,
  `user_lastname` varchar(50) DEFAULT NULL,
  `user_nickname` varchar(50) DEFAULT NULL,
  `user_url` varchar(255) DEFAULT NULL,
  `user_level` int(10) unsigned NOT NULL DEFAULT '0',
  `user_locale` varchar(20) NOT NULL DEFAULT 'en-EU',
  `user_unsubscribe_key` char(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'A specific key, it is used when a user wants to unsubscribe from a post comments without signing in',
  `user_gender` char(1) CHARACTER SET ascii DEFAULT NULL,
  `user_age_min` int(10) unsigned DEFAULT NULL,
  `user_age_max` int(10) unsigned DEFAULT NULL,
  `user_reg_ctry_ID` int(10) unsigned DEFAULT NULL,
  `user_ctry_ID` int(10) unsigned DEFAULT NULL,
  `user_rgn_ID` int(10) unsigned DEFAULT NULL,
  `user_subrg_ID` int(10) unsigned DEFAULT NULL,
  `user_city_ID` int(10) unsigned DEFAULT NULL,
  `user_source` varchar(30) DEFAULT NULL,
  `user_created_datetime` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `user_lastseen_ts` timestamp NULL DEFAULT NULL,
  `user_email_dom_ID` int(10) unsigned DEFAULT NULL COMMENT 'Used for email statistics',
  `user_profileupdate_date` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  PRIMARY KEY (`user_ID`),
  UNIQUE KEY `user_login` (`user_login`),
  KEY `user_grp_ID` (`user_grp_ID`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__fielddefs`
--

DROP TABLE IF EXISTS `b2ev_users__fielddefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__fielddefs` (
  `ufdf_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ufdf_ufgp_ID` int(10) unsigned NOT NULL,
  `ufdf_type` char(8) CHARACTER SET ascii NOT NULL,
  `ufdf_name` varchar(255) NOT NULL,
  `ufdf_options` varchar(255) DEFAULT NULL,
  `ufdf_required` enum('hidden','optional','recommended','require') CHARACTER SET ascii NOT NULL DEFAULT 'optional',
  `ufdf_duplicated` enum('forbidden','allowed','list') CHARACTER SET ascii NOT NULL DEFAULT 'allowed',
  `ufdf_order` int(11) NOT NULL,
  `ufdf_suggest` tinyint(1) NOT NULL DEFAULT '0',
  `ufdf_bubbletip` varchar(2000) DEFAULT NULL,
  `ufdf_icon_name` varchar(100) CHARACTER SET ascii DEFAULT NULL,
  `ufdf_code` varchar(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL COMMENT 'Code MUST be lowercase ASCII only',
  PRIMARY KEY (`ufdf_ID`),
  UNIQUE KEY `ufdf_code` (`ufdf_code`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__fieldgroups`
--

DROP TABLE IF EXISTS `b2ev_users__fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__fieldgroups` (
  `ufgp_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ufgp_name` varchar(255) NOT NULL,
  `ufgp_order` int(11) NOT NULL,
  PRIMARY KEY (`ufgp_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__fields`
--

DROP TABLE IF EXISTS `b2ev_users__fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__fields` (
  `uf_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uf_user_ID` int(10) unsigned NOT NULL,
  `uf_ufdf_ID` int(10) unsigned NOT NULL,
  `uf_varchar` varchar(10000) NOT NULL,
  PRIMARY KEY (`uf_ID`),
  KEY `uf_user_ID` (`uf_user_ID`),
  KEY `uf_ufdf_ID` (`uf_ufdf_ID`),
  KEY `uf_varchar` (`uf_varchar`(255))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__invitation_code`
--

DROP TABLE IF EXISTS `b2ev_users__invitation_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__invitation_code` (
  `ivc_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ivc_code` varchar(32) CHARACTER SET ascii NOT NULL,
  `ivc_expire_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `ivc_source` varchar(30) DEFAULT NULL,
  `ivc_grp_ID` int(4) DEFAULT NULL,
  `ivc_level` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ivc_ID`),
  UNIQUE KEY `ivc_code` (`ivc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__organization`
--

DROP TABLE IF EXISTS `b2ev_users__organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__organization` (
  `org_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_owner_user_ID` int(11) unsigned NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `org_url` varchar(2000) DEFAULT NULL,
  `org_accept` enum('yes','owner','no') CHARACTER SET ascii NOT NULL DEFAULT 'owner',
  `org_perm_role` enum('owner and member','owner') CHARACTER SET ascii NOT NULL DEFAULT 'owner and member',
  PRIMARY KEY (`org_ID`),
  UNIQUE KEY `org_name` (`org_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__profile_visit_counters`
--

DROP TABLE IF EXISTS `b2ev_users__profile_visit_counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__profile_visit_counters` (
  `upvc_user_ID` int(11) unsigned NOT NULL,
  `upvc_total_unique_visitors` int(10) unsigned NOT NULL DEFAULT '0',
  `upvc_last_view_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `upvc_new_unique_visitors` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`upvc_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__profile_visits`
--

DROP TABLE IF EXISTS `b2ev_users__profile_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__profile_visits` (
  `upv_visited_user_ID` int(11) unsigned NOT NULL,
  `upv_visitor_user_ID` int(11) unsigned NOT NULL,
  `upv_last_visit_ts` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  PRIMARY KEY (`upv_visited_user_ID`,`upv_visitor_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__reports`
--

DROP TABLE IF EXISTS `b2ev_users__reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__reports` (
  `urep_target_user_ID` int(11) unsigned NOT NULL,
  `urep_reporter_ID` int(11) unsigned NOT NULL,
  `urep_status` enum('fake','guidelines','harass','spam','other') CHARACTER SET ascii DEFAULT NULL,
  `urep_info` varchar(240) DEFAULT NULL,
  `urep_datetime` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  PRIMARY KEY (`urep_target_user_ID`,`urep_reporter_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__secondary_user_groups`
--

DROP TABLE IF EXISTS `b2ev_users__secondary_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__secondary_user_groups` (
  `sug_user_ID` int(11) unsigned NOT NULL,
  `sug_grp_ID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`sug_user_ID`,`sug_grp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__tag`
--

DROP TABLE IF EXISTS `b2ev_users__tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__tag` (
  `utag_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `utag_name` varchar(200) NOT NULL,
  PRIMARY KEY (`utag_ID`),
  UNIQUE KEY `utag_name` (`utag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__user_org`
--

DROP TABLE IF EXISTS `b2ev_users__user_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__user_org` (
  `uorg_user_ID` int(11) unsigned NOT NULL,
  `uorg_org_ID` int(11) unsigned NOT NULL,
  `uorg_accepted` tinyint(1) DEFAULT '0',
  `uorg_role` varchar(255) DEFAULT NULL,
  `uorg_priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`uorg_user_ID`,`uorg_org_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__usersettings`
--

DROP TABLE IF EXISTS `b2ev_users__usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__usersettings` (
  `uset_user_ID` int(11) unsigned NOT NULL,
  `uset_name` varchar(50) CHARACTER SET ascii NOT NULL,
  `uset_value` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`uset_user_ID`,`uset_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_users__usertag`
--

DROP TABLE IF EXISTS `b2ev_users__usertag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_users__usertag` (
  `uutg_user_ID` int(11) unsigned NOT NULL,
  `uutg_emtag_ID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`uutg_user_ID`,`uutg_emtag_ID`),
  UNIQUE KEY `taguser` (`uutg_emtag_ID`,`uutg_user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `b2ev_widget`
--

DROP TABLE IF EXISTS `b2ev_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2ev_widget` (
  `wi_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wi_coll_ID` int(11) unsigned NOT NULL,
  `wi_sco_name` varchar(40) NOT NULL,
  `wi_order` int(10) NOT NULL,
  `wi_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `wi_type` enum('core','plugin') CHARACTER SET ascii NOT NULL DEFAULT 'core',
  `wi_code` varchar(32) CHARACTER SET ascii NOT NULL,
  `wi_params` text,
  PRIMARY KEY (`wi_ID`),
  UNIQUE KEY `wi_order` (`wi_coll_ID`,`wi_sco_name`,`wi_order`)
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

-- Dump completed on 2020-02-10 18:20:25
