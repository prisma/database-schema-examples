-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: movielens
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Letha241'),(2,'Mollie1975'),(3,'Quintin5'),(4,'Kathern49'),(5,'Felisa221'),(6,NULL),(7,''),(8,NULL),(9,NULL),(10,'Shenita2027'),(11,''),(12,''),(13,NULL),(14,'Arnita2004'),(15,'Woodrow2009'),(16,NULL),(17,'Chantel318'),(18,''),(19,'Aisha2010'),(20,'Christopher1976'),(21,''),(22,'Stephan1976'),(23,'Brinson972'),(24,'Carpenter1994'),(25,'Doyle2'),(26,'Johnston1952'),(27,NULL),(28,'Booker6'),(29,'Carvalho72'),(30,'Aguilera1993'),(31,NULL),(32,NULL),(33,'Paris2022'),(34,NULL),(35,'Jerrod1982'),(36,NULL),(37,''),(38,'Suarez82'),(39,'Abreu232'),(40,'Shank212'),(41,''),(42,NULL),(43,''),(44,NULL),(45,'Elise28'),(46,''),(47,'Alcala1977'),(48,''),(49,'Abernathy6'),(50,'Lindsey295');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `genres_movies`
--

LOCK TABLES `genres_movies` WRITE;
/*!40000 ALTER TABLE `genres_movies` DISABLE KEYS */;
INSERT INTO `genres_movies` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50);
/*!40000 ALTER TABLE `genres_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Sit beatae doloremque error maxime.','1988-12-13'),(2,'At molestias obcaecati fugit.','1970-01-07'),(3,'Sed facilis quis omnis ut ab.','1970-01-09'),(4,'Nihil odio et earum.','1975-03-15'),(5,'Itaque voluptatum eligendi et.','1970-01-01'),(6,'Sunt assumenda nemo sit.','1984-07-01'),(7,'Fugit recusandae deleniti repellat.','2001-03-15'),(8,'Officia quod blanditiis modi corrupti.','1975-10-19'),(9,'Repellat ut temporibus excepturi quas.','1979-02-25'),(10,'Assumenda quia sed voluptas.','2008-09-03'),(11,'Molestias neque ut suscipit ad magnam.','1970-07-11'),(12,'Eaque quasi nesciunt et molestiae.','2019-12-10'),(13,'Rerum quaerat recusandae voluptates.','1991-09-21'),(14,'Rerum magnam soluta autem et atque.','1991-11-13'),(15,'A nobis voluptatem at distinctio.','1996-08-18'),(16,'Ut unde provident et.','1972-02-02'),(17,'In sed quisquam corrupti ut quis.','2006-06-02'),(18,'Suscipit magnam qui quia optio modi.','1970-01-03'),(19,'Voluptate rerum modi et culpa soluta.','1985-10-13'),(20,'Sed sit eveniet sed.','1971-06-05'),(21,'Incidunt quidem voluptatibus fugiat.','1971-12-15'),(22,'Quaerat deleniti unde tenetur error.','1970-01-05'),(23,'Nesciunt est corporis ut tenetur.','1970-01-02'),(24,'Et dolore vel et error doloremque in.','1971-02-05'),(25,NULL,NULL),(26,'Est praesentium dolorem est quos.','2009-05-14'),(27,'Obcaecati placeat voluptate tempora.','1994-07-26'),(28,'Quia omnis sit asperiores eligendi.','1972-06-06'),(29,'Natus iste nam quo quod perspiciatis.','1970-01-02'),(30,'Ab saepe et non tempore sapiente.','1971-07-02'),(31,'Commodi totam modi et cupiditate.','2002-05-08'),(32,'Et voluptatem eveniet natus molestiae.','2015-06-11'),(33,'Voluptatem iste pariatur asperiores.','1995-06-07'),(34,'Natus cumque magni.','1971-06-09'),(35,'Est consequatur placeat eligendi.','2013-02-13'),(36,'Deleniti cupiditate alias sit.','1970-02-23'),(37,'Optio veritatis aspernatur fuga sit.','1972-06-10'),(38,'Qui fuga perspiciatis voluptatem.','1979-09-16'),(39,'Tenetur et tempore ullam voluptatibus.','1970-01-07'),(40,'Quo pariatur qui voluptas qui.','2011-04-08'),(41,'Sit impedit unde numquam ullam soluta.','1970-04-08'),(42,NULL,NULL),(43,'Minus dolorem fuga velit aliquid.','1973-07-23'),(44,'Iste rerum officia voluptatem.','1971-05-10'),(45,'Voluptatem quae qui id culpa odit ad.','1971-06-16'),(46,'Hic fugiat corporis voluptates.','2013-09-18'),(47,'Dolorem architecto voluptatem error.','2000-01-29'),(48,'Ut omnis ducimus officia ut vero.','1997-08-22'),(49,NULL,NULL),(50,'Maiores ut quam aliquid.','1970-11-01');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `occupations`
--

LOCK TABLES `occupations` WRITE;
/*!40000 ALTER TABLE `occupations` DISABLE KEYS */;
INSERT INTO `occupations` VALUES (1,'Norris377'),(2,'Roxane2028'),(3,'Sauls1979'),(4,'Craig2020'),(5,NULL),(6,''),(7,'Racheal2025'),(8,'Abraham123'),(9,'Aleida749'),(10,NULL),(11,'Abraham1995'),(12,''),(13,'English2017'),(14,'Angila1963'),(15,'Angla5'),(16,'Robb636'),(17,'Tyron1995'),(18,'Jewel535'),(19,'Selma2028'),(20,'Emery569'),(21,NULL),(22,'Milford9'),(23,'Andreas1980'),(24,NULL),(25,''),(26,'Lindsay1'),(27,'Stefan547'),(28,''),(29,'German1978'),(30,'Santo492'),(31,'Jeffries9'),(32,'Ela1958'),(33,'Bernardo1957'),(34,'Merlene2002'),(35,'Connor2003'),(36,'Heriberto97'),(37,NULL),(38,'Abbott1981'),(39,'Ahmed2026'),(40,'Benito1971'),(41,'Toledo921'),(42,''),(43,'Thao237'),(44,NULL),(45,'Jerald1984'),(46,NULL),(47,'Mares2020'),(48,'Delaine8'),(49,NULL),(50,'Teofila65');
/*!40000 ALTER TABLE `occupations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,1,1,-1360574059,'1974-09-15 13:15:02'),(2,2,2,NULL,NULL),(3,3,3,-145350678,'1974-11-12 03:58:29'),(4,4,4,-286315720,'1988-01-07 07:12:26'),(5,5,5,-2086140314,'1972-09-06 03:56:22'),(6,6,6,-1906880373,'2007-04-11 02:10:02'),(7,7,7,-145864143,'1998-09-10 19:29:44'),(8,8,8,-56,'1970-12-31 18:39:27'),(9,9,9,-91,'1970-12-31 18:45:15'),(10,10,10,-716658829,'1982-11-13 07:51:08'),(11,11,11,-1821398907,'2010-01-31 02:16:47'),(12,12,12,-443590315,'1992-05-18 22:32:13'),(13,13,13,3098,'1970-12-31 18:30:31'),(14,14,14,-219604355,'1978-09-06 09:28:33'),(15,15,15,-1105489138,'1987-05-04 19:24:40'),(16,16,16,1389,'1970-12-31 18:30:14'),(17,17,17,NULL,NULL),(18,18,18,-923543739,'2002-09-15 06:44:57'),(19,19,19,-1497664312,'1975-04-01 17:26:24'),(20,20,20,-1748363887,'1999-11-20 13:37:51'),(21,21,21,NULL,NULL),(22,22,22,58,'1970-12-31 18:30:06'),(23,23,23,-1874041020,'1981-11-14 23:21:59'),(24,24,24,-8175,'1970-12-31 20:46:16'),(25,25,25,-343,'1970-12-31 19:27:14'),(26,26,26,-2046077599,'1995-01-28 10:32:26'),(27,27,27,-6,'1970-12-31 18:40:47'),(28,28,28,-835213159,'1976-09-01 03:35:07'),(29,29,29,-764043857,'1993-05-30 16:15:00'),(30,30,30,-295350700,'1981-01-08 12:39:23'),(31,31,31,-317904159,'1995-06-30 16:41:39'),(32,32,32,-838172443,'1994-05-19 21:23:10'),(33,33,33,-88606210,'2006-09-04 09:00:17'),(34,34,34,-713299118,'1977-11-16 06:00:47'),(35,35,35,-622,'1970-12-31 18:40:23'),(36,36,36,-517309001,'1971-01-19 08:37:37'),(37,37,37,-2073355062,'2019-03-15 13:21:50'),(38,38,38,-206744491,'2013-05-25 01:23:14'),(39,39,39,40,'1970-12-31 18:30:05'),(40,40,40,-1866501799,'1990-04-19 11:37:13'),(41,41,41,-9,'1970-12-31 18:31:38'),(42,42,42,-139476745,'1971-08-02 11:09:45'),(43,43,43,-303119868,'1988-05-03 18:18:18'),(44,44,44,5749,'1970-12-31 18:30:58'),(45,45,45,-3087,'1970-12-31 19:21:28'),(46,46,46,5363,'1970-12-31 18:30:54'),(47,47,47,-3,'1970-12-31 18:36:23'),(48,48,48,-2,'1970-12-31 18:34:04'),(49,49,49,-1935617048,'2009-10-25 04:37:22'),(50,50,50,-64894388,'1987-08-12 08:40:34');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,1,NULL),(2,NULL,'',2,''),(3,NULL,'F',3,'31862'),(4,NULL,'F',4,'30090'),(5,NULL,NULL,5,NULL),(6,NULL,'M',6,'13550'),(7,NULL,'',7,''),(8,NULL,'M',8,'80185'),(9,NULL,NULL,9,NULL),(10,NULL,'M',10,'70235'),(11,NULL,'M',11,'25376'),(12,NULL,NULL,12,NULL),(13,NULL,'',13,''),(14,NULL,'F',14,'54030'),(15,NULL,'M',15,'58852'),(16,NULL,NULL,16,NULL),(17,NULL,'',17,''),(18,NULL,NULL,18,NULL),(19,NULL,'M',19,'26634'),(20,NULL,'M',20,'42721'),(21,NULL,'M',21,'68440'),(22,NULL,'',22,''),(23,NULL,'M',23,'06826'),(24,NULL,'',24,''),(25,NULL,'M',25,'01752'),(26,NULL,NULL,26,NULL),(27,NULL,'F',27,'48208'),(28,NULL,NULL,28,NULL),(29,NULL,'M',29,'91066'),(30,NULL,'F',30,'73759'),(31,NULL,NULL,31,NULL),(32,NULL,'M',32,'05933'),(33,NULL,'M',33,'56631'),(34,NULL,'M',34,'28477'),(35,NULL,'',35,''),(36,NULL,'M',36,'25813'),(37,NULL,'',37,''),(38,NULL,'M',38,'54518'),(39,NULL,'M',39,'96555'),(40,NULL,'',40,''),(41,NULL,NULL,41,NULL),(42,NULL,'M',42,'07607'),(43,NULL,'M',43,'86989'),(44,NULL,'M',44,'57077'),(45,NULL,'F',45,'49037'),(46,NULL,'M',46,'92422'),(47,NULL,'M',47,'90287'),(48,NULL,'F',48,'88184'),(49,NULL,'F',49,'87437'),(50,NULL,'M',50,'19425');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-03 21:54:19
