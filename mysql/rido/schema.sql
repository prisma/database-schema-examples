DROP TABLE IF EXISTS `gml_auth`;

CREATE TABLE `gml_auth` (
	`au_menu`	varchar(20)	NOT NULL	DEFAULT '',
	`mb_id`	varchar(20)	NOT NULL,
	`au_auth`	set('r','w','d')	NOT NULL	DEFAULT ''
);

DROP TABLE IF EXISTS `gml_board`;

CREATE TABLE `gml_board` (
	`bo_table`	varchar(20)	NOT NULL	DEFAULT '',
	`gr_id`	varchar(255)	NOT NULL	DEFAULT '',
	`bo_subject`	varchar(255)	NOT NULL	DEFAULT '',
	`bo_mobile_subject`	varchar(255)	NOT NULL	DEFAULT '',
	`bo_device`	enum('both','pc','mobile')	NOT NULL	DEFAULT 'both',
	`bo_admin`	varchar(255)	NOT NULL	DEFAULT '',
	`bo_list_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_read_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_write_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_reply_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_comment_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_upload_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_download_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_html_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_link_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_count_delete`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_count_modify`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_read_point`	int(11)	NOT NULL	DEFAULT '0',
	`bo_write_point`	int(11)	NOT NULL	DEFAULT '0',
	`bo_comment_point`	int(11)	NOT NULL	DEFAULT '0',
	`bo_download_point`	int(11)	NOT NULL	DEFAULT '0',
	`bo_use_category`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_category_list`	text	NOT NULL,
	`bo_use_sideview`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_file_content`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_secret`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_dhtml_editor`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_rss_view`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_good`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_nogood`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_name`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_signature`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_ip_view`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_list_view`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_list_file`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_list_content`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_table_width`	int(11)	NOT NULL	DEFAULT '0',
	`bo_subject_len`	int(11)	NOT NULL	DEFAULT '0',
	`bo_mobile_subject_len`	int(11)	NOT NULL	DEFAULT '0',
	`bo_page_rows`	int(11)	NOT NULL	DEFAULT '0',
	`bo_mobile_page_rows`	int(11)	NOT NULL	DEFAULT '0',
	`bo_new`	int(11)	NOT NULL	DEFAULT '0',
	`bo_hot`	int(11)	NOT NULL	DEFAULT '0',
	`bo_image_width`	int(11)	NOT NULL	DEFAULT '0',
	`bo_skin`	varchar(255)	NOT NULL	DEFAULT '',
	`bo_mobile_skin`	varchar(255)	NOT NULL	DEFAULT '',
	`bo_include_head`	varchar(255)	NOT NULL	DEFAULT '',
	`bo_include_tail`	varchar(255)	NOT NULL	DEFAULT '',
	`bo_content_head`	text	NOT NULL,
	`bo_mobile_content_head`	text	NOT NULL,
	`bo_content_tail`	text	NOT NULL,
	`bo_mobile_content_tail`	text	NOT NULL,
	`bo_insert_content`	text	NOT NULL,
	`bo_gallery_cols`	int(11)	NOT NULL	DEFAULT '0',
	`bo_gallery_width`	int(11)	NOT NULL	DEFAULT '0',
	`bo_gallery_height`	int(11)	NOT NULL	DEFAULT '0',
	`bo_mobile_gallery_width`	int(11)	NOT NULL	DEFAULT '0',
	`bo_mobile_gallery_height`	int(11)	NOT NULL	DEFAULT '0',
	`bo_upload_size`	int(11)	NOT NULL	DEFAULT '0',
	`bo_reply_order`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_search`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_order`	int(11)	NOT NULL	DEFAULT '0',
	`bo_count_write`	int(11)	NOT NULL	DEFAULT '0',
	`bo_count_comment`	int(11)	NOT NULL	DEFAULT '0',
	`bo_write_min`	int(11)	NOT NULL	DEFAULT '0',
	`bo_write_max`	int(11)	NOT NULL	DEFAULT '0',
	`bo_comment_min`	int(11)	NOT NULL	DEFAULT '0',
	`bo_comment_max`	int(11)	NOT NULL	DEFAULT '0',
	`bo_notice`	text	NOT NULL,
	`bo_upload_count`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_email`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_cert`	enum('','cert','adult','hp-cert','hp-adult')	NOT NULL	DEFAULT '',
	`bo_use_sns`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_use_captcha`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bo_sort_field`	varchar(255)	NOT NULL	DEFAULT ''
);

