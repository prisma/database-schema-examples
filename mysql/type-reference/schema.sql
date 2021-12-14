-- https://dev.mysql.com/doc/refman/8.0/en/data-types.html
CREATE TABLE `types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numeric_integer_tinyint` TINYINT NOT NULL,
  `numeric_integer_smallint` SMALLINT NOT NULL,
  `numeric_integer_mediumint` MEDIUMINT NOT NULL,
  `numeric_integer_int` INT NOT NULL,
  `numeric_integer_bigint` BIGINT NOT NULL,
  `numeric_fixed_decimal` DECIMAL NOT NULL,
  `numeric_fixed_numeric` NUMERIC NOT NULL, -- alias to decimal
  `numeric_floating_float` FLOAT NOT NULL,
  `numeric_floating_double` DOUBLE NOT NULL,
  `numeric_floating_real` REAL NOT NULL,
  `numeric_bit` BIT NOT NULL,
  `numeric_boolean` BOOL NOT NULL,
  `date_date` DATE NOT NULL,
  `date_datetime` DATETIME NOT NULL,
  `date_timestamp` TIMESTAMP NOT NULL,
  `date_time` TIME NOT NULL,
  `date_year` YEAR NOT NULL,
  `string_char` char(255) NOT NULL,
  `string_varchar` varchar(255) NOT NULL,
  `string_text_tinytext` tinytext NOT NULL,
  `string_text_text` text NOT NULL,
  `string_text_mediumtext` mediumtext NOT NULL,
  `string_text_longtext` longtext NOT NULL,
  `string_binary_binary` binary(255) NOT NULL,
  `string_binary_varbinary` varbinary(255) NOT NULL,
  `string_blob_tinyblob` tinyblob NOT NULL,
  `string_blob_mediumblob` mediumblob NOT NULL,
  `string_blob_blob` blob NOT NULL,
  `string_blob_longblob` longblob NOT NULL,
  `string_enum` enum('0','1','2') NOT NULL,
  `string_set` set('a','b','c') NOT NULL,
  `spatial_geometry` geometry NOT NULL,
  `spatial_point` point NOT NULL,
  `spatial_linestring` linestring NOT NULL,
  `spatial_polygon` polygon NOT NULL,
  `spatial_multipoint` multipoint NOT NULL,
  `spatial_multilinestring` multilinestring NOT NULL,
  `spatial_multipolygon` multipolygon NOT NULL,
  `spatial_geometrycollection` geometrycollection NOT NULL,
  `json` json NOT NULL,
  PRIMARY KEY (`id`)
);

-- TODO Defaults for all columns

-- https://dev.mysql.com/doc/refman/8.0/en/fixed-point-types.html
CREATE TABLE `types_numeric_fixed` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `decimal` DECIMAL NOT NULL,
  `decimal_10` DECIMAL(10) NOT NULL,
  `decimal_10_0` DECIMAL(10,0) NOT NULL,
  `decimal_5_2` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`id`)
);

-- https://dev.mysql.com/doc/refman/8.0/en/floating-point-types.html
CREATE TABLE `types_numeric_floating` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numeric_floating_float_10` FLOAT(10) NOT NULL,
  `numeric_floating_float_50` FLOAT(50) NOT NULL,
  PRIMARY KEY (`id`)
);

-- https://dev.mysql.com/doc/refman/8.0/en/bit-type.html
CREATE TABLE `types_numeric_bit` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numeric_bit_10` BIT(10) NOT NULL,
  `numeric_bit_50` BIT(50) NOT NULL,
  PRIMARY KEY (`id`)
);

-- https://dev.mysql.com/doc/refman/8.0/en/numeric-type-attributes.html
CREATE TABLE `types_numeric_attributes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  -- display width
  `numeric_integer_tinyint_width_1` TINYINT(1) UNSIGNED NOT NULL,
  `numeric_integer_smallint_width_2` SMALLINT(2) UNSIGNED NOT NULL,
  `numeric_integer_mediumint_width_3` MEDIUMINT(3) UNSIGNED NOT NULL,
  `numeric_integer_int_width_4` INT(4) UNSIGNED NOT NULL,
  `numeric_integer_bigint_width_5` BIGINT(5) UNSIGNED NOT NULL,
  -- unsigned
  `numeric_integer_tinyint_unsigned` TINYINT UNSIGNED NOT NULL,
  `numeric_integer_smallint_unsigned` SMALLINT UNSIGNED NOT NULL,
  `numeric_integer_mediumint_unsigned` MEDIUMINT UNSIGNED NOT NULL,
  `numeric_integer_int_unsigned` INT UNSIGNED NOT NULL,
  `numeric_integer_bigint_unsigned` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
);

-- auto_increment
CREATE TABLE `types_numeric_attributes_tinyint_auto_increment` (
  `numeric_integer_tinyint_auto_increment` TINYINT AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (`numeric_integer_tinyint_auto_increment`)
);

CREATE TABLE `types_numeric_attributes_smallint_auto_increment` (
  `numeric_integer_smallint_auto_increment` SMALLINT AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (`numeric_integer_smallint_auto_increment`)
);

CREATE TABLE `types_numeric_attributes_mediumint_auto_increment` (
  `numeric_integer_mediumint_auto_increment` MEDIUMINT AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (`numeric_integer_mediumint_auto_increment`)
);

CREATE TABLE `types_numeric_attributes_int_auto_increment` (
  `numeric_integer_int_auto_increment` INT AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (`numeric_integer_int_auto_increment`)
);

CREATE TABLE `types_numeric_attributes_bigint_auto_increment` (
  `numeric_integer_bigint_auto_increment` BIGINT AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (`numeric_integer_bigint_auto_increment`)
);

CREATE TABLE `types_numeric_attributes_float_auto_increment` (
  `numeric_floating_float_auto_increment` FLOAT AUTO_INCREMENT NOT NULL, -- deprecated in MySQL 8
  PRIMARY KEY (`numeric_floating_float_auto_increment`)
);

CREATE TABLE `types_numeric_attributes_double_auto_increment` (
  `numeric_floating_double_auto_increment` DOUBLE AUTO_INCREMENT NOT NULL, -- deprecated in MySQL 8
  PRIMARY KEY (`numeric_floating_double_auto_increment`)
);

CREATE TABLE `types_numeric_attributes_real_auto_increment` (
  `numeric_floating_real_auto_increment` REAL AUTO_INCREMENT NOT NULL, -- deprecated in MySQL 8
  PRIMARY KEY (`numeric_floating_real_auto_increment`)
);

-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-type-syntax.html
-- https://dev.mysql.com/doc/refman/8.0/en/fractional-seconds.html
CREATE TABLE `types_date_fractional_seconds_precision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_datetime_0` DATETIME(0) NOT NULL,
  `date_datetime_3` DATETIME(3) NOT NULL,
  `date_datetime_6` DATETIME(6) NOT NULL,
  `date_timestamp_0` TIMESTAMP(0) NOT NULL,
  `date_timestamp_3` TIMESTAMP(3) NOT NULL,
  `date_timestamp_6` TIMESTAMP(6) NOT NULL,
  `date_time_0` TIME(0) NOT NULL,
  `date_time_3` TIME(3) NOT NULL,
  `date_time_6` TIME(6) NOT NULL,
  PRIMARY KEY (`id`)
);

-- TODO date defaults with fsp

-- https://dev.mysql.com/doc/refman/8.0/en/timestamp-initialization.html
CREATE TABLE `types_date_timestamp_initialization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_datetime_default_on_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_timestamp_default_on_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_datetime_default` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_timestamp_default` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_datetime_on_update` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `date_timestamp_on_update` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);