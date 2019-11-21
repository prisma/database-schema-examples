SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `UzgNk_actor` (
  `actor_id` bigint(20) UNSIGNED NOT NULL,
  `actor_user` int(10) UNSIGNED DEFAULT NULL,
  `actor_name` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_archive` (
  `ar_id` int(10) UNSIGNED NOT NULL,
  `ar_namespace` int(11) NOT NULL DEFAULT '0',
  `ar_title` varbinary(255) NOT NULL DEFAULT '',
  `ar_comment_id` bigint(20) UNSIGNED NOT NULL,
  `ar_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ar_user_text` varbinary(255) NOT NULL DEFAULT '',
  `ar_actor` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `ar_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ar_minor_edit` tinyint(4) NOT NULL DEFAULT '0',
  `ar_rev_id` int(10) UNSIGNED NOT NULL,
  `ar_text_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ar_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ar_len` int(10) UNSIGNED DEFAULT NULL,
  `ar_page_id` int(10) UNSIGNED DEFAULT NULL,
  `ar_parent_id` int(10) UNSIGNED DEFAULT NULL,
  `ar_sha1` varbinary(32) NOT NULL DEFAULT '',
  `ar_content_model` varbinary(32) DEFAULT NULL,
  `ar_content_format` varbinary(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_bot_passwords` (
  `bp_user` int(10) UNSIGNED NOT NULL,
  `bp_app_id` varbinary(32) NOT NULL,
  `bp_password` tinyblob NOT NULL,
  `bp_token` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `bp_restrictions` blob NOT NULL,
  `bp_grants` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_category` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_title` varbinary(255) NOT NULL,
  `cat_pages` int(11) NOT NULL DEFAULT '0',
  `cat_subcats` int(11) NOT NULL DEFAULT '0',
  `cat_files` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_categorylinks` (
  `cl_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cl_to` varbinary(255) NOT NULL DEFAULT '',
  `cl_sortkey` varbinary(230) NOT NULL DEFAULT '',
  `cl_sortkey_prefix` varbinary(255) NOT NULL DEFAULT '',
  `cl_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cl_collation` varbinary(32) NOT NULL DEFAULT '',
  `cl_type` enum('page','subcat','file') NOT NULL DEFAULT 'page'
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_change_tag` (
  `ct_id` int(10) UNSIGNED NOT NULL,
  `ct_rc_id` int(11) DEFAULT NULL,
  `ct_log_id` int(10) UNSIGNED DEFAULT NULL,
  `ct_rev_id` int(10) UNSIGNED DEFAULT NULL,
  `ct_params` blob,
  `ct_tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_change_tag_def` (
  `ctd_id` int(10) UNSIGNED NOT NULL,
  `ctd_name` varbinary(255) NOT NULL,
  `ctd_user_defined` tinyint(1) NOT NULL,
  `ctd_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_comment` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `comment_hash` int(11) NOT NULL,
  `comment_text` blob NOT NULL,
  `comment_data` blob
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_content` (
  `content_id` bigint(20) UNSIGNED NOT NULL,
  `content_size` int(10) UNSIGNED NOT NULL,
  `content_sha1` varbinary(32) NOT NULL,
  `content_model` smallint(5) UNSIGNED NOT NULL,
  `content_address` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_content_models` (
  `model_id` smallint(6) NOT NULL,
  `model_name` varbinary(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_externallinks` (
  `el_id` int(10) UNSIGNED NOT NULL,
  `el_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `el_to` blob NOT NULL,
  `el_index` blob NOT NULL,
  `el_index_60` varbinary(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_filearchive` (
  `fa_id` int(11) NOT NULL,
  `fa_name` varbinary(255) NOT NULL DEFAULT '',
  `fa_archive_name` varbinary(255) DEFAULT '',
  `fa_storage_group` varbinary(16) DEFAULT NULL,
  `fa_storage_key` varbinary(64) DEFAULT '',
  `fa_deleted_user` int(11) DEFAULT NULL,
  `fa_deleted_timestamp` binary(14) DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `fa_deleted_reason_id` bigint(20) UNSIGNED NOT NULL,
  `fa_size` int(10) UNSIGNED DEFAULT '0',
  `fa_width` int(11) DEFAULT '0',
  `fa_height` int(11) DEFAULT '0',
  `fa_metadata` mediumblob,
  `fa_bits` int(11) DEFAULT '0',
  `fa_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE','3D') DEFAULT NULL,
  `fa_major_mime` enum('unknown','application','audio','image','text','video','message','model','multipart','chemical') DEFAULT 'unknown',
  `fa_minor_mime` varbinary(100) DEFAULT 'unknown',
  `fa_description_id` bigint(20) UNSIGNED NOT NULL,
  `fa_user` int(10) UNSIGNED DEFAULT '0',
  `fa_user_text` varbinary(255) DEFAULT '',
  `fa_actor` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `fa_timestamp` binary(14) DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `fa_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `fa_sha1` varbinary(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_image` (
  `img_name` varbinary(255) NOT NULL DEFAULT '',
  `img_size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `img_width` int(11) NOT NULL DEFAULT '0',
  `img_height` int(11) NOT NULL DEFAULT '0',
  `img_metadata` mediumblob NOT NULL,
  `img_bits` int(11) NOT NULL DEFAULT '0',
  `img_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE','3D') DEFAULT NULL,
  `img_major_mime` enum('unknown','application','audio','image','text','video','message','model','multipart','chemical') NOT NULL DEFAULT 'unknown',
  `img_minor_mime` varbinary(100) NOT NULL DEFAULT 'unknown',
  `img_description_id` bigint(20) UNSIGNED NOT NULL,
  `img_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `img_user_text` varbinary(255) NOT NULL DEFAULT '',
  `img_actor` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `img_timestamp` varbinary(14) NOT NULL DEFAULT '',
  `img_sha1` varbinary(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_imagelinks` (
  `il_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `il_from_namespace` int(11) NOT NULL DEFAULT '0',
  `il_to` varbinary(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_interwiki` (
  `iw_prefix` varbinary(32) NOT NULL,
  `iw_url` blob NOT NULL,
  `iw_api` blob NOT NULL,
  `iw_wikiid` varbinary(64) NOT NULL,
  `iw_local` tinyint(1) NOT NULL,
  `iw_trans` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_ipblocks` (
  `ipb_id` int(11) NOT NULL,
  `ipb_address` tinyblob NOT NULL,
  `ipb_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipb_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipb_by_text` varbinary(255) NOT NULL DEFAULT '',
  `ipb_by_actor` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `ipb_reason_id` bigint(20) UNSIGNED NOT NULL,
  `ipb_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ipb_auto` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_anon_only` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_create_account` tinyint(1) NOT NULL DEFAULT '1',
  `ipb_enable_autoblock` tinyint(1) NOT NULL DEFAULT '1',
  `ipb_expiry` varbinary(14) NOT NULL DEFAULT '',
  `ipb_range_start` tinyblob NOT NULL,
  `ipb_range_end` tinyblob NOT NULL,
  `ipb_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_block_email` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_allow_usertalk` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_parent_block_id` int(11) DEFAULT NULL,
  `ipb_sitewide` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_ipblocks_restrictions` (
  `ir_ipb_id` int(11) NOT NULL,
  `ir_type` tinyint(1) NOT NULL,
  `ir_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_ip_changes` (
  `ipc_rev_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipc_rev_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ipc_hex` varbinary(35) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_iwlinks` (
  `iwl_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `iwl_prefix` varbinary(20) NOT NULL DEFAULT '',
  `iwl_title` varbinary(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_job` (
  `job_id` int(10) UNSIGNED NOT NULL,
  `job_cmd` varbinary(60) NOT NULL DEFAULT '',
  `job_namespace` int(11) NOT NULL,
  `job_title` varbinary(255) NOT NULL,
  `job_timestamp` varbinary(14) DEFAULT NULL,
  `job_params` mediumblob NOT NULL,
  `job_random` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `job_attempts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `job_token` varbinary(32) NOT NULL DEFAULT '',
  `job_token_timestamp` varbinary(14) DEFAULT NULL,
  `job_sha1` varbinary(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_l10n_cache` (
  `lc_lang` varbinary(32) NOT NULL,
  `lc_key` varbinary(255) NOT NULL,
  `lc_value` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_langlinks` (
  `ll_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ll_lang` varbinary(20) NOT NULL DEFAULT '',
  `ll_title` varbinary(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_logging` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_type` varbinary(32) NOT NULL DEFAULT '',
  `log_action` varbinary(32) NOT NULL DEFAULT '',
  `log_timestamp` binary(14) NOT NULL DEFAULT '19700101000000',
  `log_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_user_text` varbinary(255) NOT NULL DEFAULT '',
  `log_actor` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `log_namespace` int(11) NOT NULL DEFAULT '0',
  `log_title` varbinary(255) NOT NULL DEFAULT '',
  `log_page` int(10) UNSIGNED DEFAULT NULL,
  `log_comment_id` bigint(20) UNSIGNED NOT NULL,
  `log_params` blob NOT NULL,
  `log_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_log_search` (
  `ls_field` varbinary(32) NOT NULL,
  `ls_value` varbinary(255) NOT NULL,
  `ls_log_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_module_deps` (
  `md_module` varbinary(255) NOT NULL,
  `md_skin` varbinary(32) NOT NULL,
  `md_deps` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_objectcache` (
  `keyname` varbinary(255) NOT NULL DEFAULT '',
  `value` mediumblob,
  `exptime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_oldimage` (
  `oi_name` varbinary(255) NOT NULL DEFAULT '',
  `oi_archive_name` varbinary(255) NOT NULL DEFAULT '',
  `oi_size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `oi_width` int(11) NOT NULL DEFAULT '0',
  `oi_height` int(11) NOT NULL DEFAULT '0',
  `oi_bits` int(11) NOT NULL DEFAULT '0',
  `oi_description_id` bigint(20) UNSIGNED NOT NULL,
  `oi_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `oi_user_text` varbinary(255) NOT NULL DEFAULT '',
  `oi_actor` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `oi_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `oi_metadata` mediumblob NOT NULL,
  `oi_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE','3D') DEFAULT NULL,
  `oi_major_mime` enum('unknown','application','audio','image','text','video','message','model','multipart','chemical') NOT NULL DEFAULT 'unknown',
  `oi_minor_mime` varbinary(100) NOT NULL DEFAULT 'unknown',
  `oi_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `oi_sha1` varbinary(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_page` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `page_namespace` int(11) NOT NULL,
  `page_title` varbinary(255) NOT NULL,
  `page_restrictions` tinyblob NOT NULL,
  `page_is_redirect` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `page_is_new` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `page_random` double UNSIGNED NOT NULL,
  `page_touched` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `page_links_updated` varbinary(14) DEFAULT NULL,
  `page_latest` int(10) UNSIGNED NOT NULL,
  `page_len` int(10) UNSIGNED NOT NULL,
  `page_content_model` varbinary(32) DEFAULT NULL,
  `page_lang` varbinary(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_pagelinks` (
  `pl_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pl_from_namespace` int(11) NOT NULL DEFAULT '0',
  `pl_namespace` int(11) NOT NULL DEFAULT '0',
  `pl_title` varbinary(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_page_props` (
  `pp_page` int(11) NOT NULL,
  `pp_propname` varbinary(60) NOT NULL,
  `pp_value` blob NOT NULL,
  `pp_sortkey` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_page_restrictions` (
  `pr_id` int(10) UNSIGNED NOT NULL,
  `pr_page` int(11) NOT NULL,
  `pr_type` varbinary(60) NOT NULL,
  `pr_level` varbinary(60) NOT NULL,
  `pr_cascade` tinyint(4) NOT NULL,
  `pr_user` int(10) UNSIGNED DEFAULT NULL,
  `pr_expiry` varbinary(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_protected_titles` (
  `pt_namespace` int(11) NOT NULL,
  `pt_title` varbinary(255) NOT NULL,
  `pt_user` int(10) UNSIGNED NOT NULL,
  `pt_reason_id` bigint(20) UNSIGNED NOT NULL,
  `pt_timestamp` binary(14) NOT NULL,
  `pt_expiry` varbinary(14) NOT NULL DEFAULT '',
  `pt_create_perm` varbinary(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_querycache` (
  `qc_type` varbinary(32) NOT NULL,
  `qc_value` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `qc_namespace` int(11) NOT NULL DEFAULT '0',
  `qc_title` varbinary(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_querycachetwo` (
  `qcc_type` varbinary(32) NOT NULL,
  `qcc_value` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `qcc_namespace` int(11) NOT NULL DEFAULT '0',
  `qcc_title` varbinary(255) NOT NULL DEFAULT '',
  `qcc_namespacetwo` int(11) NOT NULL DEFAULT '0',
  `qcc_titletwo` varbinary(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_querycache_info` (
  `qci_type` varbinary(32) NOT NULL DEFAULT '',
  `qci_timestamp` binary(14) NOT NULL DEFAULT '19700101000000'
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_recentchanges` (
  `rc_id` int(11) NOT NULL,
  `rc_timestamp` varbinary(14) NOT NULL DEFAULT '',
  `rc_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rc_user_text` varbinary(255) NOT NULL DEFAULT '',
  `rc_actor` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `rc_namespace` int(11) NOT NULL DEFAULT '0',
  `rc_title` varbinary(255) NOT NULL DEFAULT '',
  `rc_comment_id` bigint(20) UNSIGNED NOT NULL,
  `rc_minor` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `rc_bot` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `rc_new` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `rc_cur_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rc_this_oldid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rc_last_oldid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rc_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `rc_source` varbinary(16) NOT NULL DEFAULT '',
  `rc_patrolled` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `rc_ip` varbinary(40) NOT NULL DEFAULT '',
  `rc_old_len` int(11) DEFAULT NULL,
  `rc_new_len` int(11) DEFAULT NULL,
  `rc_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `rc_logid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rc_log_type` varbinary(255) DEFAULT NULL,
  `rc_log_action` varbinary(255) DEFAULT NULL,
  `rc_params` blob
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_redirect` (
  `rd_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rd_namespace` int(11) NOT NULL DEFAULT '0',
  `rd_title` varbinary(255) NOT NULL DEFAULT '',
  `rd_interwiki` varbinary(32) DEFAULT NULL,
  `rd_fragment` varbinary(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_revision` (
  `rev_id` int(10) UNSIGNED NOT NULL,
  `rev_page` int(10) UNSIGNED NOT NULL,
  `rev_text_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rev_comment` varbinary(767) NOT NULL DEFAULT '',
  `rev_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rev_user_text` varbinary(255) NOT NULL DEFAULT '',
  `rev_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `rev_minor_edit` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `rev_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `rev_len` int(10) UNSIGNED DEFAULT NULL,
  `rev_parent_id` int(10) UNSIGNED DEFAULT NULL,
  `rev_sha1` varbinary(32) NOT NULL DEFAULT '',
  `rev_content_model` varbinary(32) DEFAULT NULL,
  `rev_content_format` varbinary(64) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=1024 DEFAULT CHARSET=binary MAX_ROWS=10000000;

CREATE TABLE `UzgNk_revision_actor_temp` (
  `revactor_rev` int(10) UNSIGNED NOT NULL,
  `revactor_actor` bigint(20) UNSIGNED NOT NULL,
  `revactor_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `revactor_page` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_revision_comment_temp` (
  `revcomment_rev` int(10) UNSIGNED NOT NULL,
  `revcomment_comment_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_searchindex` (
  `si_page` int(10) UNSIGNED NOT NULL,
  `si_title` varchar(255) NOT NULL DEFAULT '',
  `si_text` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `UzgNk_sites` (
  `site_id` int(10) UNSIGNED NOT NULL,
  `site_global_key` varbinary(32) NOT NULL,
  `site_type` varbinary(32) NOT NULL,
  `site_group` varbinary(32) NOT NULL,
  `site_source` varbinary(32) NOT NULL,
  `site_language` varbinary(32) NOT NULL,
  `site_protocol` varbinary(32) NOT NULL,
  `site_domain` varbinary(255) NOT NULL,
  `site_data` blob NOT NULL,
  `site_forward` tinyint(1) NOT NULL,
  `site_config` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_site_identifiers` (
  `si_site` int(10) UNSIGNED NOT NULL,
  `si_type` varbinary(32) NOT NULL,
  `si_key` varbinary(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_site_stats` (
  `ss_row_id` int(10) UNSIGNED NOT NULL,
  `ss_total_edits` bigint(20) UNSIGNED DEFAULT NULL,
  `ss_good_articles` bigint(20) UNSIGNED DEFAULT NULL,
  `ss_total_pages` bigint(20) UNSIGNED DEFAULT NULL,
  `ss_users` bigint(20) UNSIGNED DEFAULT NULL,
  `ss_active_users` bigint(20) UNSIGNED DEFAULT NULL,
  `ss_images` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_slots` (
  `slot_revision_id` bigint(20) UNSIGNED NOT NULL,
  `slot_role_id` smallint(5) UNSIGNED NOT NULL,
  `slot_content_id` bigint(20) UNSIGNED NOT NULL,
  `slot_origin` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_slot_roles` (
  `role_id` smallint(6) NOT NULL,
  `role_name` varbinary(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_templatelinks` (
  `tl_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tl_from_namespace` int(11) NOT NULL DEFAULT '0',
  `tl_namespace` int(11) NOT NULL DEFAULT '0',
  `tl_title` varbinary(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_text` (
  `old_id` int(10) UNSIGNED NOT NULL,
  `old_text` mediumblob NOT NULL,
  `old_flags` tinyblob NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=10240 DEFAULT CHARSET=binary MAX_ROWS=10000000;

CREATE TABLE `UzgNk_updatelog` (
  `ul_key` varbinary(255) NOT NULL,
  `ul_value` blob
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_uploadstash` (
  `us_id` int(10) UNSIGNED NOT NULL,
  `us_user` int(10) UNSIGNED NOT NULL,
  `us_key` varbinary(255) NOT NULL,
  `us_orig_path` varbinary(255) NOT NULL,
  `us_path` varbinary(255) NOT NULL,
  `us_source_type` varbinary(50) DEFAULT NULL,
  `us_timestamp` varbinary(14) NOT NULL,
  `us_status` varbinary(50) NOT NULL,
  `us_chunk_inx` int(10) UNSIGNED DEFAULT NULL,
  `us_props` blob,
  `us_size` int(10) UNSIGNED NOT NULL,
  `us_sha1` varbinary(31) NOT NULL,
  `us_mime` varbinary(255) DEFAULT NULL,
  `us_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE','3D') DEFAULT NULL,
  `us_image_width` int(10) UNSIGNED DEFAULT NULL,
  `us_image_height` int(10) UNSIGNED DEFAULT NULL,
  `us_image_bits` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varbinary(255) NOT NULL DEFAULT '',
  `user_real_name` varbinary(255) NOT NULL DEFAULT '',
  `user_password` tinyblob NOT NULL,
  `user_newpassword` tinyblob NOT NULL,
  `user_newpass_time` binary(14) DEFAULT NULL,
  `user_email` tinyblob NOT NULL,
  `user_touched` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `user_token` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `user_email_authenticated` binary(14) DEFAULT NULL,
  `user_email_token` binary(32) DEFAULT NULL,
  `user_email_token_expires` binary(14) DEFAULT NULL,
  `user_registration` binary(14) DEFAULT NULL,
  `user_editcount` int(11) DEFAULT NULL,
  `user_password_expires` varbinary(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_user_former_groups` (
  `ufg_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ufg_group` varbinary(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_user_groups` (
  `ug_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ug_group` varbinary(255) NOT NULL DEFAULT '',
  `ug_expiry` varbinary(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_user_newtalk` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varbinary(40) NOT NULL DEFAULT '',
  `user_last_timestamp` varbinary(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_user_properties` (
  `up_user` int(10) UNSIGNED NOT NULL,
  `up_property` varbinary(255) NOT NULL,
  `up_value` blob
) ENGINE=InnoDB DEFAULT CHARSET=binary;

CREATE TABLE `UzgNk_watchlist` (
  `wl_id` int(10) UNSIGNED NOT NULL,
  `wl_user` int(10) UNSIGNED NOT NULL,
  `wl_namespace` int(11) NOT NULL DEFAULT '0',
  `wl_title` varbinary(255) NOT NULL DEFAULT '',
  `wl_notificationtimestamp` varbinary(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;


ALTER TABLE `UzgNk_actor`
  ADD PRIMARY KEY (`actor_id`),
  ADD UNIQUE KEY `actor_name` (`actor_name`),
  ADD UNIQUE KEY `actor_user` (`actor_user`);

ALTER TABLE `UzgNk_archive`
  ADD PRIMARY KEY (`ar_id`),
  ADD UNIQUE KEY `ar_revid_uniq` (`ar_rev_id`),
  ADD KEY `name_title_timestamp` (`ar_namespace`,`ar_title`,`ar_timestamp`),
  ADD KEY `ar_usertext_timestamp` (`ar_user_text`,`ar_timestamp`),
  ADD KEY `ar_actor_timestamp` (`ar_actor`,`ar_timestamp`);

ALTER TABLE `UzgNk_bot_passwords`
  ADD PRIMARY KEY (`bp_user`,`bp_app_id`);

ALTER TABLE `UzgNk_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_title` (`cat_title`),
  ADD KEY `cat_pages` (`cat_pages`);

ALTER TABLE `UzgNk_categorylinks`
  ADD PRIMARY KEY (`cl_from`,`cl_to`),
  ADD KEY `cl_sortkey` (`cl_to`,`cl_type`,`cl_sortkey`,`cl_from`),
  ADD KEY `cl_timestamp` (`cl_to`,`cl_timestamp`),
  ADD KEY `cl_collation_ext` (`cl_collation`,`cl_to`,`cl_type`,`cl_from`);

ALTER TABLE `UzgNk_change_tag`
  ADD PRIMARY KEY (`ct_id`),
  ADD UNIQUE KEY `change_tag_rc_tag_id` (`ct_rc_id`,`ct_tag_id`),
  ADD UNIQUE KEY `change_tag_log_tag_id` (`ct_log_id`,`ct_tag_id`),
  ADD UNIQUE KEY `change_tag_rev_tag_id` (`ct_rev_id`,`ct_tag_id`),
  ADD KEY `change_tag_tag_id_id` (`ct_tag_id`,`ct_rc_id`,`ct_rev_id`,`ct_log_id`);

ALTER TABLE `UzgNk_change_tag_def`
  ADD PRIMARY KEY (`ctd_id`),
  ADD UNIQUE KEY `ctd_name` (`ctd_name`),
  ADD KEY `ctd_count` (`ctd_count`),
  ADD KEY `ctd_user_defined` (`ctd_user_defined`);

ALTER TABLE `UzgNk_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_hash` (`comment_hash`);

ALTER TABLE `UzgNk_content`
  ADD PRIMARY KEY (`content_id`);

ALTER TABLE `UzgNk_content_models`
  ADD PRIMARY KEY (`model_id`),
  ADD UNIQUE KEY `model_name` (`model_name`);

ALTER TABLE `UzgNk_externallinks`
  ADD PRIMARY KEY (`el_id`),
  ADD KEY `el_from` (`el_from`,`el_to`(40)),
  ADD KEY `el_to` (`el_to`(60),`el_from`),
  ADD KEY `el_index` (`el_index`(60)),
  ADD KEY `el_index_60` (`el_index_60`,`el_id`),
  ADD KEY `el_from_index_60` (`el_from`,`el_index_60`,`el_id`);

ALTER TABLE `UzgNk_filearchive`
  ADD PRIMARY KEY (`fa_id`),
  ADD KEY `fa_name` (`fa_name`,`fa_timestamp`),
  ADD KEY `fa_storage_group` (`fa_storage_group`,`fa_storage_key`),
  ADD KEY `fa_deleted_timestamp` (`fa_deleted_timestamp`),
  ADD KEY `fa_user_timestamp` (`fa_user_text`,`fa_timestamp`),
  ADD KEY `fa_actor_timestamp` (`fa_actor`,`fa_timestamp`),
  ADD KEY `fa_sha1` (`fa_sha1`(10));

ALTER TABLE `UzgNk_image`
  ADD PRIMARY KEY (`img_name`),
  ADD KEY `img_user_timestamp` (`img_user`,`img_timestamp`),
  ADD KEY `img_usertext_timestamp` (`img_user_text`,`img_timestamp`),
  ADD KEY `img_actor_timestamp` (`img_actor`,`img_timestamp`),
  ADD KEY `img_size` (`img_size`),
  ADD KEY `img_timestamp` (`img_timestamp`),
  ADD KEY `img_sha1` (`img_sha1`(10)),
  ADD KEY `img_media_mime` (`img_media_type`,`img_major_mime`,`img_minor_mime`);

ALTER TABLE `UzgNk_imagelinks`
  ADD PRIMARY KEY (`il_from`,`il_to`),
  ADD KEY `il_to` (`il_to`,`il_from`),
  ADD KEY `il_backlinks_namespace` (`il_from_namespace`,`il_to`,`il_from`);

ALTER TABLE `UzgNk_interwiki`
  ADD PRIMARY KEY (`iw_prefix`);

ALTER TABLE `UzgNk_ipblocks`
  ADD PRIMARY KEY (`ipb_id`),
  ADD UNIQUE KEY `ipb_address` (`ipb_address`(255),`ipb_user`,`ipb_auto`,`ipb_anon_only`),
  ADD KEY `ipb_user` (`ipb_user`),
  ADD KEY `ipb_range` (`ipb_range_start`(8),`ipb_range_end`(8)),
  ADD KEY `ipb_timestamp` (`ipb_timestamp`),
  ADD KEY `ipb_expiry` (`ipb_expiry`),
  ADD KEY `ipb_parent_block_id` (`ipb_parent_block_id`);

ALTER TABLE `UzgNk_ipblocks_restrictions`
  ADD PRIMARY KEY (`ir_ipb_id`,`ir_type`,`ir_value`),
  ADD KEY `ir_type_value` (`ir_type`,`ir_value`);

ALTER TABLE `UzgNk_ip_changes`
  ADD PRIMARY KEY (`ipc_rev_id`),
  ADD KEY `ipc_rev_timestamp` (`ipc_rev_timestamp`),
  ADD KEY `ipc_hex_time` (`ipc_hex`,`ipc_rev_timestamp`);

ALTER TABLE `UzgNk_iwlinks`
  ADD PRIMARY KEY (`iwl_from`,`iwl_prefix`,`iwl_title`),
  ADD KEY `iwl_prefix_title_from` (`iwl_prefix`,`iwl_title`,`iwl_from`),
  ADD KEY `iwl_prefix_from_title` (`iwl_prefix`,`iwl_from`,`iwl_title`);

ALTER TABLE `UzgNk_job`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `job_sha1` (`job_sha1`),
  ADD KEY `job_cmd_token` (`job_cmd`,`job_token`,`job_random`),
  ADD KEY `job_cmd_token_id` (`job_cmd`,`job_token`,`job_id`),
  ADD KEY `job_cmd` (`job_cmd`,`job_namespace`,`job_title`,`job_params`(128)),
  ADD KEY `job_timestamp` (`job_timestamp`);

ALTER TABLE `UzgNk_l10n_cache`
  ADD PRIMARY KEY (`lc_lang`,`lc_key`);

ALTER TABLE `UzgNk_langlinks`
  ADD PRIMARY KEY (`ll_from`,`ll_lang`),
  ADD KEY `ll_lang` (`ll_lang`,`ll_title`);

ALTER TABLE `UzgNk_logging`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `type_time` (`log_type`,`log_timestamp`),
  ADD KEY `user_time` (`log_user`,`log_timestamp`),
  ADD KEY `actor_time` (`log_actor`,`log_timestamp`),
  ADD KEY `page_time` (`log_namespace`,`log_title`,`log_timestamp`),
  ADD KEY `times` (`log_timestamp`),
  ADD KEY `log_user_type_time` (`log_user`,`log_type`,`log_timestamp`),
  ADD KEY `log_actor_type_time` (`log_actor`,`log_type`,`log_timestamp`),
  ADD KEY `log_page_id_time` (`log_page`,`log_timestamp`),
  ADD KEY `log_type_action` (`log_type`,`log_action`,`log_timestamp`),
  ADD KEY `log_user_text_type_time` (`log_user_text`,`log_type`,`log_timestamp`),
  ADD KEY `log_user_text_time` (`log_user_text`,`log_timestamp`);

ALTER TABLE `UzgNk_log_search`
  ADD PRIMARY KEY (`ls_field`,`ls_value`,`ls_log_id`),
  ADD KEY `ls_log_id` (`ls_log_id`);

ALTER TABLE `UzgNk_module_deps`
  ADD PRIMARY KEY (`md_module`,`md_skin`);

ALTER TABLE `UzgNk_objectcache`
  ADD PRIMARY KEY (`keyname`),
  ADD KEY `exptime` (`exptime`);

ALTER TABLE `UzgNk_oldimage`
  ADD KEY `oi_usertext_timestamp` (`oi_user_text`,`oi_timestamp`),
  ADD KEY `oi_actor_timestamp` (`oi_actor`,`oi_timestamp`),
  ADD KEY `oi_name_timestamp` (`oi_name`,`oi_timestamp`),
  ADD KEY `oi_name_archive_name` (`oi_name`,`oi_archive_name`(14)),
  ADD KEY `oi_sha1` (`oi_sha1`(10));

ALTER TABLE `UzgNk_page`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `name_title` (`page_namespace`,`page_title`),
  ADD KEY `page_random` (`page_random`),
  ADD KEY `page_len` (`page_len`),
  ADD KEY `page_redirect_namespace_len` (`page_is_redirect`,`page_namespace`,`page_len`);

ALTER TABLE `UzgNk_pagelinks`
  ADD PRIMARY KEY (`pl_from`,`pl_namespace`,`pl_title`),
  ADD KEY `pl_namespace` (`pl_namespace`,`pl_title`,`pl_from`),
  ADD KEY `pl_backlinks_namespace` (`pl_from_namespace`,`pl_namespace`,`pl_title`,`pl_from`);

ALTER TABLE `UzgNk_page_props`
  ADD PRIMARY KEY (`pp_page`,`pp_propname`),
  ADD UNIQUE KEY `pp_propname_page` (`pp_propname`,`pp_page`),
  ADD UNIQUE KEY `pp_propname_sortkey_page` (`pp_propname`,`pp_sortkey`,`pp_page`);

ALTER TABLE `UzgNk_page_restrictions`
  ADD PRIMARY KEY (`pr_id`),
  ADD UNIQUE KEY `pr_pagetype` (`pr_page`,`pr_type`),
  ADD KEY `pr_typelevel` (`pr_type`,`pr_level`),
  ADD KEY `pr_level` (`pr_level`),
  ADD KEY `pr_cascade` (`pr_cascade`);

ALTER TABLE `UzgNk_protected_titles`
  ADD PRIMARY KEY (`pt_namespace`,`pt_title`),
  ADD KEY `pt_timestamp` (`pt_timestamp`);

ALTER TABLE `UzgNk_querycache`
  ADD KEY `qc_type` (`qc_type`,`qc_value`);

ALTER TABLE `UzgNk_querycachetwo`
  ADD KEY `qcc_type` (`qcc_type`,`qcc_value`),
  ADD KEY `qcc_title` (`qcc_type`,`qcc_namespace`,`qcc_title`),
  ADD KEY `qcc_titletwo` (`qcc_type`,`qcc_namespacetwo`,`qcc_titletwo`);

ALTER TABLE `UzgNk_querycache_info`
  ADD PRIMARY KEY (`qci_type`);

ALTER TABLE `UzgNk_recentchanges`
  ADD PRIMARY KEY (`rc_id`),
  ADD KEY `rc_timestamp` (`rc_timestamp`),
  ADD KEY `rc_namespace_title_timestamp` (`rc_namespace`,`rc_title`,`rc_timestamp`),
  ADD KEY `rc_cur_id` (`rc_cur_id`),
  ADD KEY `new_name_timestamp` (`rc_new`,`rc_namespace`,`rc_timestamp`),
  ADD KEY `rc_ip` (`rc_ip`),
  ADD KEY `rc_ns_usertext` (`rc_namespace`,`rc_user_text`),
  ADD KEY `rc_ns_actor` (`rc_namespace`,`rc_actor`),
  ADD KEY `rc_user_text` (`rc_user_text`,`rc_timestamp`),
  ADD KEY `rc_actor` (`rc_actor`,`rc_timestamp`),
  ADD KEY `rc_name_type_patrolled_timestamp` (`rc_namespace`,`rc_type`,`rc_patrolled`,`rc_timestamp`),
  ADD KEY `rc_this_oldid` (`rc_this_oldid`);

ALTER TABLE `UzgNk_redirect`
  ADD PRIMARY KEY (`rd_from`),
  ADD KEY `rd_ns_title` (`rd_namespace`,`rd_title`,`rd_from`);

ALTER TABLE `UzgNk_revision`
  ADD PRIMARY KEY (`rev_id`),
  ADD KEY `rev_page_id` (`rev_page`,`rev_id`),
  ADD KEY `rev_timestamp` (`rev_timestamp`),
  ADD KEY `page_timestamp` (`rev_page`,`rev_timestamp`),
  ADD KEY `user_timestamp` (`rev_user`,`rev_timestamp`),
  ADD KEY `usertext_timestamp` (`rev_user_text`,`rev_timestamp`),
  ADD KEY `page_user_timestamp` (`rev_page`,`rev_user`,`rev_timestamp`);

ALTER TABLE `UzgNk_revision_actor_temp`
  ADD PRIMARY KEY (`revactor_rev`,`revactor_actor`),
  ADD UNIQUE KEY `revactor_rev` (`revactor_rev`),
  ADD KEY `actor_timestamp` (`revactor_actor`,`revactor_timestamp`),
  ADD KEY `page_actor_timestamp` (`revactor_page`,`revactor_actor`,`revactor_timestamp`);

ALTER TABLE `UzgNk_revision_comment_temp`
  ADD PRIMARY KEY (`revcomment_rev`,`revcomment_comment_id`),
  ADD UNIQUE KEY `revcomment_rev` (`revcomment_rev`);

ALTER TABLE `UzgNk_searchindex`
  ADD UNIQUE KEY `si_page` (`si_page`);
ALTER TABLE `UzgNk_searchindex` ADD FULLTEXT KEY `si_title` (`si_title`);
ALTER TABLE `UzgNk_searchindex` ADD FULLTEXT KEY `si_text` (`si_text`);

ALTER TABLE `UzgNk_sites`
  ADD PRIMARY KEY (`site_id`),
  ADD UNIQUE KEY `sites_global_key` (`site_global_key`),
  ADD KEY `sites_type` (`site_type`),
  ADD KEY `sites_group` (`site_group`),
  ADD KEY `sites_source` (`site_source`),
  ADD KEY `sites_language` (`site_language`),
  ADD KEY `sites_protocol` (`site_protocol`),
  ADD KEY `sites_domain` (`site_domain`),
  ADD KEY `sites_forward` (`site_forward`);

ALTER TABLE `UzgNk_site_identifiers`
  ADD PRIMARY KEY (`si_type`,`si_key`),
  ADD KEY `site_ids_site` (`si_site`),
  ADD KEY `site_ids_key` (`si_key`);

ALTER TABLE `UzgNk_site_stats`
  ADD PRIMARY KEY (`ss_row_id`);

ALTER TABLE `UzgNk_slots`
  ADD PRIMARY KEY (`slot_revision_id`,`slot_role_id`),
  ADD KEY `slot_revision_origin_role` (`slot_revision_id`,`slot_origin`,`slot_role_id`);

ALTER TABLE `UzgNk_slot_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

ALTER TABLE `UzgNk_templatelinks`
  ADD PRIMARY KEY (`tl_from`,`tl_namespace`,`tl_title`),
  ADD KEY `tl_namespace` (`tl_namespace`,`tl_title`,`tl_from`),
  ADD KEY `tl_backlinks_namespace` (`tl_from_namespace`,`tl_namespace`,`tl_title`,`tl_from`);

ALTER TABLE `UzgNk_text`
  ADD PRIMARY KEY (`old_id`);

ALTER TABLE `UzgNk_updatelog`
  ADD PRIMARY KEY (`ul_key`);

ALTER TABLE `UzgNk_uploadstash`
  ADD PRIMARY KEY (`us_id`),
  ADD UNIQUE KEY `us_key` (`us_key`),
  ADD KEY `us_user` (`us_user`),
  ADD KEY `us_timestamp` (`us_timestamp`);

ALTER TABLE `UzgNk_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `user_email_token` (`user_email_token`),
  ADD KEY `user_email` (`user_email`(50));

ALTER TABLE `UzgNk_user_former_groups`
  ADD PRIMARY KEY (`ufg_user`,`ufg_group`);

ALTER TABLE `UzgNk_user_groups`
  ADD PRIMARY KEY (`ug_user`,`ug_group`),
  ADD KEY `ug_group` (`ug_group`),
  ADD KEY `ug_expiry` (`ug_expiry`);

ALTER TABLE `UzgNk_user_newtalk`
  ADD KEY `un_user_id` (`user_id`),
  ADD KEY `un_user_ip` (`user_ip`);

ALTER TABLE `UzgNk_user_properties`
  ADD PRIMARY KEY (`up_user`,`up_property`),
  ADD KEY `user_properties_property` (`up_property`);

ALTER TABLE `UzgNk_watchlist`
  ADD PRIMARY KEY (`wl_id`),
  ADD UNIQUE KEY `wl_user` (`wl_user`,`wl_namespace`,`wl_title`),
  ADD KEY `namespace_title` (`wl_namespace`,`wl_title`),
  ADD KEY `wl_user_notificationtimestamp` (`wl_user`,`wl_notificationtimestamp`);


ALTER TABLE `UzgNk_actor`
  MODIFY `actor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_archive`
  MODIFY `ar_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_category`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_change_tag`
  MODIFY `ct_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_change_tag_def`
  MODIFY `ctd_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_comment`
  MODIFY `comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_content`
  MODIFY `content_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_content_models`
  MODIFY `model_id` smallint(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_externallinks`
  MODIFY `el_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_filearchive`
  MODIFY `fa_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_ipblocks`
  MODIFY `ipb_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_job`
  MODIFY `job_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_logging`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_page`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_page_restrictions`
  MODIFY `pr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_recentchanges`
  MODIFY `rc_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_revision`
  MODIFY `rev_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_sites`
  MODIFY `site_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_slot_roles`
  MODIFY `role_id` smallint(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_text`
  MODIFY `old_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_uploadstash`
  MODIFY `us_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `UzgNk_watchlist`
  MODIFY `wl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