DROP TABLE IF EXISTS `gml_board_file`;

CREATE TABLE `gml_board_file` (
	`wr_id`	int(11)	NOT NULL	DEFAULT '0',
	`bf_no`	int(11)	NOT NULL	DEFAULT '0',
	`bo_table`	varchar(20)	NOT NULL	DEFAULT '',
	`bf_source`	varchar(255)	NOT NULL	DEFAULT '',
	`bf_file`	varchar(255)	NOT NULL	DEFAULT '',
	`bf_download`	int(11)	NOT NULL,
	`bf_content`	text	NOT NULL,
	`bf_filesize`	int(11)	NOT NULL	DEFAULT '0',
	`bf_width`	int(11)	NOT NULL	DEFAULT '0',
	`bf_height`	smallint(6)	NOT NULL	DEFAULT '0',
	`bf_type`	tinyint(4)	NOT NULL	DEFAULT '0',
	`bf_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00'
);

DROP TABLE IF EXISTS `gml_board_good`;

CREATE TABLE `gml_board_good` (
	`bg_id`	int(11)	NOT NULL,
	`bo_table`	varchar(20)	NOT NULL	DEFAULT '',
	`mb_id`	varchar(20)	NOT NULL,
	`wr_id`	int(11)	NOT NULL	DEFAULT '0',
	`bg_flag`	varchar(255)	NOT NULL	DEFAULT '',
	`bg_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00'
);

DROP TABLE IF EXISTS `gml_board_new`;

