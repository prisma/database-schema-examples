-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816440497.hosting-data.io    Database: db816440497
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
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customers_assigned`
--

LOCK TABLES `customers_assigned` WRITE;
/*!40000 ALTER TABLE `customers_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `files_attached`
--

LOCK TABLES `files_attached` WRITE;
/*!40000 ALTER TABLE `files_attached` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_attached` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,0,'','admin','user',1,0,'1581273652');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messages_assigned`
--

LOCK TABLES `messages_assigned` WRITE;
/*!40000 ALTER TABLE `messages_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `milestones_assigned`
--

LOCK TABLES `milestones_assigned` WRITE;
/*!40000 ALTER TABLE `milestones_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `projectfolders`
--

LOCK TABLES `projectfolders` WRITE;
/*!40000 ALTER TABLE `projectfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `projekte`
--

LOCK TABLES `projekte` WRITE;
/*!40000 ALTER TABLE `projekte` DISABLE KEYS */;
/*!40000 ALTER TABLE `projekte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `projekte_assigned`
--

LOCK TABLES `projekte_assigned` WRITE;
/*!40000 ALTER TABLE `projekte_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `projekte_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','a:5:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;s:4:\"view\";i:1;}','a:5:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;s:4:\"view\";i:1;}','a:5:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;s:4:\"view\";i:1;}','a:5:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;s:4:\"view\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"view\";i:1;}','a:1:{s:3:\"add\";i:1;}','a:5:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"read\";i:1;s:4:\"view\";i:1;}','a:1:{s:3:\"add\";i:1;}'),(2,'User','a:5:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:0;s:5:\"close\";i:0;s:4:\"view\";i:1;}','a:5:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:0;s:5:\"close\";i:1;s:4:\"view\";i:1;}','a:5:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;s:4:\"view\";i:1;}','a:5:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:5:\"close\";i:1;s:4:\"view\";i:1;}','a:4:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"view\";i:1;}','a:1:{s:3:\"add\";i:1;}','a:5:{s:3:\"add\";i:1;s:4:\"edit\";i:1;s:3:\"del\";i:1;s:4:\"read\";i:0;s:4:\"view\";i:1;}','a:1:{s:3:\"add\";i:0;}'),(3,'Client','a:5:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;s:4:\"view\";i:0;}','a:5:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;s:4:\"view\";i:1;}','a:5:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;s:4:\"view\";i:0;}','a:5:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:5:\"close\";i:0;s:4:\"view\";i:0;}','a:4:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:4:\"view\";i:1;}','a:1:{s:3:\"add\";i:0;}','a:5:{s:3:\"add\";i:0;s:4:\"edit\";i:0;s:3:\"del\";i:0;s:4:\"read\";i:0;s:4:\"view\";i:0;}','a:1:{s:3:\"add\";i:0;}');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles_assigned`
--

LOCK TABLES `roles_assigned` WRITE;
/*!40000 ALTER TABLE `roles_assigned` DISABLE KEYS */;
INSERT INTO `roles_assigned` VALUES (1,1,1);
/*!40000 ALTER TABLE `roles_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'name','Collabtive'),(2,'subtitle','Projectmanagement'),(3,'locale','en'),(4,'timezone','Europe/Berlin'),(5,'dateformat','d.m.Y'),(6,'template','standard'),(7,'mailnotify','1'),(8,'mailfrom','collabtive@localhost'),(9,'mailfromname',''),(10,'mailmethod','mail'),(11,'mailhost',''),(12,'mailuser',''),(13,'mailpass',''),(14,'rssuser',''),(15,'rsspass',''),(16,'theme','standard'),(17,'filePass','Z1wPnfmrOGnnbz9v');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tasklist`
--

LOCK TABLES `tasklist` WRITE;
/*!40000 ALTER TABLE `tasklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tasks_assigned`
--

LOCK TABLES `tasks_assigned` WRITE;
/*!40000 ALTER TABLE `tasks_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks_assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `timetracker`
--

LOCK TABLES `timetracker` WRITE;
/*!40000 ALTER TABLE `timetracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','piotrowski+ionos.de@prisma.io',NULL,NULL,'2a2043fb26330a0be4951d5e9c52d2e1af4f33ee','','',NULL,'','','','','','','','','','0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
