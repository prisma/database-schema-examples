-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816448485.hosting-data.io    Database: db816448485
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
-- Dumping data for table `dotc_blog`
--

LOCK TABLES `dotc_blog` WRITE;
/*!40000 ALTER TABLE `dotc_blog` DISABLE KEYS */;
INSERT INTO `dotc_blog` VALUES ('default','bd639dd9570d24aa4dc5a13c8c8fcfde','2020-02-09 21:10:52','2020-02-09 21:10:52','http://dotclear.ionos-prisma.de/index.php?','dotclear',NULL,1);
/*!40000 ALTER TABLE `dotc_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_category`
--

LOCK TABLES `dotc_category` WRITE;
/*!40000 ALTER TABLE `dotc_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_comment`
--

LOCK TABLES `dotc_comment` WRITE;
/*!40000 ALTER TABLE `dotc_comment` DISABLE KEYS */;
INSERT INTO `dotc_comment` VALUES (1,1,'2020-02-09 21:10:52','Europe/London','2020-02-09 21:10:52','Dotclear Team','contact@dotclear.net','http://www.dotclear.org/','<p>This is a comment.</p>\n<p>To delete it, log in and view your blog\'s comments. Then you might remove or edit it.</p>','this comment delete log and view your blog comments then you might remove edit','2001:8d8:5c0:453:3128:0:1:2',1,'0',NULL,0);
/*!40000 ALTER TABLE `dotc_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_link`
--

LOCK TABLES `dotc_link` WRITE;
/*!40000 ALTER TABLE `dotc_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotc_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_log`
--

LOCK TABLES `dotc_log` WRITE;
/*!40000 ALTER TABLE `dotc_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotc_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_media`
--

LOCK TABLES `dotc_media` WRITE;
/*!40000 ALTER TABLE `dotc_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotc_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_meta`
--

LOCK TABLES `dotc_meta` WRITE;
/*!40000 ALTER TABLE `dotc_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotc_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_permissions`
--

LOCK TABLES `dotc_permissions` WRITE;
/*!40000 ALTER TABLE `dotc_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotc_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_ping`
--

LOCK TABLES `dotc_ping` WRITE;
/*!40000 ALTER TABLE `dotc_ping` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotc_ping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_post`
--

LOCK TABLES `dotc_post` WRITE;
/*!40000 ALTER TABLE `dotc_post` DISABLE KEYS */;
INSERT INTO `dotc_post` VALUES (1,'default','admin',NULL,'2020-02-09 21:10:00','Europe/London','2020-02-09 21:10:52','2020-02-09 21:10:52',NULL,'post','xhtml','2020/02/09/Welcome-to-Dotclear!','','Welcome to Dotclear!',NULL,'','<p>This is your first entry. When you\'re ready to blog, log in to edit or delete it.</p>','<p>This is your first entry. When you\'re ready to blog, log in to edit or delete it.</p>',NULL,NULL,'welcome dotclear this your first entry when you ready blog log edit delete',1,1,0,0,1,0,1,0),(2,'default','admin',NULL,'2020-02-09 21:10:00','Europe/London','2020-02-09 21:10:52','2020-02-09 21:10:52',NULL,'page','xhtml','2020/02/09/My-first-page','','My first page','','','<p>This is your first page. When you\'re ready to blog, log in to edit or delete it.</p>','<p>This is your first page. When you\'re ready to blog, log in to edit or delete it.</p>',NULL,NULL,'first page this your first page when you ready blog log edit delete',-2,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `dotc_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_post_media`
--

LOCK TABLES `dotc_post_media` WRITE;
/*!40000 ALTER TABLE `dotc_post_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotc_post_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_pref`
--

LOCK TABLES `dotc_pref` WRITE;
/*!40000 ALTER TABLE `dotc_pref` DISABLE KEYS */;
INSERT INTO `dotc_pref` VALUES ('doclinks',NULL,'dashboard','1','boolean',''),('dcnews',NULL,'dashboard','1','boolean',''),('quickentry',NULL,'dashboard','1','boolean',''),('nodcupdate',NULL,'dashboard','0','boolean',''),('nodragdrop',NULL,'accessibility','0','boolean',''),('enhanceduploader',NULL,'interface','1','boolean',''),('favorites',NULL,'dashboard','[]','array','User favorites'),('favorites','admin','dashboard','[]','array',NULL),('favorites',NULL,'dashboard','[\"posts\",\"new_post\",\"newpage\",\"comments\",\"categories\",\"media\",\"blog_theme\",\"widgets\",\"simpleMenu\",\"prefs\",\"help\"]','array',NULL);
/*!40000 ALTER TABLE `dotc_pref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_session`
--

LOCK TABLES `dotc_session` WRITE;
/*!40000 ALTER TABLE `dotc_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `dotc_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_setting`
--

LOCK TABLES `dotc_setting` WRITE;
/*!40000 ALTER TABLE `dotc_setting` DISABLE KEYS */;
INSERT INTO `dotc_setting` VALUES ('allow_comments',NULL,'system','1','boolean','Allow comments on blog'),('allow_trackbacks',NULL,'system','1','boolean','Allow trackbacks on blog'),('blog_timezone',NULL,'system','Europe/London','string','Blog timezone'),('comments_nofollow',NULL,'system','1','boolean','Add rel=\"nofollow\" to comments URLs'),('comments_pub',NULL,'system','1','boolean','Publish comments immediately'),('comments_ttl',NULL,'system','0','integer','Number of days to keep comments open (0 means no ttl)'),('copyright_notice',NULL,'system','','string','Copyright notice (simple text)'),('date_format',NULL,'system','%A, %B %e %Y','string','Date format. See PHP strftime function for patterns'),('editor',NULL,'system','','string','Person responsible of the content'),('enable_html_filter',NULL,'system','0','boolean','Enable HTML filter'),('enable_xmlrpc',NULL,'system','0','boolean','Enable XML/RPC interface'),('lang',NULL,'system','en','string','Default blog language'),('media_exclusion',NULL,'system','/\\.(phps?|pht(ml)?|phl|.?html?|xml|js|htaccess)[0-9]*$/i','string','File name exclusion pattern in media manager. (PCRE value)'),('media_img_m_size',NULL,'system','448','integer','Image medium size in media manager'),('media_img_s_size',NULL,'system','240','integer','Image small size in media manager'),('media_img_t_size',NULL,'system','100','integer','Image thumbnail size in media manager'),('media_img_title_pattern',NULL,'system','Title ;; Date(%b %Y) ;; separator(, )','string','Pattern to set image title when you insert it in a post'),('media_video_width',NULL,'system','400','integer','Video width in media manager'),('media_video_height',NULL,'system','300','integer','Video height in media manager'),('nb_post_for_home',NULL,'system','20','integer','Number of entries on first home page'),('nb_post_per_page',NULL,'system','20','integer','Number of entries on home pages and category pages'),('nb_post_per_feed',NULL,'system','20','integer','Number of entries on feeds'),('nb_comment_per_feed',NULL,'system','20','integer','Number of comments on feeds'),('post_url_format',NULL,'system','{y}/{m}/{d}/{t}','string','Post URL format. {y}: year, {m}: month, {d}: day, {id}: post id, {t}: entry title'),('public_path',NULL,'system','public','string','Path to public directory, begins with a / for a full system path'),('public_url',NULL,'system','/public','string','URL to public directory'),('robots_policy',NULL,'system','INDEX,FOLLOW','string','Search engines robots policy'),('short_feed_items',NULL,'system','0','boolean','Display short feed items'),('theme',NULL,'system','berlin','string','Blog theme'),('themes_path',NULL,'system','themes','string','Themes root path'),('themes_url',NULL,'system','/themes','string','Themes root URL'),('time_format',NULL,'system','%H:%M','string','Time format. See PHP strftime function for patterns'),('tpl_allow_php',NULL,'system','0','boolean','Allow PHP code in templates'),('tpl_use_cache',NULL,'system','1','boolean','Use template caching'),('trackbacks_pub',NULL,'system','1','boolean','Publish trackbacks immediately'),('trackbacks_ttl',NULL,'system','0','integer','Number of days to keep trackbacks open (0 means no ttl)'),('url_scan',NULL,'system','query_string','string','URL handle mode (path_info or query_string)'),('use_smilies',NULL,'system','0','boolean','Show smilies on entries and comments'),('no_search',NULL,'system','0','boolean','Disable search'),('inc_subcats',NULL,'system','0','boolean','Include sub-categories in category page and category posts feed'),('wiki_comments',NULL,'system','0','boolean','Allow commenters to use a subset of wiki syntax'),('import_feed_url_control',NULL,'system','1','boolean','Control feed URL before import'),('import_feed_no_private_ip',NULL,'system','1','boolean','Prevent import feed from private IP'),('import_feed_ip_regexp',NULL,'system','','string','Authorize import feed only from this IP regexp'),('import_feed_port_regexp',NULL,'system','/^(80|443)$/','string','Authorize import feed only from this port regexp'),('lang','default','system','en','string','Default blog language'),('date_formats',NULL,'system','[\"%Y-%m-%d\",\"%m\\/%d\\/%Y\",\"%d\\/%m\\/%Y\",\"%Y\\/%m\\/%d\",\"%d.%m.%Y\",\"%b %e %Y\",\"%e %b %Y\",\"%Y %b %e\",\"%a, %Y-%m-%d\",\"%a, %m\\/%d\\/%Y\",\"%a, %d\\/%m\\/%Y\",\"%a, %Y\\/%m\\/%d\",\"%B %e, %Y\",\"%e %B, %Y\",\"%Y, %B %e\",\"%e. %B %Y\",\"%A, %B %e, %Y\",\"%A, %e %B, %Y\",\"%A, %Y, %B %e\",\"%A, %Y, %B %e\",\"%A, %e. %B %Y\"]','array','Date formats examples'),('time_formats',NULL,'system','[\"%H:%M\",\"%I:%M\",\"%l:%M\",\"%Hh%M\",\"%Ih%M\",\"%lh%M\"]','array','Time formats examples'),('store_plugin_url',NULL,'system','http://update.dotaddict.org/dc2/plugins.xml','string','Plugins XML feed location'),('store_theme_url',NULL,'system','http://update.dotaddict.org/dc2/themes.xml','string','Themes XML feed location'),('csp_admin_on',NULL,'system','1','boolean','Send CSP header (admin)'),('csp_admin_report_only',NULL,'system','0','boolean','CSP Report only violations (admin)'),('csp_admin_default',NULL,'system','\'self\'','string','CSP default-src directive'),('csp_admin_script',NULL,'system','\'self\' \'unsafe-eval\'','string','CSP script-src directive'),('csp_admin_style',NULL,'system','\'self\' \'unsafe-inline\'','string','CSP style-src directive'),('csp_admin_img',NULL,'system','\'self\' data: http://media.dotaddict.org blob:','string','CSP img-src directive'),('antispam_moderation_ttl',NULL,'antispam','0','integer','Antispam Moderation TTL (days)'),('firstpage','default','pages','1','boolean',NULL),('blowup_style',NULL,'themes','','string','Blow Up  custom style'),('active',NULL,'dcckeditor','1','boolean','dcCKEditor plugin activated?'),('alignment_buttons',NULL,'dcckeditor','1','boolean','Add alignment buttons?'),('list_buttons',NULL,'dcckeditor','1','boolean','Add list buttons?'),('textcolor_button',NULL,'dcckeditor','0','boolean','Add text color button?'),('background_textcolor_button',NULL,'dcckeditor','0','boolean','Add background text color button?'),('cancollapse_button',NULL,'dcckeditor','0','boolean','Add collapse button?'),('format_select',NULL,'dcckeditor','1','boolean','Add format selection?'),('format_tags',NULL,'dcckeditor','p;h1;h2;h3;h4;h5;h6;pre;address','string','Custom formats'),('table_button',NULL,'dcckeditor','0','boolean','Add table button?'),('clipboard_buttons',NULL,'dcckeditor','0','boolean','Add clipboard buttons?'),('action_buttons',NULL,'dcckeditor','1','boolean','Add undo/redo buttons?'),('disable_native_spellchecker',NULL,'dcckeditor','1','boolean','Disables the built-in spell checker if the browser provides one?'),('active',NULL,'dclegacyeditor','1','boolean','dcLegacyEditor plugin activated ?'),('pings_active',NULL,'pings','1','boolean','Activate pings plugin'),('pings_auto',NULL,'pings','0','boolean','Auto pings on 1st publication'),('pings_uris',NULL,'pings','{\"Ping-o-Matic!\":\"http:\\/\\/rpc.pingomatic.com\\/\",\"Google Blog Search\":\"http:\\/\\/blogsearch.google.com\\/ping\\/RPC2\"}','array','Pings services URIs'),('simpleMenu',NULL,'system','[{\"label\":\"Home\",\"descr\":\"Recent posts\",\"url\":\"\\/index.php?\",\"targetBlank\":false},{\"label\":\"Archives\",\"descr\":\"\",\"url\":\"\\/index.php?archive\",\"targetBlank\":false}]','array','simpleMenu default menu'),('simpleMenu_active',NULL,'system','1','boolean','Active'),('widgets_nav','default','widgets','','string','Navigation widgets'),('widgets_extra','default','widgets','','string','Extra widgets'),('widgets_custom','default','widgets','','string','Custom widgets'),('antispam_date_last_purge','default','antispam','1581286695','integer','Antispam Date Last Purge (unix timestamp)');
/*!40000 ALTER TABLE `dotc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_spamrule`
--

LOCK TABLES `dotc_spamrule` WRITE;
/*!40000 ALTER TABLE `dotc_spamrule` DISABLE KEYS */;
INSERT INTO `dotc_spamrule` VALUES (1,NULL,'word','/-credit(\\s+|$)/'),(2,NULL,'word','/-digest(\\s+|$)/'),(3,NULL,'word','/-loan(\\s+|$)/'),(4,NULL,'word','/-online(\\s+|$)/'),(5,NULL,'word','4u'),(6,NULL,'word','adipex'),(7,NULL,'word','advicer'),(8,NULL,'word','ambien'),(9,NULL,'word','baccarat'),(10,NULL,'word','baccarrat'),(11,NULL,'word','blackjack'),(12,NULL,'word','bllogspot'),(13,NULL,'word','bolobomb'),(14,NULL,'word','booker'),(15,NULL,'word','byob'),(16,NULL,'word','car-rental-e-site'),(17,NULL,'word','car-rentals-e-site'),(18,NULL,'word','carisoprodol'),(19,NULL,'word','cash'),(20,NULL,'word','casino'),(21,NULL,'word','casinos'),(22,NULL,'word','chatroom'),(23,NULL,'word','cialis'),(24,NULL,'word','craps'),(25,NULL,'word','credit-card'),(26,NULL,'word','credit-report-4u'),(27,NULL,'word','cwas'),(28,NULL,'word','cyclen'),(29,NULL,'word','cyclobenzaprine'),(30,NULL,'word','dating-e-site'),(31,NULL,'word','day-trading'),(32,NULL,'word','debt'),(33,NULL,'word','digest-'),(34,NULL,'word','discount'),(35,NULL,'word','discreetordering'),(36,NULL,'word','duty-free'),(37,NULL,'word','dutyfree'),(38,NULL,'word','estate'),(39,NULL,'word','favourits'),(40,NULL,'word','fioricet'),(41,NULL,'word','flowers-leading-site'),(42,NULL,'word','freenet'),(43,NULL,'word','freenet-shopping'),(44,NULL,'word','gambling'),(45,NULL,'word','gamias'),(46,NULL,'word','health-insurancedeals-4u'),(47,NULL,'word','holdem'),(48,NULL,'word','holdempoker'),(49,NULL,'word','holdemsoftware'),(50,NULL,'word','holdemtexasturbowilson'),(51,NULL,'word','hotel-dealse-site'),(52,NULL,'word','hotele-site'),(53,NULL,'word','hotelse-site'),(54,NULL,'word','incest'),(55,NULL,'word','insurance-quotesdeals-4u'),(56,NULL,'word','insurancedeals-4u'),(57,NULL,'word','jrcreations'),(58,NULL,'word','levitra'),(59,NULL,'word','macinstruct'),(60,NULL,'word','mortgage'),(61,NULL,'word','online-gambling'),(62,NULL,'word','onlinegambling-4u'),(63,NULL,'word','ottawavalleyag'),(64,NULL,'word','ownsthis'),(65,NULL,'word','palm-texas-holdem-game'),(66,NULL,'word','paxil'),(67,NULL,'word','pharmacy'),(68,NULL,'word','phentermine'),(69,NULL,'word','pills'),(70,NULL,'word','poker'),(71,NULL,'word','poker-chip'),(72,NULL,'word','poze'),(73,NULL,'word','prescription'),(74,NULL,'word','rarehomes'),(75,NULL,'word','refund'),(76,NULL,'word','rental-car-e-site'),(77,NULL,'word','roulette'),(78,NULL,'word','shemale'),(79,NULL,'word','slot'),(80,NULL,'word','slot-machine'),(81,NULL,'word','soma'),(82,NULL,'word','taboo'),(83,NULL,'word','tamiflu'),(84,NULL,'word','texas-holdem'),(85,NULL,'word','thorcarlson'),(86,NULL,'word','top-e-site'),(87,NULL,'word','top-site'),(88,NULL,'word','tramadol'),(89,NULL,'word','trim-spa'),(90,NULL,'word','ultram'),(91,NULL,'word','v1h'),(92,NULL,'word','vacuum'),(93,NULL,'word','valeofglamorganconservatives'),(94,NULL,'word','viagra'),(95,NULL,'word','vicodin'),(96,NULL,'word','vioxx'),(97,NULL,'word','xanax'),(98,NULL,'word','zolus');
/*!40000 ALTER TABLE `dotc_spamrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_user`
--

LOCK TABLES `dotc_user` WRITE;
/*!40000 ALTER TABLE `dotc_user` DISABLE KEYS */;
INSERT INTO `dotc_user` VALUES ('admin',1,1,'5fe15bafc7b705d059ef9d127f217016312a38281fea87ab63ca88c4e0ff6f6b2a9473a9b1e83aa4c5c9701c057a41c77d1605f5dacff58a643e72b1033d6db0',0,NULL,'','',NULL,'piotrowski+ionos.de@prisma.io',NULL,NULL,NULL,'a:5:{s:9:\"edit_size\";i:24;s:14:\"enable_wysiwyg\";b:1;s:14:\"toolbar_bottom\";b:0;s:6:\"editor\";a:2:{s:5:\"xhtml\";s:10:\"dcCKEditor\";s:4:\"wiki\";s:14:\"dcLegacyEditor\";}s:11:\"post_format\";s:4:\"wiki\";}','en','Europe/London',-2,'2020-02-09 21:10:52','2020-02-09 21:10:52');
/*!40000 ALTER TABLE `dotc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dotc_version`
--

LOCK TABLES `dotc_version` WRITE;
/*!40000 ALTER TABLE `dotc_version` DISABLE KEYS */;
INSERT INTO `dotc_version` VALUES ('antispam','1.4.1'),('blogroll','1.4'),('blowupConfig','1.2'),('core','2.15.3'),('dcCKEditor','1.1.0'),('dcLegacyEditor','0.1.4'),('pages','1.4'),('pings','1.3'),('simpleMenu','1.5'),('widgets','3.4');
/*!40000 ALTER TABLE `dotc_version` ENABLE KEYS */;
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
