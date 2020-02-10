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
-- Dumping data for table `b2ev_antispam__iprange`
--

LOCK TABLES `b2ev_antispam__iprange` WRITE;
/*!40000 ALTER TABLE `b2ev_antispam__iprange` DISABLE KEYS */;
INSERT INTO `b2ev_antispam__iprange` VALUES (1,2130706432,2130706687,0,0,'trusted',0),(2,167772160,184549375,1,0,'trusted',0),(3,2886729728,2887778303,0,0,'trusted',0),(4,3232235520,3232301055,0,0,'trusted',0),(5,65536,65791,1,0,NULL,0);
/*!40000 ALTER TABLE `b2ev_antispam__iprange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_antispam__keyword`
--

LOCK TABLES `b2ev_antispam__keyword` WRITE;
/*!40000 ALTER TABLE `b2ev_antispam__keyword` DISABLE KEYS */;
INSERT INTO `b2ev_antispam__keyword` VALUES (1,'online-casino','reported'),(2,'penis-enlargement','reported'),(3,'order-viagra','reported'),(4,'order-phentermine','reported'),(5,'order-xenical','reported'),(6,'order-prophecia','reported'),(7,'sexy-lingerie','reported'),(8,'-porn-','reported'),(9,'-adult-','reported'),(10,'-tits-','reported'),(11,'buy-phentermine','reported'),(12,'order-cheap-pills','reported'),(13,'buy-xenadrine','reported'),(14,'paris-hilton','reported'),(15,'parishilton','reported'),(16,'camgirls','reported'),(17,'adult-models','reported');
/*!40000 ALTER TABLE `b2ev_antispam__keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_automation__automation`
--

LOCK TABLES `b2ev_automation__automation` WRITE;
/*!40000 ALTER TABLE `b2ev_automation__automation` DISABLE KEYS */;
INSERT INTO `b2ev_automation__automation` VALUES (1,'Sample Automation','paused',1);
/*!40000 ALTER TABLE `b2ev_automation__automation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_automation__newsletter`
--

LOCK TABLES `b2ev_automation__newsletter` WRITE;
/*!40000 ALTER TABLE `b2ev_automation__newsletter` DISABLE KEYS */;
INSERT INTO `b2ev_automation__newsletter` VALUES (1,1,1,1,1);
/*!40000 ALTER TABLE `b2ev_automation__newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_automation__step`
--

LOCK TABLES `b2ev_automation__step` WRITE;
/*!40000 ALTER TABLE `b2ev_automation__step` DISABLE KEYS */;
INSERT INTO `b2ev_automation__step` VALUES (1,1,1,'admin','notify_owner','$login$ has reached step $step_number$ (ID: $step_ID$)\nin automation $automation_name$ (ID: $automation_ID$)',0,86400,NULL,NULL,1,14400,NULL),(2,1,2,'Markdown Example','send_campaign','1',0,259200,0,0,2,604800,NULL),(3,1,3,'Another example','send_campaign','2',0,259200,0,0,3,604800,NULL);
/*!40000 ALTER TABLE `b2ev_automation__step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_automation__user_state`
--

LOCK TABLES `b2ev_automation__user_state` WRITE;
/*!40000 ALTER TABLE `b2ev_automation__user_state` DISABLE KEYS */;
INSERT INTO `b2ev_automation__user_state` VALUES (1,1,1,'2020-02-09 19:45:00');
/*!40000 ALTER TABLE `b2ev_automation__user_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_basedomains`
--

LOCK TABLES `b2ev_basedomains` WRITE;
/*!40000 ALTER TABLE `b2ev_basedomains` DISABLE KEYS */;
INSERT INTO `b2ev_basedomains` VALUES (1,'prisma.io','unknown','email',NULL);
/*!40000 ALTER TABLE `b2ev_basedomains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_bloggroups`
--

LOCK TABLES `b2ev_bloggroups` WRITE;
/*!40000 ALTER TABLE `b2ev_bloggroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_bloggroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_blogs`
--

LOCK TABLES `b2ev_blogs` WRITE;
/*!40000 ALTER TABLE `b2ev_blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_blogusers`
--

LOCK TABLES `b2ev_blogusers` WRITE;
/*!40000 ALTER TABLE `b2ev_blogusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_blogusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_categories`
--

LOCK TABLES `b2ev_categories` WRITE;
/*!40000 ALTER TABLE `b2ev_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_coll_favs`
--

LOCK TABLES `b2ev_coll_favs` WRITE;
/*!40000 ALTER TABLE `b2ev_coll_favs` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_coll_favs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_coll_settings`
--

LOCK TABLES `b2ev_coll_settings` WRITE;
/*!40000 ALTER TABLE `b2ev_coll_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_coll_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_comments`
--

LOCK TABLES `b2ev_comments` WRITE;
/*!40000 ALTER TABLE `b2ev_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_comments__prerendering`
--

LOCK TABLES `b2ev_comments__prerendering` WRITE;
/*!40000 ALTER TABLE `b2ev_comments__prerendering` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_comments__prerendering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_comments__votes`
--

LOCK TABLES `b2ev_comments__votes` WRITE;
/*!40000 ALTER TABLE `b2ev_comments__votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_comments__votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_cron__log`
--

LOCK TABLES `b2ev_cron__log` WRITE;
/*!40000 ALTER TABLE `b2ev_cron__log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_cron__log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_cron__task`
--

LOCK TABLES `b2ev_cron__task` WRITE;
/*!40000 ALTER TABLE `b2ev_cron__task` DISABLE KEYS */;
INSERT INTO `b2ev_cron__task` VALUES (1,'2020-02-08 23:00:00',300,0,'execute-automations',NULL,'N;'),(2,'2020-02-09 23:03:00',660,0,'process-return-path-inbox',NULL,'N;'),(3,'2020-02-10 00:06:00',1740,0,'send-unread-messages-reminders',NULL,'N;'),(4,'2020-02-10 00:09:00',1860,0,'send-non-activated-account-reminders',NULL,'N;'),(5,'2020-02-10 01:00:00',86400,0,'prune-old-files-from-page-cache',NULL,'N;'),(6,'2020-02-10 01:15:00',86400,0,'process-hit-log',NULL,'N;'),(7,'2020-02-10 01:30:00',86400,0,'prune-old-hits-and-sessions',NULL,'N;'),(8,'2020-02-10 01:45:00',86400,0,'poll-antispam-blacklist',NULL,'N;'),(9,'2020-02-10 02:00:00',86400,0,'send-unmoderated-posts-reminders',NULL,'N;'),(10,'2020-02-10 02:15:00',86400,0,'send-inactive-account-reminders',NULL,'N;'),(11,'2020-02-10 02:30:00',86400,0,'send-unmoderated-comments-reminders',NULL,'N;'),(12,'2020-02-10 02:45:00',86400,0,'prune-recycled-comments',NULL,'N;'),(13,'2020-02-10 03:00:00',86400,0,'cleanup-email-logs',NULL,'N;'),(14,'2020-02-10 03:15:00',86400,0,'manage-email-statuses',NULL,'N;'),(15,'2020-02-10 03:30:00',86400,0,'cleanup-scheduled-jobs',NULL,'N;'),(16,'2020-02-10 03:45:00',86400,0,'light-db-maintenance',NULL,'N;'),(17,'2020-02-16 04:00:00',604800,0,'monthly-alert-old-contents',NULL,'N;'),(18,'2020-02-16 04:15:00',604800,0,'heavy-db-maintenance',NULL,'N;');
/*!40000 ALTER TABLE `b2ev_cron__task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_email__address`
--

LOCK TABLES `b2ev_email__address` WRITE;
/*!40000 ALTER TABLE `b2ev_email__address` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_email__address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_email__campaign`
--

LOCK TABLES `b2ev_email__campaign` WRITE;
/*!40000 ALTER TABLE `b2ev_email__campaign` DISABLE KEYS */;
INSERT INTO `b2ev_email__campaign` VALUES (1,'2020-02-09 19:45:00',1,'Markdown Example','Markdown Example','http://b2evolution.ionos-prisma.de/','<h1>Heading</h1>\n<h2>Sub-heading</h2>\n<h3>H3 header</h3>\n<h4>H4 header</h4>\n<blockquote>\n<p>Email-style angle brackets<br />\nare used for blockquotes.</p>\n<blockquote>\n<p>And, they can be nested.</p>\n</blockquote>\n<h5>Headers in blockquotes</h5>\n<ul>\n<li>You can quote a list.</li>\n<li>Etc.</li>\n</ul>\n</blockquote>\n<p><a href=\"http://b2evolution.net/\">This is a link</a> if Links are turned on in the markdown plugin settings</p>\n<p>Paragraphs are separated by a blank line.</p>\n<p>This is a preformatted<br />\ncode block.</p>\n<p>Text attributes <em>Italic</em>, <strong>bold</strong>, <code class=\"codespan\">monospace</code>.</p>\n<p>Shopping list:</p>\n<ul>\n<li>apples</li>\n<li>oranges</li>\n<li>pears</li>\n</ul>\n<p>The rain&#8212;not the reign&#8212;in Spain.<br />\nButton examples:<br />\n<a href=\"http://b2evolution.ionos-prisma.de/\" style=\"margin:3px;padding:6px 14px;border-radius:4px;text-decoration:none;display:inline-block;font-size:1em;color:#fff;background-color:#337ab7;border-color:#2e6da4;padding:6px 12px;text-align:center;white-space:nowrap;vertical-align:middle;cursor:pointer;user-select:none;background-image:none;border:1px solid #2e6da4;border-radius:4px;\">This is a button</a><br />\n<a href=\"http://b2evolution.ionos-prisma.de/?evo_mail_function=like\" style=\"margin:3px;padding:6px 14px;border-radius:4px;text-decoration:none;display:inline-block;font-size:1em;color:#fff;background-color:#449d44;border-color:#4cae4c;padding:6px 12px;text-align:center;white-space:nowrap;vertical-align:middle;cursor:pointer;user-select:none;background-image:none;border:1px solid #4cae4c;border-radius:4px;\">I like this</a> <a href=\"http://b2evolution.ionos-prisma.de/?evo_mail_function=dislike\" style=\"margin:3px;padding:6px 14px;border-radius:4px;text-decoration:none;display:inline-block;font-size:1em;color:#fff;background-color:#d9534f;border-color:#d43f3a;padding:6px 12px;text-align:center;white-space:nowrap;vertical-align:middle;cursor:pointer;user-select:none;background-image:none;border:1px solid #d43f3a;border-radius:4px;\">I don&#8217;t like this</a><br />\n<a href=\"http://b2evolution.ionos-prisma.de/?evo_mail_function=cta1\" style=\"margin:3px;padding:6px 14px;border-radius:4px;text-decoration:none;display:inline-block;font-size:1em;color:#fff;background-color:#5bc0de;border-color:#46b8da;padding:6px 12px;text-align:center;white-space:nowrap;vertical-align:middle;cursor:pointer;user-select:none;background-image:none;border:1px solid #46b8da;border-radius:4px;\">Call to action 1 info button</a> <a href=\"http://b2evolution.ionos-prisma.de/?evo_mail_function=cta2\" style=\"margin:3px;padding:6px 14px;border-radius:4px;text-decoration:none;display:inline-block;font-size:1em;color:#fff;background-color:#f0ad4e;border-color:#eea236;padding:6px 12px;text-align:center;white-space:nowrap;vertical-align:middle;cursor:pointer;user-select:none;background-image:none;border:1px solid #eea236;border-radius:4px;\">Call to action 2 warning button</a> <a href=\"http://b2evolution.ionos-prisma.de/?evo_mail_function=cta3\" style=\"margin:3px;padding:6px 14px;border-radius:4px;text-decoration:none;display:inline-block;font-size:1em;color:#333;background-color:#fff;border-color:#ccc;padding:6px 12px;text-align:center;white-space:nowrap;vertical-align:middle;cursor:pointer;user-select:none;background-image:none;border:1px solid #ccc;border-radius:4px;\">Call to action 3 default button</a><br />\n<a href=\"http://b2evolution.ionos-prisma.de/?evo_mail_function=cta1\">Call to action 1 link only</a></p>','Heading\n=======\n\nSub-heading\n-----------\n\n### H3 header\n\n#### H4 header ####\n\n> Email-style angle brackets\n> are used for blockquotes.\n\n> > And, they can be nested.\n\n> ##### Headers in blockquotes\n>\n> * You can quote a list.\n> * Etc.\n\n[This is a link](http://b2evolution.net/) if Links are turned on in the markdown plugin settings\n\nParagraphs are separated by a blank line.\n\n    This is a preformatted\n    code block.\n\nText attributes *Italic*, **bold**, `monospace`.\n\nShopping list:\n\n* apples\n* oranges\n* pears\n\nThe rain---not the reign---in Spain.\nButton examples:\n[button]This is a button[/button]\n[like]I like this[/like] [dislike]I don\'t like this[/dislike]\n[cta:1:info]Call to action 1 info button[/cta] [cta:2:warning]Call to action 2 warning button[/cta] [cta:3:default]Call to action 3 default button[/cta]\n[cta:1:link]Call to action 1 link only[/cta]',NULL,1,NULL,NULL,'default',0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,NULL,1,NULL,1,NULL,1,NULL,1,NULL,1,NULL,1),(2,'2020-02-09 19:45:00',1,'Another example','Another example','http://b2evolution.ionos-prisma.de/','<p>Hello $firstname_and_login$!</p>\n<p>Here are some news&#8230;</p>','Hello $firstname_and_login$!\r\n\r\nHere are some news...',NULL,1,NULL,NULL,'default',0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,NULL,1,NULL,1,NULL,1,NULL,1,NULL,1,NULL,1),(3,'2020-02-09 19:45:00',1,'Welcome & Activate','Activate your account: $login$','http://b2evolution.ionos-prisma.de/','<p>Hello $username$!</p>\n<p>You have recently registered a new account on <a href=\"http://b2evolution.ionos-prisma.de/\">This site</a> .</p>\n<p><b style=\"color:#d00\">You must activate this account by clicking below in order to be able to use all the site features.</b></p>\n<p>Your login is: $login$</p>\n<p>Your email is: $email$</p>\n<p><a href=\"http://b2evolution.ionos-prisma.de/htsrv/login.php?action=activateacc_ez&amp;userID=$user_ID$&amp;reminderKey=$reminder_key$\" style=\"margin:3px;padding:6px 14px;border-radius:4px;text-decoration:none;display:inline-block;font-size:1em;color:#fff;background-color:#337ab7;border-color:#2e6da4;padding:6px 12px;text-align:center;white-space:nowrap;vertical-align:middle;cursor:pointer;user-select:none;background-image:none;border:1px solid #2e6da4;border-radius:4px;\">Activate NOW</a></p>','Hello $username$!\r\n\r\nYou have recently registered a new account on <a href=\"http://b2evolution.ionos-prisma.de/\">This site</a> .\r\n\r\n<b style=\"color:#d00\">You must activate this account by clicking below in order to be able to use all the site features.</b>\r\n\r\nYour login is: $login$\r\n\r\nYour email is: $email$\r\n\r\n[activate:primary]Activate NOW[/activate]',NULL,1,NULL,NULL,'default',0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,NULL,1,NULL,1,NULL,1,NULL,1,NULL,1,NULL,1);
/*!40000 ALTER TABLE `b2ev_email__campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_email__campaign_send`
--

LOCK TABLES `b2ev_email__campaign_send` WRITE;
/*!40000 ALTER TABLE `b2ev_email__campaign_send` DISABLE KEYS */;
INSERT INTO `b2ev_email__campaign_send` VALUES (1,1,'ready_to_send',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'ready_to_send',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'ready_to_send',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b2ev_email__campaign_send` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_email__log`
--

LOCK TABLES `b2ev_email__log` WRITE;
/*!40000 ALTER TABLE `b2ev_email__log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_email__log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_email__newsletter`
--

LOCK TABLES `b2ev_email__newsletter` WRITE;
/*!40000 ALTER TABLE `b2ev_email__newsletter` DISABLE KEYS */;
INSERT INTO `b2ev_email__newsletter` VALUES (1,'News','Send me news about this site.',1,1,1,'anyone',NULL),(2,'Promotions','I want to receive ADs that may be relevant to my interests.',1,2,1,'anyone',NULL);
/*!40000 ALTER TABLE `b2ev_email__newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_email__newsletter_subscription`
--

LOCK TABLES `b2ev_email__newsletter_subscription` WRITE;
/*!40000 ALTER TABLE `b2ev_email__newsletter_subscription` DISABLE KEYS */;
INSERT INTO `b2ev_email__newsletter_subscription` VALUES (1,1,NULL,NULL,NULL,NULL,0,1,NULL,NULL);
/*!40000 ALTER TABLE `b2ev_email__newsletter_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_email__returns`
--

LOCK TABLES `b2ev_email__returns` WRITE;
/*!40000 ALTER TABLE `b2ev_email__returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_email__returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_files`
--

LOCK TABLES `b2ev_files` WRITE;
/*!40000 ALTER TABLE `b2ev_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_filetypes`
--

LOCK TABLES `b2ev_filetypes` WRITE;
/*!40000 ALTER TABLE `b2ev_filetypes` DISABLE KEYS */;
INSERT INTO `b2ev_filetypes` VALUES (1,'gif','GIF image','image/gif','file_image','image','any'),(2,'png','PNG image','image/png','file_image','image','any'),(3,'jpg jpeg','JPEG image','image/jpeg','file_image','image','any'),(4,'txt','Text file','text/plain','file_document','text','registered'),(5,'htm html','HTML file','text/html','file_www','browser','admin'),(6,'pdf','PDF file','application/pdf','file_pdf','browser','registered'),(7,'doc docx','Microsoft Word file','application/msword','file_doc','external','registered'),(8,'xls xlsx','Microsoft Excel file','application/vnd.ms-excel','file_xls','external','registered'),(9,'ppt pptx','Powerpoint','application/vnd.ms-powerpoint','file_ppt','external','registered'),(10,'pps','Slideshow','pps','file_pps','external','registered'),(11,'zip','ZIP archive','application/zip','file_zip','external','registered'),(12,'php php3 php4 php5 php6','PHP script','application/x-httpd-php','file_php','text','admin'),(13,'css','Style sheet','text/css','file_document','text','registered'),(14,'mp3','MPEG audio file','audio/mpeg','file_sound','browser','registered'),(15,'m4a','MPEG audio file','audio/x-m4a','file_sound','browser','registered'),(16,'mp4 f4v','MPEG video','video/mp4','file_video','browser','registered'),(17,'mov','Quicktime video','video/quicktime','file_video','browser','registered'),(18,'m4v','MPEG video file','video/x-m4v','file_video','browser','registered'),(19,'flv','Flash video file','video/x-flv','file_video','browser','registered'),(20,'swf','Flash video file','application/x-shockwave-flash','file_video','browser','admin'),(21,'webm','WebM video file','video/webm','file_video','browser','registered'),(22,'ogv','Ogg video file','video/ogg','file_video','browser','registered'),(23,'m3u8','M3U8 video file','application/x-mpegurl','file_video','browser','registered'),(24,'xml','XML file','application/xml','file_www','browser','admin'),(25,'md','Markdown text file','text/plain','file_document','text','registered'),(26,'csv','CSV file','text/plain','file_document','text','registered');
/*!40000 ALTER TABLE `b2ev_filetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_global__cache`
--

LOCK TABLES `b2ev_global__cache` WRITE;
/*!40000 ALTER TABLE `b2ev_global__cache` DISABLE KEYS */;
INSERT INTO `b2ev_global__cache` VALUES ('creds','a:3:{i:0;a:1:{s:0:\"\";a:2:{i:0;a:3:{i:0;i:6;i:1;s:19:\"http://evocore.net/\";i:2;a:3:{i:0;a:2:{i:0;i:2;i:1;s:13:\"PHP framework\";}i:1;a:2:{i:0;i:4;i:1;s:9:\"framework\";}i:2;a:2:{i:0;i:6;i:1;s:7:\"evoCore\";}}}i:1;a:3:{i:0;i:100;i:1;s:24:\"https://b2evolution.net/\";i:2;a:47:{i:0;a:2:{i:0;i:8;i:1;s:11:\"b2evolution\";}i:1;a:2:{i:0;i:10;i:1;s:5:\"b2evo\";}i:2;a:2:{i:0;i:12;i:1;s:2:\"b2\";}i:3;a:2:{i:0;i:14;i:1;s:3:\"CMS\";}i:4;a:2:{i:0;i:16;i:1;s:12:\"CMS software\";}i:5;a:2:{i:0;i:18;i:1;s:10:\"CMS engine\";}i:6;a:2:{i:0;i:20;i:1;s:15:\"b2evolution CMS\";}i:7;a:2:{i:0;i:22;i:1;s:8:\"Free CMS\";}i:8;a:2:{i:0;i:24;i:1;s:15:\"Open-Source CMS\";}i:9;a:2:{i:0;i:26;i:1;s:15:\"Open Source CMS\";}i:10;a:2:{i:0;i:28;i:1;s:10:\"Secure CMS\";}i:11;a:2:{i:0;i:30;i:1;s:12:\"Advanced CMS\";}i:12;a:2:{i:0;i:32;i:1;s:24:\"Content Mangement System\";}i:13;a:2:{i:0;i:34;i:1;s:10:\"Social CMS\";}i:14;a:2:{i:0;i:36;i:1;s:19:\"Social CMS software\";}i:15;a:2:{i:0;i:38;i:1;s:17:\"Social CMS engine\";}i:16;a:2:{i:0;i:40;i:1;s:23:\"Complete website engine\";}i:17;a:2:{i:0;i:42;i:1;s:15:\"Website builder\";}i:18;a:2:{i:0;i:44;i:1;s:16:\"Web Site Builder\";}i:19;a:2:{i:0;i:46;i:1;s:14:\"Website engine\";}i:20;a:2:{i:0;i:48;i:1;s:15:\"Web Site Engine\";}i:21;a:2:{i:0;i:50;i:1;s:16:\"Multiblog engine\";}i:22;a:2:{i:0;i:52;i:1;s:17:\"Multi-blog engine\";}i:23;a:2:{i:0;i:54;i:1;s:23:\"Multiple blogs solution\";}i:24;a:2:{i:0;i:56;i:1;s:26:\"Multiple blogs done right!\";}i:25;a:2:{i:0;i:58;i:1;s:13:\"Community CMS\";}i:26;a:2:{i:0;i:60;i:1;s:4:\"CCMS\";}i:27;a:2:{i:0;i:62;i:1;s:16:\"b2evolution CCMS\";}i:28;a:2:{i:0;i:64;i:1;s:21:\"Photo albums software\";}i:29;a:2:{i:0;i:66;i:1;s:22:\"Photo gallery software\";}i:30;a:2:{i:0;i:68;i:1;s:23:\"Online manual generator\";}i:31;a:2:{i:0;i:70;i:1;s:18:\"Community software\";}i:32;a:2:{i:0;i:72;i:1;s:15:\"Forums software\";}i:33;a:2:{i:0;i:74;i:1;s:20:\"CMS + user community\";}i:34;a:2:{i:0;i:76;i:1;s:12:\"CMS + forums\";}i:35;a:2:{i:0;i:78;i:1;s:21:\"CMS + email marketing\";}i:36;a:2:{i:0;i:80;i:1;s:20:\"Build your own site!\";}i:37;a:2:{i:0;i:82;i:1;s:23:\"Build your own website!\";}i:38;a:2:{i:0;i:84;i:1;s:21:\"Run your own website!\";}i:39;a:2:{i:0;i:86;i:1;s:13:\"Bootstrap CMS\";}i:40;a:2:{i:0;i:88;i:1;s:18:\"Bootstrap back-end\";}i:41;a:2:{i:0;i:90;i:1;s:18:\"CMS with Bootstrap\";}i:42;a:2:{i:0;i:92;i:1;s:7:\"RWD CMS\";}i:43;a:2:{i:0;i:94;i:1;s:14:\"Responsive CMS\";}i:44;a:2:{i:0;i:96;i:1;s:16:\"Open-source blog\";}i:45;a:2:{i:0;i:98;i:1;s:16:\"Free blog engine\";}i:46;a:2:{i:0;i:100;i:1;s:13:\"Blog software\";}}}}}i:1;a:1:{s:0:\"\";a:1:{i:0;a:2:{i:0;i:100;i:1;s:0:\"\";}}}i:2;a:1:{s:0:\"\";a:1:{i:0;a:2:{i:0;i:100;i:1;s:0:\"\";}}}}'),('evo_links','a:1:{s:0:\"\";a:1:{i:0;a:3:{i:0;i:100;i:1;s:24:\"https://b2evolution.net/\";i:2;a:50:{i:0;a:2:{i:0;i:1;i:1;s:22:\"powered by b2evolution\";}i:1;a:2:{i:0;i:3;i:1;s:26:\"powered by b2evolution CMS\";}i:2;a:2:{i:0;i:5;i:1;s:29:\"powered by an open-source CMS\";}i:3;a:2:{i:0;i:7;i:1;s:17:\"Multi-blog engine\";}i:4;a:2:{i:0;i:9;i:1;s:7:\"RWD CMS\";}i:5;a:2:{i:0;i:11;i:1;s:14:\"Responsive CMS\";}i:6;a:2:{i:0;i:13;i:1;s:13:\"Bootstrap CMS\";}i:7;a:2:{i:0;i:15;i:1;s:3:\"CMS\";}i:8;a:2:{i:0;i:17;i:1;s:15:\"Open-Source CMS\";}i:9;a:2:{i:0;i:19;i:1;s:16:\"Open-source blog\";}i:10;a:2:{i:0;i:21;i:1;s:15:\"Web Site Engine\";}i:11;a:2:{i:0;i:23;i:1;s:17:\"Social CMS engine\";}i:12;a:2:{i:0;i:25;i:1;s:23:\"Complete website engine\";}i:13;a:2:{i:0;i:27;i:1;s:23:\"Multiple blogs solution\";}i:14;a:2:{i:0;i:29;i:1;s:10:\"CMS engine\";}i:15;a:2:{i:0;i:31;i:1;s:23:\"Online manual generator\";}i:16;a:2:{i:0;i:33;i:1;s:18:\"Community software\";}i:17;a:2:{i:0;i:35;i:1;s:5:\"b2evo\";}i:18;a:2:{i:0;i:37;i:1;s:15:\"b2evolution CMS\";}i:19;a:2:{i:0;i:39;i:1;s:23:\"Build your own website!\";}i:20;a:2:{i:0;i:41;i:1;s:8:\"Free CMS\";}i:21;a:2:{i:0;i:43;i:1;s:21:\"Run your own website!\";}i:22;a:2:{i:0;i:45;i:1;s:10:\"Secure CMS\";}i:23;a:2:{i:0;i:47;i:1;s:12:\"Advanced CMS\";}i:24;a:2:{i:0;i:49;i:1;s:24:\"Content Mangement System\";}i:25;a:2:{i:0;i:51;i:1;s:10:\"Social CMS\";}i:26;a:2:{i:0;i:53;i:1;s:15:\"Forums software\";}i:27;a:2:{i:0;i:55;i:1;s:20:\"CMS + user community\";}i:28;a:2:{i:0;i:57;i:1;s:16:\"Multiblog engine\";}i:29;a:2:{i:0;i:59;i:1;s:21:\"CMS + email marketing\";}i:30;a:2:{i:0;i:61;i:1;s:16:\"Free blog engine\";}i:31;a:2:{i:0;i:63;i:1;s:13:\"Blog software\";}i:32;a:2:{i:0;i:65;i:1;s:11:\"b2evolution\";}i:33;a:2:{i:0;i:67;i:1;s:15:\"Website builder\";}i:34;a:2:{i:0;i:69;i:1;s:18:\"Bootstrap back-end\";}i:35;a:2:{i:0;i:71;i:1;s:18:\"CMS with Bootstrap\";}i:36;a:2:{i:0;i:73;i:1;s:2:\"b2\";}i:37;a:2:{i:0;i:75;i:1;s:16:\"Web Site Builder\";}i:38;a:2:{i:0;i:77;i:1;s:26:\"Multiple blogs done right!\";}i:39;a:2:{i:0;i:79;i:1;s:14:\"Website engine\";}i:40;a:2:{i:0;i:81;i:1;s:13:\"Community CMS\";}i:41;a:2:{i:0;i:83;i:1;s:4:\"CCMS\";}i:42;a:2:{i:0;i:85;i:1;s:16:\"b2evolution CCMS\";}i:43;a:2:{i:0;i:87;i:1;s:21:\"Photo albums software\";}i:44;a:2:{i:0;i:89;i:1;s:12:\"CMS software\";}i:45;a:2:{i:0;i:91;i:1;s:20:\"Build your own site!\";}i:46;a:2:{i:0;i:93;i:1;s:22:\"Photo gallery software\";}i:47;a:2:{i:0;i:95;i:1;s:19:\"Social CMS software\";}i:48;a:2:{i:0;i:97;i:1;s:12:\"CMS + forums\";}i:49;a:2:{i:0;i:100;i:1;s:15:\"Open Source CMS\";}}}}}'),('extra_msg','s:0:\"\";'),('feedhlp','a:1:{i:0;a:1:{s:0:\"\";a:1:{i:0;a:3:{i:0;i:100;i:1;s:46:\"http://webreference.fr/2006/08/30/rss_atom_xml\";i:2;a:2:{i:0;a:2:{i:0;i:16;i:1;s:11:\"More on RSS\";}i:1;a:2:{i:0;i:100;i:1;s:12:\"What is RSS?\";}}}}}}'),('updates','a:1:{i:0;a:4:{s:4:\"name\";s:27:\"You are already up-to-date!\";s:11:\"description\";s:157:\"You MAY run the auto-upgrade process in an attempt to repair a broken installation. Make sure you are not overwriting a newer version or some custom changes.\";s:7:\"version\";s:24:\"6.11.4-stable-2019-11-28\";s:3:\"url\";s:85:\"http://b2evolution.net/media/blogs/downloads/b2evolution-6.11.4-stable-2019-11-28.zip\";}}'),('version_status_color','s:5:\"green\";'),('version_status_msg','s:57:\"You are running the latest stable version of b2evolution.\";');
/*!40000 ALTER TABLE `b2ev_global__cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_groups`
--

LOCK TABLES `b2ev_groups` WRITE;
/*!40000 ALTER TABLE `b2ev_groups` DISABLE KEYS */;
INSERT INTO `b2ev_groups` VALUES (1,'Administrators','primary',10,'editall',0,'always','always',1,0,0,0,'edit'),(2,'Moderators','primary',8,'viewall',0,'always','always',1,0,0,0,'user'),(3,'Editors','primary',6,'user',0,'always','always',1,0,0,0,'none'),(4,'Normal Users','primary',4,'user',0,'always','always',0,0,0,0,'none'),(5,'Misbehaving/Suspect Users','primary',2,'user',0,'always','always',0,0,0,0,'none'),(6,'Spammers/Restricted Users','primary',1,'user',0,'always','always',0,0,0,0,'none');
/*!40000 ALTER TABLE `b2ev_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_groups__groupsettings`
--

LOCK TABLES `b2ev_groups__groupsettings` WRITE;
/*!40000 ALTER TABLE `b2ev_groups__groupsettings` DISABLE KEYS */;
INSERT INTO `b2ev_groups__groupsettings` VALUES (1,'comment_moderation_notif','full'),(1,'comment_subscription_notif','full'),(1,'cross_country_allow_contact','allowed'),(1,'cross_country_allow_profiles','allowed'),(1,'max_new_threads',''),(1,'perm_admin','normal'),(1,'perm_api','always'),(1,'perm_createblog','allowed'),(1,'perm_emails','edit'),(1,'perm_files','all'),(1,'perm_getblog','denied'),(1,'perm_import_root','edit'),(1,'perm_maintenance','upgrade'),(1,'perm_max_createblog_num',''),(1,'perm_messaging','delete'),(1,'perm_options','edit'),(1,'perm_orgs','edit'),(1,'perm_plugins_root','edit'),(1,'perm_polls','edit'),(1,'perm_shared_root','edit'),(1,'perm_skins_root','edit'),(1,'perm_slugs','edit'),(1,'perm_spamblacklist','edit'),(1,'perm_users','edit'),(1,'pm_notif','full'),(1,'post_assignment_notif','full'),(1,'post_moderation_notif','full'),(1,'post_subscription_notif','full'),(2,'comment_moderation_notif','short'),(2,'comment_subscription_notif','short'),(2,'cross_country_allow_contact','allowed'),(2,'cross_country_allow_profiles','allowed'),(2,'max_new_threads','10'),(2,'perm_admin','normal'),(2,'perm_api','always'),(2,'perm_createblog','allowed'),(2,'perm_emails','view'),(2,'perm_files','add'),(2,'perm_getblog','denied'),(2,'perm_import_root','none'),(2,'perm_maintenance','none'),(2,'perm_max_createblog_num',''),(2,'perm_messaging','write'),(2,'perm_options','view'),(2,'perm_orgs','create'),(2,'perm_plugins_root','none'),(2,'perm_polls','create'),(2,'perm_shared_root','add'),(2,'perm_skins_root','none'),(2,'perm_slugs','none'),(2,'perm_spamblacklist','edit'),(2,'perm_users','moderate'),(2,'pm_notif','short'),(2,'post_assignment_notif','short'),(2,'post_moderation_notif','short'),(2,'post_subscription_notif','short'),(3,'comment_moderation_notif','short'),(3,'comment_subscription_notif','short'),(3,'cross_country_allow_contact','allowed'),(3,'cross_country_allow_profiles','allowed'),(3,'max_new_threads','10'),(3,'perm_admin','restricted'),(3,'perm_api','always'),(3,'perm_createblog','denied'),(3,'perm_emails','none'),(3,'perm_files','edit_allowed'),(3,'perm_getblog','denied'),(3,'perm_import_root','none'),(3,'perm_maintenance','none'),(3,'perm_max_createblog_num',''),(3,'perm_messaging','write'),(3,'perm_options','none'),(3,'perm_orgs','create'),(3,'perm_plugins_root','none'),(3,'perm_polls','create'),(3,'perm_shared_root','view'),(3,'perm_skins_root','none'),(3,'perm_slugs','none'),(3,'perm_spamblacklist','view'),(3,'perm_users','none'),(3,'pm_notif','short'),(3,'post_assignment_notif','short'),(3,'post_moderation_notif','short'),(3,'post_subscription_notif','short'),(4,'comment_moderation_notif','short'),(4,'comment_subscription_notif','short'),(4,'cross_country_allow_contact','allowed'),(4,'cross_country_allow_profiles','allowed'),(4,'max_new_threads','5'),(4,'perm_admin','no_toolbar'),(4,'perm_api','always'),(4,'perm_createblog','denied'),(4,'perm_emails','none'),(4,'perm_files','add'),(4,'perm_getblog','denied'),(4,'perm_import_root','none'),(4,'perm_maintenance','none'),(4,'perm_max_createblog_num',''),(4,'perm_messaging','write'),(4,'perm_options','none'),(4,'perm_orgs','none'),(4,'perm_plugins_root','none'),(4,'perm_polls','none'),(4,'perm_shared_root','none'),(4,'perm_skins_root','none'),(4,'perm_slugs','none'),(4,'perm_spamblacklist','view'),(4,'perm_users','none'),(4,'pm_notif','short'),(4,'post_assignment_notif','short'),(4,'post_moderation_notif','short'),(4,'post_subscription_notif','short'),(5,'comment_moderation_notif','short'),(5,'comment_subscription_notif','short'),(5,'cross_country_allow_contact','denied'),(5,'cross_country_allow_profiles','denied'),(5,'max_new_threads','1'),(5,'perm_admin','no_toolbar'),(5,'perm_api','never'),(5,'perm_createblog','denied'),(5,'perm_emails','none'),(5,'perm_files','none'),(5,'perm_getblog','denied'),(5,'perm_import_root','none'),(5,'perm_maintenance','none'),(5,'perm_max_createblog_num',''),(5,'perm_messaging','write'),(5,'perm_options','none'),(5,'perm_orgs','none'),(5,'perm_plugins_root','none'),(5,'perm_polls','none'),(5,'perm_shared_root','none'),(5,'perm_skins_root','none'),(5,'perm_slugs','none'),(5,'perm_spamblacklist','none'),(5,'perm_users','none'),(5,'pm_notif','short'),(5,'post_assignment_notif','short'),(5,'post_moderation_notif','short'),(5,'post_subscription_notif','short'),(6,'comment_moderation_notif','short'),(6,'comment_subscription_notif','short'),(6,'cross_country_allow_contact','denied'),(6,'cross_country_allow_profiles','denied'),(6,'max_new_threads','1'),(6,'perm_admin','no_toolbar'),(6,'perm_api','never'),(6,'perm_createblog','denied'),(6,'perm_emails','none'),(6,'perm_files','none'),(6,'perm_getblog','denied'),(6,'perm_import_root','none'),(6,'perm_maintenance','none'),(6,'perm_max_createblog_num',''),(6,'perm_messaging','reply'),(6,'perm_options','none'),(6,'perm_orgs','none'),(6,'perm_plugins_root','none'),(6,'perm_polls','none'),(6,'perm_shared_root','none'),(6,'perm_skins_root','none'),(6,'perm_slugs','none'),(6,'perm_spamblacklist','none'),(6,'perm_users','none'),(6,'pm_notif','short'),(6,'post_assignment_notif','short'),(6,'post_moderation_notif','short'),(6,'post_subscription_notif','short');
/*!40000 ALTER TABLE `b2ev_groups__groupsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_hitlog`
--

LOCK TABLES `b2ev_hitlog` WRITE;
/*!40000 ALTER TABLE `b2ev_hitlog` DISABLE KEYS */;
INSERT INTO `b2ev_hitlog` VALUES (1,1,'2020-02-09 20:59:12','/','','','','standard','direct','',NULL,NULL,NULL,NULL,NULL,'212.227.221.140','browser',NULL,200,'GET'),(2,2,'2020-02-09 20:59:13','/','','','','standard','direct','',NULL,NULL,NULL,NULL,NULL,'212.227.221.140','browser',NULL,200,'GET'),(3,3,'2020-02-09 23:43:34','/','','','','standard','direct','',NULL,NULL,NULL,NULL,NULL,'217.160.152.35','browser',NULL,200,'GET'),(4,4,'2020-02-09 23:43:34','/','','','','standard','direct','',NULL,NULL,NULL,NULL,NULL,'217.160.152.35','browser',NULL,200,'GET'),(5,5,'2020-02-10 13:51:42','/','','','','standard','direct','',NULL,NULL,NULL,NULL,NULL,'212.227.221.142','browser',NULL,200,'GET'),(6,6,'2020-02-10 13:51:44','/','','','','standard','direct','',NULL,NULL,NULL,NULL,NULL,'212.227.221.142','browser',NULL,200,'GET'),(7,7,'2020-02-10 14:35:25','/','','','','standard','direct','',NULL,NULL,NULL,NULL,NULL,'212.227.221.143','browser',NULL,200,'GET'),(8,8,'2020-02-10 14:35:26','/','','','','standard','direct','',NULL,NULL,NULL,NULL,NULL,'212.227.221.143','browser',NULL,200,'GET'),(9,9,'2020-02-10 17:12:36','/','','','','standard','direct','',NULL,NULL,NULL,NULL,NULL,'217.160.152.33','browser',NULL,200,'GET'),(10,10,'2020-02-10 17:12:39','/','','','','standard','direct','',NULL,NULL,NULL,NULL,NULL,'217.160.152.33','browser',NULL,200,'GET');
/*!40000 ALTER TABLE `b2ev_hitlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_hits__aggregate`
--

LOCK TABLES `b2ev_hits__aggregate` WRITE;
/*!40000 ALTER TABLE `b2ev_hits__aggregate` DISABLE KEYS */;
INSERT INTO `b2ev_hits__aggregate` VALUES (1,'2020-02-09',0,'standard','direct','browser',2);
/*!40000 ALTER TABLE `b2ev_hits__aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_hits__aggregate_sessions`
--

LOCK TABLES `b2ev_hits__aggregate_sessions` WRITE;
/*!40000 ALTER TABLE `b2ev_hits__aggregate_sessions` DISABLE KEYS */;
INSERT INTO `b2ev_hits__aggregate_sessions` VALUES (1,'2020-02-09',0,2,0);
/*!40000 ALTER TABLE `b2ev_hits__aggregate_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_i18n_original_string`
--

LOCK TABLES `b2ev_i18n_original_string` WRITE;
/*!40000 ALTER TABLE `b2ev_i18n_original_string` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_i18n_original_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_i18n_translated_string`
--

LOCK TABLES `b2ev_i18n_translated_string` WRITE;
/*!40000 ALTER TABLE `b2ev_i18n_translated_string` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_i18n_translated_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__item`
--

LOCK TABLES `b2ev_items__item` WRITE;
/*!40000 ALTER TABLE `b2ev_items__item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__item_settings`
--

LOCK TABLES `b2ev_items__item_settings` WRITE;
/*!40000 ALTER TABLE `b2ev_items__item_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__item_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__itemtag`
--

LOCK TABLES `b2ev_items__itemtag` WRITE;
/*!40000 ALTER TABLE `b2ev_items__itemtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__itemtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__prerendering`
--

LOCK TABLES `b2ev_items__prerendering` WRITE;
/*!40000 ALTER TABLE `b2ev_items__prerendering` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__prerendering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__status`
--

LOCK TABLES `b2ev_items__status` WRITE;
/*!40000 ALTER TABLE `b2ev_items__status` DISABLE KEYS */;
INSERT INTO `b2ev_items__status` VALUES (1,'New'),(2,'In Progress'),(3,'Duplicate'),(4,'Not A Bug'),(5,'In Review'),(6,'Fixed'),(7,'Closed'),(8,'OK ');
/*!40000 ALTER TABLE `b2ev_items__status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__status_type`
--

LOCK TABLES `b2ev_items__status_type` WRITE;
/*!40000 ALTER TABLE `b2ev_items__status_type` DISABLE KEYS */;
INSERT INTO `b2ev_items__status_type` VALUES (1,1),(3,1),(5,1),(8,1),(1,2),(3,2),(5,2),(8,2),(1,3),(3,3),(5,3),(8,3),(1,4),(3,4),(5,4),(8,4),(1,5),(3,5),(5,5),(8,5),(1,6),(3,6),(5,6),(8,6),(1,7),(3,7),(5,7),(8,7),(1,8),(3,8),(5,8),(8,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(1,10),(3,10),(5,10),(8,10),(1,11),(3,11),(5,11),(8,11),(1,12),(3,12),(5,12),(8,12),(1,13),(3,13),(5,13),(8,13),(1,14),(3,14),(5,14),(8,14),(1,15),(3,15),(5,15),(8,15),(1,16),(3,16),(5,16),(8,16),(1,17),(3,17),(5,17),(8,17),(1,18),(3,18),(5,18),(8,18),(1,19),(3,19),(5,19),(8,19),(1,20),(3,20),(5,20),(8,20);
/*!40000 ALTER TABLE `b2ev_items__status_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__subscriptions`
--

LOCK TABLES `b2ev_items__subscriptions` WRITE;
/*!40000 ALTER TABLE `b2ev_items__subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__tag`
--

LOCK TABLES `b2ev_items__tag` WRITE;
/*!40000 ALTER TABLE `b2ev_items__tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__type`
--

LOCK TABLES `b2ev_items__type` WRITE;
/*!40000 ALTER TABLE `b2ev_items__type` DISABLE KEYS */;
INSERT INTO `b2ev_items__type` VALUES (1,'Post',NULL,'post','single',0,0,NULL,'never','required','optional',0,'never','optional',1,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,0,'optional','standard',NULL,NULL),(2,'Recipe',NULL,'post','recipe',0,0,NULL,'never','required','optional',0,'never','optional',1,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,0,'optional','standard',NULL,NULL),(3,'Post with Custom Fields',NULL,'post','single',0,0,NULL,'never','required','optional',0,'never','optional',1,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,0,'optional','standard',NULL,NULL),(4,'Child Post',NULL,'post','single',0,0,NULL,'never','required','optional',0,'required','optional',1,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,0,'optional','standard',NULL,NULL),(5,'Podcast Episode',NULL,'post','single',0,0,NULL,'never','required','optional',1,'never','optional',1,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,0,'optional','standard',NULL,NULL),(6,'Photo Album',NULL,'post','single',0,0,NULL,'never','required','optional',0,'never','optional',1,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,0,'optional','standard',NULL,NULL),(7,'Manual Page',NULL,'post','single',0,0,NULL,'optional','required','optional',0,'never','optional',0,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,0,'optional','standard',NULL,NULL),(8,'Forum Topic',NULL,'post','single',0,0,NULL,'never','required','optional',0,'never','optional',0,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,0,'optional','standard',NULL,NULL),(9,'Bug Report',NULL,'post','single',0,0,NULL,'never','required','optional',0,'never','optional',0,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,0,'optional','standard',NULL,NULL),(10,'Standalone Page',NULL,'page','page',0,0,NULL,'never','required','optional',0,'never','optional',1,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',0,NULL,0,1,0,'optional','restricted',NULL,NULL),(11,'Intro-Front',NULL,'intro-front',NULL,0,0,NULL,'never','required','optional',0,'never','optional',1,0,1,'optional','optional','optional','optional','optional',0,'never','never','never','never','never',1,NULL,0,1,1,'optional','restricted',NULL,NULL),(12,'Intro-Main',NULL,'intro-main',NULL,0,0,NULL,'never','required','optional',0,'never','optional',1,0,1,'optional','optional','optional','optional','optional',0,'never','never','never','never','never',1,NULL,0,1,1,'optional','restricted',NULL,NULL),(13,'Intro-Cat',NULL,'intro-cat',NULL,0,0,NULL,'never','required','optional',0,'never','optional',1,0,1,'optional','optional','optional','optional','optional',0,'never','never','never','never','never',1,NULL,0,1,1,'optional','restricted',NULL,NULL),(14,'Intro-Tag',NULL,'intro-tag',NULL,0,0,NULL,'never','required','optional',0,'never','optional',1,0,1,'optional','optional','optional','optional','optional',0,'never','never','never','never','never',1,NULL,0,1,1,'optional','restricted',NULL,NULL),(15,'Intro-Sub',NULL,'intro-sub',NULL,0,0,NULL,'never','required','optional',0,'never','optional',1,0,1,'optional','optional','optional','optional','optional',0,'never','never','never','never','never',1,NULL,0,1,1,'optional','restricted',NULL,NULL),(16,'Intro-All',NULL,'intro-all',NULL,0,0,NULL,'never','required','optional',0,'never','optional',1,0,1,'optional','optional','optional','optional','optional',0,'never','never','never','never','never',1,NULL,0,1,1,'optional','restricted',NULL,NULL),(17,'Content Block',NULL,'content-block',NULL,0,0,NULL,'never','required','optional',0,'never','optional',1,0,1,'optional','optional','optional','optional','optional',0,'never','never','never','never','never',0,NULL,0,1,0,'optional','standard',NULL,NULL),(18,'Sidebar link',NULL,'special',NULL,0,0,NULL,'never','required','optional',0,'never','optional',1,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,1,'optional','admin',NULL,NULL),(19,'Advertisement',NULL,'special',NULL,0,0,NULL,'never','required','optional',0,'never','optional',1,1,1,'optional','optional','optional','optional','optional',1,'never','never','never','never','never',1,NULL,0,1,0,'optional','admin',NULL,NULL),(20,'Terms & Conditions','Use this post type for terms & conditions of the site.','special',NULL,0,0,NULL,'never','required','never',0,'never','required',1,0,1,'never','never','never','never','never',0,'never','never','never','never','never',0,NULL,0,0,0,'never','admin',NULL,NULL);
/*!40000 ALTER TABLE `b2ev_items__type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__type_coll`
--

LOCK TABLES `b2ev_items__type_coll` WRITE;
/*!40000 ALTER TABLE `b2ev_items__type_coll` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__type_coll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__type_custom_field`
--

LOCK TABLES `b2ev_items__type_custom_field` WRITE;
/*!40000 ALTER TABLE `b2ev_items__type_custom_field` DISABLE KEYS */;
INSERT INTO `b2ev_items__type_custom_field` VALUES (1,3,'Image 1','image_1','image',1,'Enter a link ID',1,'fit-192x192',NULL,'right nowrap','center','linkpermzoom',0,NULL,'never','never',NULL,NULL,0),(2,3,'First numeric field','first_numeric_field','double',2,'Enter a number',1,NULL,NULL,'right nowrap','right','nolink',0,NULL,'differences','never',NULL,NULL,0),(3,3,'Second numeric field','second_numeric_field','double',4,'Enter a number',1,NULL,NULL,'right nowrap','right','nolink',0,NULL,'differences','never',NULL,NULL,0),(4,3,'USD Price','usd_price','double',8,'Enter a number',1,'$ 0 0.00',NULL,'right nowrap','right','nolink',0,NULL,'differences','lowest',NULL,NULL,0),(5,3,'EUR Price','eur_price','double',9,'Enter a number',1,'0 0.00 €',NULL,'right nowrap','right','nolink',0,NULL,'differences','lowest',NULL,NULL,0),(6,3,'First string field','first_string_field','varchar',3,'Enter a string',1,NULL,NULL,'right nowrap','center','nolink',0,NULL,'differences','never',NULL,NULL,0),(7,3,'Multiline plain text field','multiline_plain_text_field','text',6,'Enter multiple lines',1,NULL,NULL,'right nowrap','center','nolink',0,NULL,'differences','never',NULL,NULL,0),(8,3,'Multiline HTML field','multiline_html_field','html',5,'Enter HTML code',1,NULL,NULL,'right nowrap','center','nolink',0,NULL,'differences','never',NULL,NULL,0),(9,3,'URL field','url_field','url',7,'Enter an URL (absolute or relative)',1,NULL,NULL,'right nowrap','center','fieldurl',0,NULL,'differences','never',NULL,NULL,0),(10,3,'Checkmark field','checkmark_field','double',10,'1 = Yes; 0 = No',1,'#yes#;;#no#;n/a',NULL,'right nowrap','right','nolink',0,NULL,'differences','never',NULL,NULL,0),(11,4,'Image 1','image_1','image',1,'Enter a link ID',1,'fit-192x192',NULL,'right nowrap','center','linkpermzoom',0,NULL,'never','never',NULL,NULL,0),(12,4,'First numeric field','first_numeric_field','double',2,'Enter a number',1,NULL,NULL,'right nowrap','right','nolink',0,NULL,'differences','never',NULL,NULL,0),(13,4,'First string field','first_string_field','varchar',3,'Enter a string',1,NULL,NULL,'right nowrap','center','nolink',0,NULL,'differences','never',NULL,NULL,0),(14,4,'Checkmark field','checkmark_field','double',4,'1 = Yes; 0 = No',1,'#yes#;;#no#;n/a',NULL,'right nowrap','right','nolink',0,NULL,'differences','never',NULL,NULL,0),(15,2,'Course','course','varchar',1,'E-g: \"Dessert\"',1,NULL,NULL,'','','nolink',0,NULL,'differences','never',NULL,NULL,0),(16,2,'Cuisine','cuisine','varchar',2,'E-g: \"Italian\"',1,NULL,NULL,'','','nolink',0,NULL,'differences','never',NULL,NULL,0),(17,2,'Servings','servings','double',3,'people',1,'0 people',NULL,'','','nolink',0,NULL,'differences','never',NULL,NULL,0),(18,2,'Prep Time','prep_time','double',4,'minutes',1,'0 minutes',NULL,'','','nolink',0,NULL,'differences','never',NULL,NULL,0),(19,2,'Cook Time','cook_time','double',5,'minutes',1,'0 minutes',NULL,'','','nolink',0,NULL,'differences','never',NULL,NULL,0),(20,2,'Passive Time','passive_time','double',6,'minutes',1,'0 minutes',NULL,'','','nolink',0,NULL,'differences','never',NULL,NULL,0),(21,2,'Total time','total_time','computed',7,NULL,1,'0 minutes','$prep_time$ + $cook_time$ + $passive_time$','','','nolink',0,NULL,'differences','never',NULL,NULL,0),(22,2,'Ingredients','ingredients','text',8,NULL,1,NULL,NULL,'','','nolink',0,NULL,'differences','never',NULL,NULL,0);
/*!40000 ALTER TABLE `b2ev_items__type_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__user_data`
--

LOCK TABLES `b2ev_items__user_data` WRITE;
/*!40000 ALTER TABLE `b2ev_items__user_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__version`
--

LOCK TABLES `b2ev_items__version` WRITE;
/*!40000 ALTER TABLE `b2ev_items__version` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__version_custom_field`
--

LOCK TABLES `b2ev_items__version_custom_field` WRITE;
/*!40000 ALTER TABLE `b2ev_items__version_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__version_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__version_link`
--

LOCK TABLES `b2ev_items__version_link` WRITE;
/*!40000 ALTER TABLE `b2ev_items__version_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__version_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_items__votes`
--

LOCK TABLES `b2ev_items__votes` WRITE;
/*!40000 ALTER TABLE `b2ev_items__votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_items__votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_links`
--

LOCK TABLES `b2ev_links` WRITE;
/*!40000 ALTER TABLE `b2ev_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_links__vote`
--

LOCK TABLES `b2ev_links__vote` WRITE;
/*!40000 ALTER TABLE `b2ev_links__vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_links__vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_locales`
--

LOCK TABLES `b2ev_locales` WRITE;
/*!40000 ALTER TABLE `b2ev_locales` DISABLE KEYS */;
INSERT INTO `b2ev_locales` VALUES ('en-US','m/d/y','m/d/Y','M d, Y','m/d/y','h:i:s a','h:i a','H:i:s',0,'English (US) utf-8','en_US',1,'',1);
/*!40000 ALTER TABLE `b2ev_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_messaging__contact`
--

LOCK TABLES `b2ev_messaging__contact` WRITE;
/*!40000 ALTER TABLE `b2ev_messaging__contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_messaging__contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_messaging__contact_groups`
--

LOCK TABLES `b2ev_messaging__contact_groups` WRITE;
/*!40000 ALTER TABLE `b2ev_messaging__contact_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_messaging__contact_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_messaging__contact_groupusers`
--

LOCK TABLES `b2ev_messaging__contact_groupusers` WRITE;
/*!40000 ALTER TABLE `b2ev_messaging__contact_groupusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_messaging__contact_groupusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_messaging__message`
--

LOCK TABLES `b2ev_messaging__message` WRITE;
/*!40000 ALTER TABLE `b2ev_messaging__message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_messaging__message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_messaging__prerendering`
--

LOCK TABLES `b2ev_messaging__prerendering` WRITE;
/*!40000 ALTER TABLE `b2ev_messaging__prerendering` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_messaging__prerendering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_messaging__thread`
--

LOCK TABLES `b2ev_messaging__thread` WRITE;
/*!40000 ALTER TABLE `b2ev_messaging__thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_messaging__thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_messaging__threadstatus`
--

LOCK TABLES `b2ev_messaging__threadstatus` WRITE;
/*!40000 ALTER TABLE `b2ev_messaging__threadstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_messaging__threadstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_plugin_captcha_qstn_13_ip_question`
--

LOCK TABLES `b2ev_plugin_captcha_qstn_13_ip_question` WRITE;
/*!40000 ALTER TABLE `b2ev_plugin_captcha_qstn_13_ip_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_plugin_captcha_qstn_13_ip_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_plugin_captcha_qstn_13_questions`
--

LOCK TABLES `b2ev_plugin_captcha_qstn_13_questions` WRITE;
/*!40000 ALTER TABLE `b2ev_plugin_captcha_qstn_13_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_plugin_captcha_qstn_13_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_pluginevents`
--

LOCK TABLES `b2ev_pluginevents` WRITE;
/*!40000 ALTER TABLE `b2ev_pluginevents` DISABLE KEYS */;
INSERT INTO `b2ev_pluginevents` VALUES (1,'AdminDisplayToolbar',1),(1,'DisplayCommentToolbar',1),(2,'FilterCommentContent',1),(2,'FilterEmailContent',1),(2,'FilterMsgContent',1),(2,'RenderItemAsHtml',1),(3,'FilterCommentContent',1),(3,'FilterEmailContent',1),(3,'FilterMsgContent',1),(3,'RenderEmailAsHtml',1),(3,'RenderItemAsHtml',1),(3,'RenderMessageAsHtml',1),(4,'FilterCommentContent',1),(4,'FilterEmailContent',1),(4,'FilterMsgContent',1),(4,'RenderItemAsHtml',1),(4,'RenderItemAsXml',1),(5,'SkinTag',1),(6,'SkinTag',1),(7,'AdminDisplayToolbar',1),(7,'DisplayCommentToolbar',1),(7,'DisplayEmailToolbar',1),(7,'DisplayMessageToolbar',1),(7,'FilterCommentContent',1),(7,'FilterEmailContent',1),(7,'FilterMsgContent',1),(7,'RenderItemAsHtml',1),(7,'RenderItemAsXml',1),(8,'ItemSendPing',1),(9,'ItemSendPing',1),(10,'AdminDisplayEditorButton',1),(10,'AdminEndHtmlHead',1),(10,'DisplayEditorButton',1),(10,'SkinBeginHtmlHead',1),(11,'ItemSendPing',1),(11,'SkinBeginHtmlHead',1),(12,'AdminEndHtmlHead',1),(12,'RenderCommentAttachment',1),(12,'RenderItemAttachment',1),(12,'SkinBeginHtmlHead',1),(13,'RequestCaptcha',1),(13,'ValidateCaptcha',1),(14,'AppendHitLog',0),(14,'BeforeCommentFormInsert',1),(14,'BeforeTrackbackInsert',1),(14,'CommentFormSent',1),(14,'FilterCommentAuthor',1),(14,'FilterCommentAuthorUrl',1),(14,'FilterCommentContent',1),(14,'GetSpamKarmaForComment',1),(15,'AdminAfterUsersList',1),(15,'AdminToolAction',1),(15,'AdminToolPayload',1),(15,'AfterCommentInsert',1),(15,'AfterLoginRegisteredUser',1),(15,'AfterUserInsert',1),(15,'AfterUserRegistration',1),(15,'BeforeBlockableAction',1),(15,'DisplayRegisterFormBefore',1),(15,'GetAdditionalColumnsTable',1),(16,'AdminEndHtmlHead',1),(16,'RenderCommentAttachment',1),(16,'RenderItemAttachment',1),(16,'RenderURL',1),(16,'SkinBeginHtmlHead',1),(17,'AdminEndHtmlHead',1),(17,'RenderCommentAttachment',1),(17,'RenderItemAttachment',1),(17,'SkinBeginHtmlHead',1),(18,'AfterFileUpload',1),(18,'BeforeThumbCreate',1),(19,'ItemSendPing',1),(20,'CommentFormSent',1),(20,'EmailFormSent',1),(20,'FilterCommentContent',1),(20,'FilterEmailContent',1),(20,'FilterItemContents',1),(20,'FilterMsgContent',1),(20,'MessageThreadFormSent',1),(20,'RenderItemAsHtml',1),(20,'UnfilterItemContents',1),(21,'AdminDisplayToolbar',1),(21,'DisplayCommentToolbar',1),(21,'DisplayEmailToolbar',1),(21,'DisplayMessageToolbar',1),(21,'FilterCommentContent',1),(21,'FilterEmailContent',1),(21,'FilterMsgContent',1),(21,'RenderEmailAsHtml',1),(21,'RenderItemAsHtml',1),(21,'RenderItemAsXml',1),(21,'RenderMessageAsHtml',1),(22,'AdminEndHtmlHead',1),(22,'DisplayItemAsHtml',1),(22,'DisplayItemAsXml',1),(22,'FilterCommentContent',1),(22,'FilterEmailContent',1),(22,'FilterMsgContent',1),(23,'AdminDisplayToolbar',1),(23,'AdminEndHtmlHead',1),(23,'CommentFormSent',1),(23,'DisplayCommentToolbar',1),(23,'DisplayEmailToolbar',1),(23,'DisplayMessageToolbar',1),(23,'EmailFormSent',1),(23,'FilterCommentContent',1),(23,'FilterEmailContent',1),(23,'FilterItemContents',1),(23,'FilterMsgContent',1),(23,'MessageThreadFormSent',1),(23,'RenderItemAsHtml',1),(23,'SkinBeginHtmlHead',1),(23,'UnfilterItemContents',1),(24,'AdminDisplayToolbar',1),(24,'AdminEndHtmlHead',1),(24,'BeforeCommentFormInsert',1),(24,'CommentFormSent',1),(24,'DisplayCommentToolbar',1),(24,'DisplayEmailToolbar',1),(24,'DisplayMessageToolbar',1),(24,'EmailFormSent',1),(24,'FilterCommentContent',1),(24,'FilterEmailContent',1),(24,'FilterItemContents',1),(24,'FilterMsgContent',1),(24,'MessageThreadFormSent',1),(24,'RenderItemAsHtml',1),(24,'RenderItemAsXml',1),(24,'SkinBeginHtmlHead',1),(24,'UnfilterItemContents',1),(25,'AdminDisplayToolbar',1),(25,'DisplayCommentToolbar',1),(25,'DisplayEmailToolbar',1),(25,'DisplayItemAsHtml',1),(25,'DisplayMessageToolbar',1),(25,'FilterCommentContent',1),(25,'FilterEmailContent',1),(25,'FilterMsgContent',1),(25,'PrependCommentInsertTransact',1),(25,'PrependCommentUpdateTransact',1),(25,'PrependEmailInsertTransact',1),(25,'PrependEmailUpdateTransact',1),(25,'PrependItemInsertTransact',1),(25,'PrependItemUpdateTransact',1),(25,'PrependMessageInsertTransact',1),(25,'RenderEmailAsHtml',1),(25,'RenderItemAsHtml',1),(25,'RenderMessageAsHtml',1),(26,'AdminEndHtmlHead',1),(26,'FilterCommentContent',1),(26,'FilterEmailContent',1),(26,'FilterMsgContent',1),(26,'RenderItemAsHtml',1),(26,'SkinBeginHtmlHead',1),(27,'AdminDisplayToolbar',1),(27,'DisplayCommentToolbar',1),(27,'DisplayEmailToolbar',1),(27,'DisplayMessageToolbar',1),(27,'FilterCommentContent',1),(27,'FilterEmailContent',1),(27,'FilterMsgContent',1),(27,'InitCollectionKinds',1),(27,'RenderItemAsHtml',1),(28,'AdminEndHtmlHead',1),(28,'FilterCommentContent',1),(28,'FilterEmailContent',1),(28,'FilterMsgContent',1),(28,'PrepareForRenderCommentAttachment',1),(28,'PrepareForRenderItemAttachment',1),(28,'RenderEmailAsHtml',1),(28,'RenderItemAsHtml',1),(28,'RenderItemAsXml',1),(28,'RenderMessageAsHtml',1),(28,'SkinBeginHtmlHead',1),(29,'AdminDisplayToolbar',1),(29,'AdminEndHtmlHead',1),(29,'DisplayCommentToolbar',1),(29,'DisplayEmailToolbar',1),(29,'DisplayMessageToolbar',1),(29,'FilterCommentContent',1),(29,'FilterEmailContent',1),(29,'FilterMsgContent',1),(29,'RenderItemAsHtml',1),(29,'SkinBeginHtmlHead',1),(30,'SkinTag',1),(30,'WidgetBeginSettingsForm',1),(31,'AdminToolPayload',1),(32,'AdminDisplayToolbar',1),(33,'FilterCommentContent',1),(33,'FilterEmailContent',1),(33,'FilterMsgContent',1),(33,'RenderEmailAsHtml',1),(33,'RenderItemAsHtml',1),(33,'RenderItemAsXml',1),(33,'RenderMessageAsHtml',1),(34,'BeforeSkinWrapper',1),(35,'AdminDisplayToolbar',1),(35,'DisplayCommentToolbar',1),(35,'FilterCommentContent',1),(35,'FilterEmailContent',1),(35,'FilterMsgContent',1),(35,'RenderEmailAsHtml',1),(35,'RenderItemAsHtml',1),(35,'RenderMessageAsHtml',1),(36,'AdminDisplayToolbar',1),(36,'DisplayCommentToolbar',1),(36,'DisplayEmailToolbar',1),(36,'DisplayItemAsHtml',1),(36,'DisplayMessageToolbar',1),(36,'FilterCommentContent',1),(36,'FilterEmailContent',1),(36,'FilterMsgContent',1),(36,'RenderEmailAsHtml',1),(36,'RenderItemAsHtml',1),(37,'AdminDisplayToolbar',1),(37,'DisplayCommentToolbar',1),(37,'DisplayEmailToolbar',1),(37,'DisplayMessageToolbar',1),(38,'DisplayEmailToolbar',1),(38,'DisplayImageInlineTagForm',1),(38,'FilterCommentContent',1),(38,'FilterEmailContent',1),(38,'FilterMsgContent',1),(38,'GetImageInlineTags',1),(38,'GetInsertImageInlineTagJavaScript',1),(38,'InitImageInlineTagForm',1),(38,'RenderEmailAsHtml',1),(38,'RenderInlineTags',1),(38,'RenderItemAsHtml',1),(39,'ItemSendPing',1),(40,'AdminEndHtmlHead',1),(40,'FilterCommentContent',1),(40,'FilterEmailContent',1),(40,'FilterMsgContent',1),(40,'RenderItemAsHtml',1),(40,'SkinBeginHtmlHead',1),(41,'FilterCommentContent',1),(41,'FilterEmailContent',1),(41,'FilterMsgContent',1),(41,'RenderEmailAsHtml',1),(41,'RenderItemAsHtml',1),(41,'RenderMessageAsHtml',1),(41,'SkinBeginHtmlHead',1),(41,'SkinTag',1);
/*!40000 ALTER TABLE `b2ev_pluginevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_plugins`
--

LOCK TABLES `b2ev_plugins` WRITE;
/*!40000 ALTER TABLE `b2ev_plugins` DISABLE KEYS */;
INSERT INTO `b2ev_plugins` VALUES (1,30,'quicktags_plugin','b2evQTag','6.11.4',NULL,NULL,'enabled',1),(2,80,'auto_p_plugin','b2WPAutP','6.11.4',NULL,NULL,'enabled',1),(3,63,'autolinks_plugin','b2evALnk','6.11.4',NULL,NULL,'enabled',1),(4,90,'texturize_plugin','b2WPTxrz','6.11.4',NULL,NULL,'enabled',1),(5,20,'calendar_plugin','evo_Calr','6.11.4',NULL,NULL,'enabled',1),(6,50,'archives_plugin','evo_Arch','6.11.4',NULL,NULL,'enabled',1),(7,65,'videoplug_plugin','evo_videoplug','6.11.4',NULL,NULL,'enabled',1),(8,50,'ping_b2evonet_plugin','ping_b2evonet','6.11.4',NULL,NULL,'enabled',1),(9,50,'ping_pingomatic_plugin','ping_pingomatic','6.11.4',NULL,NULL,'enabled',1),(10,10,'tinymce_plugin','evo_TinyMCE','6.11.4',NULL,NULL,'enabled',1),(11,50,'twitter_plugin','evo_twitter','6.11.4',NULL,NULL,'enabled',1),(12,80,'flowplayer_plugin','b2evFlwP','6.11.4',NULL,NULL,'enabled',1),(13,50,'captcha_qstn_plugin','captcha_qstn','6.11.4',NULL,NULL,'needs_config',1),(14,60,'basic_antispam_plugin','b2evBAspm','6.11.4',NULL,NULL,'enabled',1),(15,45,'geoip_plugin','evo_GeoIP','6.11.4',NULL,NULL,'needs_config',1),(16,80,'html5_mediaelementjs_plugin','b2evH5MP','6.11.4',NULL,NULL,'enabled',1),(17,80,'html5_videojs_plugin','b2evH5VJSP','6.11.4',NULL,NULL,'enabled',1),(18,10,'watermark_plugin','evo_watermark','6.11.4',NULL,NULL,'disabled',1),(19,50,'generic_ping_plugin','b2evGPing','6.11.4',NULL,NULL,'needs_config',1),(20,8,'escapecode_plugin','escape_code','6.11.4',NULL,NULL,'enabled',1),(21,50,'bbcode_plugin','b2evBBco','6.11.4',NULL,NULL,'disabled',1),(22,55,'star_plugin','b2evStar','6.11.4',NULL,NULL,'disabled',1),(23,27,'prism_plugin','evo_prism','6.11.4',NULL,NULL,'disabled',1),(24,27,'code_highlight_plugin','evo_code','6.11.4',NULL,NULL,'disabled',1),(25,35,'shortlinks_plugin','b2evWiLi','6.11.4',NULL,NULL,'enabled',1),(26,15,'wikitables_plugin','b2evWiTa','6.11.4',NULL,NULL,'enabled',1),(27,20,'markdown_plugin','b2evMark','6.11.4',NULL,NULL,'enabled',1),(28,95,'infodots_plugin','b2evoDot','6.11.4',NULL,NULL,'disabled',1),(29,100,'widescroll_plugin','evo_widescroll','6.11.4',NULL,NULL,'enabled',1),(30,20,'facebook_plugin','evo_facebook','6.11.4',NULL,NULL,'enabled',1),(31,94,'bookmarklet_plugin','cafeBkmk','6.11.4',NULL,NULL,'enabled',1),(32,40,'shortcodes_plugin','evo_shortcodes','6.11.4',NULL,NULL,'enabled',1),(33,105,'adjust_headings_plugin','h_levels','6.11.4',NULL,NULL,'disabled',1),(34,1,'cookie_consent_plugin','cookie_consent','6.11.4',NULL,NULL,'disabled',1),(35,17,'custom_tags_plugin','b2evCTag','6.11.4',NULL,NULL,'enabled',1),(36,65,'polls_plugin','evo_poll','6.11.4',NULL,NULL,'enabled',1),(37,50,'inlines_plugin','evo_inlines','6.9.4',NULL,NULL,'enabled',1),(38,50,'email_elements_plugin','b2evEmailEl','6.11.4',NULL,NULL,'enabled',1),(39,50,'webmention_plugin','webmention','6.10.6',NULL,NULL,'enabled',1),(40,33,'auto_anchors_plugin','auto_anchors','7.0.1',NULL,NULL,'enabled',1),(41,110,'table_contents_plugin','b2evoTOC','6.11.4',NULL,NULL,'enabled',1);
/*!40000 ALTER TABLE `b2ev_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_pluginsettings`
--

LOCK TABLES `b2ev_pluginsettings` WRITE;
/*!40000 ALTER TABLE `b2ev_pluginsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_pluginsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_pluginusersettings`
--

LOCK TABLES `b2ev_pluginusersettings` WRITE;
/*!40000 ALTER TABLE `b2ev_pluginusersettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_pluginusersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_polls__answer`
--

LOCK TABLES `b2ev_polls__answer` WRITE;
/*!40000 ALTER TABLE `b2ev_polls__answer` DISABLE KEYS */;
INSERT INTO `b2ev_polls__answer` VALUES (1,1,3),(1,1,5),(1,1,6),(1,2,2),(1,2,4),(1,2,5),(1,3,1),(1,3,3),(1,3,5),(1,4,2),(1,4,3),(1,4,6),(1,5,1),(1,5,5),(1,5,6),(1,6,1),(1,6,2),(1,6,3),(1,6,5),(1,7,2),(1,7,5);
/*!40000 ALTER TABLE `b2ev_polls__answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_polls__option`
--

LOCK TABLES `b2ev_polls__option` WRITE;
/*!40000 ALTER TABLE `b2ev_polls__option` DISABLE KEYS */;
INSERT INTO `b2ev_polls__option` VALUES (1,1,'Multiple blogs',1),(2,1,'Photo Galleries',2),(3,1,'Forums',3),(4,1,'Online Manuals',4),(5,1,'Lists / E-mailing',5),(6,1,'Easy Maintenance',6);
/*!40000 ALTER TABLE `b2ev_polls__option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_polls__question`
--

LOCK TABLES `b2ev_polls__question` WRITE;
/*!40000 ALTER TABLE `b2ev_polls__question` DISABLE KEYS */;
INSERT INTO `b2ev_polls__question` VALUES (1,1,'What are your favorite b2evolution features?',3);
/*!40000 ALTER TABLE `b2ev_polls__question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_postcats`
--

LOCK TABLES `b2ev_postcats` WRITE;
/*!40000 ALTER TABLE `b2ev_postcats` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_postcats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_regional__city`
--

LOCK TABLES `b2ev_regional__city` WRITE;
/*!40000 ALTER TABLE `b2ev_regional__city` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_regional__city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_regional__country`
--

LOCK TABLES `b2ev_regional__country` WRITE;
/*!40000 ALTER TABLE `b2ev_regional__country` DISABLE KEYS */;
INSERT INTO `b2ev_regional__country` VALUES (1,'af','Afghanistan',1,1,0,NULL,0),(2,'ax','Aland Islands',2,1,0,NULL,0),(3,'al','Albania',3,1,0,NULL,0),(4,'dz','Algeria',4,1,0,NULL,0),(5,'as','American Samoa',5,1,0,NULL,0),(6,'ad','Andorra',2,1,0,NULL,0),(7,'ao','Angola',6,1,0,NULL,0),(8,'ai','Anguilla',7,1,0,NULL,0),(9,'aq','Antarctica',NULL,1,0,NULL,0),(10,'ag','Antigua And Barbuda',7,1,0,NULL,0),(11,'ar','Argentina',8,1,0,NULL,0),(12,'am','Armenia',9,1,0,NULL,0),(13,'aw','Aruba',10,1,0,NULL,0),(14,'au','Australia',11,1,0,NULL,0),(15,'at','Austria',2,1,0,NULL,0),(16,'az','Azerbaijan',12,1,0,NULL,0),(17,'bs','Bahamas',13,1,0,NULL,0),(18,'bh','Bahrain',14,1,0,NULL,0),(19,'bd','Bangladesh',15,1,0,NULL,0),(20,'bb','Barbados',16,1,0,NULL,0),(21,'by','Belarus',17,1,0,NULL,0),(22,'be','Belgium',2,1,0,NULL,0),(23,'bz','Belize',18,1,0,NULL,0),(24,'bj','Benin',19,1,0,NULL,0),(25,'bm','Bermuda',20,1,0,NULL,0),(26,'bt','Bhutan',62,1,0,NULL,0),(27,'bo','Bolivia',NULL,1,0,NULL,0),(28,'ba','Bosnia And Herzegovina',21,1,0,NULL,0),(29,'bw','Botswana',22,1,0,NULL,0),(30,'bv','Bouvet Island',23,1,0,NULL,0),(31,'br','Brazil',24,1,0,NULL,0),(32,'io','British Indian Ocean Territory',5,1,0,NULL,0),(33,'bn','Brunei Darussalam',25,1,0,NULL,0),(34,'bg','Bulgaria',26,1,0,NULL,0),(35,'bf','Burkina Faso',19,1,0,NULL,0),(36,'bi','Burundi',27,1,0,NULL,0),(37,'kh','Cambodia',28,1,0,NULL,0),(38,'cm','Cameroon',29,1,0,NULL,0),(39,'ca','Canada',30,1,0,NULL,0),(40,'cv','Cape Verde',31,1,0,NULL,0),(41,'ky','Cayman Islands',32,1,0,NULL,0),(42,'cf','Central African Republic',29,1,0,NULL,0),(43,'td','Chad',29,1,0,NULL,0),(44,'cl','Chile',159,1,0,NULL,0),(45,'cn','China',33,1,0,NULL,0),(46,'cx','Christmas Island',11,1,0,NULL,0),(47,'cc','Cocos Islands',11,1,0,NULL,0),(48,'co','Colombia',156,1,0,NULL,0),(49,'km','Comoros',34,1,0,NULL,0),(50,'cg','Congo',29,1,0,NULL,0),(51,'cd','Congo Republic',35,1,0,NULL,0),(52,'ck','Cook Islands',36,1,0,NULL,0),(53,'cr','Costa Rica',37,1,0,NULL,0),(54,'ci','Cote Divoire',19,1,0,NULL,0),(55,'hr','Croatia',38,1,0,NULL,0),(56,'cu','Cuba',157,1,0,NULL,0),(57,'cy','Cyprus',2,1,0,NULL,0),(58,'cz','Czech Republic',39,1,0,NULL,0),(59,'dk','Denmark',40,1,0,NULL,0),(60,'dj','Djibouti',41,1,0,NULL,0),(61,'dm','Dominica',7,1,0,NULL,0),(62,'do','Dominican Republic',42,1,0,NULL,0),(63,'ec','Ecuador',5,1,0,NULL,0),(64,'eg','Egypt',43,1,0,NULL,0),(65,'sv','El Salvador',158,1,0,NULL,0),(66,'gq','Equatorial Guinea',29,1,0,NULL,0),(67,'er','Eritrea',44,1,0,NULL,0),(68,'ee','Estonia',45,1,0,NULL,0),(69,'et','Ethiopia',46,1,0,NULL,0),(70,'fk','Falkland Islands (Malvinas)',47,1,0,NULL,0),(71,'fo','Faroe Islands',40,1,0,NULL,0),(72,'fj','Fiji',48,1,0,NULL,0),(73,'fi','Finland',2,1,0,NULL,0),(74,'fr','France',2,1,0,NULL,0),(75,'gf','French Guiana',2,1,0,NULL,0),(76,'pf','French Polynesia',49,1,0,NULL,0),(77,'tf','French Southern Territories',2,1,0,NULL,0),(78,'ga','Gabon',29,1,0,NULL,0),(79,'gm','Gambia',50,1,0,NULL,0),(80,'ge','Georgia',51,1,0,NULL,0),(81,'de','Germany',2,1,0,NULL,0),(82,'gh','Ghana',52,1,0,NULL,0),(83,'gi','Gibraltar',53,1,0,NULL,0),(84,'gr','Greece',2,1,0,NULL,0),(85,'gl','Greenland',40,1,0,NULL,0),(86,'gd','Grenada',7,1,0,NULL,0),(87,'gp','Guadeloupe',2,1,0,NULL,0),(88,'gu','Guam',5,1,0,NULL,0),(89,'gt','Guatemala',54,1,0,NULL,0),(90,'gg','Guernsey',55,1,0,NULL,0),(91,'gn','Guinea',56,1,0,NULL,0),(92,'gw','Guinea-bissau',19,1,0,NULL,0),(93,'gy','Guyana',57,1,0,NULL,0),(94,'ht','Haiti',160,1,0,NULL,0),(95,'hm','Heard Island And Mcdonald Islands',11,1,0,NULL,0),(96,'va','Holy See (vatican City State)',2,1,0,NULL,0),(97,'hn','Honduras',58,1,0,NULL,0),(98,'hk','Hong Kong',59,1,0,NULL,0),(99,'hu','Hungary',60,1,0,NULL,0),(100,'is','Iceland',61,1,0,NULL,0),(101,'in','India',62,1,0,NULL,0),(102,'id','Indonesia',63,1,0,NULL,0),(103,'ir','Iran',64,1,0,NULL,0),(104,'iq','Iraq',65,1,0,NULL,0),(105,'ie','Ireland',2,1,0,NULL,0),(106,'im','Isle Of Man',NULL,1,0,NULL,0),(107,'il','Israel',66,1,0,NULL,0),(108,'it','Italy',2,1,0,NULL,0),(109,'jm','Jamaica',67,1,0,NULL,0),(110,'jp','Japan',68,1,0,NULL,0),(111,'je','Jersey',55,1,0,NULL,0),(112,'jo','Jordan',69,1,0,NULL,0),(113,'kz','Kazakhstan',70,1,0,NULL,0),(114,'ke','Kenya',71,1,0,NULL,0),(115,'ki','Kiribati',11,1,0,NULL,0),(116,'kp','Korea',72,1,0,NULL,0),(117,'kr','Korea',73,1,0,NULL,0),(118,'kw','Kuwait',74,1,0,NULL,0),(119,'kg','Kyrgyzstan',75,1,0,NULL,0),(120,'la','Lao',76,1,0,NULL,0),(121,'lv','Latvia',77,1,0,NULL,0),(122,'lb','Lebanon',78,1,0,NULL,0),(123,'ls','Lesotho',121,1,0,NULL,0),(124,'lr','Liberia',79,1,0,NULL,0),(125,'ly','Libyan Arab Jamahiriya',80,1,0,NULL,0),(126,'li','Liechtenstein',81,1,0,NULL,0),(127,'lt','Lithuania',82,1,0,NULL,0),(128,'lu','Luxembourg',2,1,0,NULL,0),(129,'mo','Macao',83,1,0,NULL,0),(130,'mk','Macedonia',84,1,0,NULL,0),(131,'mg','Madagascar',85,1,0,NULL,0),(132,'mw','Malawi',86,1,0,NULL,0),(133,'my','Malaysia',87,1,0,NULL,0),(134,'mv','Maldives',88,1,0,NULL,0),(135,'ml','Mali',19,1,0,NULL,0),(136,'mt','Malta',2,1,0,NULL,0),(137,'mh','Marshall Islands',5,1,0,NULL,0),(138,'mq','Martinique',2,1,0,NULL,0),(139,'mr','Mauritania',89,1,0,NULL,0),(140,'mu','Mauritius',90,1,0,NULL,0),(141,'yt','Mayotte',2,1,0,NULL,0),(142,'mx','Mexico',161,1,0,NULL,0),(143,'fm','Micronesia',2,1,0,NULL,0),(144,'md','Moldova',91,1,0,NULL,0),(145,'mc','Monaco',2,1,0,NULL,0),(146,'mn','Mongolia',92,1,0,NULL,0),(147,'me','Montenegro',2,1,0,NULL,0),(148,'ms','Montserrat',7,1,0,NULL,0),(149,'ma','Morocco',93,1,0,NULL,0),(150,'mz','Mozambique',94,1,0,NULL,0),(151,'mm','Myanmar',95,1,0,NULL,0),(152,'na','Namibia',121,1,0,NULL,0),(153,'nr','Nauru',11,1,0,NULL,0),(154,'np','Nepal',96,1,0,NULL,0),(155,'nl','Netherlands',2,1,0,NULL,0),(156,'an','Netherlands Antilles',97,1,0,NULL,0),(157,'nc','New Caledonia',49,1,0,NULL,0),(158,'nz','New Zealand',36,1,0,NULL,0),(159,'ni','Nicaragua',98,1,0,NULL,0),(160,'ne','Niger',19,1,0,NULL,0),(161,'ng','Nigeria',99,1,0,NULL,0),(162,'nu','Niue',36,1,0,NULL,0),(163,'nf','Norfolk Island',11,1,0,NULL,0),(164,'mp','Northern Mariana Islands',5,1,0,NULL,0),(165,'no','Norway',23,1,0,NULL,0),(166,'om','Oman',100,1,0,NULL,0),(167,'pk','Pakistan',101,1,0,NULL,0),(168,'pw','Palau',5,1,0,NULL,0),(169,'ps','Palestinian Territory',NULL,1,0,NULL,0),(170,'pa','Panama',162,1,0,NULL,0),(171,'pg','Papua New Guinea',102,1,0,NULL,0),(172,'py','Paraguay',103,1,0,NULL,0),(173,'pe','Peru',104,1,0,NULL,0),(174,'ph','Philippines',105,1,0,NULL,0),(175,'pn','Pitcairn',36,1,0,NULL,0),(176,'pl','Poland',106,1,0,NULL,0),(177,'pt','Portugal',2,1,0,NULL,0),(178,'pr','Puerto Rico',5,1,0,NULL,0),(179,'qa','Qatar',107,1,0,NULL,0),(180,'re','Reunion',2,1,0,NULL,0),(181,'ro','Romania',108,1,0,NULL,0),(182,'ru','Russian Federation',109,1,0,NULL,0),(183,'rw','Rwanda',110,1,0,NULL,0),(184,'bl','Saint Barthelemy',2,1,0,NULL,0),(185,'sh','Saint Helena',111,1,0,NULL,0),(186,'kn','Saint Kitts And Nevis',7,1,0,NULL,0),(187,'lc','Saint Lucia',7,1,0,NULL,0),(188,'mf','Saint Martin',2,1,0,NULL,0),(189,'pm','Saint Pierre And Miquelon',2,1,0,NULL,0),(190,'vc','Saint Vincent And The Grenadines',7,1,0,NULL,0),(191,'ws','Samoa',112,1,0,NULL,0),(192,'sm','San Marino',2,1,0,NULL,0),(193,'st','Sao Tome And Principe',113,1,0,NULL,0),(194,'sa','Saudi Arabia',114,1,0,NULL,0),(195,'sn','Senegal',19,1,0,NULL,0),(196,'rs','Serbia',115,1,0,NULL,0),(197,'sc','Seychelles',116,1,0,NULL,0),(198,'sl','Sierra Leone',117,1,0,NULL,0),(199,'sg','Singapore',118,1,0,NULL,0),(200,'sk','Slovakia',2,1,0,NULL,0),(201,'si','Slovenia',2,1,0,NULL,0),(202,'sb','Solomon Islands',119,1,0,NULL,0),(203,'so','Somalia',120,1,0,NULL,0),(204,'za','South Africa',121,1,0,NULL,0),(205,'gs','South Georgia',NULL,1,0,NULL,0),(206,'es','Spain',2,1,0,NULL,0),(207,'lk','Sri Lanka',122,1,0,NULL,0),(208,'sd','Sudan',123,1,0,NULL,0),(209,'sr','Suriname',124,1,0,NULL,0),(210,'sj','Svalbard And Jan Mayen',23,1,0,NULL,0),(211,'sz','Swaziland',125,1,0,NULL,0),(212,'se','Sweden',126,1,0,NULL,0),(213,'ch','Switzerland',81,1,0,NULL,0),(214,'sy','Syrian Arab Republic',127,1,0,NULL,0),(215,'tw','Taiwan, Province Of China',128,1,0,NULL,0),(216,'tj','Tajikistan',129,1,0,NULL,0),(217,'tz','Tanzania',130,1,0,NULL,0),(218,'th','Thailand',131,1,0,NULL,0),(219,'tl','Timor-leste',5,1,0,NULL,0),(220,'tg','Togo',19,1,0,NULL,0),(221,'tk','Tokelau',36,1,0,NULL,0),(222,'to','Tonga',132,1,0,NULL,0),(223,'tt','Trinidad And Tobago',133,1,0,NULL,0),(224,'tn','Tunisia',134,1,0,NULL,0),(225,'tr','Turkey',135,1,0,NULL,0),(226,'tm','Turkmenistan',136,1,0,NULL,0),(227,'tc','Turks And Caicos Islands',5,1,0,NULL,0),(228,'tv','Tuvalu',11,1,0,NULL,0),(229,'ug','Uganda',137,1,0,NULL,0),(230,'ua','Ukraine',138,1,0,NULL,0),(231,'ae','United Arab Emirates',139,1,0,NULL,0),(232,'gb','United Kingdom',55,1,0,NULL,0),(233,'us','United States',5,1,1,NULL,0),(234,'um','United States Minor Outlying Islands',5,1,0,NULL,0),(235,'uy','Uruguay',163,1,0,NULL,0),(236,'uz','Uzbekistan',140,1,0,NULL,0),(237,'vu','Vanuatu',141,1,0,NULL,0),(239,'ve','Venezuela',142,1,0,NULL,0),(240,'vn','Viet Nam',143,1,0,NULL,0),(241,'vg','Virgin Islands, British',5,1,0,NULL,0),(242,'vi','Virgin Islands, U.s.',5,1,0,NULL,0),(243,'wf','Wallis And Futuna',49,1,0,NULL,0),(244,'eh','Western Sahara',93,1,0,NULL,0),(245,'ye','Yemen',144,1,0,NULL,0),(246,'zm','Zambia',145,1,0,NULL,0),(247,'zw','Zimbabwe',146,1,0,NULL,0),(248,'ct','Catalonia',2,1,0,NULL,0);
/*!40000 ALTER TABLE `b2ev_regional__country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_regional__currency`
--

LOCK TABLES `b2ev_regional__currency` WRITE;
/*!40000 ALTER TABLE `b2ev_regional__currency` DISABLE KEYS */;
INSERT INTO `b2ev_regional__currency` VALUES (1,'AFN','&#x60b;','Afghani',1),(2,'EUR','&euro;','Euro',1),(3,'ALL','Lek','Lek',1),(4,'DZD','DZD','Algerian Dinar',1),(5,'USD','$','US Dollar',1),(6,'AOA','AOA','Kwanza',1),(7,'XCD','$','East Caribbean Dollar',1),(8,'ARS','$','Argentine Peso',1),(9,'AMD','AMD','Armenian Dram',1),(10,'AWG','&fnof;','Aruban Guilder',1),(11,'AUD','$','Australian Dollar',1),(12,'AZN','&#x43c;&#x430;&#x43d;','Azerbaijanian Manat',1),(13,'BSD','$','Bahamian Dollar',1),(14,'BHD','BHD','Bahraini Dinar',1),(15,'BDT','BDT','Taka',1),(16,'BBD','$','Barbados Dollar',1),(17,'BYR','p.','Belarussian Ruble',1),(18,'BZD','BZ$','Belize Dollar',1),(19,'XOF','XOF','CFA Franc BCEAO',1),(20,'BMD','$','Bermudian Dollar',1),(21,'BAM','KM','Convertible Marks',1),(22,'BWP','P','Pula',1),(23,'NOK','kr','Norwegian Krone',1),(24,'BRL','R$','Brazilian Real',1),(25,'BND','$','Brunei Dollar',1),(26,'BGN','&#x43b;&#x432;','Bulgarian Lev',1),(27,'BIF','BIF','Burundi Franc',1),(28,'KHR','&#x17db;','Riel',1),(29,'XAF','XAF','CFA Franc BEAC',1),(30,'CAD','$','Canadian Dollar',1),(31,'CVE','CVE','Cape Verde Escudo',1),(32,'KYD','$','Cayman Islands Dollar',1),(33,'CNY','&yen;','Yuan Renminbi',1),(34,'KMF','KMF','Comoro Franc',1),(35,'CDF','CDF','Congolese Franc',1),(36,'NZD','$','New Zealand Dollar',1),(37,'CRC','&#x20a1;','Costa Rican Colon',1),(38,'HRK','kn','Croatian Kuna',1),(39,'CZK','K&#x10d;','Czech Koruna',1),(40,'DKK','kr','Danish Krone',1),(41,'DJF','DJF','Djibouti Franc',1),(42,'DOP','RD$','Dominican Peso',1),(43,'EGP','&pound;','Egyptian Pound',1),(44,'ERN','ERN','Nakfa',1),(45,'EEK','EEK','Kroon',1),(46,'ETB','ETB','Ethiopian Birr',1),(47,'FKP','&pound;','Falkland Islands Pound',1),(48,'FJD','$','Fiji Dollar',1),(49,'XPF','XPF','CFP Franc',1),(50,'GMD','GMD','Dalasi',1),(51,'GEL','GEL','Lari',1),(52,'GHS','GHS','Cedi',1),(53,'GIP','&pound;','Gibraltar Pound',1),(54,'GTQ','Q','Quetzal',1),(55,'GBP','&pound;','Pound Sterling',1),(56,'GNF','GNF','Guinea Franc',1),(57,'GYD','$','Guyana Dollar',1),(58,'HNL','L','Lempira',1),(59,'HKD','$','Hong Kong Dollar',1),(60,'HUF','Ft','Forint',1),(61,'ISK','kr','Iceland Krona',1),(62,'INR','Rs','Indian Rupee',1),(63,'IDR','Rp','Rupiah',1),(64,'IRR','&#xfdfc;','Iranian Rial',1),(65,'IQD','IQD','Iraqi Dinar',1),(66,'ILS','&#x20aa;','New Israeli Sheqel',1),(67,'JMD','J$','Jamaican Dollar',1),(68,'JPY','&yen;','Yen',1),(69,'JOD','JOD','Jordanian Dinar',1),(70,'KZT','&#x43b;&#x432;','Tenge',1),(71,'KES','KES','Kenyan Shilling',1),(72,'KPW','&#x20a9;','North Korean Won',1),(73,'KRW','&#x20a9;','Won',1),(74,'KWD','KWD','Kuwaiti Dinar',1),(75,'KGS','&#x43b;&#x432;','Som',1),(76,'LAK','&#x20ad;','Kip',1),(77,'LVL','Ls','Latvian Lats',1),(78,'LBP','&pound;','Lebanese Pound',1),(79,'LRD','$','Liberian Dollar',1),(80,'LYD','LYD','Libyan Dinar',1),(81,'CHF','CHF','Swiss Franc',1),(82,'LTL','Lt','Lithuanian Litas',1),(83,'MOP','MOP','Pataca',1),(84,'MKD','&#x434;&#x435;&#x43d;','Denar',1),(85,'MGA','MGA','Malagasy Ariary',1),(86,'MWK','MWK','Kwacha',1),(87,'MYR','RM','Malaysian Ringgit',1),(88,'MVR','MVR','Rufiyaa',1),(89,'MRO','MRO','Ouguiya',1),(90,'MUR','Rs','Mauritius Rupee',1),(91,'MDL','MDL','Moldovan Leu',1),(92,'MNT','&#x20ae;','Tugrik',1),(93,'MAD','MAD','Moroccan Dirham',1),(94,'MZN','MT','Metical',1),(95,'MMK','MMK','Kyat',1),(96,'NPR','Rs','Nepalese Rupee',1),(97,'ANG','&fnof;','Netherlands Antillian Guilder',1),(98,'NIO','C$','Cordoba Oro',1),(99,'NGN','&#x20a6;','Naira',1),(100,'OMR','&#xfdfc;','Rial Omani',1),(101,'PKR','Rs','Pakistan Rupee',1),(102,'PGK','PGK','Kina',1),(103,'PYG','Gs','Guarani',1),(104,'PEN','S/.','Nuevo Sol',1),(105,'PHP','Php','Philippine Peso',1),(106,'PLN','z&#x142;','Zloty',1),(107,'QAR','&#xfdfc;','Qatari Rial',1),(108,'RON','lei','New Leu',1),(109,'RUB','&#x440;&#x443;&#x431;','Russian Ruble',1),(110,'RWF','RWF','Rwanda Franc',1),(111,'SHP','&pound;','Saint Helena Pound',1),(112,'WST','WST','Tala',1),(113,'STD','STD','Dobra',1),(114,'SAR','&#xfdfc;','Saudi Riyal',1),(115,'RSD','&#x414;&#x438;&#x43d;.','Serbian Dinar',1),(116,'SCR','Rs','Seychelles Rupee',1),(117,'SLL','SLL','Leone',1),(118,'SGD','$','Singapore Dollar',1),(119,'SBD','$','Solomon Islands Dollar',1),(120,'SOS','S','Somali Shilling',1),(121,'ZAR','R','Rand',1),(122,'LKR','Rs','Sri Lanka Rupee',1),(123,'SDG','SDG','Sudanese Pound',1),(124,'SRD','$','Surinam Dollar',1),(125,'SZL','SZL','Lilangeni',1),(126,'SEK','kr','Swedish Krona',1),(127,'SYP','&pound;','Syrian Pound',1),(128,'TWD','$','New Taiwan Dollar',1),(129,'TJS','TJS','Somoni',1),(130,'TZS','TZS','Tanzanian Shilling',1),(131,'THB','THB','Baht',1),(132,'TOP','TOP','Pa',1),(133,'TTD','TT$','Trinidad and Tobago Dollar',1),(134,'TND','TND','Tunisian Dinar',1),(135,'TRY','TL','Turkish Lira',1),(136,'TMT','TMT','Manat',1),(137,'UGX','UGX','Uganda Shilling',1),(138,'UAH','&#x20b4;','Hryvnia',1),(139,'AED','AED','UAE Dirham',1),(140,'UZS','&#x43b;&#x432;','Uzbekistan Sum',1),(141,'VUV','VUV','Vatu',1),(142,'VEF','Bs','Bolivar Fuerte',1),(143,'VND','&#x20ab;','Dong',1),(144,'YER','&#xfdfc;','Yemeni Rial',1),(145,'ZMK','ZMK','Zambian Kwacha',1),(146,'ZWL','Z$','Zimbabwe Dollar',1),(147,'XAU','XAU','Gold',1),(148,'XBA','XBA','EURCO',1),(149,'XBB','XBB','European Monetary Unit',1),(150,'XBC','XBC','European Unit of Account 9',1),(151,'XBD','XBD','European Unit of Account 17',1),(152,'XDR','XDR','SDR',1),(153,'XPD','XPD','Palladium',1),(154,'XPT','XPT','Platinum',1),(155,'XAG','XAG','Silver',1),(156,'COP','$','Colombian peso',1),(157,'CUP','$','Cuban peso',1),(158,'SVC','SVC','Salvadoran colon',1),(159,'CLP','$','Chilean peso',1),(160,'HTG','G','Haitian gourde',1),(161,'MXN','$','Mexican peso',1),(162,'PAB','PAB','Panamanian balboa',1),(163,'UYU','$','Uruguayan peso',1);
/*!40000 ALTER TABLE `b2ev_regional__currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_regional__region`
--

LOCK TABLES `b2ev_regional__region` WRITE;
/*!40000 ALTER TABLE `b2ev_regional__region` DISABLE KEYS */;
INSERT INTO `b2ev_regional__region` VALUES (1,233,'AL','Alabama',1,0),(2,233,'AK','Alaska',1,0),(3,233,'AZ','Arizona',1,0),(4,233,'AR','Arkansas',1,0),(5,233,'CA','California',1,0),(6,233,'CO','Colorado',1,0),(7,233,'CT','Connecticut',1,0),(8,233,'DE','Delaware',1,0),(9,233,'FL','Florida',1,0),(10,233,'GA','Georgia',1,0),(11,233,'HI','Hawaii',1,0),(12,233,'ID','Idaho',1,0),(13,233,'IL','Illinois',1,0),(14,233,'IN','Indiana',1,0),(15,233,'IA','Iowa',1,0),(16,233,'KS','Kansas',1,0),(17,233,'KY','Kentucky',1,0),(18,233,'LA','Louisiana',1,0),(19,233,'ME','Maine',1,0),(20,233,'MD','Maryland',1,0),(21,233,'MA','Massachusetts',1,0),(22,233,'MI','Michigan',1,0),(23,233,'MN','Minnesota',1,0),(24,233,'MS','Mississippi',1,0),(25,233,'MO','Missouri',1,0),(26,233,'MT','Montana',1,0),(27,233,'NE','Nebraska',1,0),(28,233,'NV','Nevada',1,0),(29,233,'NH','New Hampshire',1,0),(30,233,'NJ','New Jersey',1,0),(31,233,'NM','New Mexico',1,0),(32,233,'NY','New York',1,0),(33,233,'NC','North Carolina',1,0),(34,233,'ND','North Dakota',1,0),(35,233,'OH','Ohio',1,0),(36,233,'OK','Oklahoma',1,0),(37,233,'OR','Oregon',1,0),(38,233,'PA','Pennsylvania',1,0),(39,233,'RI','Rhode Island',1,0),(40,233,'SC','South Carolina',1,0),(41,233,'SD','South Dakota',1,0),(42,233,'TN','Tennessee',1,0),(43,233,'TX','Texas',1,0),(44,233,'UT','Utah',1,0),(45,233,'VT','Vermont',1,0),(46,233,'VA','Virginia',1,0),(47,233,'WA','Washington',1,0),(48,233,'WV','West Virginia',1,0),(49,233,'WI','Wisconsin',1,0),(50,233,'WY','Wyoming',1,0);
/*!40000 ALTER TABLE `b2ev_regional__region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_regional__subregion`
--

LOCK TABLES `b2ev_regional__subregion` WRITE;
/*!40000 ALTER TABLE `b2ev_regional__subregion` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_regional__subregion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_sessions`
--

LOCK TABLES `b2ev_sessions` WRITE;
/*!40000 ALTER TABLE `b2ev_sessions` DISABLE KEYS */;
INSERT INTO `b2ev_sessions` VALUES (1,'9ClDViJgsecWkBu65mnzN4KtyTV0N959','2020-02-09 20:59:12','2020-02-09 20:59:12','212.227.221.140',NULL,NULL,'macosx'),(2,'GbzUH8ERYNlXhOqFXMOTxzbxPnG962HR','2020-02-09 20:59:13','2020-02-09 20:59:13','212.227.221.140',NULL,NULL,'macosx'),(3,'BJ5QDNp44ia2QcBAoX4SAd3PyIRh4Otx','2020-02-09 23:43:34','2020-02-09 23:43:34','217.160.152.35',NULL,NULL,'macosx'),(4,'QknYIwW7ZlLCamZCZSAlaUQsq05e7O4C','2020-02-09 23:43:34','2020-02-09 23:43:34','217.160.152.35',NULL,NULL,'macosx'),(5,'v32k3z4Sm3L5vNPxKgVTGnsIKtqY7lI0','2020-02-10 13:51:42','2020-02-10 13:51:42','212.227.221.142',NULL,NULL,'macosx'),(6,'gNWZVkmLK3MbFjclTBIpgHbJM55Ey5NZ','2020-02-10 13:51:44','2020-02-10 13:51:44','212.227.221.142',NULL,NULL,'macosx'),(7,'MUXI5k7K2k14SscUvJGiNYyYErtfROBS','2020-02-10 14:35:25','2020-02-10 14:35:25','212.227.221.143',NULL,NULL,'macosx'),(8,'AgS4MZCY8HJR8gEYAF5ZeJn3hE1vQK3D','2020-02-10 14:35:26','2020-02-10 14:35:26','212.227.221.143',NULL,NULL,'macosx'),(9,'LCa1Y6BjSe1HT7Uul0kHDN4chuBhe85P','2020-02-10 17:12:36','2020-02-10 17:12:36','217.160.152.33',NULL,NULL,'macosx'),(10,'gS940MxwCUKlGejfXE3qNixhLIpE2mmS','2020-02-10 17:12:39','2020-02-10 17:12:39','217.160.152.33',NULL,NULL,'macosx');
/*!40000 ALTER TABLE `b2ev_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_settings`
--

LOCK TABLES `b2ev_settings` WRITE;
/*!40000 ALTER TABLE `b2ev_settings` DISABLE KEYS */;
INSERT INTO `b2ev_settings` VALUES ('antispam_suspicious_group','5'),('antispam_trust_groups','1,2,3,6'),('auto_prune_stats_done','2020-02-10 00:43:34'),('db_version','13220'),('default_locale','en_US'),('evocache_foldername','_evocache'),('evonet_last_attempt','1581342702'),('evonet_last_update','1581342702'),('evonet_last_version_checked','b2evo b2evolution 6.11.4-stable 2019-11-28'),('general_cache_enabled','1'),('last_invalidation_timestamp','1581281952'),('newblog_cache_enabled','1'),('newusers_canregister','yes'),('newusers_grp_ID','4'),('quick_registration','1'),('registration_is_public','1');
/*!40000 ALTER TABLE `b2ev_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_skins__container`
--

LOCK TABLES `b2ev_skins__container` WRITE;
/*!40000 ALTER TABLE `b2ev_skins__container` DISABLE KEYS */;
INSERT INTO `b2ev_skins__container` VALUES (1,'404 Page'),(1,'Compare Main Area'),(1,'Footer'),(1,'Front Page Main Area'),(1,'Front Page Secondary Area'),(1,'Header'),(1,'Item Page'),(1,'Item Single'),(1,'Item Single Header'),(1,'Menu'),(1,'Mobile: Footer'),(1,'Page Top'),(1,'Register'),(1,'Sidebar'),(1,'Sidebar 2'),(2,'404 Page'),(2,'Compare Main Area'),(2,'Footer'),(2,'Front Page Main Area'),(2,'Front Page Secondary Area'),(2,'Header'),(2,'Item Page'),(2,'Item Single'),(2,'Item Single Header'),(2,'Menu'),(2,'Mobile: Footer'),(2,'Page Top'),(2,'Register'),(3,'404 Page'),(3,'Compare Main Area'),(3,'Footer'),(3,'Front Page Main Area'),(3,'Header'),(3,'Item Page'),(3,'Item Single'),(3,'Item Single Header'),(3,'Menu'),(3,'Mobile: Footer'),(3,'Page Top'),(3,'Register'),(4,'404 Page'),(4,'Compare Main Area'),(4,'Footer'),(4,'Forum Front Secondary Area'),(4,'Header'),(4,'Item Page'),(4,'Item Single'),(4,'Item Single Header'),(4,'Menu'),(4,'Mobile: Footer'),(4,'Page Top'),(4,'Register'),(4,'Sidebar'),(4,'Sidebar 2'),(4,'Sidebar Single'),(5,'404 Page'),(5,'Compare Main Area'),(5,'Footer'),(5,'Front Page Main Area'),(5,'Header'),(5,'Item Page'),(5,'Item Single'),(5,'Item Single Header'),(5,'Menu'),(5,'Mobile: Footer'),(5,'Page Top'),(5,'Register'),(5,'Sidebar'),(5,'Sidebar 2'),(5,'Sidebar Single'),(6,'404 Page'),(6,'Access Denied'),(6,'Compare Main Area'),(6,'Front Page Main Area'),(6,'Help'),(6,'Item Single'),(6,'Login Required'),(6,'Mobile: Footer'),(6,'Mobile: Navigation Menu'),(6,'Mobile: Tools Menu'),(6,'Register'),(7,'404 Page'),(7,'Access Denied'),(7,'Compare Main Area'),(7,'Front Page Main Area'),(7,'Help'),(7,'Login Required'),(7,'Mobile: Footer'),(7,'Register'),(8,'404 Page'),(8,'Access Denied'),(8,'Compare Main Area'),(8,'Front Page Main Area'),(8,'Help'),(8,'Login Required'),(8,'Mobile: Footer'),(8,'Register');
/*!40000 ALTER TABLE `b2ev_skins__container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_skins__skin`
--

LOCK TABLES `b2ev_skins__skin` WRITE;
/*!40000 ALTER TABLE `b2ev_skins__skin` DISABLE KEYS */;
INSERT INTO `b2ev_skins__skin` VALUES (1,'bootstrap_blog_Skin','Bootstrap Blog','rwd','bootstrap_blog_skin'),(2,'bootstrap_main_Skin','Bootstrap Main','rwd','bootstrap_main_skin'),(3,'bootstrap_gallery_Skin','Bootstrap Gallery Skin','rwd','bootstrap_gallery_skin'),(4,'bootstrap_forums_Skin','Bootstrap Forums','rwd','bootstrap_forums_skin'),(5,'bootstrap_manual_Skin','Bootstrap Manual','rwd','bootstrap_manual_skin'),(6,'touch_Skin','Touch','mobile','touch'),(7,'_atom_Skin','Atom','feed','_atom'),(8,'_rss2_Skin','RSS 2.0','feed','_rss2');
/*!40000 ALTER TABLE `b2ev_skins__skin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_slug`
--

LOCK TABLES `b2ev_slug` WRITE;
/*!40000 ALTER TABLE `b2ev_slug` DISABLE KEYS */;
INSERT INTO `b2ev_slug` VALUES (1,'help','help',NULL);
/*!40000 ALTER TABLE `b2ev_slug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_subscriptions`
--

LOCK TABLES `b2ev_subscriptions` WRITE;
/*!40000 ALTER TABLE `b2ev_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_syslog`
--

LOCK TABLES `b2ev_syslog` WRITE;
/*!40000 ALTER TABLE `b2ev_syslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_temporary_ID`
--

LOCK TABLES `b2ev_temporary_ID` WRITE;
/*!40000 ALTER TABLE `b2ev_temporary_ID` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_temporary_ID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_track__goal`
--

LOCK TABLES `b2ev_track__goal` WRITE;
/*!40000 ALTER TABLE `b2ev_track__goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_track__goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_track__goalcat`
--

LOCK TABLES `b2ev_track__goalcat` WRITE;
/*!40000 ALTER TABLE `b2ev_track__goalcat` DISABLE KEYS */;
INSERT INTO `b2ev_track__goalcat` VALUES (1,'Default','#999999');
/*!40000 ALTER TABLE `b2ev_track__goalcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_track__goalhit`
--

LOCK TABLES `b2ev_track__goalhit` WRITE;
/*!40000 ALTER TABLE `b2ev_track__goalhit` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_track__goalhit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_track__keyphrase`
--

LOCK TABLES `b2ev_track__keyphrase` WRITE;
/*!40000 ALTER TABLE `b2ev_track__keyphrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_track__keyphrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users`
--

LOCK TABLES `b2ev_users` WRITE;
/*!40000 ALTER TABLE `b2ev_users` DISABLE KEYS */;
INSERT INTO `b2ev_users` VALUES (1,'admin','daeafd57d83d1e549f5c95177c325e32','6EnsqjSn','evo$salted',1,'piotrowski+ionos.de@prisma.io','autoactivated',NULL,'Johnny','Admin',NULL,NULL,10,'en-US','gGYM5HhQX5QlMgP2ap3EJBoSkulPY45n','M',NULL,NULL,NULL,233,NULL,NULL,NULL,NULL,'2020-02-09 19:43:00',NULL,1,'2020-02-09 19:45:00');
/*!40000 ALTER TABLE `b2ev_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__fielddefs`
--

LOCK TABLES `b2ev_users__fielddefs` WRITE;
/*!40000 ALTER TABLE `b2ev_users__fielddefs` DISABLE KEYS */;
INSERT INTO `b2ev_users__fielddefs` VALUES (1,1,'text','Micro bio',NULL,'recommended','forbidden',1,0,NULL,'fa fa-info-circle','microbio'),(2,1,'word','I like',NULL,'recommended','list',2,1,NULL,'fa fa-thumbs-o-up','ilike'),(3,1,'word','I don\'t like',NULL,'recommended','list',3,1,NULL,'fa fa-thumbs-o-down','idontlike'),(4,2,'email','MSN/Live IM',NULL,'optional','allowed',1,0,NULL,NULL,'msnliveim'),(5,2,'word','Yahoo IM',NULL,'optional','allowed',2,0,NULL,'fa fa-yahoo','yahooim'),(6,2,'word','AOL AIM',NULL,'optional','allowed',3,0,NULL,NULL,'aolaim'),(7,2,'number','ICQ ID',NULL,'optional','allowed',4,0,NULL,NULL,'icqid'),(8,2,'phone','Skype',NULL,'optional','allowed',5,0,NULL,'fa fa-skype','skype'),(9,2,'phone','WhatsApp',NULL,'optional','allowed',6,0,NULL,'fa fa-whatsapp','whatsapp'),(10,3,'phone','Main phone',NULL,'optional','forbidden',1,0,NULL,'fa fa-phone','mainphone'),(11,3,'phone','Cell phone',NULL,'optional','allowed',2,0,NULL,'fa fa-mobile-phone','cellphone'),(12,3,'phone','Office phone',NULL,'optional','allowed',3,0,NULL,'fa fa-phone','officephone'),(13,3,'phone','Home phone',NULL,'optional','allowed',4,0,NULL,'fa fa-phone','homephone'),(14,3,'phone','Office FAX',NULL,'optional','allowed',5,0,NULL,'fa fa-fax','officefax'),(15,3,'phone','Home FAX',NULL,'optional','allowed',6,0,NULL,'fa fa-fax','homefax'),(16,4,'url','Twitter',NULL,'recommended','forbidden',1,0,NULL,'fa fa-twitter','twitter'),(17,4,'url','Facebook',NULL,'recommended','forbidden',2,0,NULL,'fa fa-facebook','facebook'),(18,4,'url','Google Plus',NULL,'optional','forbidden',3,0,NULL,'fa fa-google-plus fa-x-google-plus--nudge','googleplus'),(19,4,'url','Linkedin',NULL,'optional','forbidden',4,0,NULL,'fa fa-linkedin fa-x-linkedin--nudge','linkedin'),(20,4,'url','GitHub',NULL,'optional','forbidden',5,0,NULL,'fa fa-github-alt','github'),(21,4,'url','Website',NULL,'recommended','allowed',6,0,NULL,NULL,'website'),(22,4,'url','Blog',NULL,'optional','allowed',7,0,NULL,NULL,'blog'),(23,4,'url','Myspace',NULL,'optional','forbidden',8,0,NULL,NULL,'myspace'),(24,4,'url','Flickr',NULL,'optional','forbidden',9,0,NULL,'fa fa-flickr','flickr'),(25,4,'url','YouTube',NULL,'optional','forbidden',10,0,NULL,'fa fa-youtube','youtube'),(26,4,'url','Digg',NULL,'optional','forbidden',11,0,NULL,'fa fa-digg','digg'),(27,4,'url','StumbleUpon',NULL,'optional','forbidden',12,0,NULL,'fa fa-stumbleupon','stumbleupon'),(28,4,'url','Pinterest',NULL,'optional','forbidden',13,0,NULL,'fa fa-pinterest-p','pinterest'),(29,4,'url','SoundCloud',NULL,'optional','forbidden',14,0,NULL,'fa fa-soundcloud','soundcloud'),(30,4,'url','Yelp',NULL,'optional','forbidden',15,0,NULL,'fa fa-yelp','yelp'),(31,4,'url','PayPal',NULL,'optional','forbidden',16,0,NULL,'fa fa-paypal','paypal'),(32,4,'url','500px',NULL,'optional','forbidden',17,0,NULL,'fa fa-500px','500px'),(33,4,'url','Amazon',NULL,'optional','forbidden',18,0,NULL,'fa fa-amazon','amazon'),(34,4,'url','Instagram',NULL,'optional','forbidden',19,0,NULL,'fa fa-instagram','instagram'),(35,4,'url','Vimeo',NULL,'optional','forbidden',20,0,NULL,'fa fa-vimeo','vimeo'),(36,5,'text','Main address',NULL,'optional','forbidden',1,0,NULL,'fa fa-building','mainaddress'),(37,5,'text','Home address',NULL,'optional','forbidden',2,0,NULL,'fa fa-home','homeaddress');
/*!40000 ALTER TABLE `b2ev_users__fielddefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__fieldgroups`
--

LOCK TABLES `b2ev_users__fieldgroups` WRITE;
/*!40000 ALTER TABLE `b2ev_users__fieldgroups` DISABLE KEYS */;
INSERT INTO `b2ev_users__fieldgroups` VALUES (1,'About me',1),(2,'Instant Messaging',2),(3,'Phone',3),(4,'Web',4),(5,'Address',5);
/*!40000 ALTER TABLE `b2ev_users__fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__fields`
--

LOCK TABLES `b2ev_users__fields` WRITE;
/*!40000 ALTER TABLE `b2ev_users__fields` DISABLE KEYS */;
INSERT INTO `b2ev_users__fields` VALUES (1,1,1,'I am the demo administrator of this site.\nI love having so much power!'),(2,1,16,'https://twitter.com/b2evolution/'),(3,1,17,'https://www.facebook.com/b2evolution'),(4,1,18,'https://plus.google.com/+b2evolution/posts'),(5,1,19,'https://www.linkedin.com/company/b2evolution-net'),(6,1,20,'https://github.com/b2evolution/b2evolution'),(7,1,21,'http://b2evolution.net/');
/*!40000 ALTER TABLE `b2ev_users__fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__invitation_code`
--

LOCK TABLES `b2ev_users__invitation_code` WRITE;
/*!40000 ALTER TABLE `b2ev_users__invitation_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_users__invitation_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__organization`
--

LOCK TABLES `b2ev_users__organization` WRITE;
/*!40000 ALTER TABLE `b2ev_users__organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_users__organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__profile_visit_counters`
--

LOCK TABLES `b2ev_users__profile_visit_counters` WRITE;
/*!40000 ALTER TABLE `b2ev_users__profile_visit_counters` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_users__profile_visit_counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__profile_visits`
--

LOCK TABLES `b2ev_users__profile_visits` WRITE;
/*!40000 ALTER TABLE `b2ev_users__profile_visits` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_users__profile_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__reports`
--

LOCK TABLES `b2ev_users__reports` WRITE;
/*!40000 ALTER TABLE `b2ev_users__reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_users__reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__secondary_user_groups`
--

LOCK TABLES `b2ev_users__secondary_user_groups` WRITE;
/*!40000 ALTER TABLE `b2ev_users__secondary_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_users__secondary_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__tag`
--

LOCK TABLES `b2ev_users__tag` WRITE;
/*!40000 ALTER TABLE `b2ev_users__tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_users__tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__user_org`
--

LOCK TABLES `b2ev_users__user_org` WRITE;
/*!40000 ALTER TABLE `b2ev_users__user_org` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_users__user_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__usersettings`
--

LOCK TABLES `b2ev_users__usersettings` WRITE;
/*!40000 ALTER TABLE `b2ev_users__usersettings` DISABLE KEYS */;
INSERT INTO `b2ev_users__usersettings` VALUES (1,'created_fromIPv4','2130706433'),(1,'enable_email','1'),(1,'login_multiple_sessions','1'),(1,'user_registered_from_domain','localhost');
/*!40000 ALTER TABLE `b2ev_users__usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_users__usertag`
--

LOCK TABLES `b2ev_users__usertag` WRITE;
/*!40000 ALTER TABLE `b2ev_users__usertag` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_users__usertag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `b2ev_widget`
--

LOCK TABLES `b2ev_widget` WRITE;
/*!40000 ALTER TABLE `b2ev_widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `b2ev_widget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 19:29:00
