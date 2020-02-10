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
-- Dumping data for table `flux_bans`
--

LOCK TABLES `flux_bans` WRITE;
/*!40000 ALTER TABLE `flux_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `flux_bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_categories`
--

LOCK TABLES `flux_categories` WRITE;
/*!40000 ALTER TABLE `flux_categories` DISABLE KEYS */;
INSERT INTO `flux_categories` VALUES (1,'Test category',1);
/*!40000 ALTER TABLE `flux_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_censoring`
--

LOCK TABLES `flux_censoring` WRITE;
/*!40000 ALTER TABLE `flux_censoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `flux_censoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_config`
--

LOCK TABLES `flux_config` WRITE;
/*!40000 ALTER TABLE `flux_config` DISABLE KEYS */;
INSERT INTO `flux_config` VALUES ('o_cur_version','1.5.11'),('o_database_revision','21'),('o_searchindex_revision','2'),('o_parser_revision','2'),('o_board_title','fluxbb'),('o_board_desc','<p><span>Unfortunately no one can be told what FluxBB is - you have to see it for yourself.</span></p>'),('o_default_timezone','0'),('o_time_format','H:i:s'),('o_date_format','Y-m-d'),('o_timeout_visit','1800'),('o_timeout_online','300'),('o_redirect_delay','1'),('o_show_version','0'),('o_show_user_info','1'),('o_show_post_count','1'),('o_signatures','1'),('o_smilies','1'),('o_smilies_sig','1'),('o_make_links','1'),('o_default_lang','English'),('o_default_style','Air'),('o_default_user_group','4'),('o_topic_review','15'),('o_disp_topics_default','30'),('o_disp_posts_default','25'),('o_indent_num_spaces','4'),('o_quote_depth','3'),('o_quickpost','1'),('o_users_online','1'),('o_censoring','0'),('o_show_dot','0'),('o_topic_views','1'),('o_quickjump','1'),('o_gzip','0'),('o_additional_navlinks',''),('o_report_method','0'),('o_regs_report','0'),('o_default_email_setting','1'),('o_mailing_list','piotrowski+ionos.de@prisma.io'),('o_avatars','1'),('o_avatars_dir','img/avatars'),('o_avatars_width','60'),('o_avatars_height','60'),('o_avatars_size','10240'),('o_search_all_forums','1'),('o_base_url','http://fluxbb.ionos-prisma.de'),('o_admin_email','piotrowski+ionos.de@prisma.io'),('o_webmaster_email','piotrowski+ionos.de@prisma.io'),('o_forum_subscriptions','1'),('o_topic_subscriptions','1'),('o_smtp_host',NULL),('o_smtp_user',NULL),('o_smtp_pass',NULL),('o_smtp_ssl','0'),('o_regs_allow','1'),('o_regs_verify','0'),('o_announcement','0'),('o_announcement_message','Enter your announcement here.'),('o_rules','0'),('o_rules_message','Enter your rules here'),('o_maintenance','0'),('o_maintenance_message','The forums are temporarily down for maintenance. Please try again in a few minutes.'),('o_default_dst','0'),('o_feed_type','2'),('o_feed_ttl','0'),('p_message_bbcode','1'),('p_message_img_tag','1'),('p_message_all_caps','1'),('p_subject_all_caps','1'),('p_sig_all_caps','1'),('p_sig_bbcode','1'),('p_sig_img_tag','0'),('p_sig_length','400'),('p_sig_lines','4'),('p_allow_banned_email','1'),('p_allow_dupe_email','0'),('p_force_guest_email','1');
/*!40000 ALTER TABLE `flux_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_forum_perms`
--

LOCK TABLES `flux_forum_perms` WRITE;
/*!40000 ALTER TABLE `flux_forum_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `flux_forum_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_forum_subscriptions`
--

LOCK TABLES `flux_forum_subscriptions` WRITE;
/*!40000 ALTER TABLE `flux_forum_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `flux_forum_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_forums`
--

LOCK TABLES `flux_forums` WRITE;
/*!40000 ALTER TABLE `flux_forums` DISABLE KEYS */;
INSERT INTO `flux_forums` VALUES (1,'Test forum','This is just a test forum',NULL,NULL,1,1,1581283606,1,'admin',0,1,1);
/*!40000 ALTER TABLE `flux_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_groups`
--

LOCK TABLES `flux_groups` WRITE;
/*!40000 ALTER TABLE `flux_groups` DISABLE KEYS */;
INSERT INTO `flux_groups` VALUES (1,'Administrators','Administrator',0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0),(2,'Moderators','Moderator',0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0),(3,'Guests',NULL,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,1,1,0,60,30,0,0),(4,'Members',NULL,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,1,1,60,30,60,60);
/*!40000 ALTER TABLE `flux_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_online`
--

LOCK TABLES `flux_online` WRITE;
/*!40000 ALTER TABLE `flux_online` DISABLE KEYS */;
INSERT INTO `flux_online` VALUES (1,'217.160.152.36',1581354757,0,NULL,NULL);
/*!40000 ALTER TABLE `flux_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_posts`
--

LOCK TABLES `flux_posts` WRITE;
/*!40000 ALTER TABLE `flux_posts` DISABLE KEYS */;
INSERT INTO `flux_posts` VALUES (1,'admin',2,'2001:8d8:5c0:453:3128:0:1:2',NULL,'If you are looking at this (which I guess you are), the install of FluxBB appears to have worked! Now log in and head over to the administration control panel to configure your forum.',0,1581283606,NULL,NULL,1);
/*!40000 ALTER TABLE `flux_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_reports`
--

LOCK TABLES `flux_reports` WRITE;
/*!40000 ALTER TABLE `flux_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `flux_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_search_cache`
--

LOCK TABLES `flux_search_cache` WRITE;
/*!40000 ALTER TABLE `flux_search_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `flux_search_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_search_matches`
--

LOCK TABLES `flux_search_matches` WRITE;
/*!40000 ALTER TABLE `flux_search_matches` DISABLE KEYS */;
INSERT INTO `flux_search_matches` VALUES (1,1,0),(1,2,0),(1,3,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0),(1,8,0),(1,9,0),(1,10,0),(1,11,0),(1,12,0),(1,13,0),(1,14,1),(1,15,1);
/*!40000 ALTER TABLE `flux_search_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_search_words`
--

LOCK TABLES `flux_search_words` WRITE;
/*!40000 ALTER TABLE `flux_search_words` DISABLE KEYS */;
INSERT INTO `flux_search_words` VALUES (1,'looking'),(2,'guess'),(3,'install'),(4,'fluxbb'),(5,'appears'),(6,'worked'),(7,'log'),(8,'head'),(9,'administration'),(10,'control'),(11,'panel'),(12,'configure'),(13,'forum'),(14,'test'),(15,'topic');
/*!40000 ALTER TABLE `flux_search_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_topic_subscriptions`
--

LOCK TABLES `flux_topic_subscriptions` WRITE;
/*!40000 ALTER TABLE `flux_topic_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `flux_topic_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_topics`
--

LOCK TABLES `flux_topics` WRITE;
/*!40000 ALTER TABLE `flux_topics` DISABLE KEYS */;
INSERT INTO `flux_topics` VALUES (1,'admin','Test topic',1581283606,1,1581283606,1,'admin',0,0,0,0,NULL,1);
/*!40000 ALTER TABLE `flux_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flux_users`
--

LOCK TABLES `flux_users` WRITE;
/*!40000 ALTER TABLE `flux_users` DISABLE KEYS */;
INSERT INTO `flux_users` VALUES (1,3,'Guest','Guest','Guest',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,1,1,1,1,0,0,0,0,'English','Air',0,NULL,NULL,NULL,NULL,0,'0.0.0.0',0,NULL,NULL,NULL),(2,1,'admin','2a2043fb26330a0be4951d5e9c52d2e1af4f33ee','piotrowski+ionos.de@prisma.io',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,1,1,1,1,1,0,0,0,0,'English','Air',1,1581283606,NULL,NULL,NULL,1581283606,'2001:8d8:5c0:453:3128:0:1:2',1581283606,NULL,NULL,NULL);
/*!40000 ALTER TABLE `flux_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 19:29:09
