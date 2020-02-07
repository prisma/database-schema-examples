-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: all-prisma.de    Database: d02ff3d3
-- ------------------------------------------------------
-- Server version	5.7.28-nmm1-log

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
-- Table structure for table `AreaLayoutColumns`
--

DROP TABLE IF EXISTS `AreaLayoutColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AreaLayoutCustomColumns`
--

DROP TABLE IF EXISTS `AreaLayoutCustomColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AreaLayoutPresets`
--

DROP TABLE IF EXISTS `AreaLayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AreaLayoutThemeGridColumns`
--

DROP TABLE IF EXISTS `AreaLayoutThemeGridColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AreaLayouts`
--

DROP TABLE IF EXISTS `AreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AreaLayoutsUsingPresets`
--

DROP TABLE IF EXISTS `AreaLayoutsUsingPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`),
  CONSTRAINT `FK_7A9049A1385521EA` FOREIGN KEY (`arLayoutID`) REFERENCES `AreaLayouts` (`arLayoutID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akCategoryAllowSets` int(11) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  UNIQUE KEY `UNIQ_A2A0CC67FA0337B` (`akCategoryHandle`),
  KEY `IDX_A2A0CC67CE45CBB0` (`pkgID`),
  KEY `pkgID` (`pkgID`,`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  CONSTRAINT `FK_A2A0CC67CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL,
  `akIsInternal` tinyint(1) NOT NULL,
  `akIsSearchableIndexed` tinyint(1) NOT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  `akCategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_DCA32C62A12CFE33` (`atID`),
  KEY `IDX_DCA32C62B059B76B` (`akCategoryID`),
  KEY `pkgID` (`pkgID`),
  CONSTRAINT `FK_DCA32C62A12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  CONSTRAINT `FK_DCA32C62B059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  CONSTRAINT `FK_DCA32C62CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `asDisplayOrder` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `asID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`,`asID`),
  KEY `IDX_222F72D8B6561A7E` (`akID`),
  KEY `IDX_222F72D8A463E8B6` (`asID`),
  CONSTRAINT `FK_222F72D8A463E8B6` FOREIGN KEY (`asID`) REFERENCES `AttributeSets` (`asID`),
  CONSTRAINT `FK_222F72D8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asDisplayOrder` int(10) unsigned NOT NULL,
  `asIsLocked` tinyint(1) NOT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`asID`),
  KEY `IDX_FCA02D5FB059B76B` (`akCategoryID`),
  KEY `asHandle` (`asHandle`),
  KEY `pkgID` (`pkgID`),
  CONSTRAINT `FK_FCA02D5FB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  CONSTRAINT `FK_FCA02D5FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `akCategoryID` int(10) unsigned NOT NULL,
  `atID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akCategoryID`,`atID`),
  KEY `IDX_49A9CABEB059B76B` (`akCategoryID`),
  KEY `IDX_49A9CABEA12CFE33` (`atID`),
  CONSTRAINT `FK_49A9CABEA12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  CONSTRAINT `FK_49A9CABEB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `UNIQ_53580A7F46AA0F38` (`atHandle`),
  KEY `IDX_53580A7FCE45CBB0` (`pkgID`),
  KEY `pkgID` (`pkgID`,`atID`),
  CONSTRAINT `FK_53580A7FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `IDX_DCCE7864B6561A7E` (`akID`),
  CONSTRAINT `FK_DCCE7864B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `AuthenticationTypes`
--

DROP TABLE IF EXISTS `AuthenticationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BannedWords`
--

DROP TABLE IF EXISTS `BannedWords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BannedWords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BlockFeatureAssignments`
--

DROP TABLE IF EXISTS `BlockFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BlockTypeSetBlockTypes`
--

DROP TABLE IF EXISTS `BlockTypeSetBlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BlockTypeSets`
--

DROP TABLE IF EXISTS `BlockTypeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL,
  `btID` int(11) NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCopyWhenPropagate` tinyint(1) NOT NULL,
  `btIncludeAll` tinyint(1) NOT NULL,
  `btIsInternal` tinyint(1) NOT NULL,
  `btSupportsInlineEdit` tinyint(1) NOT NULL,
  `btSupportsInlineAdd` tinyint(1) NOT NULL,
  `btDisplayOrder` int(11) NOT NULL,
  `btInterfaceHeight` int(11) NOT NULL,
  `btInterfaceWidth` int(11) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`btID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarEventAttributeKeys`
--

DROP TABLE IF EXISTS `CalendarEventAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarEventAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_27F477CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarEventOccurrences`
--

DROP TABLE IF EXISTS `CalendarEventOccurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarEventOccurrences` (
  `occurrenceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `cancelled` tinyint(1) NOT NULL,
  `repetitionID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`occurrenceID`),
  KEY `IDX_7DD686EC31391E00` (`repetitionID`),
  KEY `eventdates` (`occurrenceID`,`startTime`,`endTime`),
  CONSTRAINT `FK_7DD686EC31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `CalendarEventRepetitions` (`repetitionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarEventRepetitions`
--

DROP TABLE IF EXISTS `CalendarEventRepetitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarEventRepetitions` (
  `repetitionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `repetitionObject` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  PRIMARY KEY (`repetitionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarEventSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CalendarEventSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarEventSearchIndexAttributes` (
  `eventID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_event_categories` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarEventVersionAttributeValues`
--

DROP TABLE IF EXISTS `CalendarEventVersionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarEventVersionAttributeValues` (
  `eventVersionID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`eventVersionID`,`akID`),
  KEY `IDX_8C835B05403F5D6` (`eventVersionID`),
  KEY `IDX_8C835B05B6561A7E` (`akID`),
  KEY `IDX_8C835B05A2A82A5D` (`avID`),
  CONSTRAINT `FK_8C835B05403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`),
  CONSTRAINT `FK_8C835B05A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_8C835B05B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarEventVersionOccurrences`
--

DROP TABLE IF EXISTS `CalendarEventVersionOccurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarEventVersionOccurrences` (
  `versionOccurrenceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eventVersionID` int(10) unsigned DEFAULT NULL,
  `occurrenceID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`versionOccurrenceID`),
  KEY `IDX_60310489403F5D6` (`eventVersionID`),
  KEY `IDX_60310489B4FDDC0F` (`occurrenceID`),
  CONSTRAINT `FK_60310489403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`),
  CONSTRAINT `FK_60310489B4FDDC0F` FOREIGN KEY (`occurrenceID`) REFERENCES `CalendarEventOccurrences` (`occurrenceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarEventVersionRepetitions`
--

DROP TABLE IF EXISTS `CalendarEventVersionRepetitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarEventVersionRepetitions` (
  `versionRepetitionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eventVersionID` int(10) unsigned DEFAULT NULL,
  `repetitionID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`versionRepetitionID`),
  KEY `IDX_C1C3D3DB403F5D6` (`eventVersionID`),
  KEY `IDX_C1C3D3DB31391E00` (`repetitionID`),
  CONSTRAINT `FK_C1C3D3DB31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `CalendarEventRepetitions` (`repetitionID`),
  CONSTRAINT `FK_C1C3D3DB403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarEventVersions`
--

DROP TABLE IF EXISTS `CalendarEventVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarEventVersions` (
  `eventVersionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `evDateAdded` datetime NOT NULL,
  `evActivateDateTime` datetime DEFAULT NULL,
  `evIsApproved` tinyint(1) NOT NULL,
  `evDescription` longtext COLLATE utf8mb4_unicode_ci,
  `evName` longtext COLLATE utf8mb4_unicode_ci,
  `evRelatedPageRelationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `eventID` int(10) unsigned DEFAULT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`eventVersionID`),
  KEY `IDX_8E26027410409BA4` (`eventID`),
  KEY `IDX_8E260274FD71026C` (`uID`),
  CONSTRAINT `FK_8E26027410409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`),
  CONSTRAINT `FK_8E260274FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarEventWorkflowProgress`
--

DROP TABLE IF EXISTS `CalendarEventWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarEventWorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `eventID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eventID`,`wpID`),
  KEY `IDX_C5EAACF910409BA4` (`eventID`),
  KEY `wpID` (`wpID`),
  CONSTRAINT `FK_C5EAACF910409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarEvents`
--

DROP TABLE IF EXISTS `CalendarEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarEvents` (
  `eventID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`eventID`),
  KEY `IDX_7F23C55611C85723` (`caID`),
  CONSTRAINT `FK_7F23C55611C85723` FOREIGN KEY (`caID`) REFERENCES `Calendars` (`caID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarPermissionAssignments`
--

DROP TABLE IF EXISTS `CalendarPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarPermissionAssignments` (
  `pkID` int(10) unsigned NOT NULL,
  `paID` int(10) unsigned NOT NULL,
  `caID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`caID`,`pkID`,`paID`),
  KEY `IDX_5AD546AA11C85723` (`caID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`),
  CONSTRAINT `FK_5AD546AA11C85723` FOREIGN KEY (`caID`) REFERENCES `Calendars` (`caID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CalendarRelatedEvents`
--

DROP TABLE IF EXISTS `CalendarRelatedEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarRelatedEvents` (
  `relatedEventID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relationID` int(10) unsigned NOT NULL,
  `relationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`relatedEventID`),
  KEY `IDX_310130E910409BA4` (`eventID`),
  CONSTRAINT `FK_310130E910409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Calendars`
--

DROP TABLE IF EXISTS `Calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Calendars` (
  `caID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caOverridePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `eventPageAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableMoreDetails` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventPageParentID` int(10) unsigned DEFAULT '0',
  `eventPageTypeID` int(10) unsigned DEFAULT '0',
  `eventPageAssociatedID` int(10) unsigned DEFAULT '0',
  `siteID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`caID`),
  KEY `IDX_62E00AC521D8435` (`siteID`),
  CONSTRAINT `FK_62E00AC521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionAttributeKeys`
--

DROP TABLE IF EXISTS `CollectionAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_1E3E5B79B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL,
  `cvID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `IDX_BB9995FCB6561A7E` (`akID`),
  KEY `IDX_BB9995FCA2A82A5D` (`avID`),
  CONSTRAINT `FK_BB9995FCA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_BB9995FCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) unsigned NOT NULL,
  `ak_meta_title` longtext COLLATE utf8mb4_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `ak_desktop_priority` decimal(14,4) DEFAULT '0.0000',
  `ak_is_desktop` tinyint(1) DEFAULT '0',
  `ak_icon_dashboard` longtext COLLATE utf8mb4_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8mb4_unicode_ci,
  `ak_tags` longtext COLLATE utf8mb4_unicode_ci,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_job_posting_department` longtext COLLATE utf8mb4_unicode_ci,
  `ak_job_location` longtext COLLATE utf8mb4_unicode_ci,
  `ak_exclude_subpages_from_nav` tinyint(1) DEFAULT '0',
  `ak_thumbnail` int(11) DEFAULT '0',
  `ak_blog_entry_topics` longtext COLLATE utf8mb4_unicode_ci,
  `ak_project_topics` longtext COLLATE utf8mb4_unicode_ci,
  `ak_project_client` longtext COLLATE utf8mb4_unicode_ci,
  `ak_project_tasks` longtext COLLATE utf8mb4_unicode_ci,
  `ak_project_skills` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`cID`),
  CONSTRAINT `FK_FD84E56FE5DADDAE` FOREIGN KEY (`cID`) REFERENCES `Collections` (`cID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbRelationID` int(10) unsigned DEFAULT '0',
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`),
  KEY `cbRelationID` (`cbRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionVersionBlocksCacheSettings`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksCacheSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8mb4_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionVersionFeatureAssignments`
--

DROP TABLE IF EXISTS `CollectionVersionFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionVersionThemeCustomStyles`
--

DROP TABLE IF EXISTS `CollectionVersionThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8mb4_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8mb4_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  `cvPublishDate` datetime DEFAULT NULL,
  `cvPublishEndDate` datetime DEFAULT NULL,
  `cvDateApproved` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConfigStore`
--

DROP TABLE IF EXISTS `ConfigStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8mb4_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationDiscussions`
--

DROP TABLE IF EXISTS `ConversationDiscussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationEditors`
--

DROP TABLE IF EXISTS `ConversationEditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationFeatureDetailAssignments`
--

DROP TABLE IF EXISTS `ConversationFeatureDetailAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationFlaggedMessageTypes`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationFlaggedMessages`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationMessageAttachments`
--

DROP TABLE IF EXISTS `ConversationMessageAttachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationMessageNotifications`
--

DROP TABLE IF EXISTS `ConversationMessageNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageNotifications` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_559DE1CBED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationMessageRatings`
--

DROP TABLE IF EXISTS `ConversationMessageRatings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationMessages`
--

DROP TABLE IF EXISTS `ConversationMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageReview` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8mb4_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8mb4_unicode_ci,
  `cnvMessageBody` text COLLATE utf8mb4_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0',
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationPermissionAddMessageAccessList`
--

DROP TABLE IF EXISTS `ConversationPermissionAddMessageAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationPermissionAssignments`
--

DROP TABLE IF EXISTS `ConversationPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationRatingTypes`
--

DROP TABLE IF EXISTS `ConversationRatingTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConversationSubscriptions`
--

DROP TABLE IF EXISTS `ConversationSubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Conversations`
--

DROP TABLE IF EXISTS `Conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8mb4_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressAttributeKeys`
--

DROP TABLE IF EXISTS `ExpressAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressAttributeKeys` (
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_8C881F181257D5D` (`entity_id`),
  CONSTRAINT `FK_8C881F181257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`),
  CONSTRAINT `FK_8C881F1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressEntities`
--

DROP TABLE IF EXISTS `ExpressEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntities` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `default_view_form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `default_edit_form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plural_handle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supports_custom_display_order` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `result_column_set` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:object)',
  `include_in_public_list` tinyint(1) NOT NULL,
  `entity_results_node_id` int(11) NOT NULL,
  `items_per_page` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BC772AA6918020D9` (`handle`),
  UNIQUE KEY `UNIQ_BC772AA6547D6B2D` (`default_view_form_id`),
  UNIQUE KEY `UNIQ_BC772AA6C7DEC56D` (`default_edit_form_id`),
  KEY `IDX_BC772AA6CE45CBB0` (`pkgID`),
  CONSTRAINT `FK_BC772AA6547D6B2D` FOREIGN KEY (`default_view_form_id`) REFERENCES `ExpressForms` (`id`),
  CONSTRAINT `FK_BC772AA6C7DEC56D` FOREIGN KEY (`default_edit_form_id`) REFERENCES `ExpressForms` (`id`),
  CONSTRAINT `FK_BC772AA6CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressEntityAssociationEntries`
--

DROP TABLE IF EXISTS `ExpressEntityAssociationEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityAssociationEntries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_id` int(11) DEFAULT NULL,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `exEntryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9C2BB76C6DCB6296` (`exEntryID`),
  KEY `IDX_9C2BB76CEFB9C8A5` (`association_id`),
  CONSTRAINT `FK_9C2BB76C6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  CONSTRAINT `FK_9C2BB76CEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityEntryAssociations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressEntityAssociations`
--

DROP TABLE IF EXISTS `ExpressEntityAssociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityAssociations` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `source_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `target_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `is_owned_by_association` tinyint(1) NOT NULL,
  `is_owning_association` tinyint(1) NOT NULL,
  `target_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inversed_by_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `association_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_98A0F796E9BBEE93` (`source_entity_id`),
  KEY `IDX_98A0F796B5910F71` (`target_entity_id`),
  CONSTRAINT `FK_98A0F796B5910F71` FOREIGN KEY (`target_entity_id`) REFERENCES `ExpressEntities` (`id`),
  CONSTRAINT `FK_98A0F796E9BBEE93` FOREIGN KEY (`source_entity_id`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressEntityEntries`
--

DROP TABLE IF EXISTS `ExpressEntityEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityEntries` (
  `exEntryID` int(11) NOT NULL AUTO_INCREMENT,
  `exEntryDisplayOrder` int(11) NOT NULL,
  `exEntryDateCreated` datetime NOT NULL,
  `exEntryDateModified` datetime DEFAULT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `exEntryEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  PRIMARY KEY (`exEntryID`),
  KEY `IDX_B8AE3531FD71026C` (`uID`),
  KEY `IDX_B8AE3531AFC87D03` (`exEntryEntityID`),
  CONSTRAINT `FK_B8AE3531AFC87D03` FOREIGN KEY (`exEntryEntityID`) REFERENCES `ExpressEntities` (`id`),
  CONSTRAINT `FK_B8AE3531FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressEntityEntryAssociations`
--

DROP TABLE IF EXISTS `ExpressEntityEntryAssociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityEntryAssociations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exEntryID` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_25B3A0826DCB6296` (`exEntryID`),
  KEY `IDX_25B3A082EFB9C8A5` (`association_id`),
  CONSTRAINT `FK_25B3A0826DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  CONSTRAINT `FK_25B3A082EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressEntityEntryAttributeValues`
--

DROP TABLE IF EXISTS `ExpressEntityEntryAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressEntityEntryAttributeValues` (
  `exEntryID` int(11) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`exEntryID`,`akID`),
  KEY `IDX_6DB641546DCB6296` (`exEntryID`),
  KEY `IDX_6DB64154B6561A7E` (`akID`),
  KEY `IDX_6DB64154A2A82A5D` (`avID`),
  CONSTRAINT `FK_6DB641546DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  CONSTRAINT `FK_6DB64154A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_6DB64154B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressForm170ExpressSearchIndexAttributes`
--

DROP TABLE IF EXISTS `ExpressForm170ExpressSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressForm170ExpressSearchIndexAttributes` (
  `exEntryID` int(11) NOT NULL,
  `ak_contact_question_first_name` longtext COLLATE utf8mb4_unicode_ci,
  `ak_contact_question_last_name` longtext COLLATE utf8mb4_unicode_ci,
  `ak_contact_question_email_address` longtext COLLATE utf8mb4_unicode_ci,
  `ak_contact_question_subject` longtext COLLATE utf8mb4_unicode_ci,
  `ak_contact_question_message` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`exEntryID`),
  CONSTRAINT `FK_722F0F0E6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressFormFieldSetAssociationControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetAssociationControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetAssociationControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `association_entity_label_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_selector_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `enable_entry_reordering` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E6DF21BBEFB9C8A5` (`association_id`),
  CONSTRAINT `FK_E6DF21BBBF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E6DF21BBEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressFormFieldSetAttributeKeyControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetAttributeKeyControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetAttributeKeyControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8481F9D1B6561A7E` (`akID`),
  CONSTRAINT `FK_8481F9D1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_8481F9D1BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressFormFieldSetAuthorControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetAuthorControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetAuthorControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_CF378786BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressFormFieldSetControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `field_set_id` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `custom_label` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E42868A43ABF811A` (`field_set_id`),
  CONSTRAINT `FK_E42868A43ABF811A` FOREIGN KEY (`field_set_id`) REFERENCES `ExpressFormFieldSets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressFormFieldSetTextControls`
--

DROP TABLE IF EXISTS `ExpressFormFieldSetTextControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSetTextControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_DB5A209ABF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressFormFieldSets`
--

DROP TABLE IF EXISTS `ExpressFormFieldSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressFormFieldSets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `position` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_A33BBBEC5FF69B7D` (`form_id`),
  CONSTRAINT `FK_A33BBBEC5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `ExpressForms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExpressForms`
--

DROP TABLE IF EXISTS `ExpressForms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpressForms` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D09031A81257D5D` (`entity_id`),
  CONSTRAINT `FK_8D09031A81257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FailedLoginAttempts`
--

DROP TABLE IF EXISTS `FailedLoginAttempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FailedLoginAttempts` (
  `lcirID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record identifier',
  `flaIp` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP address of the failed login attempt',
  `flaTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp of the failed login attempt',
  PRIMARY KEY (`lcirID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Records failed login attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FeatureAssignments`
--

DROP TABLE IF EXISTS `FeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureAssignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FeatureCategories`
--

DROP TABLE IF EXISTS `FeatureCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureCategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileAttributeKeys`
--

DROP TABLE IF EXISTS `FileAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_BC5C7BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `IDX_BBECEAA4B6561A7E` (`akID`),
  KEY `IDX_BBECEAA4A2A82A5D` (`avID`),
  CONSTRAINT `FK_BBECEAA4A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_BBECEAA4B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileImageThumbnailPaths`
--

DROP TABLE IF EXISTS `FileImageThumbnailPaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileImageThumbnailPaths` (
  `fileID` int(10) unsigned NOT NULL,
  `fileVersionID` int(10) unsigned NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storageLocationID` int(10) unsigned NOT NULL,
  `thumbnailFormat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isBuilt` tinyint(1) NOT NULL,
  `lockID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockExpires` datetime DEFAULT NULL,
  PRIMARY KEY (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`,`thumbnailFormat`),
  KEY `thumbnailPathIsBuilt` (`isBuilt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileImageThumbnailTypeFileSets`
--

DROP TABLE IF EXISTS `FileImageThumbnailTypeFileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileImageThumbnailTypeFileSets` (
  `ftfsFileSetID` int(10) unsigned NOT NULL,
  `ftfsThumbnailType` int(11) NOT NULL,
  PRIMARY KEY (`ftfsThumbnailType`,`ftfsFileSetID`),
  KEY `IDX_BD75F88D480660E5` (`ftfsThumbnailType`),
  CONSTRAINT `FK_BD75F88D480660E5` FOREIGN KEY (`ftfsThumbnailType`) REFERENCES `FileImageThumbnailTypes` (`ftTypeID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileImageThumbnailTypes`
--

DROP TABLE IF EXISTS `FileImageThumbnailTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `ftTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeWidth` int(11) DEFAULT NULL,
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL,
  `ftTypeSizingMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftUpscalingEnabled` tinyint(1) NOT NULL,
  `ftLimitedToFileSets` tinyint(1) NOT NULL,
  `ftKeepAnimations` tinyint(1) NOT NULL,
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FilePermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FilePermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FilePermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FilePermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL,
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`),
  CONSTRAINT `FK_3A3A4845E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8mb4_unicode_ci,
  `fsResultColumns` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileStorageLocationTypes`
--

DROP TABLE IF EXISTS `FileStorageLocationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeHandle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeName` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `pkgID` int(11) NOT NULL,
  PRIMARY KEY (`fslTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslIsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileUsageRecord`
--

DROP TABLE IF EXISTS `FileUsageRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileUsageRecord` (
  `file_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL,
  PRIMARY KEY (`file_id`,`block_id`,`collection_id`,`collection_version_id`),
  KEY `block` (`block_id`),
  KEY `collection_version` (`collection_id`,`collection_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fvID` int(11) NOT NULL,
  `fvFilename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fvPrefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvDateAdded` datetime NOT NULL,
  `fvActivateDateTime` datetime NOT NULL,
  `fvIsApproved` tinyint(1) NOT NULL,
  `fvAuthorUID` int(11) NOT NULL,
  `fvApproverUID` int(11) NOT NULL,
  `fvSize` bigint(20) NOT NULL,
  `fvTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvDescription` longtext COLLATE utf8mb4_unicode_ci,
  `fvExtension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvTags` longtext COLLATE utf8mb4_unicode_ci,
  `fvType` int(11) NOT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL,
  `fvHasDetailThumbnail` tinyint(1) NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fID`,`fvID`),
  KEY `IDX_D7B5A13AE3111F45` (`fID`),
  KEY `fvFilename` (`fvFilename`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  CONSTRAINT `FK_D7B5A13AE3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime NOT NULL,
  `fPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fOverrideSetPermissions` tinyint(1) NOT NULL,
  `ocID` int(10) unsigned NOT NULL,
  `folderTreeNodeID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `fslID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`),
  CONSTRAINT `FK_C7F46F5DB81D3903` FOREIGN KEY (`fslID`) REFERENCES `FileStorageLocations` (`fslID`),
  CONSTRAINT `FK_C7F46F5DFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FormSubmissionNotifications`
--

DROP TABLE IF EXISTS `FormSubmissionNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FormSubmissionNotifications` (
  `exEntryID` int(11) DEFAULT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  KEY `IDX_E7B6BE406DCB6296` (`exEntryID`),
  CONSTRAINT `FK_E7B6BE406DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`) ON DELETE CASCADE,
  CONSTRAINT `FK_E7B6BE40ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GatheringConfiguredDataSources`
--

DROP TABLE IF EXISTS `GatheringConfiguredDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GatheringDataSources`
--

DROP TABLE IF EXISTS `GatheringDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GatheringItemFeatureAssignments`
--

DROP TABLE IF EXISTS `GatheringItemFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GatheringItemSelectedTemplates`
--

DROP TABLE IF EXISTS `GatheringItemSelectedTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GatheringItemTemplateFeatures`
--

DROP TABLE IF EXISTS `GatheringItemTemplateFeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GatheringItemTemplateTypes`
--

DROP TABLE IF EXISTS `GatheringItemTemplateTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GatheringItemTemplates`
--

DROP TABLE IF EXISTS `GatheringItemTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8mb4_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GatheringItems`
--

DROP TABLE IF EXISTS `GatheringItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8mb4_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GatheringPermissionAssignments`
--

DROP TABLE IF EXISTS `GatheringPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Gatherings`
--

DROP TABLE IF EXISTS `Gatherings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Geolocators`
--

DROP TABLE IF EXISTS `Geolocators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Geolocators` (
  `glID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Geolocator ID',
  `glHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator handle',
  `glName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator name',
  `glDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator description',
  `glConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator configuration options(DC2Type:json_array)',
  `glActive` tinyint(1) NOT NULL COMMENT 'Is this Geolocator the active one?',
  `glPackage` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`glID`),
  UNIQUE KEY `UNIQ_83BB1614D4F4D416` (`glHandle`),
  KEY `IDX_83BB1614D5F6CC40` (`glPackage`),
  CONSTRAINT `FK_83BB1614D5F6CC40` FOREIGN KEY (`glPackage`) REFERENCES `Packages` (`pkgID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of all the installed Geolocator services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8mb4_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JobSetJobs`
--

DROP TABLE IF EXISTS `JobSetJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JobSets`
--

DROP TABLE IF EXISTS `JobSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8mb4_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LegacyAttributeKeys`
--

DROP TABLE IF EXISTS `LegacyAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LegacyAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_740BA2BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LoginControlIpRanges`
--

DROP TABLE IF EXISTS `LoginControlIpRanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginControlIpRanges` (
  `lcirID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record identifier',
  `lcirIpFrom` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Start of the range',
  `lcirIpTo` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'End of the range',
  `lcirType` smallint(5) unsigned NOT NULL COMMENT 'Type of the record',
  `lcirExpires` datetime DEFAULT NULL COMMENT 'Record end-of-life timestamp',
  PRIMARY KEY (`lcirID`),
  KEY `IX_LoginControlIpRanges_Search` (`lcirIpFrom`,`lcirIpTo`,`lcirExpires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='IP ranges used to control login attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MultilingualPageRelations`
--

DROP TABLE IF EXISTS `MultilingualPageRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualPageRelations` (
  `mpLocale` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mpLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpRelationID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MultilingualTranslations`
--

DROP TABLE IF EXISTS `MultilingualTranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8mb4_unicode_ci,
  `msgstr` text COLLATE utf8mb4_unicode_ci,
  `msgstrPlurals` text COLLATE utf8mb4_unicode_ci,
  `context` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `reference` text COLLATE utf8mb4_unicode_ci,
  `flags` text COLLATE utf8mb4_unicode_ci,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NotificationAlerts`
--

DROP TABLE IF EXISTS `NotificationAlerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotificationAlerts` (
  `naID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naIsArchived` tinyint(1) NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `nID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`naID`),
  KEY `IDX_E11C7408FD71026C` (`uID`),
  KEY `IDX_E11C7408ED024EFD` (`nID`),
  CONSTRAINT `FK_E11C7408ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`),
  CONSTRAINT `FK_E11C7408FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NotificationPermissionSubscriptionList`
--

DROP TABLE IF EXISTS `NotificationPermissionSubscriptionList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotificationPermissionSubscriptionList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NotificationPermissionSubscriptionListCustom`
--

DROP TABLE IF EXISTS `NotificationPermissionSubscriptionListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotificationPermissionSubscriptionListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `nSubscriptionIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`nSubscriptionIdentifier`),
  KEY `peID` (`peID`),
  KEY `nSubscriptionIdentifier` (`nSubscriptionIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Notifications`
--

DROP TABLE IF EXISTS `Notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notifications` (
  `nID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nDate` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`nID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAuth2AccessToken`
--

DROP TABLE IF EXISTS `OAuth2AccessToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuth2AccessToken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) unsigned DEFAULT NULL,
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`identifier`),
  KEY `IDX_60D69F3FC7440455` (`client`),
  CONSTRAINT `FK_60D69F3FC7440455` FOREIGN KEY (`client`) REFERENCES `OAuth2Client` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAuth2AuthCode`
--

DROP TABLE IF EXISTS `OAuth2AuthCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuth2AuthCode` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`identifier`),
  KEY `IDX_29D07B5C7440455` (`client`),
  CONSTRAINT `FK_29D07B5C7440455` FOREIGN KEY (`client`) REFERENCES `OAuth2Client` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAuth2Client`
--

DROP TABLE IF EXISTS `OAuth2Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuth2Client` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirectUri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientSecret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consentType` int(10) unsigned NOT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `client_idx` (`clientKey`,`clientSecret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAuth2RefreshToken`
--

DROP TABLE IF EXISTS `OAuth2RefreshToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuth2RefreshToken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `accessToken` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `UNIQ_A205CB8350A9822` (`accessToken`),
  CONSTRAINT `FK_A205CB8350A9822` FOREIGN KEY (`accessToken`) REFERENCES `OAuth2AccessToken` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OAuth2Scope`
--

DROP TABLE IF EXISTS `OAuth2Scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OAuth2Scope` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OauthUserMap`
--

DROP TABLE IF EXISTS `OauthUserMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OauthUserMap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgVersion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL,
  `pkgAvailableVersion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `UNIQ_62C3A2F1F2D49DB1` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageFeeds`
--

DROP TABLE IF EXISTS `PageFeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageFeeds` (
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL,
  `iconFID` int(10) unsigned NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL,
  `ptID` int(10) unsigned NOT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL,
  `pfContentToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) NOT NULL,
  PRIMARY KEY (`pfID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `cPath` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppID` int(11) NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL,
  `ppIsCanonical` tinyint(1) NOT NULL,
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL,
  PRIMARY KEY (`ppID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cID` (`cID`),
  KEY `cPath` (`cPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `cName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8mb4_unicode_ci,
  `cPath` text COLLATE utf8mb4_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTemplates`
--

DROP TABLE IF EXISTS `PageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTemplates` (
  `pTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL,
  `pkgID` int(11) NOT NULL,
  PRIMARY KEY (`pTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageThemeCustomStyles`
--

DROP TABLE IF EXISTS `PageThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8mb4_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTypeComposerControlTypes`
--

DROP TABLE IF EXISTS `PageTypeComposerControlTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTypeComposerFormLayoutSetControls`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSetControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8mb4_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTypeComposerFormLayoutSets`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8mb4_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTypeComposerOutputBlocks`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTypeComposerOutputControls`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTypePageTemplateDefaultPages`
--

DROP TABLE IF EXISTS `PageTypePageTemplateDefaultPages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTypePageTemplates`
--

DROP TABLE IF EXISTS `PageTypePageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTypePermissionAssignments`
--

DROP TABLE IF EXISTS `PageTypePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTypePublishTargetTypes`
--

DROP TABLE IF EXISTS `PageTypePublishTargetTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8mb4_unicode_ci,
  `siteTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `siteTypeID` (`siteTypeID`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `siteTreeID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8mb4_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsDraft` tinyint(1) NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `siteTreeID` (`siteTreeID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PrivateMessageNotifications`
--

DROP TABLE IF EXISTS `PrivateMessageNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PrivateMessageNotifications` (
  `msgID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_1AB97592ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QueueMessages`
--

DROP TABLE IF EXISTS `QueueMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueueMessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `FK_7C04D76477B5BAE` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QueuePageDuplicationRelations`
--

DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Queues`
--

DROP TABLE IF EXISTS `Queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SavedExpressSearchQueries`
--

DROP TABLE IF EXISTS `SavedExpressSearchQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SavedExpressSearchQueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SavedFileSearchQueries`
--

DROP TABLE IF EXISTS `SavedFileSearchQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SavedFileSearchQueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SavedPageSearchQueries`
--

DROP TABLE IF EXISTS `SavedPageSearchQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SavedPageSearchQueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SavedUserSearchQueries`
--

DROP TABLE IF EXISTS `SavedUserSearchQueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SavedUserSearchQueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sessionValue` longtext COLLATE utf8mb4_unicode_ci,
  `sessionTime` int(10) unsigned NOT NULL,
  `sessionLifeTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SiblingPageRelations`
--

DROP TABLE IF EXISTS `SiblingPageRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiblingPageRelations` (
  `mpRelationID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SiteAttributeKeys`
--

DROP TABLE IF EXISTS `SiteAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_63D1E182B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SiteAttributeValues`
--

DROP TABLE IF EXISTS `SiteAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteAttributeValues` (
  `siteID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteID`,`akID`),
  KEY `IDX_67658AF7521D8435` (`siteID`),
  KEY `IDX_67658AF7B6561A7E` (`akID`),
  KEY `IDX_67658AF7A2A82A5D` (`avID`),
  CONSTRAINT `FK_67658AF7521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  CONSTRAINT `FK_67658AF7A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_67658AF7B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SiteLocales`
--

DROP TABLE IF EXISTS `SiteLocales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteLocales` (
  `siteLocaleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msIsDefault` tinyint(1) NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteID` int(10) unsigned DEFAULT NULL,
  `siteTreeID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteLocaleID`),
  UNIQUE KEY `UNIQ_2527AB2CF9431B4B` (`siteTreeID`),
  KEY `IDX_2527AB2C521D8435` (`siteID`),
  CONSTRAINT `FK_2527AB2C521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  CONSTRAINT `FK_2527AB2CF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTreeTrees` (`siteTreeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SiteSearchIndexAttributes`
--

DROP TABLE IF EXISTS `SiteSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteSearchIndexAttributes` (
  `siteID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`siteID`),
  CONSTRAINT `FK_3DD070B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SiteTreeTrees`
--

DROP TABLE IF EXISTS `SiteTreeTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTreeTrees` (
  `siteLocaleID` int(10) unsigned DEFAULT NULL,
  `siteTreeID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`siteTreeID`),
  UNIQUE KEY `UNIQ_A4B9696EACD624CD` (`siteLocaleID`),
  CONSTRAINT `FK_A4B9696EACD624CD` FOREIGN KEY (`siteLocaleID`) REFERENCES `SiteLocales` (`siteLocaleID`),
  CONSTRAINT `FK_A4B9696EF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTrees` (`siteTreeID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SiteTrees`
--

DROP TABLE IF EXISTS `SiteTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTrees` (
  `siteTreeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteHomePageID` int(10) unsigned NOT NULL,
  `treeType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`siteTreeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SiteTypes`
--

DROP TABLE IF EXISTS `SiteTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTypes` (
  `siteTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeThemeID` int(11) NOT NULL,
  `siteTypeHomePageTemplateID` int(11) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteTypeID`),
  UNIQUE KEY `UNIQ_7CBFE97576D39A3C` (`siteTypeHandle`),
  UNIQUE KEY `UNIQ_7CBFE975C7F74FC3` (`siteTypeName`),
  KEY `IDX_7CBFE975CE45CBB0` (`pkgID`),
  CONSTRAINT `FK_7CBFE975CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Sites`
--

DROP TABLE IF EXISTS `Sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sites` (
  `siteID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeID` int(10) unsigned NOT NULL,
  `siteIsDefault` tinyint(1) NOT NULL,
  `siteHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteID`),
  UNIQUE KEY `UNIQ_7DC18567D84E1976` (`siteHandle`),
  KEY `IDX_7DC18567E9548DF7` (`siteTypeID`),
  CONSTRAINT `FK_7DC18567E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SocialLinks`
--

DROP TABLE IF EXISTS `SocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialLinks` (
  `ssHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slID` int(11) NOT NULL AUTO_INCREMENT,
  `siteID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slID`),
  KEY `IDX_84EBA2B4521D8435` (`siteID`),
  CONSTRAINT `FK_84EBA2B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StackUsageRecord`
--

DROP TABLE IF EXISTS `StackUsageRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StackUsageRecord` (
  `stack_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL,
  PRIMARY KEY (`stack_id`,`block_id`,`collection_id`,`collection_version_id`),
  KEY `block` (`block_id`),
  KEY `collection_version` (`collection_id`,`collection_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StyleCustomizerCustomCssRecords`
--

DROP TABLE IF EXISTS `StyleCustomizerCustomCssRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sccRecordID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StyleCustomizerInlineStylePresets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StyleCustomizerInlineStyleSets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStyleSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(11) NOT NULL AUTO_INCREMENT,
  `customClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customElementAttribute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) NOT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundPosition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StyleCustomizerValueLists`
--

DROP TABLE IF EXISTS `StyleCustomizerValueLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `StyleCustomizerValues`
--

DROP TABLE IF EXISTS `StyleCustomizerValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SystemContentEditorSnippets`
--

DROP TABLE IF EXISTS `SystemContentEditorSnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SystemDatabaseMigrations`
--

DROP TABLE IF EXISTS `SystemDatabaseMigrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SystemDatabaseQueryLog`
--

DROP TABLE IF EXISTS `SystemDatabaseQueryLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TopicTrees`
--

DROP TABLE IF EXISTS `TopicTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TopicTrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TreeFileNodes`
--

DROP TABLE IF EXISTS `TreeFileNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeFileNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TreeGroupNodes`
--

DROP TABLE IF EXISTS `TreeGroupNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TreeNodePermissionAssignments`
--

DROP TABLE IF EXISTS `TreeNodePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TreeNodeTypes`
--

DROP TABLE IF EXISTS `TreeNodeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TreeNodes`
--

DROP TABLE IF EXISTS `TreeNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TreeSearchQueryNodes`
--

DROP TABLE IF EXISTS `TreeSearchQueryNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeSearchQueryNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `savedSearchID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`treeNodeID`),
  KEY `savedSearchID` (`savedSearchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TreeTypes`
--

DROP TABLE IF EXISTS `TreeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Trees`
--

DROP TABLE IF EXISTS `Trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UsedStringLog`
--

DROP TABLE IF EXISTS `UsedStringLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsedStringLog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usedString` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4E83837CF5E609AF` (`usedString`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `uakProfileDisplay` tinyint(1) NOT NULL,
  `uakProfileEdit` tinyint(1) NOT NULL,
  `uakProfileEditRequired` tinyint(1) NOT NULL,
  `uakRegisterEdit` tinyint(1) NOT NULL,
  `uakRegisterEditRequired` tinyint(1) NOT NULL,
  `uakMemberListDisplay` tinyint(1) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_28970033B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`uID`,`akID`),
  KEY `IDX_4DB68CA6FD71026C` (`uID`),
  KEY `IDX_4DB68CA6B6561A7E` (`akID`),
  KEY `IDX_4DB68CA6A2A82A5D` (`avID`),
  CONSTRAINT `FK_4DB68CA6A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  CONSTRAINT `FK_4DB68CA6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_4DB68CA6FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserDeactivatedNotifications`
--

DROP TABLE IF EXISTS `UserDeactivatedNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserDeactivatedNotifications` (
  `userID` int(10) unsigned NOT NULL,
  `actorID` int(10) unsigned DEFAULT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_ED5A1F9FED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserLoginAttempts`
--

DROP TABLE IF EXISTS `UserLoginAttempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserLoginAttempts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `userId` int(10) unsigned NOT NULL,
  `utcDate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserPointActions`
--

DROP TABLE IF EXISTS `UserPointActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserPointHistory`
--

DROP TABLE IF EXISTS `UserPointHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8mb4_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8mb4_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL,
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uID`),
  CONSTRAINT `FK_74798B07FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserSignupNotifications`
--

DROP TABLE IF EXISTS `UserSignupNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSignupNotifications` (
  `usID` int(10) unsigned DEFAULT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  KEY `IDX_7FB1DF5B7B18287E` (`usID`),
  CONSTRAINT `FK_7FB1DF5B7B18287E` FOREIGN KEY (`usID`) REFERENCES `UserSignups` (`usID`),
  CONSTRAINT `FK_7FB1DF5BED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserSignups`
--

DROP TABLE IF EXISTS `UserSignups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSignups` (
  `usID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `createdBy` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`usID`),
  UNIQUE KEY `UNIQ_FEB5D909FD71026C` (`uID`),
  KEY `IDX_FEB5D909D3564642` (`createdBy`),
  CONSTRAINT `FK_FEB5D909D3564642` FOREIGN KEY (`createdBy`) REFERENCES `Users` (`uID`),
  CONSTRAINT `FK_FEB5D909FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserWorkflowProgress`
--

DROP TABLE IF EXISTS `UserWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserWorkflowProgress` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uIsActive` tinyint(1) NOT NULL,
  `uIsFullRecord` tinyint(1) NOT NULL,
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uDateAdded` datetime NOT NULL,
  `uLastPasswordChange` datetime NOT NULL,
  `uHasAvatar` tinyint(1) NOT NULL,
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` longtext COLLATE utf8mb4_unicode_ci,
  `uTimezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uIsPasswordReset` tinyint(1) NOT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `UNIQ_D5428AED28459686` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WorkflowProgressNotifications`
--

DROP TABLE IF EXISTS `WorkflowProgressNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressNotifications` (
  `wpID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_EC39CA81ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_DA949740A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akDefaultCountry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akHasCustomCountries` tinyint(1) NOT NULL,
  `customCountries` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `akGeolocateCountry` tinyint(1) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_5A737B61B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `value` tinyint(1) NOT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_5D5F70A9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akCheckedByDefault` tinyint(1) NOT NULL,
  `checkboxLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_78025F47B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `value` datetime DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_DF75412AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akUseNowIfEmpty` tinyint(1) NOT NULL DEFAULT '0',
  `akDateDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akTextCustomFormat` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Custom format for text inputs',
  `akTimeResolution` int(10) unsigned NOT NULL DEFAULT '60' COMMENT 'Time resolution (in seconds)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_C6B3B63AB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_3484F81EA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atEmptySettings`
--

DROP TABLE IF EXISTS `atEmptySettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atEmptySettings` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_ED1BF189B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atExpress`
--

DROP TABLE IF EXISTS `atExpress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atExpress` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_CFAF40F1A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atExpressSelectedEntries`
--

DROP TABLE IF EXISTS `atExpressSelectedEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atExpressSelectedEntries` (
  `avID` int(10) unsigned NOT NULL,
  `exEntryID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`exEntryID`),
  KEY `IDX_C9D404BBA2A82A5D` (`avID`),
  KEY `IDX_C9D404BB6DCB6296` (`exEntryID`),
  CONSTRAINT `FK_C9D404BB6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  CONSTRAINT `FK_C9D404BBA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atExpress` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atExpressSettings`
--

DROP TABLE IF EXISTS `atExpressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atExpressSettings` (
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_E8F67F0FCE2D7284` (`exEntityID`),
  CONSTRAINT `FK_E8F67F0FB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_E8F67F0FCE2D7284` FOREIGN KEY (`exEntityID`) REFERENCES `ExpressEntities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `fID` int(10) unsigned DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `IDX_73D17D61E3111F45` (`fID`),
  CONSTRAINT `FK_73D17D61A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE,
  CONSTRAINT `FK_73D17D61E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atFileSettings`
--

DROP TABLE IF EXISTS `atFileSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFileSettings` (
  `akFileManagerMode` int(11) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_EADD86C8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `value` decimal(14,4) DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_41BA30B5A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atSelect`
--

DROP TABLE IF EXISTS `atSelect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelect` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_9CD8C521A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atSelectOptionLists`
--

DROP TABLE IF EXISTS `atSelectOptionLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionLists` (
  `avSelectOptionListID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`avSelectOptionListID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `avSelectOptionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isEndUserAdded` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avSelectOptionID`),
  KEY `IDX_797414B0CB59257C` (`avSelectOptionListID`),
  CONSTRAINT `FK_797414B0CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `avSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`avSelectOptionID`),
  KEY `IDX_40C97EC3A2A82A5D` (`avID`),
  KEY `IDX_40C97EC3E584C274` (`avSelectOptionID`),
  CONSTRAINT `FK_40C97EC3A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSelect` (`avID`),
  CONSTRAINT `FK_40C97EC3E584C274` FOREIGN KEY (`avSelectOptionID`) REFERENCES `atSelectOptions` (`avSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL,
  `akSelectAllowOtherValues` tinyint(1) NOT NULL,
  `akHideNoneOption` tinyint(1) NOT NULL,
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akDisplayMultipleValuesOnSelect` tinyint(1) NOT NULL,
  `avSelectOptionListID` int(10) unsigned DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `UNIQ_5D514424CB59257C` (`avSelectOptionListID`),
  CONSTRAINT `FK_5D514424B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  CONSTRAINT `FK_5D514424CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atSelectedSocialLinks`
--

DROP TABLE IF EXISTS `atSelectedSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectedSocialLinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceInfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `IDX_10743709A2A82A5D` (`avID`),
  CONSTRAINT `FK_10743709A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSocialLinks` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atSelectedTopics`
--

DROP TABLE IF EXISTS `atSelectedTopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectedTopics` (
  `avTreeTopicNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avTreeTopicNodeID`),
  KEY `IDX_E42A7D5BA2A82A5D` (`avID`),
  CONSTRAINT `FK_E42A7D5BA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atTopic` (`avID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atSocialLinks`
--

DROP TABLE IF EXISTS `atSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSocialLinks` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_1431EC8AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atTextSettings`
--

DROP TABLE IF EXISTS `atTextSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextSettings` (
  `akTextPlaceholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_951A10CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akTextareaDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_A6EA10D6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atTopic`
--

DROP TABLE IF EXISTS `atTopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTopic` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_BABDD1FAA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `atTopicSettings`
--

DROP TABLE IF EXISTS `atTopicSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTopicSettings` (
  `akTopicParentNodeID` int(11) NOT NULL,
  `akTopicTreeID` int(11) NOT NULL,
  `akTopicAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '1',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_830FD2FEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `authTypeConcreteCookieMap`
--

DROP TABLE IF EXISTS `authTypeConcreteCookieMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btCalendar`
--

DROP TABLE IF EXISTS `btCalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCalendar` (
  `bID` int(10) unsigned NOT NULL,
  `caID` int(10) unsigned NOT NULL DEFAULT '0',
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByTopicAttributeKeyID` int(10) unsigned NOT NULL DEFAULT '0',
  `filterByTopicID` int(10) unsigned NOT NULL DEFAULT '0',
  `viewTypes` longtext COLLATE utf8mb4_unicode_ci,
  `viewTypesOrder` longtext COLLATE utf8mb4_unicode_ci,
  `defaultView` longtext COLLATE utf8mb4_unicode_ci,
  `navLinks` int(11) DEFAULT NULL,
  `eventLimit` int(11) DEFAULT NULL,
  `lightboxProperties` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btCalendarEvent`
--

DROP TABLE IF EXISTS `btCalendarEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCalendarEvent` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Specify, P = Page, R = Request',
  `calendarEventAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `calendarID` int(10) unsigned NOT NULL DEFAULT '0',
  `eventID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayEventAttributes` longtext COLLATE utf8mb4_unicode_ci,
  `enableLinkToPage` tinyint(1) DEFAULT '0',
  `displayEventName` tinyint(1) DEFAULT '0',
  `displayEventDate` tinyint(1) DEFAULT '0',
  `displayEventDescription` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `cropImage` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `fileLinkID` int(10) unsigned DEFAULT '0',
  `openLinkInNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `altText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btCoreAreaLayout`
--

DROP TABLE IF EXISTS `btCoreAreaLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btCoreConversation`
--

DROP TABLE IF EXISTS `btCoreConversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreConversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `enableTopCommentReviews` tinyint(1) NOT NULL DEFAULT '0',
  `displaySocialLinks` tinyint(1) NOT NULL DEFAULT '1',
  `reviewAggregateAttributeKey` int(11) DEFAULT NULL,
  `displayPostingForm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btCorePageTypeComposerControlOutput`
--

DROP TABLE IF EXISTS `btCorePageTypeComposerControlOutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btDateNavigation`
--

DROP TABLE IF EXISTS `btDateNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btDesktopDraftList`
--

DROP TABLE IF EXISTS `btDesktopDraftList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDesktopDraftList` (
  `bID` int(10) unsigned NOT NULL,
  `draftsPerPage` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btDesktopNewsflowLatest`
--

DROP TABLE IF EXISTS `btDesktopNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDesktopNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btDesktopSiteActivity`
--

DROP TABLE IF EXISTS `btDesktopSiteActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDesktopSiteActivity` (
  `bID` int(10) unsigned NOT NULL,
  `types` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btDocumentLibrary`
--

DROP TABLE IF EXISTS `btDocumentLibrary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDocumentLibrary` (
  `bID` int(10) unsigned NOT NULL,
  `setIds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folderID` int(11) NOT NULL DEFAULT '0',
  `setMode` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onlyCurrentUser` int(11) DEFAULT '0',
  `tags` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewProperties` longtext COLLATE utf8mb4_unicode_ci,
  `expandableProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT 'title',
  `displayLimit` int(11) DEFAULT '20',
  `displayOrderDesc` tinyint(1) NOT NULL DEFAULT '0',
  `addFilesToSetID` int(10) unsigned NOT NULL DEFAULT '0',
  `maxThumbWidth` int(11) DEFAULT '100',
  `maxThumbHeight` int(11) DEFAULT '150',
  `enableSearch` int(11) DEFAULT '0',
  `heightMode` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'auto',
  `downloadFileMethod` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'force',
  `fixedHeightSize` int(11) DEFAULT '0',
  `headerBackgroundColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowFileUploading` int(11) DEFAULT '0',
  `allowInPageFileManagement` int(11) DEFAULT '0',
  `tableName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT '0',
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btEventList`
--

DROP TABLE IF EXISTS `btEventList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btEventList` (
  `bID` int(10) unsigned NOT NULL,
  `caID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalToRetrieve` smallint(5) unsigned NOT NULL DEFAULT '10',
  `totalPerPage` smallint(5) unsigned NOT NULL DEFAULT '10',
  `filterByTopicAttributeKeyID` int(10) unsigned NOT NULL DEFAULT '0',
  `filterByTopicID` int(10) unsigned NOT NULL DEFAULT '0',
  `filterByPageTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByFeatured` tinyint(1) NOT NULL DEFAULT '0',
  `eventListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkToPage` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btExpressEntryDetail`
--

DROP TABLE IF EXISTS `btExpressEntryDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExpressEntryDetail` (
  `bID` int(10) unsigned NOT NULL,
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exSpecificEntryID` int(10) unsigned DEFAULT NULL,
  `exEntryAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exFormID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `entryMode` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btExpressEntryList`
--

DROP TABLE IF EXISTS `btExpressEntryList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExpressEntryList` (
  `bID` int(10) unsigned NOT NULL,
  `exEntityID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailPage` int(10) unsigned NOT NULL DEFAULT '0',
  `linkedProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchAssociations` longtext COLLATE utf8mb4_unicode_ci,
  `columns` longtext COLLATE utf8mb4_unicode_ci,
  `filterFields` longtext COLLATE utf8mb4_unicode_ci,
  `displayLimit` int(11) DEFAULT '20',
  `enableSearch` int(11) DEFAULT '0',
  `enableKeywordSearch` int(11) DEFAULT '0',
  `headerBackgroundColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT '0',
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btExpressForm`
--

DROP TABLE IF EXISTS `btExpressForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExpressForm` (
  `bID` int(10) unsigned NOT NULL,
  `exFormID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `submitLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8mb4_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `storeFormSubmission` tinyint(1) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `replyToEmailControlID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addFilesToSet` int(11) DEFAULT '0',
  `addFilesToFolder` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btFaq`
--

DROP TABLE IF EXISTS `btFaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btFaqEntries`
--

DROP TABLE IF EXISTS `btFaqEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaqEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btFeature`
--

DROP TABLE IF EXISTS `btFeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8mb4_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btImageSlider`
--

DROP TABLE IF EXISTS `btImageSlider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  `timeout` int(10) unsigned DEFAULT NULL,
  `speed` int(10) unsigned DEFAULT NULL,
  `noAnimate` int(10) unsigned DEFAULT NULL,
  `pause` int(10) unsigned DEFAULT NULL,
  `maxWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btImageSliderEntries`
--

DROP TABLE IF EXISTS `btImageSliderEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btPageAttributeDisplay`
--

DROP TABLE IF EXISTS `btPageAttributeDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  `delimiter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `cThisParent` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) unsigned NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btPageTitle`
--

DROP TABLE IF EXISTS `btPageTitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `useFilterTitle` int(10) unsigned DEFAULT '0',
  `useFilterTopic` int(10) unsigned DEFAULT '0',
  `useFilterTag` int(10) unsigned DEFAULT '0',
  `useFilterDate` int(10) unsigned DEFAULT '0',
  `topicTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postTo_cID` int(10) unsigned DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btShareThisPage`
--

DROP TABLE IF EXISTS `btShareThisPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btSocialLinks`
--

DROP TABLE IF EXISTS `btSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btSwitchLanguage`
--

DROP TABLE IF EXISTS `btSwitchLanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btTestimonial`
--

DROP TABLE IF EXISTS `btTestimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btTopicList`
--

DROP TABLE IF EXISTS `btTopicList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTopicList` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `videoSize` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startTimeEnabled` tinyint(1) DEFAULT NULL,
  `startTime` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noCookie` tinyint(1) DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controls` int(10) unsigned DEFAULT NULL,
  `iv_load_policy` int(10) unsigned DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT '0',
  `modestbranding` tinyint(1) NOT NULL DEFAULT '0',
  `rel` tinyint(1) NOT NULL DEFAULT '0',
  `showinfo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gaPage`
--

DROP TABLE IF EXISTS `gaPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gaPage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-07 13:56:22
