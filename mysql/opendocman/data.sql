-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816575446.hosting-data.io    Database: db816575446
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
-- Dumping data for table `opdm_access_log`
--

LOCK TABLES `opdm_access_log` WRITE;
/*!40000 ALTER TABLE `opdm_access_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `opdm_access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_admin`
--

LOCK TABLES `opdm_admin` WRITE;
/*!40000 ALTER TABLE `opdm_admin` DISABLE KEYS */;
INSERT INTO `opdm_admin` VALUES (1,1);
/*!40000 ALTER TABLE `opdm_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_category`
--

LOCK TABLES `opdm_category` WRITE;
/*!40000 ALTER TABLE `opdm_category` DISABLE KEYS */;
INSERT INTO `opdm_category` VALUES (1,'SOP'),(2,'Training Manual'),(3,'Letter'),(4,'Presentation');
/*!40000 ALTER TABLE `opdm_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_data`
--

LOCK TABLES `opdm_data` WRITE;
/*!40000 ALTER TABLE `opdm_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `opdm_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_department`
--

LOCK TABLES `opdm_department` WRITE;
/*!40000 ALTER TABLE `opdm_department` DISABLE KEYS */;
INSERT INTO `opdm_department` VALUES (1,'Information Systems');
/*!40000 ALTER TABLE `opdm_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_dept_perms`
--

LOCK TABLES `opdm_dept_perms` WRITE;
/*!40000 ALTER TABLE `opdm_dept_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `opdm_dept_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_dept_reviewer`
--

LOCK TABLES `opdm_dept_reviewer` WRITE;
/*!40000 ALTER TABLE `opdm_dept_reviewer` DISABLE KEYS */;
INSERT INTO `opdm_dept_reviewer` VALUES (1,1);
/*!40000 ALTER TABLE `opdm_dept_reviewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_filetypes`
--

LOCK TABLES `opdm_filetypes` WRITE;
/*!40000 ALTER TABLE `opdm_filetypes` DISABLE KEYS */;
INSERT INTO `opdm_filetypes` VALUES (1,'image/gif',1),(2,'text/html',1),(3,'text/plain',1),(4,'application/pdf',1),(5,'image/pdf',1),(6,'application/x-pdf',1),(7,'application/msword',1),(8,'image/jpeg',1),(9,'image/pjpeg',1),(10,'image/png',1),(11,'application/msexcel',1),(12,'application/msaccess',1),(13,'text/richtxt',1),(14,'application/mspowerpoint',1),(15,'application/octet-stream',1),(16,'application/x-zip-compressed',1),(17,'application/x-zip',1),(18,'application/zip',1),(19,'image/tiff',1),(20,'image/tif',1),(21,'application/vnd.ms-powerpoint',1),(22,'application/vnd.ms-excel',1),(23,'application/vnd.openxmlformats-officedocument.presentationml.presentation',1),(24,'application/vnd.openxmlformats-officedocument.wordprocessingml.document',1),(25,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',1),(26,'application/vnd.oasis.opendocument.chart',1),(27,'application/vnd.oasis.opendocument.chart-template',1),(28,'application/vnd.oasis.opendocument.formula',1),(29,'application/vnd.oasis.opendocument.formula-template',1),(30,'application/vnd.oasis.opendocument.graphics',1),(31,'application/vnd.oasis.opendocument.graphics-template',1),(32,'application/vnd.oasis.opendocument.image',1),(33,'application/vnd.oasis.opendocument.image-template',1),(34,'application/vnd.oasis.opendocument.presentation',1),(35,'application/vnd.oasis.opendocument.presentation-template',1),(36,'application/vnd.oasis.opendocument.spreadsheet',1),(37,'application/vnd.oasis.opendocument.spreadsheet-template',1),(38,'application/vnd.oasis.opendocument.text',1),(39,'application/vnd.oasis.opendocument.text-master',1),(40,'application/vnd.oasis.opendocument.text-template',1),(41,'application/vnd.oasis.opendocument.text-web',1),(42,'text/csv',1),(43,'audio/mpeg',0),(44,'image/x-dwg',1),(45,'image/x-dfx',1),(46,'drawing/x-dwf',1),(47,'image/svg',1),(48,'video/3gpp',1);
/*!40000 ALTER TABLE `opdm_filetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_log`
--

LOCK TABLES `opdm_log` WRITE;
/*!40000 ALTER TABLE `opdm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `opdm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_odmsys`
--

LOCK TABLES `opdm_odmsys` WRITE;
/*!40000 ALTER TABLE `opdm_odmsys` DISABLE KEYS */;
INSERT INTO `opdm_odmsys` VALUES (1,'version','1.2.8');
/*!40000 ALTER TABLE `opdm_odmsys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_rights`
--

LOCK TABLES `opdm_rights` WRITE;
/*!40000 ALTER TABLE `opdm_rights` DISABLE KEYS */;
INSERT INTO `opdm_rights` VALUES (0,'none'),(1,'view'),(-1,'forbidden'),(2,'read'),(3,'write'),(4,'admin');
/*!40000 ALTER TABLE `opdm_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_settings`
--

LOCK TABLES `opdm_settings` WRITE;
/*!40000 ALTER TABLE `opdm_settings` DISABLE KEYS */;
INSERT INTO `opdm_settings` VALUES (1,'debug','False','(True/False) - Default=False - Debug the installation (not working)','bool'),(2,'demo','False','(True/False) This setting is for a demo installation, where random people will be all loggging in as the same username/password like \"demo/demo\". This will keep users from removing files, users, etc.','bool'),(3,'authen','mysql','(Default = mysql) Currently only MySQL authentication is supported',''),(4,'title','Opendocman','This is the browser window title','maxsize=255'),(5,'site_mail','piotrowski+ionos.de@gmail.com','The email address of the administrator of this site','email|maxsize=255|req'),(6,'root_id','1','This variable sets the root user id.  The root user will be able to access all files and have authority for everything.','num|req'),(7,'dataDir','/homepages/33/d816427774/htdocs/clickandbuilds/Opendocman/Opendocman/data/','location of file repository. This should ideally be outside the Web server root. Make sure the server has permissions to read/write files to this folder!. (Examples: Linux - /homepages/33/d816427774/htdocs/clickandbuilds/Opendocman/Opendocman/data/ : Wind','maxsize=255'),(8,'max_filesize','5000000','Set the maximum file upload size','num|maxsize=255'),(9,'revision_expiration','90','This var sets the amount of days until each file needs to be revised,  assuming that there are 30 days in a month for all months.','num|maxsize=255'),(10,'file_expired_action','1','Choose an action option when a file is found to be expired The first two options also result in sending email to reviewer  (1) Remove from file list until renewed (2) Show in file list but non-checkoutable (3) Send email to reviewer only (4) Do Nothing','num'),(11,'authorization','True','True or False. If set True, every document must be reviewed by an admin before it can go public. To disable set to False. If False, all newly added/checked-in documents will immediately be listed','bool'),(12,'allow_signup','False','Should we display the sign-up link?','bool'),(13,'allow_password_reset','False','Should we allow users to reset their forgotten password?','bool'),(14,'try_nis','False','Attempt NIS password lookups from YP server?','bool'),(15,'theme','tweeter','Which theme to use?',''),(16,'language','english','Set the default language (english, spanish, turkish, etc.). Local users may override this setting. Check include/language folder for languages available','alpha|req'),(17,'base_url','http://opendocman.ionos-prisma.de','Set this to the url of the site. No need for trailing \"/\" here','url'),(18,'max_query','500','Set this to the maximum number of rows you want to be returned in a file listing.','num');
/*!40000 ALTER TABLE `opdm_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_udf`
--

LOCK TABLES `opdm_udf` WRITE;
/*!40000 ALTER TABLE `opdm_udf` DISABLE KEYS */;
/*!40000 ALTER TABLE `opdm_udf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_user`
--

LOCK TABLES `opdm_user` WRITE;
/*!40000 ALTER TABLE `opdm_user` DISABLE KEYS */;
INSERT INTO `opdm_user` VALUES (1,'admin','296409b5104724723c460dd8747d348c',1,'5555551212','piotrowski+ionos.de@gmail.com','User','Admin','',1,1);
/*!40000 ALTER TABLE `opdm_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opdm_user_perms`
--

LOCK TABLES `opdm_user_perms` WRITE;
/*!40000 ALTER TABLE `opdm_user_perms` DISABLE KEYS */;
INSERT INTO `opdm_user_perms` VALUES (1,1,4);
/*!40000 ALTER TABLE `opdm_user_perms` ENABLE KEYS */;
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