CREATE TABLE `gml_board_new` (
	`bn_id`	int(11)	NOT NULL,
	`bo_table`	varchar(20)	NOT NULL	DEFAULT '',
	`mb_id`	varchar(20)	NOT NULL,
	`wr_id`	int(11)	NOT NULL	DEFAULT '0',
	`wr_parent`	int(11)	NOT NULL	DEFAULT '0',
	`bn_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00'
);

DROP TABLE IF EXISTS `gml_config`;

CREATE TABLE `gml_config` (
	`cf_title`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_theme`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_admin`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_admin_email`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_admin_email_name`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_lang`	char(10)	NOT NULL	DEFAULT '',
	`cf_use_multi_lang_data`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_add_script`	text	NOT NULL,
	`cf_use_point`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_point_term`	int(11)	NOT NULL	DEFAULT '0',
	`cf_use_copy_log`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_use_email_certify`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_login_point`	int(11)	NOT NULL	DEFAULT '0',
	`cf_cut_name`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_nick_modify`	int(11)	NOT NULL	DEFAULT '0',
	`cf_new_skin`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_new_rows`	int(11)	NOT NULL	DEFAULT '0',
	`cf_search_skin`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_connect_skin`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_faq_skin`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_read_point`	int(11)	NOT NULL	DEFAULT '0',
	`cf_write_point`	int(11)	NOT NULL	DEFAULT '0',
	`cf_comment_point`	int(11)	NOT NULL	DEFAULT '0',
	`cf_download_point`	int(11)	NOT NULL	DEFAULT '0',
	`cf_write_pages`	int(11)	NOT NULL	DEFAULT '0',
	`cf_mobile_pages`	int(11)	NOT NULL	DEFAULT '0',
	`cf_link_target`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_bbs_rewrite`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_delay_sec`	int(11)	NOT NULL	DEFAULT '0',
	`cf_filter`	text	NOT NULL,
	`cf_possible_ip`	text	NOT NULL,
	`cf_intercept_ip`	text	NOT NULL,
	`cf_analytics`	text	NOT NULL,
	`cf_add_meta`	text	NOT NULL,
	`cf_member_skin`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_use_homepage`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_req_homepage`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_use_tel`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_req_tel`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_use_hp`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_req_hp`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_use_addr`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_req_addr`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_use_signature`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_req_signature`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_use_profile`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_req_profile`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_register_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_register_point`	int(11)	NOT NULL	DEFAULT '0',
	`cf_icon_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_use_recommend`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_recommend_point`	int(11)	NOT NULL	DEFAULT '0',
	`cf_leave_day`	int(11)	NOT NULL	DEFAULT '0',
	`cf_search_part`	int(11)	NOT NULL	DEFAULT '0',
	`cf_email_use`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_email_wr_super_admin`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_email_wr_group_admin`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_email_wr_board_admin`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_email_wr_write`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_email_wr_comment_all`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_email_mb_super_admin`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_email_mb_member`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_email_po_super_admin`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_prohibit_id`	text	NOT NULL,
	`cf_prohibit_email`	text	NOT NULL,
	`cf_new_del`	int(11)	NOT NULL	DEFAULT '0',
	`cf_memo_del`	int(11)	NOT NULL	DEFAULT '0',
	`cf_visit_del`	int(11)	NOT NULL	DEFAULT '0',
	`cf_popular_del`	int(11)	NOT NULL	DEFAULT '0',
	`cf_notice_del`	int(11)	NOT NULL	DEFAULT '0',
	`cf_optimize_date`	date	NOT NULL	DEFAULT '0000-00-00',
	`cf_use_member_icon`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_member_icon_size`	int(11)	NOT NULL	DEFAULT '0',
	`cf_member_icon_width`	int(11)	NOT NULL	DEFAULT '0',
	`cf_member_icon_height`	int(11)	NOT NULL	DEFAULT '0',
	`cf_member_img_size`	int(11)	NOT NULL	DEFAULT '0',
	`cf_member_img_width`	int(11)	NOT NULL	DEFAULT '0',
	`cf_member_img_height`	int(11)	NOT NULL	DEFAULT '0',
	`cf_login_minutes`	int(11)	NOT NULL	DEFAULT '0',
	`cf_image_extension`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_flash_extension`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_movie_extension`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_formmail_is_member`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_page_rows`	int(11)	NOT NULL	DEFAULT '0',
	`cf_mobile_page_rows`	int(11)	NOT NULL	DEFAULT '0',
	`cf_visit`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_max_po_id`	int(11)	NOT NULL	DEFAULT '0',
	`cf_stipulation`	text	NOT NULL,
	`cf_privacy`	text	NOT NULL,
	`cf_open_modify`	int(11)	NOT NULL	DEFAULT '0',
	`cf_memo_send_point`	int(11)	NOT NULL	DEFAULT '0',
	`cf_mobile_new_skin`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_mobile_search_skin`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_mobile_connect_skin`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_mobile_faq_skin`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_mobile_member_skin`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_captcha_mp3`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_editor`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_cert_use`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_cert_ipin`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_cert_hp`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_cert_kcb_cd`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_cert_kcp_cd`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_lg_mid`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_lg_mert_key`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_cert_limit`	int(11)	NOT NULL	DEFAULT '0',
	`cf_cert_req`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_sms_use`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_sms_type`	varchar(10)	NOT NULL	DEFAULT '',
	`cf_icode_id`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_icode_pw`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_icode_server_ip`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_icode_server_port`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_googl_shorturl_apikey`	varchar(50)	NOT NULL	DEFAULT '',
	`cf_social_login_use`	tinyint(4)	NOT NULL	DEFAULT '0',
	`cf_social_servicelist`	varchar(255)	NOT NULL	DEFAULT '',
	`cf_facebook_appid`	varchar(100)	NOT NULL,
	`cf_facebook_secret`	varchar(100)	NOT NULL,
	`cf_twitter_key`	varchar(100)	NOT NULL,
	`cf_twitter_secret`	varchar(100)	NOT NULL,
	`cf_google_clientid`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_google_secret`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_github_clientid`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_github_secret`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_naver_clientid`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_naver_secret`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_kakao_rest_key`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_kakao_client_secret`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_kakao_js_apikey`	varchar(100)	NOT NULL,
	`cf_captcha`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_recaptcha_site_key`	varchar(100)	NOT NULL	DEFAULT '',
	`cf_recaptcha_secret_key`	varchar(100)	NOT NULL	DEFAULT ''
);

DROP TABLE IF EXISTS `gml_cert_history`;

CREATE TABLE `gml_cert_history` (
	`cr_id`	int(11)	NOT NULL,
	`mb_id`	varchar(20)	NOT NULL,
	`cr_company`	varchar(255)	NOT NULL	DEFAULT '',
	`cr_method`	varchar(255)	NOT NULL	DEFAULT '',
	`cr_ip`	varchar(255)	NOT NULL	DEFAULT '',
	`cr_date`	date	NOT NULL	DEFAULT '0000-00-00',
	`cr_time`	time	NOT NULL	DEFAULT '00:00:00'
);

DROP TABLE IF EXISTS `gml_group`;

CREATE TABLE `gml_group` (
	`gr_id`	varchar(10)	NOT NULL	DEFAULT '',
	`gr_subject`	varchar(255)	NOT NULL	DEFAULT '',
	`gr_device`	ENUM('both','pc','mobile')	NOT NULL	DEFAULT 'both',
	`gr_admin`	varchar(255)	NOT NULL	DEFAULT '',
	`gr_use_access`	tinyint(4)	NOT NULL	DEFAULT '0',
	`gr_order`	int(11)	NOT NULL	DEFAULT '0'
);

DROP TABLE IF EXISTS `gml_group_member`;

CREATE TABLE `gml_group_member` (
	`gm_id`	int(11)	NOT NULL,
	`mb_id`	varchar(20)	NOT NULL,
	`gr_id`	varchar(10)	NOT NULL	DEFAULT '',
	`gm_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00'
);

