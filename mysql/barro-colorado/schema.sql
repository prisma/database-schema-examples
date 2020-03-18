-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: condit_bci
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `Census`
--

DROP TABLE IF EXISTS `Census`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Census` (
  `CensusID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlotID` int(10) unsigned NOT NULL,
  `PlotCensusNumber` char(16) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`CensusID`),
  KEY `Ref610` (`PlotID`),
  CONSTRAINT `Census_ibfk_1` FOREIGN KEY (`PlotID`) REFERENCES `Site` (`PlotID`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Census`
--

LOCK TABLES `Census` WRITE;
/*!40000 ALTER TABLE `Census` DISABLE KEYS */;
/*!40000 ALTER TABLE `Census` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CensusQuadrat`
--

DROP TABLE IF EXISTS `CensusQuadrat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CensusQuadrat` (
  `CensusID` int(10) unsigned NOT NULL,
  `QuadratID` int(10) unsigned NOT NULL,
  `CensusQuadratID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CensusQuadratID`),
  KEY `Ref534` (`CensusID`),
  KEY `QuadratID` (`QuadratID`),
  CONSTRAINT `CensusQuadrat_ibfk_1` FOREIGN KEY (`CensusID`) REFERENCES `Census` (`CensusID`),
  CONSTRAINT `CensusQuadrat_ibfk_2` FOREIGN KEY (`QuadratID`) REFERENCES `Quadrat` (`QuadratID`)
) ENGINE=InnoDB AUTO_INCREMENT=14749 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CensusQuadrat`
--

LOCK TABLES `CensusQuadrat` WRITE;
/*!40000 ALTER TABLE `CensusQuadrat` DISABLE KEYS */;
/*!40000 ALTER TABLE `CensusQuadrat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `CensusView`
--

DROP TABLE IF EXISTS `CensusView`;
/*!50001 DROP VIEW IF EXISTS `CensusView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `CensusView` AS SELECT 
 1 AS `CensusID`,
 1 AS `PlotID`,
 1 AS `PlotCensusNumber`,
 1 AS `StartDate`,
 1 AS `EndDate`,
 1 AS `Description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Coordinates`
--

DROP TABLE IF EXISTS `Coordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Coordinates` (
  `CoorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FeatureID` int(10) unsigned DEFAULT NULL,
  `PlotID` int(10) unsigned DEFAULT NULL,
  `QuadratID` int(10) unsigned DEFAULT NULL,
  `GX` decimal(16,5) DEFAULT NULL,
  `GY` decimal(16,5) DEFAULT NULL,
  `GZ` decimal(16,5) DEFAULT NULL,
  `PX` decimal(16,5) DEFAULT NULL,
  `PY` decimal(16,5) DEFAULT NULL,
  `PZ` decimal(16,5) DEFAULT NULL,
  `QX` decimal(16,5) DEFAULT NULL,
  `QY` decimal(16,5) DEFAULT NULL,
  `QZ` decimal(16,5) DEFAULT NULL,
  `CoordinateNo` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CoorID`),
  KEY `FeatureID` (`FeatureID`),
  KEY `PlotID` (`PlotID`),
  KEY `QuadratID` (`QuadratID`),
  CONSTRAINT `Coordinates_ibfk_1` FOREIGN KEY (`FeatureID`) REFERENCES `Features` (`FeatureID`),
  CONSTRAINT `Coordinates_ibfk_2` FOREIGN KEY (`PlotID`) REFERENCES `Site` (`PlotID`),
  CONSTRAINT `Coordinates_ibfk_3` FOREIGN KEY (`QuadratID`) REFERENCES `Quadrat` (`QuadratID`)
) ENGINE=InnoDB AUTO_INCREMENT=3349 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Coordinates`
--

LOCK TABLES `Coordinates` WRITE;
/*!40000 ALTER TABLE `Coordinates` DISABLE KEYS */;
/*!40000 ALTER TABLE `Coordinates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `CountryID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `CountryName` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`CountryID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CurrentObsolete`
--

DROP TABLE IF EXISTS `CurrentObsolete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CurrentObsolete` (
  `COID` int(11) NOT NULL AUTO_INCREMENT,
  `SpeciesID` int(10) unsigned NOT NULL,
  `ObsoleteSpeciesID` int(10) unsigned NOT NULL,
  `SubSpeciesID` int(11) DEFAULT NULL,
  `ObsoleteSubSpeciesID` int(11) DEFAULT NULL,
  `ChangeDate` datetime NOT NULL,
  `Reversed` tinyint(1) NOT NULL DEFAULT '0',
  `ChangeCodeID` int(10) unsigned NOT NULL,
  `ChangeNote` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`COID`),
  KEY `Ref32191` (`ChangeCodeID`),
  KEY `Ref92192` (`SpeciesID`),
  KEY `Ref92212` (`ObsoleteSpeciesID`),
  KEY `Reversed` (`Reversed`),
  CONSTRAINT `CurrentObsolete_ibfk_1` FOREIGN KEY (`SpeciesID`) REFERENCES `Species` (`SpeciesID`),
  CONSTRAINT `CurrentObsolete_ibfk_2` FOREIGN KEY (`ObsoleteSpeciesID`) REFERENCES `Species` (`SpeciesID`),
  CONSTRAINT `CurrentObsolete_ibfk_3` FOREIGN KEY (`ChangeCodeID`) REFERENCES `TreeTaxChange` (`ChangeCodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CurrentObsolete`
--

LOCK TABLES `CurrentObsolete` WRITE;
/*!40000 ALTER TABLE `CurrentObsolete` DISABLE KEYS */;
/*!40000 ALTER TABLE `CurrentObsolete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DBH`
--

DROP TABLE IF EXISTS `DBH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DBH` (
  `CensusID` int(10) unsigned NOT NULL,
  `StemID` int(10) unsigned NOT NULL,
  `DBH` float DEFAULT NULL,
  `HOM` decimal(10,2) DEFAULT NULL,
  `PrimaryStem` varchar(20) DEFAULT NULL,
  `ExactDate` date DEFAULT NULL,
  `DBHID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Comments` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`DBHID`),
  KEY `Ref549` (`CensusID`),
  KEY `Ref1951` (`StemID`),
  CONSTRAINT `DBH_ibfk_1` FOREIGN KEY (`CensusID`) REFERENCES `Census` (`CensusID`),
  CONSTRAINT `DBH_ibfk_2` FOREIGN KEY (`StemID`) REFERENCES `Stem` (`StemID`)
) ENGINE=InnoDB AUTO_INCREMENT=2759651 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DBH`
--

LOCK TABLES `DBH` WRITE;
/*!40000 ALTER TABLE `DBH` DISABLE KEYS */;
/*!40000 ALTER TABLE `DBH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DBHAttributes`
--

DROP TABLE IF EXISTS `DBHAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DBHAttributes` (
  `TSMID` int(10) unsigned NOT NULL,
  `DBHID` int(10) unsigned DEFAULT NULL,
  `DBHAttID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`DBHAttID`),
  KEY `Ref2053` (`TSMID`),
  KEY `DBHID` (`DBHID`),
  CONSTRAINT `DBHAttributes_ibfk_2` FOREIGN KEY (`TSMID`) REFERENCES `TSMAttributes` (`TSMID`),
  CONSTRAINT `DBHAttributes_ibfk_3` FOREIGN KEY (`DBHID`) REFERENCES `DBH` (`DBHID`)
) ENGINE=InnoDB AUTO_INCREMENT=987997 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DBHAttributes`
--

LOCK TABLES `DBHAttributes` WRITE;
/*!40000 ALTER TABLE `DBHAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `DBHAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DataCollection`
--

DROP TABLE IF EXISTS `DataCollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DataCollection` (
  `CensusID` int(10) unsigned NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `DataCollectionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PersonnelRoleID` int(10) unsigned NOT NULL,
  `QuadratID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`DataCollectionID`),
  KEY `Ref1743` (`CensusID`),
  KEY `QuadratID` (`QuadratID`),
  KEY `PersonnelRoleID` (`PersonnelRoleID`),
  CONSTRAINT `DataCollection_ibfk_4` FOREIGN KEY (`QuadratID`) REFERENCES `Quadrat` (`QuadratID`),
  CONSTRAINT `DataCollection_ibfk_5` FOREIGN KEY (`CensusID`) REFERENCES `Census` (`CensusID`),
  CONSTRAINT `DataCollection_ibfk_6` FOREIGN KEY (`PersonnelRoleID`) REFERENCES `PersonnelRole` (`PersonnelRoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11965 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataCollection`
--

LOCK TABLES `DataCollection` WRITE;
/*!40000 ALTER TABLE `DataCollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `DataCollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Family`
--

DROP TABLE IF EXISTS `Family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Family` (
  `FamilyID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Family` char(32) DEFAULT NULL,
  `ReferenceID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`FamilyID`),
  KEY `Ref84175` (`ReferenceID`),
  CONSTRAINT `Family_ibfk_1` FOREIGN KEY (`ReferenceID`) REFERENCES `Reference` (`ReferenceID`)
) ENGINE=InnoDB AUTO_INCREMENT=555 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Family`
--

LOCK TABLES `Family` WRITE;
/*!40000 ALTER TABLE `Family` DISABLE KEYS */;
/*!40000 ALTER TABLE `Family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureTypes`
--

DROP TABLE IF EXISTS `FeatureTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureTypes` (
  `FeatureTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Type` varchar(32) NOT NULL,
  PRIMARY KEY (`FeatureTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureTypes`
--

LOCK TABLES `FeatureTypes` WRITE;
/*!40000 ALTER TABLE `FeatureTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FeatureTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Features` (
  `FeatureID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FeatureTypeID` int(10) unsigned NOT NULL,
  `Name` varchar(32) NOT NULL,
  `ShortDescrip` varchar(32) DEFAULT NULL,
  `LongDescrip` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`FeatureID`),
  KEY `FeatureTypeID` (`FeatureTypeID`),
  CONSTRAINT `Features_ibfk_1` FOREIGN KEY (`FeatureTypeID`) REFERENCES `FeatureTypes` (`FeatureTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Features`
--

LOCK TABLES `Features` WRITE;
/*!40000 ALTER TABLE `Features` DISABLE KEYS */;
/*!40000 ALTER TABLE `Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genus`
--

DROP TABLE IF EXISTS `Genus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genus` (
  `GenusID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Genus` char(32) DEFAULT NULL,
  `ReferenceID` smallint(5) unsigned DEFAULT NULL,
  `Authority` char(32) DEFAULT NULL,
  `FamilyID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`GenusID`),
  KEY `Ref2868` (`FamilyID`),
  KEY `Ref84176` (`ReferenceID`),
  CONSTRAINT `Genus_ibfk_1` FOREIGN KEY (`FamilyID`) REFERENCES `Family` (`FamilyID`),
  CONSTRAINT `Genus_ibfk_2` FOREIGN KEY (`ReferenceID`) REFERENCES `Reference` (`ReferenceID`)
) ENGINE=InnoDB AUTO_INCREMENT=21303 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genus`
--

LOCK TABLES `Genus` WRITE;
/*!40000 ALTER TABLE `Genus` DISABLE KEYS */;
/*!40000 ALTER TABLE `Genus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Log`
--

DROP TABLE IF EXISTS `Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Log` (
  `LogID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `PersonnelID` smallint(5) unsigned DEFAULT NULL,
  `ChangedTable` varchar(32) NOT NULL,
  `PrimaryKey` varchar(32) NOT NULL,
  `ChangedColumn` varchar(32) NOT NULL,
  `ChangeDate` date DEFAULT NULL,
  `ChangeTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Description` varchar(256) DEFAULT NULL,
  `Action` enum('I','D','U') NOT NULL,
  `Old` varchar(512) NOT NULL,
  `New` varchar(512) NOT NULL,
  PRIMARY KEY (`LogID`),
  KEY `PersonnelID` (`PersonnelID`),
  CONSTRAINT `Log_ibfk_1` FOREIGN KEY (`PersonnelID`) REFERENCES `Personnel` (`PersonnelID`)
) ENGINE=InnoDB AUTO_INCREMENT=91765 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Log`
--

LOCK TABLES `Log` WRITE;
/*!40000 ALTER TABLE `Log` DISABLE KEYS */;
/*!40000 ALTER TABLE `Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LogMAttrHistoryd`
--

DROP TABLE IF EXISTS `LogMAttrHistoryd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LogMAttrHistoryd` (
  `LogMAttrHistoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MeasureID` int(10) unsigned NOT NULL,
  `CensusID` int(10) unsigned NOT NULL,
  `TSMID` int(10) unsigned NOT NULL,
  `DateOfChange` date DEFAULT NULL,
  `DescriptionOfChange` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`LogMAttrHistoryID`),
  KEY `Ref21225` (`MeasureID`,`CensusID`,`TSMID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogMAttrHistoryd`
--

LOCK TABLES `LogMAttrHistoryd` WRITE;
/*!40000 ALTER TABLE `LogMAttrHistoryd` DISABLE KEYS */;
/*!40000 ALTER TABLE `LogMAttrHistoryd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LogMeasurementHistoryd`
--

DROP TABLE IF EXISTS `LogMeasurementHistoryd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LogMeasurementHistoryd` (
  `MeasureID` int(10) unsigned NOT NULL,
  `CensusID` int(10) unsigned NOT NULL,
  `MeasurementHistoryID` int(10) unsigned NOT NULL,
  `StemID` int(10) unsigned DEFAULT NULL,
  `TreeID` int(10) unsigned DEFAULT NULL,
  `DateOfChange` date NOT NULL,
  `DescriptionOfChange` varchar(128) DEFAULT NULL,
  `DBH` float DEFAULT NULL,
  `HOM` float DEFAULT NULL,
  `ExactDate` date DEFAULT NULL,
  PRIMARY KEY (`MeasureID`,`CensusID`,`MeasurementHistoryID`),
  KEY `Ref287` (`MeasureID`,`CensusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogMeasurementHistoryd`
--

LOCK TABLES `LogMeasurementHistoryd` WRITE;
/*!40000 ALTER TABLE `LogMeasurementHistoryd` DISABLE KEYS */;
/*!40000 ALTER TABLE `LogMeasurementHistoryd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LogSpeciesInventory`
--

DROP TABLE IF EXISTS `LogSpeciesInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LogSpeciesInventory` (
  `SpeciesInvHistID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SpeciesInvID` int(10) unsigned NOT NULL,
  `CensusID` int(10) unsigned NOT NULL,
  `PlotID` int(10) unsigned NOT NULL,
  `SpeciesID` int(10) unsigned NOT NULL,
  `SubSpeciesID` int(10) unsigned DEFAULT NULL,
  `DateOfChange` date DEFAULT NULL,
  `DescriptionOfChange` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`SpeciesInvHistID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogSpeciesInventory`
--

LOCK TABLES `LogSpeciesInventory` WRITE;
/*!40000 ALTER TABLE `LogSpeciesInventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `LogSpeciesInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LogTreeHistoryd`
--

DROP TABLE IF EXISTS `LogTreeHistoryd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LogTreeHistoryd` (
  `TreeID` int(10) unsigned NOT NULL,
  `TreeHistoryID` int(10) unsigned NOT NULL,
  `ChangeCodeID` int(10) unsigned DEFAULT NULL,
  `ChangeDate` date DEFAULT NULL,
  `ChangeDescription` varchar(128) DEFAULT NULL,
  `QuadratID` int(10) unsigned DEFAULT NULL,
  `PlotID` int(10) unsigned DEFAULT NULL,
  `Tag` char(10) DEFAULT NULL,
  `X` float DEFAULT NULL,
  `Y` float DEFAULT NULL,
  `SpeciesID` int(10) unsigned DEFAULT NULL,
  `SubSpeciesID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`TreeID`,`TreeHistoryID`),
  KEY `Ref186` (`TreeID`),
  KEY `Ref32221` (`ChangeCodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogTreeHistoryd`
--

LOCK TABLES `LogTreeHistoryd` WRITE;
/*!40000 ALTER TABLE `LogTreeHistoryd` DISABLE KEYS */;
/*!40000 ALTER TABLE `LogTreeHistoryd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Measurement`
--

DROP TABLE IF EXISTS `Measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Measurement` (
  `MeasureID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CensusID` int(10) unsigned NOT NULL,
  `TreeID` int(10) unsigned NOT NULL,
  `StemID` int(10) unsigned NOT NULL,
  `MeasurementTypeID` int(10) unsigned NOT NULL,
  `Measure` varchar(256) NOT NULL,
  `ExactDate` date NOT NULL,
  `Comments` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`MeasureID`),
  KEY `CensusID` (`CensusID`),
  KEY `TreeID` (`TreeID`),
  KEY `StemID` (`StemID`),
  KEY `MeasurementTypeID` (`MeasurementTypeID`),
  CONSTRAINT `Measurement_ibfk_1` FOREIGN KEY (`CensusID`) REFERENCES `Census` (`CensusID`),
  CONSTRAINT `Measurement_ibfk_2` FOREIGN KEY (`TreeID`) REFERENCES `Tree` (`TreeID`),
  CONSTRAINT `Measurement_ibfk_3` FOREIGN KEY (`StemID`) REFERENCES `Stem` (`StemID`),
  CONSTRAINT `Measurement_ibfk_4` FOREIGN KEY (`MeasurementTypeID`) REFERENCES `MeasurementType` (`MeasurementTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Measurement`
--

LOCK TABLES `Measurement` WRITE;
/*!40000 ALTER TABLE `Measurement` DISABLE KEYS */;
/*!40000 ALTER TABLE `Measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MeasurementAttributes`
--

DROP TABLE IF EXISTS `MeasurementAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MeasurementAttributes` (
  `MAttID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MeasureID` int(10) unsigned NOT NULL,
  `TSMID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`MAttID`),
  KEY `MeasureID` (`MeasureID`),
  KEY `TSMID` (`TSMID`),
  CONSTRAINT `MeasurementAttributes_ibfk_1` FOREIGN KEY (`MeasureID`) REFERENCES `Measurement` (`MeasureID`),
  CONSTRAINT `MeasurementAttributes_ibfk_3` FOREIGN KEY (`TSMID`) REFERENCES `TSMAttributes` (`TSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MeasurementAttributes`
--

LOCK TABLES `MeasurementAttributes` WRITE;
/*!40000 ALTER TABLE `MeasurementAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MeasurementAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MeasurementType`
--

DROP TABLE IF EXISTS `MeasurementType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MeasurementType` (
  `MeasurementTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UOM` varchar(32) NOT NULL,
  `Type` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`MeasurementTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MeasurementType`
--

LOCK TABLES `MeasurementType` WRITE;
/*!40000 ALTER TABLE `MeasurementType` DISABLE KEYS */;
/*!40000 ALTER TABLE `MeasurementType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personnel`
--

DROP TABLE IF EXISTS `Personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personnel` (
  `PersonnelID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(32) DEFAULT NULL,
  `LastName` varchar(32) NOT NULL,
  PRIMARY KEY (`PersonnelID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personnel`
--

LOCK TABLES `Personnel` WRITE;
/*!40000 ALTER TABLE `Personnel` DISABLE KEYS */;
/*!40000 ALTER TABLE `Personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PersonnelRole`
--

DROP TABLE IF EXISTS `PersonnelRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PersonnelRole` (
  `PersonnelRoleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PersonnelID` smallint(5) unsigned NOT NULL,
  `RoleID` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`PersonnelRoleID`),
  KEY `RoleID` (`RoleID`),
  KEY `PersonnelID` (`PersonnelID`),
  CONSTRAINT `PersonnelRole_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `RoleReference` (`RoleID`),
  CONSTRAINT `PersonnelRole_ibfk_2` FOREIGN KEY (`PersonnelID`) REFERENCES `Personnel` (`PersonnelID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PersonnelRole`
--

LOCK TABLES `PersonnelRole` WRITE;
/*!40000 ALTER TABLE `PersonnelRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `PersonnelRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quadrat`
--

DROP TABLE IF EXISTS `Quadrat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Quadrat` (
  `PlotID` int(10) unsigned NOT NULL,
  `QuadratName` char(8) DEFAULT NULL,
  `Area` float unsigned DEFAULT NULL,
  `IsStandardShape` enum('Y','N') NOT NULL,
  `QuadratID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`QuadratID`),
  KEY `Ref69` (`PlotID`),
  KEY `QuadratName` (`QuadratName`,`PlotID`),
  CONSTRAINT `Quadrat_ibfk_1` FOREIGN KEY (`PlotID`) REFERENCES `Site` (`PlotID`)
) ENGINE=InnoDB AUTO_INCREMENT=3160 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quadrat`
--

LOCK TABLES `Quadrat` WRITE;
/*!40000 ALTER TABLE `Quadrat` DISABLE KEYS */;
/*!40000 ALTER TABLE `Quadrat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reference`
--

DROP TABLE IF EXISTS `Reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reference` (
  `ReferenceID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `Citation` varchar(150) DEFAULT NULL,
  `PublicationTitle` text,
  `FullReference` text,
  `DateofPublication` date DEFAULT NULL,
  PRIMARY KEY (`ReferenceID`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reference`
--

LOCK TABLES `Reference` WRITE;
/*!40000 ALTER TABLE `Reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RemeasAttribs`
--

DROP TABLE IF EXISTS `RemeasAttribs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RemeasAttribs` (
  `TSMID` int(10) unsigned NOT NULL,
  `RemeasureID` int(10) unsigned NOT NULL,
  `RmAttID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`RmAttID`),
  KEY `Ref2073` (`TSMID`),
  KEY `RemeasureID` (`RemeasureID`),
  CONSTRAINT `RemeasAttribs_ibfk_2` FOREIGN KEY (`TSMID`) REFERENCES `TSMAttributes` (`TSMID`),
  CONSTRAINT `RemeasAttribs_ibfk_3` FOREIGN KEY (`RemeasureID`) REFERENCES `Remeasurement` (`RemeasureID`)
) ENGINE=InnoDB AUTO_INCREMENT=1730 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RemeasAttribs`
--

LOCK TABLES `RemeasAttribs` WRITE;
/*!40000 ALTER TABLE `RemeasAttribs` DISABLE KEYS */;
/*!40000 ALTER TABLE `RemeasAttribs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Remeasurement`
--

DROP TABLE IF EXISTS `Remeasurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Remeasurement` (
  `CensusID` int(10) unsigned NOT NULL,
  `StemID` int(10) unsigned NOT NULL,
  `DBH` float DEFAULT NULL,
  `HOM` float DEFAULT NULL,
  `ExactDate` date DEFAULT NULL,
  `RemeasureID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`RemeasureID`),
  KEY `Ref1957` (`StemID`),
  KEY `Ref5106` (`CensusID`),
  CONSTRAINT `Remeasurement_ibfk_1` FOREIGN KEY (`CensusID`) REFERENCES `Census` (`CensusID`),
  CONSTRAINT `Remeasurement_ibfk_3` FOREIGN KEY (`StemID`) REFERENCES `Stem` (`StemID`)
) ENGINE=InnoDB AUTO_INCREMENT=4071 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Remeasurement`
--

LOCK TABLES `Remeasurement` WRITE;
/*!40000 ALTER TABLE `Remeasurement` DISABLE KEYS */;
/*!40000 ALTER TABLE `Remeasurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RoleReference`
--

DROP TABLE IF EXISTS `RoleReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RoleReference` (
  `RoleID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `Description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoleReference`
--

LOCK TABLES `RoleReference` WRITE;
/*!40000 ALTER TABLE `RoleReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `RoleReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Site`
--

DROP TABLE IF EXISTS `Site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Site` (
  `PlotID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlotName` char(64) DEFAULT NULL,
  `LocationName` varchar(128) DEFAULT NULL,
  `CountryID` smallint(5) unsigned NOT NULL,
  `ShapeOfSite` char(32) DEFAULT NULL,
  `DescriptionOfSite` varchar(128) DEFAULT NULL,
  `Area` float unsigned NOT NULL,
  `QDimX` float unsigned NOT NULL,
  `QDimY` float unsigned NOT NULL,
  `GUOM` varchar(32) NOT NULL,
  `GZUOM` varchar(32) NOT NULL,
  `PUOM` varchar(32) NOT NULL,
  `QUOM` varchar(32) NOT NULL,
  `GCoorCollected` varchar(32) DEFAULT NULL,
  `PCoorCollected` varchar(32) DEFAULT NULL,
  `QCoorCollected` varchar(32) DEFAULT NULL,
  `IsStandardSize` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`PlotID`),
  KEY `Ref87173` (`CountryID`),
  CONSTRAINT `Site_ibfk_1` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`CountryID`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Site`
--

LOCK TABLES `Site` WRITE;
/*!40000 ALTER TABLE `Site` DISABLE KEYS */;
/*!40000 ALTER TABLE `Site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Species`
--

DROP TABLE IF EXISTS `Species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Species` (
  `SpeciesID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CurrentTaxonFlag` smallint(6) DEFAULT NULL,
  `ObsoleteTaxonFlag` smallint(6) DEFAULT NULL,
  `GenusID` int(10) unsigned NOT NULL,
  `SpeciesName` char(64) DEFAULT NULL,
  `Mnemonic` char(10) DEFAULT NULL,
  `Authority` varchar(128) DEFAULT NULL,
  `IDLEVEL` enum('subspecies','species','superspecies','genus','family','multiple','none','variety') DEFAULT NULL,
  `FieldFamily` char(32) DEFAULT NULL,
  `Description` text,
  `Lifeform` enum('Emergent Tree','Tree','Midcanopy Tree','Understory Tree','Shrub','Herb','Liana') DEFAULT NULL,
  `LocalName` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`SpeciesID`),
  KEY `Ref26208` (`GenusID`),
  KEY `Mnemonic` (`Mnemonic`),
  CONSTRAINT `Species_ibfk_1` FOREIGN KEY (`GenusID`) REFERENCES `Genus` (`GenusID`)
) ENGINE=InnoDB AUTO_INCREMENT=1709 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Species`
--

LOCK TABLES `Species` WRITE;
/*!40000 ALTER TABLE `Species` DISABLE KEYS */;
/*!40000 ALTER TABLE `Species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SpeciesInventory`
--

DROP TABLE IF EXISTS `SpeciesInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SpeciesInventory` (
  `SpeciesInvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CensusID` int(10) unsigned NOT NULL,
  `PlotID` int(10) unsigned NOT NULL,
  `SpeciesID` int(10) unsigned NOT NULL,
  `SubSpeciesID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`SpeciesInvID`),
  KEY `Ref92198` (`SpeciesID`),
  KEY `Ref93199` (`SubSpeciesID`),
  KEY `Ref5222` (`CensusID`),
  KEY `Ref642` (`PlotID`),
  CONSTRAINT `SpeciesInventory_ibfk_1` FOREIGN KEY (`CensusID`) REFERENCES `Census` (`CensusID`),
  CONSTRAINT `SpeciesInventory_ibfk_2` FOREIGN KEY (`PlotID`) REFERENCES `Site` (`PlotID`),
  CONSTRAINT `SpeciesInventory_ibfk_3` FOREIGN KEY (`SpeciesID`) REFERENCES `Species` (`SpeciesID`),
  CONSTRAINT `SpeciesInventory_ibfk_4` FOREIGN KEY (`SubSpeciesID`) REFERENCES `SubSpecies` (`SubSpeciesID`)
) ENGINE=InnoDB AUTO_INCREMENT=13118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SpeciesInventory`
--

LOCK TABLES `SpeciesInventory` WRITE;
/*!40000 ALTER TABLE `SpeciesInventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `SpeciesInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SpeciesReference`
--

DROP TABLE IF EXISTS `SpeciesReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SpeciesReference` (
  `SpRefID` int(11) NOT NULL AUTO_INCREMENT,
  `SpeciesID` int(11) DEFAULT NULL,
  `ReferenceID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SpRefID`),
  KEY `SpeciesID` (`SpeciesID`),
  KEY `ReferenceID` (`ReferenceID`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SpeciesReference`
--

LOCK TABLES `SpeciesReference` WRITE;
/*!40000 ALTER TABLE `SpeciesReference` DISABLE KEYS */;
/*!40000 ALTER TABLE `SpeciesReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Specimen`
--

DROP TABLE IF EXISTS `Specimen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Specimen` (
  `SpecimenID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TreeID` int(10) unsigned DEFAULT NULL,
  `Collector` char(64) DEFAULT NULL,
  `SpecimenNumber` int(10) unsigned DEFAULT NULL,
  `SpeciesID` int(10) unsigned NOT NULL,
  `SubSpeciesID` int(10) unsigned DEFAULT NULL,
  `Herbarium` char(32) DEFAULT NULL,
  `Voucher` smallint(5) unsigned DEFAULT NULL,
  `CollectionDate` date DEFAULT NULL,
  `DeterminedBy` char(64) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`SpecimenID`),
  KEY `Ref93194` (`SubSpeciesID`),
  KEY `Ref92196` (`SpeciesID`),
  KEY `Ref1171` (`TreeID`),
  CONSTRAINT `Specimen_ibfk_1` FOREIGN KEY (`SpeciesID`) REFERENCES `Species` (`SpeciesID`),
  CONSTRAINT `Specimen_ibfk_2` FOREIGN KEY (`SubSpeciesID`) REFERENCES `SubSpecies` (`SubSpeciesID`),
  CONSTRAINT `Specimen_ibfk_3` FOREIGN KEY (`TreeID`) REFERENCES `Tree` (`TreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Specimen`
--

LOCK TABLES `Specimen` WRITE;
/*!40000 ALTER TABLE `Specimen` DISABLE KEYS */;
/*!40000 ALTER TABLE `Specimen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stem`
--

DROP TABLE IF EXISTS `Stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stem` (
  `StemID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TreeID` int(10) unsigned NOT NULL,
  `StemTag` varchar(32) DEFAULT NULL,
  `StemDescription` varchar(128) DEFAULT NULL,
  `QuadratID` int(10) unsigned NOT NULL,
  `StemNumber` int(10) unsigned NOT NULL,
  `Moved` enum('Y','N') NOT NULL DEFAULT 'N',
  `GX` decimal(16,5) DEFAULT NULL,
  `GY` decimal(16,5) DEFAULT NULL,
  `GZ` decimal(16,5) DEFAULT NULL,
  `PX` decimal(16,5) DEFAULT NULL,
  `PY` decimal(16,5) DEFAULT NULL,
  `PZ` decimal(16,5) DEFAULT NULL,
  `QX` decimal(16,5) DEFAULT NULL,
  `QY` decimal(16,5) DEFAULT NULL,
  `QZ` decimal(16,5) DEFAULT NULL,
  PRIMARY KEY (`StemID`),
  KEY `Ref150` (`TreeID`),
  CONSTRAINT `Stem_ibfk_1` FOREIGN KEY (`TreeID`) REFERENCES `Tree` (`TreeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1077728 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stem`
--

LOCK TABLES `Stem` WRITE;
/*!40000 ALTER TABLE `Stem` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubSpecies`
--

DROP TABLE IF EXISTS `SubSpecies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubSpecies` (
  `SubSpeciesID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SpeciesID` int(10) unsigned NOT NULL,
  `CurrentTaxonFlag` smallint(6) DEFAULT NULL,
  `ObsoleteTaxonFlag` smallint(6) DEFAULT NULL,
  `SubSpeciesName` char(64) DEFAULT NULL,
  `Mnemonic` char(10) DEFAULT NULL,
  `Authority` varchar(128) DEFAULT NULL,
  `InfraSpecificLevel` char(32) DEFAULT NULL,
  PRIMARY KEY (`SubSpeciesID`),
  KEY `Ref92193` (`SpeciesID`),
  CONSTRAINT `SubSpecies_ibfk_1` FOREIGN KEY (`SpeciesID`) REFERENCES `Species` (`SpeciesID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubSpecies`
--

LOCK TABLES `SubSpecies` WRITE;
/*!40000 ALTER TABLE `SubSpecies` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubSpecies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TSMAttributes`
--

DROP TABLE IF EXISTS `TSMAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TSMAttributes` (
  `TSMID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TSMCode` char(10) NOT NULL,
  `Description` varchar(128) NOT NULL,
  `Status` enum('alive','alive-not measured','dead','missing','broken below','stem dead') DEFAULT NULL,
  PRIMARY KEY (`TSMID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TSMAttributes`
--

LOCK TABLES `TSMAttributes` WRITE;
/*!40000 ALTER TABLE `TSMAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TSMAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tree`
--

DROP TABLE IF EXISTS `Tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tree` (
  `TreeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Tag` char(10) DEFAULT NULL,
  `SpeciesID` int(10) unsigned NOT NULL,
  `SubSpeciesID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`TreeID`),
  KEY `Ref92217` (`SpeciesID`),
  KEY `Ref93219` (`SubSpeciesID`),
  KEY `Tag` (`Tag`),
  CONSTRAINT `Tree_ibfk_2` FOREIGN KEY (`SpeciesID`) REFERENCES `Species` (`SpeciesID`),
  CONSTRAINT `Tree_ibfk_3` FOREIGN KEY (`SubSpeciesID`) REFERENCES `SubSpecies` (`SubSpeciesID`)
) ENGINE=InnoDB AUTO_INCREMENT=526117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tree`
--

LOCK TABLES `Tree` WRITE;
/*!40000 ALTER TABLE `Tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeAttributes`
--

DROP TABLE IF EXISTS `TreeAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeAttributes` (
  `CensusID` int(10) unsigned NOT NULL,
  `TreeID` int(10) unsigned NOT NULL,
  `TSMID` int(10) unsigned NOT NULL,
  `TAttID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`TAttID`),
  KEY `Ref163` (`TreeID`),
  KEY `Ref2064` (`TSMID`),
  KEY `Ref5107` (`CensusID`),
  CONSTRAINT `TreeAttributes_ibfk_1` FOREIGN KEY (`CensusID`) REFERENCES `Census` (`CensusID`),
  CONSTRAINT `TreeAttributes_ibfk_2` FOREIGN KEY (`TreeID`) REFERENCES `Tree` (`TreeID`),
  CONSTRAINT `TreeAttributes_ibfk_3` FOREIGN KEY (`TSMID`) REFERENCES `TSMAttributes` (`TSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeAttributes`
--

LOCK TABLES `TreeAttributes` WRITE;
/*!40000 ALTER TABLE `TreeAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TreeAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeTaxChange`
--

DROP TABLE IF EXISTS `TreeTaxChange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeTaxChange` (
  `ChangeCodeID` int(10) unsigned NOT NULL,
  `Description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ChangeCodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeTaxChange`
--

LOCK TABLES `TreeTaxChange` WRITE;
/*!40000 ALTER TABLE `TreeTaxChange` DISABLE KEYS */;
/*!40000 ALTER TABLE `TreeTaxChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ViewFullTable`
--

DROP TABLE IF EXISTS `ViewFullTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ViewFullTable` (
  `DBHID` int(11) NOT NULL,
  `PlotName` varchar(35) DEFAULT NULL,
  `PlotID` int(11) DEFAULT NULL,
  `Family` char(32) DEFAULT NULL,
  `Genus` char(32) DEFAULT NULL,
  `SpeciesName` char(64) DEFAULT NULL,
  `Mnemonic` char(10) DEFAULT NULL,
  `Subspecies` char(64) DEFAULT NULL,
  `SpeciesID` int(11) DEFAULT NULL,
  `SubspeciesID` int(11) DEFAULT NULL,
  `QuadratName` varchar(12) DEFAULT NULL,
  `QuadratID` int(11) DEFAULT NULL,
  `PX` decimal(16,5) DEFAULT NULL,
  `PY` decimal(16,5) DEFAULT NULL,
  `QX` decimal(16,5) DEFAULT NULL,
  `QY` decimal(16,5) DEFAULT NULL,
  `TreeID` int(11) DEFAULT NULL,
  `Tag` char(10) DEFAULT NULL,
  `StemID` int(11) DEFAULT NULL,
  `StemNumber` int(11) DEFAULT NULL,
  `StemTag` varchar(32) DEFAULT NULL,
  `PrimaryStem` char(20) DEFAULT NULL,
  `CensusID` int(11) DEFAULT NULL,
  `PlotCensusNumber` int(11) DEFAULT NULL,
  `DBH` float DEFAULT NULL,
  `HOM` decimal(10,2) DEFAULT NULL,
  `ExactDate` date DEFAULT NULL,
  `Date` int(11) DEFAULT NULL,
  `ListOfTSM` varchar(256) DEFAULT NULL,
  `HighHOM` tinyint(1) DEFAULT NULL,
  `LargeStem` tinyint(1) DEFAULT NULL,
  `Status` enum('alive','dead','stem dead','broken below','omitted','missing') DEFAULT 'alive',
  PRIMARY KEY (`DBHID`),
  KEY `SpeciesID` (`SpeciesID`),
  KEY `SubspeciesID` (`SubspeciesID`),
  KEY `QuadratID` (`QuadratID`),
  KEY `TreeID` (`TreeID`),
  KEY `StemID` (`StemID`),
  KEY `Tag` (`Tag`),
  KEY `CensusID` (`CensusID`),
  KEY `Genus` (`Genus`,`SpeciesName`),
  KEY `Mnemonic` (`Mnemonic`),
  KEY `CensusID_2` (`CensusID`),
  KEY `PlotCensusNumber` (`PlotCensusNumber`),
  KEY `StemTag` (`StemTag`),
  KEY `DBH` (`DBH`),
  KEY `Date` (`Date`),
  KEY `Date_2` (`Date`),
  KEY `ListOfTSM` (`ListOfTSM`),
  KEY `Status` (`Status`),
  KEY `HighHOM` (`HighHOM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ViewFullTable`
--

LOCK TABLES `ViewFullTable` WRITE;
/*!40000 ALTER TABLE `ViewFullTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `ViewFullTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ViewTaxonomy`
--

DROP TABLE IF EXISTS `ViewTaxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ViewTaxonomy` (
  `ViewID` int(11) NOT NULL AUTO_INCREMENT,
  `SpeciesID` int(11) DEFAULT NULL,
  `SubspeciesID` int(11) DEFAULT NULL,
  `Family` char(32) DEFAULT NULL,
  `Mnemonic` char(10) DEFAULT NULL,
  `Genus` char(32) DEFAULT NULL,
  `SpeciesName` char(64) DEFAULT NULL,
  `Rank` char(20) DEFAULT NULL,
  `Subspecies` char(64) DEFAULT NULL,
  `Authority` char(128) DEFAULT NULL,
  `IDLevel` char(12) DEFAULT NULL,
  `subspMnemonic` char(10) DEFAULT NULL,
  `subspAuthority` varchar(120) DEFAULT NULL,
  `FieldFamily` char(32) DEFAULT NULL,
  `Lifeform` char(20) DEFAULT NULL,
  `Description` text,
  `wsg` decimal(10,6) DEFAULT NULL,
  `wsglevel` enum('local','species','genus','family','none') DEFAULT NULL,
  `ListOfOldNames` varchar(255) DEFAULT NULL,
  `Specimens` varchar(255) DEFAULT NULL,
  `Reference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ViewID`),
  KEY `SpeciesID` (`SpeciesID`),
  KEY `SubspeciesID` (`SubspeciesID`),
  KEY `IDLevel` (`IDLevel`)
) ENGINE=MyISAM AUTO_INCREMENT=1413 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ViewTaxonomy`
--

LOCK TABLES `ViewTaxonomy` WRITE;
/*!40000 ALTER TABLE `ViewTaxonomy` DISABLE KEYS */;
/*!40000 ALTER TABLE `ViewTaxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewAbund`
--

DROP TABLE IF EXISTS `viewAbund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewAbund` (
  `SpeciesID` int(11) DEFAULT NULL,
  `SubSpeciesID` int(11) DEFAULT NULL,
  `Genus` char(32) DEFAULT NULL,
  `Species` char(64) DEFAULT NULL,
  `SubSpecies` char(64) DEFAULT NULL,
  `Mnemonic` char(10) DEFAULT NULL,
  `Trees` int(11) DEFAULT NULL,
  `Sites` int(11) DEFAULT NULL,
  `IDLevel` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewAbund`
--

LOCK TABLES `viewAbund` WRITE;
/*!40000 ALTER TABLE `viewAbund` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewAbund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `CensusView`
--

/*!50001 DROP VIEW IF EXISTS `CensusView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`condit`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `CensusView` AS select `Census`.`CensusID` AS `CensusID`,`Census`.`PlotID` AS `PlotID`,`Census`.`PlotCensusNumber` AS `PlotCensusNumber`,`Census`.`StartDate` AS `StartDate`,`Census`.`EndDate` AS `EndDate`,`Census`.`Description` AS `Description` from `Census` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-23  7:40:05
