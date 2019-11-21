SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `SN6VS_access` (
  `id_profile` int(10) UNSIGNED NOT NULL,
  `id_authorization_role` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_accessory` (
  `id_product_1` int(10) UNSIGNED NOT NULL,
  `id_product_2` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_address` (
  `id_address` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_state` int(10) UNSIGNED DEFAULT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_supplier` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_warehouse` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(32) DEFAULT NULL,
  `phone_mobile` varchar(32) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_address_format` (
  `id_country` int(10) UNSIGNED NOT NULL,
  `format` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_admin_filter` (
  `id` int(11) NOT NULL,
  `employee` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `controller` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter` longtext COLLATE utf8_unicode_ci NOT NULL,
  `filter_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_advice` (
  `id_advice` int(11) NOT NULL,
  `id_ps_advice` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `ids_tab` text,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `location` enum('after','before') NOT NULL,
  `selector` varchar(255) DEFAULT NULL,
  `start_day` int(11) NOT NULL DEFAULT '0',
  `stop_day` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_advice_lang` (
  `id_advice` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_alias` (
  `id_alias` int(10) UNSIGNED NOT NULL,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_attachment` (
  `id_attachment` int(10) UNSIGNED NOT NULL,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `file_size` bigint(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_attachment_lang` (
  `id_attachment` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_attribute` (
  `id_attribute` int(11) NOT NULL,
  `id_attribute_group` int(11) NOT NULL,
  `color` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_attribute_group` (
  `id_attribute_group` int(11) NOT NULL,
  `is_color_group` tinyint(1) NOT NULL,
  `group_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_attribute_group_lang` (
  `id_attribute_group` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `public_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_attribute_group_shop` (
  `id_attribute_group` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_attribute_impact` (
  `id_attribute_impact` int(10) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_attribute` int(11) UNSIGNED NOT NULL,
  `weight` decimal(20,6) NOT NULL,
  `price` decimal(17,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_attribute_lang` (
  `id_attribute` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_attribute_shop` (
  `id_attribute` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_authorization_role` (
  `id_authorization_role` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_badge` (
  `id_badge` int(11) NOT NULL,
  `id_ps_badge` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `id_group` int(11) NOT NULL,
  `group_position` int(11) NOT NULL,
  `scoring` int(11) NOT NULL,
  `awb` int(11) DEFAULT '0',
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_badge_lang` (
  `id_badge` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_carrier` (
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_reference` int(10) UNSIGNED NOT NULL,
  `id_tax_rules_group` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_module` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_free` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shipping_external` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `need_range` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int(2) NOT NULL DEFAULT '0',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `max_width` int(10) DEFAULT '0',
  `max_height` int(10) DEFAULT '0',
  `max_depth` int(10) DEFAULT '0',
  `max_weight` decimal(20,6) DEFAULT '0.000000',
  `grade` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_carrier_group` (
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_carrier_lang` (
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `delay` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_carrier_shop` (
  `id_carrier` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_carrier_tax_rules_group_shop` (
  `id_carrier` int(11) UNSIGNED NOT NULL,
  `id_tax_rules_group` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_carrier_zone` (
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_zone` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart` (
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `delivery_option` text NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_address_delivery` int(10) UNSIGNED NOT NULL,
  `id_address_invoice` int(10) UNSIGNED NOT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_guest` int(10) UNSIGNED NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `gift` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `allow_seperated_package` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `checkout_session_data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_cart_rule` (
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_cart_rule` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_product` (
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_address_delivery` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_product_attribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_customization` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_rule` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` text,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `priority` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `partial_use` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `code` varchar(254) NOT NULL,
  `minimum_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `minimum_amount_tax` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount_currency` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `minimum_amount_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `country_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `carrier_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `cart_rule_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shop_restriction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `reduction_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `reduction_tax` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `reduction_currency` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reduction_product` int(10) NOT NULL DEFAULT '0',
  `reduction_exclude_special` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift_product` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gift_product_attribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `highlight` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_rule_carrier` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_carrier` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_rule_combination` (
  `id_cart_rule_1` int(10) UNSIGNED NOT NULL,
  `id_cart_rule_2` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_rule_country` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_rule_group` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_rule_lang` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_rule_product_rule` (
  `id_product_rule` int(10) UNSIGNED NOT NULL,
  `id_product_rule_group` int(10) UNSIGNED NOT NULL,
  `type` enum('products','categories','attributes','manufacturers','suppliers') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_rule_product_rule_group` (
  `id_product_rule_group` int(10) UNSIGNED NOT NULL,
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_rule_product_rule_value` (
  `id_product_rule` int(10) UNSIGNED NOT NULL,
  `id_item` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cart_rule_shop` (
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_category` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_parent` int(10) UNSIGNED NOT NULL,
  `id_shop_default` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `level_depth` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `nleft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nright` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_category_group` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_category_lang` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_category_product` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_category_shop` (
  `id_category` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cms` (
  `id_cms` int(10) UNSIGNED NOT NULL,
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `indexation` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cms_category` (
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `id_parent` int(10) UNSIGNED NOT NULL,
  `level_depth` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cms_category_lang` (
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cms_category_shop` (
  `id_cms_category` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cms_lang` (
  `id_cms` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `meta_title` varchar(255) NOT NULL,
  `head_seo_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cms_role` (
  `id_cms_role` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_cms` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cms_role_lang` (
  `id_cms_role` int(11) UNSIGNED NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_cms_shop` (
  `id_cms` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_condition` (
  `id_condition` int(11) NOT NULL,
  `id_ps_condition` int(11) NOT NULL,
  `type` enum('configuration','install','sql') NOT NULL,
  `request` text,
  `operator` varchar(32) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `result` varchar(64) DEFAULT NULL,
  `calculation_type` enum('hook','time') DEFAULT NULL,
  `calculation_detail` varchar(64) DEFAULT NULL,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_condition_advice` (
  `id_condition` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL,
  `display` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_condition_badge` (
  `id_condition` int(11) NOT NULL,
  `id_badge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_configuration` (
  `id_configuration` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED DEFAULT NULL,
  `id_shop` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(254) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_configuration_kpi` (
  `id_configuration_kpi` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED DEFAULT NULL,
  `id_shop` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_configuration_kpi_lang` (
  `id_configuration_kpi` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_configuration_lang` (
  `id_configuration` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_connections` (
  `id_connections` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_guest` int(10) UNSIGNED NOT NULL,
  `id_page` int(10) UNSIGNED NOT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_connections_page` (
  `id_connections` int(10) UNSIGNED NOT NULL,
  `id_page` int(10) UNSIGNED NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_connections_source` (
  `id_connections_source` int(10) UNSIGNED NOT NULL,
  `id_connections` int(10) UNSIGNED NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_contact` (
  `id_contact` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(2) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_contact_lang` (
  `id_contact` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_contact_shop` (
  `id_contact` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_country` (
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_zone` int(10) UNSIGNED NOT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_country_lang` (
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_country_shop` (
  `id_country` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_currency` (
  `id_currency` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `numeric_iso_code` varchar(3) DEFAULT NULL,
  `precision` int(2) NOT NULL DEFAULT '6',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_currency_lang` (
  `id_currency` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_currency_shop` (
  `id_currency` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_customer` (
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_gender` int(10) UNSIGNED NOT NULL,
  `id_default_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED DEFAULT NULL,
  `id_risk` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `company` varchar(255) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `max_payment_days` int(10) UNSIGNED NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `reset_password_token` varchar(40) DEFAULT NULL,
  `reset_password_validity` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_customer_group` (
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_customer_message` (
  `id_customer_message` int(10) UNSIGNED NOT NULL,
  `id_customer_thread` int(11) DEFAULT NULL,
  `id_employee` int(10) UNSIGNED DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_customer_message_sync_imap` (
  `md5_header` varbinary(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_customer_thread` (
  `id_customer_thread` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_contact` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED DEFAULT NULL,
  `id_order` int(10) UNSIGNED DEFAULT NULL,
  `id_product` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('open','closed','pending1','pending2') NOT NULL DEFAULT 'open',
  `email` varchar(255) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_customization` (
  `id_customization` int(10) UNSIGNED NOT NULL,
  `id_product_attribute` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_address_delivery` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  `in_cart` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_customization_field` (
  `id_customization_field` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `is_module` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_customization_field_lang` (
  `id_customization_field` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_customized_data` (
  `id_customization` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL,
  `id_module` int(10) NOT NULL DEFAULT '0',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_date_range` (
  `id_date_range` int(10) UNSIGNED NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_delivery` (
  `id_delivery` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED DEFAULT NULL,
  `id_shop_group` int(10) UNSIGNED DEFAULT NULL,
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_range_price` int(10) UNSIGNED DEFAULT NULL,
  `id_range_weight` int(10) UNSIGNED DEFAULT NULL,
  `id_zone` int(10) UNSIGNED NOT NULL,
  `price` decimal(20,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_emailsubscription` (
  `id` int(6) NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `id_lang` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_employee` (
  `id_employee` int(10) UNSIGNED NOT NULL,
  `id_profile` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `stats_compare_from` date DEFAULT NULL,
  `stats_compare_to` date DEFAULT NULL,
  `stats_compare_option` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `preselect_date_range` varchar(32) DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `bo_css` varchar(64) DEFAULT NULL,
  `default_tab` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bo_width` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bo_menu` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `optin` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `id_last_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_last_customer_message` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_last_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_connection_date` date DEFAULT NULL,
  `reset_password_token` varchar(40) DEFAULT NULL,
  `reset_password_validity` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_employee_shop` (
  `id_employee` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_feature` (
  `id_feature` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_feature_lang` (
  `id_feature` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_feature_product` (
  `id_feature` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_feature_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_feature_shop` (
  `id_feature` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_feature_value` (
  `id_feature_value` int(10) UNSIGNED NOT NULL,
  `id_feature` int(10) UNSIGNED NOT NULL,
  `custom` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_feature_value_lang` (
  `id_feature_value` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_gender` (
  `id_gender` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_gender_lang` (
  `id_gender` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_group` (
  `id_group` int(10) UNSIGNED NOT NULL,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `show_prices` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_group_lang` (
  `id_group` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_group_reduction` (
  `id_group_reduction` mediumint(8) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `reduction` decimal(4,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_group_shop` (
  `id_group` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_gsitemap_sitemap` (
  `link` varchar(255) DEFAULT NULL,
  `id_shop` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_guest` (
  `id_guest` int(10) UNSIGNED NOT NULL,
  `id_operating_system` int(10) UNSIGNED DEFAULT NULL,
  `id_web_browser` int(10) UNSIGNED DEFAULT NULL,
  `id_customer` int(10) UNSIGNED DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) UNSIGNED DEFAULT NULL,
  `screen_resolution_y` smallint(5) UNSIGNED DEFAULT NULL,
  `screen_color` tinyint(3) UNSIGNED DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_homeslider` (
  `id_homeslider_slides` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_homeslider_slides` (
  `id_homeslider_slides` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_homeslider_slides_lang` (
  `id_homeslider_slides` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `legend` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_hook` (
  `id_hook` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_hook_alias` (
  `id_hook_alias` int(10) UNSIGNED NOT NULL,
  `alias` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_hook_module` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_hook` int(10) UNSIGNED NOT NULL,
  `position` tinyint(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_hook` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_image` (
  `id_image` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `position` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `cover` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_image_lang` (
  `id_image` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `legend` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_image_shop` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_image` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `cover` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_image_type` (
  `id_image_type` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `width` int(10) UNSIGNED NOT NULL,
  `height` int(10) UNSIGNED NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_import_match` (
  `id_import_match` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_info` (
  `id_info` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_info_lang` (
  `id_info` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_info_shop` (
  `id_info` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_lang` (
  `id_lang` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `iso_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `language_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `date_format_lite` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `date_format_full` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `is_rtl` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_lang_shop` (
  `id_lang` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_layered_category` (
  `id_layered_category` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_value` int(10) UNSIGNED DEFAULT '0',
  `type` enum('category','id_feature','id_attribute_group','quantity','condition','manufacturer','weight','price') NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `filter_type` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filter_show_limit` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_filter` (
  `id_layered_filter` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `filters` longtext,
  `n_categories` int(10) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_filter_block` (
  `hash` char(32) NOT NULL DEFAULT '',
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_filter_shop` (
  `id_layered_filter` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_indexable_attribute_group` (
  `id_attribute_group` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_indexable_attribute_group_lang_value` (
  `id_attribute_group` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_indexable_attribute_lang_value` (
  `id_attribute` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_indexable_feature` (
  `id_feature` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_indexable_feature_lang_value` (
  `id_feature` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_indexable_feature_value_lang_value` (
  `id_feature_value` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(128) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_price_index` (
  `id_product` int(11) NOT NULL,
  `id_currency` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `price_min` int(11) NOT NULL,
  `price_max` int(11) NOT NULL,
  `id_country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_layered_product_attribute` (
  `id_attribute` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_attribute_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_linksmenutop` (
  `id_linksmenutop` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `new_window` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_linksmenutop_lang` (
  `id_linksmenutop` int(11) UNSIGNED NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `label` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_link_block` (
  `id_link_block` int(10) UNSIGNED NOT NULL,
  `id_hook` int(1) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_link_block_lang` (
  `id_link_block` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `custom_content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_link_block_shop` (
  `id_link_block` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_log` (
  `id_log` int(10) UNSIGNED NOT NULL,
  `severity` tinyint(1) NOT NULL,
  `error_code` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int(10) UNSIGNED DEFAULT NULL,
  `id_employee` int(10) UNSIGNED DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_mail` (
  `id_mail` int(11) UNSIGNED NOT NULL,
  `recipient` varchar(126) NOT NULL,
  `template` varchar(62) NOT NULL,
  `subject` varchar(254) NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_manufacturer` (
  `id_manufacturer` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_manufacturer_lang` (
  `id_manufacturer` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `description` text,
  `short_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_manufacturer_shop` (
  `id_manufacturer` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_memcached_servers` (
  `id_memcached_server` int(11) UNSIGNED NOT NULL,
  `ip` varchar(254) NOT NULL,
  `port` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_message` (
  `id_message` int(10) UNSIGNED NOT NULL,
  `id_cart` int(10) UNSIGNED DEFAULT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED DEFAULT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_message_readed` (
  `id_message` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_meta` (
  `id_meta` int(10) UNSIGNED NOT NULL,
  `page` varchar(64) NOT NULL,
  `configurable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_meta_lang` (
  `id_meta` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_module` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `version` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_module_access` (
  `id_profile` int(10) UNSIGNED NOT NULL,
  `id_authorization_role` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_module_carrier` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_reference` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_module_country` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_country` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_module_currency` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_currency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_module_group` (
  `id_module` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_group` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_module_history` (
  `id` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_module_preference` (
  `id_module_preference` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `interest` tinyint(1) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_module_shop` (
  `id_module` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `enable_device` tinyint(1) NOT NULL DEFAULT '7'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_operating_system` (
  `id_operating_system` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_orders` (
  `id_order` int(10) UNSIGNED NOT NULL,
  `reference` varchar(9) DEFAULT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL,
  `id_address_delivery` int(10) UNSIGNED NOT NULL,
  `id_address_invoice` int(10) UNSIGNED NOT NULL,
  `current_state` int(10) UNSIGNED NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_number` varchar(64) DEFAULT NULL,
  `total_discounts` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_real` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `round_mode` tinyint(1) NOT NULL DEFAULT '2',
  `round_type` tinyint(1) NOT NULL DEFAULT '1',
  `invoice_number` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `delivery_number` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_carrier` (
  `id_order_carrier` int(11) NOT NULL,
  `id_order` int(11) UNSIGNED NOT NULL,
  `id_carrier` int(11) UNSIGNED NOT NULL,
  `id_order_invoice` int(11) UNSIGNED DEFAULT NULL,
  `weight` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_excl` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_incl` decimal(20,6) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_cart_rule` (
  `id_order_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_cart_rule` int(10) UNSIGNED NOT NULL,
  `id_order_invoice` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `value_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_detail` (
  `id_order_detail` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_order_invoice` int(11) DEFAULT NULL,
  `id_warehouse` int(10) UNSIGNED DEFAULT '0',
  `id_shop` int(11) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_attribute_id` int(10) UNSIGNED DEFAULT NULL,
  `id_customization` int(10) UNSIGNED DEFAULT '0',
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_isbn` varchar(32) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(64) DEFAULT NULL,
  `product_supplier_reference` varchar(64) DEFAULT NULL,
  `product_weight` decimal(20,6) NOT NULL,
  `id_tax_rules_group` int(11) UNSIGNED DEFAULT '0',
  `tax_computation_method` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) UNSIGNED DEFAULT '0',
  `download_deadline` datetime DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `purchase_supplier_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_detail_tax` (
  `id_order_detail` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_history` (
  `id_order_history` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_order_state` int(10) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_invoice` (
  `id_order_invoice` int(11) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `delivery_number` int(11) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_discount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shipping_tax_computation_method` int(10) UNSIGNED NOT NULL,
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shop_address` text,
  `note` text,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_invoice_payment` (
  `id_order_invoice` int(11) UNSIGNED NOT NULL,
  `id_order_payment` int(11) UNSIGNED NOT NULL,
  `id_order` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_invoice_tax` (
  `id_order_invoice` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `amount` decimal(10,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_message` (
  `id_order_message` int(10) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_message_lang` (
  `id_order_message` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_payment` (
  `id_order_payment` int(11) NOT NULL,
  `order_reference` varchar(9) DEFAULT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_return` (
  `id_order_return` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_return_detail` (
  `id_order_return` int(10) UNSIGNED NOT NULL,
  `id_order_detail` int(10) UNSIGNED NOT NULL,
  `id_customization` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_quantity` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_return_state` (
  `id_order_return_state` int(10) UNSIGNED NOT NULL,
  `color` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_return_state_lang` (
  `id_order_return_state` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_slip` (
  `id_order_slip` int(10) UNSIGNED NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `total_products_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_products_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_incl` decimal(20,6) DEFAULT NULL,
  `shipping_cost` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `shipping_cost_amount` decimal(10,2) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `order_slip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_slip_detail` (
  `id_order_slip` int(10) UNSIGNED NOT NULL,
  `id_order_detail` int(10) UNSIGNED NOT NULL,
  `product_quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unit_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `unit_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `amount_tax_excl` decimal(20,6) DEFAULT NULL,
  `amount_tax_incl` decimal(20,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_slip_detail_tax` (
  `id_order_slip_detail` int(11) UNSIGNED NOT NULL,
  `id_tax` int(11) UNSIGNED NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_state` (
  `id_order_state` int(10) UNSIGNED NOT NULL,
  `invoice` tinyint(1) UNSIGNED DEFAULT '0',
  `send_email` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) UNSIGNED NOT NULL,
  `hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `shipped` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `paid` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pdf_invoice` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pdf_delivery` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_order_state_lang` (
  `id_order_state` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_pack` (
  `id_product_pack` int(10) UNSIGNED NOT NULL,
  `id_product_item` int(10) UNSIGNED NOT NULL,
  `id_product_attribute_item` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_page` (
  `id_page` int(10) UNSIGNED NOT NULL,
  `id_page_type` int(10) UNSIGNED NOT NULL,
  `id_object` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_pagenotfound` (
  `id_pagenotfound` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_page_type` (
  `id_page_type` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_page_viewed` (
  `id_page` int(10) UNSIGNED NOT NULL,
  `id_shop_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_date_range` int(10) UNSIGNED NOT NULL,
  `counter` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(10) UNSIGNED DEFAULT NULL,
  `id_manufacturer` int(10) UNSIGNED DEFAULT NULL,
  `id_category_default` int(10) UNSIGNED DEFAULT NULL,
  `id_shop_default` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_tax_rules_group` int(11) UNSIGNED NOT NULL,
  `on_sale` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `online_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `isbn` varchar(32) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(64) DEFAULT NULL,
  `supplier_reference` varchar(64) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `additional_delivery_times` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301-product','302-product','301-category','302-category') NOT NULL DEFAULT '',
  `id_type_redirected` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date DEFAULT NULL,
  `show_condition` tinyint(1) NOT NULL DEFAULT '0',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int(10) UNSIGNED DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `pack_stock_type` int(11) UNSIGNED NOT NULL DEFAULT '3',
  `state` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_attachment` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_attachment` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_attribute` (
  `id_product_attribute` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `reference` varchar(64) DEFAULT NULL,
  `supplier_reference` varchar(64) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `isbn` varchar(32) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint(1) UNSIGNED DEFAULT NULL,
  `minimal_quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `available_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_attribute_combination` (
  `id_attribute` int(10) UNSIGNED NOT NULL,
  `id_product_attribute` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_attribute_image` (
  `id_product_attribute` int(10) UNSIGNED NOT NULL,
  `id_image` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_attribute_shop` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_product_attribute` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint(1) UNSIGNED DEFAULT NULL,
  `minimal_quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `available_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_carrier` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_carrier_reference` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_country_tax` (
  `id_product` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_download` (
  `id_product_download` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) UNSIGNED DEFAULT NULL,
  `nb_downloadable` int(10) UNSIGNED DEFAULT '1',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `is_shareable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_group_reduction_cache` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL,
  `reduction` decimal(4,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_lang` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(512) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  `delivery_in_stock` varchar(255) DEFAULT NULL,
  `delivery_out_stock` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_sale` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sale_nbr` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_upd` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_shop` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `id_category_default` int(10) UNSIGNED DEFAULT NULL,
  `id_tax_rules_group` int(11) UNSIGNED NOT NULL,
  `on_sale` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `online_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `low_stock_threshold` int(10) DEFAULT NULL,
  `low_stock_alert` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301-product','302-product','301-category','302-category') NOT NULL DEFAULT '',
  `id_type_redirected` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date DEFAULT NULL,
  `show_condition` tinyint(1) NOT NULL DEFAULT '1',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int(10) UNSIGNED DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `pack_stock_type` int(11) UNSIGNED NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_supplier` (
  `id_product_supplier` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_product_attribute` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `id_supplier` int(11) UNSIGNED NOT NULL,
  `product_supplier_reference` varchar(64) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_product_tag` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_tag` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_profile` (
  `id_profile` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_profile_lang` (
  `id_lang` int(10) UNSIGNED NOT NULL,
  `id_profile` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_psgdpr_consent` (
  `id_gdpr_consent` int(10) UNSIGNED NOT NULL,
  `id_module` int(10) UNSIGNED NOT NULL,
  `active` int(10) NOT NULL,
  `error` int(10) DEFAULT NULL,
  `error_message` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_psgdpr_consent_lang` (
  `id_gdpr_consent` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `message` text,
  `id_shop` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_psgdpr_log` (
  `id_gdpr_log` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED DEFAULT NULL,
  `id_guest` int(10) UNSIGNED DEFAULT NULL,
  `client_name` varchar(250) DEFAULT NULL,
  `id_module` int(10) UNSIGNED NOT NULL,
  `request_type` int(10) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_quick_access` (
  `id_quick_access` int(10) UNSIGNED NOT NULL,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_quick_access_lang` (
  `id_quick_access` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_range_price` (
  `id_range_price` int(10) UNSIGNED NOT NULL,
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_range_weight` (
  `id_range_weight` int(10) UNSIGNED NOT NULL,
  `id_carrier` int(10) UNSIGNED NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_reassurance` (
  `id_reassurance` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_reassurance_lang` (
  `id_reassurance` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `text` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_referrer` (
  `id_referrer` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_referrer_cache` (
  `id_connections_source` int(11) UNSIGNED NOT NULL,
  `id_referrer` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_referrer_shop` (
  `id_referrer` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_request_sql` (
  `id_request_sql` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sql` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_required_field` (
  `id_required_field` int(11) NOT NULL,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_risk` (
  `id_risk` int(11) UNSIGNED NOT NULL,
  `percent` tinyint(3) NOT NULL,
  `color` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_risk_lang` (
  `id_risk` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_search_engine` (
  `id_search_engine` int(10) UNSIGNED NOT NULL,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_search_index` (
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_word` int(11) UNSIGNED NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_search_word` (
  `id_word` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_lang` int(10) UNSIGNED NOT NULL,
  `word` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_sekeyword` (
  `id_sekeyword` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_shop` (
  `id_shop` int(11) NOT NULL,
  `id_shop_group` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_shop_group` (
  `id_shop_group` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `share_customer` tinyint(1) NOT NULL,
  `share_order` tinyint(1) NOT NULL,
  `share_stock` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_shop_url` (
  `id_shop_url` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `domain` varchar(150) NOT NULL,
  `domain_ssl` varchar(150) NOT NULL,
  `physical_uri` varchar(64) NOT NULL,
  `virtual_uri` varchar(64) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_smarty_cache` (
  `id_smarty_cache` char(40) NOT NULL,
  `name` char(40) NOT NULL,
  `cache_id` varchar(254) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_smarty_last_flush` (
  `type` enum('compile','template') NOT NULL,
  `last_flush` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_smarty_lazy_cache` (
  `template_hash` varchar(32) NOT NULL DEFAULT '',
  `cache_id` varchar(255) NOT NULL DEFAULT '',
  `compile_id` varchar(32) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_specific_price` (
  `id_specific_price` int(10) UNSIGNED NOT NULL,
  `id_specific_price_rule` int(11) UNSIGNED NOT NULL,
  `id_cart` int(11) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop_group` int(11) UNSIGNED NOT NULL,
  `id_currency` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_product_attribute` int(10) UNSIGNED NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` mediumint(8) UNSIGNED NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_specific_price_priority` (
  `id_specific_price_priority` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `priority` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_specific_price_rule` (
  `id_specific_price_rule` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `id_currency` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_group` int(10) UNSIGNED NOT NULL,
  `from_quantity` mediumint(8) UNSIGNED NOT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_specific_price_rule_condition` (
  `id_specific_price_rule_condition` int(11) UNSIGNED NOT NULL,
  `id_specific_price_rule_condition_group` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_specific_price_rule_condition_group` (
  `id_specific_price_rule_condition_group` int(11) UNSIGNED NOT NULL,
  `id_specific_price_rule` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_state` (
  `id_state` int(10) UNSIGNED NOT NULL,
  `id_country` int(11) UNSIGNED NOT NULL,
  `id_zone` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(7) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_statssearch` (
  `id_statssearch` int(10) UNSIGNED NOT NULL,
  `id_shop` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `id_shop_group` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_stock` (
  `id_stock` int(11) UNSIGNED NOT NULL,
  `id_warehouse` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_product_attribute` int(11) UNSIGNED NOT NULL,
  `reference` varchar(64) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `isbn` varchar(32) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `physical_quantity` int(11) UNSIGNED NOT NULL,
  `usable_quantity` int(11) UNSIGNED NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_stock_available` (
  `id_stock_available` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_product_attribute` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL,
  `id_shop_group` int(11) UNSIGNED NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT '0',
  `physical_quantity` int(11) NOT NULL DEFAULT '0',
  `reserved_quantity` int(11) NOT NULL DEFAULT '0',
  `depends_on_stock` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `out_of_stock` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `location` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_stock_mvt` (
  `id_stock_mvt` bigint(20) NOT NULL,
  `id_stock` int(11) NOT NULL,
  `id_order` int(11) DEFAULT NULL,
  `id_supply_order` int(11) DEFAULT NULL,
  `id_stock_mvt_reason` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `employee_lastname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_firstname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physical_quantity` int(11) NOT NULL,
  `date_add` datetime NOT NULL,
  `sign` smallint(6) NOT NULL DEFAULT '1',
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `last_wa` decimal(20,6) DEFAULT '0.000000',
  `current_wa` decimal(20,6) DEFAULT '0.000000',
  `referer` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_stock_mvt_reason` (
  `id_stock_mvt_reason` int(11) UNSIGNED NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int(11) UNSIGNED NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_store` (
  `id_store` int(10) UNSIGNED NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `id_state` int(10) UNSIGNED DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` decimal(13,8) DEFAULT NULL,
  `longitude` decimal(13,8) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_store_lang` (
  `id_store` int(11) UNSIGNED NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `hours` text,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_store_shop` (
  `id_store` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_supplier_lang` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_supplier_shop` (
  `id_supplier` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_supply_order` (
  `id_supply_order` int(11) UNSIGNED NOT NULL,
  `id_supplier` int(11) UNSIGNED NOT NULL,
  `supplier_name` varchar(64) NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `id_warehouse` int(11) UNSIGNED NOT NULL,
  `id_supply_order_state` int(11) UNSIGNED NOT NULL,
  `id_currency` int(11) UNSIGNED NOT NULL,
  `id_ref_currency` int(11) UNSIGNED NOT NULL,
  `reference` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `date_delivery_expected` datetime DEFAULT NULL,
  `total_te` decimal(20,6) DEFAULT '0.000000',
  `total_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `total_tax` decimal(20,6) DEFAULT '0.000000',
  `total_ti` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `is_template` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_supply_order_detail` (
  `id_supply_order_detail` int(11) UNSIGNED NOT NULL,
  `id_supply_order` int(11) UNSIGNED NOT NULL,
  `id_currency` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_product_attribute` int(11) UNSIGNED NOT NULL,
  `reference` varchar(64) NOT NULL,
  `supplier_reference` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `isbn` varchar(32) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `exchange_rate` decimal(20,6) DEFAULT '0.000000',
  `unit_price_te` decimal(20,6) DEFAULT '0.000000',
  `quantity_expected` int(11) UNSIGNED NOT NULL,
  `quantity_received` int(11) UNSIGNED NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `price_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `tax_rate` decimal(20,6) DEFAULT '0.000000',
  `tax_value` decimal(20,6) DEFAULT '0.000000',
  `price_ti` decimal(20,6) DEFAULT '0.000000',
  `tax_value_with_order_discount` decimal(20,6) DEFAULT '0.000000',
  `price_with_order_discount_te` decimal(20,6) DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_supply_order_history` (
  `id_supply_order_history` int(11) UNSIGNED NOT NULL,
  `id_supply_order` int(11) UNSIGNED NOT NULL,
  `id_employee` int(11) UNSIGNED NOT NULL,
  `employee_lastname` varchar(255) DEFAULT '',
  `employee_firstname` varchar(255) DEFAULT '',
  `id_state` int(11) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_supply_order_receipt_history` (
  `id_supply_order_receipt_history` int(11) UNSIGNED NOT NULL,
  `id_supply_order_detail` int(11) UNSIGNED NOT NULL,
  `id_employee` int(11) UNSIGNED NOT NULL,
  `employee_lastname` varchar(255) DEFAULT '',
  `employee_firstname` varchar(255) DEFAULT '',
  `id_supply_order_state` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_supply_order_state` (
  `id_supply_order_state` int(11) UNSIGNED NOT NULL,
  `delivery_note` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `receipt_state` tinyint(1) NOT NULL DEFAULT '0',
  `pending_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enclosed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_supply_order_state_lang` (
  `id_supply_order_state` int(11) UNSIGNED NOT NULL,
  `id_lang` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_tab` (
  `id_tab` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `module` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `hide_host_mode` tinyint(1) NOT NULL,
  `icon` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_tab_advice` (
  `id_tab` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_tab_lang` (
  `id_tab` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_tab_module_preference` (
  `id_tab_module_preference` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_tag` (
  `id_tag` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_tag_count` (
  `id_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_tag` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_lang` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_shop` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `counter` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_tax` (
  `id_tax` int(10) UNSIGNED NOT NULL,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_tax_lang` (
  `id_tax` int(10) UNSIGNED NOT NULL,
  `id_lang` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_tax_rule` (
  `id_tax_rule` int(11) NOT NULL,
  `id_tax_rules_group` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `zipcode_from` varchar(12) NOT NULL,
  `zipcode_to` varchar(12) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `behavior` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_tax_rules_group` (
  `id_tax_rules_group` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_tax_rules_group_shop` (
  `id_tax_rules_group` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_timezone` (
  `id_timezone` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_translation` (
  `id_translation` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `translation` text COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `SN6VS_warehouse` (
  `id_warehouse` int(11) UNSIGNED NOT NULL,
  `id_currency` int(11) UNSIGNED NOT NULL,
  `id_address` int(11) UNSIGNED NOT NULL,
  `id_employee` int(11) UNSIGNED NOT NULL,
  `reference` varchar(64) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `management_type` enum('WA','FIFO','LIFO') NOT NULL DEFAULT 'WA',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_warehouse_carrier` (
  `id_carrier` int(11) UNSIGNED NOT NULL,
  `id_warehouse` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_warehouse_product_location` (
  `id_warehouse_product_location` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `id_product_attribute` int(11) UNSIGNED NOT NULL,
  `id_warehouse` int(11) UNSIGNED NOT NULL,
  `location` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_warehouse_shop` (
  `id_shop` int(11) UNSIGNED NOT NULL,
  `id_warehouse` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_webservice_account` (
  `id_webservice_account` int(11) NOT NULL,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint(2) NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_webservice_account_shop` (
  `id_webservice_account` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_webservice_permission` (
  `id_webservice_permission` int(11) NOT NULL,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_web_browser` (
  `id_web_browser` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_zone` (
  `id_zone` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SN6VS_zone_shop` (
  `id_zone` int(11) UNSIGNED NOT NULL,
  `id_shop` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `SN6VS_access`
  ADD PRIMARY KEY (`id_profile`,`id_authorization_role`);

ALTER TABLE `SN6VS_accessory`
  ADD KEY `accessory_product` (`id_product_1`,`id_product_2`);

ALTER TABLE `SN6VS_address`
  ADD PRIMARY KEY (`id_address`),
  ADD KEY `address_customer` (`id_customer`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `id_state` (`id_state`),
  ADD KEY `id_manufacturer` (`id_manufacturer`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_warehouse` (`id_warehouse`);

ALTER TABLE `SN6VS_address_format`
  ADD PRIMARY KEY (`id_country`);

ALTER TABLE `SN6VS_admin_filter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_filter_search_id_idx` (`employee`,`shop`,`controller`,`action`,`filter_id`);

ALTER TABLE `SN6VS_advice`
  ADD PRIMARY KEY (`id_advice`);

ALTER TABLE `SN6VS_advice_lang`
  ADD PRIMARY KEY (`id_advice`,`id_lang`);

ALTER TABLE `SN6VS_alias`
  ADD PRIMARY KEY (`id_alias`),
  ADD UNIQUE KEY `alias` (`alias`);

ALTER TABLE `SN6VS_attachment`
  ADD PRIMARY KEY (`id_attachment`);

ALTER TABLE `SN6VS_attachment_lang`
  ADD PRIMARY KEY (`id_attachment`,`id_lang`);

ALTER TABLE `SN6VS_attribute`
  ADD PRIMARY KEY (`id_attribute`),
  ADD KEY `attribute_group` (`id_attribute_group`);

ALTER TABLE `SN6VS_attribute_group`
  ADD PRIMARY KEY (`id_attribute_group`);

ALTER TABLE `SN6VS_attribute_group_lang`
  ADD PRIMARY KEY (`id_attribute_group`,`id_lang`),
  ADD KEY `IDX_5720E8067A664FB` (`id_attribute_group`),
  ADD KEY `IDX_5720E80BA299860` (`id_lang`);

ALTER TABLE `SN6VS_attribute_group_shop`
  ADD PRIMARY KEY (`id_attribute_group`,`id_shop`),
  ADD KEY `IDX_9811C64067A664FB` (`id_attribute_group`),
  ADD KEY `IDX_9811C640274A50A0` (`id_shop`);

ALTER TABLE `SN6VS_attribute_impact`
  ADD PRIMARY KEY (`id_attribute_impact`),
  ADD UNIQUE KEY `id_product` (`id_product`,`id_attribute`);

ALTER TABLE `SN6VS_attribute_lang`
  ADD PRIMARY KEY (`id_attribute`,`id_lang`),
  ADD KEY `IDX_8AFF207D7A4F53DC` (`id_attribute`),
  ADD KEY `IDX_8AFF207DBA299860` (`id_lang`);

ALTER TABLE `SN6VS_attribute_shop`
  ADD PRIMARY KEY (`id_attribute`,`id_shop`),
  ADD KEY `IDX_179CE8BD7A4F53DC` (`id_attribute`),
  ADD KEY `IDX_179CE8BD274A50A0` (`id_shop`);

ALTER TABLE `SN6VS_authorization_role`
  ADD PRIMARY KEY (`id_authorization_role`),
  ADD UNIQUE KEY `slug` (`slug`);

ALTER TABLE `SN6VS_badge`
  ADD PRIMARY KEY (`id_badge`);

ALTER TABLE `SN6VS_badge_lang`
  ADD PRIMARY KEY (`id_badge`,`id_lang`);

ALTER TABLE `SN6VS_carrier`
  ADD PRIMARY KEY (`id_carrier`),
  ADD KEY `deleted` (`deleted`,`active`),
  ADD KEY `id_tax_rules_group` (`id_tax_rules_group`),
  ADD KEY `reference` (`id_reference`,`deleted`,`active`);

ALTER TABLE `SN6VS_carrier_group`
  ADD PRIMARY KEY (`id_carrier`,`id_group`);

ALTER TABLE `SN6VS_carrier_lang`
  ADD PRIMARY KEY (`id_lang`,`id_shop`,`id_carrier`);

ALTER TABLE `SN6VS_carrier_shop`
  ADD PRIMARY KEY (`id_carrier`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_carrier_tax_rules_group_shop`
  ADD PRIMARY KEY (`id_carrier`,`id_tax_rules_group`,`id_shop`);

ALTER TABLE `SN6VS_carrier_zone`
  ADD PRIMARY KEY (`id_carrier`,`id_zone`);

ALTER TABLE `SN6VS_cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `cart_customer` (`id_customer`),
  ADD KEY `id_address_delivery` (`id_address_delivery`),
  ADD KEY `id_address_invoice` (`id_address_invoice`),
  ADD KEY `id_carrier` (`id_carrier`),
  ADD KEY `id_lang` (`id_lang`),
  ADD KEY `id_currency` (`id_currency`),
  ADD KEY `id_guest` (`id_guest`),
  ADD KEY `id_shop_group` (`id_shop_group`),
  ADD KEY `id_shop_2` (`id_shop`,`date_upd`),
  ADD KEY `id_shop` (`id_shop`,`date_add`);

ALTER TABLE `SN6VS_cart_cart_rule`
  ADD PRIMARY KEY (`id_cart`,`id_cart_rule`),
  ADD KEY `id_cart_rule` (`id_cart_rule`);

ALTER TABLE `SN6VS_cart_product`
  ADD PRIMARY KEY (`id_cart`,`id_product`,`id_product_attribute`,`id_customization`,`id_address_delivery`),
  ADD KEY `id_product_attribute` (`id_product_attribute`),
  ADD KEY `id_cart_order` (`id_cart`,`date_add`,`id_product`,`id_product_attribute`);

ALTER TABLE `SN6VS_cart_rule`
  ADD PRIMARY KEY (`id_cart_rule`),
  ADD KEY `id_customer` (`id_customer`,`active`,`date_to`),
  ADD KEY `group_restriction` (`group_restriction`,`active`,`date_to`),
  ADD KEY `id_customer_2` (`id_customer`,`active`,`highlight`,`date_to`),
  ADD KEY `group_restriction_2` (`group_restriction`,`active`,`highlight`,`date_to`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `date_to` (`date_to`);

ALTER TABLE `SN6VS_cart_rule_carrier`
  ADD PRIMARY KEY (`id_cart_rule`,`id_carrier`);

ALTER TABLE `SN6VS_cart_rule_combination`
  ADD PRIMARY KEY (`id_cart_rule_1`,`id_cart_rule_2`),
  ADD KEY `id_cart_rule_1` (`id_cart_rule_1`),
  ADD KEY `id_cart_rule_2` (`id_cart_rule_2`);

ALTER TABLE `SN6VS_cart_rule_country`
  ADD PRIMARY KEY (`id_cart_rule`,`id_country`);

ALTER TABLE `SN6VS_cart_rule_group`
  ADD PRIMARY KEY (`id_cart_rule`,`id_group`);

ALTER TABLE `SN6VS_cart_rule_lang`
  ADD PRIMARY KEY (`id_cart_rule`,`id_lang`);

ALTER TABLE `SN6VS_cart_rule_product_rule`
  ADD PRIMARY KEY (`id_product_rule`);

ALTER TABLE `SN6VS_cart_rule_product_rule_group`
  ADD PRIMARY KEY (`id_product_rule_group`);

ALTER TABLE `SN6VS_cart_rule_product_rule_value`
  ADD PRIMARY KEY (`id_product_rule`,`id_item`);

ALTER TABLE `SN6VS_cart_rule_shop`
  ADD PRIMARY KEY (`id_cart_rule`,`id_shop`);

ALTER TABLE `SN6VS_category`
  ADD PRIMARY KEY (`id_category`),
  ADD KEY `category_parent` (`id_parent`),
  ADD KEY `nleftrightactive` (`nleft`,`nright`,`active`),
  ADD KEY `level_depth` (`level_depth`),
  ADD KEY `nright` (`nright`),
  ADD KEY `activenleft` (`active`,`nleft`),
  ADD KEY `activenright` (`active`,`nright`);

ALTER TABLE `SN6VS_category_group`
  ADD PRIMARY KEY (`id_category`,`id_group`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_group` (`id_group`);

ALTER TABLE `SN6VS_category_lang`
  ADD PRIMARY KEY (`id_category`,`id_shop`,`id_lang`),
  ADD KEY `category_name` (`name`);

ALTER TABLE `SN6VS_category_product`
  ADD PRIMARY KEY (`id_category`,`id_product`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_category` (`id_category`,`position`);

ALTER TABLE `SN6VS_category_shop`
  ADD PRIMARY KEY (`id_category`,`id_shop`);

ALTER TABLE `SN6VS_cms`
  ADD PRIMARY KEY (`id_cms`);

ALTER TABLE `SN6VS_cms_category`
  ADD PRIMARY KEY (`id_cms_category`),
  ADD KEY `category_parent` (`id_parent`);

ALTER TABLE `SN6VS_cms_category_lang`
  ADD PRIMARY KEY (`id_cms_category`,`id_shop`,`id_lang`),
  ADD KEY `category_name` (`name`);

ALTER TABLE `SN6VS_cms_category_shop`
  ADD PRIMARY KEY (`id_cms_category`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_cms_lang`
  ADD PRIMARY KEY (`id_cms`,`id_shop`,`id_lang`);

ALTER TABLE `SN6VS_cms_role`
  ADD PRIMARY KEY (`id_cms_role`,`id_cms`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `SN6VS_cms_role_lang`
  ADD PRIMARY KEY (`id_cms_role`,`id_lang`,`id_shop`);

ALTER TABLE `SN6VS_cms_shop`
  ADD PRIMARY KEY (`id_cms`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_condition`
  ADD PRIMARY KEY (`id_condition`,`id_ps_condition`);

ALTER TABLE `SN6VS_condition_advice`
  ADD PRIMARY KEY (`id_condition`,`id_advice`);

ALTER TABLE `SN6VS_condition_badge`
  ADD PRIMARY KEY (`id_condition`,`id_badge`);

ALTER TABLE `SN6VS_configuration`
  ADD PRIMARY KEY (`id_configuration`),
  ADD KEY `name` (`name`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_shop_group` (`id_shop_group`);

ALTER TABLE `SN6VS_configuration_kpi`
  ADD PRIMARY KEY (`id_configuration_kpi`),
  ADD KEY `name` (`name`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_shop_group` (`id_shop_group`);

ALTER TABLE `SN6VS_configuration_kpi_lang`
  ADD PRIMARY KEY (`id_configuration_kpi`,`id_lang`);

ALTER TABLE `SN6VS_configuration_lang`
  ADD PRIMARY KEY (`id_configuration`,`id_lang`);

ALTER TABLE `SN6VS_connections`
  ADD PRIMARY KEY (`id_connections`),
  ADD KEY `id_guest` (`id_guest`),
  ADD KEY `date_add` (`date_add`),
  ADD KEY `id_page` (`id_page`);

ALTER TABLE `SN6VS_connections_page`
  ADD PRIMARY KEY (`id_connections`,`id_page`,`time_start`);

ALTER TABLE `SN6VS_connections_source`
  ADD PRIMARY KEY (`id_connections_source`),
  ADD KEY `connections` (`id_connections`),
  ADD KEY `orderby` (`date_add`),
  ADD KEY `http_referer` (`http_referer`),
  ADD KEY `request_uri` (`request_uri`);

ALTER TABLE `SN6VS_contact`
  ADD PRIMARY KEY (`id_contact`);

ALTER TABLE `SN6VS_contact_lang`
  ADD PRIMARY KEY (`id_contact`,`id_lang`);

ALTER TABLE `SN6VS_contact_shop`
  ADD PRIMARY KEY (`id_contact`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_country`
  ADD PRIMARY KEY (`id_country`),
  ADD KEY `country_iso_code` (`iso_code`),
  ADD KEY `country_` (`id_zone`);

ALTER TABLE `SN6VS_country_lang`
  ADD PRIMARY KEY (`id_country`,`id_lang`);

ALTER TABLE `SN6VS_country_shop`
  ADD PRIMARY KEY (`id_country`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_currency`
  ADD PRIMARY KEY (`id_currency`),
  ADD KEY `currency_iso_code` (`iso_code`);

ALTER TABLE `SN6VS_currency_lang`
  ADD PRIMARY KEY (`id_currency`,`id_lang`);

ALTER TABLE `SN6VS_currency_shop`
  ADD PRIMARY KEY (`id_currency`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `customer_email` (`email`),
  ADD KEY `customer_login` (`email`,`passwd`),
  ADD KEY `id_customer_passwd` (`id_customer`,`passwd`),
  ADD KEY `id_gender` (`id_gender`),
  ADD KEY `id_shop_group` (`id_shop_group`),
  ADD KEY `id_shop` (`id_shop`,`date_add`);

ALTER TABLE `SN6VS_customer_group`
  ADD PRIMARY KEY (`id_customer`,`id_group`),
  ADD KEY `customer_login` (`id_group`),
  ADD KEY `id_customer` (`id_customer`);

ALTER TABLE `SN6VS_customer_message`
  ADD PRIMARY KEY (`id_customer_message`),
  ADD KEY `id_customer_thread` (`id_customer_thread`),
  ADD KEY `id_employee` (`id_employee`);

ALTER TABLE `SN6VS_customer_message_sync_imap`
  ADD KEY `md5_header_index` (`md5_header`(4));

ALTER TABLE `SN6VS_customer_thread`
  ADD PRIMARY KEY (`id_customer_thread`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_lang` (`id_lang`),
  ADD KEY `id_contact` (`id_contact`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

ALTER TABLE `SN6VS_customization`
  ADD PRIMARY KEY (`id_customization`,`id_cart`,`id_product`,`id_address_delivery`),
  ADD KEY `id_product_attribute` (`id_product_attribute`),
  ADD KEY `id_cart_product` (`id_cart`,`id_product`,`id_product_attribute`);

ALTER TABLE `SN6VS_customization_field`
  ADD PRIMARY KEY (`id_customization_field`),
  ADD KEY `id_product` (`id_product`);

ALTER TABLE `SN6VS_customization_field_lang`
  ADD PRIMARY KEY (`id_customization_field`,`id_lang`,`id_shop`);

ALTER TABLE `SN6VS_customized_data`
  ADD PRIMARY KEY (`id_customization`,`type`,`index`);

ALTER TABLE `SN6VS_date_range`
  ADD PRIMARY KEY (`id_date_range`);

ALTER TABLE `SN6VS_delivery`
  ADD PRIMARY KEY (`id_delivery`),
  ADD KEY `id_zone` (`id_zone`),
  ADD KEY `id_carrier` (`id_carrier`,`id_zone`),
  ADD KEY `id_range_price` (`id_range_price`),
  ADD KEY `id_range_weight` (`id_range_weight`);

ALTER TABLE `SN6VS_emailsubscription`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `SN6VS_employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `employee_login` (`email`,`passwd`),
  ADD KEY `id_employee_passwd` (`id_employee`,`passwd`),
  ADD KEY `id_profile` (`id_profile`);

ALTER TABLE `SN6VS_employee_shop`
  ADD PRIMARY KEY (`id_employee`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_feature`
  ADD PRIMARY KEY (`id_feature`);

ALTER TABLE `SN6VS_feature_lang`
  ADD PRIMARY KEY (`id_feature`,`id_lang`),
  ADD KEY `id_lang` (`id_lang`,`name`);

ALTER TABLE `SN6VS_feature_product`
  ADD PRIMARY KEY (`id_feature`,`id_product`,`id_feature_value`),
  ADD KEY `id_feature_value` (`id_feature_value`),
  ADD KEY `id_product` (`id_product`);

ALTER TABLE `SN6VS_feature_shop`
  ADD PRIMARY KEY (`id_feature`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_feature_value`
  ADD PRIMARY KEY (`id_feature_value`),
  ADD KEY `feature` (`id_feature`);

ALTER TABLE `SN6VS_feature_value_lang`
  ADD PRIMARY KEY (`id_feature_value`,`id_lang`);

ALTER TABLE `SN6VS_gender`
  ADD PRIMARY KEY (`id_gender`);

ALTER TABLE `SN6VS_gender_lang`
  ADD PRIMARY KEY (`id_gender`,`id_lang`),
  ADD KEY `id_gender` (`id_gender`);

ALTER TABLE `SN6VS_group`
  ADD PRIMARY KEY (`id_group`);

ALTER TABLE `SN6VS_group_lang`
  ADD PRIMARY KEY (`id_group`,`id_lang`);

ALTER TABLE `SN6VS_group_reduction`
  ADD PRIMARY KEY (`id_group_reduction`),
  ADD UNIQUE KEY `id_group` (`id_group`,`id_category`);

ALTER TABLE `SN6VS_group_shop`
  ADD PRIMARY KEY (`id_group`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_guest`
  ADD PRIMARY KEY (`id_guest`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_operating_system` (`id_operating_system`),
  ADD KEY `id_web_browser` (`id_web_browser`);

ALTER TABLE `SN6VS_homeslider`
  ADD PRIMARY KEY (`id_homeslider_slides`,`id_shop`);

ALTER TABLE `SN6VS_homeslider_slides`
  ADD PRIMARY KEY (`id_homeslider_slides`);

ALTER TABLE `SN6VS_homeslider_slides_lang`
  ADD PRIMARY KEY (`id_homeslider_slides`,`id_lang`);

ALTER TABLE `SN6VS_hook`
  ADD PRIMARY KEY (`id_hook`),
  ADD UNIQUE KEY `hook_name` (`name`);

ALTER TABLE `SN6VS_hook_alias`
  ADD PRIMARY KEY (`id_hook_alias`),
  ADD UNIQUE KEY `alias` (`alias`);

ALTER TABLE `SN6VS_hook_module`
  ADD PRIMARY KEY (`id_module`,`id_hook`,`id_shop`),
  ADD KEY `id_hook` (`id_hook`),
  ADD KEY `id_module` (`id_module`),
  ADD KEY `position` (`id_shop`,`position`);

ALTER TABLE `SN6VS_hook_module_exceptions`
  ADD PRIMARY KEY (`id_hook_module_exceptions`),
  ADD KEY `id_module` (`id_module`),
  ADD KEY `id_hook` (`id_hook`);

ALTER TABLE `SN6VS_image`
  ADD PRIMARY KEY (`id_image`),
  ADD UNIQUE KEY `id_product_cover` (`id_product`,`cover`),
  ADD UNIQUE KEY `idx_product_image` (`id_image`,`id_product`,`cover`),
  ADD KEY `image_product` (`id_product`);

ALTER TABLE `SN6VS_image_lang`
  ADD PRIMARY KEY (`id_image`,`id_lang`),
  ADD KEY `id_image` (`id_image`);

ALTER TABLE `SN6VS_image_shop`
  ADD PRIMARY KEY (`id_image`,`id_shop`),
  ADD UNIQUE KEY `id_product` (`id_product`,`id_shop`,`cover`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_image_type`
  ADD PRIMARY KEY (`id_image_type`),
  ADD KEY `image_type_name` (`name`);

ALTER TABLE `SN6VS_import_match`
  ADD PRIMARY KEY (`id_import_match`);

ALTER TABLE `SN6VS_info`
  ADD PRIMARY KEY (`id_info`);

ALTER TABLE `SN6VS_info_lang`
  ADD PRIMARY KEY (`id_info`,`id_lang`,`id_shop`);

ALTER TABLE `SN6VS_info_shop`
  ADD PRIMARY KEY (`id_info`,`id_shop`);

ALTER TABLE `SN6VS_lang`
  ADD PRIMARY KEY (`id_lang`);

ALTER TABLE `SN6VS_lang_shop`
  ADD PRIMARY KEY (`id_lang`,`id_shop`),
  ADD KEY `IDX_58173C43BA299860` (`id_lang`),
  ADD KEY `IDX_58173C43274A50A0` (`id_shop`);

ALTER TABLE `SN6VS_layered_category`
  ADD PRIMARY KEY (`id_layered_category`),
  ADD KEY `id_category_shop` (`id_category`,`id_shop`,`type`,`id_value`,`position`),
  ADD KEY `id_category` (`id_category`,`type`);

ALTER TABLE `SN6VS_layered_filter`
  ADD PRIMARY KEY (`id_layered_filter`);

ALTER TABLE `SN6VS_layered_filter_block`
  ADD PRIMARY KEY (`hash`);

ALTER TABLE `SN6VS_layered_filter_shop`
  ADD PRIMARY KEY (`id_layered_filter`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_layered_indexable_attribute_group`
  ADD PRIMARY KEY (`id_attribute_group`);

ALTER TABLE `SN6VS_layered_indexable_attribute_group_lang_value`
  ADD PRIMARY KEY (`id_attribute_group`,`id_lang`);

ALTER TABLE `SN6VS_layered_indexable_attribute_lang_value`
  ADD PRIMARY KEY (`id_attribute`,`id_lang`);

ALTER TABLE `SN6VS_layered_indexable_feature`
  ADD PRIMARY KEY (`id_feature`);

ALTER TABLE `SN6VS_layered_indexable_feature_lang_value`
  ADD PRIMARY KEY (`id_feature`,`id_lang`);

ALTER TABLE `SN6VS_layered_indexable_feature_value_lang_value`
  ADD PRIMARY KEY (`id_feature_value`,`id_lang`);

ALTER TABLE `SN6VS_layered_price_index`
  ADD PRIMARY KEY (`id_product`,`id_currency`,`id_shop`,`id_country`),
  ADD KEY `id_currency` (`id_currency`),
  ADD KEY `price_min` (`price_min`),
  ADD KEY `price_max` (`price_max`);

ALTER TABLE `SN6VS_layered_product_attribute`
  ADD PRIMARY KEY (`id_attribute`,`id_product`,`id_shop`),
  ADD UNIQUE KEY `id_attribute_group` (`id_attribute_group`,`id_attribute`,`id_product`,`id_shop`);

ALTER TABLE `SN6VS_linksmenutop`
  ADD PRIMARY KEY (`id_linksmenutop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_linksmenutop_lang`
  ADD KEY `id_linksmenutop` (`id_linksmenutop`,`id_lang`,`id_shop`);

ALTER TABLE `SN6VS_link_block`
  ADD PRIMARY KEY (`id_link_block`);

ALTER TABLE `SN6VS_link_block_lang`
  ADD PRIMARY KEY (`id_link_block`,`id_lang`);

ALTER TABLE `SN6VS_link_block_shop`
  ADD PRIMARY KEY (`id_link_block`,`id_shop`);

ALTER TABLE `SN6VS_log`
  ADD PRIMARY KEY (`id_log`);

ALTER TABLE `SN6VS_mail`
  ADD PRIMARY KEY (`id_mail`),
  ADD KEY `recipient` (`recipient`(10));

ALTER TABLE `SN6VS_manufacturer`
  ADD PRIMARY KEY (`id_manufacturer`);

ALTER TABLE `SN6VS_manufacturer_lang`
  ADD PRIMARY KEY (`id_manufacturer`,`id_lang`);

ALTER TABLE `SN6VS_manufacturer_shop`
  ADD PRIMARY KEY (`id_manufacturer`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_memcached_servers`
  ADD PRIMARY KEY (`id_memcached_server`);

ALTER TABLE `SN6VS_message`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `message_order` (`id_order`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_employee` (`id_employee`);

ALTER TABLE `SN6VS_message_readed`
  ADD PRIMARY KEY (`id_message`,`id_employee`);

ALTER TABLE `SN6VS_meta`
  ADD PRIMARY KEY (`id_meta`),
  ADD UNIQUE KEY `page` (`page`);

ALTER TABLE `SN6VS_meta_lang`
  ADD PRIMARY KEY (`id_meta`,`id_shop`,`id_lang`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_lang` (`id_lang`);

ALTER TABLE `SN6VS_module`
  ADD PRIMARY KEY (`id_module`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `name` (`name`);

ALTER TABLE `SN6VS_module_access`
  ADD PRIMARY KEY (`id_profile`,`id_authorization_role`);

ALTER TABLE `SN6VS_module_carrier`
  ADD PRIMARY KEY (`id_module`,`id_shop`,`id_reference`);

ALTER TABLE `SN6VS_module_country`
  ADD PRIMARY KEY (`id_module`,`id_shop`,`id_country`);

ALTER TABLE `SN6VS_module_currency`
  ADD PRIMARY KEY (`id_module`,`id_shop`,`id_currency`),
  ADD KEY `id_module` (`id_module`);

ALTER TABLE `SN6VS_module_group`
  ADD PRIMARY KEY (`id_module`,`id_shop`,`id_group`);

ALTER TABLE `SN6VS_module_history`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `SN6VS_module_preference`
  ADD PRIMARY KEY (`id_module_preference`),
  ADD UNIQUE KEY `employee_module` (`id_employee`,`module`);

ALTER TABLE `SN6VS_module_shop`
  ADD PRIMARY KEY (`id_module`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_operating_system`
  ADD PRIMARY KEY (`id_operating_system`);

ALTER TABLE `SN6VS_orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `reference` (`reference`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `invoice_number` (`invoice_number`),
  ADD KEY `id_carrier` (`id_carrier`),
  ADD KEY `id_lang` (`id_lang`),
  ADD KEY `id_currency` (`id_currency`),
  ADD KEY `id_address_delivery` (`id_address_delivery`),
  ADD KEY `id_address_invoice` (`id_address_invoice`),
  ADD KEY `id_shop_group` (`id_shop_group`),
  ADD KEY `current_state` (`current_state`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `date_add` (`date_add`);

ALTER TABLE `SN6VS_order_carrier`
  ADD PRIMARY KEY (`id_order_carrier`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_carrier` (`id_carrier`),
  ADD KEY `id_order_invoice` (`id_order_invoice`);

ALTER TABLE `SN6VS_order_cart_rule`
  ADD PRIMARY KEY (`id_order_cart_rule`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_cart_rule` (`id_cart_rule`);

ALTER TABLE `SN6VS_order_detail`
  ADD PRIMARY KEY (`id_order_detail`),
  ADD KEY `order_detail_order` (`id_order`),
  ADD KEY `product_id` (`product_id`,`product_attribute_id`),
  ADD KEY `product_attribute_id` (`product_attribute_id`),
  ADD KEY `id_tax_rules_group` (`id_tax_rules_group`),
  ADD KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`);

ALTER TABLE `SN6VS_order_detail_tax`
  ADD KEY `id_order_detail` (`id_order_detail`),
  ADD KEY `id_tax` (`id_tax`);

ALTER TABLE `SN6VS_order_history`
  ADD PRIMARY KEY (`id_order_history`),
  ADD KEY `order_history_order` (`id_order`),
  ADD KEY `id_employee` (`id_employee`),
  ADD KEY `id_order_state` (`id_order_state`);

ALTER TABLE `SN6VS_order_invoice`
  ADD PRIMARY KEY (`id_order_invoice`),
  ADD KEY `id_order` (`id_order`);

ALTER TABLE `SN6VS_order_invoice_payment`
  ADD PRIMARY KEY (`id_order_invoice`,`id_order_payment`),
  ADD KEY `order_payment` (`id_order_payment`),
  ADD KEY `id_order` (`id_order`);

ALTER TABLE `SN6VS_order_invoice_tax`
  ADD KEY `id_tax` (`id_tax`);

ALTER TABLE `SN6VS_order_message`
  ADD PRIMARY KEY (`id_order_message`);

ALTER TABLE `SN6VS_order_message_lang`
  ADD PRIMARY KEY (`id_order_message`,`id_lang`);

ALTER TABLE `SN6VS_order_payment`
  ADD PRIMARY KEY (`id_order_payment`),
  ADD KEY `order_reference` (`order_reference`);

ALTER TABLE `SN6VS_order_return`
  ADD PRIMARY KEY (`id_order_return`),
  ADD KEY `order_return_customer` (`id_customer`),
  ADD KEY `id_order` (`id_order`);

ALTER TABLE `SN6VS_order_return_detail`
  ADD PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`);

ALTER TABLE `SN6VS_order_return_state`
  ADD PRIMARY KEY (`id_order_return_state`);

ALTER TABLE `SN6VS_order_return_state_lang`
  ADD PRIMARY KEY (`id_order_return_state`,`id_lang`);

ALTER TABLE `SN6VS_order_slip`
  ADD PRIMARY KEY (`id_order_slip`),
  ADD KEY `order_slip_customer` (`id_customer`),
  ADD KEY `id_order` (`id_order`);

ALTER TABLE `SN6VS_order_slip_detail`
  ADD PRIMARY KEY (`id_order_slip`,`id_order_detail`);

ALTER TABLE `SN6VS_order_slip_detail_tax`
  ADD KEY `id_order_slip_detail` (`id_order_slip_detail`),
  ADD KEY `id_tax` (`id_tax`);

ALTER TABLE `SN6VS_order_state`
  ADD PRIMARY KEY (`id_order_state`),
  ADD KEY `module_name` (`module_name`);

ALTER TABLE `SN6VS_order_state_lang`
  ADD PRIMARY KEY (`id_order_state`,`id_lang`);

ALTER TABLE `SN6VS_pack`
  ADD PRIMARY KEY (`id_product_pack`,`id_product_item`,`id_product_attribute_item`),
  ADD KEY `product_item` (`id_product_item`,`id_product_attribute_item`);

ALTER TABLE `SN6VS_page`
  ADD PRIMARY KEY (`id_page`),
  ADD KEY `id_page_type` (`id_page_type`),
  ADD KEY `id_object` (`id_object`);

ALTER TABLE `SN6VS_pagenotfound`
  ADD PRIMARY KEY (`id_pagenotfound`),
  ADD KEY `date_add` (`date_add`);

ALTER TABLE `SN6VS_page_type`
  ADD PRIMARY KEY (`id_page_type`),
  ADD KEY `name` (`name`);

ALTER TABLE `SN6VS_page_viewed`
  ADD PRIMARY KEY (`id_page`,`id_date_range`,`id_shop`);

ALTER TABLE `SN6VS_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `product_supplier` (`id_supplier`),
  ADD KEY `product_manufacturer` (`id_manufacturer`,`id_product`),
  ADD KEY `id_category_default` (`id_category_default`),
  ADD KEY `indexed` (`indexed`),
  ADD KEY `date_add` (`date_add`),
  ADD KEY `state` (`state`,`date_upd`);

ALTER TABLE `SN6VS_product_attachment`
  ADD PRIMARY KEY (`id_product`,`id_attachment`);

ALTER TABLE `SN6VS_product_attribute`
  ADD PRIMARY KEY (`id_product_attribute`),
  ADD UNIQUE KEY `product_default` (`id_product`,`default_on`),
  ADD KEY `product_attribute_product` (`id_product`),
  ADD KEY `reference` (`reference`),
  ADD KEY `supplier_reference` (`supplier_reference`),
  ADD KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`);

ALTER TABLE `SN6VS_product_attribute_combination`
  ADD PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  ADD KEY `id_product_attribute` (`id_product_attribute`);

ALTER TABLE `SN6VS_product_attribute_image`
  ADD PRIMARY KEY (`id_product_attribute`,`id_image`),
  ADD KEY `id_image` (`id_image`);

ALTER TABLE `SN6VS_product_attribute_shop`
  ADD PRIMARY KEY (`id_product_attribute`,`id_shop`),
  ADD UNIQUE KEY `id_product` (`id_product`,`id_shop`,`default_on`);

ALTER TABLE `SN6VS_product_carrier`
  ADD PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`);

ALTER TABLE `SN6VS_product_country_tax`
  ADD PRIMARY KEY (`id_product`,`id_country`);

ALTER TABLE `SN6VS_product_download`
  ADD PRIMARY KEY (`id_product_download`);

ALTER TABLE `SN6VS_product_group_reduction_cache`
  ADD PRIMARY KEY (`id_product`,`id_group`);

ALTER TABLE `SN6VS_product_lang`
  ADD PRIMARY KEY (`id_product`,`id_shop`,`id_lang`),
  ADD KEY `id_lang` (`id_lang`),
  ADD KEY `name` (`name`);

ALTER TABLE `SN6VS_product_sale`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `quantity` (`quantity`);

ALTER TABLE `SN6VS_product_shop`
  ADD PRIMARY KEY (`id_product`,`id_shop`),
  ADD KEY `id_category_default` (`id_category_default`),
  ADD KEY `date_add` (`date_add`,`active`,`visibility`),
  ADD KEY `indexed` (`indexed`,`active`,`id_product`);

ALTER TABLE `SN6VS_product_supplier`
  ADD PRIMARY KEY (`id_product_supplier`),
  ADD UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`),
  ADD KEY `id_supplier` (`id_supplier`,`id_product`);

ALTER TABLE `SN6VS_product_tag`
  ADD PRIMARY KEY (`id_product`,`id_tag`),
  ADD KEY `id_tag` (`id_tag`),
  ADD KEY `id_lang` (`id_lang`,`id_tag`);

ALTER TABLE `SN6VS_profile`
  ADD PRIMARY KEY (`id_profile`);

ALTER TABLE `SN6VS_profile_lang`
  ADD PRIMARY KEY (`id_profile`,`id_lang`);

ALTER TABLE `SN6VS_psgdpr_consent`
  ADD PRIMARY KEY (`id_gdpr_consent`,`id_module`);

ALTER TABLE `SN6VS_psgdpr_consent_lang`
  ADD PRIMARY KEY (`id_gdpr_consent`,`id_lang`,`id_shop`);

ALTER TABLE `SN6VS_psgdpr_log`
  ADD PRIMARY KEY (`id_gdpr_log`);

ALTER TABLE `SN6VS_quick_access`
  ADD PRIMARY KEY (`id_quick_access`);

ALTER TABLE `SN6VS_quick_access_lang`
  ADD PRIMARY KEY (`id_quick_access`,`id_lang`);

ALTER TABLE `SN6VS_range_price`
  ADD PRIMARY KEY (`id_range_price`),
  ADD UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`);

ALTER TABLE `SN6VS_range_weight`
  ADD PRIMARY KEY (`id_range_weight`),
  ADD UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`);

ALTER TABLE `SN6VS_reassurance`
  ADD PRIMARY KEY (`id_reassurance`);

ALTER TABLE `SN6VS_reassurance_lang`
  ADD PRIMARY KEY (`id_reassurance`,`id_lang`);

ALTER TABLE `SN6VS_referrer`
  ADD PRIMARY KEY (`id_referrer`);

ALTER TABLE `SN6VS_referrer_cache`
  ADD PRIMARY KEY (`id_connections_source`,`id_referrer`);

ALTER TABLE `SN6VS_referrer_shop`
  ADD PRIMARY KEY (`id_referrer`,`id_shop`);

ALTER TABLE `SN6VS_request_sql`
  ADD PRIMARY KEY (`id_request_sql`);

ALTER TABLE `SN6VS_required_field`
  ADD PRIMARY KEY (`id_required_field`),
  ADD KEY `object_name` (`object_name`);

ALTER TABLE `SN6VS_risk`
  ADD PRIMARY KEY (`id_risk`);

ALTER TABLE `SN6VS_risk_lang`
  ADD PRIMARY KEY (`id_risk`,`id_lang`),
  ADD KEY `id_risk` (`id_risk`);

ALTER TABLE `SN6VS_search_engine`
  ADD PRIMARY KEY (`id_search_engine`);

ALTER TABLE `SN6VS_search_index`
  ADD PRIMARY KEY (`id_word`,`id_product`),
  ADD KEY `id_product` (`id_product`,`weight`);

ALTER TABLE `SN6VS_search_word`
  ADD PRIMARY KEY (`id_word`),
  ADD UNIQUE KEY `id_lang` (`id_lang`,`id_shop`,`word`);

ALTER TABLE `SN6VS_sekeyword`
  ADD PRIMARY KEY (`id_sekeyword`);

ALTER TABLE `SN6VS_shop`
  ADD PRIMARY KEY (`id_shop`),
  ADD KEY `IDX_4A8C9042F5C9E40` (`id_shop_group`);

ALTER TABLE `SN6VS_shop_group`
  ADD PRIMARY KEY (`id_shop_group`);

ALTER TABLE `SN6VS_shop_url`
  ADD PRIMARY KEY (`id_shop_url`),
  ADD UNIQUE KEY `full_shop_url` (`domain`,`physical_uri`,`virtual_uri`),
  ADD UNIQUE KEY `full_shop_url_ssl` (`domain_ssl`,`physical_uri`,`virtual_uri`),
  ADD KEY `id_shop` (`id_shop`,`main`);

ALTER TABLE `SN6VS_smarty_cache`
  ADD PRIMARY KEY (`id_smarty_cache`),
  ADD KEY `name` (`name`),
  ADD KEY `cache_id` (`cache_id`),
  ADD KEY `modified` (`modified`);

ALTER TABLE `SN6VS_smarty_last_flush`
  ADD PRIMARY KEY (`type`);

ALTER TABLE `SN6VS_smarty_lazy_cache`
  ADD PRIMARY KEY (`template_hash`,`cache_id`,`compile_id`);

ALTER TABLE `SN6VS_specific_price`
  ADD PRIMARY KEY (`id_specific_price`),
  ADD UNIQUE KEY `id_product_2` (`id_product`,`id_product_attribute`,`id_customer`,`id_cart`,`from`,`to`,`id_shop`,`id_shop_group`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`id_specific_price_rule`),
  ADD KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`id_customer`,`from_quantity`,`from`,`to`),
  ADD KEY `from_quantity` (`from_quantity`),
  ADD KEY `id_specific_price_rule` (`id_specific_price_rule`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_product_attribute` (`id_product_attribute`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`);

ALTER TABLE `SN6VS_specific_price_priority`
  ADD PRIMARY KEY (`id_specific_price_priority`,`id_product`),
  ADD UNIQUE KEY `id_product` (`id_product`);

ALTER TABLE `SN6VS_specific_price_rule`
  ADD PRIMARY KEY (`id_specific_price_rule`),
  ADD KEY `id_product` (`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`);

ALTER TABLE `SN6VS_specific_price_rule_condition`
  ADD PRIMARY KEY (`id_specific_price_rule_condition`),
  ADD KEY `id_specific_price_rule_condition_group` (`id_specific_price_rule_condition_group`);

ALTER TABLE `SN6VS_specific_price_rule_condition_group`
  ADD PRIMARY KEY (`id_specific_price_rule_condition_group`,`id_specific_price_rule`);

ALTER TABLE `SN6VS_state`
  ADD PRIMARY KEY (`id_state`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `name` (`name`),
  ADD KEY `id_zone` (`id_zone`);

ALTER TABLE `SN6VS_statssearch`
  ADD PRIMARY KEY (`id_statssearch`);

ALTER TABLE `SN6VS_stock`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `id_warehouse` (`id_warehouse`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_product_attribute` (`id_product_attribute`);

ALTER TABLE `SN6VS_stock_available`
  ADD PRIMARY KEY (`id_stock_available`),
  ADD UNIQUE KEY `product_sqlstock` (`id_product`,`id_product_attribute`,`id_shop`,`id_shop_group`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_shop_group` (`id_shop_group`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_product_attribute` (`id_product_attribute`);

ALTER TABLE `SN6VS_stock_mvt`
  ADD PRIMARY KEY (`id_stock_mvt`),
  ADD KEY `id_stock` (`id_stock`),
  ADD KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`);

ALTER TABLE `SN6VS_stock_mvt_reason`
  ADD PRIMARY KEY (`id_stock_mvt_reason`);

ALTER TABLE `SN6VS_stock_mvt_reason_lang`
  ADD PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`);

ALTER TABLE `SN6VS_store`
  ADD PRIMARY KEY (`id_store`);

ALTER TABLE `SN6VS_store_lang`
  ADD PRIMARY KEY (`id_store`,`id_lang`);

ALTER TABLE `SN6VS_store_shop`
  ADD PRIMARY KEY (`id_store`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_supplier`
  ADD PRIMARY KEY (`id_supplier`);

ALTER TABLE `SN6VS_supplier_lang`
  ADD PRIMARY KEY (`id_supplier`,`id_lang`);

ALTER TABLE `SN6VS_supplier_shop`
  ADD PRIMARY KEY (`id_supplier`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_supply_order`
  ADD PRIMARY KEY (`id_supply_order`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_warehouse` (`id_warehouse`),
  ADD KEY `reference` (`reference`);

ALTER TABLE `SN6VS_supply_order_detail`
  ADD PRIMARY KEY (`id_supply_order_detail`),
  ADD KEY `id_supply_order` (`id_supply_order`,`id_product`),
  ADD KEY `id_product_attribute` (`id_product_attribute`),
  ADD KEY `id_product_product_attribute` (`id_product`,`id_product_attribute`);

ALTER TABLE `SN6VS_supply_order_history`
  ADD PRIMARY KEY (`id_supply_order_history`),
  ADD KEY `id_supply_order` (`id_supply_order`),
  ADD KEY `id_employee` (`id_employee`),
  ADD KEY `id_state` (`id_state`);

ALTER TABLE `SN6VS_supply_order_receipt_history`
  ADD PRIMARY KEY (`id_supply_order_receipt_history`),
  ADD KEY `id_supply_order_detail` (`id_supply_order_detail`),
  ADD KEY `id_supply_order_state` (`id_supply_order_state`);

ALTER TABLE `SN6VS_supply_order_state`
  ADD PRIMARY KEY (`id_supply_order_state`);

ALTER TABLE `SN6VS_supply_order_state_lang`
  ADD PRIMARY KEY (`id_supply_order_state`,`id_lang`);

ALTER TABLE `SN6VS_tab`
  ADD PRIMARY KEY (`id_tab`);

ALTER TABLE `SN6VS_tab_advice`
  ADD PRIMARY KEY (`id_tab`,`id_advice`);

ALTER TABLE `SN6VS_tab_lang`
  ADD PRIMARY KEY (`id_tab`,`id_lang`),
  ADD KEY `IDX_9C6A342CED47AB56` (`id_tab`),
  ADD KEY `IDX_9C6A342CBA299860` (`id_lang`);

ALTER TABLE `SN6VS_tab_module_preference`
  ADD PRIMARY KEY (`id_tab_module_preference`),
  ADD UNIQUE KEY `employee_module` (`id_employee`,`id_tab`,`module`);

ALTER TABLE `SN6VS_tag`
  ADD PRIMARY KEY (`id_tag`),
  ADD KEY `tag_name` (`name`),
  ADD KEY `id_lang` (`id_lang`);

ALTER TABLE `SN6VS_tag_count`
  ADD PRIMARY KEY (`id_group`,`id_tag`),
  ADD KEY `id_group` (`id_group`,`id_lang`,`id_shop`,`counter`);

ALTER TABLE `SN6VS_tax`
  ADD PRIMARY KEY (`id_tax`);

ALTER TABLE `SN6VS_tax_lang`
  ADD PRIMARY KEY (`id_tax`,`id_lang`);

ALTER TABLE `SN6VS_tax_rule`
  ADD PRIMARY KEY (`id_tax_rule`),
  ADD KEY `id_tax_rules_group` (`id_tax_rules_group`),
  ADD KEY `id_tax` (`id_tax`),
  ADD KEY `category_getproducts` (`id_tax_rules_group`,`id_country`,`id_state`,`zipcode_from`);

ALTER TABLE `SN6VS_tax_rules_group`
  ADD PRIMARY KEY (`id_tax_rules_group`);

ALTER TABLE `SN6VS_tax_rules_group_shop`
  ADD PRIMARY KEY (`id_tax_rules_group`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_timezone`
  ADD PRIMARY KEY (`id_timezone`);

ALTER TABLE `SN6VS_translation`
  ADD PRIMARY KEY (`id_translation`),
  ADD KEY `IDX_86B513B7BA299860` (`id_lang`),
  ADD KEY `key` (`domain`);

ALTER TABLE `SN6VS_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

ALTER TABLE `SN6VS_warehouse_carrier`
  ADD PRIMARY KEY (`id_warehouse`,`id_carrier`),
  ADD KEY `id_warehouse` (`id_warehouse`),
  ADD KEY `id_carrier` (`id_carrier`);

ALTER TABLE `SN6VS_warehouse_product_location`
  ADD PRIMARY KEY (`id_warehouse_product_location`),
  ADD UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_warehouse`);

ALTER TABLE `SN6VS_warehouse_shop`
  ADD PRIMARY KEY (`id_warehouse`,`id_shop`),
  ADD KEY `id_warehouse` (`id_warehouse`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_webservice_account`
  ADD PRIMARY KEY (`id_webservice_account`),
  ADD KEY `key` (`key`);

ALTER TABLE `SN6VS_webservice_account_shop`
  ADD PRIMARY KEY (`id_webservice_account`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);

ALTER TABLE `SN6VS_webservice_permission`
  ADD PRIMARY KEY (`id_webservice_permission`),
  ADD UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`),
  ADD KEY `resource` (`resource`),
  ADD KEY `method` (`method`),
  ADD KEY `id_webservice_account` (`id_webservice_account`);

ALTER TABLE `SN6VS_web_browser`
  ADD PRIMARY KEY (`id_web_browser`);

ALTER TABLE `SN6VS_zone`
  ADD PRIMARY KEY (`id_zone`);

ALTER TABLE `SN6VS_zone_shop`
  ADD PRIMARY KEY (`id_zone`,`id_shop`),
  ADD KEY `id_shop` (`id_shop`);


ALTER TABLE `SN6VS_address`
  MODIFY `id_address` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_admin_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_advice`
  MODIFY `id_advice` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_alias`
  MODIFY `id_alias` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_attachment`
  MODIFY `id_attachment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_attachment_lang`
  MODIFY `id_attachment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_attribute`
  MODIFY `id_attribute` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_attribute_group`
  MODIFY `id_attribute_group` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_attribute_impact`
  MODIFY `id_attribute_impact` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_authorization_role`
  MODIFY `id_authorization_role` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_badge`
  MODIFY `id_badge` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_carrier`
  MODIFY `id_carrier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_cart`
  MODIFY `id_cart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_cart_rule`
  MODIFY `id_cart_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_cart_rule_product_rule`
  MODIFY `id_product_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_cart_rule_product_rule_group`
  MODIFY `id_product_rule_group` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_category`
  MODIFY `id_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_cms`
  MODIFY `id_cms` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_cms_category`
  MODIFY `id_cms_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_cms_category_shop`
  MODIFY `id_cms_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_cms_role`
  MODIFY `id_cms_role` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_condition`
  MODIFY `id_condition` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_configuration`
  MODIFY `id_configuration` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_configuration_kpi`
  MODIFY `id_configuration_kpi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_connections`
  MODIFY `id_connections` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_connections_source`
  MODIFY `id_connections_source` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_contact`
  MODIFY `id_contact` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_country`
  MODIFY `id_country` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_currency`
  MODIFY `id_currency` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_customer`
  MODIFY `id_customer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_customer_message`
  MODIFY `id_customer_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_customer_thread`
  MODIFY `id_customer_thread` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_customization`
  MODIFY `id_customization` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_customization_field`
  MODIFY `id_customization_field` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_date_range`
  MODIFY `id_date_range` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_delivery`
  MODIFY `id_delivery` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_emailsubscription`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_employee`
  MODIFY `id_employee` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_feature`
  MODIFY `id_feature` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_feature_value`
  MODIFY `id_feature_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_gender`
  MODIFY `id_gender` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_group`
  MODIFY `id_group` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_group_reduction`
  MODIFY `id_group_reduction` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_guest`
  MODIFY `id_guest` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_homeslider`
  MODIFY `id_homeslider_slides` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_homeslider_slides`
  MODIFY `id_homeslider_slides` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_hook`
  MODIFY `id_hook` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_hook_alias`
  MODIFY `id_hook_alias` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_hook_module_exceptions`
  MODIFY `id_hook_module_exceptions` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_image`
  MODIFY `id_image` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_image_type`
  MODIFY `id_image_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_import_match`
  MODIFY `id_import_match` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_info`
  MODIFY `id_info` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_lang`
  MODIFY `id_lang` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_layered_category`
  MODIFY `id_layered_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_layered_filter`
  MODIFY `id_layered_filter` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_linksmenutop`
  MODIFY `id_linksmenutop` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_link_block`
  MODIFY `id_link_block` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_link_block_shop`
  MODIFY `id_link_block` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_log`
  MODIFY `id_log` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_mail`
  MODIFY `id_mail` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_manufacturer`
  MODIFY `id_manufacturer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_memcached_servers`
  MODIFY `id_memcached_server` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_message`
  MODIFY `id_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_meta`
  MODIFY `id_meta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_module`
  MODIFY `id_module` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_module_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_module_preference`
  MODIFY `id_module_preference` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_operating_system`
  MODIFY `id_operating_system` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_orders`
  MODIFY `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_carrier`
  MODIFY `id_order_carrier` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_cart_rule`
  MODIFY `id_order_cart_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_detail`
  MODIFY `id_order_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_history`
  MODIFY `id_order_history` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_invoice`
  MODIFY `id_order_invoice` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_message`
  MODIFY `id_order_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_payment`
  MODIFY `id_order_payment` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_return`
  MODIFY `id_order_return` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_return_state`
  MODIFY `id_order_return_state` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_slip`
  MODIFY `id_order_slip` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_order_state`
  MODIFY `id_order_state` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_page`
  MODIFY `id_page` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_pagenotfound`
  MODIFY `id_pagenotfound` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_page_type`
  MODIFY `id_page_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_product`
  MODIFY `id_product` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_product_attribute`
  MODIFY `id_product_attribute` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_product_download`
  MODIFY `id_product_download` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_product_supplier`
  MODIFY `id_product_supplier` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_profile`
  MODIFY `id_profile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_psgdpr_consent`
  MODIFY `id_gdpr_consent` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_psgdpr_consent_lang`
  MODIFY `id_gdpr_consent` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_psgdpr_log`
  MODIFY `id_gdpr_log` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_quick_access`
  MODIFY `id_quick_access` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_range_price`
  MODIFY `id_range_price` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_range_weight`
  MODIFY `id_range_weight` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_reassurance`
  MODIFY `id_reassurance` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_reassurance_lang`
  MODIFY `id_reassurance` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_referrer`
  MODIFY `id_referrer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_referrer_shop`
  MODIFY `id_referrer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_request_sql`
  MODIFY `id_request_sql` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_required_field`
  MODIFY `id_required_field` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_risk`
  MODIFY `id_risk` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_search_engine`
  MODIFY `id_search_engine` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_search_word`
  MODIFY `id_word` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_sekeyword`
  MODIFY `id_sekeyword` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_shop`
  MODIFY `id_shop` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_shop_group`
  MODIFY `id_shop_group` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_shop_url`
  MODIFY `id_shop_url` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_specific_price`
  MODIFY `id_specific_price` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_specific_price_priority`
  MODIFY `id_specific_price_priority` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_specific_price_rule`
  MODIFY `id_specific_price_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_specific_price_rule_condition`
  MODIFY `id_specific_price_rule_condition` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_specific_price_rule_condition_group`
  MODIFY `id_specific_price_rule_condition_group` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_state`
  MODIFY `id_state` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_statssearch`
  MODIFY `id_statssearch` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_stock`
  MODIFY `id_stock` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_stock_available`
  MODIFY `id_stock_available` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_stock_mvt`
  MODIFY `id_stock_mvt` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_stock_mvt_reason`
  MODIFY `id_stock_mvt_reason` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_store`
  MODIFY `id_store` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_supply_order`
  MODIFY `id_supply_order` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_supply_order_detail`
  MODIFY `id_supply_order_detail` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_supply_order_history`
  MODIFY `id_supply_order_history` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_supply_order_receipt_history`
  MODIFY `id_supply_order_receipt_history` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_supply_order_state`
  MODIFY `id_supply_order_state` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_tab`
  MODIFY `id_tab` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_tab_module_preference`
  MODIFY `id_tab_module_preference` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_tag`
  MODIFY `id_tag` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_tax`
  MODIFY `id_tax` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_tax_rule`
  MODIFY `id_tax_rule` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_tax_rules_group`
  MODIFY `id_tax_rules_group` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_timezone`
  MODIFY `id_timezone` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_translation`
  MODIFY `id_translation` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_warehouse`
  MODIFY `id_warehouse` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_warehouse_product_location`
  MODIFY `id_warehouse_product_location` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_webservice_account`
  MODIFY `id_webservice_account` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_webservice_permission`
  MODIFY `id_webservice_permission` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_web_browser`
  MODIFY `id_web_browser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `SN6VS_zone`
  MODIFY `id_zone` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