DROP TABLE IF EXISTS `gml_login`;

CREATE TABLE `gml_login` (
	`lo_ip`	varchar(100)	NOT NULL	DEFAULT '',
	`mb_id`	varchar(20)	NOT NULL,
	`lo_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00',
	`lo_location`	text	NOT NULL,
	`lo_url`	text	NOT NULL
);

DROP TABLE IF EXISTS `gml_mail`;

CREATE TABLE `gml_mail` (
	`ma_id`	int(11)	NOT NULL,
	`ma_subject`	varchar(255)	NOT NULL	DEFAULT '',
	`ma_content`	mediumtext	NOT NULL,
	`ma_time`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00',
	`ma_ip`	varchar(255)	NOT NULL	DEFAULT '',
	`ma_last_option`	text	NOT NULL
);

DROP TABLE IF EXISTS `gml_member`;

CREATE TABLE `gml_member` (
	`mb_no`	int(11)	NOT NULL,
	`mb_id`	varchar(20)	NOT NULL,
	`mb_password`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_name`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_nick`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_nick_date`	date	NOT NULL	DEFAULT '0000-00-00',
	`mb_email`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_homepage`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`mb_sex`	char(1)	NOT NULL	DEFAULT '',
	`mb_birth`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_tel`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_hp`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_certify`	varchar(20)	NOT NULL	DEFAULT '',
	`mb_adult`	tinyint(4)	NOT NULL	DEFAULT '0',
	`mb_dupinfo`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_zip`	char(6)	NOT NULL	DEFAULT '',
	`mb_country`	varchar(20)	NOT NULL	DEFAULT '',
	`mb_addr1`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_addr2`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_addr3`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_signature`	text	NOT NULL,
	`mb_recommend`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_point`	int(11)	NOT NULL	DEFAULT '0',
	`mb_today_login`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00',
	`mb_login_ip`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00',
	`mb_ip`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_leave_date`	varchar(8)	NOT NULL	DEFAULT '',
	`mb_intercept_date`	varchar(8)	NOT NULL	DEFAULT '',
	`mb_email_certify`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00',
	`mb_email_certify2`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_memo`	text	NOT NULL,
	`mb_lost_certify`	varchar(255)	NOT NULL,
	`mb_mailling`	tinyint(4)	NOT NULL	DEFAULT '0',
	`mb_sms`	tinyint(4)	NOT NULL	DEFAULT '0',
	`mb_open`	tinyint(4)	NOT NULL	DEFAULT '0',
	`mb_open_date`	date	NOT NULL	DEFAULT '0000-00-00',
	`mb_profile`	text	NOT NULL,
	`mb_memo_call`	varchar(255)	NOT NULL	DEFAULT '',
	`mb_notice_cnt`	int(11)	NOT NULL	DEFAULT '0',
	`mb_memo_cnt`	int(11)	NOT NULL	DEFAULT '0',
	`mb_scrap_cnt`	int(11)	NOT NULL	DEFAULT '0'
);

DROP TABLE IF EXISTS `gml_memo`;

CREATE TABLE `gml_memo` (
	`me_id`	INT(11)	NOT NULL,
	`me_recv_mb_id`	varchar(20)	NOT NULL	DEFAULT '',
	`me_send_mb_id`	varchar(20)	NOT NULL	DEFAULT '',
	`me_send_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00',
	`me_read_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00',
	`me_memo`	text	NOT NULL,
	`me_send_id`	INT(11)	NOT NULL	DEFAULT '0',
	`me_type`	ENUM('send','receive')	NOT NULL	DEFAULT 'receive',
	`me_readed`	TINYINT(4)	NOT NULL	DEFAULT '0',
	`me_send_ip`	VARCHAR(100)	NOT NULL	DEFAULT ''
);

DROP TABLE IF EXISTS `gml_point`;

CREATE TABLE `gml_point` (
	`po_id`	int(11)	NOT NULL,
	`mb_id2`	varchar(20)	NOT NULL,
	`po_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00',
	`po_content`	varchar(255)	NOT NULL	DEFAULT '',
	`po_point`	int(11)	NOT NULL	DEFAULT '0',
	`po_use_point`	int(11)	NOT NULL	DEFAULT '0',
	`po_expired`	tinyint(4)	NOT NULL	DEFAULT '0',
	`po_expire_date`	date	NOT NULL	DEFAULT '0000-00-00',
	`po_mb_point`	int(11)	NOT NULL	DEFAULT '0',
	`po_rel_table`	varchar(20)	NOT NULL	DEFAULT '',
	`po_rel_id`	varchar(20)	NOT NULL	DEFAULT '',
	`po_rel_action`	varchar(100)	NOT NULL	DEFAULT ''
);

