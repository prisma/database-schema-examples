-- https://dev.mysql.com/doc/refman/8.0/en/data-types.html
CREATE TABLE `types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numeric_integer_tinyint` TINYINT NOT NULL,
  `numeric_integer_smallint` SMALLINT NOT NULL,
  `numeric_integer_mediumint` MEDIUMINT NOT NULL,
  `numeric_integer_int` INT NOT NULL,
  `numeric_integer_bigint` BIGINT NOT NULL,
  `numeric_fixed_decimal` DECIMAL NOT NULL,
  `numeric_floating_float` FLOAT NOT NULL,
  `numeric_floating_double` DOUBLE NOT NULL,
  `numeric_floating_real` REAL NOT NULL,
  `numeric_bit` BIT NOT NULL,
  `numeric_boolean` BOOL NOT NULL,
  `date_date` date NOT NULL,
  `date_datetime` datetime NOT NULL,
  `date_timestamp` timestamp NOT NULL,
  `date_time` time NOT NULL,
  `date_year` year(4) NOT NULL,
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

-- https://dev.mysql.com/doc/refman/8.0/en/timestamp-initialization.html
CREATE TABLE `types_timestamp_initialization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

-- https://dev.mysql.com/doc/refman/8.0/en/fixed-point-types.html
CREATE TABLE `types_fixed_point` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `decimal` DECIMAL NOT NULL,
  `decimal_10` DECIMAL(10) NOT NULL,
  `decimal_10_0` DECIMAL(10,0) NOT NULL,
  `decimal_5_2` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`id`)
);

-- https://dev.mysql.com/doc/refman/8.0/en/floating-point-types.html
TODO
CREATE TABLE `types_floating_point` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numeric_floating_float` FLOAT NOT NULL,
  `numeric_floating_double` DOUBLE NOT NULL,
  `numeric_floating_real` REAL NOT NULL,
  PRIMARY KEY (`id`)
);