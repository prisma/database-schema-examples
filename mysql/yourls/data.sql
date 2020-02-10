-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816440005.hosting-data.io    Database: db816440005
-- ------------------------------------------------------
-- Server version	5.5.60-0+deb7u1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `your_log`
--

LOCK TABLES `your_log` WRITE;
/*!40000 ALTER TABLE `your_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `your_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `your_options`
--

LOCK TABLES `your_options` WRITE;
/*!40000 ALTER TABLE `your_options` DISABLE KEYS */;
INSERT INTO `your_options` VALUES (1,'version','1.7.6'),(2,'db_version','482'),(3,'next_id','1'),(4,'active_plugins','a:0:{}');
/*!40000 ALTER TABLE `your_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `your_url`
--

LOCK TABLES `your_url` WRITE;
/*!40000 ALTER TABLE `your_url` DISABLE KEYS */;
INSERT INTO `your_url` VALUES ('yourlsblog','http://blog.yourls.org/','YOURLS\' Blog','2020-02-09 17:30:45','10.72.23.72',0),('yourls','http://yourls.org/','YOURLS: Your Own URL Shortener','2020-02-09 17:30:45','10.72.23.72',0),('ozh','http://ozh.org/','ozh.org','2020-02-09 17:30:45','10.72.23.72',0);
/*!40000 ALTER TABLE `your_url` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 19:28:58