DROP TABLE IF EXISTS `gml_poll`;

CREATE TABLE `gml_poll` (
	`po_id`	int(11)	NOT NULL,
	`po_subject`	varchar(255)	NOT NULL	DEFAULT '',
	`po_poll1`	varchar(255)	NOT NULL	DEFAULT '',
	`po_poll2`	varchar(255)	NOT NULL	DEFAULT '',
	`po_poll3`	varchar(255)	NOT NULL	DEFAULT '',
	`po_poll4`	varchar(255)	NOT NULL	DEFAULT '',
	`po_poll5`	varchar(255)	NOT NULL	DEFAULT '',
	`po_poll6`	varchar(255)	NOT NULL	DEFAULT '',
	`po_poll7`	varchar(255)	NOT NULL	DEFAULT '',
	`po_poll8`	varchar(255)	NOT NULL	DEFAULT '',
	`po_poll9`	varchar(255)	NOT NULL	DEFAULT '',
	`po_cnt1`	int(11)	NOT NULL	DEFAULT '0',
	`po_cnt2`	int(11)	NOT NULL	DEFAULT '0',
	`po_cnt3`	int(11)	NOT NULL	DEFAULT '0',
	`po_cnt4`	int(11)	NOT NULL	DEFAULT '0',
	`po_cnt5`	int(11)	NOT NULL	DEFAULT '0',
	`po_cnt6`	int(11)	NOT NULL	DEFAULT '0',
	`po_cnt7`	int(11)	NOT NULL	DEFAULT '0',
	`po_cnt8`	int(11)	NOT NULL	DEFAULT '0',
	`po_cnt9`	int(11)	NOT NULL	DEFAULT '0',
	`po_etc`	varchar(255)	NOT NULL	DEFAULT '',
	`po_level`	tinyint(4)	NOT NULL	DEFAULT '0',
	`po_point`	int(11)	NOT NULL	DEFAULT '0',
	`po_date`	date	NOT NULL	DEFAULT '0000-00-00',
	`po_ips`	mediumtext	NOT NULL,
	`mb_ids`	text	NOT NULL
);

DROP TABLE IF EXISTS `gml_poll_etc`;

