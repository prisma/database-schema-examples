# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: worldservantsdoetinchem.nl (MySQL 5.5.64-MariaDB)
# Database: timon_graphql
# Generation Time: 2019-12-13 14:46:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bands
# ------------------------------------------------------------

CREATE TABLE `bands` (
  `band_id` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `position` int(2) NOT NULL,
  PRIMARY KEY (`band_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table bands_images
# ------------------------------------------------------------

CREATE TABLE `bands_images` (
  `bands_images_id` int(11) NOT NULL AUTO_INCREMENT,
  `band_id` int(11) NOT NULL,
  `filename` varchar(150) NOT NULL,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`bands_images_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table bands_language
# ------------------------------------------------------------

CREATE TABLE `bands_language` (
  `bands_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `band_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `uri` varchar(100) NOT NULL,
  PRIMARY KEY (`bands_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table cases
# ------------------------------------------------------------

CREATE TABLE `cases` (
  `case_id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(2) NOT NULL,
  `yield` decimal(11,2) NOT NULL,
  `date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `location` varchar(100) NOT NULL,
  `show_on_website` tinyint(1) NOT NULL DEFAULT '1',
  `pass` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table cases_ideas
# ------------------------------------------------------------

CREATE TABLE `cases_ideas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `case_id` int(11) NOT NULL,
  `idea` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table cases_images
# ------------------------------------------------------------

CREATE TABLE `cases_images` (
  `cases_images_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) NOT NULL,
  `filename` varchar(150) NOT NULL,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`cases_images_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table cases_language
# ------------------------------------------------------------

CREATE TABLE `cases_language` (
  `cases_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `information` text NOT NULL,
  `ideas` text NOT NULL,
  `uri` varchar(100) NOT NULL,
  PRIMARY KEY (`cases_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table cases_videos
# ------------------------------------------------------------

CREATE TABLE `cases_videos` (
  `cases_videos_id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `position` int(2) NOT NULL,
  `width` int(4) NOT NULL DEFAULT '560',
  `height` int(4) NOT NULL DEFAULT '315',
  PRIMARY KEY (`cases_videos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table countries
# ------------------------------------------------------------

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `abbr` varchar(2) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table countries_language
# ------------------------------------------------------------

CREATE TABLE `countries_language` (
  `countries_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`countries_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table diensten
# ------------------------------------------------------------

CREATE TABLE `diensten` (
  `dienst_id` int(11) NOT NULL AUTO_INCREMENT,
  `spreker_id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL,
  `kinderwerk_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `position` int(1) NOT NULL,
  PRIMARY KEY (`dienst_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table diensten_language
# ------------------------------------------------------------

CREATE TABLE `diensten_language` (
  `diensten_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `dienst_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thema` text NOT NULL,
  `uri` varchar(100) NOT NULL,
  PRIMARY KEY (`diensten_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table doemalawi_users
# ------------------------------------------------------------

CREATE TABLE `doemalawi_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zipcode` varchar(7) NOT NULL,
  `place` varchar(100) NOT NULL,
  `telephone_number` varchar(20) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `date_of_birth` varchar(10) NOT NULL,
  `about_me` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `block` int(1) NOT NULL DEFAULT '0',
  `type` int(11) DEFAULT '2' COMMENT '1 = Admin, 2 = User',
  `user_type` int(1) NOT NULL DEFAULT '1' COMMENT '1 = Deelnemer, 2 = Werkgroep, 3 = Allebei',
  `staff` varchar(255) NOT NULL,
  `show_photo` tinyint(1) NOT NULL DEFAULT '1',
  `last_logged_in` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table doemalawi_users_cases
# ------------------------------------------------------------

CREATE TABLE `doemalawi_users_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doemalawi_user_id` int(11) NOT NULL,
  `case_id` int(11) NOT NULL,
  `is_coordinator` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table language
# ------------------------------------------------------------

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `abbr` varchar(2) NOT NULL,
  `uri_abbr` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `default` int(1) DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table news
# ------------------------------------------------------------

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create` datetime NOT NULL,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table news_images
# ------------------------------------------------------------

CREATE TABLE `news_images` (
  `news_images_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `filename` varchar(150) NOT NULL,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`news_images_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table news_language
# ------------------------------------------------------------

CREATE TABLE `news_language` (
  `news_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `uri` varchar(100) NOT NULL,
  PRIMARY KEY (`news_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pages
# ------------------------------------------------------------

CREATE TABLE `pages` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sub_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `hide` int(1) NOT NULL DEFAULT '0',
  `position` int(2) NOT NULL,
  PRIMARY KEY (`page_id`),
  CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages_language` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table pages_language
# ------------------------------------------------------------

CREATE TABLE `pages_language` (
  `page_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `metatags` text NOT NULL,
  `content` text NOT NULL,
  `uri` varchar(100) NOT NULL,
  `page` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_language_id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `pages_language_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table photo_albums
# ------------------------------------------------------------

CREATE TABLE `photo_albums` (
  `photo_album_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `doemalawi_user_id` int(11) NOT NULL,
  `public` int(11) NOT NULL DEFAULT '1',
  `code` varchar(15) NOT NULL,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`photo_album_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table photo_albums_images
# ------------------------------------------------------------

CREATE TABLE `photo_albums_images` (
  `photo_albums_images_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_album_id` int(11) NOT NULL,
  `filename` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`photo_albums_images_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table photo_albums_language
# ------------------------------------------------------------

CREATE TABLE `photo_albums_language` (
  `photo_albums_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_album_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` varchar(255) NOT NULL,
  `uri` varchar(100) NOT NULL,
  PRIMARY KEY (`photo_albums_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table slideshows
# ------------------------------------------------------------

CREATE TABLE `slideshows` (
  `slideshow_id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`slideshow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table slideshows_images
# ------------------------------------------------------------

CREATE TABLE `slideshows_images` (
  `slideshows_images_id` int(11) NOT NULL AUTO_INCREMENT,
  `slideshow_id` int(11) NOT NULL,
  `filename` varchar(150) NOT NULL,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`slideshows_images_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table slideshows_language
# ------------------------------------------------------------

CREATE TABLE `slideshows_language` (
  `slideshows_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `slideshow_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` varchar(255) NOT NULL,
  `uri` varchar(100) NOT NULL,
  PRIMARY KEY (`slideshows_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table sponsors
# ------------------------------------------------------------

CREATE TABLE `sponsors` (
  `sponsor_id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`sponsor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table sponsors_images
# ------------------------------------------------------------

CREATE TABLE `sponsors_images` (
  `sponsors_images_id` int(11) NOT NULL AUTO_INCREMENT,
  `sponsor_id` int(11) NOT NULL,
  `filename` varchar(150) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`sponsors_images_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table sponsors_language
# ------------------------------------------------------------

CREATE TABLE `sponsors_language` (
  `sponsors_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `sponsor_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `uri` varchar(100) NOT NULL,
  PRIMARY KEY (`sponsors_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table sprekers
# ------------------------------------------------------------

CREATE TABLE `sprekers` (
  `spreker_id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '0',
  `position` int(2) NOT NULL,
  PRIMARY KEY (`spreker_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table sprekers_images
# ------------------------------------------------------------

CREATE TABLE `sprekers_images` (
  `sprekers_images_id` int(11) NOT NULL AUTO_INCREMENT,
  `spreker_id` int(11) NOT NULL,
  `filename` varchar(150) NOT NULL,
  `position` int(2) NOT NULL,
  PRIMARY KEY (`sprekers_images_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table sprekers_language
# ------------------------------------------------------------

CREATE TABLE `sprekers_language` (
  `sprekers_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `spreker_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `uri` varchar(100) NOT NULL,
  PRIMARY KEY (`sprekers_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table users
# ------------------------------------------------------------

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `localhost` varchar(255) NOT NULL,
  `ftp_user` varchar(255) NOT NULL,
  `ftp_password` varchar(255) NOT NULL,
  `db_name` varchar(255) NOT NULL,
  `db_user` varchar(255) NOT NULL,
  `db_password` varchar(255) NOT NULL,
  `block` int(1) NOT NULL DEFAULT '0',
  `type` int(11) DEFAULT '2' COMMENT '1 = Admin, 2 = User',
  `last_logged_in` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
