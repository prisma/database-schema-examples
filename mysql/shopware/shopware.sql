SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `s_addon_premiums` (
  `id` int(6) NOT NULL,
  `startprice` double NOT NULL DEFAULT '0',
  `ordernumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ordernumber_export` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subshopID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles` (
  `id` int(11) UNSIGNED NOT NULL,
  `supplierID` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `description_long` mediumtext COLLATE utf8_unicode_ci,
  `shippingtime` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `taxID` int(11) UNSIGNED DEFAULT NULL,
  `pseudosales` int(11) NOT NULL DEFAULT '0',
  `topseller` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `metaTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changetime` datetime NOT NULL,
  `pricegroupID` int(11) UNSIGNED DEFAULT NULL,
  `pricegroupActive` int(1) UNSIGNED NOT NULL,
  `filtergroupID` int(11) UNSIGNED DEFAULT NULL,
  `laststock` int(1) NOT NULL,
  `crossbundlelook` int(1) UNSIGNED NOT NULL,
  `notification` int(1) UNSIGNED NOT NULL COMMENT 'send notification',
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` int(11) NOT NULL,
  `main_detail_id` int(11) UNSIGNED DEFAULT NULL,
  `available_from` datetime DEFAULT NULL,
  `available_to` datetime DEFAULT NULL,
  `configurator_set_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_also_bought_ro` (
  `id` int(11) NOT NULL,
  `article_id` int(11) UNSIGNED NOT NULL,
  `related_article_id` int(11) NOT NULL,
  `sales` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_attributes` (
  `id` int(11) NOT NULL,
  `articledetailsID` int(11) UNSIGNED DEFAULT NULL,
  `attr1` text COLLATE utf8_unicode_ci,
  `attr2` text COLLATE utf8_unicode_ci,
  `attr3` text COLLATE utf8_unicode_ci,
  `attr4` text COLLATE utf8_unicode_ci,
  `attr5` text COLLATE utf8_unicode_ci,
  `attr6` text COLLATE utf8_unicode_ci,
  `attr7` text COLLATE utf8_unicode_ci,
  `attr8` text COLLATE utf8_unicode_ci,
  `attr9` text COLLATE utf8_unicode_ci,
  `attr10` text COLLATE utf8_unicode_ci,
  `attr11` text COLLATE utf8_unicode_ci,
  `attr12` text COLLATE utf8_unicode_ci,
  `attr13` text COLLATE utf8_unicode_ci,
  `attr14` text COLLATE utf8_unicode_ci,
  `attr15` text COLLATE utf8_unicode_ci,
  `attr16` text COLLATE utf8_unicode_ci,
  `attr17` text COLLATE utf8_unicode_ci,
  `attr18` text COLLATE utf8_unicode_ci,
  `attr19` text COLLATE utf8_unicode_ci,
  `attr20` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_avoid_customergroups` (
  `articleID` int(11) NOT NULL,
  `customergroupID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `articleID` int(11) UNSIGNED NOT NULL,
  `categoryID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_categories_ro` (
  `id` int(11) UNSIGNED NOT NULL,
  `articleID` int(11) UNSIGNED NOT NULL,
  `categoryID` int(11) UNSIGNED NOT NULL,
  `parentCategoryID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_categories_seo` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_details` (
  `id` int(11) UNSIGNED NOT NULL,
  `articleID` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ordernumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `suppliernumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` int(1) NOT NULL DEFAULT '0',
  `additionaltext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sales` int(11) NOT NULL DEFAULT '0',
  `active` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `instock` int(11) NOT NULL DEFAULT '0',
  `stockmin` int(11) UNSIGNED DEFAULT NULL,
  `laststock` int(1) NOT NULL DEFAULT '0',
  `weight` decimal(10,3) UNSIGNED DEFAULT NULL,
  `position` int(11) UNSIGNED NOT NULL,
  `width` decimal(10,3) UNSIGNED DEFAULT NULL,
  `height` decimal(10,3) UNSIGNED DEFAULT NULL,
  `length` decimal(10,3) UNSIGNED DEFAULT NULL,
  `ean` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unitID` int(11) UNSIGNED DEFAULT NULL,
  `purchasesteps` int(11) UNSIGNED DEFAULT NULL,
  `maxpurchase` int(11) UNSIGNED DEFAULT NULL,
  `minpurchase` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `purchaseunit` decimal(11,4) UNSIGNED DEFAULT NULL,
  `referenceunit` decimal(10,3) UNSIGNED DEFAULT NULL,
  `packunit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `releasedate` date DEFAULT NULL,
  `shippingfree` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `shippingtime` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchaseprice` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_downloads` (
  `id` int(11) UNSIGNED NOT NULL,
  `articleID` int(11) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_downloads_attributes` (
  `id` int(11) NOT NULL,
  `downloadID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_esd` (
  `id` int(11) NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `articledetailsID` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serials` int(1) NOT NULL DEFAULT '0',
  `notification` int(1) NOT NULL DEFAULT '0',
  `maxdownloads` int(11) NOT NULL DEFAULT '0',
  `datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_esd_attributes` (
  `id` int(11) NOT NULL,
  `esdID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_esd_serials` (
  `id` int(11) NOT NULL,
  `serialnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `esdID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_img` (
  `id` int(11) NOT NULL,
  `articleID` int(11) DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main` int(1) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `relations` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `article_detail_id` int(10) UNSIGNED DEFAULT NULL,
  `media_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_img_attributes` (
  `id` int(11) NOT NULL,
  `imageID` int(11) DEFAULT NULL,
  `attribute1` text COLLATE utf8_unicode_ci,
  `attribute2` text COLLATE utf8_unicode_ci,
  `attribute3` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_information` (
  `id` int(11) NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_information_attributes` (
  `id` int(11) NOT NULL,
  `informationID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `ordernumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `send` int(1) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shopLink` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_notification_attributes` (
  `id` int(11) NOT NULL,
  `notificationID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_prices` (
  `id` int(11) UNSIGNED NOT NULL,
  `pricegroup` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` int(10) UNSIGNED NOT NULL,
  `to` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `articledetailsID` int(11) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `pseudoprice` double DEFAULT NULL,
  `baseprice` double DEFAULT NULL,
  `percent` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_prices_attributes` (
  `id` int(11) NOT NULL,
  `priceID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_relationships` (
  `id` int(11) NOT NULL,
  `articleID` int(30) NOT NULL,
  `relatedarticle` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_similar` (
  `id` int(11) NOT NULL,
  `articleID` int(30) NOT NULL,
  `relatedarticle` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_similar_shown_ro` (
  `id` int(11) NOT NULL,
  `article_id` int(11) UNSIGNED NOT NULL,
  `related_article_id` int(11) NOT NULL,
  `viewed` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `init_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changed` datetime NOT NULL DEFAULT '2019-09-25 08:55:35'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_supplier_attributes` (
  `id` int(11) NOT NULL,
  `supplierID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_top_seller_ro` (
  `id` int(11) NOT NULL,
  `article_id` int(11) UNSIGNED NOT NULL,
  `sales` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_cleared` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_translations` (
  `id` int(11) NOT NULL,
  `articleID` int(11) NOT NULL,
  `languageID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description_long` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description_clear` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `shippingtime` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `attr1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr5` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_articles_vote` (
  `id` int(11) NOT NULL,
  `articleID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `points` double NOT NULL,
  `datum` datetime NOT NULL,
  `active` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_date` datetime DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_dependencies` (
  `id` int(11) UNSIGNED NOT NULL,
  `configurator_set_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `child_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_groups_attributes` (
  `id` int(11) NOT NULL,
  `groupID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_options` (
  `id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_options_attributes` (
  `id` int(11) NOT NULL,
  `optionID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_option_relations` (
  `id` int(11) UNSIGNED NOT NULL,
  `article_id` int(11) UNSIGNED NOT NULL,
  `option_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_price_variations` (
  `id` int(11) UNSIGNED NOT NULL,
  `configurator_set_id` int(10) UNSIGNED NOT NULL,
  `variation` decimal(10,3) NOT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `is_gross` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_sets` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_set_group_relations` (
  `set_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_set_option_relations` (
  `set_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `option_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `article_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `order_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `suppliernumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additionaltext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `impressions` int(11) NOT NULL DEFAULT '0',
  `sales` int(11) NOT NULL DEFAULT '0',
  `active` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `instock` int(11) DEFAULT NULL,
  `stockmin` int(11) UNSIGNED DEFAULT NULL,
  `laststock` tinyint(4) NOT NULL DEFAULT '0',
  `weight` decimal(10,3) UNSIGNED DEFAULT NULL,
  `position` int(11) UNSIGNED NOT NULL,
  `width` decimal(10,3) UNSIGNED DEFAULT NULL,
  `height` decimal(10,3) UNSIGNED DEFAULT NULL,
  `length` decimal(10,3) UNSIGNED DEFAULT NULL,
  `ean` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_id` int(11) UNSIGNED DEFAULT NULL,
  `purchasesteps` int(11) UNSIGNED DEFAULT NULL,
  `maxpurchase` int(11) UNSIGNED DEFAULT NULL,
  `minpurchase` int(11) UNSIGNED DEFAULT NULL,
  `purchaseunit` decimal(11,4) UNSIGNED DEFAULT NULL,
  `referenceunit` decimal(10,3) UNSIGNED DEFAULT NULL,
  `packunit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `releasedate` date DEFAULT NULL,
  `shippingfree` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `shippingtime` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchaseprice` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_templates_attributes` (
  `id` int(11) NOT NULL,
  `template_id` int(11) UNSIGNED DEFAULT NULL,
  `attr1` text COLLATE utf8_unicode_ci,
  `attr2` text COLLATE utf8_unicode_ci,
  `attr3` text COLLATE utf8_unicode_ci,
  `attr4` text COLLATE utf8_unicode_ci,
  `attr5` text COLLATE utf8_unicode_ci,
  `attr6` text COLLATE utf8_unicode_ci,
  `attr7` text COLLATE utf8_unicode_ci,
  `attr8` text COLLATE utf8_unicode_ci,
  `attr9` text COLLATE utf8_unicode_ci,
  `attr10` text COLLATE utf8_unicode_ci,
  `attr11` text COLLATE utf8_unicode_ci,
  `attr12` text COLLATE utf8_unicode_ci,
  `attr13` text COLLATE utf8_unicode_ci,
  `attr14` text COLLATE utf8_unicode_ci,
  `attr15` text COLLATE utf8_unicode_ci,
  `attr16` text COLLATE utf8_unicode_ci,
  `attr17` text COLLATE utf8_unicode_ci,
  `attr18` text COLLATE utf8_unicode_ci,
  `attr19` text COLLATE utf8_unicode_ci,
  `attr20` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_template_prices` (
  `id` int(11) UNSIGNED NOT NULL,
  `template_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_group_key` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` int(10) UNSIGNED NOT NULL,
  `to` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `pseudoprice` double DEFAULT NULL,
  `percent` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_configurator_template_prices_attributes` (
  `id` int(11) NOT NULL,
  `template_price_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_img_mappings` (
  `id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_article_img_mapping_rules` (
  `id` int(11) NOT NULL,
  `mapping_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_attribute_configuration` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `translatable` int(1) NOT NULL,
  `display_in_backend` int(1) NOT NULL,
  `custom` int(1) NOT NULL,
  `help_text` text COLLATE utf8_unicode_ci,
  `support_text` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_store` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_benchmark_config` (
  `id` binary(16) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `last_sent` datetime NOT NULL,
  `last_received` datetime NOT NULL,
  `last_order_id` int(11) NOT NULL,
  `last_customer_id` int(11) NOT NULL,
  `last_product_id` int(11) NOT NULL,
  `last_analytics_id` int(11) NOT NULL,
  `last_updated_orders_date` datetime DEFAULT NULL,
  `batch_size` int(11) NOT NULL,
  `industry` int(11) DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cached_template` longtext COLLATE utf8_unicode_ci,
  `locked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_billing_template` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `typ` mediumint(11) NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `show` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_blog` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `active` int(1) NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) UNSIGNED DEFAULT NULL,
  `display_date` datetime NOT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shop_ids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_blog_assigned_articles` (
  `id` int(11) UNSIGNED NOT NULL,
  `blog_id` int(11) UNSIGNED NOT NULL,
  `article_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_blog_attributes` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) UNSIGNED DEFAULT NULL,
  `attribute1` text COLLATE utf8_unicode_ci,
  `attribute2` text COLLATE utf8_unicode_ci,
  `attribute3` text COLLATE utf8_unicode_ci,
  `attribute4` text COLLATE utf8_unicode_ci,
  `attribute5` text COLLATE utf8_unicode_ci,
  `attribute6` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_blog_comments` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `active` int(1) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `points` double NOT NULL,
  `shop_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_blog_media` (
  `id` int(11) UNSIGNED NOT NULL,
  `blog_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) UNSIGNED NOT NULL,
  `preview` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_blog_tags` (
  `id` int(11) UNSIGNED NOT NULL,
  `blog_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_articles` (
  `id` int(11) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `articleordernumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_banner` (
  `id` int(11) NOT NULL,
  `parentID` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkTarget` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_containers` (
  `id` int(11) NOT NULL,
  `promotionID` int(11) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_html` (
  `id` int(11) NOT NULL,
  `parentID` int(11) DEFAULT NULL,
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_links` (
  `id` int(11) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_logs` (
  `id` int(11) NOT NULL,
  `datum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mailingID` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_mailaddresses` (
  `id` int(11) NOT NULL,
  `customer` int(1) NOT NULL,
  `groupID` int(11) NOT NULL,
  `email` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `lastmailing` int(11) NOT NULL,
  `lastread` int(11) NOT NULL,
  `added` datetime DEFAULT NULL,
  `double_optin_confirmed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_maildata` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupID` int(11) UNSIGNED NOT NULL,
  `salutation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` datetime NOT NULL,
  `double_optin_confirmed` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_mailings` (
  `id` int(11) NOT NULL,
  `datum` date DEFAULT NULL,
  `groups` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sendermail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sendername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plaintext` int(1) NOT NULL,
  `templateID` int(11) NOT NULL DEFAULT '0',
  `languageID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locked` datetime DEFAULT NULL,
  `recipients` int(11) NOT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `clicked` int(11) NOT NULL DEFAULT '0',
  `customergroup` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish` int(1) UNSIGNED NOT NULL,
  `timed_delivery` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_positions` (
  `id` int(11) NOT NULL,
  `promotionID` int(11) NOT NULL DEFAULT '0',
  `containerID` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_sender` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_campaigns_templates` (
  `id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent` int(11) UNSIGNED DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) UNSIGNED DEFAULT '0',
  `left` int(11) UNSIGNED NOT NULL,
  `right` int(11) UNSIGNED NOT NULL,
  `level` int(11) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `metakeywords` mediumtext COLLATE utf8_unicode_ci,
  `metadescription` mediumtext COLLATE utf8_unicode_ci,
  `cmsheadline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmstext` mediumtext COLLATE utf8_unicode_ci,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(1) NOT NULL,
  `blog` int(11) NOT NULL,
  `external` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hidefilter` int(1) NOT NULL,
  `hidetop` int(1) NOT NULL,
  `mediaID` int(11) UNSIGNED DEFAULT NULL,
  `product_box_layout` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stream_id` int(11) UNSIGNED DEFAULT NULL,
  `hide_sortings` int(1) NOT NULL DEFAULT '0',
  `sorting_ids` text COLLATE utf8_unicode_ci,
  `facet_ids` text COLLATE utf8_unicode_ci,
  `external_target` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `shops` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_categories_attributes` (
  `id` int(11) NOT NULL,
  `categoryID` int(11) UNSIGNED DEFAULT NULL,
  `attribute1` text COLLATE utf8_unicode_ci,
  `attribute2` text COLLATE utf8_unicode_ci,
  `attribute3` text COLLATE utf8_unicode_ci,
  `attribute4` text COLLATE utf8_unicode_ci,
  `attribute5` text COLLATE utf8_unicode_ci,
  `attribute6` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_categories_avoid_customergroups` (
  `categoryID` int(11) NOT NULL,
  `customergroupID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_categories_manual_sorting` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_cms_static` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `tpl1variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tpl1path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tpl2variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tpl2path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tpl3variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tpl3path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `grouping` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `changed` datetime NOT NULL DEFAULT '2019-09-25 08:55:35',
  `shop_ids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_cms_static_attributes` (
  `id` int(11) NOT NULL,
  `cmsStaticID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_cms_static_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL,
  `mapping_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_cms_support` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_template` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text2` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `ticket_typeID` int(10) NOT NULL,
  `isocode` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'de',
  `shop_ids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_cms_support_attributes` (
  `id` int(11) NOT NULL,
  `cmsSupportID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_cms_support_fields` (
  `id` int(11) NOT NULL,
  `error_msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typ` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` int(1) NOT NULL,
  `supportID` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added` datetime NOT NULL,
  `position` int(11) NOT NULL,
  `ticket_task` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_content_types` (
  `id` int(11) NOT NULL,
  `internalName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_acl_privileges` (
  `id` int(11) NOT NULL,
  `resourceID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_acl_privilege_requirements` (
  `privilege_id` int(11) UNSIGNED NOT NULL,
  `required_privilege_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_acl_resources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pluginID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_acl_roles` (
  `id` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `resourceID` int(11) DEFAULT NULL,
  `privilegeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_auth` (
  `id` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encoder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'LegacyBackendMd5',
  `apiKey` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localeID` int(11) NOT NULL,
  `sessionID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `failedlogins` int(11) NOT NULL,
  `lockeduntil` datetime DEFAULT NULL,
  `extended_editor` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `disabled_cache` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_auth_attributes` (
  `id` int(11) NOT NULL,
  `authID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_auth_config` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_auth_roles` (
  `id` int(11) NOT NULL,
  `parentID` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` int(1) NOT NULL,
  `admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_config_elements` (
  `id` int(11) UNSIGNED NOT NULL,
  `form_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` int(1) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL,
  `scope` int(11) UNSIGNED NOT NULL,
  `options` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_config_element_translations` (
  `id` int(11) UNSIGNED NOT NULL,
  `element_id` int(11) UNSIGNED NOT NULL,
  `locale_id` int(11) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_config_forms` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL,
  `plugin_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_config_form_translations` (
  `id` int(11) UNSIGNED NOT NULL,
  `form_id` int(11) UNSIGNED NOT NULL,
  `locale_id` int(11) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_config_mails` (
  `id` int(11) NOT NULL,
  `stateId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `frommail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fromname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `contentHTML` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ishtml` int(1) NOT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mailtype` int(11) NOT NULL DEFAULT '1',
  `context` longtext COLLATE utf8_unicode_ci,
  `dirty` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_config_mails_attachments` (
  `id` int(11) NOT NULL,
  `mailID` int(11) NOT NULL,
  `mediaID` int(11) NOT NULL,
  `shopID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `s_core_config_mails_attributes` (
  `id` int(11) NOT NULL,
  `mailID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_config_values` (
  `id` int(11) UNSIGNED NOT NULL,
  `element_id` int(11) UNSIGNED NOT NULL,
  `shop_id` int(11) UNSIGNED DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_countries` (
  `id` int(11) NOT NULL,
  `countryname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryiso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `areaID` int(11) DEFAULT NULL,
  `countryen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `notice` text COLLATE utf8_unicode_ci,
  `taxfree` int(11) DEFAULT NULL,
  `taxfree_ustid` int(11) DEFAULT NULL,
  `taxfree_ustid_checked` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `iso3` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_state_in_registration` int(1) NOT NULL,
  `force_state_in_registration` int(1) NOT NULL,
  `allow_shipping` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_countries_areas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_countries_attributes` (
  `id` int(11) NOT NULL,
  `countryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_countries_states` (
  `id` int(11) NOT NULL,
  `countryID` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_countries_states_attributes` (
  `id` int(11) NOT NULL,
  `stateID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_currencies` (
  `id` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `standard` int(1) NOT NULL,
  `factor` double NOT NULL,
  `templatechar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_position` int(11) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_customergroups` (
  `id` int(11) NOT NULL,
  `groupkey` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tax` int(1) NOT NULL DEFAULT '0',
  `taxinput` int(1) NOT NULL,
  `mode` int(11) NOT NULL,
  `discount` double NOT NULL,
  `minimumorder` double NOT NULL,
  `minimumordersurcharge` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_customergroups_attributes` (
  `id` int(11) NOT NULL,
  `customerGroupID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_customergroups_discounts` (
  `id` int(11) NOT NULL,
  `groupID` int(11) NOT NULL,
  `basketdiscount` double NOT NULL,
  `basketdiscountstart` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_customerpricegroups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `netto` int(1) UNSIGNED NOT NULL,
  `active` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_detail_states` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `mail` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_documents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numbers` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `top` int(11) NOT NULL,
  `bottom` int(11) NOT NULL,
  `pagebreak` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_documents_box` (
  `id` int(11) NOT NULL,
  `documentID` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `style` longtext COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_engine_elements` (
  `id` int(11) NOT NULL,
  `groupID` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `domname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required` int(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variantable` int(1) UNSIGNED NOT NULL,
  `help` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translatable` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_engine_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variantable` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_licenses` (
  `id` int(11) UNSIGNED NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `license` text COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) UNSIGNED NOT NULL,
  `source` int(11) UNSIGNED NOT NULL,
  `added` date NOT NULL,
  `creation` date DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `active` int(1) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_locales` (
  `id` int(11) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `territory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_log` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value4` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_menu` (
  `id` int(11) NOT NULL,
  `parent` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `onclick` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '0',
  `pluginID` int(11) UNSIGNED DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortcut` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_optin` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum` datetime NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_paymentmeans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `hide` int(1) NOT NULL,
  `additionaldescription` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `debit_percent` double NOT NULL DEFAULT '0',
  `surcharge` double NOT NULL DEFAULT '0',
  `surchargestring` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `esdactive` int(1) NOT NULL,
  `embediframe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hideprospect` int(1) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pluginID` int(11) UNSIGNED DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `mobile_inactive` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_paymentmeans_attributes` (
  `id` int(11) NOT NULL,
  `paymentmeanID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_paymentmeans_countries` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `countryID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_paymentmeans_subshops` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `subshopID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_payment_data` (
  `id` int(11) NOT NULL,
  `payment_mean_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `use_billing_data` int(1) DEFAULT NULL,
  `bankname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iban` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_holder` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_payment_instance` (
  `id` int(11) NOT NULL,
  `payment_mean_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_holder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iban` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(20,4) DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_plugins` (
  `id` int(11) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `translations` text COLLATE utf8_unicode_ci,
  `description_long` mediumtext COLLATE utf8_unicode_ci,
  `active` int(1) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `installation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `refresh_date` datetime DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `support` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changes` mediumtext COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_date` datetime DEFAULT NULL,
  `capability_update` int(1) NOT NULL,
  `capability_install` int(1) NOT NULL,
  `capability_enable` int(1) NOT NULL,
  `update_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capability_secure_uninstall` int(1) NOT NULL DEFAULT '0',
  `in_safe_mode` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_plugin_categories` (
  `id` int(11) NOT NULL,
  `locale` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_pricegroups` (
  `id` int(11) NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_pricegroups_discounts` (
  `id` int(11) NOT NULL,
  `groupID` int(11) NOT NULL,
  `customergroupID` int(11) NOT NULL,
  `discount` double NOT NULL,
  `discountstart` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_rewrite_urls` (
  `id` int(11) UNSIGNED NOT NULL,
  `org_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main` int(1) UNSIGNED NOT NULL,
  `subshopID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_rulesets` (
  `id` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `rule1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rule2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value2` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_sessions` (
  `id` varchar(128) COLLATE utf8_bin NOT NULL,
  `data` mediumblob NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `s_core_sessions_backend` (
  `id` varchar(128) COLLATE utf8_bin NOT NULL,
  `data` mediumblob NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `s_core_shops` (
  `id` int(11) UNSIGNED NOT NULL,
  `main_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hosts` text COLLATE utf8_unicode_ci NOT NULL,
  `secure` int(1) UNSIGNED NOT NULL,
  `template_id` int(11) UNSIGNED DEFAULT NULL,
  `document_template_id` int(11) UNSIGNED DEFAULT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `locale_id` int(11) UNSIGNED DEFAULT NULL,
  `currency_id` int(11) UNSIGNED DEFAULT NULL,
  `customer_group_id` int(11) UNSIGNED DEFAULT NULL,
  `fallback_id` int(11) UNSIGNED DEFAULT NULL,
  `customer_scope` int(1) NOT NULL,
  `default` int(1) UNSIGNED NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_shops_attributes` (
  `id` int(11) NOT NULL,
  `shopID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_shop_currencies` (
  `shop_id` int(11) UNSIGNED NOT NULL,
  `currency_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_shop_pages` (
  `shop_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_snippets` (
  `id` int(11) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shopID` int(11) UNSIGNED NOT NULL,
  `localeID` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `dirty` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_states` (
  `id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `group` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `mail` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_subscribes` (
  `id` int(11) NOT NULL,
  `subscribe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) UNSIGNED NOT NULL,
  `listener` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pluginID` int(11) UNSIGNED DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_tax` (
  `id` int(11) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_tax_rules` (
  `id` int(11) UNSIGNED NOT NULL,
  `areaID` int(11) UNSIGNED DEFAULT NULL,
  `countryID` int(11) UNSIGNED DEFAULT NULL,
  `stateID` int(11) UNSIGNED DEFAULT NULL,
  `groupID` int(11) UNSIGNED NOT NULL,
  `customer_groupID` int(11) UNSIGNED NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_templates` (
  `id` int(11) NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `esi` tinyint(1) UNSIGNED NOT NULL,
  `style_support` tinyint(1) UNSIGNED NOT NULL,
  `emotion` tinyint(1) UNSIGNED NOT NULL,
  `version` int(11) UNSIGNED NOT NULL,
  `plugin_id` int(11) UNSIGNED DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_templates_config_elements` (
  `id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `default_value` text COLLATE utf8_unicode_ci,
  `selection` text COLLATE utf8_unicode_ci,
  `field_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allow_blank` int(1) NOT NULL DEFAULT '1',
  `container_id` int(11) NOT NULL,
  `attributes` text COLLATE utf8_unicode_ci,
  `less_compatible` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_templates_config_layout` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `template_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_templates_config_set` (
  `id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `element_values` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_templates_config_values` (
  `id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_theme_settings` (
  `id` int(11) NOT NULL,
  `compiler_force` int(1) NOT NULL,
  `compiler_create_source_map` int(1) NOT NULL,
  `compiler_compress_css` int(1) NOT NULL,
  `compiler_compress_js` int(1) NOT NULL,
  `force_reload_snippets` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_translations` (
  `id` int(11) NOT NULL,
  `objecttype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `objectdata` longtext COLLATE utf8_unicode_ci NOT NULL,
  `objectkey` int(11) UNSIGNED NOT NULL,
  `objectlanguage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dirty` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_units` (
  `id` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_widgets` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_core_widget_views` (
  `id` int(11) UNSIGNED NOT NULL,
  `widget_id` int(11) UNSIGNED NOT NULL,
  `auth_id` int(11) UNSIGNED NOT NULL,
  `column` int(11) UNSIGNED NOT NULL,
  `position` int(11) UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_crontab` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elementID` int(11) DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `next` datetime DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `interval` int(11) NOT NULL,
  `active` int(1) NOT NULL,
  `disable_on_error` tinyint(1) NOT NULL DEFAULT '1',
  `end` datetime DEFAULT NULL,
  `inform_template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inform_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pluginID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_customer_search_index` (
  `id` int(11) NOT NULL,
  `email` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `accountmode` int(11) DEFAULT NULL,
  `firstlogin` date DEFAULT NULL,
  `newsletter` int(1) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `default_billing_address_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `customernumber` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer_group_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `count_orders` int(11) DEFAULT NULL,
  `invoice_amount_sum` double DEFAULT NULL,
  `invoice_amount_avg` double DEFAULT NULL,
  `invoice_amount_min` double DEFAULT NULL,
  `invoice_amount_max` double DEFAULT NULL,
  `first_order_time` date DEFAULT NULL,
  `last_order_time` date DEFAULT NULL,
  `has_canceled_orders` int(1) DEFAULT NULL,
  `product_avg` double DEFAULT NULL,
  `ordered_at_weekdays` text COLLATE utf8_unicode_ci,
  `ordered_in_shops` text COLLATE utf8_unicode_ci,
  `ordered_on_devices` text COLLATE utf8_unicode_ci,
  `ordered_with_deliveries` text COLLATE utf8_unicode_ci,
  `ordered_with_payments` text COLLATE utf8_unicode_ci,
  `ordered_products` longtext COLLATE utf8_unicode_ci,
  `ordered_products_of_categories` longtext COLLATE utf8_unicode_ci,
  `ordered_products_of_manufacturer` longtext COLLATE utf8_unicode_ci,
  `index_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_customer_streams` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conditions` longtext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `freeze_up` datetime DEFAULT NULL,
  `static` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_customer_streams_attributes` (
  `id` int(11) NOT NULL,
  `streamID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_customer_streams_mapping` (
  `stream_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_banners` (
  `id` int(11) NOT NULL,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `valid_from` datetime DEFAULT '0000-00-00 00:00:00',
  `valid_to` datetime DEFAULT '0000-00-00 00:00:00',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoryID` int(11) NOT NULL DEFAULT '0',
  `extension` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_banners_attributes` (
  `id` int(11) NOT NULL,
  `bannerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_banners_statistics` (
  `id` int(11) NOT NULL,
  `bannerID` int(11) NOT NULL,
  `display_date` date NOT NULL,
  `clicks` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_lastarticles` (
  `id` int(11) NOT NULL,
  `articleID` int(11) UNSIGNED NOT NULL,
  `sessionID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userID` int(11) UNSIGNED NOT NULL,
  `shopID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_partner` (
  `id` int(11) NOT NULL,
  `idcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datum` date NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `web` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profil` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `fix` double NOT NULL DEFAULT '0',
  `percent` double NOT NULL DEFAULT '0',
  `cookielifetime` int(11) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '0',
  `userID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_partner_attributes` (
  `id` int(11) NOT NULL,
  `partnerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_referer` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `referer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_tellafriend` (
  `id` int(11) NOT NULL,
  `datum` date NOT NULL DEFAULT '0000-00-00',
  `recipient` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sender` int(11) NOT NULL DEFAULT '0',
  `confirmed` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_vouchers` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vouchercode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numberofunits` int(11) NOT NULL DEFAULT '0',
  `value` double NOT NULL DEFAULT '0',
  `minimumcharge` double NOT NULL DEFAULT '0',
  `shippingfree` int(1) NOT NULL DEFAULT '0',
  `bindtosupplier` int(11) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `ordercode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modus` int(1) NOT NULL DEFAULT '0',
  `percental` int(1) NOT NULL,
  `numorder` int(11) NOT NULL,
  `customergroup` int(11) DEFAULT NULL,
  `restrictarticles` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `strict` int(1) NOT NULL,
  `subshopID` int(1) DEFAULT NULL,
  `taxconfig` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `customer_stream_ids` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_vouchers_attributes` (
  `id` int(11) NOT NULL,
  `voucherID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emarketing_voucher_codes` (
  `id` int(11) NOT NULL,
  `voucherID` int(11) NOT NULL DEFAULT '0',
  `userID` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cashed` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emotion` (
  `id` int(11) NOT NULL,
  `active` int(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cols` int(11) DEFAULT NULL,
  `cell_spacing` int(11) NOT NULL,
  `cell_height` int(11) NOT NULL,
  `article_height` int(11) NOT NULL,
  `rows` int(11) NOT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `show_listing` int(1) NOT NULL,
  `is_landingpage` int(1) NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0,1,2,3,4',
  `fullscreen` int(11) NOT NULL DEFAULT '0',
  `mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'masonry',
  `position` int(11) DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `preview_id` int(11) DEFAULT NULL,
  `preview_secret` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_stream_ids` longtext COLLATE utf8_unicode_ci,
  `replacement` text COLLATE utf8_unicode_ci,
  `listing_visibility` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'only_start'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emotion_attributes` (
  `id` int(11) NOT NULL,
  `emotionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emotion_categories` (
  `id` int(11) NOT NULL,
  `emotion_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emotion_element` (
  `id` int(11) NOT NULL,
  `emotionID` int(11) NOT NULL,
  `componentID` int(11) NOT NULL,
  `start_row` int(11) NOT NULL,
  `start_col` int(11) NOT NULL,
  `end_row` int(11) NOT NULL,
  `end_col` int(11) NOT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emotion_element_value` (
  `id` int(11) NOT NULL,
  `emotionID` int(11) NOT NULL,
  `elementID` int(11) NOT NULL,
  `componentID` int(11) NOT NULL,
  `fieldID` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emotion_element_viewports` (
  `id` int(11) NOT NULL,
  `elementID` int(11) NOT NULL,
  `emotionID` int(11) NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_row` int(11) NOT NULL,
  `start_col` int(11) NOT NULL,
  `end_row` int(11) NOT NULL,
  `end_col` int(11) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emotion_presets` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `premium` tinyint(1) NOT NULL DEFAULT '0',
  `custom` tinyint(1) NOT NULL DEFAULT '1',
  `thumbnail` longtext COLLATE utf8_unicode_ci,
  `preview` longtext COLLATE utf8_unicode_ci,
  `preset_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `required_plugins` longtext COLLATE utf8_unicode_ci,
  `emotion_translations` text COLLATE utf8_unicode_ci,
  `assets_imported` tinyint(1) NOT NULL DEFAULT '1',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emotion_preset_translations` (
  `id` int(11) UNSIGNED NOT NULL,
  `presetID` int(11) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'de_DE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emotion_shops` (
  `id` int(11) NOT NULL,
  `emotion_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_emotion_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_es_backend_backlog` (
  `id` int(11) NOT NULL,
  `entity` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_es_backlog` (
  `id` int(11) NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_export` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_export` datetime NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show` int(1) NOT NULL DEFAULT '1',
  `count_articles` int(11) NOT NULL,
  `expiry` datetime NOT NULL,
  `interval` int(11) NOT NULL,
  `formatID` int(11) NOT NULL DEFAULT '1',
  `last_change` datetime NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encodingID` int(11) NOT NULL DEFAULT '1',
  `categoryID` int(11) DEFAULT NULL,
  `currencyID` int(11) DEFAULT NULL,
  `customergroupID` int(11) DEFAULT NULL,
  `partnerID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languageID` int(11) DEFAULT NULL,
  `active_filter` int(1) NOT NULL DEFAULT '1',
  `image_filter` int(1) NOT NULL DEFAULT '0',
  `stockmin_filter` int(1) NOT NULL DEFAULT '0',
  `instock_filter` int(11) NOT NULL,
  `price_filter` double NOT NULL,
  `own_filter` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `header` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `footer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `count_filter` int(11) NOT NULL,
  `multishopID` int(11) DEFAULT NULL,
  `variant_export` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `cache_refreshed` datetime DEFAULT NULL,
  `dirty` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_export_articles` (
  `feedID` int(11) NOT NULL,
  `articleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_export_attributes` (
  `id` int(11) NOT NULL,
  `exportID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_export_categories` (
  `feedID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_export_suppliers` (
  `feedID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_filter` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `comparable` int(1) NOT NULL,
  `sortmode` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_filter_articles` (
  `articleID` int(10) UNSIGNED NOT NULL,
  `valueID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_filter_attributes` (
  `id` int(11) NOT NULL,
  `filterID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_filter_options` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filterable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_filter_options_attributes` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_filter_relations` (
  `id` int(11) NOT NULL,
  `groupID` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_filter_values` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_filter_values_attributes` (
  `id` int(11) NOT NULL,
  `valueID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_library_component` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `x_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `convert_function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cls` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pluginID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_library_component_field` (
  `id` int(11) NOT NULL,
  `componentID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `x_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `support_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `help_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `help_text` text COLLATE utf8_unicode_ci NOT NULL,
  `store` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` text COLLATE utf8_unicode_ci NOT NULL,
  `allow_blank` int(1) NOT NULL,
  `translatable` int(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_mail_log` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shop_id` int(10) UNSIGNED DEFAULT NULL,
  `subject` longtext COLLATE utf8_unicode_ci,
  `sender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sent_at` datetime NOT NULL,
  `content_html` longtext COLLATE utf8_unicode_ci,
  `content_text` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_mail_log_contact` (
  `id` int(11) NOT NULL,
  `mail_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_mail_log_document` (
  `log_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_mail_log_recipient` (
  `log_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_media` (
  `id` int(11) NOT NULL,
  `albumID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_media_album` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parentID` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `garbage_collectable` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_media_album_settings` (
  `id` int(11) NOT NULL,
  `albumID` int(11) NOT NULL,
  `create_thumbnails` int(11) NOT NULL,
  `thumbnail_size` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail_high_dpi` int(1) DEFAULT NULL,
  `thumbnail_quality` int(11) DEFAULT NULL,
  `thumbnail_high_dpi_quality` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_media_association` (
  `id` int(11) NOT NULL,
  `mediaID` int(11) NOT NULL,
  `targetType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `targetID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_media_attributes` (
  `id` int(11) NOT NULL,
  `mediaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_multi_edit_backup` (
  `id` int(11) UNSIGNED NOT NULL,
  `filter_string` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Filter string of the backed up change',
  `operation_string` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Operations applied after the backup',
  `items` int(255) UNSIGNED NOT NULL COMMENT 'Number of items affected by the backup',
  `date` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation date',
  `size` int(255) UNSIGNED NOT NULL COMMENT 'Size of the backup file',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Path of the backup file',
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hash of the backup file'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Backups known to the system';

CREATE TABLE `s_multi_edit_filter` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name of the filter',
  `filter_string` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'The actual filter string',
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'User description of the filter',
  `created` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation date',
  `is_favorite` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Did the user mark this filter as favorite?',
  `is_simple` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Can the filter be loaded and modified with the simple editor?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Holds all multi edit filters';

CREATE TABLE `s_multi_edit_queue` (
  `id` int(11) UNSIGNED NOT NULL,
  `resource` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Queued resource (e.g. product)',
  `filter_string` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'The actual filter string',
  `operations` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Operations to apply',
  `items` int(255) UNSIGNED NOT NULL COMMENT 'Initial number of objects in the queue',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'When active, the queue is allowed to be progressed by cronjob',
  `created` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Holds the batch process queue';

CREATE TABLE `s_multi_edit_queue_articles` (
  `id` int(11) UNSIGNED NOT NULL,
  `queue_id` int(11) UNSIGNED NOT NULL COMMENT 'Id of the queue this article belongs to',
  `detail_id` int(11) UNSIGNED NOT NULL COMMENT 'Id of the article detail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Products belonging to a certain queue';

CREATE TABLE `s_order` (
  `id` int(11) NOT NULL,
  `ordernumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `invoice_amount` double NOT NULL DEFAULT '0',
  `invoice_amount_net` double NOT NULL,
  `invoice_shipping` double NOT NULL DEFAULT '0',
  `invoice_shipping_net` double NOT NULL,
  `invoice_shipping_tax_rate` double DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `cleared` int(11) NOT NULL DEFAULT '0',
  `paymentID` int(11) NOT NULL DEFAULT '0',
  `transactionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `customercomment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `internalcomment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `net` int(1) NOT NULL,
  `taxfree` int(11) NOT NULL,
  `partnerID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `temporaryID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `referer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `cleareddate` datetime DEFAULT NULL,
  `trackingcode` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dispatchID` int(11) NOT NULL,
  `currency` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `currencyFactor` double NOT NULL,
  `subshopID` int(11) NOT NULL,
  `remote_addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_proportional_calculation` tinyint(4) NOT NULL DEFAULT '0',
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_attributes` (
  `id` int(11) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `attribute1` text COLLATE utf8_unicode_ci,
  `attribute2` text COLLATE utf8_unicode_ci,
  `attribute3` text COLLATE utf8_unicode_ci,
  `attribute4` text COLLATE utf8_unicode_ci,
  `attribute5` text COLLATE utf8_unicode_ci,
  `attribute6` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_basket` (
  `id` int(11) NOT NULL,
  `sessionID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `articlename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `ordernumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shippingfree` int(1) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `netprice` double NOT NULL DEFAULT '0',
  `tax_rate` double NOT NULL,
  `datum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modus` int(11) NOT NULL DEFAULT '0',
  `esdarticle` int(1) NOT NULL,
  `partnerID` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `lastviewport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `currencyFactor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_basket_attributes` (
  `id` int(11) NOT NULL,
  `basketID` int(11) DEFAULT NULL,
  `attribute1` text COLLATE utf8_unicode_ci,
  `attribute2` text COLLATE utf8_unicode_ci,
  `attribute3` text COLLATE utf8_unicode_ci,
  `attribute4` text COLLATE utf8_unicode_ci,
  `attribute5` text COLLATE utf8_unicode_ci,
  `attribute6` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_basket_signatures` (
  `signature` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `basket` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_billingaddress` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `orderID` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `customernumber` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `countryID` int(11) NOT NULL DEFAULT '0',
  `stateID` int(11) DEFAULT NULL,
  `ustid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_billingaddress_attributes` (
  `id` int(11) NOT NULL,
  `billingID` int(11) DEFAULT NULL,
  `text1` text COLLATE utf8_unicode_ci,
  `text2` text COLLATE utf8_unicode_ci,
  `text3` text COLLATE utf8_unicode_ci,
  `text4` text COLLATE utf8_unicode_ci,
  `text5` text COLLATE utf8_unicode_ci,
  `text6` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_comparisons` (
  `id` int(11) NOT NULL,
  `sessionID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `articlename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `datum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_details` (
  `id` int(11) NOT NULL,
  `orderID` int(11) NOT NULL DEFAULT '0',
  `ordernumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `articleID` int(11) NOT NULL DEFAULT '0',
  `articleordernumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `shipped` int(11) NOT NULL DEFAULT '0',
  `shippedgroup` int(11) NOT NULL DEFAULT '0',
  `releasedate` date DEFAULT NULL,
  `modus` int(11) NOT NULL,
  `esdarticle` int(1) NOT NULL,
  `taxID` int(11) DEFAULT NULL,
  `tax_rate` double NOT NULL,
  `config` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ean` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pack_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `articleDetailID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_details_attributes` (
  `id` int(11) NOT NULL,
  `detailID` int(11) DEFAULT NULL,
  `attribute1` text COLLATE utf8_unicode_ci,
  `attribute2` text COLLATE utf8_unicode_ci,
  `attribute3` text COLLATE utf8_unicode_ci,
  `attribute4` text COLLATE utf8_unicode_ci,
  `attribute5` text COLLATE utf8_unicode_ci,
  `attribute6` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_documents` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `orderID` int(11) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `docID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_documents_attributes` (
  `id` int(11) NOT NULL,
  `documentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_esd` (
  `id` int(11) NOT NULL,
  `serialID` int(255) NOT NULL DEFAULT '0',
  `esdID` int(11) NOT NULL DEFAULT '0',
  `userID` int(11) NOT NULL DEFAULT '0',
  `orderID` int(11) NOT NULL DEFAULT '0',
  `orderdetailsID` int(11) NOT NULL DEFAULT '0',
  `datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_history` (
  `id` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `previous_order_status_id` int(11) DEFAULT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  `previous_payment_status_id` int(11) DEFAULT NULL,
  `payment_status_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `change_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_notes` (
  `id` int(11) NOT NULL,
  `sUniqueID` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `articlename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `ordernumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_number` (
  `id` int(11) NOT NULL,
  `number` int(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_shippingaddress` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `orderID` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryID` int(11) NOT NULL,
  `stateID` int(11) DEFAULT NULL,
  `additional_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_order_shippingaddress_attributes` (
  `id` int(11) NOT NULL,
  `shippingID` int(11) DEFAULT NULL,
  `text1` text COLLATE utf8_unicode_ci,
  `text2` text COLLATE utf8_unicode_ci,
  `text3` text COLLATE utf8_unicode_ci,
  `text4` text COLLATE utf8_unicode_ci,
  `text5` text COLLATE utf8_unicode_ci,
  `text6` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_plugin_recommendations` (
  `id` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `banner_active` int(1) NOT NULL,
  `new_active` int(1) NOT NULL,
  `bought_active` int(1) NOT NULL,
  `supplier_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_plugin_schema_version` (
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `complete_date` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `error_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_plugin_widgets_notes` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_premium_dispatch` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) UNSIGNED NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL,
  `calculation` int(1) UNSIGNED NOT NULL,
  `surcharge_calculation` int(1) UNSIGNED NOT NULL,
  `tax_calculation` int(11) UNSIGNED NOT NULL,
  `shippingfree` decimal(10,2) UNSIGNED DEFAULT NULL,
  `multishopID` int(11) UNSIGNED DEFAULT NULL,
  `customergroupID` int(11) UNSIGNED DEFAULT NULL,
  `bind_shippingfree` int(1) UNSIGNED NOT NULL,
  `bind_time_from` int(11) UNSIGNED DEFAULT NULL,
  `bind_time_to` int(11) UNSIGNED DEFAULT NULL,
  `bind_instock` int(1) UNSIGNED DEFAULT NULL,
  `bind_laststock` int(1) UNSIGNED NOT NULL,
  `bind_weekday_from` int(1) UNSIGNED DEFAULT NULL,
  `bind_weekday_to` int(1) UNSIGNED DEFAULT NULL,
  `bind_weight_from` decimal(10,3) DEFAULT NULL,
  `bind_weight_to` decimal(10,3) DEFAULT NULL,
  `bind_price_from` decimal(10,2) DEFAULT NULL,
  `bind_price_to` decimal(10,2) DEFAULT NULL,
  `bind_sql` mediumtext COLLATE utf8_unicode_ci,
  `status_link` mediumtext COLLATE utf8_unicode_ci,
  `calculation_sql` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_premium_dispatch_attributes` (
  `id` int(11) NOT NULL,
  `dispatchID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_premium_dispatch_categories` (
  `dispatchID` int(11) UNSIGNED NOT NULL,
  `categoryID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_premium_dispatch_countries` (
  `dispatchID` int(11) NOT NULL,
  `countryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_premium_dispatch_holidays` (
  `dispatchID` int(11) UNSIGNED NOT NULL,
  `holidayID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_premium_dispatch_paymentmeans` (
  `dispatchID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_premium_holidays` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calculation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_premium_shippingcosts` (
  `id` int(11) UNSIGNED NOT NULL,
  `from` decimal(10,3) UNSIGNED NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `factor` decimal(10,2) NOT NULL,
  `dispatchID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_product_streams` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conditions` text COLLATE utf8_unicode_ci,
  `type` int(11) DEFAULT NULL,
  `sorting` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `sorting_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_product_streams_articles` (
  `id` int(11) UNSIGNED NOT NULL,
  `stream_id` int(11) UNSIGNED NOT NULL,
  `article_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_product_streams_attributes` (
  `id` int(11) NOT NULL,
  `streamID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_product_streams_selection` (
  `id` int(11) UNSIGNED NOT NULL,
  `stream_id` int(11) UNSIGNED NOT NULL,
  `article_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_schema_version` (
  `version` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `complete_date` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `error_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_search_custom_facet` (
  `id` int(11) UNSIGNED NOT NULL,
  `active` int(1) UNSIGNED NOT NULL,
  `unique_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_in_categories` int(1) UNSIGNED NOT NULL,
  `deletable` int(1) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facet` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_search_custom_sorting` (
  `id` int(11) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) UNSIGNED NOT NULL,
  `display_in_categories` int(1) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL,
  `sortings` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_search_fields` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relevance` int(11) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tableID` int(11) NOT NULL,
  `do_not_split` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_search_index` (
  `keywordID` int(11) NOT NULL,
  `fieldID` int(11) NOT NULL,
  `elementID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_search_keywords` (
  `id` int(11) UNSIGNED NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soundex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_search_tables` (
  `id` int(11) NOT NULL,
  `table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `referenz_table` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_statistics_article_impression` (
  `id` int(11) UNSIGNED NOT NULL,
  `articleId` int(11) UNSIGNED NOT NULL,
  `shopId` int(11) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `impressions` int(11) NOT NULL,
  `deviceType` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'desktop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_statistics_currentusers` (
  `id` int(11) NOT NULL,
  `remoteaddr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime DEFAULT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `deviceType` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'desktop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_statistics_pool` (
  `id` int(11) NOT NULL,
  `remoteaddr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datum` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_statistics_referer` (
  `id` int(11) NOT NULL,
  `datum` date NOT NULL DEFAULT '0000-00-00',
  `referer` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_statistics_search` (
  `id` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `searchterm` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `results` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `s_statistics_visitors` (
  `id` int(11) NOT NULL,
  `shopID` int(11) NOT NULL,
  `datum` date NOT NULL DEFAULT '0000-00-00',
  `pageimpressions` int(11) NOT NULL DEFAULT '0',
  `uniquevisits` int(11) NOT NULL DEFAULT '0',
  `deviceType` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'desktop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_user` (
  `id` int(11) NOT NULL,
  `password` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `encoder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'md5',
  `email` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `accountmode` int(11) NOT NULL,
  `confirmationkey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paymentID` int(11) NOT NULL DEFAULT '0',
  `doubleOptinRegister` tinyint(1) DEFAULT '0',
  `doubleOptinEmailSentDate` datetime DEFAULT NULL,
  `doubleOptinConfirmDate` datetime DEFAULT NULL,
  `firstlogin` date NOT NULL DEFAULT '0000-00-00',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sessionID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newsletter` int(1) NOT NULL DEFAULT '0',
  `validation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `affiliate` int(10) NOT NULL DEFAULT '0',
  `customergroup` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `paymentpreset` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subshopID` int(11) NOT NULL,
  `referer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pricegroupID` int(11) UNSIGNED DEFAULT NULL,
  `internalcomment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `failedlogins` int(11) NOT NULL,
  `lockeduntil` datetime DEFAULT NULL,
  `default_billing_address_id` int(11) DEFAULT NULL,
  `default_shipping_address_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `customernumber` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_token` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `password_change_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `register_opt_in_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_user_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `ustid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_user_addresses_attributes` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `text1` text COLLATE utf8_unicode_ci,
  `text2` text COLLATE utf8_unicode_ci,
  `text3` text COLLATE utf8_unicode_ci,
  `text4` text COLLATE utf8_unicode_ci,
  `text5` text COLLATE utf8_unicode_ci,
  `text6` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_user_attributes` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_user_billingaddress` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `countryID` int(11) NOT NULL DEFAULT '0',
  `stateID` int(11) DEFAULT NULL,
  `ustid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_user_billingaddress_attributes` (
  `id` int(11) NOT NULL,
  `billingID` int(11) DEFAULT NULL,
  `text1` text COLLATE utf8_unicode_ci,
  `text2` text COLLATE utf8_unicode_ci,
  `text3` text COLLATE utf8_unicode_ci,
  `text4` text COLLATE utf8_unicode_ci,
  `text5` text COLLATE utf8_unicode_ci,
  `text6` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_user_shippingaddress` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `countryID` int(11) DEFAULT NULL,
  `stateID` int(11) DEFAULT NULL,
  `additional_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `s_user_shippingaddress_attributes` (
  `id` int(11) NOT NULL,
  `shippingID` int(11) DEFAULT NULL,
  `text1` text COLLATE utf8_unicode_ci,
  `text2` text COLLATE utf8_unicode_ci,
  `text3` text COLLATE utf8_unicode_ci,
  `text4` text COLLATE utf8_unicode_ci,
  `text5` text COLLATE utf8_unicode_ci,
  `text6` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


ALTER TABLE `s_addon_premiums`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_detailID` (`main_detail_id`),
  ADD KEY `datum` (`datum`),
  ADD KEY `name` (`name`),
  ADD KEY `supplierID` (`supplierID`),
  ADD KEY `shippingtime` (`shippingtime`),
  ADD KEY `changetime` (`changetime`),
  ADD KEY `configurator_set_id` (`configurator_set_id`),
  ADD KEY `articles_by_category_sort_release` (`datum`,`id`),
  ADD KEY `articles_by_category_sort_name` (`name`,`id`),
  ADD KEY `product_newcomer` (`active`,`datum`),
  ADD KEY `get_category_filters` (`active`,`filtergroupID`);

ALTER TABLE `s_articles_also_bought_ro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bought_combination` (`article_id`,`related_article_id`),
  ADD KEY `related_article_id` (`related_article_id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `get_also_bought_articles` (`article_id`,`sales`,`related_article_id`);

ALTER TABLE `s_articles_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articledetailsID` (`articledetailsID`);

ALTER TABLE `s_articles_avoid_customergroups`
  ADD UNIQUE KEY `articleID` (`articleID`,`customergroupID`);

ALTER TABLE `s_articles_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articleID` (`articleID`,`categoryID`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `articleID_2` (`articleID`);

ALTER TABLE `s_articles_categories_ro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articleID` (`articleID`,`categoryID`,`parentCategoryID`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `articleID_2` (`articleID`),
  ADD KEY `categoryID_2` (`categoryID`,`parentCategoryID`),
  ADD KEY `category_id_by_article_id` (`articleID`,`id`),
  ADD KEY `elastic_search` (`categoryID`,`articleID`);

ALTER TABLE `s_articles_categories_seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_article` (`shop_id`,`article_id`);

ALTER TABLE `s_articles_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ordernumber` (`ordernumber`),
  ADD KEY `articleID` (`articleID`),
  ADD KEY `releasedate` (`releasedate`),
  ADD KEY `articles_by_category_sort_popularity` (`sales`,`articleID`),
  ADD KEY `get_similar_articles` (`kind`,`sales`);

ALTER TABLE `s_articles_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleID` (`articleID`);

ALTER TABLE `s_articles_downloads_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `downloadID` (`downloadID`);

ALTER TABLE `s_articles_esd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleID` (`articleID`),
  ADD KEY `articledetailsID` (`articledetailsID`);

ALTER TABLE `s_articles_esd_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `esdID` (`esdID`);

ALTER TABLE `s_articles_esd_serials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `esdID` (`esdID`);

ALTER TABLE `s_articles_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikel_id` (`articleID`),
  ADD KEY `article_detail_id` (`article_detail_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `media_id` (`media_id`),
  ADD KEY `article_images_query` (`articleID`,`position`),
  ADD KEY `article_cover_image_query` (`articleID`,`main`,`position`);

ALTER TABLE `s_articles_img_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `imageID` (`imageID`);

ALTER TABLE `s_articles_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hauptid` (`articleID`);

ALTER TABLE `s_articles_information_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `informationID` (`informationID`);

ALTER TABLE `s_articles_notification`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_articles_notification_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notificationID` (`notificationID`);

ALTER TABLE `s_articles_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleID` (`articleID`),
  ADD KEY `articledetailsID` (`articledetailsID`),
  ADD KEY `pricegroup_2` (`pricegroup`,`from`,`articledetailsID`),
  ADD KEY `pricegroup` (`pricegroup`,`to`,`articledetailsID`),
  ADD KEY `product_prices` (`articledetailsID`,`from`);

ALTER TABLE `s_articles_prices_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `priceID` (`priceID`);

ALTER TABLE `s_articles_relationships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articleID` (`articleID`,`relatedarticle`);

ALTER TABLE `s_articles_similar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articleID` (`articleID`,`relatedarticle`);

ALTER TABLE `s_articles_similar_shown_ro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `viewed_combination` (`article_id`,`related_article_id`),
  ADD KEY `viewed` (`viewed`,`related_article_id`,`article_id`);

ALTER TABLE `s_articles_supplier`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_articles_supplier_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplierID` (`supplierID`);

ALTER TABLE `s_articles_top_seller_ro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_id` (`article_id`),
  ADD KEY `sales` (`sales`),
  ADD KEY `listing_query` (`sales`,`article_id`);

ALTER TABLE `s_articles_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articleID` (`articleID`,`languageID`);

ALTER TABLE `s_articles_vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleID` (`articleID`),
  ADD KEY `get_articles_votes` (`articleID`,`active`,`datum`),
  ADD KEY `vote_average` (`points`);

ALTER TABLE `s_article_configurator_dependencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configurator_set_id` (`configurator_set_id`);

ALTER TABLE `s_article_configurator_groups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_article_configurator_groups_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupID` (`groupID`);

ALTER TABLE `s_article_configurator_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`name`);

ALTER TABLE `s_article_configurator_options_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionID` (`optionID`);

ALTER TABLE `s_article_configurator_option_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_id` (`article_id`,`option_id`);

ALTER TABLE `s_article_configurator_price_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configurator_set_id` (`configurator_set_id`);

ALTER TABLE `s_article_configurator_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

ALTER TABLE `s_article_configurator_set_group_relations`
  ADD PRIMARY KEY (`set_id`,`group_id`);

ALTER TABLE `s_article_configurator_set_option_relations`
  ADD PRIMARY KEY (`set_id`,`option_id`);

ALTER TABLE `s_article_configurator_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleID` (`article_id`);

ALTER TABLE `s_article_configurator_templates_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templateID` (`template_id`);

ALTER TABLE `s_article_configurator_template_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricegroup_2` (`customer_group_key`,`from`),
  ADD KEY `pricegroup` (`customer_group_key`,`to`),
  ADD KEY `template_id` (`template_id`);

ALTER TABLE `s_article_configurator_template_prices_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `priceID` (`template_price_id`);

ALTER TABLE `s_article_img_mappings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`);

ALTER TABLE `s_article_img_mapping_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapping_id` (`mapping_id`),
  ADD KEY `option_id` (`option_id`);

ALTER TABLE `s_attribute_configuration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_name` (`table_name`);

ALTER TABLE `s_benchmark_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `shop_id` (`shop_id`);

ALTER TABLE `s_billing_template`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `s_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emotion_get_blog_entry` (`display_date`);

ALTER TABLE `s_blog_assigned_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

ALTER TABLE `s_blog_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

ALTER TABLE `s_blog_comments`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_blog_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogID` (`blog_id`);

ALTER TABLE `s_blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogID` (`blog_id`);

ALTER TABLE `s_campaigns_articles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_campaigns_banner`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_campaigns_containers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_campaigns_groups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_campaigns_html`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_campaigns_links`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_campaigns_logs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_campaigns_mailaddresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupID` (`groupID`),
  ADD KEY `email` (`email`),
  ADD KEY `lastmailing` (`lastmailing`),
  ADD KEY `lastread` (`lastread`);

ALTER TABLE `s_campaigns_maildata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`groupID`);

ALTER TABLE `s_campaigns_mailings`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_campaigns_positions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_campaigns_sender`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_campaigns_templates`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `description` (`description`),
  ADD KEY `position` (`position`),
  ADD KEY `left` (`left`,`right`),
  ADD KEY `level` (`level`),
  ADD KEY `active_query_builder` (`parent`,`position`,`id`),
  ADD KEY `stream_id` (`stream_id`);

ALTER TABLE `s_categories_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoryID` (`categoryID`);

ALTER TABLE `s_categories_avoid_customergroups`
  ADD UNIQUE KEY `articleID` (`categoryID`,`customergroupID`);

ALTER TABLE `s_categories_manual_sorting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_id_product_id` (`category_id`,`product_id`);

ALTER TABLE `s_cms_static`
  ADD PRIMARY KEY (`id`),
  ADD KEY `get_menu` (`position`,`description`);

ALTER TABLE `s_cms_static_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cmsStaticID` (`cmsStaticID`);

ALTER TABLE `s_cms_static_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapping_id` (`mapping_id`);

ALTER TABLE `s_cms_support`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_cms_support_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cmsSupportID` (`cmsSupportID`);

ALTER TABLE `s_cms_support_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`supportID`);

ALTER TABLE `s_content_types`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_acl_privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resourceID` (`resourceID`);

ALTER TABLE `s_core_acl_privilege_requirements`
  ADD PRIMARY KEY (`privilege_id`,`required_privilege_id`);

ALTER TABLE `s_core_acl_resources`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roleID` (`roleID`,`resourceID`,`privilegeID`),
  ADD KEY `resourceID` (`resourceID`),
  ADD KEY `privilegeID` (`privilegeID`);

ALTER TABLE `s_core_auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `s_core_auth_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authID` (`authID`);

ALTER TABLE `s_core_auth_config`
  ADD PRIMARY KEY (`user_id`,`name`);

ALTER TABLE `s_core_auth_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `s_core_config_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form_id_2` (`form_id`,`name`),
  ADD KEY `form_id` (`form_id`);

ALTER TABLE `s_core_config_element_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `element_id` (`element_id`,`locale_id`);

ALTER TABLE `s_core_config_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `plugin_id` (`plugin_id`),
  ADD KEY `parent_id` (`parent_id`);

ALTER TABLE `s_core_config_form_translations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_config_mails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `stateId` (`stateId`);

ALTER TABLE `s_core_config_mails_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mailID` (`mailID`,`mediaID`,`shopID`),
  ADD KEY `mediaID` (`mediaID`),
  ADD KEY `shopID` (`shopID`);

ALTER TABLE `s_core_config_mails_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mailID` (`mailID`);

ALTER TABLE `s_core_config_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `element_id_shop_id` (`element_id`,`shop_id`),
  ADD KEY `shop_id` (`shop_id`),
  ADD KEY `element_id` (`element_id`);

ALTER TABLE `s_core_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areaID` (`areaID`);

ALTER TABLE `s_core_countries_areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

ALTER TABLE `s_core_countries_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countryID` (`countryID`);

ALTER TABLE `s_core_countries_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countryID` (`countryID`);

ALTER TABLE `s_core_countries_states_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stateID` (`stateID`);

ALTER TABLE `s_core_currencies`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_customergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupkey` (`groupkey`);

ALTER TABLE `s_core_customergroups_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customerGroupID` (`customerGroupID`);

ALTER TABLE `s_core_customergroups_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groupID` (`groupID`,`basketdiscountstart`);

ALTER TABLE `s_core_customerpricegroups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_detail_states`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

ALTER TABLE `s_core_documents_box`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_engine_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `databasefield` (`name`);

ALTER TABLE `s_core_engine_groups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_licenses`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_locales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locale` (`locale`);

ALTER TABLE `s_core_log`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`parent`);

ALTER TABLE `s_core_optin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`),
  ADD KEY `datum` (`datum`);

ALTER TABLE `s_core_paymentmeans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `s_core_paymentmeans_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paymentmeanID` (`paymentmeanID`);

ALTER TABLE `s_core_paymentmeans_countries`
  ADD PRIMARY KEY (`paymentID`,`countryID`);

ALTER TABLE `s_core_paymentmeans_subshops`
  ADD PRIMARY KEY (`paymentID`,`subshopID`);

ALTER TABLE `s_core_payment_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_mean_id_2` (`payment_mean_id`,`user_id`),
  ADD KEY `payment_mean_id` (`payment_mean_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `s_core_payment_instance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_mean_id` (`payment_mean_id`),
  ADD KEY `payment_mean_id_2` (`payment_mean_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `s_core_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `s_core_plugin_categories`
  ADD PRIMARY KEY (`id`,`locale`);

ALTER TABLE `s_core_pricegroups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_pricegroups_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groupID` (`groupID`,`customergroupID`,`discountstart`);

ALTER TABLE `s_core_rewrite_urls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`,`subshopID`),
  ADD KEY `org_path` (`org_path`);

ALTER TABLE `s_core_rulesets`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sess_expiry` (`expiry`);

ALTER TABLE `s_core_sessions_backend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sess_expiry` (`expiry`);

ALTER TABLE `s_core_shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_id` (`main_id`),
  ADD KEY `host` (`host`);

ALTER TABLE `s_core_shops_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shopID` (`shopID`);

ALTER TABLE `s_core_shop_currencies`
  ADD PRIMARY KEY (`shop_id`,`currency_id`);

ALTER TABLE `s_core_shop_pages`
  ADD PRIMARY KEY (`shop_id`,`group_id`);

ALTER TABLE `s_core_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `namespace` (`namespace`,`shopID`,`name`,`localeID`);

ALTER TABLE `s_core_states`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_subscribes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribe` (`subscribe`,`type`,`listener`),
  ADD KEY `plugin_namespace_init_storage` (`type`,`subscribe`,`position`),
  ADD KEY `pluginID` (`pluginID`);

ALTER TABLE `s_core_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax` (`tax`);

ALTER TABLE `s_core_tax_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupID` (`groupID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `stateID` (`stateID`),
  ADD KEY `areaID` (`areaID`),
  ADD KEY `tax_rate_by_conditions` (`customer_groupID`,`areaID`,`countryID`,`stateID`);

ALTER TABLE `s_core_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `basename` (`template`);

ALTER TABLE `s_core_templates_config_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `template_id_name` (`template_id`,`name`);

ALTER TABLE `s_core_templates_config_layout`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_templates_config_set`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_id` (`template_id`);

ALTER TABLE `s_core_templates_config_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `element_id_shop_id` (`element_id`,`shop_id`);

ALTER TABLE `s_core_theme_settings`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `objecttype` (`objecttype`,`objectkey`,`objectlanguage`);

ALTER TABLE `s_core_units`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_core_widgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `s_core_widget_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `widget_id` (`widget_id`,`auth_id`);

ALTER TABLE `s_crontab`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `action` (`action`);

ALTER TABLE `s_customer_search_index`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_customer_streams`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_customer_streams_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streamID` (`streamID`);

ALTER TABLE `s_customer_streams_mapping`
  ADD UNIQUE KEY `stream_id` (`stream_id`,`customer_id`);

ALTER TABLE `s_emarketing_banners`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_emarketing_banners_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bannerID` (`bannerID`);

ALTER TABLE `s_emarketing_banners_statistics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `display_date` (`bannerID`,`display_date`),
  ADD KEY `bannerID` (`bannerID`);

ALTER TABLE `s_emarketing_lastarticles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articleID` (`articleID`,`sessionID`,`shopID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `time` (`time`),
  ADD KEY `sessionID` (`sessionID`),
  ADD KEY `get_last_articles` (`sessionID`,`time`);

ALTER TABLE `s_emarketing_partner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcode` (`idcode`);

ALTER TABLE `s_emarketing_partner_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `partnerID` (`partnerID`);

ALTER TABLE `s_emarketing_referer`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_emarketing_tellafriend`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_emarketing_vouchers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modus` (`modus`);

ALTER TABLE `s_emarketing_vouchers_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voucherID` (`voucherID`);

ALTER TABLE `s_emarketing_voucher_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `voucherID_cashed` (`voucherID`,`cashed`);

ALTER TABLE `s_emotion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `preview_id` (`preview_id`);

ALTER TABLE `s_emotion_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emotionID` (`emotionID`);

ALTER TABLE `s_emotion_categories`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_emotion_element`
  ADD PRIMARY KEY (`id`),
  ADD KEY `get_emotion_elements` (`emotionID`,`start_row`,`start_col`);

ALTER TABLE `s_emotion_element_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emotionID` (`elementID`),
  ADD KEY `fieldID` (`fieldID`);

ALTER TABLE `s_emotion_element_viewports`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_emotion_presets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `s_emotion_preset_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `presetID` (`presetID`,`locale`);

ALTER TABLE `s_emotion_shops`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_emotion_templates`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_es_backend_backlog`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_es_backlog`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_export`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_export_articles`
  ADD PRIMARY KEY (`feedID`,`articleID`);

ALTER TABLE `s_export_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exportID` (`exportID`);

ALTER TABLE `s_export_categories`
  ADD PRIMARY KEY (`feedID`,`categoryID`);

ALTER TABLE `s_export_suppliers`
  ADD PRIMARY KEY (`feedID`,`supplierID`);

ALTER TABLE `s_filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `get_sets_query` (`position`);

ALTER TABLE `s_filter_articles`
  ADD PRIMARY KEY (`articleID`,`valueID`),
  ADD KEY `valueID` (`valueID`),
  ADD KEY `articleID` (`articleID`);

ALTER TABLE `s_filter_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filterID` (`filterID`);

ALTER TABLE `s_filter_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `get_options_query` (`name`);

ALTER TABLE `s_filter_options_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionID` (`optionID`);

ALTER TABLE `s_filter_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groupID` (`groupID`,`optionID`),
  ADD KEY `get_set_assigns_query` (`groupID`,`position`),
  ADD KEY `groupID_2` (`groupID`),
  ADD KEY `optionID` (`optionID`);

ALTER TABLE `s_filter_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `optionID` (`optionID`,`value`),
  ADD KEY `get_property_value_by_option_id_query` (`optionID`,`position`),
  ADD KEY `optionID_2` (`optionID`),
  ADD KEY `filters_order_by_position` (`optionID`,`position`,`id`),
  ADD KEY `filters_order_by_numeric` (`optionID`,`id`),
  ADD KEY `filters_order_by_alphanumeric` (`optionID`,`value`,`id`),
  ADD KEY `media_id` (`media_id`);

ALTER TABLE `s_filter_values_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `valueID` (`valueID`);

ALTER TABLE `s_library_component`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_library_component_field`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_mail_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_mail_log_idx_type_id` (`type_id`),
  ADD KEY `s_mail_log_idx_order_id` (`order_id`),
  ADD KEY `s_mail_log_idx_shop_id` (`shop_id`);

ALTER TABLE `s_mail_log_contact`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_mail_log_document`
  ADD PRIMARY KEY (`log_id`,`document_id`),
  ADD KEY `s_mail_log_document_idx_log_id` (`log_id`),
  ADD KEY `s_mail_log_document_idx_document_id` (`document_id`);

ALTER TABLE `s_mail_log_recipient`
  ADD PRIMARY KEY (`log_id`,`contact_id`),
  ADD KEY `s_mail_log_recipient_idx_log_id` (`log_id`),
  ADD KEY `s_mail_log_recipient_idx_contact_id` (`contact_id`);

ALTER TABLE `s_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Album` (`albumID`),
  ADD KEY `path` (`path`);

ALTER TABLE `s_media_album`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_media_album_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `albumID` (`albumID`);

ALTER TABLE `s_media_association`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Media` (`mediaID`),
  ADD KEY `Target` (`targetID`,`targetType`);

ALTER TABLE `s_media_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mediaID` (`mediaID`);

ALTER TABLE `s_multi_edit_backup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `size` (`size`),
  ADD KEY `items` (`items`);

ALTER TABLE `s_multi_edit_filter`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_multi_edit_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_string` (`filter_string`(255)),
  ADD KEY `created` (`created`);

ALTER TABLE `s_multi_edit_queue_articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `queue_id_2` (`queue_id`,`detail_id`),
  ADD KEY `detail_id` (`detail_id`),
  ADD KEY `queue_id` (`queue_id`);

ALTER TABLE `s_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partnerID` (`partnerID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `ordertime` (`ordertime`),
  ADD KEY `cleared` (`cleared`),
  ADD KEY `status` (`status`),
  ADD KEY `paymentID` (`paymentID`),
  ADD KEY `temporaryID` (`temporaryID`),
  ADD KEY `ordernumber` (`ordernumber`),
  ADD KEY `transactionID` (`transactionID`),
  ADD KEY `ordernumber_2` (`ordernumber`,`status`),
  ADD KEY `invoice_amount` (`invoice_amount`);

ALTER TABLE `s_order_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderID` (`orderID`);

ALTER TABLE `s_order_basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessionID` (`sessionID`),
  ADD KEY `articleID` (`articleID`),
  ADD KEY `datum` (`datum`),
  ADD KEY `get_basket` (`sessionID`,`id`,`datum`),
  ADD KEY `ordernumber` (`ordernumber`);

ALTER TABLE `s_order_basket_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `basketID` (`basketID`);

ALTER TABLE `s_order_basket_signatures`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `created_at` (`created_at`);

ALTER TABLE `s_order_billingaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderID` (`orderID`),
  ADD KEY `userid` (`userID`);

ALTER TABLE `s_order_billingaddress_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `billingID` (`billingID`);

ALTER TABLE `s_order_comparisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleID` (`articleID`),
  ADD KEY `sessionID` (`sessionID`),
  ADD KEY `datum` (`datum`);

ALTER TABLE `s_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `articleID` (`articleID`),
  ADD KEY `ordernumber` (`ordernumber`),
  ADD KEY `articleordernumber` (`articleordernumber`);

ALTER TABLE `s_order_details_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `detailID` (`detailID`);

ALTER TABLE `s_order_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `userID` (`userID`);

ALTER TABLE `s_order_documents_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documentID` (`documentID`);

ALTER TABLE `s_order_esd`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`userID`),
  ADD KEY `order` (`orderID`),
  ADD KEY `current_payment_status` (`payment_status_id`),
  ADD KEY `current_order_status` (`order_status_id`),
  ADD KEY `previous_payment_status` (`previous_payment_status_id`),
  ADD KEY `previous_order_status` (`previous_order_status_id`);

ALTER TABLE `s_order_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `basket_count_notes` (`sUniqueID`,`userID`);

ALTER TABLE `s_order_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `s_order_shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderID` (`orderID`),
  ADD KEY `userID` (`userID`);

ALTER TABLE `s_order_shippingaddress_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shippingID` (`shippingID`);

ALTER TABLE `s_plugin_recommendations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoryID_2` (`categoryID`);

ALTER TABLE `s_plugin_schema_version`
  ADD PRIMARY KEY (`plugin_name`,`version`);

ALTER TABLE `s_plugin_widgets_notes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_premium_dispatch`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_premium_dispatch_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dispatchID` (`dispatchID`);

ALTER TABLE `s_premium_dispatch_categories`
  ADD PRIMARY KEY (`dispatchID`,`categoryID`);

ALTER TABLE `s_premium_dispatch_countries`
  ADD PRIMARY KEY (`dispatchID`,`countryID`);

ALTER TABLE `s_premium_dispatch_holidays`
  ADD PRIMARY KEY (`dispatchID`,`holidayID`);

ALTER TABLE `s_premium_dispatch_paymentmeans`
  ADD PRIMARY KEY (`dispatchID`,`paymentID`);

ALTER TABLE `s_premium_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`);

ALTER TABLE `s_premium_shippingcosts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `from` (`from`,`dispatchID`);

ALTER TABLE `s_product_streams`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_product_streams_articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stream_id` (`stream_id`,`article_id`),
  ADD KEY `s_product_streams_articles_fk_article_id` (`article_id`);

ALTER TABLE `s_product_streams_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streamID` (`streamID`);

ALTER TABLE `s_product_streams_selection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stream_id` (`stream_id`,`article_id`),
  ADD KEY `s_product_streams_selection_fk_article_id` (`article_id`);

ALTER TABLE `s_schema_version`
  ADD PRIMARY KEY (`version`);

ALTER TABLE `s_search_custom_facet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_identifier` (`unique_key`),
  ADD KEY `sorting` (`display_in_categories`,`position`);

ALTER TABLE `s_search_custom_sorting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sorting` (`display_in_categories`,`position`);

ALTER TABLE `s_search_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `field` (`field`,`tableID`),
  ADD KEY `tableID` (`tableID`);

ALTER TABLE `s_search_index`
  ADD PRIMARY KEY (`keywordID`,`fieldID`,`elementID`),
  ADD KEY `clean_up_index` (`keywordID`,`fieldID`);

ALTER TABLE `s_search_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyword` (`keyword`),
  ADD KEY `soundex` (`soundex`);

ALTER TABLE `s_search_tables`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_statistics_article_impression`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articleId_2` (`articleId`,`shopId`,`date`,`deviceType`),
  ADD KEY `articleId` (`articleId`);

ALTER TABLE `s_statistics_currentusers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_statistics_pool`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_statistics_referer`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `s_statistics_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `searchterm` (`searchterm`);

ALTER TABLE `s_statistics_visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datum` (`datum`);

ALTER TABLE `s_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `sessionID` (`sessionID`),
  ADD KEY `firstlogin` (`firstlogin`),
  ADD KEY `lastlogin` (`lastlogin`),
  ADD KEY `pricegroupID` (`pricegroupID`),
  ADD KEY `customergroup` (`customergroup`),
  ADD KEY `validation` (`validation`),
  ADD KEY `default_billing_address_id` (`default_billing_address_id`),
  ADD KEY `default_shipping_address_id` (`default_shipping_address_id`);

ALTER TABLE `s_user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `state_id` (`state_id`);

ALTER TABLE `s_user_addresses_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address_id` (`address_id`);

ALTER TABLE `s_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userID` (`userID`);

ALTER TABLE `s_user_billingaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userID` (`userID`);

ALTER TABLE `s_user_billingaddress_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `billingID` (`billingID`);

ALTER TABLE `s_user_shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userID` (`userID`);

ALTER TABLE `s_user_shippingaddress_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shippingID` (`shippingID`);


ALTER TABLE `s_addon_premiums`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_also_bought_ro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_categories_ro`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_categories_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_details`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_downloads`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_downloads_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_esd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_esd_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_esd_serials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_img_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_information_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_notification_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_prices`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_prices_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_similar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_similar_shown_ro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_supplier_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_top_seller_ro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_articles_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_dependencies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_groups_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_options_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_option_relations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_price_variations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_sets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_templates_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_template_prices`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_configurator_template_prices_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_img_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_article_img_mapping_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_attribute_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_billing_template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_blog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_blog_assigned_articles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_blog_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_blog_media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_blog_tags`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_containers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_html`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_mailaddresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_maildata`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_mailings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_sender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_campaigns_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_categories_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_categories_manual_sorting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_cms_static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_cms_static_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_cms_static_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_cms_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_cms_support_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_cms_support_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_content_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_acl_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_acl_resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_acl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_auth_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_auth_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_config_elements`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_config_element_translations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_config_forms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_config_form_translations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_config_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_config_mails_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_config_mails_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_config_values`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_countries_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_countries_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_countries_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_countries_states_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_customergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_customergroups_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_customergroups_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_customerpricegroups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_documents_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_engine_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_engine_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_licenses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_locales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_optin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_paymentmeans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_paymentmeans_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_payment_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_payment_instance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_plugins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_pricegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_pricegroups_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_rewrite_urls`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_rulesets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_shops`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_shops_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_snippets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_subscribes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_tax_rules`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_templates_config_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_templates_config_layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_templates_config_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_templates_config_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_theme_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_widgets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_core_widget_views`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_crontab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_customer_streams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_customer_streams_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_banners_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_banners_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_lastarticles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_partner_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_referer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_tellafriend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_vouchers_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emarketing_voucher_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emotion_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emotion_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emotion_element`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emotion_element_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emotion_element_viewports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emotion_presets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emotion_preset_translations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emotion_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_emotion_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_es_backend_backlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_es_backlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_export`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_export_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_filter_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_filter_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_filter_options_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_filter_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_filter_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_filter_values_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_library_component`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_library_component_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_mail_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_mail_log_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_media_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_media_album_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_media_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_media_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_multi_edit_backup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_multi_edit_filter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_multi_edit_queue`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_multi_edit_queue_articles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_basket_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_billingaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_billingaddress_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_comparisons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_details_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_documents_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_esd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_shippingaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_order_shippingaddress_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_plugin_recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_plugin_widgets_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_premium_dispatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_premium_dispatch_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_premium_holidays`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_premium_shippingcosts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_product_streams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_product_streams_articles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_product_streams_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_product_streams_selection`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_search_custom_facet`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_search_custom_sorting`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_search_fields`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_search_keywords`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_search_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_statistics_article_impression`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_statistics_currentusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_statistics_pool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_statistics_referer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_statistics_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_statistics_visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_user_addresses_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_user_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_user_billingaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_user_billingaddress_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_user_shippingaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `s_user_shippingaddress_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `s_articles_attributes`
  ADD CONSTRAINT `s_articles_attributes_ibfk_2` FOREIGN KEY (`articledetailsID`) REFERENCES `s_articles_details` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_articles_downloads_attributes`
  ADD CONSTRAINT `s_articles_downloads_attributes_ibfk_1` FOREIGN KEY (`downloadID`) REFERENCES `s_articles_downloads` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_articles_esd_attributes`
  ADD CONSTRAINT `s_articles_esd_attributes_ibfk_1` FOREIGN KEY (`esdID`) REFERENCES `s_articles_esd` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_articles_img_attributes`
  ADD CONSTRAINT `s_articles_img_attributes_ibfk_1` FOREIGN KEY (`imageID`) REFERENCES `s_articles_img` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_articles_information_attributes`
  ADD CONSTRAINT `s_articles_information_attributes_ibfk_1` FOREIGN KEY (`informationID`) REFERENCES `s_articles_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_articles_notification_attributes`
  ADD CONSTRAINT `s_articles_notification_attributesibfk_1` FOREIGN KEY (`notificationID`) REFERENCES `s_articles_notification` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_articles_prices_attributes`
  ADD CONSTRAINT `s_articles_prices_attributes_ibfk_1` FOREIGN KEY (`priceID`) REFERENCES `s_articles_prices` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_articles_supplier_attributes`
  ADD CONSTRAINT `s_articles_supplier_attributes_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `s_articles_supplier` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_article_configurator_groups_attributes`
  ADD CONSTRAINT `s_article_configurator_groups_attributes_ibfk_1` FOREIGN KEY (`groupID`) REFERENCES `s_article_configurator_groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_article_configurator_options_attributes`
  ADD CONSTRAINT `s_article_configurator_options_attributes_ibfk_1` FOREIGN KEY (`optionID`) REFERENCES `s_article_configurator_options` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_article_configurator_templates_attributes`
  ADD CONSTRAINT `s_article_configurator_templates_attributes_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `s_article_configurator_templates` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_article_configurator_template_prices_attributes`
  ADD CONSTRAINT `s_article_configurator_template_prices_attributes_ibfk_1` FOREIGN KEY (`template_price_id`) REFERENCES `s_article_configurator_template_prices` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_blog_attributes`
  ADD CONSTRAINT `s_blog_attributes_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `s_blog` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_categories`
  ADD CONSTRAINT `s_categories_fk_stream_id` FOREIGN KEY (`stream_id`) REFERENCES `s_product_streams` (`id`) ON DELETE SET NULL;

ALTER TABLE `s_categories_attributes`
  ADD CONSTRAINT `s_categories_attributes_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `s_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_cms_static_attributes`
  ADD CONSTRAINT `s_cms_static_attributes_ibfk_1` FOREIGN KEY (`cmsStaticID`) REFERENCES `s_cms_static` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_cms_support_attributes`
  ADD CONSTRAINT `s_cms_support_attributes_ibfk_1` FOREIGN KEY (`cmsSupportID`) REFERENCES `s_cms_support` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_core_auth_attributes`
  ADD CONSTRAINT `s_core_auth_attributes_ibfk_1` FOREIGN KEY (`authID`) REFERENCES `s_core_auth` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_core_config_mails`
  ADD CONSTRAINT `s_core_config_mails_ibfk_1` FOREIGN KEY (`stateId`) REFERENCES `s_core_states` (`id`);

ALTER TABLE `s_core_config_mails_attributes`
  ADD CONSTRAINT `s_core_config_mails_attributes_ibfk_1` FOREIGN KEY (`mailID`) REFERENCES `s_core_config_mails` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_core_countries_attributes`
  ADD CONSTRAINT `s_core_countries_attributes_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `s_core_countries` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_core_countries_states_attributes`
  ADD CONSTRAINT `s_core_countries_states_attributes_ibfk_1` FOREIGN KEY (`stateID`) REFERENCES `s_core_countries_states` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_core_customergroups_attributes`
  ADD CONSTRAINT `s_core_customergroups_attributes_ibfk_1` FOREIGN KEY (`customerGroupID`) REFERENCES `s_core_customergroups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_core_paymentmeans_attributes`
  ADD CONSTRAINT `s_core_paymentmeans_attributes_ibfk_1` FOREIGN KEY (`paymentmeanID`) REFERENCES `s_core_paymentmeans` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_core_shops_attributes`
  ADD CONSTRAINT `FK__s_core_shops` FOREIGN KEY (`shopID`) REFERENCES `s_core_shops` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_customer_streams_attributes`
  ADD CONSTRAINT `s_customer_streams_attributes_ibfk_1` FOREIGN KEY (`streamID`) REFERENCES `s_customer_streams` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_emarketing_banners_attributes`
  ADD CONSTRAINT `s_emarketing_banners_attributes_ibfk_1` FOREIGN KEY (`bannerID`) REFERENCES `s_emarketing_banners` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_emarketing_partner_attributes`
  ADD CONSTRAINT `FK__s_emarketing_partner` FOREIGN KEY (`partnerID`) REFERENCES `s_emarketing_partner` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_emarketing_vouchers_attributes`
  ADD CONSTRAINT `s_emarketing_vouchers_attributes_ibfk_1` FOREIGN KEY (`voucherID`) REFERENCES `s_emarketing_vouchers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_emotion_attributes`
  ADD CONSTRAINT `s_emotion_attributes_ibfk_1` FOREIGN KEY (`emotionID`) REFERENCES `s_emotion` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_emotion_preset_translations`
  ADD CONSTRAINT `s_emotion_preset_translations_preset_fk` FOREIGN KEY (`presetID`) REFERENCES `s_emotion_presets` (`id`) ON DELETE CASCADE;

ALTER TABLE `s_export_attributes`
  ADD CONSTRAINT `s_export_attributes_ibfk_1` FOREIGN KEY (`exportID`) REFERENCES `s_export` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_filter_attributes`
  ADD CONSTRAINT `s_filter_attributes_ibfk_1` FOREIGN KEY (`filterID`) REFERENCES `s_filter` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_filter_options_attributes`
  ADD CONSTRAINT `s_filter_options_attributes_ibfk_1` FOREIGN KEY (`optionID`) REFERENCES `s_filter_options` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_filter_values_attributes`
  ADD CONSTRAINT `s_filter_values_attributes_ibfk_1` FOREIGN KEY (`valueID`) REFERENCES `s_filter_values` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_mail_log`
  ADD CONSTRAINT `s_mail_log_fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `s_order` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `s_mail_log_fk_shop_id` FOREIGN KEY (`shop_id`) REFERENCES `s_core_shops` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `s_mail_log_fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `s_core_config_mails` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

ALTER TABLE `s_mail_log_document`
  ADD CONSTRAINT `s_mail_log_document_fk_document_id` FOREIGN KEY (`document_id`) REFERENCES `s_order_documents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `s_mail_log_document_fk_log_id` FOREIGN KEY (`log_id`) REFERENCES `s_mail_log` (`id`) ON DELETE CASCADE;

ALTER TABLE `s_mail_log_recipient`
  ADD CONSTRAINT `s_mail_log_recipient_fk_contact_id` FOREIGN KEY (`contact_id`) REFERENCES `s_mail_log_contact` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `s_mail_log_recipient_fk_log_id` FOREIGN KEY (`log_id`) REFERENCES `s_mail_log` (`id`) ON DELETE CASCADE;

ALTER TABLE `s_media_attributes`
  ADD CONSTRAINT `s_media_attributes_ibfk_1` FOREIGN KEY (`mediaID`) REFERENCES `s_media` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_multi_edit_queue_articles`
  ADD CONSTRAINT `s_multi_edit_queue_articles_ibfk_1` FOREIGN KEY (`detail_id`) REFERENCES `s_articles_details` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `s_multi_edit_queue_articles_ibfk_2` FOREIGN KEY (`queue_id`) REFERENCES `s_multi_edit_queue` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_order_attributes`
  ADD CONSTRAINT `s_order_attributes_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `s_order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_order_basket_attributes`
  ADD CONSTRAINT `s_order_basket_attributes_ibfk_2` FOREIGN KEY (`basketID`) REFERENCES `s_order_basket` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_order_billingaddress_attributes`
  ADD CONSTRAINT `s_order_billingaddress_attributes_ibfk_2` FOREIGN KEY (`billingID`) REFERENCES `s_order_billingaddress` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_order_details`
  ADD CONSTRAINT `s_order_details_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `s_order` (`id`) ON DELETE CASCADE;

ALTER TABLE `s_order_details_attributes`
  ADD CONSTRAINT `s_order_details_attributes_ibfk_1` FOREIGN KEY (`detailID`) REFERENCES `s_order_details` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_order_documents_attributes`
  ADD CONSTRAINT `s_order_documents_attributes_ibfk_1` FOREIGN KEY (`documentID`) REFERENCES `s_order_documents` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_order_shippingaddress_attributes`
  ADD CONSTRAINT `s_order_shippingaddress_attributes_ibfk_1` FOREIGN KEY (`shippingID`) REFERENCES `s_order_shippingaddress` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_premium_dispatch_attributes`
  ADD CONSTRAINT `s_premium_dispatch_attributes_ibfk_1` FOREIGN KEY (`dispatchID`) REFERENCES `s_premium_dispatch` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_product_streams_articles`
  ADD CONSTRAINT `s_product_streams_articles_fk_article_id` FOREIGN KEY (`article_id`) REFERENCES `s_articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `s_product_streams_articles_fk_stream_id` FOREIGN KEY (`stream_id`) REFERENCES `s_product_streams` (`id`) ON DELETE CASCADE;

ALTER TABLE `s_product_streams_attributes`
  ADD CONSTRAINT `s_product_streams_attributes_ibfk_1` FOREIGN KEY (`streamID`) REFERENCES `s_product_streams` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_product_streams_selection`
  ADD CONSTRAINT `s_product_streams_selection_fk_article_id` FOREIGN KEY (`article_id`) REFERENCES `s_articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `s_product_streams_selection_fk_stream_id` FOREIGN KEY (`stream_id`) REFERENCES `s_product_streams` (`id`) ON DELETE CASCADE;

ALTER TABLE `s_user_addresses`
  ADD CONSTRAINT `s_user_addresses_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `s_core_countries` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `s_user_addresses_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `s_core_countries_states` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `s_user_addresses_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `s_user_addresses_attributes`
  ADD CONSTRAINT `s_user_addresses_attributes_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `s_user_addresses` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_user_attributes`
  ADD CONSTRAINT `s_user_attributes_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_user_billingaddress_attributes`
  ADD CONSTRAINT `s_user_billingaddress_attributes_ibfk_1` FOREIGN KEY (`billingID`) REFERENCES `s_user_billingaddress` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE `s_user_shippingaddress_attributes`
  ADD CONSTRAINT `s_user_shippingaddress_attributes_ibfk_1` FOREIGN KEY (`shippingID`) REFERENCES `s_user_shippingaddress` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
