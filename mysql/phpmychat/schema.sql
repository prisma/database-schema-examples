-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816449822.hosting-data.io    Database: db816449822
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
-- Table structure for table `pmc_ban_users`
--

DROP TABLE IF EXISTS `pmc_ban_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_ban_users` (
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `latin1` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rooms` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ban_until` int(11) NOT NULL DEFAULT '0',
  `reason` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_bot`
--

DROP TABLE IF EXISTS `pmc_bot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_bot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bot` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `botname` (`bot`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_bots`
--

DROP TABLE IF EXISTS `pmc_bots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_bots` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `botname` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`botname`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_config`
--

DROP TABLE IF EXISTS `pmc_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_config` (
  `ID` tinyint(1) NOT NULL DEFAULT '0',
  `MSG_DEL` tinyint(1) NOT NULL DEFAULT '96',
  `USR_DEL` tinyint(1) NOT NULL DEFAULT '10',
  `REG_DEL` tinyint(1) NOT NULL DEFAULT '0',
  `LANGUAGE` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'english',
  `MULTI_LANG` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `REQUIRE_REGISTER` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `REQUIRE_NAMES` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `EMAIL_PASWD` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `PASS_LENGTH` tinyint(1) NOT NULL DEFAULT '6',
  `ADMIN_NOTIFY` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `ADMIN_NAME` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Your name/chat name here',
  `ADMIN_EMAIL` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Your email address here',
  `CHAT_URL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Your server/chat URL here',
  `SHOW_ADMIN` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_DEL_PROF` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `VERSION` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `BANISH` tinyint(1) NOT NULL DEFAULT '1',
  `NO_SWEAR` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `SWEAR_EXPR` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '@#$*!',
  `SAVE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `USE_SMILIES` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `HTML_TAGS_KEEP` enum('none','simple') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'simple',
  `HTML_TAGS_SHOW` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `TMZ_OFFSET` tinyint(1) NOT NULL DEFAULT '0',
  `MSG_ORDER` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `MSG_NB` tinyint(1) NOT NULL DEFAULT '10',
  `MSG_REFRESH` tinyint(1) NOT NULL DEFAULT '20',
  `SHOW_TIMESTAMP` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `NOTIFY` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `WELCOME` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SMILEY_COLS` tinyint(1) NOT NULL DEFAULT '10',
  `SMILEY_COLS_POP` tinyint(1) NOT NULL DEFAULT '5',
  `ALLOW_ENTRANCE_SOUND` enum('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `ENTRANCE_SOUND` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sounds/chimeup.wav',
  `ALLOW_BUZZ_SOUND` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `BUZZ_SOUND` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sounds/chimedwn.wav',
  `TOPIC_DIFF` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_TUT` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_INFO` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `SET_CMDS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `CMDS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/away /buzz /demote /dice /dice2 /dice3 /high /img /math /mr<br />/room /size /sort /topic /utube /video /wisp',
  `SET_MODS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `MODS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Advanced Admin, (GR)Avatars, Smilies Popup, Color Drop Box, Private Popup,<br />Quick Menu, Logs Archive, Lurking, Color names, WorldTime, UTF-8, Birthdays, MathJax, TV/Radio, Emoji',
  `SET_BOT` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `ROOM_SAYS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Attention Room:',
  `DEMOTE_MOD` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `PRIV_POPUP` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_ETIQ_IN_HELP` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_LOGO` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `LOGO_IMG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/icon.gif',
  `LOGO_OPEN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT './',
  `LOGO_ALT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'My Chat based on phpMyChat-Plus',
  `SHOW_OWNER` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_PRIV` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_PRIV_MOD` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_PRIV_USR` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_COUNTER` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `INSTALL_DATE` date NOT NULL DEFAULT '0000-00-00',
  `USE_SKIN` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `ROOM1` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public Room 1',
  `ROOM2` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public Room 2',
  `ROOM3` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public Room 3',
  `ROOM4` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public Room 4',
  `ROOM5` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public Room 5',
  `ROOM6` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Private Room 1',
  `ROOM7` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Private Room 2',
  `ROOM8` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Staff Only',
  `ROOM9` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Support Room',
  `SWEAR1` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public Room 5',
  `SWEAR2` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Staff Only',
  `SWEAR3` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Support Room',
  `SWEAR4` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `COLOR_FILTERS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `COLOR_ALLOW_GUESTS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `ROOM_SKIN1` tinyint(1) NOT NULL DEFAULT '1',
  `ROOM_SKIN2` tinyint(1) NOT NULL DEFAULT '2',
  `ROOM_SKIN3` tinyint(1) NOT NULL DEFAULT '3',
  `ROOM_SKIN4` tinyint(1) NOT NULL DEFAULT '4',
  `ROOM_SKIN5` tinyint(1) NOT NULL DEFAULT '5',
  `ROOM_SKIN6` tinyint(1) NOT NULL DEFAULT '6',
  `ROOM_SKIN7` tinyint(1) NOT NULL DEFAULT '7',
  `ROOM_SKIN8` tinyint(1) NOT NULL DEFAULT '8',
  `ROOM_SKIN9` tinyint(1) NOT NULL DEFAULT '9',
  `COLOR_CA` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'red',
  `COLOR_CA1` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'crimson',
  `COLOR_CA2` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'orangered',
  `COLOR_CM` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blue',
  `COLOR_CM1` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mediumblue',
  `COLOR_CM2` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'royalblue',
  `QUICKA` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `QUICKM` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `QUICKU` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `COLOR_NAMES` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `USE_AVATARS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `NUM_AVATARS` smallint(1) NOT NULL DEFAULT '80',
  `AVA_RELPATH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/avatars/',
  `DEF_AVATAR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def_avatar.gif',
  `AVA_WIDTH` tinyint(1) NOT NULL DEFAULT '30',
  `AVA_HEIGHT` tinyint(1) NOT NULL DEFAULT '30',
  `AVA_PROFBUTTON` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `MAX_DICES` tinyint(1) NOT NULL DEFAULT '99',
  `MAX_ROLLS` tinyint(1) NOT NULL DEFAULT '6',
  `BOT_CONTROL` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `MAX_PIC_SIZE` smallint(1) NOT NULL DEFAULT '350',
  `USERS_SORT_ORD` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `CHAT_LOGS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `LOG_DIR` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logsadmin',
  `SHOW_LOGS_USR` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `CHAT_LURKING` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_LURK_USR` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `BAN_IP` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `REG_CHARS_ALLOWED` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a-zA-Z0-9_.-@#$%^&*()=<>?~{}|`:',
  `EXIT_LINK_TYPE` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `CHAT_EXTRAS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `EMAIL_USER` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `BOT_HELLO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Hello People!!! Have you been missing me?',
  `BOT_BYE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Bye Bye everyone! See you when I see you...',
  `BOT_PUBLIC` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `ENABLE_PM` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `EN_ROOM1` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `EN_ROOM2` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `EN_ROOM3` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `EN_ROOM4` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `EN_ROOM5` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `EN_ROOM6` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `EN_ROOM7` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `EN_ROOM8` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `EN_ROOM9` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `CHAT_BOOT` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `WELCOME_SOUND` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sounds/hello.wav',
  `WORLDTIME` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `UPD_CHECK` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `QUOTE` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `QUOTE_TIME` tinyint(1) NOT NULL DEFAULT '5',
  `QUOTE_COLOR` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'brown',
  `QUOTE_PATH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'files/quotes/quotes_all.txt',
  `HIDE_ADMINS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `HIDE_MODERS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `LAST_SAVED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_SAVED_BY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'installer (upgrade)',
  `CHAT_SYSTEM` enum('standalone','phpnuke','phpbb') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standalone',
  `NUKE_BB_PATH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CHAT_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'My WonderfulWorldWide Chat',
  `ENGLISH_FORMAT` enum('UK','US') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UK',
  `FLAGS_3D` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `ALLOW_REGISTER` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `DISP_GENDER` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `SPECIAL_GHOSTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FILLED_LOGIN` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `BACKGR_IMG` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `BACKGR_IMG_PATH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `POPUP_LINKS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ITALICIZE_POWERS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `MAIL_GREETING` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Best regards,',
  `PM_KEEP_DAYS` tinyint(1) NOT NULL DEFAULT '30',
  `ALLOW_PM_DEL` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `LOGIN_COUNTER` enum('0','1','60','1440','10080') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '60',
  `ALLOW_GRAVATARS` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `GRAVATARS_CACHE` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `GRAVATARS_CACHE_EXPIRE` tinyint(1) NOT NULL DEFAULT '7',
  `GRAVATARS_RATING` enum('G','PG','R','X','ANY') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'G',
  `GRAVATARS_DYNAMIC_DEF` enum('mm','identicon','monsterid','wavatar','retro') COLLATE utf8mb4_unicode_ci DEFAULT 'monsterid',
  `GRAVATARS_DYNAMIC_DEF_FORCE` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ALLOW_UPLOADS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `RES_ROOM1` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `RES_ROOM2` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `RES_ROOM3` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `RES_ROOM4` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `RES_ROOM5` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `EN_STATS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ALLOW_VIDEO` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `VIDEO_WIDTH` smallint(1) NOT NULL DEFAULT '425',
  `VIDEO_HEIGHT` smallint(1) NOT NULL DEFAULT '344',
  `REQUIRE_BDAY` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `SEND_BDAY_EMAIL` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `SEND_BDAY_TIME` tinyint(1) NOT NULL DEFAULT '0',
  `SEND_BDAY_INTVAL` tinyint(1) NOT NULL DEFAULT '7',
  `SEND_BDAY_PATH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'files/birthday/bday_greetings.txt',
  `EN_WMPLAYER` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `WMP_STREAM` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OPEN_ALL_BEG` time NOT NULL DEFAULT '00:00:00',
  `OPEN_ALL_END` time NOT NULL DEFAULT '00:00:00',
  `OPEN_SUN_BEG` time NOT NULL DEFAULT '00:00:00',
  `OPEN_SUN_END` time NOT NULL DEFAULT '00:00:00',
  `OPEN_MON_BEG` time NOT NULL DEFAULT '00:00:00',
  `OPEN_MON_END` time NOT NULL DEFAULT '00:00:00',
  `OPEN_TUE_BEG` time NOT NULL DEFAULT '00:00:00',
  `OPEN_TUE_END` time NOT NULL DEFAULT '00:00:00',
  `OPEN_WED_BEG` time NOT NULL DEFAULT '00:00:00',
  `OPEN_WED_END` time NOT NULL DEFAULT '00:00:00',
  `OPEN_THU_BEG` time NOT NULL DEFAULT '00:00:00',
  `OPEN_THU_END` time NOT NULL DEFAULT '00:00:00',
  `OPEN_FRI_BEG` time NOT NULL DEFAULT '00:00:00',
  `OPEN_FRI_END` time NOT NULL DEFAULT '00:00:00',
  `OPEN_SAT_BEG` time NOT NULL DEFAULT '00:00:00',
  `OPEN_SAT_END` time NOT NULL DEFAULT '00:00:00',
  `ALLOW_TEXT_COLORS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `TAGS_POWERS` set('b','i','u') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ALLOW_MATH` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `SRC_MATH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML',
  `USE_FLAGS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `SHOW_FLAGS` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `NOTIFY_SOUND` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sounds/notify.wav',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_conversationlog`
--

DROP TABLE IF EXISTS `pmc_conversationlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_conversationlog` (
  `bot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `input` text COLLATE utf8mb4_unicode_ci,
  `response` text COLLATE utf8mb4_unicode_ci,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enteredtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `botid` (`bot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_dstore`
--

DROP TABLE IF EXISTS `pmc_dstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_dstore` (
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `value` text COLLATE utf8mb4_unicode_ci,
  `enteredtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `nameidx` (`name`(40))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_gmcache`
--

DROP TABLE IF EXISTS `pmc_gmcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_gmcache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `inputstarvals` text COLLATE utf8mb4_unicode_ci,
  `thatstarvals` text COLLATE utf8mb4_unicode_ci,
  `topicstarvals` text COLLATE utf8mb4_unicode_ci,
  `patternmatched` text COLLATE utf8mb4_unicode_ci,
  `inputmatched` text COLLATE utf8mb4_unicode_ci,
  `combined` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `combined` (`bot`,`combined`(245))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_gossip`
--

DROP TABLE IF EXISTS `pmc_gossip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_gossip` (
  `bot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gossip` text COLLATE utf8mb4_unicode_ci,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `botidx` (`bot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_lurkers`
--

DROP TABLE IF EXISTS `pmc_lurkers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_lurkers` (
  `time` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`time`),
  KEY `ip` (`ip`),
  KEY `file` (`file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_messages`
--

DROP TABLE IF EXISTS `pmc_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_messages` (
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `room` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `latin1` tinyint(1) NOT NULL DEFAULT '0',
  `m_time` int(11) NOT NULL DEFAULT '0',
  `address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pm_read` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `room_from` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_patterns`
--

DROP TABLE IF EXISTS `pmc_patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_patterns` (
  `bot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordera` tinyint(4) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `isend` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wordparent` (`parent`,`word`),
  KEY `botid` (`bot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_reg_users`
--

DROP TABLE IF EXISTS `pmc_reg_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_reg_users` (
  `id` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `latin1` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `showemail` tinyint(1) NOT NULL DEFAULT '0',
  `perms` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rooms` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reg_time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `allowpopup` tinyint(1) NOT NULL DEFAULT '1',
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favlink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `favlink1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `colorname` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/avatars/def_avatar.gif',
  `s_question` enum('0','1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `s_answer` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `login_counter` bigint(20) NOT NULL DEFAULT '0',
  `use_gravatar` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `join_room` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` date DEFAULT NULL,
  `show_bday` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `show_age` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `bday_email_sent` int(11) NOT NULL DEFAULT '0',
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_stats`
--

DROP TABLE IF EXISTS `pmc_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_stats` (
  `stat_date` date NOT NULL,
  `room` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reguser` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `last_in` int(11) NOT NULL DEFAULT '0',
  `seconds_in` int(11) NOT NULL DEFAULT '0',
  `longest_in` int(11) NOT NULL DEFAULT '0',
  `last_away` int(11) NOT NULL DEFAULT '0',
  `seconds_away` int(11) NOT NULL DEFAULT '0',
  `longest_away` int(11) NOT NULL DEFAULT '0',
  `times_away` tinyint(4) NOT NULL DEFAULT '0',
  `logins` smallint(5) NOT NULL DEFAULT '0',
  `posts_sent` smallint(5) NOT NULL DEFAULT '0',
  `pms_sent` smallint(5) NOT NULL DEFAULT '0',
  `cmds_used` smallint(5) NOT NULL DEFAULT '0',
  `profile_viewed` smallint(5) NOT NULL DEFAULT '0',
  `profiles_checked` smallint(5) NOT NULL DEFAULT '0',
  `imgs_posted` smallint(5) NOT NULL DEFAULT '0',
  `urls_posted` smallint(5) NOT NULL DEFAULT '0',
  `emails_posted` smallint(5) NOT NULL DEFAULT '0',
  `swears_posted` smallint(5) NOT NULL DEFAULT '0',
  `smilies_posted` smallint(5) NOT NULL DEFAULT '0',
  `bans_rcvd` tinyint(4) NOT NULL DEFAULT '0',
  `bans_sent` tinyint(4) NOT NULL DEFAULT '0',
  `kicks_rcvd` tinyint(4) NOT NULL DEFAULT '0',
  `kicks_sent` tinyint(4) NOT NULL DEFAULT '0',
  `vids_posted` smallint(5) NOT NULL DEFAULT '0',
  `maths_posted` smallint(5) NOT NULL DEFAULT '0',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_templates`
--

DROP TABLE IF EXISTS `pmc_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_templates` (
  `bot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `that` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `bot` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_thatindex`
--

DROP TABLE IF EXISTS `pmc_thatindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_thatindex` (
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enteredtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_thatstack`
--

DROP TABLE IF EXISTS `pmc_thatstack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_thatstack` (
  `thatid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enteredtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pmc_users`
--

DROP TABLE IF EXISTS `pmc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmc_users` (
  `room` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `latin1` tinyint(1) NOT NULL DEFAULT '0',
  `u_time` int(11) NOT NULL DEFAULT '0',
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `awaystat` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `r_time` int(11) NOT NULL DEFAULT '0',
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `room` (`room`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 18:20:32