CREATE TABLE `gml_poll_etc` (
	`pc_id`	int(11)	NOT NULL	DEFAULT '0',
	`mb_id2`	varchar(20)	NOT NULL,
	`po_id`	int(11)	NOT NULL	DEFAULT '0',
	`pc_name`	varchar(255)	NOT NULL	DEFAULT '',
	`pc_idea`	varchar(255)	NOT NULL	DEFAULT '',
	`pc_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00'
);

DROP TABLE IF EXISTS `gml_popular`;

CREATE TABLE `gml_popular` (
	`pp_id`	int(11)	NOT NULL,
	`pp_word`	varchar(50)	NOT NULL	DEFAULT '',
	`pp_date`	date	NOT NULL	DEFAULT '0000-00-00',
	`pp_ip`	varchar(50)	NOT NULL	DEFAULT ''
);

DROP TABLE IF EXISTS `gml_scrap`;

CREATE TABLE `gml_scrap` (
	`ms_id`	int(11)	NOT NULL,
	`mb_id`	VARCHAR(255)	NOT NULL,
	`bo_table`	varchar(20)	NOT NULL	DEFAULT '',
	`wr_id`	varchar(15)	NOT NULL	DEFAULT '',
	`ms_datetime`	datetime	NOT NULL	DEFAULT '0000-00-00 00:00:00',
	`Field`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `gml_visit`;

CREATE TABLE `gml_visit` (
	`vi_id`	int(11)	NOT NULL	DEFAULT '0',
	`vi_ip`	varchar(100)	NOT NULL	DEFAULT '',
	`vi_date`	date	NOT NULL	DEFAULT '0000-00-00',
	`vi_time`	time	NOT NULL	DEFAULT '00:00:00',
	`vi_referer`	text	NOT NULL,
	`vi_agent`	varchar(200)	NOT NULL	DEFAULT '',
	`vi_browser`	varchar(255)	NOT NULL	DEFAULT '',
	`vi_os`	varchar(255)	NOT NULL	DEFAULT '',
	`vi_device`	varchar(255)	NOT NULL	DEFAULT ''
);

DROP TABLE IF EXISTS `gml_visit_sum`;

CREATE TABLE `gml_visit_sum` (
	`vs_date`	date	NOT NULL	DEFAULT '0000-00-00',
	`vs_count`	int(11)	NOT NULL	DEFAULT '0'
);

ALTER TABLE `gml_auth` ADD CONSTRAINT `PK_GML_AUTH` PRIMARY KEY (
	`au_menu`,
	`mb_id`
);

ALTER TABLE `gml_board` ADD CONSTRAINT `PK_GML_BOARD` PRIMARY KEY (
	`bo_table`
);

ALTER TABLE `gml_board_file` ADD CONSTRAINT `PK_GML_BOARD_FILE` PRIMARY KEY (
	`wr_id`,
	`bf_no`,
	`bo_table`
);

ALTER TABLE `gml_board_good` ADD CONSTRAINT `PK_GML_BOARD_GOOD` PRIMARY KEY (
	`bg_id`,
	`bo_table`,
	`mb_id`
);

ALTER TABLE `gml_board_new` ADD CONSTRAINT `PK_GML_BOARD_NEW` PRIMARY KEY (
	`bn_id`,
	`bo_table`,
	`mb_id`
);

ALTER TABLE `gml_cert_history` ADD CONSTRAINT `PK_GML_CERT_HISTORY` PRIMARY KEY (
	`cr_id`,
	`mb_id`
);

ALTER TABLE `gml_group` ADD CONSTRAINT `PK_GML_GROUP` PRIMARY KEY (
	`gr_id`
);

ALTER TABLE `gml_group_member` ADD CONSTRAINT `PK_GML_GROUP_MEMBER` PRIMARY KEY (
	`gm_id`,
	`mb_id`,
	`gr_id`
);

ALTER TABLE `gml_login` ADD CONSTRAINT `PK_GML_LOGIN` PRIMARY KEY (
	`lo_ip`,
	`mb_id`
);

ALTER TABLE `gml_mail` ADD CONSTRAINT `PK_GML_MAIL` PRIMARY KEY (
	`ma_id`
);

ALTER TABLE `gml_member` ADD CONSTRAINT `PK_GML_MEMBER` PRIMARY KEY (
	`mb_no`,
	`mb_id`
);

ALTER TABLE `gml_memo` ADD CONSTRAINT `PK_GML_MEMO` PRIMARY KEY (
	`me_id`
);

ALTER TABLE `gml_point` ADD CONSTRAINT `PK_GML_POINT` PRIMARY KEY (
	`po_id`,
	`mb_id2`
);

ALTER TABLE `gml_poll` ADD CONSTRAINT `PK_GML_POLL` PRIMARY KEY (
	`po_id`
);

ALTER TABLE `gml_poll_etc` ADD CONSTRAINT `PK_GML_POLL_ETC` PRIMARY KEY (
	`pc_id`,
	`mb_id2`
);

ALTER TABLE `gml_popular` ADD CONSTRAINT `PK_GML_POPULAR` PRIMARY KEY (
	`pp_id`
);

ALTER TABLE `gml_scrap` ADD CONSTRAINT `PK_GML_SCRAP` PRIMARY KEY (
	`ms_id`,
	`mb_id`
);

ALTER TABLE `gml_visit` ADD CONSTRAINT `PK_GML_VISIT` PRIMARY KEY (
	`vi_id`
);

ALTER TABLE `gml_visit_sum` ADD CONSTRAINT `PK_GML_VISIT_SUM` PRIMARY KEY (
	`vs_date`
);

ALTER TABLE `gml_auth` ADD CONSTRAINT `FK_gml_member_TO_gml_auth_1` FOREIGN KEY (
	`mb_id`
)
REFERENCES `gml_member` (
	`mb_id`
);

ALTER TABLE `gml_board_file` ADD CONSTRAINT `FK_gml_board_TO_gml_board_file_1` FOREIGN KEY (
	`bo_table`
)
REFERENCES `gml_board` (
	`bo_table`
);

ALTER TABLE `gml_board_good` ADD CONSTRAINT `FK_gml_board_TO_gml_board_good_1` FOREIGN KEY (
	`bo_table`
)
REFERENCES `gml_board` (
	`bo_table`
);

ALTER TABLE `gml_board_good` ADD CONSTRAINT `FK_gml_member_TO_gml_board_good_1` FOREIGN KEY (
	`mb_id`
)
REFERENCES `gml_member` (
	`mb_id`
);

ALTER TABLE `gml_board_new` ADD CONSTRAINT `FK_gml_board_TO_gml_board_new_1` FOREIGN KEY (
	`bo_table`
)
REFERENCES `gml_board` (
	`bo_table`
);

ALTER TABLE `gml_board_new` ADD CONSTRAINT `FK_gml_member_TO_gml_board_new_1` FOREIGN KEY (
	`mb_id`
)
REFERENCES `gml_member` (
	`mb_id`
);

ALTER TABLE `gml_cert_history` ADD CONSTRAINT `FK_gml_member_TO_gml_cert_history_1` FOREIGN KEY (
	`mb_id`
)
REFERENCES `gml_member` (
	`mb_id`
);

ALTER TABLE `gml_group_member` ADD CONSTRAINT `FK_gml_member_TO_gml_group_member_1` FOREIGN KEY (
	`mb_id`
)
REFERENCES `gml_member` (
	`mb_id`
);

ALTER TABLE `gml_group_member` ADD CONSTRAINT `FK_gml_group_TO_gml_group_member_1` FOREIGN KEY (
	`gr_id`
)
REFERENCES `gml_group` (
	`gr_id`
);

ALTER TABLE `gml_login` ADD CONSTRAINT `FK_gml_member_TO_gml_login_1` FOREIGN KEY (
	`mb_id`
)
REFERENCES `gml_member` (
	`mb_id`
);

ALTER TABLE `gml_point` ADD CONSTRAINT `FK_gml_member_TO_gml_point_1` FOREIGN KEY (
	`mb_id2`
)
REFERENCES `gml_member` (
	`mb_id`
);

ALTER TABLE `gml_poll_etc` ADD CONSTRAINT `FK_gml_member_TO_gml_poll_etc_1` FOREIGN KEY (
	`mb_id2`
)
REFERENCES `gml_member` (
	`mb_id`
);

ALTER TABLE `gml_scrap` ADD CONSTRAINT `FK_gml_member_TO_gml_scrap_1` FOREIGN KEY (
	`mb_id`
)
REFERENCES `gml_member` (
	`mb_id`
);

