DROP TABLE IF EXISTS `xe_editor_autosave`;

CREATE TABLE `xe_editor_autosave` (
	`member_srl`	bigint(11)	NULL	DEFAULT '0',
	`ipaddress`	varchar(128)	NULL,
	`module_srl`	bigint(11)	NULL,
	`document_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`title`	varchar(250)	NULL,
	`content`	longtext	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_member_scrap`;

CREATE TABLE `xe_member_scrap` (
	`member_srl`	bigint(11)	NOT NULL,
	`document_srl`	bigint(11)	NOT NULL,
	`title`	varchar(250)	NULL,
	`user_id`	varchar(80)	NULL,
	`user_name`	varchar(80)	NOT NULL,
	`nick_name`	varchar(80)	NOT NULL,
	`target_member_srl`	bigint(11)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`list_order`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_menu_layout`;

CREATE TABLE `xe_menu_layout` (
	`menu_srl`	bigint(12)	NOT NULL,
	`layout_srl`	bigint(12)	NOT NULL
);

DROP TABLE IF EXISTS `xe_action_forward`;

CREATE TABLE `xe_action_forward` (
	`act`	varchar(80)	NOT NULL,
	`module`	varchar(60)	NOT NULL,
	`type`	varchar(15)	NOT NULL
);

DROP TABLE IF EXISTS `xe_document_extra_keys`;

CREATE TABLE `xe_document_extra_keys` (
	`module_srl`	bigint(11)	NOT NULL,
	`var_idx`	bigint(11)	NOT NULL,
	`var_name`	varchar(250)	NOT NULL,
	`var_type`	varchar(50)	NOT NULL,
	`var_is_required`	char(1)	NOT NULL	DEFAULT 'N',
	`var_search`	char(1)	NOT NULL	DEFAULT 'N',
	`var_default`	text	NULL,
	`var_desc`	text	NULL,
	`eid`	varchar(40)	NULL
);

DROP TABLE IF EXISTS `xe_editor_components`;

CREATE TABLE `xe_editor_components` (
	`component_name`	varchar(250)	NOT NULL,
	`enabled`	char(1)	NOT NULL	DEFAULT 'N',
	`extra_vars`	text	NULL,
	`list_order`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_counter_log`;

CREATE TABLE `xe_counter_log` (
	`site_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`ipaddress`	varchar(250)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`user_agent`	varchar(250)	NULL
);

DROP TABLE IF EXISTS `xe_files`;

CREATE TABLE `xe_files` (
	`file_srl`	bigint(11)	NOT NULL,
	`upload_target_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`upload_target_type`	char(3)	NULL,
	`sid`	varchar(60)	NULL,
	`module_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`member_srl`	bigint(11)	NOT NULL,
	`download_count`	bigint(11)	NOT NULL	DEFAULT '0',
	`direct_download`	char(1)	NOT NULL	DEFAULT 'N',
	`source_filename`	varchar(250)	NULL,
	`uploaded_filename`	varchar(250)	NULL,
	`file_size`	bigint(11)	NOT NULL	DEFAULT '0',
	`comment`	varchar(250)	NULL,
	`isvalid`	char(1)	NULL	DEFAULT 'N',
	`cover_image`	char(1)	NOT NULL	DEFAULT 'N',
	`regdate`	varchar(14)	NULL,
	`ipaddress`	varchar(128)	NOT NULL
);

DROP TABLE IF EXISTS `xe_document_readed_log`;

CREATE TABLE `xe_document_readed_log` (
	`document_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_comments_list`;

CREATE TABLE `xe_comments_list` (
	`comment_srl`	bigint(11)	NOT NULL,
	`document_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`head`	bigint(11)	NOT NULL	DEFAULT '0',
	`arrange`	bigint(11)	NOT NULL	DEFAULT '0',
	`module_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`regdate`	varchar(14)	NULL,
	`depth`	bigint(11)	NOT NULL	DEFAULT '0'
);

DROP TABLE IF EXISTS `xe_session`;

CREATE TABLE `xe_session` (
	`session_key`	varchar(255)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`expired`	varchar(14)	NULL,
	`val`	longtext	NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`last_update`	varchar(14)	NULL,
	`cur_mid`	varchar(128)	NULL
);

DROP TABLE IF EXISTS `xe_addons_site`;

CREATE TABLE `xe_addons_site` (
	`site_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`addon`	varchar(250)	NOT NULL,
	`is_used`	char(1)	NOT NULL	DEFAULT 'Y',
	`is_used_m`	char(1)	NOT NULL	DEFAULT 'N',
	`extra_vars`	text	NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_member`;

CREATE TABLE `xe_member` (
	`member_srl`	bigint(11)	NOT NULL,
	`user_id`	varchar(80)	NOT NULL,
	`email_address`	varchar(250)	NOT NULL,
	`password`	varchar(60)	NOT NULL,
	`email_id`	varchar(80)	NOT NULL,
	`email_host`	varchar(160)	NULL,
	`user_name`	varchar(40)	NOT NULL,
	`nick_name`	varchar(40)	NOT NULL,
	`find_account_question`	bigint(11)	NULL,
	`find_account_answer`	varchar(250)	NULL,
	`homepage`	varchar(250)	NULL,
	`blog`	varchar(250)	NULL,
	`birthday`	char(8)	NULL,
	`allow_mailing`	char(1)	NOT NULL	DEFAULT 'Y',
	`allow_message`	char(1)	NOT NULL	DEFAULT 'Y',
	`denied`	char(1)	NULL	DEFAULT 'N',
	`limit_date`	varchar(14)	NULL,
	`regdate`	varchar(14)	NULL,
	`last_login`	varchar(14)	NULL,
	`change_password_date`	varchar(14)	NULL,
	`is_admin`	char(1)	NULL	DEFAULT 'N',
	`description`	text	NULL,
	`extra_vars`	text	NULL,
	`list_order`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_layouts`;

CREATE TABLE `xe_layouts` (
	`layout_srl`	bigint(12)	NOT NULL,
	`site_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`layout`	varchar(250)	NULL,
	`title`	varchar(250)	NULL,
	`extra_vars`	text	NULL,
	`layout_path`	varchar(250)	NULL,
	`module_srl`	bigint(12)	NULL	DEFAULT "0",
	`regdate`	varchar(14)	NULL,
	`layout_type`	char(1)	NULL	DEFAULT 'P'
);

DROP TABLE IF EXISTS `xe_module_locks`;

CREATE TABLE `xe_module_locks` (
	`lock_name`	varchar(40)	NOT NULL,
	`deadline`	varchar(14)	NULL,
	`member_srl`	bigint(11)	NULL
);

DROP TABLE IF EXISTS `xe_spamfilter_denied_word`;

CREATE TABLE `xe_spamfilter_denied_word` (
	`word`	varchar(250)	NOT NULL,
	`hit`	bigint(20)	NOT NULL	DEFAULT '0',
	`latest_hit`	varchar(14)	NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_counter_status`;

CREATE TABLE `xe_counter_status` (
	`regdate`	bigint(11)	NOT NULL,
	`unique_visitor`	bigint(11)	NULL	DEFAULT '0',
	`pageview`	bigint(11)	NULL	DEFAULT '0'
);

DROP TABLE IF EXISTS `xe_member_auth_mail`;

CREATE TABLE `xe_member_auth_mail` (
	`auth_key`	varchar(60)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`user_id`	varchar(80)	NOT NULL,
	`new_password`	varchar(80)	NOT NULL,
	`is_register`	char(1)	NULL	DEFAULT 'N',
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_lang`;

CREATE TABLE `xe_lang` (
	`site_srl`	bigint(11)	NOT NULL,
	`name`	varchar(255)	NOT NULL,
	`lang_code`	varchar(10)	NOT NULL,
	`value`	text	NULL
);

DROP TABLE IF EXISTS `xe_module_admins`;

CREATE TABLE `xe_module_admins` (
	`module_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_member_denied_nick_name`;

CREATE TABLE `xe_member_denied_nick_name` (
	`nick_name`	varchar(80)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`description`	text	NULL
);

DROP TABLE IF EXISTS `xe_counter_site_status`;

CREATE TABLE `xe_counter_site_status` (
	`site_srl`	bigint(11)	NOT NULL,
	`regdate`	bigint(11)	NOT NULL,
	`unique_visitor`	bigint(11)	NULL	DEFAULT '0',
	`pageview`	bigint(11)	NULL	DEFAULT '0'
);

DROP TABLE IF EXISTS `xe_menu`;

CREATE TABLE `xe_menu` (
	`menu_srl`	bigint(12)	NOT NULL,
	`site_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`title`	varchar(250)	NULL,
	`listorder`	bigint(11)	NULL	DEFAULT '0',
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_menu_item`;

CREATE TABLE `xe_menu_item` (
	`menu_item_srl`	bigint(12)	NOT NULL,
	`parent_srl`	bigint(12)	NOT NULL	DEFAULT '0',
	`menu_srl`	bigint(12)	NOT NULL,
	`name`	text	NULL,
	`desc`	varchar(250)	NULL,
	`url`	varchar(250)	NULL,
	`is_shortcut`	char(1)	NULL	DEFAULT 'N',
	`open_window`	char(1)	NULL	DEFAULT 'N',
	`expand`	char(1)	NULL	DEFAULT 'N',
	`normal_btn`	varchar(255)	NULL,
	`hover_btn`	varchar(255)	NULL,
	`active_btn`	varchar(255)	NULL,
	`group_srls`	text	NULL,
	`listorder`	bigint(11)	NULL	DEFAULT '0',
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_poll`;

CREATE TABLE `xe_poll` (
	`poll_srl`	bigint(11)	NOT NULL,
	`stop_date`	varchar(14)	NULL,
	`upload_target_srl`	bigint(11)	NOT NULL,
	`poll_count`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`list_order`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_member_denied_user_id`;

CREATE TABLE `xe_member_denied_user_id` (
	`user_id`	varchar(80)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`description`	text	NULL,
	`list_order`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_sites`;

CREATE TABLE `xe_sites` (
	`site_srl`	bigint(11)	NOT NULL,
	`index_module_srl`	bigint(11)	NULL	DEFAULT '0',
	`domain`	varchar(255)	NOT NULL,
	`default_language`	varchar(255)	NULL	DEFAULT 'language',
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_trash`;

CREATE TABLE `xe_trash` (
	`trash_srl`	bigint(11)	NOT NULL,
	`title`	varchar(250)	NULL,
	`origin_module`	varchar(250)	NOT NULL	DEFAULT 'document',
	`serialized_object`	longtext	NOT NULL,
	`description`	text	NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`remover_srl`	bigint(11)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_member_friend_group`;

CREATE TABLE `xe_member_friend_group` (
	`friend_group_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`title`	varchar(250)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_module_categories`;

CREATE TABLE `xe_module_categories` (
	`module_category_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`title`	varchar(250)	NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_member_login_count`;

CREATE TABLE `xe_member_login_count` (
	`ipaddress`	varchar(128)	NOT NULL,
	`count`	bigint(11)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`last_update`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_document_extra_vars`;

CREATE TABLE `xe_document_extra_vars` (
	`module_srl`	bigint(11)	NOT NULL,
	`document_srl`	bigint(11)	NOT NULL,
	`var_idx`	bigint(11)	NOT NULL,
	`lang_code`	varchar(10)	NOT NULL,
	`value`	longtext	NULL,
	`eid`	varchar(40)	NULL
);

DROP TABLE IF EXISTS `xe_module_part_config`;

CREATE TABLE `xe_module_part_config` (
	`module`	varchar(250)	NOT NULL,
	`module_srl`	bigint(11)	NOT NULL,
	`config`	text	NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_ai_installed_packages`;

CREATE TABLE `xe_ai_installed_packages` (
	`package_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`version`	varchar(255)	NULL,
	`current_version`	varchar(255)	NULL,
	`need_update`	char(1)	NULL	DEFAULT 'N'
);

DROP TABLE IF EXISTS `xe_editor_components_site`;

CREATE TABLE `xe_editor_components_site` (
	`site_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`component_name`	varchar(250)	NOT NULL,
	`enabled`	char(1)	NOT NULL	DEFAULT 'N',
	`extra_vars`	text	NULL,
	`list_order`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_sequence`;

CREATE TABLE `xe_sequence` (
	`seq`	bigint(64)	NOT NULL
);

DROP TABLE IF EXISTS `xe_point`;

CREATE TABLE `xe_point` (
	`member_srl`	bigint(11)	NOT NULL,
	`point`	bigint(11)	NOT NULL	DEFAULT '0'
);

DROP TABLE IF EXISTS `xe_module_trigger`;

CREATE TABLE `xe_module_trigger` (
	`trigger_name`	varchar(80)	NOT NULL,
	`called_position`	varchar(15)	NOT NULL,
	`module`	varchar(80)	NOT NULL,
	`type`	varchar(15)	NOT NULL,
	`called_method`	varchar(80)	NOT NULL
);

DROP TABLE IF EXISTS `xe_module_mobile_skins`;

CREATE TABLE `xe_module_mobile_skins` (
	`module_srl`	bigint(11)	NOT NULL,
	`name`	varchar(80)	NOT NULL,
	`value`	text	NULL
);

DROP TABLE IF EXISTS `xe_member_friend`;

CREATE TABLE `xe_member_friend` (
	`friend_srl`	bigint(11)	NOT NULL,
	`friend_group_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`member_srl`	bigint(11)	NOT NULL,
	`target_srl`	bigint(11)	NOT NULL,
	`list_order`	bigint(11)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_module_skins`;

CREATE TABLE `xe_module_skins` (
	`module_srl`	bigint(11)	NOT NULL,
	`name`	varchar(80)	NOT NULL,
	`value`	text	NULL
);

DROP TABLE IF EXISTS `xe_document_histories`;

CREATE TABLE `xe_document_histories` (
	`history_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`module_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`document_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`content`	longtext	NULL,
	`nick_name`	varchar(80)	NOT NULL,
	`member_srl`	bigint(11)	NULL,
	`regdate`	varchar(14)	NULL,
	`ipaddress`	varchar(128)	NOT NULL
);

DROP TABLE IF EXISTS `xe_spamfilter_denied_ip`;

CREATE TABLE `xe_spamfilter_denied_ip` (
	`ipaddress`	varchar(250)	NOT NULL,
	`description`	varchar(250)	NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_member_group_member`;

CREATE TABLE `xe_member_group_member` (
	`site_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`group_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_document_declared_log`;

CREATE TABLE `xe_document_declared_log` (
	`document_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_comment_declared_log`;

CREATE TABLE `xe_comment_declared_log` (
	`comment_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_module_grants`;

CREATE TABLE `xe_module_grants` (
	`module_srl`	bigint(11)	NOT NULL,
	`name`	varchar(20)	NOT NULL,
	`group_srl`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_member_message`;

CREATE TABLE `xe_member_message` (
	`message_srl`	bigint(11)	NOT NULL,
	`related_srl`	bigint(11)	NOT NULL,
	`sender_srl`	bigint(11)	NOT NULL,
	`receiver_srl`	bigint(11)	NOT NULL,
	`message_type`	char(1)	NOT NULL	DEFAULT 'S',
	`title`	varchar(250)	NOT NULL,
	`content`	text	NOT NULL,
	`readed`	char(1)	NOT NULL	DEFAULT 'N',
	`list_order`	bigint(11)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`readed_date`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_module_config`;

CREATE TABLE `xe_module_config` (
	`module`	varchar(250)	NOT NULL,
	`site_srl`	bigint(11)	NOT NULL,
	`config`	text	NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_member_autologin`;

CREATE TABLE `xe_member_autologin` (
	`autologin_key`	varchar(80)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_modules`;

CREATE TABLE `xe_modules` (
	`module_srl`	bigint(11)	NOT NULL,
	`module`	varchar(80)	NOT NULL,
	`module_category_srl`	bigint(11)	NULL	DEFAULT '0',
	`layout_srl`	bigint(11)	NULL	DEFAULT '0',
	`use_mobile`	char(1)	NULL	DEFAULT 'N',
	`mlayout_srl`	bigint(11)	NULL	DEFAULT '0',
	`menu_srl`	bigint(12)	NULL	DEFAULT '0',
	`site_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`mid`	varchar(40)	NOT NULL,
	`is_skin_fix`	char(1)	NOT NULL	DEFAULT 'Y',
	`skin`	varchar(250)	NULL,
	`is_mskin_fix`	char(1)	NOT NULL	DEFAULT 'Y',
	`mskin`	varchar(250)	NULL,
	`browser_title`	varchar(250)	NOT NULL,
	`description`	text	NULL,
	`is_default`	char(1)	NOT NULL	DEFAULT 'N',
	`content`	longtext	NULL,
	`mcontent`	longtext	NULL,
	`open_rss`	char(1)	NOT NULL	DEFAULT 'Y',
	`header_text`	text	NULL,
	`footer_text`	text	NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_autoinstall_packages`;

CREATE TABLE `xe_autoinstall_packages` (
	`package_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`category_srl`	bigint(11)	NULL	DEFAULT '0',
	`path`	varchar(250)	NOT NULL,
	`have_instance`	char(1)	NOT NULL	DEFAULT 'N',
	`updatedate`	varchar(14)	NULL,
	`latest_item_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`version`	varchar(255)	NULL
);

DROP TABLE IF EXISTS `xe_admin_log`;

CREATE TABLE `xe_admin_log` (
	`ipaddress`	varchar(100)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`site_srl`	bigint(11)	NULL	DEFAULT '0',
	`module`	varchar(100)	NULL,
	`act`	varchar(100)	NULL,
	`request_vars`	text	NULL
);

DROP TABLE IF EXISTS `xe_poll_title`;

CREATE TABLE `xe_poll_title` (
	`poll_srl`	bigint(11)	NOT NULL,
	`poll_index_srl`	bigint(11)	NOT NULL,
	`title`	varchar(250)	NOT NULL,
	`checkcount`	bigint(11)	NOT NULL	DEFAULT '1',
	`poll_count`	bigint(11)	NOT NULL,
	`upload_target_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`list_order`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_member_group`;

CREATE TABLE `xe_member_group` (
	`group_srl`	bigint(11)	NOT NULL,
	`site_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`list_order`	bigint(11)	NOT NULL,
	`title`	varchar(80)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`is_default`	char(1)	NULL	DEFAULT 'N',
	`is_admin`	char(1)	NULL	DEFAULT 'N',
	`image_mark`	text	NULL,
	`description`	text	NULL
);

DROP TABLE IF EXISTS `xe_member_join_form`;

CREATE TABLE `xe_member_join_form` (
	`member_join_form_srl`	bigint(11)	NOT NULL,
	`column_type`	varchar(60)	NOT NULL,
	`column_name`	varchar(60)	NOT NULL,
	`column_title`	varchar(60)	NOT NULL,
	`required`	char(1)	NOT NULL	DEFAULT 'N',
	`default_value`	text	NULL,
	`is_active`	char(1)	NULL	DEFAULT 'Y',
	`description`	text	NULL,
	`list_order`	bigint(11)	NOT NULL	DEFAULT '1',
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_tags`;

CREATE TABLE `xe_tags` (
	`tag_srl`	bigint(11)	NOT NULL,
	`module_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`document_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`tag`	varchar(240)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_documents`;

CREATE TABLE `xe_documents` (
	`document_srl`	bigint(11)	NOT NULL,
	`module_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`category_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`lang_code`	varchar(10)	NOT NULL	DEFAULT '',
	`is_notice`	char(1)	NOT NULL	DEFAULT 'N',
	`title`	varchar(250)	NULL,
	`title_bold`	char(1)	NOT NULL	DEFAULT 'N',
	`title_color`	varchar(7)	NULL,
	`content`	longtext	NOT NULL,
	`readed_count`	bigint(11)	NOT NULL	DEFAULT '0',
	`voted_count`	bigint(11)	NOT NULL	DEFAULT '0',
	`blamed_count`	bigint(11)	NOT NULL	DEFAULT '0',
	`comment_count`	bigint(11)	NOT NULL	COMMENT '0',
	`trackback_count`	bigint(11)	NOT NULL	DEFAULT '0',
	`uploaded_count`	bigint(11)	NOT NULL	DEFAULT '0',
	`password`	varchar(60)	NULL,
	`user_id`	varchar(80)	NULL,
	`user_name`	varchar(80)	NOT NULL,
	`nick_name`	varchar(80)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`email_address`	varchar(250)	NOT NULL,
	`homepage`	varchar(250)	NOT NULL,
	`tags`	text	NULL,
	`extra_vars`	text	NULL,
	`regdate`	varchar(14)	NULL,
	`last_update`	varchar(14)	NULL,
	`last_updater`	varchar(80)	NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`list_order`	bigint(11)	NOT NULL,
	`update_order`	bigint(11)	NOT NULL,
	`allow_trackback`	char(1)	NOT NULL	DEFAULT 'Y',
	`notify_message`	char(1)	NOT NULL	DEFAULT 'N',
	`status`	varchar(20)	NULL	DEFAULT 'PUBLIC',
	`comment_status`	varchar(20)	NULL	COMMENT 'ALLOW'
);

DROP TABLE IF EXISTS `xe_document_aliases`;

CREATE TABLE `xe_document_aliases` (
	`alias_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`module_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`document_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`alias_title`	varchar(250)	NOT NULL
);

DROP TABLE IF EXISTS `xe_document_voted_log`;

CREATE TABLE `xe_document_voted_log` (
	`document_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`point`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_poll_log`;

CREATE TABLE `xe_poll_log` (
	`poll_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_syndication_except_modules`;

CREATE TABLE `xe_syndication_except_modules` (
	`module_srl`	bigint(11)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_comments`;

CREATE TABLE `xe_comments` (
	`comment_srl`	bigint(11)	NOT NULL,
	`module_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`document_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`parent_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`is_secret`	char(1)	NOT NULL	DEFAULT 'N',
	`content`	longtext	NOT NULL,
	`voted_count`	bigint(11)	NOT NULL	DEFAULT '0',
	`blamed_count`	bigint(11)	NOT NULL	DEFAULT '0',
	`notify_message`	char(1)	NOT NULL	DEFAULT 'N',
	`password`	varchar(60)	NULL,
	`user_id`	varchar(80)	NULL,
	`user_name`	varchar(80)	NOT NULL,
	`nick_name`	varchar(80)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`email_address`	varchar(250)	NOT NULL,
	`homepage`	varchar(250)	NOT NULL,
	`uploaded_count`	bigint(11)	NOT NULL	DEFAULT '0',
	`regdate`	varchar(14)	NULL,
	`last_update`	varchar(14)	NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`list_order`	bigint(11)	NOT NULL,
	`status`	bigint(1)	NOT NULL	DEFAULT '1'
);

DROP TABLE IF EXISTS `xe_comment_declared`;

CREATE TABLE `xe_comment_declared` (
	`comment_srl`	bigint(11)	NOT NULL,
	`declared_count`	bigint(11)	NOT NULL	DEFAULT '0'
);

DROP TABLE IF EXISTS `xe_document_trash`;

CREATE TABLE `xe_document_trash` (
	`trash_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`document_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`module_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`trash_date`	varchar(14)	NULL,
	`description`	text	NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`user_id`	varchar(80)	NULL,
	`user_name`	varchar(80)	NOT NULL,
	`nick_name`	varchar(80)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_document_categories`;

CREATE TABLE `xe_document_categories` (
	`category_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`module_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`parent_srl`	bigint(12)	NOT NULL	DEFAULT '0',
	`title`	varchar(250)	NULL,
	`expand`	char(1)	NULL	DEFAULT 'N',
	`document_count`	bigint(11)	NOT NULL	DEFAULT '0',
	`regdate`	varchar(14)	NULL,
	`last_update`	varchar(14)	NULL,
	`list_order`	bigint(11)	NOT NULL,
	`group_srls`	text	NULL,
	`color`	varchar(11)	NULL,
	`description`	varchar(200)	NULL
);

DROP TABLE IF EXISTS `xe_syndication_logs`;

CREATE TABLE `xe_syndication_logs` (
	`log_srl`	bigint(11)	NOT NULL,
	`module_srl`	bigint(11)	NULL	DEFAULT '0',
	`document_srl`	bigint(11)	NULL	DEFAULT '0',
	`title`	varchar(255)	NULL,
	`summary`	varchar(255)	NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_module_filebox`;

CREATE TABLE `xe_module_filebox` (
	`module_filebox_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`filename`	varchar(250)	NOT NULL,
	`fileextension`	varchar(4)	NOT NULL,
	`filesize`	bigint(11)	NOT NULL	DEFAULT '0',
	`comment`	varchar(250)	NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_ai_remote_categories`;

CREATE TABLE `xe_ai_remote_categories` (
	`category_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`parent_srl`	bigint(11)	NOT NULL	DEFAULT '0',
	`title`	varchar(250)	NOT NULL,
	`list_order`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_admin_favorite`;

CREATE TABLE `xe_admin_favorite` (
	`admin_favorite_srl`	bigint(11)	NOT NULL,
	`site_srl`	bigint(11)	NULL	DEFAULT '0',
	`module`	varchar(80)	NULL,
	`type`	varchar(30)	NULL
);

DROP TABLE IF EXISTS `xe_module_extend`;

CREATE TABLE `xe_module_extend` (
	`parent_module`	varchar(80)	NOT NULL,
	`extend_module`	varchar(80)	NOT NULL,
	`type`	varchar(15)	NOT NULL,
	`kind`	varchar(5)	NULL
);

DROP TABLE IF EXISTS `xe_document_declared`;

CREATE TABLE `xe_document_declared` (
	`document_srl`	bigint(11)	NOT NULL,
	`declared_count`	bigint(11)	NOT NULL	DEFAULT '0'
);

DROP TABLE IF EXISTS `xe_addons`;

CREATE TABLE `xe_addons` (
	`addon`	varchar(250)	NOT NULL,
	`is_used`	char(1)	NOT NULL	DEFAULT 'Y',
	`is_used_m`	char(1)	NOT NULL	DEFAULT 'N',
	`is_fixed`	char(1)	NOT NULL	DEFAULT 'N',
	`extra_vars`	text	NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_comment_voted_log`;

CREATE TABLE `xe_comment_voted_log` (
	`comment_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`ipaddress`	varchar(128)	NOT NULL,
	`regdate`	varchar(14)	NULL,
	`point`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_poll_item`;

CREATE TABLE `xe_poll_item` (
	`poll_item_srl`	bigint(11)	NOT NULL,
	`poll_srl`	bigint(11)	NOT NULL,
	`poll_index_srl`	bigint(11)	NOT NULL,
	`upload_target_srl`	bigint(11)	NOT NULL,
	`title`	varchar(250)	NOT NULL,
	`poll_count`	bigint(11)	NOT NULL
);

DROP TABLE IF EXISTS `xe_member_count_history`;

CREATE TABLE `xe_member_count_history` (
	`member_srl`	bigint(11)	NOT NULL,
	`content`	longtext	NOT NULL,
	`last_update`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_spamfilter_log`;

CREATE TABLE `xe_spamfilter_log` (
	`spamfilter_log_srl`	bigint(11)	NOT NULL,
	`ipaddress`	varchar(250)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_site_admin`;

CREATE TABLE `xe_site_admin` (
	`site_srl`	bigint(11)	NOT NULL,
	`member_srl`	bigint(11)	NOT NULL,
	`regdate`	varchar(14)	NULL
);

DROP TABLE IF EXISTS `xe_module_extra_vars`;

CREATE TABLE `xe_module_extra_vars` (
	`module_srl`	bigint(11)	NOT NULL,
	`name`	varchar(80)	NOT NULL,
	`value`	text	NULL
);

ALTER TABLE `xe_menu_layout` ADD CONSTRAINT `PK_XE_MENU_LAYOUT` PRIMARY KEY (
	`menu_srl`
);

ALTER TABLE `xe_editor_components` ADD CONSTRAINT `PK_XE_EDITOR_COMPONENTS` PRIMARY KEY (
	`component_name`
);

ALTER TABLE `xe_files` ADD CONSTRAINT `PK_XE_FILES` PRIMARY KEY (
	`file_srl`
);

ALTER TABLE `xe_comments_list` ADD CONSTRAINT `PK_XE_COMMENTS_LIST` PRIMARY KEY (
	`comment_srl`
);

ALTER TABLE `xe_session` ADD CONSTRAINT `PK_XE_SESSION` PRIMARY KEY (
	`session_key`
);

ALTER TABLE `xe_member` ADD CONSTRAINT `PK_XE_MEMBER` PRIMARY KEY (
	`member_srl`
);

ALTER TABLE `xe_layouts` ADD CONSTRAINT `PK_XE_LAYOUTS` PRIMARY KEY (
	`layout_srl`
);

ALTER TABLE `xe_spamfilter_denied_word` ADD CONSTRAINT `PK_XE_SPAMFILTER_DENIED_WORD` PRIMARY KEY (
	`word`
);

ALTER TABLE `xe_counter_status` ADD CONSTRAINT `PK_XE_COUNTER_STATUS` PRIMARY KEY (
	`regdate`
);

ALTER TABLE `xe_member_denied_nick_name` ADD CONSTRAINT `PK_XE_MEMBER_DENIED_NICK_NAME` PRIMARY KEY (
	`nick_name`
);

ALTER TABLE `xe_menu` ADD CONSTRAINT `PK_XE_MENU` PRIMARY KEY (
	`menu_srl`
);

ALTER TABLE `xe_menu_item` ADD CONSTRAINT `PK_XE_MENU_ITEM` PRIMARY KEY (
	`menu_item_srl`
);

ALTER TABLE `xe_poll` ADD CONSTRAINT `PK_XE_POLL` PRIMARY KEY (
	`poll_srl`
);

ALTER TABLE `xe_member_denied_user_id` ADD CONSTRAINT `PK_XE_MEMBER_DENIED_USER_ID` PRIMARY KEY (
	`user_id`
);

ALTER TABLE `xe_sites` ADD CONSTRAINT `PK_XE_SITES` PRIMARY KEY (
	`site_srl`
);

ALTER TABLE `xe_trash` ADD CONSTRAINT `PK_XE_TRASH` PRIMARY KEY (
	`trash_srl`
);

ALTER TABLE `xe_member_friend_group` ADD CONSTRAINT `PK_XE_MEMBER_FRIEND_GROUP` PRIMARY KEY (
	`friend_group_srl`
);

ALTER TABLE `xe_module_categories` ADD CONSTRAINT `PK_XE_MODULE_CATEGORIES` PRIMARY KEY (
	`module_category_srl`
);

ALTER TABLE `xe_sequence` ADD CONSTRAINT `PK_XE_SEQUENCE` PRIMARY KEY (
	`seq`
);

ALTER TABLE `xe_point` ADD CONSTRAINT `PK_XE_POINT` PRIMARY KEY (
	`member_srl`
);

ALTER TABLE `xe_member_friend` ADD CONSTRAINT `PK_XE_MEMBER_FRIEND` PRIMARY KEY (
	`friend_srl`
);

ALTER TABLE `xe_document_histories` ADD CONSTRAINT `PK_XE_DOCUMENT_HISTORIES` PRIMARY KEY (
	`history_srl`
);

ALTER TABLE `xe_spamfilter_denied_ip` ADD CONSTRAINT `PK_XE_SPAMFILTER_DENIED_IP` PRIMARY KEY (
	`ipaddress`
);

ALTER TABLE `xe_member_message` ADD CONSTRAINT `PK_XE_MEMBER_MESSAGE` PRIMARY KEY (
	`message_srl`
);

ALTER TABLE `xe_module_config` ADD CONSTRAINT `PK_XE_MODULE_CONFIG` PRIMARY KEY (
	`module`
);

ALTER TABLE `xe_modules` ADD CONSTRAINT `PK_XE_MODULES` PRIMARY KEY (
	`module_srl`
);

ALTER TABLE `xe_member_group` ADD CONSTRAINT `PK_XE_MEMBER_GROUP` PRIMARY KEY (
	`group_srl`
);

ALTER TABLE `xe_member_join_form` ADD CONSTRAINT `PK_XE_MEMBER_JOIN_FORM` PRIMARY KEY (
	`member_join_form_srl`
);

ALTER TABLE `xe_tags` ADD CONSTRAINT `PK_XE_TAGS` PRIMARY KEY (
	`tag_srl`
);

ALTER TABLE `xe_documents` ADD CONSTRAINT `PK_XE_DOCUMENTS` PRIMARY KEY (
	`document_srl`
);

ALTER TABLE `xe_document_aliases` ADD CONSTRAINT `PK_XE_DOCUMENT_ALIASES` PRIMARY KEY (
	`alias_srl`
);

ALTER TABLE `xe_syndication_except_modules` ADD CONSTRAINT `PK_XE_SYNDICATION_EXCEPT_MODULES` PRIMARY KEY (
	`module_srl`
);

ALTER TABLE `xe_comments` ADD CONSTRAINT `PK_XE_COMMENTS` PRIMARY KEY (
	`comment_srl`
);

ALTER TABLE `xe_comment_declared` ADD CONSTRAINT `PK_XE_COMMENT_DECLARED` PRIMARY KEY (
	`comment_srl`
);

ALTER TABLE `xe_document_trash` ADD CONSTRAINT `PK_XE_DOCUMENT_TRASH` PRIMARY KEY (
	`trash_srl`
);

ALTER TABLE `xe_document_categories` ADD CONSTRAINT `PK_XE_DOCUMENT_CATEGORIES` PRIMARY KEY (
	`category_srl`
);

ALTER TABLE `xe_syndication_logs` ADD CONSTRAINT `PK_XE_SYNDICATION_LOGS` PRIMARY KEY (
	`log_srl`
);

ALTER TABLE `xe_module_filebox` ADD CONSTRAINT `PK_XE_MODULE_FILEBOX` PRIMARY KEY (
	`module_filebox_srl`
);

ALTER TABLE `xe_ai_remote_categories` ADD CONSTRAINT `PK_XE_AI_REMOTE_CATEGORIES` PRIMARY KEY (
	`category_srl`
);

ALTER TABLE `xe_admin_favorite` ADD CONSTRAINT `PK_XE_ADMIN_FAVORITE` PRIMARY KEY (
	`admin_favorite_srl`
);

ALTER TABLE `xe_document_declared` ADD CONSTRAINT `PK_XE_DOCUMENT_DECLARED` PRIMARY KEY (
	`document_srl`
);

ALTER TABLE `xe_addons` ADD CONSTRAINT `PK_XE_ADDONS` PRIMARY KEY (
	`addon`
);

ALTER TABLE `xe_poll_item` ADD CONSTRAINT `PK_XE_POLL_ITEM` PRIMARY KEY (
	`poll_item_srl`
);

ALTER TABLE `xe_member_count_history` ADD CONSTRAINT `PK_XE_MEMBER_COUNT_HISTORY` PRIMARY KEY (
	`member_srl`
);

ALTER TABLE `xe_spamfilter_log` ADD CONSTRAINT `PK_XE_SPAMFILTER_LOG` PRIMARY KEY (
	`spamfilter_log_srl`
);

ALTER TABLE `xe_editor_autosave` ADD CONSTRAINT `FK_xe_member_TO_xe_editor_autosave_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_editor_autosave` ADD CONSTRAINT `FK_xe_documents_TO_xe_editor_autosave_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_member_scrap` ADD CONSTRAINT `FK_xe_member_TO_xe_member_scrap_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_menu_layout` ADD CONSTRAINT `FK_xe_menu_TO_xe_menu_layout_1` FOREIGN KEY (
	`menu_srl`
)
REFERENCES `xe_menu` (
	`menu_srl`
);

ALTER TABLE `xe_menu_layout` ADD CONSTRAINT `FK_xe_layouts_TO_xe_menu_layout_1` FOREIGN KEY (
	`layout_srl`
)
REFERENCES `xe_layouts` (
	`layout_srl`
);

ALTER TABLE `xe_document_extra_keys` ADD CONSTRAINT `FK_xe_modules_TO_xe_document_extra_keys_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_counter_log` ADD CONSTRAINT `FK_xe_sites_TO_xe_counter_log_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_files` ADD CONSTRAINT `FK_xe_modules_TO_xe_files_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_files` ADD CONSTRAINT `FK_xe_member_TO_xe_files_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_document_readed_log` ADD CONSTRAINT `FK_xe_documents_TO_xe_document_readed_log_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_document_readed_log` ADD CONSTRAINT `FK_xe_member_TO_xe_document_readed_log_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_comments_list` ADD CONSTRAINT `FK_xe_comments_TO_xe_comments_list_1` FOREIGN KEY (
	`comment_srl`
)
REFERENCES `xe_comments` (
	`comment_srl`
);

ALTER TABLE `xe_comments_list` ADD CONSTRAINT `FK_xe_documents_TO_xe_comments_list_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_session` ADD CONSTRAINT `FK_xe_member_TO_xe_session_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_addons_site` ADD CONSTRAINT `FK_xe_sites_TO_xe_addons_site_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_addons_site` ADD CONSTRAINT `FK_xe_addons_TO_xe_addons_site_1` FOREIGN KEY (
	`addon`
)
REFERENCES `xe_addons` (
	`addon`
);

ALTER TABLE `xe_layouts` ADD CONSTRAINT `FK_xe_sites_TO_xe_layouts_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_layouts` ADD CONSTRAINT `FK_xe_modules_TO_xe_layouts_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_module_locks` ADD CONSTRAINT `FK_xe_member_TO_xe_module_locks_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_member_auth_mail` ADD CONSTRAINT `FK_xe_member_TO_xe_member_auth_mail_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_lang` ADD CONSTRAINT `FK_xe_sites_TO_xe_lang_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_module_admins` ADD CONSTRAINT `FK_xe_modules_TO_xe_module_admins_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_module_admins` ADD CONSTRAINT `FK_xe_member_TO_xe_module_admins_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_counter_site_status` ADD CONSTRAINT `FK_xe_sites_TO_xe_counter_site_status_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_counter_site_status` ADD CONSTRAINT `FK_xe_counter_status_TO_xe_counter_site_status_1` FOREIGN KEY (
	`regdate`
)
REFERENCES `xe_counter_status` (
	`regdate`
);

ALTER TABLE `xe_menu_item` ADD CONSTRAINT `FK_xe_menu_TO_xe_menu_item_1` FOREIGN KEY (
	`menu_srl`
)
REFERENCES `xe_menu` (
	`menu_srl`
);

ALTER TABLE `xe_member_friend_group` ADD CONSTRAINT `FK_xe_member_TO_xe_member_friend_group_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_document_extra_vars` ADD CONSTRAINT `FK_xe_modules_TO_xe_document_extra_vars_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_document_extra_vars` ADD CONSTRAINT `FK_xe_documents_TO_xe_document_extra_vars_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_module_part_config` ADD CONSTRAINT `FK_xe_module_config_TO_xe_module_part_config_1` FOREIGN KEY (
	`module`
)
REFERENCES `xe_module_config` (
	`module`
);

ALTER TABLE `xe_module_part_config` ADD CONSTRAINT `FK_xe_modules_TO_xe_module_part_config_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_editor_components_site` ADD CONSTRAINT `FK_xe_editor_components_TO_xe_editor_components_site_1` FOREIGN KEY (
	`component_name`
)
REFERENCES `xe_editor_components` (
	`component_name`
);

ALTER TABLE `xe_point` ADD CONSTRAINT `FK_xe_member_TO_xe_point_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_module_mobile_skins` ADD CONSTRAINT `FK_xe_modules_TO_xe_module_mobile_skins_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_member_friend` ADD CONSTRAINT `FK_xe_member_TO_xe_member_friend_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_module_skins` ADD CONSTRAINT `FK_xe_modules_TO_xe_module_skins_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_document_histories` ADD CONSTRAINT `FK_xe_modules_TO_xe_document_histories_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_document_histories` ADD CONSTRAINT `FK_xe_documents_TO_xe_document_histories_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_document_histories` ADD CONSTRAINT `FK_xe_member_TO_xe_document_histories_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_member_group_member` ADD CONSTRAINT `FK_xe_sites_TO_xe_member_group_member_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_member_group_member` ADD CONSTRAINT `FK_xe_member_group_TO_xe_member_group_member_1` FOREIGN KEY (
	`group_srl`
)
REFERENCES `xe_member_group` (
	`group_srl`
);

ALTER TABLE `xe_member_group_member` ADD CONSTRAINT `FK_xe_member_TO_xe_member_group_member_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_document_declared_log` ADD CONSTRAINT `FK_xe_documents_TO_xe_document_declared_log_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_document_declared_log` ADD CONSTRAINT `FK_xe_member_TO_xe_document_declared_log_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_comment_declared_log` ADD CONSTRAINT `FK_xe_comments_TO_xe_comment_declared_log_1` FOREIGN KEY (
	`comment_srl`
)
REFERENCES `xe_comments` (
	`comment_srl`
);

ALTER TABLE `xe_comment_declared_log` ADD CONSTRAINT `FK_xe_member_TO_xe_comment_declared_log_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_module_grants` ADD CONSTRAINT `FK_xe_modules_TO_xe_module_grants_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_module_config` ADD CONSTRAINT `FK_xe_sites_TO_xe_module_config_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_member_autologin` ADD CONSTRAINT `FK_xe_member_TO_xe_member_autologin_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_modules` ADD CONSTRAINT `FK_xe_module_categories_TO_xe_modules_1` FOREIGN KEY (
	`module_category_srl`
)
REFERENCES `xe_module_categories` (
	`module_category_srl`
);

ALTER TABLE `xe_modules` ADD CONSTRAINT `FK_xe_menu_TO_xe_modules_1` FOREIGN KEY (
	`menu_srl`
)
REFERENCES `xe_menu` (
	`menu_srl`
);

ALTER TABLE `xe_modules` ADD CONSTRAINT `FK_xe_sites_TO_xe_modules_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_autoinstall_packages` ADD CONSTRAINT `FK_xe_ai_remote_categories_TO_xe_autoinstall_packages_1` FOREIGN KEY (
	`category_srl`
)
REFERENCES `xe_ai_remote_categories` (
	`category_srl`
);

ALTER TABLE `xe_admin_log` ADD CONSTRAINT `FK_xe_sites_TO_xe_admin_log_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_poll_title` ADD CONSTRAINT `FK_xe_poll_TO_xe_poll_title_1` FOREIGN KEY (
	`poll_srl`
)
REFERENCES `xe_poll` (
	`poll_srl`
);

ALTER TABLE `xe_poll_title` ADD CONSTRAINT `FK_xe_member_TO_xe_poll_title_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_member_group` ADD CONSTRAINT `FK_xe_sites_TO_xe_member_group_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_tags` ADD CONSTRAINT `FK_xe_modules_TO_xe_tags_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_tags` ADD CONSTRAINT `FK_xe_documents_TO_xe_tags_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_documents` ADD CONSTRAINT `FK_xe_modules_TO_xe_documents_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_documents` ADD CONSTRAINT `FK_xe_member_TO_xe_documents_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_document_aliases` ADD CONSTRAINT `FK_xe_modules_TO_xe_document_aliases_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_document_aliases` ADD CONSTRAINT `FK_xe_documents_TO_xe_document_aliases_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_document_voted_log` ADD CONSTRAINT `FK_xe_documents_TO_xe_document_voted_log_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_poll_log` ADD CONSTRAINT `FK_xe_poll_TO_xe_poll_log_1` FOREIGN KEY (
	`poll_srl`
)
REFERENCES `xe_poll` (
	`poll_srl`
);

ALTER TABLE `xe_poll_log` ADD CONSTRAINT `FK_xe_member_TO_xe_poll_log_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_syndication_except_modules` ADD CONSTRAINT `FK_xe_modules_TO_xe_syndication_except_modules_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_comments` ADD CONSTRAINT `FK_xe_modules_TO_xe_comments_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_comments` ADD CONSTRAINT `FK_xe_documents_TO_xe_comments_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_comment_declared` ADD CONSTRAINT `FK_xe_comments_TO_xe_comment_declared_1` FOREIGN KEY (
	`comment_srl`
)
REFERENCES `xe_comments` (
	`comment_srl`
);

ALTER TABLE `xe_document_trash` ADD CONSTRAINT `FK_xe_documents_TO_xe_document_trash_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_document_categories` ADD CONSTRAINT `FK_xe_modules_TO_xe_document_categories_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_syndication_logs` ADD CONSTRAINT `FK_xe_modules_TO_xe_syndication_logs_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

ALTER TABLE `xe_syndication_logs` ADD CONSTRAINT `FK_xe_documents_TO_xe_syndication_logs_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_module_filebox` ADD CONSTRAINT `FK_xe_member_TO_xe_module_filebox_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_admin_favorite` ADD CONSTRAINT `FK_xe_sites_TO_xe_admin_favorite_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_document_declared` ADD CONSTRAINT `FK_xe_documents_TO_xe_document_declared_1` FOREIGN KEY (
	`document_srl`
)
REFERENCES `xe_documents` (
	`document_srl`
);

ALTER TABLE `xe_comment_voted_log` ADD CONSTRAINT `FK_xe_comments_TO_xe_comment_voted_log_1` FOREIGN KEY (
	`comment_srl`
)
REFERENCES `xe_comments` (
	`comment_srl`
);

ALTER TABLE `xe_comment_voted_log` ADD CONSTRAINT `FK_xe_member_TO_xe_comment_voted_log_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_poll_item` ADD CONSTRAINT `FK_xe_poll_TO_xe_poll_item_1` FOREIGN KEY (
	`poll_srl`
)
REFERENCES `xe_poll` (
	`poll_srl`
);

ALTER TABLE `xe_member_count_history` ADD CONSTRAINT `FK_xe_member_TO_xe_member_count_history_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_spamfilter_log` ADD CONSTRAINT `FK_xe_spamfilter_denied_ip_TO_xe_spamfilter_log_1` FOREIGN KEY (
	`ipaddress`
)
REFERENCES `xe_spamfilter_denied_ip` (
	`ipaddress`
);

ALTER TABLE `xe_site_admin` ADD CONSTRAINT `FK_xe_sites_TO_xe_site_admin_1` FOREIGN KEY (
	`site_srl`
)
REFERENCES `xe_sites` (
	`site_srl`
);

ALTER TABLE `xe_site_admin` ADD CONSTRAINT `FK_xe_member_TO_xe_site_admin_1` FOREIGN KEY (
	`member_srl`
)
REFERENCES `xe_member` (
	`member_srl`
);

ALTER TABLE `xe_module_extra_vars` ADD CONSTRAINT `FK_xe_modules_TO_xe_module_extra_vars_1` FOREIGN KEY (
	`module_srl`
)
REFERENCES `xe_modules` (
	`module_srl`
);

