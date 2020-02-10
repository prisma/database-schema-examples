-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816434291.hosting-data.io    Database: db816434291
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
-- Dumping data for table `copp_albums`
--

LOCK TABLES `copp_albums` WRITE;
/*!40000 ALTER TABLE `copp_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_banned`
--

LOCK TABLES `copp_banned` WRITE;
/*!40000 ALTER TABLE `copp_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_bridge`
--

LOCK TABLES `copp_bridge` WRITE;
/*!40000 ALTER TABLE `copp_bridge` DISABLE KEYS */;
INSERT INTO `copp_bridge` VALUES ('short_name',''),('full_forum_url',''),('relative_path_to_config_file',''),('use_post_based_groups',''),('cookie_prefix',''),('recovery_logon_failures','0'),('recovery_logon_timestamp','');
/*!40000 ALTER TABLE `copp_bridge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_categories`
--

LOCK TABLES `copp_categories` WRITE;
/*!40000 ALTER TABLE `copp_categories` DISABLE KEYS */;
INSERT INTO `copp_categories` VALUES (1,0,'User galleries','This category contains albums that belong to Coppermine users.',0,0,0,1,2,1);
/*!40000 ALTER TABLE `copp_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_categorymap`
--

LOCK TABLES `copp_categorymap` WRITE;
/*!40000 ALTER TABLE `copp_categorymap` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_categorymap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_comments`
--

LOCK TABLES `copp_comments` WRITE;
/*!40000 ALTER TABLE `copp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_config`
--

LOCK TABLES `copp_config` WRITE;
/*!40000 ALTER TABLE `copp_config` DISABLE KEYS */;
INSERT INTO `copp_config` VALUES ('admin_activation','0'),('alb_desc_thumb','1'),('alb_list_thumb_size','50'),('album_list_cols','2'),('album_sort_order','pa'),('album_uploads_default','NO'),('albums_per_page','12'),('allow_duplicate_emails_addr','0'),('allow_guests_enter_file_details','0'),('allowed_doc_types','doc/txt/rtf/pdf/xls/pps/ppt/zip/gz/mdb'),('allowed_img_types','jpeg/jpg/png/gif'),('allowed_mov_types','asf/asx/mpg/mpeg/wmv/swf/avi/mov/m4v'),('allowed_snd_types','mp3/midi/mid/wma/wav/ogg'),('allow_email_change','0'),('allow_memberlist','0'),('allow_private_albums','1'),('allow_unlogged_access','3'),('allow_user_account_delete','0'),('allow_user_album_keyword','0'),('allow_user_edit_after_cat_close','0'),('allow_user_move_album','0'),('allow_user_registration','0'),('allow_user_upload_choice','1'),('auto_orient_checked','1'),('auto_resize','1'),('batch_add_hide_existing_files','0'),('batch_proc_limit','2'),('bridge_enable','0'),('browse_batch_add','1'),('browse_by_date','0'),('caption_in_thumbview','1'),('categories_alpha_sort','0'),('charset','utf-8'),('clickable_keyword_search','1'),('comment_akismet_api_key',''),('comment_akismet_counter','0'),('comment_akismet_enable','0'),('comment_akismet_group','0'),('comment_approval','0'),('comment_captcha','1'),('comment_placeholder','1'),('comment_promote_registration','0'),('comments_anon_pfx','Guest_'),('comments_per_page','20'),('comments_sort_descending','0'),('comment_user_edit','1'),('contact_form_guest_email_field','2'),('contact_form_guest_enable','0'),('contact_form_guest_name_field','2'),('contact_form_registered_enable','1'),('contact_form_sender_email','1'),('contact_form_subject_content','Coppermine gallery contact form'),('contact_form_subject_field','0'),('cookie_name','cpg16x'),('cookie_path','/'),('cookies_need_consent','0'),('count_admin_hits','0'),('count_album_hits','1'),('count_file_hits','1'),('custom_footer_path',''),('custom_header_path',''),('custom_lnk_name',''),('custom_lnk_url',''),('custom_sortorder_thumbs','1'),('debug_mode','0'),('debug_notice','0'),('default_dir_mode','0755'),('default_file_mode','0644'),('default_sort_order','na'),('disable_comment_flood_protect','0'),('display_comment_approval_only','0'),('display_comment_count','0'),('display_coppermine_news','1'),('display_filename','0'),('display_film_strip','1'),('display_pic_info','0'),('display_redirection_page','0'),('display_reset_boxes_in_config','0'),('display_sidebar_guest','1'),('display_sidebar_user','1'),('display_stats_on_index','1'),('display_thumbnail_rating','0'),('display_thumbs_batch_add','1'),('display_uploader','0'),('ecard_captcha','1'),('ecard_flash','0'),('ecards_more_pic_target','http://coppermine.ionos-prisma.de/'),('editpics_ignore_newer_than','0'),('email_comment_notification','0'),('enable_encrypted_passwords','1'),('enable_help','1'),('enable_menu_icons','2'),('enable_plugins','1'),('enable_smilies','1'),('enable_thumb_watermark','1'),('enable_unsharp','0'),('enable_watermark','0'),('enable_zipdownload','0'),('filter_bad_words','0'),('first_level','1'),('forbiden_fname_char','$/\\\\:*?&quot;&#039;&lt;&gt;|` &amp;#@'),('fullpath','albums/'),('fullsize_padding_x','5'),('fullsize_padding_y','3'),('gallery_admin_email','piotrowski+ionos.de@prisma.io'),('gallery_description','Coppermine'),('gallery_name','Coppermine'),('global_registration_pw',''),('guest_token_cleanup','0'),('hit_details','0'),('home_target','index.php'),('im_options','-antialias'),('impath','/usr/bin/'),('jpeg_qual','80'),('keep_votes_time','30'),('keyword_separator',';'),('lang','english'),('language_autodetect','1'),('last_updates_check','1'),('link_pic_count','1'),('link_last_upload','0'),('log_ecards','0'),('login_expiry','10'),('login_method','username'),('login_threshold','5'),('log_mode','0'),('main_page_layout','breadcrumb/catlist/alblist/random,2/lastup,2'),('main_table_width','100%'),('make_intermediate','1'),('max_com_lines','10'),('max_com_size','512'),('max_com_wlength','38'),('max_film_strip_items','5'),('max_img_desc_length','512'),('max_tabs','12'),('max_upl_size','1024'),('max_upl_width_height','2048'),('media_autostart','1'),('min_votes_for_rating','1'),('normal_pfx','normal_'),('offline','0'),('only_empty_albums','0'),('old_style_rating','0'),('orig_pfx','orig_'),('performance_page_generation_time','0'),('performance_page_query_count','0'),('performance_page_query_time','0'),('performance_timestamp','0'),('personal_album_on_registration','0'),('picinfo_movie_download_link','1'),('picture_table_width','100%'),('picture_use','thumb'),('picture_width','400'),('purge_expired_bans','1'),('rate_own_files','0'),('rating_stars_amount','5'),('read_exif_data','0'),('read_iptc_data','0'),('reduce_watermark','0'),('registration_captcha','0'),('reg_notify_admin_email','0'),('reg_requires_valid_email','1'),('report_post','0'),('session_cleanup','1581345326'),('show_bbcode_help','1'),('show_private','0'),('show_which_exif','|0|0|0|0|0|0|0|0|1|0|1|1|0|0|0|0|0|0|0|0|0|0|0|1|0|0|0|1|0|0|0|1|1|0|0|0|0|1|0|0|0|1|0|0|1|1|0|0|0|0|0|1|0|1|1'),('silly_safe_mode','0'),('site_token','381d936fd70402045fc09e6c57017e9a'),('form_token_lifetime','3600'),('slideshow_hits','1'),('slideshow_interval','5000'),('smtp_host',''),('smtp_password',''),('smtp_username',''),('subcat_level','2'),('tabs_dropdown','1'),('theme','curve'),('theme_list','0'),('thumbcols','4'),('thumb_height','128'),('thumb_method','gd2'),('thumbnail_to_fullsize','0'),('thumb_pfx','thumb_'),('thumbrows','3'),('thumb_use','any'),('thumb_width','128'),('time_offset','0'),('transparent_overlay','0'),('unsharp_amount','120'),('unsharp_radius','0.5'),('unsharp_threshold','3'),('upl_notify_admin_email','0'),('upload_create_album_directory','1'),('upload_mechanism','upload_h5a'),('user_field1_name',''),('user_field2_name',''),('user_field3_name',''),('user_field4_name',''),('user_manager_hide_file_stats','0'),('userpics','userpics/'),('user_profile1_name','Location'),('user_profile2_name','Interests'),('user_profile3_name','Website'),('user_profile4_name','Occupation'),('user_profile5_name',''),('user_profile6_name','Biography'),('user_registration_disclaimer','1'),('users_can_edit_pics','0'),('views_in_thumbview','1'),('vote_details','0'),('watermark_file','images/watermark.png'),('watermark_transparency','40'),('watermark_transparency_featherx','0'),('watermark_transparency_feathery','0'),('where_put_watermark','southeast'),('which_files_to_watermark','both'),('upload_h5a','a:11:{s:10:\"concurrent\";i:3;s:8:\"upldsize\";i:0;s:8:\"autoedit\";i:1;s:8:\"acptmime\";s:7:\"image/*\";s:8:\"enabtitl\";i:0;s:8:\"enabdesc\";i:0;s:8:\"enabkeys\";i:1;s:8:\"enabusr1\";i:0;s:8:\"enabusr2\";i:0;s:8:\"enabusr3\";i:0;s:8:\"enabusr4\";i:0;}');
/*!40000 ALTER TABLE `copp_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_dict`
--

LOCK TABLES `copp_dict` WRITE;
/*!40000 ALTER TABLE `copp_dict` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_ecards`
--

LOCK TABLES `copp_ecards` WRITE;
/*!40000 ALTER TABLE `copp_ecards` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_ecards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_exif`
--

LOCK TABLES `copp_exif` WRITE;
/*!40000 ALTER TABLE `copp_exif` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_exif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_favpics`
--

LOCK TABLES `copp_favpics` WRITE;
/*!40000 ALTER TABLE `copp_favpics` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_favpics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_filetypes`
--

LOCK TABLES `copp_filetypes` WRITE;
/*!40000 ALTER TABLE `copp_filetypes` DISABLE KEYS */;
INSERT INTO `copp_filetypes` VALUES ('jpg','image/jpg','image',''),('jpeg','image/jpeg','image',''),('jpe','image/jpe','image',''),('gif','image/gif','image',''),('png','image/png','image',''),('bmp','image/bmp','image',''),('jpc','image/jpc','image',''),('jp2','image/jp2','image',''),('jpx','image/jpx','image',''),('jb2','image/jb2','image',''),('swc','image/swc','image',''),('iff','image/iff','image',''),('psd','image/psd','image',''),('asf','video/x-ms-asf','movie','WMP'),('asx','video/x-ms-asx','movie','WMP'),('mpg','video/mpeg','movie','WMP'),('mpeg','video/mpeg','movie','WMP'),('wmv','video/x-ms-wmv','movie','WMP'),('swf','application/x-shockwave-flash','movie','SWF'),('avi','video/avi','movie','WMP'),('mov','video/quicktime','movie','QT'),('mp4','video/mp4','movie','HTMLV'),('m4v','video/x-m4v','movie','HTMLV'),('mp3','audio/mpeg3','audio','WMP'),('midi','audio/midi','audio','WMP'),('mid','audio/midi','audio','WMP'),('wma','audio/x-ms-wma','audio','WMP'),('wav','audio/wav','audio','WMP'),('ogg','audio/ogg','audio','HTMLA'),('oga','audio/ogg','audio','HTMLA'),('ogv','video/ogg','movie','HTMLV'),('ram','audio/x-pn-realaudio','document','RMP'),('ra','audio/x-realaudio','document','RMP'),('rm','audio/x-realmedia','document','RMP'),('tiff','image/tiff','document',''),('tif','image/tif','document',''),('doc','application/msword','document',''),('xls','application/excel','document',''),('pps','application/powerpoint','document',''),('ppt','application/powerpoint','document',''),('mdb','application/msaccess','document',''),('txt','text/plain','document',''),('rtf','text/richtext','document',''),('pdf','application/pdf','document',''),('zip','application/zip','document',''),('rar','application/rar','document',''),('gz','application/gz','document',''),('001','application/001','document',''),('7z','application/7z','document',''),('arj','application/arj','document',''),('bz2','application/bz2','document',''),('cab','application/cab','document',''),('lzh','application/lzh','document',''),('rpm','application/rpm','document',''),('tar','application/tar','document',''),('z','application/z','document',''),('odb','application/vnd.oasis.opendocument.database','document',''),('odt','application/vnd.oasis.opendocument.text','document',''),('ods','application/vnd.oasis.opendocument.spreadsheet','document',''),('odp','application/vnd.oasis.opendocument.presentation','document',''),('odg','application/vnd.oasis.opendocument.graphics','document',''),('odc','application/vnd.oasis.opendocument.chart','document',''),('odf','application/vnd.oasis.opendocument.formula','document',''),('odi','application/vnd.oasis.opendocument.image','document',''),('odm','application/vnd.oasis.opendocument.text-master','document',''),('ott','application/vnd.oasis.opendocument.text-template','document',''),('ots','application/vnd.oasis.opendocument.spreadsheet-template','document',''),('otp','application/vnd.oasis.opendocument.presentation-template','document',''),('otg','application/vnd.oasis.opendocument.graphics-template','document',''),('otc','application/vnd.oasis.opendocument.chart-template','document',''),('otf','application/vnd.oasis.opendocument.formula-template','document',''),('oti','application/vnd.oasis.opendocument.image-template','document',''),('oth','application/vnd.oasis.opendocument.text-web','document',''),('sxw','application/vnd.sun.xml.writer','document',''),('stw','application/vnd.sun.xml.writer.template','document',''),('sxc','application/vnd.sun.xml.calc','document',''),('stc','application/vnd.sun.xml.calc.template','document',''),('sxd','application/vnd.sun.xml.draw','document',''),('std','application/vnd.sun.xml.draw.template','document',''),('sxi','application/vnd.sun.xml.impress','document',''),('sti','application/vnd.sun.xml.impress.template','document',''),('sxg','application/vnd.sun.xml.writer.global','document',''),('sxm','application/vnd.sun.xml.math','document',''),('docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document','document',''),('docm','application/vnd.ms-word.document.macroEnabled.12','document',''),('dotx','application/vnd.openxmlformats-officedocument.wordprocessingml.template','document',''),('dotm','application/vnd.ms-word.template.macroEnabled.12','document',''),('xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','document',''),('xlsm','application/vnd.ms-excel.sheet.macroEnabled.12','document',''),('xltx','application/vnd.openxmlformats-officedocument.spreadsheetml.template','document',''),('xltm','application/vnd.ms-excel.template.macroEnabled.12','document',''),('xlsb','application/vnd.ms-excel.sheet.binary.macroEnabled.12','document',''),('xlam','application/vnd.ms-excel.addin.macroEnabled.12','document',''),('pptx','application/vnd.openxmlformats-officedocument.presentationml.presentation','document',''),('pptm','application/vnd.ms-powerpoint.presentation.macroEnabled.12','document',''),('ppsx','application/vnd.openxmlformats-officedocument.presentationml.slideshow','document',''),('ppsm','application/vnd.ms-powerpoint.slideshow.macroEnabled.12','document',''),('potx','application/vnd.openxmlformats-officedocument.presentationml.template','document',''),('potm','application/vnd.ms-powerpoint.template.macroEnabled.12','document',''),('ppam','application/vnd.ms-powerpoint.addin.macroEnabled.12','document',''),('sldx','application/vnd.openxmlformats-officedocument.presentationml.slide','document',''),('sldm','application/vnd.ms-powerpoint.slide.macroEnabled.12','document',''),('thmx','application/vnd.ms-officetheme','document',''),('onetoc','application/onenote','document',''),('onetoc2','application/onenote','document',''),('onetmp','application/onenote','document',''),('onepkg','application/onenote','document','');
/*!40000 ALTER TABLE `copp_filetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_hit_stats`
--

LOCK TABLES `copp_hit_stats` WRITE;
/*!40000 ALTER TABLE `copp_hit_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_hit_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_languages`
--

LOCK TABLES `copp_languages` WRITE;
/*!40000 ALTER TABLE `copp_languages` DISABLE KEYS */;
INSERT INTO `copp_languages` VALUES ('english','English (US)','English (US)',NULL,'us','en','YES','YES','YES'),('french','French','Fran&ccedil;ais',NULL,'fr','fr','YES','YES','YES'),('german','German (informal)','Deutsch (Du)',NULL,'de','de','YES','YES','YES');
/*!40000 ALTER TABLE `copp_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_pictures`
--

LOCK TABLES `copp_pictures` WRITE;
/*!40000 ALTER TABLE `copp_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_plugins`
--

LOCK TABLES `copp_plugins` WRITE;
/*!40000 ALTER TABLE `copp_plugins` DISABLE KEYS */;
INSERT INTO `copp_plugins` VALUES (1,'HTML5 Upload',1,'upload_h5a',0),(2,'Flash Upload',1,'upload_swf',1),(3,'Single File Upload',1,'upload_sgl',2);
/*!40000 ALTER TABLE `copp_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_sessions`
--

LOCK TABLES `copp_sessions` WRITE;
/*!40000 ALTER TABLE `copp_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_temp_messages`
--

LOCK TABLES `copp_temp_messages` WRITE;
/*!40000 ALTER TABLE `copp_temp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_temp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_usergroups`
--

LOCK TABLES `copp_usergroups` WRITE;
/*!40000 ALTER TABLE `copp_usergroups` DISABLE KEYS */;
INSERT INTO `copp_usergroups` VALUES (1,'Administrators',0,1,1,1,1,1,1,0,0,3),(2,'Registered',1024,0,1,1,1,1,1,1,0,3),(3,'Anonymous',0,0,1,0,0,0,0,1,1,3);
/*!40000 ALTER TABLE `copp_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_users`
--

LOCK TABLES `copp_users` WRITE;
/*!40000 ALTER TABLE `copp_users` DISABLE KEYS */;
INSERT INTO `copp_users` VALUES (1,1,'YES','admin','8y9Q2Sg6bxXIS0gCXe4xvPah6Na9ynPB','Y1Yxa3VHMnJrR25Ccm04bWFyMW1pUDZj','sha256','1000','2020-02-09 18:04:58','2020-02-09 18:04:58','','piotrowski+ionos.de@prisma.io','','','','','','','','','');
/*!40000 ALTER TABLE `copp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_vote_stats`
--

LOCK TABLES `copp_vote_stats` WRITE;
/*!40000 ALTER TABLE `copp_vote_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_vote_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `copp_votes`
--

LOCK TABLES `copp_votes` WRITE;
/*!40000 ALTER TABLE `copp_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `copp_votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 19:28:54
