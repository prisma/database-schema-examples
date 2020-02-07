SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `lAfOL_batch` (
  `bid` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key: Unique batch ID.',
  `token` varchar(64) CHARACTER SET ascii NOT NULL COMMENT 'A string token generated against the current user''s session id and the batch id, used to ensure that only the user who submitted the batch can effectively access it.',
  `timestamp` int(11) NOT NULL COMMENT 'A Unix timestamp indicating when this batch was submitted for processing. Stale batches are purged at cron time.',
  `batch` longblob COMMENT 'A serialized array containing the processing data for the batch.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores details about batches (processes that run in…';

CREATE TABLE `lAfOL_block_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for block_content entities.';

CREATE TABLE `lAfOL_block_content_field_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `reusable` tinyint(4) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for block_content entities.';

CREATE TABLE `lAfOL_block_content_field_revision` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision data table for block_content entities.';

CREATE TABLE `lAfOL_block_content_revision` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `revision_user` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `revision_created` int(11) DEFAULT NULL,
  `revision_log` longtext,
  `revision_default` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for block_content entities.';

CREATE TABLE `lAfOL_block_content_revision__body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext NOT NULL,
  `body_summary` longtext,
  `body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for block_content field body.';

CREATE TABLE `lAfOL_block_content__body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext NOT NULL,
  `body_summary` longtext,
  `body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for block_content field body.';

CREATE TABLE `lAfOL_cachetags` (
  `tag` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Namespace-prefixed tag string.',
  `invalidations` int(11) NOT NULL DEFAULT '0' COMMENT 'Number incremented when the tag is invalidated.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cache table for tracking cache tag invalidations.';

CREATE TABLE `lAfOL_cache_bootstrap` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_cache_config` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_cache_container` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_cache_data` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_cache_default` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_cache_discovery` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_cache_dynamic_page_cache` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_cache_entity` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_cache_menu` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_cache_page` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_cache_render` (
  `cid` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or -1 for never.',
  `created` decimal(14,3) NOT NULL DEFAULT '0.000' COMMENT 'A timestamp with millisecond precision indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  `tags` longtext COMMENT 'Space-separated list of cache tags for this entry.',
  `checksum` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The tag invalidation checksum when this entry was saved.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Storage for the cache API.';

CREATE TABLE `lAfOL_comment` (
  `cid` int(10) UNSIGNED NOT NULL,
  `comment_type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for comment entities.';

CREATE TABLE `lAfOL_comment_entity_statistics` (
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The entity_id of the entity for which the statistics are compiled.',
  `entity_type` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT 'node' COMMENT 'The entity_type of the entity to which this comment is a reply.',
  `field_name` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field_name of the field that was used to add this comment.',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT 'The lAfOL_comment.cid of the last comment.',
  `last_comment_timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp of the last comment that was posted within this node, from lAfOL_comment.changed.',
  `last_comment_name` varchar(60) DEFAULT NULL COMMENT 'The name of the latest author to post a comment on this node, from lAfOL_comment.name.',
  `last_comment_uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The user ID of the latest author to post a comment on this node, from lAfOL_comment.uid.',
  `comment_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The total number of comments on this entity.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maintains statistics of entity and comments posts to show …';

CREATE TABLE `lAfOL_comment_field_data` (
  `cid` int(10) UNSIGNED NOT NULL,
  `comment_type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the target entity.',
  `pid` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `entity_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `subject` varchar(64) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  `hostname` varchar(128) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `changed` int(11) DEFAULT NULL,
  `thread` varchar(255) NOT NULL,
  `entity_type` varchar(32) CHARACTER SET ascii NOT NULL,
  `field_name` varchar(32) CHARACTER SET ascii NOT NULL,
  `default_langcode` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for comment entities.';

CREATE TABLE `lAfOL_comment__comment_body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to, which for an unversioned entity type is the same as the entity id',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `comment_body_value` longtext NOT NULL,
  `comment_body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for comment field comment_body.';

CREATE TABLE `lAfOL_config` (
  `collection` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Primary Key: Config object collection.',
  `name` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Primary Key: Config object name.',
  `data` longblob COMMENT 'A serialized configuration object data.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for configuration data.';

CREATE TABLE `lAfOL_file_managed` (
  `fid` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `uid` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `filename` varchar(255) DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `filemime` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `filesize` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `changed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for file entities.';

CREATE TABLE `lAfOL_file_usage` (
  `fid` int(10) UNSIGNED NOT NULL COMMENT 'File ID.',
  `module` varchar(50) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The name of the module that is using the file.',
  `type` varchar(64) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The name of the object type in which the file is used.',
  `id` varchar(64) CHARACTER SET ascii NOT NULL DEFAULT '0' COMMENT 'The primary key of the object using the file.',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The number of times this file is used by this object.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Track where a file is used.';

CREATE TABLE `lAfOL_history` (
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT 'The lAfOL_users.uid that read the lAfOL_node nid.',
  `nid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The lAfOL_node.nid that was read.',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp at which the read occurred.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='A record of which lAfOL_users have read which…';

CREATE TABLE `lAfOL_key_value` (
  `collection` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'A named collection of key and value pairs.',
  `name` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The key of the key-value pair. As KEY is a SQL reserved keyword, name was chosen instead.',
  `value` longblob NOT NULL COMMENT 'The value.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Generic key-value storage table. See the state system for…';

CREATE TABLE `lAfOL_key_value_expire` (
  `collection` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'A named collection of key and value pairs.',
  `name` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The key of the key/value pair.',
  `value` longblob NOT NULL COMMENT 'The value of the key/value pair.',
  `expire` int(11) NOT NULL DEFAULT '2147483647' COMMENT 'The time since Unix epoch in seconds when this item expires. Defaults to the maximum possible time.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Generic key/value storage table with an expiration.';

CREATE TABLE `lAfOL_locales_location` (
  `lid` int(11) NOT NULL COMMENT 'Unique identifier of this location.',
  `sid` int(11) NOT NULL COMMENT 'Unique identifier of this string.',
  `type` varchar(50) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The location type (file, config, path, etc).',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Type dependent location information (file name, path, etc).',
  `version` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'none' COMMENT 'Version of Drupal where the location was found.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Location information for source strings.';

CREATE TABLE `lAfOL_locales_source` (
  `lid` int(11) NOT NULL COMMENT 'Unique identifier of this string.',
  `source` blob NOT NULL COMMENT 'The original string in English.',
  `context` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The context this string applies to.',
  `version` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT 'none' COMMENT 'Version of Drupal where the string was last used (for locales optimization).'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='List of English source strings.';

CREATE TABLE `lAfOL_locales_target` (
  `lid` int(11) NOT NULL DEFAULT '0' COMMENT 'Source string ID. References lAfOL_locales_source.lid.',
  `translation` blob NOT NULL COMMENT 'Translation string value in this language.',
  `language` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Language code. References lAfOL_language.langcode.',
  `customized` int(11) NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether the translation is custom to this site.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores translated versions of strings.';

CREATE TABLE `lAfOL_locale_file` (
  `project` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'A unique short name to identify the project the file belongs to.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Language code of this translation. References lAfOL_language.langcode.',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT 'Filename of the imported file.',
  `version` varchar(128) NOT NULL DEFAULT '' COMMENT 'Version tag of the imported file.',
  `uri` varchar(255) NOT NULL DEFAULT '' COMMENT 'URI of the remote file, the resulting local file or the locally imported file.',
  `timestamp` int(11) DEFAULT '0' COMMENT 'Unix timestamp of the imported file.',
  `last_checked` int(11) DEFAULT '0' COMMENT 'Unix timestamp of the last time this translation was confirmed to be the most recent release available.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='File import status information for interface translation…';

CREATE TABLE `lAfOL_menu_link_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED DEFAULT NULL,
  `bundle` varchar(32) CHARACTER SET ascii NOT NULL,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for menu_link_content entities.';

CREATE TABLE `lAfOL_menu_link_content_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `bundle` varchar(32) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `link__uri` varchar(2048) DEFAULT NULL COMMENT 'The URI of the link.',
  `link__title` varchar(255) DEFAULT NULL COMMENT 'The link text.',
  `link__options` longblob COMMENT 'Serialized array of options for the link.',
  `external` tinyint(4) DEFAULT NULL,
  `rediscover` tinyint(4) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `expanded` tinyint(4) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for menu_link_content entities.';

CREATE TABLE `lAfOL_menu_link_content_field_revision` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link__uri` varchar(2048) DEFAULT NULL COMMENT 'The URI of the link.',
  `link__title` varchar(255) DEFAULT NULL COMMENT 'The link text.',
  `link__options` longblob COMMENT 'Serialized array of options for the link.',
  `external` tinyint(4) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision data table for menu_link_content entities.';

CREATE TABLE `lAfOL_menu_link_content_revision` (
  `id` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `revision_user` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `revision_created` int(11) DEFAULT NULL,
  `revision_log_message` longtext,
  `revision_default` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for menu_link_content entities.';

CREATE TABLE `lAfOL_menu_tree` (
  `menu_name` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The menu name. All links with the same menu name (such as ''tools'') are part of the same menu.',
  `mlid` int(10) UNSIGNED NOT NULL COMMENT 'The menu link ID (mlid) is the integer primary key.',
  `id` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'Unique machine name: the plugin ID.',
  `parent` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The plugin ID for the parent of this link.',
  `route_name` varchar(255) CHARACTER SET ascii DEFAULT NULL COMMENT 'The machine name of a defined Symfony Route this menu item represents.',
  `route_param_key` varchar(255) DEFAULT NULL COMMENT 'An encoded string of route parameters for loading by route.',
  `route_parameters` longblob COMMENT 'Serialized array of route parameters of this menu link.',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'The external path this link points to (when not using a route).',
  `title` longblob COMMENT 'The serialized title for the link. May be a TranslatableMarkup.',
  `description` longblob COMMENT 'The serialized description of this link - used for admin pages and title attribute. May be a TranslatableMarkup.',
  `class` text COMMENT 'The class for this link plugin.',
  `options` longblob COMMENT 'A serialized array of URL options, such as a query string or HTML attributes.',
  `provider` varchar(50) CHARACTER SET ascii NOT NULL DEFAULT 'system' COMMENT 'The name of the module that generated this link.',
  `enabled` smallint(6) NOT NULL DEFAULT '1' COMMENT 'A flag for whether the link should be rendered in menus. (0 = a disabled menu item that may be shown on admin screens, 1 = a normal, visible link)',
  `discovered` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag for whether the link was discovered, so can be purged on rebuild',
  `expanded` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Flag for whether this link should be rendered as expanded in menus - expanded links always have their child links displayed, instead of only when the link is in the active trail (1 = expanded, 0 = not expanded)',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT 'Link weight among links in the same menu at the same depth.',
  `metadata` longblob COMMENT 'A serialized array of data that may be used by the plugin instance.',
  `has_children` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Flag indicating whether any enabled links have this link as a parent (1 = enabled children exist, 0 = no enabled children).',
  `depth` smallint(6) NOT NULL DEFAULT '0' COMMENT 'The depth relative to the top level. A link with empty parent will have depth == 1.',
  `p1` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The first mlid in the materialized path. If N = depth, then pN must equal the mlid. If depth > 1 then p(N-1) must equal the parent link mlid. All pX where X > depth must equal zero. The columns p1 .. p9 are also called the parents.',
  `p2` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The second mlid in the materialized path. See p1.',
  `p3` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The third mlid in the materialized path. See p1.',
  `p4` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The fourth mlid in the materialized path. See p1.',
  `p5` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The fifth mlid in the materialized path. See p1.',
  `p6` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The sixth mlid in the materialized path. See p1.',
  `p7` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The seventh mlid in the materialized path. See p1.',
  `p8` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The eighth mlid in the materialized path. See p1.',
  `p9` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The ninth mlid in the materialized path. See p1.',
  `form_class` varchar(255) DEFAULT NULL COMMENT 'meh'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Contains the menu tree hierarchy.';

CREATE TABLE `lAfOL_node` (
  `nid` int(10) UNSIGNED NOT NULL,
  `vid` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for node entities.';

CREATE TABLE `lAfOL_node_access` (
  `nid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The lAfOL_node.nid this record affects.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The lAfOL_language.langcode of this node.',
  `fallback` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Boolean indicating whether this record should be used as a fallback if a language condition is not provided.',
  `gid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The grant ID a user must possess in the specified realm to gain this row''s privileges on the node.',
  `realm` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The realm in which the user must possess the grant ID. Modules can define one or more realms by implementing hook_node_grants().',
  `grant_view` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether a user with the realm/grant pair can view this node.',
  `grant_update` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether a user with the realm/grant pair can edit this node.',
  `grant_delete` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether a user with the realm/grant pair can delete this node.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Identifies which realm/grant pairs a user must possess in…';

CREATE TABLE `lAfOL_node_field_data` (
  `nid` int(10) UNSIGNED NOT NULL,
  `vid` int(10) UNSIGNED NOT NULL,
  `type` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the target entity.',
  `title` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `promote` tinyint(4) NOT NULL,
  `sticky` tinyint(4) NOT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for node entities.';

CREATE TABLE `lAfOL_node_field_revision` (
  `nid` int(10) UNSIGNED NOT NULL,
  `vid` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the target entity.',
  `title` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `promote` tinyint(4) DEFAULT NULL,
  `sticky` tinyint(4) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision data table for node entities.';

CREATE TABLE `lAfOL_node_revision` (
  `nid` int(10) UNSIGNED NOT NULL,
  `vid` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `revision_uid` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `revision_timestamp` int(11) DEFAULT NULL,
  `revision_log` longtext,
  `revision_default` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for node entities.';

CREATE TABLE `lAfOL_node_revision__body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext NOT NULL,
  `body_summary` longtext,
  `body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field body.';

CREATE TABLE `lAfOL_node_revision__comment` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `comment_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Whether comments are allowed on this entity: 0 = no, 1 = closed (read only), 2 = open (read/write).'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field comment.';

CREATE TABLE `lAfOL_node_revision__field_image` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_image_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the file entity.',
  `field_image_alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `field_image_title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `field_image_width` int(10) UNSIGNED DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `field_image_height` int(10) UNSIGNED DEFAULT NULL COMMENT 'The height of the image in pixels.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field field_image.';

CREATE TABLE `lAfOL_node_revision__field_tags` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_tags_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the target entity.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for node field field_tags.';

CREATE TABLE `lAfOL_node__body` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `body_value` longtext NOT NULL,
  `body_summary` longtext,
  `body_format` varchar(255) CHARACTER SET ascii DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for node field body.';

CREATE TABLE `lAfOL_node__comment` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `comment_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Whether comments are allowed on this entity: 0 = no, 1 = closed (read only), 2 = open (read/write).'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for node field comment.';

CREATE TABLE `lAfOL_node__field_image` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_image_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the file entity.',
  `field_image_alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `field_image_title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `field_image_width` int(10) UNSIGNED DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `field_image_height` int(10) UNSIGNED DEFAULT NULL COMMENT 'The height of the image in pixels.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for node field field_image.';

CREATE TABLE `lAfOL_node__field_tags` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_tags_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the target entity.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for node field field_tags.';

CREATE TABLE `lAfOL_queue` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key: Unique item ID.',
  `name` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The queue name.',
  `data` longblob COMMENT 'The arbitrary data for the item.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'Timestamp when the claim lease expires on the item.',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'Timestamp when the item was created.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores items in queues.';

CREATE TABLE `lAfOL_router` (
  `name` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Primary Key: Machine name of this route',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'The path for this URI',
  `pattern_outline` varchar(255) NOT NULL DEFAULT '' COMMENT 'The pattern',
  `fit` int(11) NOT NULL DEFAULT '0' COMMENT 'A numeric representation of how specific the path is.',
  `route` longblob COMMENT 'A serialized Route object',
  `number_parts` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Number of parts in this router path.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maps paths to various callbacks (access, page and title)';

CREATE TABLE `lAfOL_search_dataset` (
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Search item ID, e.g. node ID for nodes.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The lAfOL_languages.langcode of the item variant.',
  `type` varchar(64) CHARACTER SET ascii NOT NULL COMMENT 'Type of item, e.g. node.',
  `data` longtext NOT NULL COMMENT 'List of space-separated words from the item.',
  `reindex` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set to force node reindexing.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores items that will be searched.';

CREATE TABLE `lAfOL_search_index` (
  `word` varchar(50) NOT NULL DEFAULT '' COMMENT 'The lAfOL_search_total.word that is associated with the search item.',
  `sid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The lAfOL_search_dataset.sid of the searchable item to which the word belongs.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The lAfOL_languages.langcode of the item variant.',
  `type` varchar(64) CHARACTER SET ascii NOT NULL COMMENT 'The lAfOL_search_dataset.type of the searchable item to which the word belongs.',
  `score` float DEFAULT NULL COMMENT 'The numeric score of the word, higher being more important.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores the search index, associating words, items and…';

CREATE TABLE `lAfOL_search_total` (
  `word` varchar(50) NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique word in the search index.',
  `count` float DEFAULT NULL COMMENT 'The count of the word in the index using Zipf''s law to equalize the probability distribution.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores search totals for words.';

CREATE TABLE `lAfOL_semaphore` (
  `name` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique name.',
  `value` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'A value for the semaphore.',
  `expire` double NOT NULL COMMENT 'A Unix timestamp with microseconds indicating when the semaphore should expire.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table for holding semaphores, locks, flags, etc. that…';

CREATE TABLE `lAfOL_sequences` (
  `value` int(10) UNSIGNED NOT NULL COMMENT 'The value of the sequence.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores IDs.';

CREATE TABLE `lAfOL_sessions` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT 'The lAfOL_users.uid corresponding to a session, or 0 for anonymous user.',
  `sid` varchar(128) CHARACTER SET ascii NOT NULL COMMENT 'A session ID (hashed). The value is generated by Drupal''s session handlers.',
  `hostname` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The IP address that last used this session ID (sid).',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp when this session last requested a page. Old records are purged by PHP automatically.',
  `session` longblob COMMENT 'The serialized contents of $_SESSION, an array of name/value pairs that persists across page requests by this session ID. Drupal loads $_SESSION from here at the start of each request and saves it at the end.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Drupal''s session handlers read and write into the sessions…';

CREATE TABLE `lAfOL_shortcut` (
  `id` int(10) UNSIGNED NOT NULL,
  `shortcut_set` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for shortcut entities.';

CREATE TABLE `lAfOL_shortcut_field_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `shortcut_set` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `link__uri` varchar(2048) DEFAULT NULL COMMENT 'The URI of the link.',
  `link__title` varchar(255) DEFAULT NULL COMMENT 'The link text.',
  `link__options` longblob COMMENT 'Serialized array of options for the link.',
  `default_langcode` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for shortcut entities.';

CREATE TABLE `lAfOL_shortcut_set_users` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The lAfOL_users.uid for this set.',
  `set_name` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The lAfOL_shortcut_set.set_name that will be displayed for this user.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maps users to shortcut sets.';

CREATE TABLE `lAfOL_taxonomy_index` (
  `nid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The lAfOL_node.nid this record tracks.',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The term ID.',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT 'Boolean indicating whether the node is published (visible to non-administrators).',
  `sticky` tinyint(4) DEFAULT '0' COMMENT 'Boolean indicating whether the node is sticky.',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp when the node was created.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maintains denormalized information about node/term…';

CREATE TABLE `lAfOL_taxonomy_term_data` (
  `tid` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED DEFAULT NULL,
  `vid` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for taxonomy_term entities.';

CREATE TABLE `lAfOL_taxonomy_term_field_data` (
  `tid` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `vid` varchar(32) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description__value` longtext,
  `description__format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for taxonomy_term entities.';

CREATE TABLE `lAfOL_taxonomy_term_field_revision` (
  `tid` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `status` tinyint(4) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description__value` longtext,
  `description__format` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `changed` int(11) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL,
  `revision_translation_affected` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision data table for taxonomy_term entities.';

CREATE TABLE `lAfOL_taxonomy_term_revision` (
  `tid` int(10) UNSIGNED NOT NULL,
  `revision_id` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `revision_user` int(10) UNSIGNED DEFAULT NULL COMMENT 'The ID of the target entity.',
  `revision_created` int(11) DEFAULT NULL,
  `revision_log_message` longtext,
  `revision_default` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for taxonomy_term entities.';

CREATE TABLE `lAfOL_taxonomy_term_revision__parent` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `parent_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the target entity.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Revision archive storage for taxonomy_term field parent.';

CREATE TABLE `lAfOL_taxonomy_term__parent` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `parent_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the target entity.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for taxonomy_term field parent.';

CREATE TABLE `lAfOL_url_alias` (
  `pid` int(10) UNSIGNED NOT NULL COMMENT 'A unique path alias identifier.',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT 'The Drupal path this alias is for. e.g. node/12.',
  `alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'The alias for this path. e.g. title-of-the-story.',
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code this alias is for. if ''und'', the alias will be used for unknown languages. Each Drupal path can have an alias for each supported language.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='A list of URL aliases for Drupal paths. a user may visit…';

CREATE TABLE `lAfOL_users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The base table for user entities.';

CREATE TABLE `lAfOL_users_data` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The lAfOL_users.uid this record affects.',
  `module` varchar(50) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The name of the module declaring the variable.',
  `name` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The identifier of the data.',
  `value` longblob COMMENT 'The value.',
  `serialized` tinyint(3) UNSIGNED DEFAULT '0' COMMENT 'Whether value is serialized.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores module data as key/value pairs per user.';

CREATE TABLE `lAfOL_users_field_data` (
  `uid` int(10) UNSIGNED NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `preferred_langcode` varchar(12) CHARACTER SET ascii DEFAULT NULL,
  `preferred_admin_langcode` varchar(12) CHARACTER SET ascii DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `mail` varchar(254) DEFAULT NULL,
  `timezone` varchar(32) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `changed` int(11) DEFAULT NULL,
  `access` int(11) NOT NULL,
  `login` int(11) DEFAULT NULL,
  `init` varchar(254) DEFAULT NULL,
  `default_langcode` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='The data table for user entities.';

CREATE TABLE `lAfOL_user__roles` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to, which for an unversioned entity type is the same as the entity id',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `roles_target_id` varchar(255) CHARACTER SET ascii NOT NULL COMMENT 'The ID of the target entity.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for user field roles.';

CREATE TABLE `lAfOL_user__user_picture` (
  `bundle` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) UNSIGNED NOT NULL COMMENT 'The entity revision id this data is attached to, which for an unversioned entity type is the same as the entity id',
  `langcode` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'The language code for this data item.',
  `delta` int(10) UNSIGNED NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `user_picture_target_id` int(10) UNSIGNED NOT NULL COMMENT 'The ID of the file entity.',
  `user_picture_alt` varchar(512) DEFAULT NULL COMMENT 'Alternative image text, for the image''s ''alt'' attribute.',
  `user_picture_title` varchar(1024) DEFAULT NULL COMMENT 'Image title text, for the image''s ''title'' attribute.',
  `user_picture_width` int(10) UNSIGNED DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `user_picture_height` int(10) UNSIGNED DEFAULT NULL COMMENT 'The height of the image in pixels.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Data storage for user field user_picture.';

CREATE TABLE `lAfOL_watchdog` (
  `wid` int(11) NOT NULL COMMENT 'Primary Key: Unique watchdog event ID.',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The lAfOL_users.uid of the user who triggered the event.',
  `type` varchar(64) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Type of log message, for example "user" or "page not found."',
  `message` longtext NOT NULL COMMENT 'Text of log message to be passed into the t() function.',
  `variables` longblob NOT NULL COMMENT 'Serialized array of variables that match the message string and that is passed into the t() function.',
  `severity` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The severity level of the event. ranges from 0 (Emergency) to 7 (Debug)',
  `link` text COMMENT 'Link to view the result of the event.',
  `location` text NOT NULL COMMENT 'URL of the origin of the event.',
  `referer` text COMMENT 'URL of referring page.',
  `hostname` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '' COMMENT 'Hostname of the user who triggered the event.',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp of when event occurred.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table that contains logs of all system events.';


ALTER TABLE `lAfOL_batch`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `token` (`token`);

ALTER TABLE `lAfOL_block_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `block_content_field__uuid__value` (`uuid`),
  ADD UNIQUE KEY `block_content__revision_id` (`revision_id`),
  ADD KEY `block_content_field__type__target_id` (`type`);

ALTER TABLE `lAfOL_block_content_field_data`
  ADD PRIMARY KEY (`id`,`langcode`),
  ADD KEY `block_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  ADD KEY `block_content__revision_id` (`revision_id`),
  ADD KEY `block_content_field__type__target_id` (`type`),
  ADD KEY `block_content__status_type` (`status`,`type`,`id`);

ALTER TABLE `lAfOL_block_content_field_revision`
  ADD PRIMARY KEY (`revision_id`,`langcode`),
  ADD KEY `block_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`);

ALTER TABLE `lAfOL_block_content_revision`
  ADD PRIMARY KEY (`revision_id`),
  ADD KEY `block_content__id` (`id`),
  ADD KEY `block_content_field__revision_user__target_id` (`revision_user`);

ALTER TABLE `lAfOL_block_content_revision__body`
  ADD PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `body_format` (`body_format`);

ALTER TABLE `lAfOL_block_content__body`
  ADD PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `body_format` (`body_format`);

ALTER TABLE `lAfOL_cachetags`
  ADD PRIMARY KEY (`tag`);

ALTER TABLE `lAfOL_cache_bootstrap`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_cache_config`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_cache_container`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_cache_data`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_cache_default`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_cache_discovery`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_cache_dynamic_page_cache`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_cache_entity`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_cache_menu`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_cache_page`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_cache_render`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `expire` (`expire`),
  ADD KEY `created` (`created`);

ALTER TABLE `lAfOL_comment`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `comment_field__uuid__value` (`uuid`),
  ADD KEY `comment_field__comment_type__target_id` (`comment_type`);

ALTER TABLE `lAfOL_comment_entity_statistics`
  ADD PRIMARY KEY (`entity_id`,`entity_type`,`field_name`),
  ADD KEY `last_comment_timestamp` (`last_comment_timestamp`),
  ADD KEY `comment_count` (`comment_count`),
  ADD KEY `last_comment_uid` (`last_comment_uid`);

ALTER TABLE `lAfOL_comment_field_data`
  ADD PRIMARY KEY (`cid`,`langcode`),
  ADD KEY `comment__id__default_langcode__langcode` (`cid`,`default_langcode`,`langcode`),
  ADD KEY `comment_field__comment_type__target_id` (`comment_type`),
  ADD KEY `comment_field__uid__target_id` (`uid`),
  ADD KEY `comment_field__created` (`created`),
  ADD KEY `comment__status_comment_type` (`status`,`comment_type`,`cid`),
  ADD KEY `comment__status_pid` (`pid`,`status`),
  ADD KEY `comment__num_new` (`entity_id`,`entity_type`,`comment_type`,`status`,`created`,`cid`,`thread`(191)),
  ADD KEY `comment__entity_langcode` (`entity_id`,`entity_type`,`comment_type`,`default_langcode`);

ALTER TABLE `lAfOL_comment__comment_body`
  ADD PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `comment_body_format` (`comment_body_format`);

ALTER TABLE `lAfOL_config`
  ADD PRIMARY KEY (`collection`,`name`);

ALTER TABLE `lAfOL_file_managed`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `file_field__uuid__value` (`uuid`),
  ADD KEY `file_field__uid__target_id` (`uid`),
  ADD KEY `file_field__uri` (`uri`(191)),
  ADD KEY `file_field__status` (`status`),
  ADD KEY `file_field__changed` (`changed`);

ALTER TABLE `lAfOL_file_usage`
  ADD PRIMARY KEY (`fid`,`type`,`id`,`module`),
  ADD KEY `type_id` (`type`,`id`),
  ADD KEY `fid_count` (`fid`,`count`),
  ADD KEY `fid_module` (`fid`,`module`);

ALTER TABLE `lAfOL_history`
  ADD PRIMARY KEY (`uid`,`nid`),
  ADD KEY `nid` (`nid`);

ALTER TABLE `lAfOL_key_value`
  ADD PRIMARY KEY (`collection`,`name`);

ALTER TABLE `lAfOL_key_value_expire`
  ADD PRIMARY KEY (`collection`,`name`),
  ADD KEY `all` (`name`,`collection`,`expire`),
  ADD KEY `expire` (`expire`);

ALTER TABLE `lAfOL_locales_location`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `string_id` (`sid`),
  ADD KEY `string_type` (`sid`,`type`);

ALTER TABLE `lAfOL_locales_source`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `source_context` (`source`(30),`context`);

ALTER TABLE `lAfOL_locales_target`
  ADD PRIMARY KEY (`language`,`lid`),
  ADD KEY `lid` (`lid`);

ALTER TABLE `lAfOL_locale_file`
  ADD PRIMARY KEY (`project`,`langcode`);

ALTER TABLE `lAfOL_menu_link_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_link_content_field__uuid__value` (`uuid`),
  ADD UNIQUE KEY `menu_link_content__revision_id` (`revision_id`);

ALTER TABLE `lAfOL_menu_link_content_data`
  ADD PRIMARY KEY (`id`,`langcode`),
  ADD KEY `menu_link_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  ADD KEY `menu_link_content__revision_id` (`revision_id`),
  ADD KEY `menu_link_content_field__link__uri` (`link__uri`(30)),
  ADD KEY `menu_link_content__enabled_bundle` (`enabled`,`bundle`,`id`);

ALTER TABLE `lAfOL_menu_link_content_field_revision`
  ADD PRIMARY KEY (`revision_id`,`langcode`),
  ADD KEY `menu_link_content__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  ADD KEY `menu_link_content_field__link__uri` (`link__uri`(30));

ALTER TABLE `lAfOL_menu_link_content_revision`
  ADD PRIMARY KEY (`revision_id`),
  ADD KEY `menu_link_content__id` (`id`),
  ADD KEY `menu_link_content__ef029a1897` (`revision_user`);

ALTER TABLE `lAfOL_menu_tree`
  ADD PRIMARY KEY (`mlid`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `menu_parents` (`menu_name`,`p1`,`p2`,`p3`,`p4`,`p5`,`p6`,`p7`,`p8`,`p9`),
  ADD KEY `menu_parent_expand_child` (`menu_name`,`expanded`,`has_children`,`parent`(16)),
  ADD KEY `route_values` (`route_name`(32),`route_param_key`(16));

ALTER TABLE `lAfOL_node`
  ADD PRIMARY KEY (`nid`),
  ADD UNIQUE KEY `node_field__uuid__value` (`uuid`),
  ADD UNIQUE KEY `node__vid` (`vid`),
  ADD KEY `node_field__type__target_id` (`type`);

ALTER TABLE `lAfOL_node_access`
  ADD PRIMARY KEY (`nid`,`gid`,`realm`,`langcode`);

ALTER TABLE `lAfOL_node_field_data`
  ADD PRIMARY KEY (`nid`,`langcode`),
  ADD KEY `node__id__default_langcode__langcode` (`nid`,`default_langcode`,`langcode`),
  ADD KEY `node__vid` (`vid`),
  ADD KEY `node_field__type__target_id` (`type`),
  ADD KEY `node_field__uid__target_id` (`uid`),
  ADD KEY `node_field__created` (`created`),
  ADD KEY `node_field__changed` (`changed`),
  ADD KEY `node__status_type` (`status`,`type`,`nid`),
  ADD KEY `node__frontpage` (`promote`,`status`,`sticky`,`created`),
  ADD KEY `node__title_type` (`title`(191),`type`(4));

ALTER TABLE `lAfOL_node_field_revision`
  ADD PRIMARY KEY (`vid`,`langcode`),
  ADD KEY `node__id__default_langcode__langcode` (`nid`,`default_langcode`,`langcode`),
  ADD KEY `node_field__uid__target_id` (`uid`);

ALTER TABLE `lAfOL_node_revision`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `node__nid` (`nid`),
  ADD KEY `node_field__langcode` (`langcode`),
  ADD KEY `node_field__revision_uid__target_id` (`revision_uid`);

ALTER TABLE `lAfOL_node_revision__body`
  ADD PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `body_format` (`body_format`);

ALTER TABLE `lAfOL_node_revision__comment`
  ADD PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`);

ALTER TABLE `lAfOL_node_revision__field_image`
  ADD PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `field_image_target_id` (`field_image_target_id`);

ALTER TABLE `lAfOL_node_revision__field_tags`
  ADD PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `field_tags_target_id` (`field_tags_target_id`);

ALTER TABLE `lAfOL_node__body`
  ADD PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `body_format` (`body_format`);

ALTER TABLE `lAfOL_node__comment`
  ADD PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`);

ALTER TABLE `lAfOL_node__field_image`
  ADD PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `field_image_target_id` (`field_image_target_id`);

ALTER TABLE `lAfOL_node__field_tags`
  ADD PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `field_tags_target_id` (`field_tags_target_id`);

ALTER TABLE `lAfOL_queue`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `name_created` (`name`,`created`),
  ADD KEY `expire` (`expire`);

ALTER TABLE `lAfOL_router`
  ADD PRIMARY KEY (`name`),
  ADD KEY `pattern_outline_parts` (`pattern_outline`(191),`number_parts`);

ALTER TABLE `lAfOL_search_dataset`
  ADD PRIMARY KEY (`sid`,`langcode`,`type`);

ALTER TABLE `lAfOL_search_index`
  ADD PRIMARY KEY (`word`,`sid`,`langcode`,`type`),
  ADD KEY `sid_type` (`sid`,`langcode`,`type`);

ALTER TABLE `lAfOL_search_total`
  ADD PRIMARY KEY (`word`);

ALTER TABLE `lAfOL_semaphore`
  ADD PRIMARY KEY (`name`),
  ADD KEY `value` (`value`),
  ADD KEY `expire` (`expire`);

ALTER TABLE `lAfOL_sequences`
  ADD PRIMARY KEY (`value`);

ALTER TABLE `lAfOL_sessions`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `uid` (`uid`);

ALTER TABLE `lAfOL_shortcut`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shortcut_field__uuid__value` (`uuid`),
  ADD KEY `shortcut_field__shortcut_set__target_id` (`shortcut_set`);

ALTER TABLE `lAfOL_shortcut_field_data`
  ADD PRIMARY KEY (`id`,`langcode`),
  ADD KEY `shortcut__id__default_langcode__langcode` (`id`,`default_langcode`,`langcode`),
  ADD KEY `shortcut_field__shortcut_set__target_id` (`shortcut_set`),
  ADD KEY `shortcut_field__link__uri` (`link__uri`(30));

ALTER TABLE `lAfOL_shortcut_set_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `set_name` (`set_name`);

ALTER TABLE `lAfOL_taxonomy_index`
  ADD PRIMARY KEY (`nid`,`tid`),
  ADD KEY `term_node` (`tid`,`status`,`sticky`,`created`);

ALTER TABLE `lAfOL_taxonomy_term_data`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `taxonomy_term_field__uuid__value` (`uuid`),
  ADD UNIQUE KEY `taxonomy_term__revision_id` (`revision_id`),
  ADD KEY `taxonomy_term_field__vid__target_id` (`vid`);

ALTER TABLE `lAfOL_taxonomy_term_field_data`
  ADD PRIMARY KEY (`tid`,`langcode`),
  ADD KEY `taxonomy_term__id__default_langcode__langcode` (`tid`,`default_langcode`,`langcode`),
  ADD KEY `taxonomy_term__revision_id` (`revision_id`),
  ADD KEY `taxonomy_term_field__name` (`name`(191)),
  ADD KEY `taxonomy_term__status_vid` (`status`,`vid`,`tid`),
  ADD KEY `taxonomy_term__tree` (`vid`,`weight`,`name`(191)),
  ADD KEY `taxonomy_term__vid_name` (`vid`,`name`(191));

ALTER TABLE `lAfOL_taxonomy_term_field_revision`
  ADD PRIMARY KEY (`revision_id`,`langcode`),
  ADD KEY `taxonomy_term__id__default_langcode__langcode` (`tid`,`default_langcode`,`langcode`),
  ADD KEY `taxonomy_term_field__description__format` (`description__format`);

ALTER TABLE `lAfOL_taxonomy_term_revision`
  ADD PRIMARY KEY (`revision_id`),
  ADD KEY `taxonomy_term__tid` (`tid`),
  ADD KEY `taxonomy_term_field__revision_user__target_id` (`revision_user`);

ALTER TABLE `lAfOL_taxonomy_term_revision__parent`
  ADD PRIMARY KEY (`entity_id`,`revision_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `parent_target_id` (`parent_target_id`);

ALTER TABLE `lAfOL_taxonomy_term__parent`
  ADD PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `parent_target_id` (`parent_target_id`),
  ADD KEY `bundle_delta_target_id` (`bundle`,`delta`,`parent_target_id`);

ALTER TABLE `lAfOL_url_alias`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `alias_langcode_pid` (`alias`(191),`langcode`,`pid`),
  ADD KEY `source_langcode_pid` (`source`(191),`langcode`,`pid`);

ALTER TABLE `lAfOL_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `user_field__uuid__value` (`uuid`);

ALTER TABLE `lAfOL_users_data`
  ADD PRIMARY KEY (`uid`,`module`,`name`),
  ADD KEY `module` (`module`),
  ADD KEY `name` (`name`);

ALTER TABLE `lAfOL_users_field_data`
  ADD PRIMARY KEY (`uid`,`langcode`),
  ADD UNIQUE KEY `user__name` (`name`,`langcode`),
  ADD KEY `user__id__default_langcode__langcode` (`uid`,`default_langcode`,`langcode`),
  ADD KEY `user_field__mail` (`mail`(191)),
  ADD KEY `user_field__created` (`created`),
  ADD KEY `user_field__access` (`access`);

ALTER TABLE `lAfOL_user__roles`
  ADD PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `roles_target_id` (`roles_target_id`);

ALTER TABLE `lAfOL_user__user_picture`
  ADD PRIMARY KEY (`entity_id`,`deleted`,`delta`,`langcode`),
  ADD KEY `bundle` (`bundle`),
  ADD KEY `revision_id` (`revision_id`),
  ADD KEY `user_picture_target_id` (`user_picture_target_id`);

ALTER TABLE `lAfOL_watchdog`
  ADD PRIMARY KEY (`wid`),
  ADD KEY `type` (`type`),
  ADD KEY `uid` (`uid`),
  ADD KEY `severity` (`severity`);


ALTER TABLE `lAfOL_block_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_block_content_revision`
  MODIFY `revision_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_comment`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_file_managed`
  MODIFY `fid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_locales_location`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of this location.';

ALTER TABLE `lAfOL_locales_source`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of this string.';

ALTER TABLE `lAfOL_menu_link_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_menu_link_content_revision`
  MODIFY `revision_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_menu_tree`
  MODIFY `mlid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The menu link ID (mlid) is the integer primary key.';

ALTER TABLE `lAfOL_node`
  MODIFY `nid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_node_revision`
  MODIFY `vid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_queue`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique item ID.';

ALTER TABLE `lAfOL_sequences`
  MODIFY `value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The value of the sequence.';

ALTER TABLE `lAfOL_shortcut`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_taxonomy_term_data`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_taxonomy_term_revision`
  MODIFY `revision_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `lAfOL_url_alias`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'A unique path alias identifier.';

ALTER TABLE `lAfOL_watchdog`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique watchdog event ID.';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
