-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816450876.hosting-data.io    Database: db816450876
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
-- Dumping data for table `e107_admin_log`
--

LOCK TABLES `e107_admin_log` WRITE;
/*!40000 ALTER TABLE `e107_admin_log` DISABLE KEYS */;
INSERT INTO `e107_admin_log` VALUES (1,1581291751,333813,0,'PREFS_01',0,'0000:0000:0000:0000:0000:ffff:d4e3:dd8d','LAN_AL_PREFS_01','LAN_SETSAVED - Success[!br!]Array[!br!]([!br!]    [0] =&gt; Array[!br!]        ([!br!]            [file] =&gt; /homepages/33/d816427774/htdocs/clickandbuilds/e107/e107/e107_handlers/online_class.php[!br!]            [line] =&gt; 389[!br!]            [function] =&gt; save[!br!]            [class] =&gt; e_pref[!br!]            [type] =&gt; -&gt;[!br!]            [args] =&gt; Array[!br!]                ([!br!]                    [0] =&gt; [!br!]                    [1] =&gt; 1[!br!]                    [2] =&gt; [!br!]                )[!br!][!br!]        )[!br!][!br!]    [1] =&gt; Array[!br!]        ([!br!]            [file] =&gt; /homepages/33/d816427774/htdocs/clickandbuilds/e107/e107/class2.php[!br!]            [line] =&gt; 2069[!br!]            [function] =&gt; goOnline[!br!]            [class] =&gt; e_online[!br!]            [type] =&gt; -&gt;[!br!]            [args] =&gt; Array[!br!]                ([!br!]                    [0] =&gt; 1[!br!]                    [1] =&gt; 1[!br!]                )[!br!][!br!]        )[!br!][!br!])[!br!]');
/*!40000 ALTER TABLE `e107_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_audit_log`
--

LOCK TABLES `e107_audit_log` WRITE;
/*!40000 ALTER TABLE `e107_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_banlist`
--

LOCK TABLES `e107_banlist` WRITE;
/*!40000 ALTER TABLE `e107_banlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_banlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_comments`
--

LOCK TABLES `e107_comments` WRITE;
/*!40000 ALTER TABLE `e107_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_core`
--

LOCK TABLES `e107_core` WRITE;
/*!40000 ALTER TABLE `e107_core` DISABLE KEYS */;
INSERT INTO `e107_core` VALUES ('SitePrefs','array (\n  \'admin_alerts_ok\' => \'1\',\n  \'admin_alerts_uniquemenu\' => \'0\',\n  \'admin_separate_plugins\' => \'0\',\n  \'admincode\' => \'0\',\n  \'admincss\' => \'admin_dark.css\',\n  \'adminlanguage\' => \'\',\n  \'adminpwordchange\' => \'0\',\n  \'adminstyle\' => \'flexpanel\',\n  \'admintheme\' => \'bootstrap3\',\n  \'allowCommentEdit\' => \'0\',\n  \'allowEmailLogin\' => \'2\',\n  \'anon_post\' => \'0\',\n  \'antiflood1\' => \'1\',\n  \'antiflood_timeout\' => \'10\',\n  \'auth_method\' => \'\',\n  \'autoban\' => \'1\',\n  \'autologinpostsignup\' => \'1\',\n  \'ban_date_format\' => \'%H:%M %d-%m-%y\',\n  \'ban_max_online_access\' => \'100,200\',\n  \'ban_retrigger\' => \'0\',\n  \'cachestatus\' => \'\',\n  \'check_updates\' => \'1\',\n  \'comments_disabled\' => \'0\',\n  \'comments_emoticons\' => \'0\',\n  \'comments_engine\' => \'e107\',\n  \'comments_icon\' => \'0\',\n  \'comments_moderate\' => \'247\',\n  \'comments_sort\' => \'desc\',\n  \'compress_output\' => \'0\',\n  \'contact_emailcopy\' => \'0\',\n  \'contact_visibility\' => \'0\',\n  \'contact_filter\' => \'\',\n  \'cookie_name\' => \'Mysi_cookie\',\n  \'core-infopanel-default\' => \n  array (\n    0 => \'e-administrator\',\n    1 => \'e-cpage\',\n    2 => \'e-filemanager\',\n    3 => \'e-frontpage\',\n    4 => \'e-image\',\n    5 => \'e-mailout\',\n    6 => \'e-menus\',\n    7 => \'e-meta\',\n    8 => \'e-newspost\',\n    9 => \'e-plugin\',\n    10 => \'e-prefs\',\n    11 => \'e-links\',\n    12 => \'e-theme\',\n    13 => \'e-userclass2\',\n    14 => \'e-users\',\n    15 => \'e-wmessage\',\n  ),\n  \'db_updates\' => \n  array (\n  ),\n  \'developer\' => \'0\',\n  \'disable_emailcheck\' => \'0\',\n  \'disallowMultiLogin\' => \'0\',\n  \'display_memory_usage\' => \'0\',\n  \'displayname_class\' => \'255\',\n  \'displayname_maxlength\' => \'20\',\n  \'displayrendertime\' => \'0\',\n  \'displaysql\' => \'0\',\n  \'displaythemeinfo\' => \'1\',\n  \'download_email\' => \'0\',\n  \'e_admin_list\' => \'\',\n  \'e_comment_list\' => \'\',\n  \'e_event_list\' => \n  array (\n    \'news\' => \'news\',\n  ),\n  \'e_featurebox_list\' => \n  array (\n    \'news\' => \'news\',\n  ),\n  \'e_footer_list\' => \'\',\n  \'e_header_list\' => \n  array (\n    \'news\' => \'news\',\n  ),\n  \'e_jslib_cdn\' => \'1\',\n  \'e_jslib_cdn_provider\' => \'jsdelivr\',\n  \'e_jslib_browser_cache\' => \'0\',\n  \'e_jslib_nobcache\' => \'1\',\n  \'e_jslib_nocache\' => \'1\',\n  \'e_jslib_gzip\' => \'1\',\n  \'e_jslib_nocombine\' => \'1\',\n  \'e_jslib_core\' => \n  array (\n    \'prototype\' => \'none\',\n    \'jquery\' => \'all\',\n  ),\n  \'e_jslib_plugin\' => \n  array (\n  ),\n  \'e_jslib_theme\' => \n  array (\n  ),\n  \'e_meta_list\' => \'\',\n  \'e_module_list\' => \'\',\n  \'e_related_list\' => \n  array (\n    \'news\' => \'news\',\n    \'page\' => \'page\',\n  ),\n  \'e_rss_list\' => \n  array (\n    \'news\' => \'news\',\n  ),\n  \'e_search_list\' => \n  array (\n    \'news\' => \'news\',\n    \'page\' => \'page\',\n  ),\n  \'e_shortcode_list\' => \n  array (\n    \'page\' => \'page\',\n    \'siteinfo\' => \'siteinfo\',\n  ),\n  \'shortcode_list\' => \n  array (\n  ),\n  \'e_sitelink_list\' => \n  array (\n    \'news\' => \'news\',\n    \'page\' => \'page\',\n  ),\n  \'e_sql_list\' => \'\',\n  \'e_url_list\' => \n  array (\n    \'contact\' => \'contact\',\n    \'news\' => \'news\',\n  ),\n  \'e_user_list\' => \n  array (\n    \'user\' => \'user\',\n  ),\n  \'email_text\' => \'\',\n  \'emotepack\' => \'default\',\n  \'enable_rdns\' => \'0\',\n  \'enable_rdns_on_ban\' => \'0\',\n  \'failed_login_limit\' => \'10\',\n  \'filter_script\' => \'1\',\n  \'flood_hits\' => \'100\',\n  \'flood_protect\' => \'1\',\n  \'flood_time\' => \'30\',\n  \'flood_timeout\' => \'5\',\n  \'forumdate\' => \'%a %b %d %Y, %I:%M%p\',\n  \'fpwcode\' => \'0\',\n  \'frontpage\' => \n  array (\n    0 => \'index.php\',\n  ),\n  \'frontpage_force\' => \n  array (\n    0 => \'\',\n  ),\n  \'gdpr_privacypolicy\' => \'\',\n  \'gdpr_termsandconditions\' => \'\',\n  \'html_abuse\' => \'1\',\n  \'im_height\' => \'80\',\n  \'im_path\' => \'/usr/X11R6/bin/\',\n  \'im_width\' => \'80\',\n  \'image_post\' => \'1\',\n  \'image_post_class\' => \'0\',\n  \'image_preload\' => \'0\',\n  \'img_import_resize\' => \'1200x800\',\n  \'inline_editing\' => \'255\',\n  \'inputdate\' => \'%A, %d %b, %Y\',\n  \'inputtime\' => \'%I:%M %p\',\n  \'install_date\' => 1581286852,\n  \'link_replace\' => \'0\',\n  \'link_text\' => \'\',\n  \'linkpage_screentip\' => \'0\',\n  \'links_new_window\' => \'1\',\n  \'log_page_accesses\' => \'0\',\n  \'log_refertype\' => \'1\',\n  \'logcode\' => \'0\',\n  \'loginname_maxlength\' => \'30\',\n  \'longdate\' => \'%A %d %B %Y - %H:%M:%S\',\n  \'mail_pause\' => \'3\',\n  \'mail_bounce\' => \'none\',\n  \'mail_pausetime\' => \'4\',\n  \'mail_sendstyle\' => \'texthtml\',\n  \'mail_workpertick\' => \'5\',\n  \'mailer\' => \'php\',\n  \'bulkmailer\' => \'smtp\',\n  \'main_wordwrap\' => \'\',\n  \'maintainance_flag\' => \'0\',\n  \'make_clickable\' => \'0\',\n  \'memberlist_access\' => \'253\',\n  \'membersonly_enabled\' => \'0\',\n  \'membersonly_exceptions\' => \n  array (\n    0 => \'\',\n  ),\n  \'menu_wordwrap\' => \'0\',\n  \'menuconfig_list\' => \n  array (\n    \'login_menu\' => \n    array (\n      \'name\' => \'Login\',\n      \'link\' => \'login_menu/config.php\',\n    ),\n    \'news\' => \n    array (\n      \'name\' => \'Newsmonths\',\n      \'link\' => \'blogcalendar_menu/config.php\',\n    ),\n  ),\n  \'membersonly_redirect\' => \'login\',\n  \'meta_tag\' => \'\',\n  \'multilanguage\' => \'0\',\n  \'nbr_cols\' => \'1\',\n  \'nested_comments\' => \'1\',\n  \'news_cats\' => \'\',\n  \'news_default_template\' => \'default\',\n  \'news_list_limit\' => \'10\',\n  \'news_newdateheader\' => \'0\',\n  \'newsposts\' => \'10\',\n  \'newsposts_archive\' => \'0\',\n  \'newsposts_archive_title\' => \'\',\n  \'noLanguageSubs\' => \'0\',\n  \'null\' => \'\',\n  \'old_np\' => \'0\',\n  \'pageCookieExpire\' => \'84600\',\n  \'passwordEncoding\' => 3,\n  \'password_CHAP\' => \'0\',\n  \'plug_installed\' => \n  array (\n    \'news\' => \'1.0\',\n    \'page\' => \'1.0\',\n    \'siteinfo\' => \'1.0\',\n    \'social\' => \'1.0\',\n    \'tinymce4\' => \'1.0\',\n    \'rss_menu\' => \'1.3\',\n    \'contact\' => \'1.0\',\n    \'user\' => \'1.0\',\n  ),\n  \'post_html\' => \'254\',\n  \'post_script\' => \'254\',\n  \'predefinedLoginName\' => \'\',\n  \'profanity_filter\' => \'0\',\n  \'profanity_replace\' => \'[censored]\',\n  \'profanity_words\' => \'\',\n  \'redirectsiteurl\' => \'0\',\n  \'replyto_email\' => \'piotrowski+ionos.de@prisma.io\',\n  \'replyto_name\' => \'admin\',\n  \'resize_method\' => \'gd2\',\n  \'resize_dimensions\' => \n  array (\n    \'news-image\' => \n    array (\n      \'w\' => \'300\',\n      \'h\' => \'300\',\n    ),\n    \'news-bbcode\' => \n    array (\n      \'w\' => \'300\',\n      \'h\' => \'300\',\n    ),\n    \'page-bbcode\' => \n    array (\n      \'w\' => \'300\',\n      \'h\' => \'300\',\n    ),\n  ),\n  \'search_highlight\' => \'1\',\n  \'search_restrict\' => \'0\',\n  \'session_lifetime\' => \'86400\',\n  \'shortdate\' => \'%d %b %Y : %H:%M\',\n  \'signcode\' => \'0\',\n  \'signup_disallow_text\' => \'\',\n  \'signup_maxip\' => \'3\',\n  \'signup_option_class\' => \'0\',\n  \'signup_option_customtitle\' => \'0\',\n  \'signup_option_email_confirm\' => \'0\',\n  \'signup_option_hideemail\' => \'0\',\n  \'signup_option_image\' => \'0\',\n  \'signup_option_password\' => \'2\',\n  \'signup_option_realname\' => \'0\',\n  \'signup_option_signature\' => \'0\',\n  \'signup_pass_len\' => \'6\',\n  \'signup_text\' => \'\',\n  \'signup_text_after\' => \'\',\n  \'siteadmin\' => \'admin\',\n  \'siteadminemail\' => \'piotrowski+ionos.de@prisma.io\',\n  \'sitebutton\' => \'{e_IMAGE}button.png\',\n  \'sitecontactinfo\' => \'[b]My Company[/b]\n13 My Address St.\nCity, State, Country\n[b]Phone:[/b] 555-555-5555\n[b]Email:[/b] sales@mydomain.com\',\n  \'sitecontacts\' => \'255\',\n  \'sitedescription\' => \'\',\n  \'sitedisclaimer\' => \'\',\n  \'sitelang_init\' => \'English\',\n  \'sitelanguage\' => \'English\',\n  \'sitelogo\' => \'\',\n  \'sitename\' => \'My site\',\n  \'sitetag\' => \'e107 Website System\',\n  \'sitetheme\' => \'voux\',\n  \'sitetheme_custompages\' => \n  array (\n    \'jumbotron_full\' => \n    array (\n      0 => \'forum\',\n    ),\n    \'jumbotron_sidebar_right\' => \n    array (\n      0 => \'/news\',\n    ),\n  ),\n  \'sitetheme_deflayout\' => \'jumbotron_sidebar_right\',\n  \'sitetheme_layouts\' => \n  array (\n    \'jumbotron_home\' => \n    array (\n      \'@attributes\' => \n      array (\n        \'title\' => \'Jumbotron (home)\',\n        \'default\' => \'false\',\n      ),\n      \'@value\' => \'\',\n    ),\n    \'modern_business_home\' => \n    array (\n      \'@attributes\' => \n      array (\n        \'title\' => \'Modern Business: Home page carousel with fixed custom-menus\',\n      ),\n      \'@value\' => \'\',\n    ),\n    \'jumbotron_full\' => \n    array (\n      \'@attributes\' => \n      array (\n        \'title\' => \'Jumbotron (full-width)\',\n      ),\n      \'custompages\' => \'forum\',\n    ),\n    \'jumbotron_sidebar_right\' => \n    array (\n      \'@attributes\' => \n      array (\n        \'title\' => \'Jumbotron (sidebar-right)\',\n        \'default\' => \'true\',\n      ),\n      \'custompages\' => \'/news\',\n      \'menuPresets\' => \n      array (\n        \'area\' => \n        array (\n          0 => \n          array (\n            \'@attributes\' => \n            array (\n              \'id\' => \'1\',\n            ),\n            \'menu\' => \n            array (\n              0 => \n              array (\n                \'@attributes\' => \n                array (\n                  \'name\' => \'search\',\n                ),\n                \'@value\' => \'\',\n              ),\n              1 => \n              array (\n                \'@attributes\' => \n                array (\n                  \'name\' => \'news_categories\',\n                ),\n                \'@value\' => \'\',\n              ),\n              2 => \n              array (\n                \'@attributes\' => \n                array (\n                  \'name\' => \'other_news\',\n                ),\n                \'@value\' => \'\',\n              ),\n              3 => \n              array (\n                \'@attributes\' => \n                array (\n                  \'name\' => \'other_news2\',\n                ),\n                \'@value\' => \'\',\n              ),\n              4 => \n              array (\n                \'@attributes\' => \n                array (\n                  \'name\' => \'blogcalendar\',\n                ),\n                \'@value\' => \'\',\n              ),\n            ),\n          ),\n        ),\n      ),\n    ),\n  ),\n  \'sitetheme_pref\' => \'\',\n  \'siteurl\' => \'/\',\n  \'smiley_activate\' => \'1\',\n  \'smtp_server\' => \'\',\n  \'smtp_username\' => \'\',\n  \'smtp_password\' => \'\',\n  \'smtp_options\' => \'\',\n  \'smtp_port\' => \'25\',\n  \'social_login_active\' => \'0\',\n  \'social_login\' => \'array()\',\n  \'ssl_enabled\' => \'0\',\n  \'subnews_attach\' => \'253\',\n  \'subnews_class\' => \'253\',\n  \'subnews_htmlarea\' => \'0\',\n  \'subnews_resize\' => \'\',\n  \'themecss\' => \'style.css\',\n  \'thumbnail_quality\' => \'75\',\n  \'timezone\' => \'UTC\',\n  \'track_online\' => \'1\',\n  \'ue_upgrade\' => \'1\',\n  \'upload_class\' => \'255\',\n  \'upload_enabled\' => \'0\',\n  \'upload_maxfilesize\' => \'2M\',\n  \'url_aliases\' => \n  array (\n  ),\n  \'url_config\' => \n  array (\n    \'index\' => \'core\',\n    \'news\' => \'core\',\n    \'page\' => \'core\',\n    \'search\' => \'core\',\n    \'system\' => \'core\',\n    \'user\' => \'core\',\n  ),\n  \'url_profiles\' => \n  array (\n  ),\n  \'url_disable_pathinfo\' => \'1\',\n  \'url_error_redirect\' => \'0\',\n  \'url_locations\' => \n  array (\n    \'index\' => \n    array (\n      0 => \'core\',\n    ),\n    \'news\' => \n    array (\n      0 => \'core\',\n      1 => \'core/sef_full\',\n      2 => \'core/sef_noid\',\n      3 => \'core/sef\',\n    ),\n    \'page\' => \n    array (\n      0 => \'core\',\n      1 => \'core/sef_chapters\',\n      2 => \'core/sef_noid\',\n      3 => \'core/sef\',\n    ),\n    \'search\' => \n    array (\n      0 => \'core\',\n      1 => \'core/rewrite\',\n    ),\n    \'system\' => \n    array (\n      0 => \'core\',\n      1 => \'core/rewrite\',\n    ),\n    \'user\' => \n    array (\n      0 => \'core\',\n      1 => \'core/rewrite\',\n    ),\n  ),\n  \'url_main_module\' => \'\',\n  \'url_modules\' => \n  array (\n    \'core\' => \n    array (\n      0 => \'index\',\n      1 => \'news\',\n      2 => \'page\',\n      3 => \'search\',\n      4 => \'system\',\n      5 => \'user\',\n    ),\n    \'plugin\' => \n    array (\n    ),\n    \'override\' => \n    array (\n    ),\n  ),\n  \'url_sef_translate\' => \'dashl\',\n  \'useGeshi\' => \'0\',\n  \'use_coppa\' => \'1\',\n  \'user_new_period\' => \'3\',\n  \'user_reg\' => \'1\',\n  \'user_reg_secureveri\' => \'1\',\n  \'user_reg_veri\' => \'1\',\n  \'user_tracking\' => \'cookie\',\n  \'version\' => \'2.2.0\',\n  \'wm_enclose\' => \'1\',\n  \'wmessage_sc\' => \'0\',\n  \'wysiwyg\' => \'1\',\n  \'xup_enabled\' => \'1\',\n  \'xurl\' => \n  array (\n    \'facebook\' => \'#\',\n    \'twitter\' => \'#\',\n    \'youtube\' => \'#\',\n    \'google\' => \'#\',\n    \'linkedin\' => \'\',\n    \'github\' => \'\',\n    \'flickr\' => \'\',\n    \'instagram\' => \'\',\n    \'pinterest\' => \'\',\n    \'vimeo\' => \'\',\n  ),\n  \'xmlfeed_languagepacks\' => \'http://www.e107.org/themeupdate.php\',\n  \'xmlfeed_security\' => \'http://www.e107.org/themeupdate.php\',\n  \'bbcode_list\' => \n  array (\n  ),\n  \'shortcode_legacy_list\' => \n  array (\n  ),\n  \'e_menu_list\' => \n  array (\n    \'news\' => \'news\',\n    \'page\' => \'page\',\n  ),\n  \'e_gsitemap_list\' => \n  array (\n    \'news\' => \'news\',\n  ),\n  \'e_dashboard_list\' => \n  array (\n    \'user\' => \'user\',\n  ),\n  \'e_mailout_list\' => \n  array (\n    \'user\' => \'user\',\n  ),\n  \'sitetheme_glyphicons\' => \n  array (\n  ),\n  \'sitetheme_version\' => \'1.0\',\n)'),('emote_','array (\n  \'alien!png\' => \'!alien\',\n  \'amazed!png\' => \'!amazed\',\n  \'angry!png\' => \'!grr !angry\',\n  \'biglaugh!png\' => \'!lol\',\n  \'cheesey!png\' => \':D :oD :-D\',\n  \'confused!png\' => \':? :o? :-?\',\n  \'cry!png\' => \'&| &-| &o| :(( !cry\',\n  \'dead!png\' => \'x) xo) x-) x( xo( x-(\',\n  \'dodge!png\' => \'!dodge\',\n  \'frown!png\' => \':( :o( :-(\',\n  \'gah!png\' => \':@ :o@ :o@\',\n  \'grin!png\' => \':D :oD :-D\',\n  \'heart!png\' => \'!heart\',\n  \'idea!png\' => \':! :o! :-!\',\n  \'ill!png\' => \'!ill\',\n  \'mad!png\' => \'~:( ~:o( ~:-(\',\n  \'mistrust!png\' => \'!mistrust\',\n  \'neutral!png\' => \':| :o| :-|\',\n  \'question!png\' => \'?!\',\n  \'rolleyes!png\' => \'B) Bo) B-)\',\n  \'sad!png\' => \'!sad\',\n  \'shades!png\' => \'8) 8o) 8-)\',\n  \'shy!png\' => \'!shy\',\n  \'smile!png\' => \':) :o) :-)\',\n  \'special!png\' => \'%-6\',\n  \'suprised!png\' => \':O :oO :-O\',\n  \'tongue!png\' => \':p :op :-p :P :oP :-P\',\n  \'wink!png\' => \';) ;o) ;-)\',\n)'),('menu_pref','array (\n  \'clock_caption\' => \'Date / Time\',\n  \'comment_caption\' => \'Latest Comments\',\n  \'comment_characters\' => \'50\',\n  \'comment_display\' => \'10\',\n  \'comment_postfix\' => \'[more ...]\',\n  \'comment_title\' => \'0\',\n  \'forum_no_characters\' => \'20\',\n  \'forum_postfix\' => \'[more ...]\',\n  \'forum_show_topics\' => \'1\',\n  \'newforumposts_caption\' => \'Latest Forum Posts\',\n  \'newforumposts_characters\' => \'50\',\n  \'newforumposts_display\' => \'10\',\n  \'newforumposts_postfix\' => \'[more ...]\',\n  \'newforumposts_title\' => \'0\',\n  \'update_menu\' => \'Update menu Settings\',\n)'),('search_prefs','array (\n  \'comments_handlers\' => \n  array (\n    \'news\' => \n    array (\n      \'id\' => 0,\n      \'dir\' => \'core\',\n      \'class\' => \'0\',\n    ),\n    \'download\' => \n    array (\n      \'id\' => 2,\n      \'dir\' => \'core\',\n      \'class\' => \'0\',\n    ),\n  ),\n  \'core_handlers\' => \n  array (\n    \'comments\' => \n    array (\n      \'class\' => \'0\',\n      \'pre_title\' => \'1\',\n      \'pre_title_alt\' => \'\',\n      \'chars\' => \'150\',\n      \'results\' => \'10\',\n      \'order\' => \'2\',\n    ),\n    \'users\' => \n    array (\n      \'class\' => \'0\',\n      \'pre_title\' => \'1\',\n      \'pre_title_alt\' => \'\',\n      \'chars\' => \'150\',\n      \'results\' => \'10\',\n      \'order\' => \'3\',\n    ),\n  ),\n  \'google\' => \'0\',\n  \'multisearch\' => \'1\',\n  \'mysql_sort\' => \'1\',\n  \'php_limit\' => \'\',\n  \'relevance\' => \'0\',\n  \'selector\' => \'2\',\n  \'time_restrict\' => \'0\',\n  \'time_secs\' => \'60\',\n  \'user_select\' => \'1\',\n)'),('notify_prefs','array (\n  \'event\' => \n  array (\n    \'login\' => \n    array (\n      \'class\' => \'255\',\n      \'email\' => \'\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'logout\' => \n    array (\n      \'class\' => \'255\',\n      \'email\' => \'\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'user_signup_submitted\' => \n    array (\n      \'class\' => \'255\',\n      \'email\' => \'\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'user_signup_activated\' => \n    array (\n      \'class\' => \'255\',\n      \'email\' => \'\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'user_ban_flood\' => \n    array (\n      \'class\' => \'255\',\n      \'email\' => \'\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'user_news_submit\' => \n    array (\n      \'class\' => \'255\',\n      \'email\' => \'\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'admin_news_created\' => \n    array (\n      \'class\' => \'255\',\n      \'email\' => \'\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'admin_news_updated\' => \n    array (\n      \'class\' => \'255\',\n      \'email\' => \'\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'admin_news_deleted\' => \n    array (\n      \'class\' => \'255\',\n      \'email\' => \'\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'user_xup_login\' => \n    array (\n      \'class\' => \'255\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'user_xup_signup\' => \n    array (\n      \'class\' => \'255\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'user_ban_failed_login\' => \n    array (\n      \'class\' => \'255\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'user_profile_display\' => \n    array (\n      \'class\' => \'255\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'admin_password_update\' => \n    array (\n      \'class\' => \'255\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'admin_user_created\' => \n    array (\n      \'class\' => \'255\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'admin_user_activated\' => \n    array (\n      \'class\' => \'255\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'admin_news_notify\' => \n    array (\n      \'class\' => \'255\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'maildone\' => \n    array (\n      \'class\' => \'255\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n    \'user_file_upload\' => \n    array (\n      \'class\' => \'255\',\n      \'include\' => \'\',\n      \'legacy\' => \'0\',\n    ),\n  ),\n)'),('SitePrefs_Backup','array (\n  \'admin_alerts_ok\' => \'1\',\n  \'admin_alerts_uniquemenu\' => \'0\',\n  \'admin_separate_plugins\' => \'0\',\n  \'admincode\' => \'0\',\n  \'admincss\' => \'admin_dark.css\',\n  \'adminlanguage\' => \'\',\n  \'adminpwordchange\' => \'0\',\n  \'adminstyle\' => \'flexpanel\',\n  \'admintheme\' => \'bootstrap3\',\n  \'allowCommentEdit\' => \'0\',\n  \'allowEmailLogin\' => \'2\',\n  \'anon_post\' => \'0\',\n  \'antiflood1\' => \'1\',\n  \'antiflood_timeout\' => \'10\',\n  \'auth_method\' => \'\',\n  \'autoban\' => \'1\',\n  \'autologinpostsignup\' => \'1\',\n  \'ban_date_format\' => \'%H:%M %d-%m-%y\',\n  \'ban_max_online_access\' => \'100,200\',\n  \'ban_retrigger\' => \'0\',\n  \'cachestatus\' => \'\',\n  \'check_updates\' => \'1\',\n  \'comments_disabled\' => \'0\',\n  \'comments_emoticons\' => \'0\',\n  \'comments_engine\' => \'e107\',\n  \'comments_icon\' => \'0\',\n  \'comments_moderate\' => \'247\',\n  \'comments_sort\' => \'desc\',\n  \'compress_output\' => \'0\',\n  \'contact_emailcopy\' => \'0\',\n  \'contact_visibility\' => \'0\',\n  \'contact_filter\' => \'\',\n  \'cookie_name\' => \'e107cookie\',\n  \'core-infopanel-default\' => \n  array (\n    0 => \'e-administrator\',\n    1 => \'e-cpage\',\n    2 => \'e-filemanager\',\n    3 => \'e-frontpage\',\n    4 => \'e-image\',\n    5 => \'e-mailout\',\n    6 => \'e-menus\',\n    7 => \'e-meta\',\n    8 => \'e-newspost\',\n    9 => \'e-plugin\',\n    10 => \'e-prefs\',\n    11 => \'e-links\',\n    12 => \'e-theme\',\n    13 => \'e-userclass2\',\n    14 => \'e-users\',\n    15 => \'e-wmessage\',\n  ),\n  \'db_updates\' => \n  array (\n  ),\n  \'developer\' => \'0\',\n  \'disable_emailcheck\' => \'0\',\n  \'disallowMultiLogin\' => \'0\',\n  \'display_memory_usage\' => \'0\',\n  \'displayname_class\' => \'255\',\n  \'displayname_maxlength\' => \'20\',\n  \'displayrendertime\' => \'0\',\n  \'displaysql\' => \'0\',\n  \'displaythemeinfo\' => \'1\',\n  \'download_email\' => \'0\',\n  \'e_admin_list\' => \'\',\n  \'e_comment_list\' => \'\',\n  \'e_event_list\' => \n  array (\n    \'news\' => \'news\',\n  ),\n  \'e_featurebox_list\' => \n  array (\n    \'news\' => \'news\',\n  ),\n  \'e_footer_list\' => \'\',\n  \'e_header_list\' => \n  array (\n    \'news\' => \'news\',\n  ),\n  \'e_jslib_cdn\' => \'1\',\n  \'e_jslib_cdn_provider\' => \'jsdelivr\',\n  \'e_jslib_browser_cache\' => \'0\',\n  \'e_jslib_nobcache\' => \'1\',\n  \'e_jslib_nocache\' => \'1\',\n  \'e_jslib_gzip\' => \'1\',\n  \'e_jslib_nocombine\' => \'1\',\n  \'e_jslib_core\' => \n  array (\n    \'prototype\' => \'none\',\n    \'jquery\' => \'all\',\n  ),\n  \'e_jslib_plugin\' => \n  array (\n  ),\n  \'e_jslib_theme\' => \n  array (\n  ),\n  \'e_meta_list\' => \'\',\n  \'e_module_list\' => \'\',\n  \'e_related_list\' => \n  array (\n    \'news\' => \'news\',\n    \'page\' => \'page\',\n  ),\n  \'e_rss_list\' => \n  array (\n    \'news\' => \'news\',\n  ),\n  \'e_search_list\' => \n  array (\n    \'news\' => \'news\',\n    \'page\' => \'page\',\n  ),\n  \'e_shortcode_list\' => \n  array (\n    \'page\' => \'page\',\n    \'siteinfo\' => \'siteinfo\',\n  ),\n  \'shortcode_list\' => \n  array (\n  ),\n  \'e_sitelink_list\' => \n  array (\n    \'news\' => \'news\',\n    \'page\' => \'page\',\n  ),\n  \'e_sql_list\' => \'\',\n  \'e_url_list\' => \n  array (\n    \'contact\' => \'contact\',\n    \'news\' => \'news\',\n  ),\n  \'e_user_list\' => \n  array (\n    \'user\' => \'user\',\n  ),\n  \'email_text\' => \'\',\n  \'emotepack\' => \'default\',\n  \'enable_rdns\' => \'0\',\n  \'enable_rdns_on_ban\' => \'0\',\n  \'failed_login_limit\' => \'10\',\n  \'filter_script\' => \'1\',\n  \'flood_hits\' => \'100\',\n  \'flood_protect\' => \'1\',\n  \'flood_time\' => \'30\',\n  \'flood_timeout\' => \'5\',\n  \'forumdate\' => \'%a %b %d %Y, %I:%M%p\',\n  \'fpwcode\' => \'0\',\n  \'frontpage\' => \n  array (\n    0 => \'index.php\',\n  ),\n  \'frontpage_force\' => \n  array (\n    0 => \'\',\n  ),\n  \'gdpr_privacypolicy\' => \'\',\n  \'gdpr_termsandconditions\' => \'\',\n  \'html_abuse\' => \'1\',\n  \'im_height\' => \'80\',\n  \'im_path\' => \'/usr/X11R6/bin/\',\n  \'im_width\' => \'80\',\n  \'image_post\' => \'1\',\n  \'image_post_class\' => \'0\',\n  \'image_preload\' => \'0\',\n  \'img_import_resize\' => \'1200x800\',\n  \'inline_editing\' => \'255\',\n  \'inputdate\' => \'%A, %d %b, %Y\',\n  \'inputtime\' => \'%I:%M %p\',\n  \'install_date\' => \'1251664949\',\n  \'link_replace\' => \'0\',\n  \'link_text\' => \'\',\n  \'linkpage_screentip\' => \'0\',\n  \'links_new_window\' => \'1\',\n  \'log_page_accesses\' => \'0\',\n  \'log_refertype\' => \'1\',\n  \'logcode\' => \'0\',\n  \'loginname_maxlength\' => \'30\',\n  \'longdate\' => \'%A %d %B %Y - %H:%M:%S\',\n  \'mail_pause\' => \'3\',\n  \'mail_bounce\' => \'none\',\n  \'mail_pausetime\' => \'4\',\n  \'mail_sendstyle\' => \'texthtml\',\n  \'mail_workpertick\' => \'5\',\n  \'mailer\' => \'php\',\n  \'bulkmailer\' => \'smtp\',\n  \'main_wordwrap\' => \'\',\n  \'maintainance_flag\' => \'0\',\n  \'make_clickable\' => \'0\',\n  \'memberlist_access\' => \'253\',\n  \'membersonly_enabled\' => \'0\',\n  \'membersonly_exceptions\' => \n  array (\n    0 => \'\',\n  ),\n  \'menu_wordwrap\' => \'0\',\n  \'menuconfig_list\' => \n  array (\n    \'login_menu\' => \n    array (\n      \'name\' => \'Login\',\n      \'link\' => \'login_menu/config.php\',\n    ),\n    \'news\' => \n    array (\n      \'name\' => \'Newsmonths\',\n      \'link\' => \'blogcalendar_menu/config.php\',\n    ),\n  ),\n  \'membersonly_redirect\' => \'login\',\n  \'meta_tag\' => \'\',\n  \'multilanguage\' => \'0\',\n  \'nbr_cols\' => \'1\',\n  \'nested_comments\' => \'1\',\n  \'news_cats\' => \'\',\n  \'news_default_template\' => \'default\',\n  \'news_list_limit\' => \'10\',\n  \'news_newdateheader\' => \'0\',\n  \'newsposts\' => \'10\',\n  \'newsposts_archive\' => \'0\',\n  \'newsposts_archive_title\' => \'\',\n  \'noLanguageSubs\' => \'0\',\n  \'null\' => \'\',\n  \'old_np\' => \'0\',\n  \'pageCookieExpire\' => \'84600\',\n  \'passwordEncoding\' => \'0\',\n  \'password_CHAP\' => \'0\',\n  \'plug_installed\' => \n  array (\n    \'news\' => \'1.0\',\n    \'page\' => \'1.0\',\n    \'siteinfo\' => \'1.0\',\n    \'social\' => \'1.0\',\n    \'tinymce4\' => \'1.0\',\n    \'rss_menu\' => \'1.3\',\n    \'contact\' => \'1.0\',\n    \'user\' => \'1.0\',\n  ),\n  \'post_html\' => \'254\',\n  \'post_script\' => \'254\',\n  \'predefinedLoginName\' => \'\',\n  \'profanity_filter\' => \'0\',\n  \'profanity_replace\' => \'[censored]\',\n  \'profanity_words\' => \'\',\n  \'redirectsiteurl\' => \'0\',\n  \'replyto_email\' => \'registration@yoursite.com\',\n  \'replyto_name\' => \'e107 Website System\',\n  \'resize_method\' => \'gd2\',\n  \'resize_dimensions\' => \n  array (\n    \'news-image\' => \n    array (\n      \'w\' => \'300\',\n      \'h\' => \'300\',\n    ),\n    \'news-bbcode\' => \n    array (\n      \'w\' => \'300\',\n      \'h\' => \'300\',\n    ),\n    \'page-bbcode\' => \n    array (\n      \'w\' => \'300\',\n      \'h\' => \'300\',\n    ),\n  ),\n  \'search_highlight\' => \'1\',\n  \'search_restrict\' => \'0\',\n  \'session_lifetime\' => \'86400\',\n  \'shortdate\' => \'%d %b %Y : %H:%M\',\n  \'signcode\' => \'0\',\n  \'signup_disallow_text\' => \'\',\n  \'signup_maxip\' => \'3\',\n  \'signup_option_class\' => \'0\',\n  \'signup_option_customtitle\' => \'0\',\n  \'signup_option_email_confirm\' => \'0\',\n  \'signup_option_hideemail\' => \'0\',\n  \'signup_option_image\' => \'0\',\n  \'signup_option_password\' => \'2\',\n  \'signup_option_realname\' => \'0\',\n  \'signup_option_signature\' => \'0\',\n  \'signup_pass_len\' => \'6\',\n  \'signup_text\' => \'\',\n  \'signup_text_after\' => \'\',\n  \'siteadmin\' => \'admin\',\n  \'siteadminemail\' => \'user@yoursite.com\',\n  \'sitebutton\' => \'{e_IMAGE}button.png\',\n  \'sitecontactinfo\' => \'[b]My Company[/b]\n13 My Address St.\nCity, State, Country\n[b]Phone:[/b] 555-555-5555\n[b]Email:[/b] sales@mydomain.com\',\n  \'sitecontacts\' => \'255\',\n  \'sitedescription\' => \'\',\n  \'sitedisclaimer\' => \'Copyright Info. All Rights Reserved\',\n  \'sitelang_init\' => \'English\',\n  \'sitelanguage\' => \'English\',\n  \'sitelogo\' => \'\',\n  \'sitename\' => \'My Website\',\n  \'sitetag\' => \'e107 Website System\',\n  \'sitetheme\' => \'voux\',\n  \'sitetheme_custompages\' => \n  array (\n    \'jumbotron_full\' => \n    array (\n      0 => \'forum\',\n    ),\n    \'jumbotron_sidebar_right\' => \n    array (\n      0 => \'/news\',\n    ),\n  ),\n  \'sitetheme_deflayout\' => \'jumbotron_sidebar_right\',\n  \'sitetheme_layouts\' => \n  array (\n    \'jumbotron_home\' => \n    array (\n      \'@attributes\' => \n      array (\n        \'title\' => \'Jumbotron (home)\',\n        \'default\' => \'false\',\n      ),\n      \'@value\' => \'\',\n    ),\n    \'modern_business_home\' => \n    array (\n      \'@attributes\' => \n      array (\n        \'title\' => \'Modern Business: Home page carousel with fixed custom-menus\',\n      ),\n      \'@value\' => \'\',\n    ),\n    \'jumbotron_full\' => \n    array (\n      \'@attributes\' => \n      array (\n        \'title\' => \'Jumbotron (full-width)\',\n      ),\n      \'custompages\' => \'forum\',\n    ),\n    \'jumbotron_sidebar_right\' => \n    array (\n      \'@attributes\' => \n      array (\n        \'title\' => \'Jumbotron (sidebar-right)\',\n        \'default\' => \'true\',\n      ),\n      \'custompages\' => \'/news\',\n      \'menuPresets\' => \n      array (\n        \'area\' => \n        array (\n          0 => \n          array (\n            \'@attributes\' => \n            array (\n              \'id\' => \'1\',\n            ),\n            \'menu\' => \n            array (\n              0 => \n              array (\n                \'@attributes\' => \n                array (\n                  \'name\' => \'search\',\n                ),\n                \'@value\' => \'\',\n              ),\n              1 => \n              array (\n                \'@attributes\' => \n                array (\n                  \'name\' => \'news_categories\',\n                ),\n                \'@value\' => \'\',\n              ),\n              2 => \n              array (\n                \'@attributes\' => \n                array (\n                  \'name\' => \'other_news\',\n                ),\n                \'@value\' => \'\',\n              ),\n              3 => \n              array (\n                \'@attributes\' => \n                array (\n                  \'name\' => \'other_news2\',\n                ),\n                \'@value\' => \'\',\n              ),\n              4 => \n              array (\n                \'@attributes\' => \n                array (\n                  \'name\' => \'blogcalendar\',\n                ),\n                \'@value\' => \'\',\n              ),\n            ),\n          ),\n        ),\n      ),\n    ),\n  ),\n  \'sitetheme_pref\' => \'\',\n  \'siteurl\' => \'/\',\n  \'smiley_activate\' => \'1\',\n  \'smtp_server\' => \'\',\n  \'smtp_username\' => \'\',\n  \'smtp_password\' => \'\',\n  \'smtp_options\' => \'\',\n  \'smtp_port\' => \'25\',\n  \'social_login_active\' => \'0\',\n  \'social_login\' => \'array()\',\n  \'ssl_enabled\' => \'0\',\n  \'subnews_attach\' => \'253\',\n  \'subnews_class\' => \'253\',\n  \'subnews_htmlarea\' => \'0\',\n  \'subnews_resize\' => \'\',\n  \'themecss\' => \'style.css\',\n  \'thumbnail_quality\' => \'75\',\n  \'timezone\' => \'UTC\',\n  \'track_online\' => \'1\',\n  \'ue_upgrade\' => \'1\',\n  \'upload_class\' => \'255\',\n  \'upload_enabled\' => \'0\',\n  \'upload_maxfilesize\' => \'2M\',\n  \'url_aliases\' => \n  array (\n  ),\n  \'url_config\' => \n  array (\n    \'index\' => \'core\',\n    \'news\' => \'core\',\n    \'page\' => \'core\',\n    \'search\' => \'core\',\n    \'system\' => \'core\',\n    \'user\' => \'core\',\n  ),\n  \'url_profiles\' => \n  array (\n  ),\n  \'url_disable_pathinfo\' => \'1\',\n  \'url_error_redirect\' => \'0\',\n  \'url_locations\' => \n  array (\n    \'index\' => \n    array (\n      0 => \'core\',\n    ),\n    \'news\' => \n    array (\n      0 => \'core\',\n      1 => \'core/sef_full\',\n      2 => \'core/sef_noid\',\n      3 => \'core/sef\',\n    ),\n    \'page\' => \n    array (\n      0 => \'core\',\n      1 => \'core/sef_chapters\',\n      2 => \'core/sef_noid\',\n      3 => \'core/sef\',\n    ),\n    \'search\' => \n    array (\n      0 => \'core\',\n      1 => \'core/rewrite\',\n    ),\n    \'system\' => \n    array (\n      0 => \'core\',\n      1 => \'core/rewrite\',\n    ),\n    \'user\' => \n    array (\n      0 => \'core\',\n      1 => \'core/rewrite\',\n    ),\n  ),\n  \'url_main_module\' => \'\',\n  \'url_modules\' => \n  array (\n    \'core\' => \n    array (\n      0 => \'index\',\n      1 => \'news\',\n      2 => \'page\',\n      3 => \'search\',\n      4 => \'system\',\n      5 => \'user\',\n    ),\n    \'plugin\' => \n    array (\n      0 => \'gallery\',\n    ),\n    \'override\' => \n    array (\n    ),\n  ),\n  \'url_sef_translate\' => \'dashl\',\n  \'useGeshi\' => \'0\',\n  \'use_coppa\' => \'1\',\n  \'user_new_period\' => \'3\',\n  \'user_reg\' => \'1\',\n  \'user_reg_secureveri\' => \'1\',\n  \'user_reg_veri\' => \'1\',\n  \'user_tracking\' => \'cookie\',\n  \'version\' => \'2.2.0\',\n  \'wm_enclose\' => \'1\',\n  \'wmessage_sc\' => \'0\',\n  \'wysiwyg\' => \'1\',\n  \'xup_enabled\' => \'1\',\n  \'xurl\' => \n  array (\n    \'facebook\' => \'#\',\n    \'twitter\' => \'#\',\n    \'youtube\' => \'#\',\n    \'google\' => \'#\',\n    \'linkedin\' => \'\',\n    \'github\' => \'\',\n    \'flickr\' => \'\',\n    \'instagram\' => \'\',\n    \'pinterest\' => \'\',\n    \'vimeo\' => \'\',\n  ),\n  \'xmlfeed_languagepacks\' => \'http://www.e107.org/themeupdate.php\',\n  \'xmlfeed_security\' => \'http://www.e107.org/themeupdate.php\',\n  \'bbcode_list\' => \n  array (\n  ),\n  \'shortcode_legacy_list\' => \n  array (\n  ),\n  \'e_menu_list\' => \n  array (\n    \'news\' => \'news\',\n    \'page\' => \'page\',\n  ),\n  \'e_gsitemap_list\' => \n  array (\n    \'news\' => \'news\',\n  ),\n  \'e_dashboard_list\' => \n  array (\n    \'user\' => \'user\',\n  ),\n  \'e_mailout_list\' => \n  array (\n    \'user\' => \'user\',\n  ),\n  \'sitetheme_glyphicons\' => \n  array (\n  ),\n  \'sitetheme_version\' => \'1.0\',\n)'),('theme_voux','array (\n  \'branding\' => \'sitename\',\n  \'nav_alignment\' => \'right\',\n  \'usernav_placement\' => \'bottom\',\n)'),('history_prefs','array (\n  \'most_members_online\' => 0,\n  \'most_guests_online\' => 1,\n  \'most_online_datestamp\' => 1581291751,\n)');
/*!40000 ALTER TABLE `e107_core` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_core_media`
--

LOCK TABLES `e107_core_media` WRITE;
/*!40000 ALTER TABLE `e107_core_media` DISABLE KEYS */;
INSERT INTO `e107_core_media` VALUES (1,'image/png','logo2B252832529.png','logo2B252832529.png','','_common_image',1559153914,1,'{e_THEME}voux/install/logo2B252832529.png',6167,'482 x 140','0','',''),(2,'image/jpeg','2_.jpg','2_.jpg','','_common_image',1559153914,1,'{e_THEME}voux/install/2_.jpg',136551,'1162 x 775','0','',''),(3,'image/jpeg','8.jpg','8.jpg','','_common_image',1559153914,1,'{e_THEME}voux/install/8.jpg',73660,'1140 x 678','0','',''),(4,'image/jpeg','DeathtoStock_NYC5-840x512.jpg','DeathtoStock_NYC5-840x512.jpg','','_common_image',1559153914,1,'{e_THEME}voux/install/DeathtoStock_NYC5-840x512.jpg',128655,'840 x 512','0','',''),(5,'image/jpeg','DeathtoStock_Portraits-4-840x512.jpg','DeathtoStock_Portraits-4-840x512.jpg','','_common_image',1559153914,1,'{e_THEME}voux/install/DeathtoStock_Portraits-4-840x512.jpg',134141,'840 x 512','0','',''),(6,'image/jpeg','gasmask.jpg','gasmask.jpg','','_common_image',1559153914,1,'{e_THEME}voux/install/gasmask.jpg',91054,'1200 x 830','0','',''),(7,'image/jpeg','post5-1080x720.jpg','post5-1080x720.jpg','','_common_image',1559153914,1,'{e_THEME}voux/install/post5-1080x720.jpg',179902,'1080 x 720','0','',''),(8,'image/jpeg','post8-1080x715.jpg','post8-1080x715.jpg','','_common_image',1559153914,1,'{e_THEME}voux/install/post8-1080x715.jpg',139250,'1080 x 715','0','',''),(9,'image/jpeg','preview.jpg','preview.jpg','','_common_image',1559153914,1,'{e_THEME}voux/preview.jpg',78505,'1920 x 1080','0','','');
/*!40000 ALTER TABLE `e107_core_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_core_media_cat`
--

LOCK TABLES `e107_core_media_cat` WRITE;
/*!40000 ALTER TABLE `e107_core_media_cat` DISABLE KEYS */;
INSERT INTO `e107_core_media_cat` VALUES (1,'_common','_common_image','(Common Images)','','Media in this category will be available in all areas of admin.',253,'',0),(2,'_common','_common_file','(Common Files)','','Media in this category will be available in all areas of admin.',253,'',0),(3,'_common','_common_video','(Common Videos)','','Media in this category will be available in all areas of admin.',253,'',0),(4,'_common','_common_audio','(Common Audio)','','Media in this category will be available in all areas of admin.',253,'',0),(5,'news','news','News','','Will be available in the news area.',253,'',1),(6,'page','page','Custom Pages','','Will be available in the custom pages area of admin.',253,'',0),(7,'download','download_image','Download Images','','',253,'',0),(8,'download','download_thumb','Download Thumbnails','','',253,'',0),(9,'download','download_file','Download Files','','',253,'',0),(10,'news','news_thumb','News Thumbnails (Legacy)','','Legacy news thumbnails.',253,'',1),(11,'_icon','_icon_16','Icons 16px','','Available where icons are used in admin.',253,'',0),(12,'_icon','_icon_32','Icons 32px','','Available where icons are used in admin.',253,'',0),(13,'_icon','_icon_48','Icons 48px','','Available where icons are used in admin.',253,'',0),(14,'_icon','_icon_64','Icons 64px','','Available where icons are used in admin.',253,'',0),(15,'_icon','_icon_svg','Icons SVG','','Available where icons are used in admin.',253,'',0);
/*!40000 ALTER TABLE `e107_core_media_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_cron`
--

LOCK TABLES `e107_cron` WRITE;
/*!40000 ALTER TABLE `e107_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_dblog`
--

LOCK TABLES `e107_dblog` WRITE;
/*!40000 ALTER TABLE `e107_dblog` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_dblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_generic`
--

LOCK TABLES `e107_generic` WRITE;
/*!40000 ALTER TABLE `e107_generic` DISABLE KEYS */;
INSERT INTO `e107_generic` VALUES (1,'wmessage',1145848343,1,'Hello World!',0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque mattis sapien nec velit laoreet pulvinar. Integer sollicitudin risus nec nunc aliquam condimentum. Quisque malesuada posuere vulputate. Aliquam sit amet metus quam? Sed quam sem, condimentum ac convallis vel, posuere at augue. Cras accumsan, erat a laoreet blandit, turpis enim ullamcorper lectus, a tempus justo nunc id orci. Nulla vehicula, dolor vel rhoncus varius, nunc sapien laoreet turpis; id commodo arcu erat fringilla orci. Aenean gravida adipiscing nulla, ut tristique erat interdum porta. Sed at semper felis. Nullam bibendum faucibus gravida. In leo enim, gravida non molestie non, ultricies id nunc. Maecenas placerat interdum luctus. Ut mauris nisi, faucibus eu venenatis ac, lobortis ac velit. Donec sed leo urna, et vehicula neque. Curabitur malesuada auctor ornare.');
/*!40000 ALTER TABLE `e107_generic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_links`
--

LOCK TABLES `e107_links` WRITE;
/*!40000 ALTER TABLE `e107_links` DISABLE KEYS */;
INSERT INTO `e107_links` VALUES (1,'Home','index.php','','',1,0,0,0,'0','','',''),(3,'Members','user.php','','icon-user.glyph',2,3,0,0,'0','','',''),(4,'Submit News','submitnews.php','','icon-upload.glyph',2,4,0,0,'253','','',''),(5,'Contact Us','contact.php','','',1,5,0,0,'0','','index','contact'),(6,'News','news.php','','',1,1,0,0,'0','','index','news'),(7,'Content','page.php','','',1,2,0,0,'0','','',''),(8,'Article 1','page.php?id=1','','',1,0,7,0,'0','','',''),(9,'Article 2','page.php?id=2','','',1,1,7,0,'0','','',''),(10,'Article 3','page.php?id=3','','',1,2,7,0,'0','','','');
/*!40000 ALTER TABLE `e107_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_mail_content`
--

LOCK TABLES `e107_mail_content` WRITE;
/*!40000 ALTER TABLE `e107_mail_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_mail_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_mail_recipients`
--

LOCK TABLES `e107_mail_recipients` WRITE;
/*!40000 ALTER TABLE `e107_mail_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_mail_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_menus`
--

LOCK TABLES `e107_menus` WRITE;
/*!40000 ALTER TABLE `e107_menus` DISABLE KEYS */;
INSERT INTO `e107_menus` VALUES (1,'login_menu',1,1,'0','','login_menu/','',''),(2,'online_menu',0,0,'0','','online/','',''),(3,'blogcalendar_menu',0,0,'0','','blogcalendar_menu/','',''),(5,'search_menu',0,0,'0','','search_menu/','',''),(6,'counter_menu',0,0,'0','','siteinfo/','',''),(7,'userlanguage_menu',0,0,'0','','user/','',''),(8,'compliance_menu',0,0,'0','','siteinfo/','',''),(9,'other_news_menu',0,0,'0','','news/','',''),(10,'clock_menu',0,0,'0','','clock_menu/','',''),(11,'other_news2_menu',0,0,'0','','news/','',''),(12,'comment_menu',0,0,'0','','comment_menu/','',''),(13,'lastseen_menu',0,0,'0','','online/','',''),(14,'news_months_menu',1,2,'0','','news/','',''),(15,'admin_menu',0,0,'0','','admin_menu/','',''),(16,'news_categories_menu',0,0,'0','','news/','',''),(17,'latestnews_menu',0,0,'0','','news/','',''),(18,'usertheme_menu',0,0,'0','','user/','',''),(19,'powered_by_menu',0,0,'0','','siteinfo/','',''),(20,'sitebutton_menu',0,0,'0','','siteinfo/','',''),(21,'news_carousel_menu',0,0,'0','','news/','',''),(22,'chapter_menu',0,0,'0','','page/','',''),(23,'page_menu',0,0,'0','','page/','',''),(24,'page_navigation_menu',0,0,'0','','page/','','');
/*!40000 ALTER TABLE `e107_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_news`
--

LOCK TABLES `e107_news` WRITE;
/*!40000 ALTER TABLE `e107_news` DISABLE KEYS */;
INSERT INTO `e107_news` VALUES (1,'Welcome to e107','welcome-to-e107','[html]<p>Lorem ipsum dolor sit amet, no meis semper dicunt est, petentium eloquentiam quo ne. At vero facer eam. Ex nam altera oportere, nisl natum prima id pro. Rebum augue dissentiet eum te, vel veniam eirmod option ea, at eos velit repudiare. Ius sumo dicit adolescens id, an cum efficiantur concludaturque.<br><br>Summo sensibus cum ne, et duo torquatos conceptam. No aeque elitr constituam qui. Nostro corpora nec no, diam verterem tincidunt has et. Altera accumsan urbanitas pro eu, ei assum voluptaria sed. Eam tibique nominavi consequuntur an.<br><br>Ei perfecto delicata usu, quo eius noster blandit te. Eu doctus volumus pri. Meis argumentum an nam, eos odio prima autem an. Te complectitur intellegebat pro, ius id alterum maiestatis. Ea facer accusata sed, ex illum antiopam quo.<br><br>Altera putent pri ad, in phaedrum dissentiunt per. Te eum everti dolores. Ut mea vero autem viderer, mel brute harum senserit id. Minim senserit eloquentiam duo in, sit ei justo graece petentium. Sea id homero oporteat invenire.<br><br>Pri semper dolorum ad. Cu eius repudiare eos. Eum in eleifend necessitatibus. Ne has mutat intellegebat.</p>[/html]','[html]<p><strong>Lorem ipsum</strong> is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It&#039;s also called placeholder (or filler) text. It&#039;s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout. Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, so to deliberately render its content nonsensical; it&#039;s not genuine, correct, or comprehensible Latin anymore.</p>\n<p>While <strong>lorem ipsum</strong>&#039;s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero&#039;s text doesn&#039;t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the&nbsp; typographic appearence of European languages, as are digraphs not to be found in the original.</p>[/html]','welcome,new website','Description for Facebook and search engines.',1454367600,1,1,0,0,0,'0','0',0,'Summary of the news item','',0,NULL);
/*!40000 ALTER TABLE `e107_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_news_category`
--

LOCK TABLES `e107_news_category` WRITE;
/*!40000 ALTER TABLE `e107_news_category` DISABLE KEYS */;
INSERT INTO `e107_news_category` VALUES (1,'Misc','misc','','',254,'news_16.png',0,NULL);
/*!40000 ALTER TABLE `e107_news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_online`
--

LOCK TABLES `e107_online` WRITE;
/*!40000 ALTER TABLE `e107_online` DISABLE KEYS */;
INSERT INTO `e107_online` VALUES (1581354758,0,'0','0000:0000:0000:0000:0000:ffff:d9a0:9802','/',2,0,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/7046A194A','en');
/*!40000 ALTER TABLE `e107_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_page`
--

LOCK TABLES `e107_page` WRITE;
/*!40000 ALTER TABLE `e107_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_page_chapters`
--

LOCK TABLES `e107_page_chapters` WRITE;
/*!40000 ALTER TABLE `e107_page_chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_page_chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_plugin`
--

LOCK TABLES `e107_plugin` WRITE;
/*!40000 ALTER TABLE `e107_plugin` DISABLE KEYS */;
INSERT INTO `e107_plugin` VALUES (1,'LAN_PLUGIN__BLANK_NAME','2.0','_blank',0,'e_admin,e_cron,e_notify,e_print,e_frontpage,e_menu,e_search,e_shortcode,e_event,e_dashboard,e_header,e_url,e_sitelink,e_parse,e_related,e_rss,e_user,e_library,_blank_sql','misc'),(2,'LAN_PLUGIN_BANNER_NAME','1.0','banner',0,'e_menu,e_shortcode,banner_sql','content'),(3,'LAN_PLUGIN_CHATBOX_MENU_NAME','1.0','chatbox_menu',0,'e_notify,e_list,e_search,e_dashboard,e_header,e_rss,e_user,chatbox_sql','content'),(4,'Contact','1.0','contact',1,'e_url','menu'),(5,'LAN_PLUGIN_DOWNLOAD_NAME','1.2','download',0,'e_cron,e_list,e_frontpage,e_search,e_tagwords,e_url,e_sitelink,e_rss,e_upload,e_gsitemap,download_sql','content'),(6,'LAN_PLUGIN_FEATUREBOX_NAME','1.1','featurebox',0,'e_shortcode,e_header,e_rss,featurebox_sql','content'),(7,'LAN_PLUGIN_FORUM_NAME','2.1','forum',0,'e_notify,e_linkgen,e_list,e_meta,e_emailprint,e_frontpage,e_menu,e_search,e_event,e_dashboard,e_url,e_rss,e_user,e_gsitemap,forum_sql','content'),(8,'LAN_PLUGIN_GALLERY_TITLE','1.1','gallery',0,'e_shortcode,e_header,e_url,e_library','content'),(9,'LAN_PLUGIN_GSITEMAP_NAME','1.0','gsitemap',0,'e_cron,e_module,e_url,gsitemap_sql','misc'),(10,'LAN_PLUGIN_IMPORT_NAME','1.0','import',0,'','tools'),(11,'LAN_PLUGIN_LINKWORDS_NAME','1.1','linkwords',0,'e_header,e_tohtml,linkwords_sql','content'),(12,'LAN_PLUGIN_LIST_NEW_NAME','1.0.1','list_new',0,'','content'),(13,'LAN_PLUGIN_LOG_NAME','2.1','log',0,'e_meta,e_shortcode,e_url,log_sql','misc'),(14,'News','1.0','news',1,'e_menu,e_search,e_event,e_header,e_url,e_sitelink,e_featurebox,e_related,e_rss,e_gsitemap','menu'),(15,'LAN_PLUGIN_NEWSFEEDS_NAME','2.0','newsfeed',0,'e_frontpage,e_url,newsfeed_sql','content'),(16,'Pages','1.0','page',1,'e_menu,e_search,e_shortcode,e_sitelink,e_related','menu'),(17,'LAN_PLUGIN_PM_NAME','3.0','pm',0,'e_cron,e_shortcode,e_url,pm_sql','users'),(18,'LAN_PLUGIN_POLL_NAME','2.0','poll',0,'poll_sql','content'),(19,'LAN_PLUGIN_RSS_NAME','1.3','rss_menu',0,'e_meta,e_url,rss_sql','misc'),(20,'Siteinfo','1.0','siteinfo',1,'e_shortcode','menu'),(21,'LAN_PLUGIN_SOCIAL_NAME','1.0','social',0,'e_admin,e_shortcode,e_module,e_event,e_comment','settings'),(22,'LAN_PLUGIN_TAGCLOUD_NAME','1.3','tagcloud',0,'e_menu,e_header','misc'),(23,'TinyMce4','1.0','tinymce4',0,'e_header,e_footer','misc'),(24,'LAN_PLUGIN_TRACKBACK_NAME','1.1','trackback',0,'e_admin,e_meta,trackback_sql','misc'),(25,'LAN_PLUGIN_USER_NAME','1.0','user',1,'e_dashboard,e_mailout,e_user','misc');
/*!40000 ALTER TABLE `e107_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_rate`
--

LOCK TABLES `e107_rate` WRITE;
/*!40000 ALTER TABLE `e107_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_submitnews`
--

LOCK TABLES `e107_submitnews` WRITE;
/*!40000 ALTER TABLE `e107_submitnews` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_submitnews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_tmp`
--

LOCK TABLES `e107_tmp` WRITE;
/*!40000 ALTER TABLE `e107_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_upload`
--

LOCK TABLES `e107_upload` WRITE;
/*!40000 ALTER TABLE `e107_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_user`
--

LOCK TABLES `e107_user` WRITE;
/*!40000 ALTER TABLE `e107_user` DISABLE KEYS */;
INSERT INTO `e107_user` VALUES (1,'admin','admin','','296409b5104724723c460dd8747d348c','','piotrowski+ionos.de@prisma.io','','',0,1581286852,0,0,0,0,0,'2001:8d8:5c0:453:3128:0:1:2',0,'',0,1,'','','0','',1581286852,'');
/*!40000 ALTER TABLE `e107_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_user_extended`
--

LOCK TABLES `e107_user_extended` WRITE;
/*!40000 ALTER TABLE `e107_user_extended` DISABLE KEYS */;
INSERT INTO `e107_user_extended` VALUES (1,NULL);
/*!40000 ALTER TABLE `e107_user_extended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_user_extended_struct`
--

LOCK TABLES `e107_user_extended_struct` WRITE;
/*!40000 ALTER TABLE `e107_user_extended_struct` DISABLE KEYS */;
/*!40000 ALTER TABLE `e107_user_extended_struct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `e107_userclass_classes`
--

LOCK TABLES `e107_userclass_classes` WRITE;
/*!40000 ALTER TABLE `e107_userclass_classes` DISABLE KEYS */;
INSERT INTO `e107_userclass_classes` VALUES (2,'CONTACT PEOPLE','Example contact person class',254,0,'0,2',0,0,'',''),(3,'NEWSLETTER','Subscribe to Newsletter',0,255,'3',0,0,'',''),(253,'Members','Registered and logged in members',250,0,'0,253',253,0,'',''),(246,'Search Bots','Identified search bots',250,0,'0,246',254,0,'',''),(254,'Admin','Site Administrators',250,0,'0,254',253,0,'',''),(248,'Forum Moderators','Moderators for Forums and other areas',250,0,'0,248',253,0,'',''),(249,'Admins and Mods','Anyone able to administer something, moderate forums etc',250,0,'0,249',253,0,'',''),(1,'PRIVATEMENU','Grants access to private menu items',254,0,'0,1',0,0,'',''),(247,'New Users','Recently joined users',250,0,'0,247',254,0,'',''),(250,'Main Admin','Main site Administrators',250,0,'0,250',253,0,'',''),(0,'Everyone (public)','Fixed class',250,0,'0',0,0,'',''),(252,'Guests','Fixed class',250,0,'0,252',0,0,'',''),(255,'No One (inactive)','Fixed class',250,0,'255',0,0,'',''),(251,'Read Only','Fixed class',250,0,'0,251',0,0,'','');
/*!40000 ALTER TABLE `e107_userclass_classes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 19:29:10
