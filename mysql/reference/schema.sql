-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: janpiotrowski.de    Database: d0311bc7
-- ------------------------------------------------------
-- Server version       5.7.28-nmm1-log

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
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (                                                                                 
  `id` int(11) NOT NULL AUTO_INCREMENT,                                                                
  `numeric_integer_tinyint` tinyint(4) NOT NULL,                                                       
  `numeric_integer_smallint` smallint(6) NOT NULL,                                                     
  `numeric_integer_int` int(11) NOT NULL,                                                              
  `numeric_integer_bigint` bigint(20) NOT NULL,                                                        
  `numeric_floating_decimal` decimal(10,0) NOT NULL,                                                   
  `numeric_floating_float` float NOT NULL,                                                             
  `numeric_fixed_double` double NOT NULL,                                                              
  `numeric_fixed_real` double NOT NULL,                                                                
  `numeric_bit` bit(64) NOT NULL,                                                                      
  `numeric_boolean` tinyint(1) NOT NULL,                                                               
  `date_date` date NOT NULL,                                                                           
  `date_datetime` datetime NOT NULL,                                                                   
  `date_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,           
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;                                                                
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-12 14:06:58
