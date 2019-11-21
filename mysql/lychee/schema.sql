-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: dd35330
-- Generation Time: Oct 30, 2019 at 01:13 PM
-- Server version: 5.7.26-nmm1-log
-- PHP Version: 7.2.19-nmm1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d02ff6e7`
--

-- --------------------------------------------------------

--
-- Table structure for table `lt5ae_lychee_albums`
--

CREATE TABLE `lt5ae_lychee_albums` (
  `id` bigint(14) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) DEFAULT '',
  `sysstamp` int(11) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) DEFAULT NULL,
  `min_takestamp` int(11) NOT NULL,
  `max_takestamp` int(11) NOT NULL,
  `license` varchar(20) DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lt5ae_lychee_log`
--

CREATE TABLE `lt5ae_lychee_log` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `function` varchar(100) NOT NULL,
  `line` int(11) NOT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lt5ae_lychee_photos`
--

CREATE TABLE `lt5ae_lychee_photos` (
  `id` bigint(14) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) DEFAULT '',
  `url` varchar(100) NOT NULL,
  `tags` varchar(1000) NOT NULL DEFAULT '',
  `public` tinyint(1) NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `iso` varchar(15) NOT NULL,
  `aperture` varchar(20) NOT NULL,
  `make` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `lens` varchar(100) NOT NULL DEFAULT '',
  `shutter` varchar(30) NOT NULL,
  `focal` varchar(20) NOT NULL,
  `takestamp` int(11) DEFAULT NULL,
  `star` tinyint(1) NOT NULL,
  `thumbUrl` char(37) NOT NULL,
  `album` bigint(14) UNSIGNED NOT NULL,
  `checksum` char(40) DEFAULT NULL,
  `medium` tinyint(1) NOT NULL DEFAULT '0',
  `small` tinyint(1) NOT NULL DEFAULT '0',
  `license` varchar(20) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lt5ae_lychee_settings`
--

CREATE TABLE `lt5ae_lychee_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(200) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lt5ae_lychee_albums`
--
ALTER TABLE `lt5ae_lychee_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt5ae_lychee_log`
--
ALTER TABLE `lt5ae_lychee_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt5ae_lychee_photos`
--
ALTER TABLE `lt5ae_lychee_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Index_album` (`album`),
  ADD KEY `Index_star` (`star`);

--
-- Indexes for table `lt5ae_lychee_settings`
--
ALTER TABLE `lt5ae_lychee_settings`
  ADD PRIMARY KEY (`key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lt5ae_lychee_log`
--
ALTER TABLE `lt5ae_lychee_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
