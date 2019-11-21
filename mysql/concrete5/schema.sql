-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: dd18924
-- Generation Time: Oct 15, 2019 at 10:54 AM
-- Server version: 5.7.26-nmm1-log
-- PHP Version: 5.6.38-nmm2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d02fee78`
--

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutColumns`
--

CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutCustomColumns`
--

CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutPresets`
--

CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayouts`
--

CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `arLayoutSpacing` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutsUsingPresets`
--

CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutThemeGridColumns`
--

CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnSpan` int(10) UNSIGNED DEFAULT '0',
  `arLayoutColumnOffset` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionAssignments`
--

CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Areas`
--

CREATE TABLE `Areas` (
  `arID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atAddress`
--

CREATE TABLE `atAddress` (
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atAddressSettings`
--

CREATE TABLE `atAddressSettings` (
  `akDefaultCountry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akHasCustomCountries` tinyint(1) NOT NULL,
  `customCountries` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `akGeolocateCountry` tinyint(1) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atBoolean`
--

CREATE TABLE `atBoolean` (
  `value` tinyint(1) NOT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atBooleanSettings`
--

CREATE TABLE `atBooleanSettings` (
  `akCheckedByDefault` tinyint(1) NOT NULL,
  `checkboxLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atDateTime`
--

CREATE TABLE `atDateTime` (
  `value` datetime DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atDateTimeSettings`
--

CREATE TABLE `atDateTimeSettings` (
  `akUseNowIfEmpty` tinyint(1) NOT NULL DEFAULT '0',
  `akDateDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akTextCustomFormat` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Custom format for text inputs',
  `akTimeResolution` int(10) UNSIGNED NOT NULL DEFAULT '60' COMMENT 'Time resolution (in seconds)',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atDefault`
--

CREATE TABLE `atDefault` (
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atEmptySettings`
--

CREATE TABLE `atEmptySettings` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atExpress`
--

CREATE TABLE `atExpress` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atExpressSelectedEntries`
--

CREATE TABLE `atExpressSelectedEntries` (
  `avID` int(10) UNSIGNED NOT NULL,
  `exEntryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atExpressSettings`
--

CREATE TABLE `atExpressSettings` (
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atFile`
--

CREATE TABLE `atFile` (
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atFileSettings`
--

CREATE TABLE `atFileSettings` (
  `akFileManagerMode` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atNumber`
--

CREATE TABLE `atNumber` (
  `value` decimal(14,4) DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelect`
--

CREATE TABLE `atSelect` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectedSocialLinks`
--

CREATE TABLE `atSelectedSocialLinks` (
  `avsID` int(10) UNSIGNED NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceInfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectedTopics`
--

CREATE TABLE `atSelectedTopics` (
  `avTreeTopicNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptionLists`
--

CREATE TABLE `atSelectOptionLists` (
  `avSelectOptionListID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptions`
--

CREATE TABLE `atSelectOptions` (
  `avSelectOptionID` int(10) UNSIGNED NOT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptionsSelected`
--

CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) UNSIGNED NOT NULL,
  `avSelectOptionID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectSettings`
--

CREATE TABLE `atSelectSettings` (
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL,
  `akSelectAllowOtherValues` tinyint(1) NOT NULL,
  `akHideNoneOption` tinyint(1) NOT NULL,
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akDisplayMultipleValuesOnSelect` tinyint(1) NOT NULL,
  `avSelectOptionListID` int(10) UNSIGNED DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSocialLinks`
--

CREATE TABLE `atSocialLinks` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atTextareaSettings`
--

CREATE TABLE `atTextareaSettings` (
  `akTextareaDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atTextSettings`
--

CREATE TABLE `atTextSettings` (
  `akTextPlaceholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atTopic`
--

CREATE TABLE `atTopic` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atTopicSettings`
--

CREATE TABLE `atTopicSettings` (
  `akTopicParentNodeID` int(11) NOT NULL,
  `akTopicTreeID` int(11) NOT NULL,
  `akTopicAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '1',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeyCategories`
--

CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `akCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akCategoryAllowSets` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeys`
--

CREATE TABLE `AttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL,
  `akHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL,
  `akIsInternal` tinyint(1) NOT NULL,
  `akIsSearchableIndexed` tinyint(1) NOT NULL,
  `atID` int(10) UNSIGNED DEFAULT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `akCategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSetKeys`
--

CREATE TABLE `AttributeSetKeys` (
  `asDisplayOrder` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSets`
--

CREATE TABLE `AttributeSets` (
  `asID` int(10) UNSIGNED NOT NULL,
  `asHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asDisplayOrder` int(10) UNSIGNED NOT NULL,
  `asIsLocked` tinyint(1) NOT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypeCategories`
--

CREATE TABLE `AttributeTypeCategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `atID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypes`
--

CREATE TABLE `AttributeTypes` (
  `atID` int(10) UNSIGNED NOT NULL,
  `atHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AttributeValues`
--

CREATE TABLE `AttributeValues` (
  `avID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AuthenticationTypes`
--

CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) UNSIGNED NOT NULL,
  `authTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authTypeConcreteCookieMap`
--

CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) UNSIGNED NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BannedWords`
--

CREATE TABLE `BannedWords` (
  `bwID` int(10) UNSIGNED NOT NULL,
  `bannedWord` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowProgressData`
--

CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uIDStarted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockFeatureAssignments`
--

CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockPermissionAssignments`
--

CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Blocks`
--

CREATE TABLE `Blocks` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypes`
--

CREATE TABLE `BlockTypes` (
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL,
  `btID` int(11) NOT NULL,
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
  `pkgID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypeSetBlockTypes`
--

CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypeSets`
--

CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) UNSIGNED NOT NULL,
  `btsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCalendar`
--

CREATE TABLE `btCalendar` (
  `bID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByTopicAttributeKeyID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterByTopicID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `viewTypes` longtext COLLATE utf8mb4_unicode_ci,
  `viewTypesOrder` longtext COLLATE utf8mb4_unicode_ci,
  `defaultView` longtext COLLATE utf8mb4_unicode_ci,
  `navLinks` int(11) DEFAULT NULL,
  `eventLimit` int(11) DEFAULT NULL,
  `lightboxProperties` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCalendarEvent`
--

CREATE TABLE `btCalendarEvent` (
  `bID` int(10) UNSIGNED NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Specify, P = Page, R = Request',
  `calendarEventAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `calendarID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eventID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `displayEventAttributes` longtext COLLATE utf8mb4_unicode_ci,
  `enableLinkToPage` tinyint(1) DEFAULT '0',
  `displayEventName` tinyint(1) DEFAULT '0',
  `displayEventDate` tinyint(1) DEFAULT '0',
  `displayEventDescription` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btContentFile`
--

CREATE TABLE `btContentFile` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btContentImage`
--

CREATE TABLE `btContentImage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `fOnstateID` int(10) UNSIGNED DEFAULT '0',
  `cropImage` int(10) UNSIGNED DEFAULT '0',
  `maxWidth` int(10) UNSIGNED DEFAULT '0',
  `maxHeight` int(10) UNSIGNED DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `fileLinkID` int(10) UNSIGNED DEFAULT '0',
  `openLinkInNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `altText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btContentLocal`
--

CREATE TABLE `btContentLocal` (
  `bID` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCoreAreaLayout`
--

CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCoreConversation`
--

CREATE TABLE `btCoreConversation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) UNSIGNED NOT NULL DEFAULT '50',
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
  `customDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCorePageTypeComposerControlOutput`
--

CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) UNSIGNED NOT NULL,
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCoreScrapbookDisplay`
--

CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bOriginalID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCoreStackDisplay`
--

CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `stID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btDateNavigation`
--

CREATE TABLE `btDateNavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cTargetID` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btDesktopDraftList`
--

CREATE TABLE `btDesktopDraftList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `draftsPerPage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btDesktopNewsflowLatest`
--

CREATE TABLE `btDesktopNewsflowLatest` (
  `bID` int(10) UNSIGNED NOT NULL,
  `slot` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btDesktopSiteActivity`
--

CREATE TABLE `btDesktopSiteActivity` (
  `bID` int(10) UNSIGNED NOT NULL,
  `types` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btDocumentLibrary`
--

CREATE TABLE `btDocumentLibrary` (
  `bID` int(10) UNSIGNED NOT NULL,
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
  `addFilesToSetID` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btEventList`
--

CREATE TABLE `btEventList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `caID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalToRetrieve` smallint(5) UNSIGNED NOT NULL DEFAULT '10',
  `totalPerPage` smallint(5) UNSIGNED NOT NULL DEFAULT '10',
  `filterByTopicAttributeKeyID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterByTopicID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterByPageTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByFeatured` tinyint(1) NOT NULL DEFAULT '0',
  `eventListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkToPage` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExpressEntryDetail`
--

CREATE TABLE `btExpressEntryDetail` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exSpecificEntryID` int(10) UNSIGNED DEFAULT NULL,
  `exEntryAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exFormID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `entryMode` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExpressEntryList`
--

CREATE TABLE `btExpressEntryList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exEntityID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailPage` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExpressForm`
--

CREATE TABLE `btExpressForm` (
  `bID` int(10) UNSIGNED NOT NULL,
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
  `addFilesToFolder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExternalForm`
--

CREATE TABLE `btExternalForm` (
  `bID` int(10) UNSIGNED NOT NULL,
  `filename` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFaq`
--

CREATE TABLE `btFaq` (
  `bID` int(10) UNSIGNED NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFaqEntries`
--

CREATE TABLE `btFaqEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFeature`
--

CREATE TABLE `btFeature` (
  `bID` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btForm`
--

CREATE TABLE `btForm` (
  `bID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8mb4_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswers`
--

CREATE TABLE `btFormAnswers` (
  `aID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED DEFAULT '0',
  `msqID` int(10) UNSIGNED DEFAULT '0',
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswerSet`
--

CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormQuestions`
--

CREATE TABLE `btFormQuestions` (
  `qID` int(10) UNSIGNED NOT NULL,
  `msqID` int(10) UNSIGNED DEFAULT '0',
  `bID` int(10) UNSIGNED DEFAULT '0',
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `position` int(10) UNSIGNED DEFAULT '1000',
  `width` int(10) UNSIGNED DEFAULT '50',
  `height` int(10) UNSIGNED DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btGoogleMap`
--

CREATE TABLE `btGoogleMap` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btImageSlider`
--

CREATE TABLE `btImageSlider` (
  `bID` int(10) UNSIGNED NOT NULL,
  `navigationType` int(10) UNSIGNED DEFAULT '0',
  `timeout` int(10) UNSIGNED DEFAULT NULL,
  `speed` int(10) UNSIGNED DEFAULT NULL,
  `noAnimate` int(10) UNSIGNED DEFAULT NULL,
  `pause` int(10) UNSIGNED DEFAULT NULL,
  `maxWidth` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btImageSliderEntries`
--

CREATE TABLE `btImageSliderEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `fID` int(10) UNSIGNED DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btNavigation`
--

CREATE TABLE `btNavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `orderBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btNextPrevious`
--

CREATE TABLE `btNextPrevious` (
  `bID` int(10) UNSIGNED NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'display_asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btPageAttributeDisplay`
--

CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) UNSIGNED DEFAULT NULL,
  `thumbnailWidth` int(10) UNSIGNED DEFAULT NULL,
  `delimiter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btPageList`
--

CREATE TABLE `btPageList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `num` smallint(5) UNSIGNED NOT NULL,
  `orderBy` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `cThisParent` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) UNSIGNED DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btPageTitle`
--

CREATE TABLE `btPageTitle` (
  `bID` int(10) UNSIGNED NOT NULL,
  `useCustomTitle` int(10) UNSIGNED DEFAULT '0',
  `useFilterTitle` int(10) UNSIGNED DEFAULT '0',
  `useFilterTopic` int(10) UNSIGNED DEFAULT '0',
  `useFilterTag` int(10) UNSIGNED DEFAULT '0',
  `useFilterDate` int(10) UNSIGNED DEFAULT '0',
  `topicTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btRssDisplay`
--

CREATE TABLE `btRssDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) UNSIGNED DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSearch`
--

CREATE TABLE `btSearch` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postTo_cID` int(10) UNSIGNED DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btShareThisPage`
--

CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT '0',
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSocialLinks`
--

CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT '0',
  `slID` int(10) UNSIGNED DEFAULT '0',
  `displayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSurvey`
--

CREATE TABLE `btSurvey` (
  `bID` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyOptions`
--

CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) UNSIGNED NOT NULL,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyResults`
--

CREATE TABLE `btSurveyResults` (
  `resultID` int(10) UNSIGNED NOT NULL,
  `optionID` int(10) UNSIGNED DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSwitchLanguage`
--

CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTags`
--

CREATE TABLE `btTags` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTestimonial`
--

CREATE TABLE `btTestimonial` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTopicList`
--

CREATE TABLE `btTopicList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btVideo`
--

CREATE TABLE `btVideo` (
  `bID` int(10) UNSIGNED NOT NULL,
  `webmfID` int(10) UNSIGNED DEFAULT '0',
  `oggfID` int(10) UNSIGNED DEFAULT '0',
  `posterfID` int(10) UNSIGNED DEFAULT '0',
  `mp4fID` int(10) UNSIGNED DEFAULT '0',
  `videoSize` int(10) UNSIGNED DEFAULT '0',
  `width` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btYouTube`
--

CREATE TABLE `btYouTube` (
  `bID` int(10) UNSIGNED NOT NULL,
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
  `controls` int(10) UNSIGNED DEFAULT NULL,
  `iv_load_policy` int(10) UNSIGNED DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT '0',
  `modestbranding` tinyint(1) NOT NULL DEFAULT '0',
  `rel` tinyint(1) NOT NULL DEFAULT '0',
  `showinfo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventAttributeKeys`
--

CREATE TABLE `CalendarEventAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventOccurrences`
--

CREATE TABLE `CalendarEventOccurrences` (
  `occurrenceID` int(10) UNSIGNED NOT NULL,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `cancelled` tinyint(1) NOT NULL,
  `repetitionID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventRepetitions`
--

CREATE TABLE `CalendarEventRepetitions` (
  `repetitionID` int(10) UNSIGNED NOT NULL,
  `repetitionObject` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEvents`
--

CREATE TABLE `CalendarEvents` (
  `eventID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventSearchIndexAttributes`
--

CREATE TABLE `CalendarEventSearchIndexAttributes` (
  `eventID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ak_event_categories` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersionAttributeValues`
--

CREATE TABLE `CalendarEventVersionAttributeValues` (
  `eventVersionID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersionOccurrences`
--

CREATE TABLE `CalendarEventVersionOccurrences` (
  `versionOccurrenceID` int(10) UNSIGNED NOT NULL,
  `eventVersionID` int(10) UNSIGNED DEFAULT NULL,
  `occurrenceID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersionRepetitions`
--

CREATE TABLE `CalendarEventVersionRepetitions` (
  `versionRepetitionID` int(10) UNSIGNED NOT NULL,
  `eventVersionID` int(10) UNSIGNED DEFAULT NULL,
  `repetitionID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersions`
--

CREATE TABLE `CalendarEventVersions` (
  `eventVersionID` int(10) UNSIGNED NOT NULL,
  `evDateAdded` datetime NOT NULL,
  `evActivateDateTime` datetime DEFAULT NULL,
  `evIsApproved` tinyint(1) NOT NULL,
  `evDescription` longtext COLLATE utf8mb4_unicode_ci,
  `evName` longtext COLLATE utf8mb4_unicode_ci,
  `evRelatedPageRelationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eventID` int(10) UNSIGNED DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventWorkflowProgress`
--

CREATE TABLE `CalendarEventWorkflowProgress` (
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eventID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarPermissionAssignments`
--

CREATE TABLE `CalendarPermissionAssignments` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarRelatedEvents`
--

CREATE TABLE `CalendarRelatedEvents` (
  `relatedEventID` int(10) UNSIGNED NOT NULL,
  `relationID` int(10) UNSIGNED NOT NULL,
  `relationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Calendars`
--

CREATE TABLE `Calendars` (
  `caID` int(10) UNSIGNED NOT NULL,
  `caName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caOverridePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `eventPageAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableMoreDetails` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventPageParentID` int(10) UNSIGNED DEFAULT '0',
  `eventPageTypeID` int(10) UNSIGNED DEFAULT '0',
  `eventPageAssociatedID` int(10) UNSIGNED DEFAULT '0',
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionAttributeKeys`
--

CREATE TABLE `CollectionAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionAttributeValues`
--

CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cvID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Collections`
--

CREATE TABLE `Collections` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) UNSIGNED NOT NULL,
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
  `ak_project_skills` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionAreaStyles`
--

CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocks`
--

CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbRelationID` int(10) UNSIGNED DEFAULT '0',
  `cbDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocksCacheSettings`
--

CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8mb4_unicode_ci,
  `btCachedBlockOutputExpires` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlockStyles`
--

CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionFeatureAssignments`
--

CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersions`
--

CREATE TABLE `CollectionVersions` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8mb4_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8mb4_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) UNSIGNED DEFAULT NULL,
  `cvApproverUID` int(10) UNSIGNED DEFAULT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  `cvPublishDate` datetime DEFAULT NULL,
  `cvPublishEndDate` datetime DEFAULT NULL,
  `cvDateApproved` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionThemeCustomStyles`
--

CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scvlID` int(10) UNSIGNED DEFAULT '0',
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Config`
--

CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConfigStore`
--

CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8mb4_unicode_ci,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationDiscussions`
--

CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) UNSIGNED NOT NULL,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationEditors`
--

CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) UNSIGNED NOT NULL,
  `cnvEditorHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFeatureDetailAssignments`
--

CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFlaggedMessages`
--

CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFlaggedMessageTypes`
--

CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageAttachments`
--

CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageNotifications`
--

CREATE TABLE `ConversationMessageNotifications` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageRatings`
--

CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(10) UNSIGNED DEFAULT NULL,
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessages`
--

CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageReview` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8mb4_unicode_ci,
  `cnvMessageLevel` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8mb4_unicode_ci,
  `cnvMessageBody` text COLLATE utf8mb4_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationPermissionAddMessageAccessList`
--

CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationPermissionAssignments`
--

CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationRatingTypes`
--

CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Conversations`
--

CREATE TABLE `Conversations` (
  `cnvID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) UNSIGNED DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) UNSIGNED DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8mb4_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationSubscriptions`
--

CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DownloadStatistics`
--

CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL,
  `rcID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressAttributeKeys`
--

CREATE TABLE `ExpressAttributeKeys` (
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntities`
--

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
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityAssociationEntries`
--

CREATE TABLE `ExpressEntityAssociationEntries` (
  `id` int(11) NOT NULL,
  `association_id` int(11) DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `exEntryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityAssociations`
--

CREATE TABLE `ExpressEntityAssociations` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `source_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `target_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `is_owned_by_association` tinyint(1) NOT NULL,
  `is_owning_association` tinyint(1) NOT NULL,
  `target_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inversed_by_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `association_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityEntries`
--

CREATE TABLE `ExpressEntityEntries` (
  `exEntryID` int(11) NOT NULL,
  `exEntryDisplayOrder` int(11) NOT NULL,
  `exEntryDateCreated` datetime NOT NULL,
  `exEntryDateModified` datetime DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `exEntryEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityEntryAssociations`
--

CREATE TABLE `ExpressEntityEntryAssociations` (
  `id` int(11) NOT NULL,
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exEntryID` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityEntryAttributeValues`
--

CREATE TABLE `ExpressEntityEntryAttributeValues` (
  `exEntryID` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressForm170ExpressSearchIndexAttributes`
--

CREATE TABLE `ExpressForm170ExpressSearchIndexAttributes` (
  `exEntryID` int(11) NOT NULL,
  `ak_contact_question_first_name` longtext COLLATE utf8mb4_unicode_ci,
  `ak_contact_question_last_name` longtext COLLATE utf8mb4_unicode_ci,
  `ak_contact_question_email_address` longtext COLLATE utf8mb4_unicode_ci,
  `ak_contact_question_subject` longtext COLLATE utf8mb4_unicode_ci,
  `ak_contact_question_message` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetAssociationControls`
--

CREATE TABLE `ExpressFormFieldSetAssociationControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `association_entity_label_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_selector_mode` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `enable_entry_reordering` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetAttributeKeyControls`
--

CREATE TABLE `ExpressFormFieldSetAttributeKeyControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetAuthorControls`
--

CREATE TABLE `ExpressFormFieldSetAuthorControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetControls`
--

CREATE TABLE `ExpressFormFieldSetControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `field_set_id` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `custom_label` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSets`
--

CREATE TABLE `ExpressFormFieldSets` (
  `id` int(11) NOT NULL,
  `form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `position` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetTextControls`
--

CREATE TABLE `ExpressFormFieldSetTextControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressForms`
--

CREATE TABLE `ExpressForms` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FailedLoginAttempts`
--

CREATE TABLE `FailedLoginAttempts` (
  `lcirID` int(10) UNSIGNED NOT NULL COMMENT 'Record identifier',
  `flaIp` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP address of the failed login attempt',
  `flaTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp of the failed login attempt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Records failed login attempts';

-- --------------------------------------------------------

--
-- Table structure for table `FeatureAssignments`
--

CREATE TABLE `FeatureAssignments` (
  `faID` int(10) UNSIGNED NOT NULL,
  `feID` int(10) UNSIGNED DEFAULT NULL,
  `fcID` int(10) UNSIGNED DEFAULT NULL,
  `fdObject` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FeatureCategories`
--

CREATE TABLE `FeatureCategories` (
  `fcID` int(10) UNSIGNED NOT NULL,
  `fcHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Features`
--

CREATE TABLE `Features` (
  `feID` int(10) UNSIGNED NOT NULL,
  `feHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileAttributeKeys`
--

CREATE TABLE `FileAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileAttributeValues`
--

CREATE TABLE `FileAttributeValues` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileImageThumbnailPaths`
--

CREATE TABLE `FileImageThumbnailPaths` (
  `fileID` int(10) UNSIGNED NOT NULL,
  `fileVersionID` int(10) UNSIGNED NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storageLocationID` int(10) UNSIGNED NOT NULL,
  `thumbnailFormat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isBuilt` tinyint(1) NOT NULL,
  `lockID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockExpires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileImageThumbnailTypeFileSets`
--

CREATE TABLE `FileImageThumbnailTypeFileSets` (
  `ftfsFileSetID` int(10) UNSIGNED NOT NULL,
  `ftfsThumbnailType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileImageThumbnailTypes`
--

CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeID` int(11) NOT NULL,
  `ftTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeWidth` int(11) DEFAULT NULL,
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL,
  `ftTypeSizingMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftUpscalingEnabled` tinyint(1) NOT NULL,
  `ftLimitedToFileSets` tinyint(1) NOT NULL,
  `ftKeepAnimations` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionAssignments`
--

CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypeAccessList`
--

CREATE TABLE `FilePermissionFileTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypeAccessListCustom`
--

CREATE TABLE `FilePermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypes`
--

CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Files`
--

CREATE TABLE `Files` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fDateAdded` datetime NOT NULL,
  `fPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fOverrideSetPermissions` tinyint(1) NOT NULL,
  `ocID` int(10) UNSIGNED NOT NULL,
  `folderTreeNodeID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `fslID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileSearchIndexAttributes`
--

CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) UNSIGNED NOT NULL,
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetFiles`
--

CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileSets`
--

CREATE TABLE `FileSets` (
  `fsID` int(10) UNSIGNED NOT NULL,
  `fsName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetSavedSearches`
--

CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8mb4_unicode_ci,
  `fsResultColumns` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileStorageLocations`
--

CREATE TABLE `FileStorageLocations` (
  `fslName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `fslID` int(10) UNSIGNED NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileStorageLocationTypes`
--

CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeHandle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeName` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeID` int(11) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileUsageRecord`
--

CREATE TABLE `FileUsageRecord` (
  `file_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileVersionLog`
--

CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileVersions`
--

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
  `fID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FormSubmissionNotifications`
--

CREATE TABLE `FormSubmissionNotifications` (
  `exEntryID` int(11) DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaPage`
--

CREATE TABLE `gaPage` (
  `gaiID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringConfiguredDataSources`
--

CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) UNSIGNED NOT NULL,
  `gaID` int(10) UNSIGNED DEFAULT NULL,
  `gasID` int(10) UNSIGNED DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringDataSources`
--

CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) UNSIGNED NOT NULL,
  `gasName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemFeatureAssignments`
--

CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) UNSIGNED NOT NULL,
  `gaiID` int(10) UNSIGNED DEFAULT NULL,
  `faID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItems`
--

CREATE TABLE `GatheringItems` (
  `gaiID` int(10) UNSIGNED NOT NULL,
  `gaID` int(10) UNSIGNED DEFAULT NULL,
  `gasID` int(10) UNSIGNED DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8mb4_unicode_ci,
  `gaiSlotWidth` int(10) UNSIGNED DEFAULT '1',
  `gaiSlotHeight` int(10) UNSIGNED DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemSelectedTemplates`
--

CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gatID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gatTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemTemplateFeatures`
--

CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) UNSIGNED NOT NULL,
  `gatID` int(10) UNSIGNED DEFAULT NULL,
  `feID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemTemplates`
--

CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) UNSIGNED NOT NULL,
  `gatHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8mb4_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) UNSIGNED DEFAULT '0',
  `gatFixedSlotHeight` int(10) UNSIGNED DEFAULT '0',
  `gatForceDefault` int(10) UNSIGNED DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `gatTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemTemplateTypes`
--

CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) UNSIGNED NOT NULL,
  `gatTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringPermissionAssignments`
--

CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Gatherings`
--

CREATE TABLE `Gatherings` (
  `gaID` int(10) UNSIGNED NOT NULL,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Geolocators`
--

CREATE TABLE `Geolocators` (
  `glID` int(10) UNSIGNED NOT NULL COMMENT 'Geolocator ID',
  `glHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator handle',
  `glName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator name',
  `glDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator description',
  `glConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator configuration options(DC2Type:json_array)',
  `glActive` tinyint(1) NOT NULL COMMENT 'Is this Geolocator the active one?',
  `glPackage` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of all the installed Geolocator services';

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
  `gID` int(10) UNSIGNED NOT NULL,
  `gName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8mb4_unicode_ci,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSetGroups`
--

CREATE TABLE `GroupSetGroups` (
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSets`
--

CREATE TABLE `GroupSets` (
  `gsID` int(10) UNSIGNED NOT NULL,
  `gsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Jobs`
--

CREATE TABLE `Jobs` (
  `jID` int(10) UNSIGNED NOT NULL,
  `jName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8mb4_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `JobSetJobs`
--

CREATE TABLE `JobSetJobs` (
  `jsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jRunOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `JobSets`
--

CREATE TABLE `JobSets` (
  `jsID` int(10) UNSIGNED NOT NULL,
  `jsName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `JobsLog`
--

CREATE TABLE `JobsLog` (
  `jlID` int(10) UNSIGNED NOT NULL,
  `jID` int(10) UNSIGNED NOT NULL,
  `jlMessage` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LegacyAttributeKeys`
--

CREATE TABLE `LegacyAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LoginControlIpRanges`
--

CREATE TABLE `LoginControlIpRanges` (
  `lcirID` int(10) UNSIGNED NOT NULL COMMENT 'Record identifier',
  `lcirIpFrom` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Start of the range',
  `lcirIpTo` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'End of the range',
  `lcirType` smallint(5) UNSIGNED NOT NULL COMMENT 'Type of the record',
  `lcirExpires` datetime DEFAULT NULL COMMENT 'Record end-of-life timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='IP ranges used to control login attempts';

-- --------------------------------------------------------

--
-- Table structure for table `Logs`
--

CREATE TABLE `Logs` (
  `logID` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MailImporters`
--

CREATE TABLE `MailImporters` (
  `miID` int(10) UNSIGNED NOT NULL,
  `miHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT 'POP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MailValidationHashes`
--

CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) UNSIGNED NOT NULL,
  `miID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MultilingualPageRelations`
--

CREATE TABLE `MultilingualPageRelations` (
  `mpLocale` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mpLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpRelationID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MultilingualTranslations`
--

CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) UNSIGNED NOT NULL,
  `mtSectionID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8mb4_unicode_ci,
  `msgstr` text COLLATE utf8mb4_unicode_ci,
  `msgstrPlurals` text COLLATE utf8mb4_unicode_ci,
  `context` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `reference` text COLLATE utf8mb4_unicode_ci,
  `flags` text COLLATE utf8mb4_unicode_ci,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `NotificationAlerts`
--

CREATE TABLE `NotificationAlerts` (
  `naID` int(10) UNSIGNED NOT NULL,
  `naIsArchived` tinyint(1) NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `NotificationPermissionSubscriptionList`
--

CREATE TABLE `NotificationPermissionSubscriptionList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `NotificationPermissionSubscriptionListCustom`
--

CREATE TABLE `NotificationPermissionSubscriptionListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nSubscriptionIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE `Notifications` (
  `nID` int(10) UNSIGNED NOT NULL,
  `nDate` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2AccessToken`
--

CREATE TABLE `OAuth2AccessToken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) UNSIGNED DEFAULT NULL,
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2AuthCode`
--

CREATE TABLE `OAuth2AuthCode` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2Client`
--

CREATE TABLE `OAuth2Client` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirectUri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientSecret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consentType` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2RefreshToken`
--

CREATE TABLE `OAuth2RefreshToken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `accessToken` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2Scope`
--

CREATE TABLE `OAuth2Scope` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OauthUserMap`
--

CREATE TABLE `OauthUserMap` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Packages`
--

CREATE TABLE `Packages` (
  `pkgID` int(10) UNSIGNED NOT NULL,
  `pkgHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgVersion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL,
  `pkgAvailableVersion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageFeeds`
--

CREATE TABLE `PageFeeds` (
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL,
  `iconFID` int(10) UNSIGNED NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfID` int(10) UNSIGNED NOT NULL,
  `cParentID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED NOT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL,
  `pfContentToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePaths`
--

CREATE TABLE `PagePaths` (
  `cPath` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppID` int(11) NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL,
  `ppIsCanonical` tinyint(1) NOT NULL,
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionAssignments`
--

CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessList`
--

CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pages`
--

CREATE TABLE `Pages` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteTreeID` int(10) UNSIGNED DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) UNSIGNED DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8mb4_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsDraft` tinyint(1) NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageSearchIndex`
--

CREATE TABLE `PageSearchIndex` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `cName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8mb4_unicode_ci,
  `cPath` text COLLATE utf8mb4_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTemplates`
--

CREATE TABLE `PageTemplates` (
  `pTemplateID` int(11) NOT NULL,
  `pTemplateHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageThemeCustomStyles`
--

CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scvlID` int(10) UNSIGNED DEFAULT '0',
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageThemes`
--

CREATE TABLE `PageThemes` (
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `pThemeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8mb4_unicode_ci,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerControlTypes`
--

CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerFormLayoutSetControls`
--

CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL,
  `ptComposerFormLayoutSetID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerControlTypeID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8mb4_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerFormLayoutSets`
--

CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8mb4_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerOutputBlocks`
--

CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerOutputControls`
--

CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL,
  `pTemplateID` int(10) UNSIGNED DEFAULT '0',
  `ptID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePageTemplateDefaultPages`
--

CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePageTemplates`
--

CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePermissionAssignments`
--

CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePublishTargetTypes`
--

CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypes`
--

CREATE TABLE `PageTypes` (
  `ptID` int(10) UNSIGNED NOT NULL,
  `ptName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) UNSIGNED DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) UNSIGNED DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8mb4_unicode_ci,
  `siteTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageWorkflowProgress`
--

CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccess`
--

CREATE TABLE `PermissionAccess` (
  `paID` int(10) UNSIGNED NOT NULL,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntities`
--

CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) UNSIGNED NOT NULL,
  `petID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroups`
--

CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) UNSIGNED NOT NULL,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypes`
--

CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) UNSIGNED NOT NULL,
  `petHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityUsers`
--

CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessList`
--

CREATE TABLE `PermissionAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pdID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessWorkflows`
--

CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAssignments`
--

CREATE TABLE `PermissionAssignments` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionDurationObjects`
--

CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) UNSIGNED NOT NULL,
  `pdObject` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeyCategories`
--

CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) UNSIGNED NOT NULL,
  `pkCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeys`
--

CREATE TABLE `PermissionKeys` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `pkHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PileContents`
--

CREATE TABLE `PileContents` (
  `pcID` int(10) UNSIGNED NOT NULL,
  `pID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Piles`
--

CREATE TABLE `Piles` (
  `pID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PrivateMessageNotifications`
--

CREATE TABLE `PrivateMessageNotifications` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `QueueMessages`
--

CREATE TABLE `QueueMessages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `handle` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `QueuePageDuplicationRelations`
--

CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `originalCID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Queues`
--

CREATE TABLE `Queues` (
  `queue_id` int(10) UNSIGNED NOT NULL,
  `queue_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` int(10) UNSIGNED NOT NULL DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedExpressSearchQueries`
--

CREATE TABLE `SavedExpressSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedFileSearchQueries`
--

CREATE TABLE `SavedFileSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedPageSearchQueries`
--

CREATE TABLE `SavedPageSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedUserSearchQueries`
--

CREATE TABLE `SavedUserSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Sessions`
--

CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sessionValue` longtext COLLATE utf8mb4_unicode_ci,
  `sessionTime` int(10) UNSIGNED NOT NULL,
  `sessionLifeTime` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiblingPageRelations`
--

CREATE TABLE `SiblingPageRelations` (
  `mpRelationID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteAttributeKeys`
--

CREATE TABLE `SiteAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteAttributeValues`
--

CREATE TABLE `SiteAttributeValues` (
  `siteID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteLocales`
--

CREATE TABLE `SiteLocales` (
  `siteLocaleID` int(10) UNSIGNED NOT NULL,
  `msIsDefault` tinyint(1) NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Sites`
--

CREATE TABLE `Sites` (
  `siteID` int(10) UNSIGNED NOT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `siteIsDefault` tinyint(1) NOT NULL,
  `siteHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteSearchIndexAttributes`
--

CREATE TABLE `SiteSearchIndexAttributes` (
  `siteID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTrees`
--

CREATE TABLE `SiteTrees` (
  `siteTreeID` int(10) UNSIGNED NOT NULL,
  `siteHomePageID` int(10) UNSIGNED NOT NULL,
  `treeType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTreeTrees`
--

CREATE TABLE `SiteTreeTrees` (
  `siteLocaleID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTypes`
--

CREATE TABLE `SiteTypes` (
  `siteTypeID` int(10) UNSIGNED NOT NULL,
  `siteTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeThemeID` int(11) NOT NULL,
  `siteTypeHomePageTemplateID` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SocialLinks`
--

CREATE TABLE `SocialLinks` (
  `ssHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slID` int(11) NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Stacks`
--

CREATE TABLE `Stacks` (
  `stID` int(10) UNSIGNED NOT NULL,
  `stName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stType` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StackUsageRecord`
--

CREATE TABLE `StackUsageRecord` (
  `stack_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerCustomCssRecords`
--

CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sccRecordID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerInlineStylePresets`
--

CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) UNSIGNED NOT NULL,
  `pssPresetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerInlineStyleSets`
--

CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(11) NOT NULL,
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
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerValueLists`
--

CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerValues`
--

CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) UNSIGNED NOT NULL,
  `scvlID` int(10) UNSIGNED DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemAntispamLibraries`
--

CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemCaptchaLibraries`
--

CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemContentEditorSnippets`
--

CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemDatabaseMigrations`
--

CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemDatabaseQueryLog`
--

CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) UNSIGNED NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TopicTrees`
--

CREATE TABLE `TopicTrees` (
  `treeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeFileNodes`
--

CREATE TABLE `TreeFileNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeGroupNodes`
--

CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodePermissionAssignments`
--

CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodes`
--

CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeID` int(10) UNSIGNED DEFAULT '0',
  `treeID` int(10) UNSIGNED DEFAULT '0',
  `treeNodeParentID` int(10) UNSIGNED DEFAULT '0',
  `treeNodeDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `treeNodeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodeTypes`
--

CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Trees`
--

CREATE TABLE `Trees` (
  `treeID` int(10) UNSIGNED NOT NULL,
  `treeTypeID` int(10) UNSIGNED DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeSearchQueryNodes`
--

CREATE TABLE `TreeSearchQueryNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `savedSearchID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeTypes`
--

CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) UNSIGNED NOT NULL,
  `treeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UsedStringLog`
--

CREATE TABLE `UsedStringLog` (
  `id` int(10) UNSIGNED NOT NULL,
  `usedString` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeKeys`
--

CREATE TABLE `UserAttributeKeys` (
  `uakProfileDisplay` tinyint(1) NOT NULL,
  `uakProfileEdit` tinyint(1) NOT NULL,
  `uakProfileEditRequired` tinyint(1) NOT NULL,
  `uakRegisterEdit` tinyint(1) NOT NULL,
  `uakRegisterEditRequired` tinyint(1) NOT NULL,
  `uakMemberListDisplay` tinyint(1) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeValues`
--

CREATE TABLE `UserAttributeValues` (
  `uID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserDeactivatedNotifications`
--

CREATE TABLE `UserDeactivatedNotifications` (
  `userID` int(10) UNSIGNED NOT NULL,
  `actorID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserGroups`
--

CREATE TABLE `UserGroups` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserLoginAttempts`
--

CREATE TABLE `UserLoginAttempts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `userId` int(10) UNSIGNED NOT NULL,
  `utcDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPointActions`
--

CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL,
  `upaHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPointHistory`
--

CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8mb4_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessages`
--

CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8mb4_unicode_ci,
  `uToID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessagesTo`
--

CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `uID` int(10) UNSIGNED NOT NULL,
  `uName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uIsActive` tinyint(1) NOT NULL,
  `uIsFullRecord` tinyint(1) NOT NULL,
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uDateAdded` datetime NOT NULL,
  `uLastPasswordChange` datetime NOT NULL,
  `uHasAvatar` tinyint(1) NOT NULL,
  `uLastOnline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) UNSIGNED DEFAULT '0',
  `uNumLogins` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastIP` longtext COLLATE utf8mb4_unicode_ci,
  `uTimezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uIsPasswordReset` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserSearchIndexAttributes`
--

CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) UNSIGNED NOT NULL,
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserSignupNotifications`
--

CREATE TABLE `UserSignupNotifications` (
  `usID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserSignups`
--

CREATE TABLE `UserSignups` (
  `usID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `createdBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserValidationHashes`
--

CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserWorkflowProgress`
--

CREATE TABLE `UserWorkflowProgress` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgress`
--

CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `wpCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressCategories`
--

CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) UNSIGNED NOT NULL,
  `wpCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressHistory`
--

CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) UNSIGNED NOT NULL,
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressNotifications`
--

CREATE TABLE `WorkflowProgressNotifications` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowRequestObjects`
--

CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) UNSIGNED NOT NULL,
  `wrObject` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Workflows`
--

CREATE TABLE `Workflows` (
  `wfID` int(10) UNSIGNED NOT NULL,
  `wfName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wftID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowTypes`
--

CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) UNSIGNED NOT NULL,
  `wftHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`),
  ADD KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  ADD KEY `arID` (`arID`),
  ADD KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`);

--
-- Indexes for table `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexes for table `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
  ADD PRIMARY KEY (`arLayoutPresetID`),
  ADD KEY `arLayoutID` (`arLayoutID`),
  ADD KEY `arLayoutPresetName` (`arLayoutPresetName`);

--
-- Indexes for table `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Indexes for table `AreaLayoutsUsingPresets`
--
ALTER TABLE `AreaLayoutsUsingPresets`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Indexes for table `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexes for table `AreaPermissionAssignments`
--
ALTER TABLE `AreaPermissionAssignments`
  ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `AreaPermissionBlockTypeAccessList`
--
ALTER TABLE `AreaPermissionBlockTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `AreaPermissionBlockTypeAccessListCustom`
--
ALTER TABLE `AreaPermissionBlockTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indexes for table `Areas`
--
ALTER TABLE `Areas`
  ADD PRIMARY KEY (`arID`),
  ADD KEY `arIsGlobal` (`arIsGlobal`),
  ADD KEY `cID` (`cID`),
  ADD KEY `arHandle` (`arHandle`),
  ADD KEY `arParentID` (`arParentID`);

--
-- Indexes for table `atAddress`
--
ALTER TABLE `atAddress`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atBoolean`
--
ALTER TABLE `atBoolean`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atDateTime`
--
ALTER TABLE `atDateTime`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atDefault`
--
ALTER TABLE `atDefault`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atEmptySettings`
--
ALTER TABLE `atEmptySettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atExpress`
--
ALTER TABLE `atExpress`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atExpressSelectedEntries`
--
ALTER TABLE `atExpressSelectedEntries`
  ADD PRIMARY KEY (`avID`,`exEntryID`),
  ADD KEY `IDX_C9D404BBA2A82A5D` (`avID`),
  ADD KEY `IDX_C9D404BB6DCB6296` (`exEntryID`);

--
-- Indexes for table `atExpressSettings`
--
ALTER TABLE `atExpressSettings`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_E8F67F0FCE2D7284` (`exEntityID`);

--
-- Indexes for table `atFile`
--
ALTER TABLE `atFile`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_73D17D61E3111F45` (`fID`);

--
-- Indexes for table `atFileSettings`
--
ALTER TABLE `atFileSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atNumber`
--
ALTER TABLE `atNumber`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atSelect`
--
ALTER TABLE `atSelect`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atSelectedSocialLinks`
--
ALTER TABLE `atSelectedSocialLinks`
  ADD PRIMARY KEY (`avsID`),
  ADD KEY `IDX_10743709A2A82A5D` (`avID`);

--
-- Indexes for table `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  ADD PRIMARY KEY (`avTreeTopicNodeID`),
  ADD KEY `IDX_E42A7D5BA2A82A5D` (`avID`);

--
-- Indexes for table `atSelectOptionLists`
--
ALTER TABLE `atSelectOptionLists`
  ADD PRIMARY KEY (`avSelectOptionListID`);

--
-- Indexes for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  ADD PRIMARY KEY (`avSelectOptionID`),
  ADD KEY `IDX_797414B0CB59257C` (`avSelectOptionListID`);

--
-- Indexes for table `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
  ADD PRIMARY KEY (`avID`,`avSelectOptionID`),
  ADD KEY `IDX_40C97EC3A2A82A5D` (`avID`),
  ADD KEY `IDX_40C97EC3E584C274` (`avSelectOptionID`);

--
-- Indexes for table `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
  ADD PRIMARY KEY (`akID`),
  ADD UNIQUE KEY `UNIQ_5D514424CB59257C` (`avSelectOptionListID`);

--
-- Indexes for table `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atTextSettings`
--
ALTER TABLE `atTextSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atTopic`
--
ALTER TABLE `atTopic`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atTopicSettings`
--
ALTER TABLE `atTopicSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  ADD PRIMARY KEY (`akCategoryID`),
  ADD UNIQUE KEY `UNIQ_A2A0CC67FA0337B` (`akCategoryHandle`),
  ADD KEY `IDX_A2A0CC67CE45CBB0` (`pkgID`),
  ADD KEY `pkgID` (`pkgID`,`akCategoryID`),
  ADD KEY `akCategoryHandle` (`akCategoryHandle`);

--
-- Indexes for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_DCA32C62A12CFE33` (`atID`),
  ADD KEY `IDX_DCA32C62B059B76B` (`akCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
  ADD PRIMARY KEY (`akID`,`asID`),
  ADD KEY `IDX_222F72D8B6561A7E` (`akID`),
  ADD KEY `IDX_222F72D8A463E8B6` (`asID`);

--
-- Indexes for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `IDX_FCA02D5FB059B76B` (`akCategoryID`),
  ADD KEY `asHandle` (`asHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
  ADD PRIMARY KEY (`akCategoryID`,`atID`),
  ADD KEY `IDX_49A9CABEB059B76B` (`akCategoryID`),
  ADD KEY `IDX_49A9CABEA12CFE33` (`atID`);

--
-- Indexes for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  ADD PRIMARY KEY (`atID`),
  ADD UNIQUE KEY `UNIQ_53580A7F46AA0F38` (`atHandle`),
  ADD KEY `IDX_53580A7FCE45CBB0` (`pkgID`),
  ADD KEY `pkgID` (`pkgID`,`atID`);

--
-- Indexes for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_DCCE7864B6561A7E` (`akID`);

--
-- Indexes for table `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
  ADD PRIMARY KEY (`authTypeID`),
  ADD UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `BannedWords`
--
ALTER TABLE `BannedWords`
  ADD PRIMARY KEY (`bwID`);

--
-- Indexes for table `BasicWorkflowPermissionAssignments`
--
ALTER TABLE `BasicWorkflowPermissionAssignments`
  ADD PRIMARY KEY (`wfID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `BasicWorkflowProgressData`
--
ALTER TABLE `BasicWorkflowProgressData`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `uIDStarted` (`uIDStarted`),
  ADD KEY `uIDCompleted` (`uIDCompleted`);

--
-- Indexes for table `BlockFeatureAssignments`
--
ALTER TABLE `BlockFeatureAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  ADD KEY `faID` (`faID`,`cID`,`cvID`),
  ADD KEY `bID` (`bID`);

--
-- Indexes for table `BlockPermissionAssignments`
--
ALTER TABLE `BlockPermissionAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  ADD KEY `bID` (`bID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `Blocks`
--
ALTER TABLE `Blocks`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `btID` (`btID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `BlockTypePermissionBlockTypeAccessList`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `BlockTypePermissionBlockTypeAccessListCustom`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indexes for table `BlockTypes`
--
ALTER TABLE `BlockTypes`
  ADD PRIMARY KEY (`btID`);

--
-- Indexes for table `BlockTypeSetBlockTypes`
--
ALTER TABLE `BlockTypeSetBlockTypes`
  ADD PRIMARY KEY (`btID`,`btsID`),
  ADD KEY `btsID` (`btsID`,`displayOrder`);

--
-- Indexes for table `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
  ADD PRIMARY KEY (`btsID`),
  ADD UNIQUE KEY `btsHandle` (`btsHandle`),
  ADD KEY `btsDisplayOrder` (`btsDisplayOrder`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `btCalendar`
--
ALTER TABLE `btCalendar`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btCalendarEvent`
--
ALTER TABLE `btCalendarEvent`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btContentFile`
--
ALTER TABLE `btContentFile`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `btContentImage`
--
ALTER TABLE `btContentImage`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `btContentLocal`
--
ALTER TABLE `btContentLocal`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btCoreAreaLayout`
--
ALTER TABLE `btCoreAreaLayout`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `arLayoutID` (`arLayoutID`);

--
-- Indexes for table `btCoreConversation`
--
ALTER TABLE `btCoreConversation`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indexes for table `btCorePageTypeComposerControlOutput`
--
ALTER TABLE `btCorePageTypeComposerControlOutput`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`);

--
-- Indexes for table `btCoreScrapbookDisplay`
--
ALTER TABLE `btCoreScrapbookDisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Indexes for table `btCoreStackDisplay`
--
ALTER TABLE `btCoreStackDisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `stID` (`stID`);

--
-- Indexes for table `btDateNavigation`
--
ALTER TABLE `btDateNavigation`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDesktopDraftList`
--
ALTER TABLE `btDesktopDraftList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDesktopNewsflowLatest`
--
ALTER TABLE `btDesktopNewsflowLatest`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDesktopSiteActivity`
--
ALTER TABLE `btDesktopSiteActivity`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDocumentLibrary`
--
ALTER TABLE `btDocumentLibrary`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btEventList`
--
ALTER TABLE `btEventList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExpressEntryDetail`
--
ALTER TABLE `btExpressEntryDetail`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExpressEntryList`
--
ALTER TABLE `btExpressEntryList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExpressForm`
--
ALTER TABLE `btExpressForm`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExternalForm`
--
ALTER TABLE `btExternalForm`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btFaq`
--
ALTER TABLE `btFaq`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bID` (`bID`,`sortOrder`);

--
-- Indexes for table `btFeature`
--
ALTER TABLE `btFeature`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btForm`
--
ALTER TABLE `btForm`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Indexes for table `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
  ADD PRIMARY KEY (`aID`),
  ADD KEY `asID` (`asID`),
  ADD KEY `msqID` (`msqID`);

--
-- Indexes for table `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
  ADD PRIMARY KEY (`qID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `msqID` (`msqID`),
  ADD KEY `bID` (`bID`,`questionSetId`);

--
-- Indexes for table `btGoogleMap`
--
ALTER TABLE `btGoogleMap`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btImageSlider`
--
ALTER TABLE `btImageSlider`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btNavigation`
--
ALTER TABLE `btNavigation`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btNextPrevious`
--
ALTER TABLE `btNextPrevious`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btPageAttributeDisplay`
--
ALTER TABLE `btPageAttributeDisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btPageList`
--
ALTER TABLE `btPageList`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `btPageTitle`
--
ALTER TABLE `btPageTitle`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btRssDisplay`
--
ALTER TABLE `btRssDisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSearch`
--
ALTER TABLE `btSearch`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
  ADD PRIMARY KEY (`btShareThisPageID`);

--
-- Indexes for table `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
  ADD PRIMARY KEY (`btSocialLinkID`),
  ADD KEY `bID` (`bID`,`displayOrder`),
  ADD KEY `slID` (`slID`);

--
-- Indexes for table `btSurvey`
--
ALTER TABLE `btSurvey`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
  ADD PRIMARY KEY (`optionID`),
  ADD KEY `bID` (`bID`,`displayOrder`);

--
-- Indexes for table `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
  ADD PRIMARY KEY (`resultID`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `cID` (`cID`,`optionID`,`bID`),
  ADD KEY `bID` (`bID`,`cID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `btSwitchLanguage`
--
ALTER TABLE `btSwitchLanguage`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTags`
--
ALTER TABLE `btTags`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTestimonial`
--
ALTER TABLE `btTestimonial`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTopicList`
--
ALTER TABLE `btTopicList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btVideo`
--
ALTER TABLE `btVideo`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btYouTube`
--
ALTER TABLE `btYouTube`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `CalendarEventAttributeKeys`
--
ALTER TABLE `CalendarEventAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `CalendarEventOccurrences`
--
ALTER TABLE `CalendarEventOccurrences`
  ADD PRIMARY KEY (`occurrenceID`),
  ADD KEY `IDX_7DD686EC31391E00` (`repetitionID`),
  ADD KEY `eventdates` (`occurrenceID`,`startTime`,`endTime`);

--
-- Indexes for table `CalendarEventRepetitions`
--
ALTER TABLE `CalendarEventRepetitions`
  ADD PRIMARY KEY (`repetitionID`);

--
-- Indexes for table `CalendarEvents`
--
ALTER TABLE `CalendarEvents`
  ADD PRIMARY KEY (`eventID`),
  ADD KEY `IDX_7F23C55611C85723` (`caID`);

--
-- Indexes for table `CalendarEventSearchIndexAttributes`
--
ALTER TABLE `CalendarEventSearchIndexAttributes`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `CalendarEventVersionAttributeValues`
--
ALTER TABLE `CalendarEventVersionAttributeValues`
  ADD PRIMARY KEY (`eventVersionID`,`akID`),
  ADD KEY `IDX_8C835B05403F5D6` (`eventVersionID`),
  ADD KEY `IDX_8C835B05B6561A7E` (`akID`),
  ADD KEY `IDX_8C835B05A2A82A5D` (`avID`);

--
-- Indexes for table `CalendarEventVersionOccurrences`
--
ALTER TABLE `CalendarEventVersionOccurrences`
  ADD PRIMARY KEY (`versionOccurrenceID`),
  ADD KEY `IDX_60310489403F5D6` (`eventVersionID`),
  ADD KEY `IDX_60310489B4FDDC0F` (`occurrenceID`);

--
-- Indexes for table `CalendarEventVersionRepetitions`
--
ALTER TABLE `CalendarEventVersionRepetitions`
  ADD PRIMARY KEY (`versionRepetitionID`),
  ADD KEY `IDX_C1C3D3DB403F5D6` (`eventVersionID`),
  ADD KEY `IDX_C1C3D3DB31391E00` (`repetitionID`);

--
-- Indexes for table `CalendarEventVersions`
--
ALTER TABLE `CalendarEventVersions`
  ADD PRIMARY KEY (`eventVersionID`),
  ADD KEY `IDX_8E26027410409BA4` (`eventID`),
  ADD KEY `IDX_8E260274FD71026C` (`uID`);

--
-- Indexes for table `CalendarEventWorkflowProgress`
--
ALTER TABLE `CalendarEventWorkflowProgress`
  ADD PRIMARY KEY (`eventID`,`wpID`),
  ADD KEY `IDX_C5EAACF910409BA4` (`eventID`),
  ADD KEY `wpID` (`wpID`);

--
-- Indexes for table `CalendarPermissionAssignments`
--
ALTER TABLE `CalendarPermissionAssignments`
  ADD PRIMARY KEY (`caID`,`pkID`,`paID`),
  ADD KEY `IDX_5AD546AA11C85723` (`caID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `CalendarRelatedEvents`
--
ALTER TABLE `CalendarRelatedEvents`
  ADD PRIMARY KEY (`relatedEventID`),
  ADD KEY `IDX_310130E910409BA4` (`eventID`);

--
-- Indexes for table `Calendars`
--
ALTER TABLE `Calendars`
  ADD PRIMARY KEY (`caID`),
  ADD KEY `IDX_62E00AC521D8435` (`siteID`);

--
-- Indexes for table `CollectionAttributeKeys`
--
ALTER TABLE `CollectionAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
  ADD PRIMARY KEY (`cID`,`cvID`,`akID`),
  ADD KEY `IDX_BB9995FCB6561A7E` (`akID`),
  ADD KEY `IDX_BB9995FCA2A82A5D` (`avID`);

--
-- Indexes for table `Collections`
--
ALTER TABLE `Collections`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cIDDateModified` (`cID`,`cDateModified`),
  ADD KEY `cDateModified` (`cDateModified`),
  ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Indexes for table `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `CollectionVersionAreaStyles`
--
ALTER TABLE `CollectionVersionAreaStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `CollectionVersionBlocks`
--
ALTER TABLE `CollectionVersionBlocks`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `cbRelationID` (`cbRelationID`);

--
-- Indexes for table `CollectionVersionBlocksCacheSettings`
--
ALTER TABLE `CollectionVersionBlocksCacheSettings`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `CollectionVersionBlocksOutputCache`
--
ALTER TABLE `CollectionVersionBlocksOutputCache`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `CollectionVersionBlockStyles`
--
ALTER TABLE `CollectionVersionBlockStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`issID`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `CollectionVersionFeatureAssignments`
--
ALTER TABLE `CollectionVersionFeatureAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Indexes for table `CollectionVersionRelatedEdits`
--
ALTER TABLE `CollectionVersionRelatedEdits`
  ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Indexes for table `CollectionVersions`
--
ALTER TABLE `CollectionVersions`
  ADD PRIMARY KEY (`cID`,`cvID`),
  ADD KEY `cvIsApproved` (`cvIsApproved`),
  ADD KEY `cvAuthorUID` (`cvAuthorUID`),
  ADD KEY `cvApproverUID` (`cvApproverUID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexes for table `CollectionVersionThemeCustomStyles`
--
ALTER TABLE `CollectionVersionThemeCustomStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexes for table `Config`
--
ALTER TABLE `Config`
  ADD PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  ADD KEY `configGroup` (`configGroup`);

--
-- Indexes for table `ConfigStore`
--
ALTER TABLE `ConfigStore`
  ADD PRIMARY KEY (`cfKey`,`uID`),
  ADD KEY `uID` (`uID`,`cfKey`),
  ADD KEY `pkgID` (`pkgID`,`cfKey`);

--
-- Indexes for table `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
  ADD PRIMARY KEY (`cnvDiscussionID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
  ADD PRIMARY KEY (`cnvEditorID`),
  ADD KEY `pkgID` (`pkgID`,`cnvEditorHandle`);

--
-- Indexes for table `ConversationFeatureDetailAssignments`
--
ALTER TABLE `ConversationFeatureDetailAssignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indexes for table `ConversationFlaggedMessages`
--
ALTER TABLE `ConversationFlaggedMessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`);

--
-- Indexes for table `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
  ADD PRIMARY KEY (`cnvMessageFlagTypeID`),
  ADD UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`);

--
-- Indexes for table `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
  ADD PRIMARY KEY (`cnvMessageAttachmentID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `ConversationMessageNotifications`
--
ALTER TABLE `ConversationMessageNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
  ADD PRIMARY KEY (`cnvMessageRatingID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  ADD KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `cnvMessageParentID` (`cnvMessageParentID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `ConversationPermissionAddMessageAccessList`
--
ALTER TABLE `ConversationPermissionAddMessageAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `ConversationPermissionAssignments`
--
ALTER TABLE `ConversationPermissionAssignments`
  ADD PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
  ADD PRIMARY KEY (`cnvRatingTypeID`),
  ADD UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  ADD KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`);

--
-- Indexes for table `Conversations`
--
ALTER TABLE `Conversations`
  ADD PRIMARY KEY (`cnvID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `cnvParentMessageID` (`cnvParentMessageID`);

--
-- Indexes for table `ConversationSubscriptions`
--
ALTER TABLE `ConversationSubscriptions`
  ADD PRIMARY KEY (`cnvID`,`uID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
  ADD PRIMARY KEY (`dsID`),
  ADD KEY `fID` (`fID`,`timestamp`),
  ADD KEY `fvID` (`fID`,`fvID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `rcID` (`rcID`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `ExpressAttributeKeys`
--
ALTER TABLE `ExpressAttributeKeys`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_8C881F181257D5D` (`entity_id`);

--
-- Indexes for table `ExpressEntities`
--
ALTER TABLE `ExpressEntities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BC772AA6918020D9` (`handle`),
  ADD UNIQUE KEY `UNIQ_BC772AA6547D6B2D` (`default_view_form_id`),
  ADD UNIQUE KEY `UNIQ_BC772AA6C7DEC56D` (`default_edit_form_id`),
  ADD KEY `IDX_BC772AA6CE45CBB0` (`pkgID`);

--
-- Indexes for table `ExpressEntityAssociationEntries`
--
ALTER TABLE `ExpressEntityAssociationEntries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9C2BB76C6DCB6296` (`exEntryID`),
  ADD KEY `IDX_9C2BB76CEFB9C8A5` (`association_id`);

--
-- Indexes for table `ExpressEntityAssociations`
--
ALTER TABLE `ExpressEntityAssociations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98A0F796E9BBEE93` (`source_entity_id`),
  ADD KEY `IDX_98A0F796B5910F71` (`target_entity_id`);

--
-- Indexes for table `ExpressEntityEntries`
--
ALTER TABLE `ExpressEntityEntries`
  ADD PRIMARY KEY (`exEntryID`),
  ADD KEY `IDX_B8AE3531FD71026C` (`uID`),
  ADD KEY `IDX_B8AE3531AFC87D03` (`exEntryEntityID`);

--
-- Indexes for table `ExpressEntityEntryAssociations`
--
ALTER TABLE `ExpressEntityEntryAssociations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_25B3A0826DCB6296` (`exEntryID`),
  ADD KEY `IDX_25B3A082EFB9C8A5` (`association_id`);

--
-- Indexes for table `ExpressEntityEntryAttributeValues`
--
ALTER TABLE `ExpressEntityEntryAttributeValues`
  ADD PRIMARY KEY (`exEntryID`,`akID`),
  ADD KEY `IDX_6DB641546DCB6296` (`exEntryID`),
  ADD KEY `IDX_6DB64154B6561A7E` (`akID`),
  ADD KEY `IDX_6DB64154A2A82A5D` (`avID`);

--
-- Indexes for table `ExpressForm170ExpressSearchIndexAttributes`
--
ALTER TABLE `ExpressForm170ExpressSearchIndexAttributes`
  ADD PRIMARY KEY (`exEntryID`);

--
-- Indexes for table `ExpressFormFieldSetAssociationControls`
--
ALTER TABLE `ExpressFormFieldSetAssociationControls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E6DF21BBEFB9C8A5` (`association_id`);

--
-- Indexes for table `ExpressFormFieldSetAttributeKeyControls`
--
ALTER TABLE `ExpressFormFieldSetAttributeKeyControls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8481F9D1B6561A7E` (`akID`);

--
-- Indexes for table `ExpressFormFieldSetAuthorControls`
--
ALTER TABLE `ExpressFormFieldSetAuthorControls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExpressFormFieldSetControls`
--
ALTER TABLE `ExpressFormFieldSetControls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E42868A43ABF811A` (`field_set_id`);

--
-- Indexes for table `ExpressFormFieldSets`
--
ALTER TABLE `ExpressFormFieldSets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A33BBBEC5FF69B7D` (`form_id`);

--
-- Indexes for table `ExpressFormFieldSetTextControls`
--
ALTER TABLE `ExpressFormFieldSetTextControls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExpressForms`
--
ALTER TABLE `ExpressForms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D09031A81257D5D` (`entity_id`);

--
-- Indexes for table `FailedLoginAttempts`
--
ALTER TABLE `FailedLoginAttempts`
  ADD PRIMARY KEY (`lcirID`);

--
-- Indexes for table `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `feID` (`feID`),
  ADD KEY `fcID` (`fcID`);

--
-- Indexes for table `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
  ADD PRIMARY KEY (`fcID`),
  ADD UNIQUE KEY `fcHandle` (`fcHandle`),
  ADD KEY `pkgID` (`pkgID`,`fcID`);

--
-- Indexes for table `Features`
--
ALTER TABLE `Features`
  ADD PRIMARY KEY (`feID`),
  ADD UNIQUE KEY `feHandle` (`feHandle`),
  ADD KEY `pkgID` (`pkgID`,`feID`);

--
-- Indexes for table `FileAttributeKeys`
--
ALTER TABLE `FileAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
  ADD PRIMARY KEY (`fID`,`fvID`,`akID`),
  ADD KEY `IDX_BBECEAA4B6561A7E` (`akID`),
  ADD KEY `IDX_BBECEAA4A2A82A5D` (`avID`);

--
-- Indexes for table `FileImageThumbnailPaths`
--
ALTER TABLE `FileImageThumbnailPaths`
  ADD PRIMARY KEY (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`,`thumbnailFormat`),
  ADD KEY `thumbnailPathIsBuilt` (`isBuilt`);

--
-- Indexes for table `FileImageThumbnailTypeFileSets`
--
ALTER TABLE `FileImageThumbnailTypeFileSets`
  ADD PRIMARY KEY (`ftfsThumbnailType`,`ftfsFileSetID`),
  ADD KEY `IDX_BD75F88D480660E5` (`ftfsThumbnailType`);

--
-- Indexes for table `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
  ADD PRIMARY KEY (`ftTypeID`);

--
-- Indexes for table `FilePermissionAssignments`
--
ALTER TABLE `FilePermissionAssignments`
  ADD PRIMARY KEY (`fID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `FilePermissionFileTypeAccessList`
--
ALTER TABLE `FilePermissionFileTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `FilePermissionFileTypeAccessListCustom`
--
ALTER TABLE `FilePermissionFileTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`extension`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `FilePermissionFileTypes`
--
ALTER TABLE `FilePermissionFileTypes`
  ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  ADD KEY `gID` (`gID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `Files`
--
ALTER TABLE `Files`
  ADD PRIMARY KEY (`fID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `fslID` (`fslID`),
  ADD KEY `ocID` (`ocID`),
  ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Indexes for table `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
  ADD PRIMARY KEY (`fID`);

--
-- Indexes for table `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
  ADD PRIMARY KEY (`fsfID`),
  ADD KEY `fID` (`fID`),
  ADD KEY `fsID` (`fsID`);

--
-- Indexes for table `FileSets`
--
ALTER TABLE `FileSets`
  ADD PRIMARY KEY (`fsID`),
  ADD KEY `uID` (`uID`,`fsType`,`fsName`),
  ADD KEY `fsName` (`fsName`),
  ADD KEY `fsType` (`fsType`);

--
-- Indexes for table `FileSetSavedSearches`
--
ALTER TABLE `FileSetSavedSearches`
  ADD PRIMARY KEY (`fsID`);

--
-- Indexes for table `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
  ADD PRIMARY KEY (`fslID`);

--
-- Indexes for table `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
  ADD PRIMARY KEY (`fslTypeID`);

--
-- Indexes for table `FileUsageRecord`
--
ALTER TABLE `FileUsageRecord`
  ADD PRIMARY KEY (`file_id`,`block_id`,`collection_id`,`collection_version_id`),
  ADD KEY `block` (`block_id`),
  ADD KEY `collection_version` (`collection_id`,`collection_version_id`);

--
-- Indexes for table `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
  ADD PRIMARY KEY (`fvlID`),
  ADD KEY `fvID` (`fID`,`fvID`,`fvlID`);

--
-- Indexes for table `FileVersions`
--
ALTER TABLE `FileVersions`
  ADD PRIMARY KEY (`fID`,`fvID`),
  ADD KEY `IDX_D7B5A13AE3111F45` (`fID`),
  ADD KEY `fvFilename` (`fvFilename`),
  ADD KEY `fvExtension` (`fvExtension`),
  ADD KEY `fvType` (`fvType`);

--
-- Indexes for table `FormSubmissionNotifications`
--
ALTER TABLE `FormSubmissionNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_E7B6BE406DCB6296` (`exEntryID`);

--
-- Indexes for table `gaPage`
--
ALTER TABLE `gaPage`
  ADD PRIMARY KEY (`gaiID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
  ADD PRIMARY KEY (`gcsID`),
  ADD KEY `gaID` (`gaID`),
  ADD KEY `gasID` (`gasID`);

--
-- Indexes for table `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
  ADD PRIMARY KEY (`gasID`),
  ADD UNIQUE KEY `gasHandle` (`gasHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
  ADD PRIMARY KEY (`gafaID`),
  ADD KEY `gaiID` (`gaiID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Indexes for table `GatheringItems`
--
ALTER TABLE `GatheringItems`
  ADD PRIMARY KEY (`gaiID`),
  ADD UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  ADD KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  ADD KEY `gasID` (`gasID`);

--
-- Indexes for table `GatheringItemSelectedTemplates`
--
ALTER TABLE `GatheringItemSelectedTemplates`
  ADD PRIMARY KEY (`gaiID`,`gatID`),
  ADD UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `gatID` (`gatID`);

--
-- Indexes for table `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
  ADD PRIMARY KEY (`gfeID`),
  ADD KEY `gatID` (`gatID`),
  ADD KEY `feID` (`feID`,`gatID`);

--
-- Indexes for table `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
  ADD PRIMARY KEY (`gatID`),
  ADD UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
  ADD PRIMARY KEY (`gatTypeID`),
  ADD UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `GatheringPermissionAssignments`
--
ALTER TABLE `GatheringPermissionAssignments`
  ADD PRIMARY KEY (`gaID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `Gatherings`
--
ALTER TABLE `Gatherings`
  ADD PRIMARY KEY (`gaID`),
  ADD KEY `gaDateLastUpdated` (`gaDateLastUpdated`);

--
-- Indexes for table `Geolocators`
--
ALTER TABLE `Geolocators`
  ADD PRIMARY KEY (`glID`),
  ADD UNIQUE KEY `UNIQ_83BB1614D4F4D416` (`glHandle`),
  ADD KEY `IDX_83BB1614D5F6CC40` (`glPackage`);

--
-- Indexes for table `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`gID`),
  ADD KEY `gName` (`gName`),
  ADD KEY `gBadgeFID` (`gBadgeFID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gPath` (`gPath`(255));

--
-- Indexes for table `GroupSetGroups`
--
ALTER TABLE `GroupSetGroups`
  ADD PRIMARY KEY (`gID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `GroupSets`
--
ALTER TABLE `GroupSets`
  ADD PRIMARY KEY (`gsID`),
  ADD KEY `gsName` (`gsName`),
  ADD KEY `pkgID` (`pkgID`,`gsID`);

--
-- Indexes for table `Jobs`
--
ALTER TABLE `Jobs`
  ADD PRIMARY KEY (`jID`),
  ADD UNIQUE KEY `jHandle` (`jHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  ADD KEY `jDateLastRun` (`jDateLastRun`,`jID`);

--
-- Indexes for table `JobSetJobs`
--
ALTER TABLE `JobSetJobs`
  ADD PRIMARY KEY (`jsID`,`jID`),
  ADD KEY `jID` (`jID`);

--
-- Indexes for table `JobSets`
--
ALTER TABLE `JobSets`
  ADD PRIMARY KEY (`jsID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `jsName` (`jsName`);

--
-- Indexes for table `JobsLog`
--
ALTER TABLE `JobsLog`
  ADD PRIMARY KEY (`jlID`),
  ADD KEY `jID` (`jID`);

--
-- Indexes for table `LegacyAttributeKeys`
--
ALTER TABLE `LegacyAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `LoginControlIpRanges`
--
ALTER TABLE `LoginControlIpRanges`
  ADD PRIMARY KEY (`lcirID`),
  ADD KEY `IX_LoginControlIpRanges_Search` (`lcirIpFrom`,`lcirIpTo`,`lcirExpires`);

--
-- Indexes for table `Logs`
--
ALTER TABLE `Logs`
  ADD PRIMARY KEY (`logID`),
  ADD KEY `channel` (`channel`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `MailImporters`
--
ALTER TABLE `MailImporters`
  ADD PRIMARY KEY (`miID`),
  ADD UNIQUE KEY `miHandle` (`miHandle`),
  ADD KEY `pkgID` (`pkgID`,`miID`);

--
-- Indexes for table `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
  ADD PRIMARY KEY (`mvhID`),
  ADD UNIQUE KEY `mHash` (`mHash`),
  ADD KEY `miID` (`miID`);

--
-- Indexes for table `MultilingualPageRelations`
--
ALTER TABLE `MultilingualPageRelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`);

--
-- Indexes for table `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
  ADD PRIMARY KEY (`mtID`);

--
-- Indexes for table `NotificationAlerts`
--
ALTER TABLE `NotificationAlerts`
  ADD PRIMARY KEY (`naID`),
  ADD KEY `IDX_E11C7408FD71026C` (`uID`),
  ADD KEY `IDX_E11C7408ED024EFD` (`nID`);

--
-- Indexes for table `NotificationPermissionSubscriptionList`
--
ALTER TABLE `NotificationPermissionSubscriptionList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `NotificationPermissionSubscriptionListCustom`
--
ALTER TABLE `NotificationPermissionSubscriptionListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`nSubscriptionIdentifier`),
  ADD KEY `peID` (`peID`),
  ADD KEY `nSubscriptionIdentifier` (`nSubscriptionIdentifier`);

--
-- Indexes for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `OAuth2AccessToken`
--
ALTER TABLE `OAuth2AccessToken`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_60D69F3FC7440455` (`client`);

--
-- Indexes for table `OAuth2AuthCode`
--
ALTER TABLE `OAuth2AuthCode`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_29D07B5C7440455` (`client`);

--
-- Indexes for table `OAuth2Client`
--
ALTER TABLE `OAuth2Client`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `client_idx` (`clientKey`,`clientSecret`);

--
-- Indexes for table `OAuth2RefreshToken`
--
ALTER TABLE `OAuth2RefreshToken`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `UNIQ_A205CB8350A9822` (`accessToken`);

--
-- Indexes for table `OAuth2Scope`
--
ALTER TABLE `OAuth2Scope`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `OauthUserMap`
--
ALTER TABLE `OauthUserMap`
  ADD PRIMARY KEY (`user_id`,`namespace`),
  ADD UNIQUE KEY `oauth_binding` (`binding`,`namespace`);

--
-- Indexes for table `Packages`
--
ALTER TABLE `Packages`
  ADD PRIMARY KEY (`pkgID`),
  ADD UNIQUE KEY `UNIQ_62C3A2F1F2D49DB1` (`pkgHandle`);

--
-- Indexes for table `PageFeeds`
--
ALTER TABLE `PageFeeds`
  ADD PRIMARY KEY (`pfID`);

--
-- Indexes for table `PagePaths`
--
ALTER TABLE `PagePaths`
  ADD PRIMARY KEY (`ppID`),
  ADD KEY `ppIsCanonical` (`ppIsCanonical`),
  ADD KEY `cID` (`cID`),
  ADD KEY `cPath` (`cPath`(255));

--
-- Indexes for table `PagePermissionAssignments`
--
ALTER TABLE `PagePermissionAssignments`
  ADD PRIMARY KEY (`cID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `PagePermissionPageTypeAccessList`
--
ALTER TABLE `PagePermissionPageTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `PagePermissionPageTypeAccessListCustom`
--
ALTER TABLE `PagePermissionPageTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`ptID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PagePermissionPropertyAccessList`
--
ALTER TABLE `PagePermissionPropertyAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `PagePermissionPropertyAttributeAccessListCustom`
--
ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `PagePermissionThemeAccessList`
--
ALTER TABLE `PagePermissionThemeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `PagePermissionThemeAccessListCustom`
--
ALTER TABLE `PagePermissionThemeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `pThemeID` (`pThemeID`);

--
-- Indexes for table `Pages`
--
ALTER TABLE `Pages`
  ADD PRIMARY KEY (`cID`,`ptID`),
  ADD KEY `cParentID` (`cParentID`),
  ADD KEY `siteTreeID` (`siteTreeID`),
  ADD KEY `cIsActive` (`cID`,`cIsActive`),
  ADD KEY `cCheckedOutUID` (`cCheckedOutUID`),
  ADD KEY `uID` (`uID`,`cPointerID`),
  ADD KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  ADD KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  ADD KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`);

--
-- Indexes for table `PageSearchIndex`
--
ALTER TABLE `PageSearchIndex`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cDateLastIndexed` (`cDateLastIndexed`),
  ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  ADD KEY `cRequiresReindex` (`cRequiresReindex`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `cName` (`cName`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `cDescription` (`cDescription`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `content` (`content`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Indexes for table `PageTemplates`
--
ALTER TABLE `PageTemplates`
  ADD PRIMARY KEY (`pTemplateID`);

--
-- Indexes for table `PageThemeCustomStyles`
--
ALTER TABLE `PageThemeCustomStyles`
  ADD PRIMARY KEY (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexes for table `PageThemes`
--
ALTER TABLE `PageThemes`
  ADD PRIMARY KEY (`pThemeID`),
  ADD UNIQUE KEY `ptHandle` (`pThemeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
  ADD PRIMARY KEY (`ptComposerControlTypeID`),
  ADD UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`);

--
-- Indexes for table `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
  ADD PRIMARY KEY (`ptComposerOutputBlockID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexes for table `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
  ADD PRIMARY KEY (`ptComposerOutputControlID`),
  ADD KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexes for table `PageTypePageTemplateDefaultPages`
--
ALTER TABLE `PageTypePageTemplateDefaultPages`
  ADD PRIMARY KEY (`pTemplateID`,`ptID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `PageTypePageTemplates`
--
ALTER TABLE `PageTypePageTemplates`
  ADD PRIMARY KEY (`ptID`,`pTemplateID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexes for table `PageTypePermissionAssignments`
--
ALTER TABLE `PageTypePermissionAssignments`
  ADD PRIMARY KEY (`ptID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
  ADD PRIMARY KEY (`ptPublishTargetTypeID`),
  ADD KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypes`
--
ALTER TABLE `PageTypes`
  ADD PRIMARY KEY (`ptID`),
  ADD UNIQUE KEY `ptHandle` (`ptHandle`),
  ADD KEY `siteTypeID` (`siteTypeID`),
  ADD KEY `pkgID` (`pkgID`,`ptID`);

--
-- Indexes for table `PageWorkflowProgress`
--
ALTER TABLE `PageWorkflowProgress`
  ADD PRIMARY KEY (`cID`,`wpID`),
  ADD KEY `wpID` (`wpID`);

--
-- Indexes for table `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
  ADD PRIMARY KEY (`paID`);

--
-- Indexes for table `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
  ADD PRIMARY KEY (`peID`),
  ADD KEY `petID` (`petID`);

--
-- Indexes for table `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
  ADD PRIMARY KEY (`pegID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `PermissionAccessEntityGroupSets`
--
ALTER TABLE `PermissionAccessEntityGroupSets`
  ADD PRIMARY KEY (`peID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `PermissionAccessEntityTypeCategories`
--
ALTER TABLE `PermissionAccessEntityTypeCategories`
  ADD PRIMARY KEY (`petID`,`pkCategoryID`),
  ADD KEY `pkCategoryID` (`pkCategoryID`);

--
-- Indexes for table `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
  ADD PRIMARY KEY (`petID`),
  ADD UNIQUE KEY `petHandle` (`petHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PermissionAccessEntityUsers`
--
ALTER TABLE `PermissionAccessEntityUsers`
  ADD PRIMARY KEY (`peID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `PermissionAccessList`
--
ALTER TABLE `PermissionAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `accessType` (`accessType`),
  ADD KEY `peID` (`peID`),
  ADD KEY `peID_accessType` (`peID`,`accessType`),
  ADD KEY `pdID` (`pdID`),
  ADD KEY `permissionAccessDuration` (`paID`,`pdID`);

--
-- Indexes for table `PermissionAccessWorkflows`
--
ALTER TABLE `PermissionAccessWorkflows`
  ADD PRIMARY KEY (`paID`,`wfID`),
  ADD KEY `wfID` (`wfID`);

--
-- Indexes for table `PermissionAssignments`
--
ALTER TABLE `PermissionAssignments`
  ADD PRIMARY KEY (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
  ADD PRIMARY KEY (`pdID`);

--
-- Indexes for table `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
  ADD PRIMARY KEY (`pkCategoryID`),
  ADD UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
  ADD PRIMARY KEY (`pkID`),
  ADD UNIQUE KEY `akHandle` (`pkHandle`),
  ADD KEY `pkCategoryID` (`pkCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PileContents`
--
ALTER TABLE `PileContents`
  ADD PRIMARY KEY (`pcID`),
  ADD KEY `pID` (`pID`,`displayOrder`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `itemType` (`itemType`,`itemID`,`pID`);

--
-- Indexes for table `Piles`
--
ALTER TABLE `Piles`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `uID` (`uID`,`name`);

--
-- Indexes for table `PrivateMessageNotifications`
--
ALTER TABLE `PrivateMessageNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
  ADD PRIMARY KEY (`message_id`),
  ADD UNIQUE KEY `message_handle` (`handle`),
  ADD KEY `message_queueid` (`queue_id`);

--
-- Indexes for table `QueuePageDuplicationRelations`
--
ALTER TABLE `QueuePageDuplicationRelations`
  ADD PRIMARY KEY (`cID`,`originalCID`),
  ADD KEY `originalCID` (`originalCID`,`queue_name`);

--
-- Indexes for table `Queues`
--
ALTER TABLE `Queues`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `queue_name` (`queue_name`);

--
-- Indexes for table `SavedExpressSearchQueries`
--
ALTER TABLE `SavedExpressSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SavedFileSearchQueries`
--
ALTER TABLE `SavedFileSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SavedPageSearchQueries`
--
ALTER TABLE `SavedPageSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SavedUserSearchQueries`
--
ALTER TABLE `SavedUserSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`sessionID`);

--
-- Indexes for table `SiblingPageRelations`
--
ALTER TABLE `SiblingPageRelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`);

--
-- Indexes for table `SiteAttributeKeys`
--
ALTER TABLE `SiteAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `SiteAttributeValues`
--
ALTER TABLE `SiteAttributeValues`
  ADD PRIMARY KEY (`siteID`,`akID`),
  ADD KEY `IDX_67658AF7521D8435` (`siteID`),
  ADD KEY `IDX_67658AF7B6561A7E` (`akID`),
  ADD KEY `IDX_67658AF7A2A82A5D` (`avID`);

--
-- Indexes for table `SiteLocales`
--
ALTER TABLE `SiteLocales`
  ADD PRIMARY KEY (`siteLocaleID`),
  ADD UNIQUE KEY `UNIQ_2527AB2CF9431B4B` (`siteTreeID`),
  ADD KEY `IDX_2527AB2C521D8435` (`siteID`);

--
-- Indexes for table `Sites`
--
ALTER TABLE `Sites`
  ADD PRIMARY KEY (`siteID`),
  ADD UNIQUE KEY `UNIQ_7DC18567D84E1976` (`siteHandle`),
  ADD KEY `IDX_7DC18567E9548DF7` (`siteTypeID`);

--
-- Indexes for table `SiteSearchIndexAttributes`
--
ALTER TABLE `SiteSearchIndexAttributes`
  ADD PRIMARY KEY (`siteID`);

--
-- Indexes for table `SiteTrees`
--
ALTER TABLE `SiteTrees`
  ADD PRIMARY KEY (`siteTreeID`);

--
-- Indexes for table `SiteTreeTrees`
--
ALTER TABLE `SiteTreeTrees`
  ADD PRIMARY KEY (`siteTreeID`),
  ADD UNIQUE KEY `UNIQ_A4B9696EACD624CD` (`siteLocaleID`);

--
-- Indexes for table `SiteTypes`
--
ALTER TABLE `SiteTypes`
  ADD PRIMARY KEY (`siteTypeID`),
  ADD UNIQUE KEY `UNIQ_7CBFE97576D39A3C` (`siteTypeHandle`),
  ADD UNIQUE KEY `UNIQ_7CBFE975C7F74FC3` (`siteTypeName`),
  ADD KEY `IDX_7CBFE975CE45CBB0` (`pkgID`);

--
-- Indexes for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
  ADD PRIMARY KEY (`slID`),
  ADD KEY `IDX_84EBA2B4521D8435` (`siteID`);

--
-- Indexes for table `Stacks`
--
ALTER TABLE `Stacks`
  ADD PRIMARY KEY (`stID`),
  ADD KEY `stType` (`stType`),
  ADD KEY `stName` (`stName`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `StackUsageRecord`
--
ALTER TABLE `StackUsageRecord`
  ADD PRIMARY KEY (`stack_id`,`block_id`,`collection_id`,`collection_version_id`),
  ADD KEY `block` (`block_id`),
  ADD KEY `collection_version` (`collection_id`,`collection_version_id`);

--
-- Indexes for table `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
  ADD PRIMARY KEY (`sccRecordID`);

--
-- Indexes for table `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
  ADD PRIMARY KEY (`pssPresetID`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
  ADD PRIMARY KEY (`issID`);

--
-- Indexes for table `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
  ADD PRIMARY KEY (`scvlID`);

--
-- Indexes for table `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
  ADD PRIMARY KEY (`scvID`),
  ADD KEY `scvlID` (`scvlID`);

--
-- Indexes for table `SystemAntispamLibraries`
--
ALTER TABLE `SystemAntispamLibraries`
  ADD PRIMARY KEY (`saslHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemCaptchaLibraries`
--
ALTER TABLE `SystemCaptchaLibraries`
  ADD PRIMARY KEY (`sclHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemContentEditorSnippets`
--
ALTER TABLE `SystemContentEditorSnippets`
  ADD PRIMARY KEY (`scsHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemDatabaseMigrations`
--
ALTER TABLE `SystemDatabaseMigrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `SystemDatabaseQueryLog`
--
ALTER TABLE `SystemDatabaseQueryLog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TopicTrees`
--
ALTER TABLE `TopicTrees`
  ADD PRIMARY KEY (`treeID`);

--
-- Indexes for table `TreeFileNodes`
--
ALTER TABLE `TreeFileNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `TreeNodePermissionAssignments`
--
ALTER TABLE `TreeNodePermissionAssignments`
  ADD PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `TreeNodes`
--
ALTER TABLE `TreeNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `treeNodeParentID` (`treeNodeParentID`),
  ADD KEY `treeNodeTypeID` (`treeNodeTypeID`),
  ADD KEY `treeID` (`treeID`),
  ADD KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`);

--
-- Indexes for table `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
  ADD PRIMARY KEY (`treeNodeTypeID`),
  ADD UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `Trees`
--
ALTER TABLE `Trees`
  ADD PRIMARY KEY (`treeID`),
  ADD KEY `treeTypeID` (`treeTypeID`);

--
-- Indexes for table `TreeSearchQueryNodes`
--
ALTER TABLE `TreeSearchQueryNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `savedSearchID` (`savedSearchID`);

--
-- Indexes for table `TreeTypes`
--
ALTER TABLE `TreeTypes`
  ADD PRIMARY KEY (`treeTypeID`),
  ADD UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `UsedStringLog`
--
ALTER TABLE `UsedStringLog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4E83837CF5E609AF` (`usedString`);

--
-- Indexes for table `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
  ADD PRIMARY KEY (`uID`,`akID`),
  ADD KEY `IDX_4DB68CA6FD71026C` (`uID`),
  ADD KEY `IDX_4DB68CA6B6561A7E` (`akID`),
  ADD KEY `IDX_4DB68CA6A2A82A5D` (`avID`);

--
-- Indexes for table `UserDeactivatedNotifications`
--
ALTER TABLE `UserDeactivatedNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `UserGroups`
--
ALTER TABLE `UserGroups`
  ADD PRIMARY KEY (`uID`,`gID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `UserLoginAttempts`
--
ALTER TABLE `UserLoginAttempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UserPermissionEditPropertyAccessList`
--
ALTER TABLE `UserPermissionEditPropertyAccessList`
  ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `UserPermissionEditPropertyAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `UserPermissionViewAttributeAccessList`
--
ALTER TABLE `UserPermissionViewAttributeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `UserPermissionViewAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionViewAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `UserPointActions`
--
ALTER TABLE `UserPointActions`
  ADD PRIMARY KEY (`upaID`),
  ADD UNIQUE KEY `upaHandle` (`upaHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gBBadgeID` (`gBadgeID`);

--
-- Indexes for table `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
  ADD PRIMARY KEY (`upID`),
  ADD KEY `upuID` (`upuID`),
  ADD KEY `upaID` (`upaID`);

--
-- Indexes for table `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
  ADD PRIMARY KEY (`msgID`),
  ADD KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`);

--
-- Indexes for table `UserPrivateMessagesTo`
--
ALTER TABLE `UserPrivateMessagesTo`
  ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `uAuthorID` (`uAuthorID`),
  ADD KEY `msgFolderID` (`msgMailboxID`),
  ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`uID`),
  ADD UNIQUE KEY `UNIQ_D5428AED28459686` (`uName`),
  ADD KEY `uEmail` (`uEmail`);

--
-- Indexes for table `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
  ADD PRIMARY KEY (`uID`);

--
-- Indexes for table `UserSignupNotifications`
--
ALTER TABLE `UserSignupNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_7FB1DF5B7B18287E` (`usID`);

--
-- Indexes for table `UserSignups`
--
ALTER TABLE `UserSignups`
  ADD PRIMARY KEY (`usID`),
  ADD UNIQUE KEY `UNIQ_FEB5D909FD71026C` (`uID`),
  ADD KEY `IDX_FEB5D909D3564642` (`createdBy`);

--
-- Indexes for table `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
  ADD PRIMARY KEY (`uvhID`),
  ADD KEY `uID` (`uID`,`type`),
  ADD KEY `uHash` (`uHash`,`type`),
  ADD KEY `uDateGenerated` (`uDateGenerated`,`type`);

--
-- Indexes for table `UserWorkflowProgress`
--
ALTER TABLE `UserWorkflowProgress`
  ADD PRIMARY KEY (`uID`,`wpID`);

--
-- Indexes for table `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `wpCategoryID` (`wpCategoryID`),
  ADD KEY `wfID` (`wfID`),
  ADD KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`);

--
-- Indexes for table `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
  ADD PRIMARY KEY (`wpCategoryID`),
  ADD UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
  ADD PRIMARY KEY (`wphID`),
  ADD KEY `wpID` (`wpID`,`timestamp`);

--
-- Indexes for table `WorkflowProgressNotifications`
--
ALTER TABLE `WorkflowProgressNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
  ADD PRIMARY KEY (`wrID`);

--
-- Indexes for table `Workflows`
--
ALTER TABLE `Workflows`
  ADD PRIMARY KEY (`wfID`),
  ADD UNIQUE KEY `wfName` (`wfName`),
  ADD KEY `wftID` (`wftID`,`wfID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
  ADD PRIMARY KEY (`wftID`),
  ADD UNIQUE KEY `wftHandle` (`wftHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
  MODIFY `arLayoutPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
  MODIFY `arLayoutID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Areas`
--
ALTER TABLE `Areas`
  MODIFY `arID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atSelectedSocialLinks`
--
ALTER TABLE `atSelectedSocialLinks`
  MODIFY `avsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  MODIFY `avTreeTopicNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atSelectOptionLists`
--
ALTER TABLE `atSelectOptionLists`
  MODIFY `avSelectOptionListID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  MODIFY `avSelectOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  MODIFY `akCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  MODIFY `akID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  MODIFY `atID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
  MODIFY `avID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
  MODIFY `authTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BannedWords`
--
ALTER TABLE `BannedWords`
  MODIFY `bwID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Blocks`
--
ALTER TABLE `Blocks`
  MODIFY `bID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlockTypes`
--
ALTER TABLE `BlockTypes`
  MODIFY `btID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
  MODIFY `btsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
  MODIFY `aID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
  MODIFY `qID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
  MODIFY `btShareThisPageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
  MODIFY `btSocialLinkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
  MODIFY `optionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
  MODIFY `resultID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventOccurrences`
--
ALTER TABLE `CalendarEventOccurrences`
  MODIFY `occurrenceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventRepetitions`
--
ALTER TABLE `CalendarEventRepetitions`
  MODIFY `repetitionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEvents`
--
ALTER TABLE `CalendarEvents`
  MODIFY `eventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventVersionOccurrences`
--
ALTER TABLE `CalendarEventVersionOccurrences`
  MODIFY `versionOccurrenceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventVersionRepetitions`
--
ALTER TABLE `CalendarEventVersionRepetitions`
  MODIFY `versionRepetitionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarEventVersions`
--
ALTER TABLE `CalendarEventVersions`
  MODIFY `eventVersionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CalendarRelatedEvents`
--
ALTER TABLE `CalendarRelatedEvents`
  MODIFY `relatedEventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Calendars`
--
ALTER TABLE `Calendars`
  MODIFY `caID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Collections`
--
ALTER TABLE `Collections`
  MODIFY `cID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
  MODIFY `cnvDiscussionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
  MODIFY `cnvEditorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
  MODIFY `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
  MODIFY `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
  MODIFY `cnvMessageRatingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
  MODIFY `cnvMessageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
  MODIFY `cnvRatingTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Conversations`
--
ALTER TABLE `Conversations`
  MODIFY `cnvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
  MODIFY `dsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ExpressEntityAssociationEntries`
--
ALTER TABLE `ExpressEntityAssociationEntries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ExpressEntityEntries`
--
ALTER TABLE `ExpressEntityEntries`
  MODIFY `exEntryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ExpressEntityEntryAssociations`
--
ALTER TABLE `ExpressEntityEntryAssociations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ExpressFormFieldSets`
--
ALTER TABLE `ExpressFormFieldSets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FailedLoginAttempts`
--
ALTER TABLE `FailedLoginAttempts`
  MODIFY `lcirID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Record identifier';

--
-- AUTO_INCREMENT for table `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
  MODIFY `faID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
  MODIFY `fcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Features`
--
ALTER TABLE `Features`
  MODIFY `feID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
  MODIFY `ftTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Files`
--
ALTER TABLE `Files`
  MODIFY `fID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
  MODIFY `fsfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileSets`
--
ALTER TABLE `FileSets`
  MODIFY `fsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
  MODIFY `fslID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
  MODIFY `fslTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
  MODIFY `fvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
  MODIFY `gcsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
  MODIFY `gasID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
  MODIFY `gafaID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GatheringItems`
--
ALTER TABLE `GatheringItems`
  MODIFY `gaiID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
  MODIFY `gfeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
  MODIFY `gatID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
  MODIFY `gatTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Gatherings`
--
ALTER TABLE `Gatherings`
  MODIFY `gaID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Geolocators`
--
ALTER TABLE `Geolocators`
  MODIFY `glID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Geolocator ID';

--
-- AUTO_INCREMENT for table `Groups`
--
ALTER TABLE `Groups`
  MODIFY `gID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GroupSets`
--
ALTER TABLE `GroupSets`
  MODIFY `gsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Jobs`
--
ALTER TABLE `Jobs`
  MODIFY `jID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `JobSets`
--
ALTER TABLE `JobSets`
  MODIFY `jsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `JobsLog`
--
ALTER TABLE `JobsLog`
  MODIFY `jlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LoginControlIpRanges`
--
ALTER TABLE `LoginControlIpRanges`
  MODIFY `lcirID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Record identifier';

--
-- AUTO_INCREMENT for table `Logs`
--
ALTER TABLE `Logs`
  MODIFY `logID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MailImporters`
--
ALTER TABLE `MailImporters`
  MODIFY `miID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
  MODIFY `mvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
  MODIFY `mtID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `NotificationAlerts`
--
ALTER TABLE `NotificationAlerts`
  MODIFY `naID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Notifications`
--
ALTER TABLE `Notifications`
  MODIFY `nID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Packages`
--
ALTER TABLE `Packages`
  MODIFY `pkgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageFeeds`
--
ALTER TABLE `PageFeeds`
  MODIFY `pfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PagePaths`
--
ALTER TABLE `PagePaths`
  MODIFY `ppID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageTemplates`
--
ALTER TABLE `PageTemplates`
  MODIFY `pTemplateID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageThemes`
--
ALTER TABLE `PageThemes`
  MODIFY `pThemeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
  MODIFY `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
  MODIFY `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
  MODIFY `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
  MODIFY `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
  MODIFY `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
  MODIFY `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PageTypes`
--
ALTER TABLE `PageTypes`
  MODIFY `ptID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
  MODIFY `paID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
  MODIFY `peID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
  MODIFY `pegID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
  MODIFY `petID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
  MODIFY `pdID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
  MODIFY `pkCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
  MODIFY `pkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PileContents`
--
ALTER TABLE `PileContents`
  MODIFY `pcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Piles`
--
ALTER TABLE `Piles`
  MODIFY `pID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Queues`
--
ALTER TABLE `Queues`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SavedExpressSearchQueries`
--
ALTER TABLE `SavedExpressSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SavedFileSearchQueries`
--
ALTER TABLE `SavedFileSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SavedPageSearchQueries`
--
ALTER TABLE `SavedPageSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SavedUserSearchQueries`
--
ALTER TABLE `SavedUserSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteLocales`
--
ALTER TABLE `SiteLocales`
  MODIFY `siteLocaleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Sites`
--
ALTER TABLE `Sites`
  MODIFY `siteID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteTrees`
--
ALTER TABLE `SiteTrees`
  MODIFY `siteTreeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteTypes`
--
ALTER TABLE `SiteTypes`
  MODIFY `siteTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
  MODIFY `slID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Stacks`
--
ALTER TABLE `Stacks`
  MODIFY `stID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
  MODIFY `sccRecordID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
  MODIFY `pssPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
  MODIFY `issID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
  MODIFY `scvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
  MODIFY `scvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SystemDatabaseQueryLog`
--
ALTER TABLE `SystemDatabaseQueryLog`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TreeFileNodes`
--
ALTER TABLE `TreeFileNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TreeNodes`
--
ALTER TABLE `TreeNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
  MODIFY `treeNodeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Trees`
--
ALTER TABLE `Trees`
  MODIFY `treeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TreeSearchQueryNodes`
--
ALTER TABLE `TreeSearchQueryNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TreeTypes`
--
ALTER TABLE `TreeTypes`
  MODIFY `treeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UsedStringLog`
--
ALTER TABLE `UsedStringLog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserPointActions`
--
ALTER TABLE `UserPointActions`
  MODIFY `upaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
  MODIFY `upID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
  MODIFY `msgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `uID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserSignups`
--
ALTER TABLE `UserSignups`
  MODIFY `usID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
  MODIFY `uvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
  MODIFY `wpID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
  MODIFY `wpCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
  MODIFY `wphID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
  MODIFY `wrID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Workflows`
--
ALTER TABLE `Workflows`
  MODIFY `wfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
  MODIFY `wftID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AreaLayoutsUsingPresets`
--
ALTER TABLE `AreaLayoutsUsingPresets`
  ADD CONSTRAINT `FK_7A9049A1385521EA` FOREIGN KEY (`arLayoutID`) REFERENCES `AreaLayouts` (`arLayoutID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `atAddress`
--
ALTER TABLE `atAddress`
  ADD CONSTRAINT `FK_DA949740A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
  ADD CONSTRAINT `FK_5A737B61B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atBoolean`
--
ALTER TABLE `atBoolean`
  ADD CONSTRAINT `FK_5D5F70A9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
  ADD CONSTRAINT `FK_78025F47B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atDateTime`
--
ALTER TABLE `atDateTime`
  ADD CONSTRAINT `FK_DF75412AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
  ADD CONSTRAINT `FK_C6B3B63AB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atDefault`
--
ALTER TABLE `atDefault`
  ADD CONSTRAINT `FK_3484F81EA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atEmptySettings`
--
ALTER TABLE `atEmptySettings`
  ADD CONSTRAINT `FK_ED1BF189B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atExpress`
--
ALTER TABLE `atExpress`
  ADD CONSTRAINT `FK_CFAF40F1A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atExpressSelectedEntries`
--
ALTER TABLE `atExpressSelectedEntries`
  ADD CONSTRAINT `FK_C9D404BB6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_C9D404BBA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atExpress` (`avID`);

--
-- Constraints for table `atExpressSettings`
--
ALTER TABLE `atExpressSettings`
  ADD CONSTRAINT `FK_E8F67F0FB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_E8F67F0FCE2D7284` FOREIGN KEY (`exEntityID`) REFERENCES `ExpressEntities` (`id`);

--
-- Constraints for table `atFile`
--
ALTER TABLE `atFile`
  ADD CONSTRAINT `FK_73D17D61A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_73D17D61E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`) ON DELETE CASCADE;

--
-- Constraints for table `atFileSettings`
--
ALTER TABLE `atFileSettings`
  ADD CONSTRAINT `FK_EADD86C8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atNumber`
--
ALTER TABLE `atNumber`
  ADD CONSTRAINT `FK_41BA30B5A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atSelect`
--
ALTER TABLE `atSelect`
  ADD CONSTRAINT `FK_9CD8C521A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atSelectedSocialLinks`
--
ALTER TABLE `atSelectedSocialLinks`
  ADD CONSTRAINT `FK_10743709A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSocialLinks` (`avID`);

--
-- Constraints for table `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  ADD CONSTRAINT `FK_E42A7D5BA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atTopic` (`avID`);

--
-- Constraints for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  ADD CONSTRAINT `FK_797414B0CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`);

--
-- Constraints for table `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
  ADD CONSTRAINT `FK_40C97EC3A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSelect` (`avID`),
  ADD CONSTRAINT `FK_40C97EC3E584C274` FOREIGN KEY (`avSelectOptionID`) REFERENCES `atSelectOptions` (`avSelectOptionID`);

--
-- Constraints for table `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
  ADD CONSTRAINT `FK_5D514424B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_5D514424CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`);

--
-- Constraints for table `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
  ADD CONSTRAINT `FK_1431EC8AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
  ADD CONSTRAINT `FK_A6EA10D6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atTextSettings`
--
ALTER TABLE `atTextSettings`
  ADD CONSTRAINT `FK_951A10CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atTopic`
--
ALTER TABLE `atTopic`
  ADD CONSTRAINT `FK_BABDD1FAA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atTopicSettings`
--
ALTER TABLE `atTopicSettings`
  ADD CONSTRAINT `FK_830FD2FEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  ADD CONSTRAINT `FK_A2A0CC67CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  ADD CONSTRAINT `FK_DCA32C62A12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  ADD CONSTRAINT `FK_DCA32C62B059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  ADD CONSTRAINT `FK_DCA32C62CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
  ADD CONSTRAINT `FK_222F72D8A463E8B6` FOREIGN KEY (`asID`) REFERENCES `AttributeSets` (`asID`),
  ADD CONSTRAINT `FK_222F72D8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
  ADD CONSTRAINT `FK_FCA02D5FB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  ADD CONSTRAINT `FK_FCA02D5FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
  ADD CONSTRAINT `FK_49A9CABEA12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  ADD CONSTRAINT `FK_49A9CABEB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`);

--
-- Constraints for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  ADD CONSTRAINT `FK_53580A7FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
  ADD CONSTRAINT `FK_DCCE7864B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `CalendarEventAttributeKeys`
--
ALTER TABLE `CalendarEventAttributeKeys`
  ADD CONSTRAINT `FK_27F477CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `CalendarEventOccurrences`
--
ALTER TABLE `CalendarEventOccurrences`
  ADD CONSTRAINT `FK_7DD686EC31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `CalendarEventRepetitions` (`repetitionID`);

--
-- Constraints for table `CalendarEvents`
--
ALTER TABLE `CalendarEvents`
  ADD CONSTRAINT `FK_7F23C55611C85723` FOREIGN KEY (`caID`) REFERENCES `Calendars` (`caID`);

--
-- Constraints for table `CalendarEventVersionAttributeValues`
--
ALTER TABLE `CalendarEventVersionAttributeValues`
  ADD CONSTRAINT `FK_8C835B05403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`),
  ADD CONSTRAINT `FK_8C835B05A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_8C835B05B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `CalendarEventVersionOccurrences`
--
ALTER TABLE `CalendarEventVersionOccurrences`
  ADD CONSTRAINT `FK_60310489403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`),
  ADD CONSTRAINT `FK_60310489B4FDDC0F` FOREIGN KEY (`occurrenceID`) REFERENCES `CalendarEventOccurrences` (`occurrenceID`);

--
-- Constraints for table `CalendarEventVersionRepetitions`
--
ALTER TABLE `CalendarEventVersionRepetitions`
  ADD CONSTRAINT `FK_C1C3D3DB31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `CalendarEventRepetitions` (`repetitionID`),
  ADD CONSTRAINT `FK_C1C3D3DB403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`);

--
-- Constraints for table `CalendarEventVersions`
--
ALTER TABLE `CalendarEventVersions`
  ADD CONSTRAINT `FK_8E26027410409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`),
  ADD CONSTRAINT `FK_8E260274FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `CalendarEventWorkflowProgress`
--
ALTER TABLE `CalendarEventWorkflowProgress`
  ADD CONSTRAINT `FK_C5EAACF910409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`);

--
-- Constraints for table `CalendarPermissionAssignments`
--
ALTER TABLE `CalendarPermissionAssignments`
  ADD CONSTRAINT `FK_5AD546AA11C85723` FOREIGN KEY (`caID`) REFERENCES `Calendars` (`caID`);

--
-- Constraints for table `CalendarRelatedEvents`
--
ALTER TABLE `CalendarRelatedEvents`
  ADD CONSTRAINT `FK_310130E910409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`);

--
-- Constraints for table `Calendars`
--
ALTER TABLE `Calendars`
  ADD CONSTRAINT `FK_62E00AC521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `CollectionAttributeKeys`
--
ALTER TABLE `CollectionAttributeKeys`
  ADD CONSTRAINT `FK_1E3E5B79B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
  ADD CONSTRAINT `FK_BB9995FCA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_BB9995FCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
  ADD CONSTRAINT `FK_FD84E56FE5DADDAE` FOREIGN KEY (`cID`) REFERENCES `Collections` (`cID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ConversationMessageNotifications`
--
ALTER TABLE `ConversationMessageNotifications`
  ADD CONSTRAINT `FK_559DE1CBED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressAttributeKeys`
--
ALTER TABLE `ExpressAttributeKeys`
  ADD CONSTRAINT `FK_8C881F181257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`),
  ADD CONSTRAINT `FK_8C881F1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressEntities`
--
ALTER TABLE `ExpressEntities`
  ADD CONSTRAINT `FK_BC772AA6547D6B2D` FOREIGN KEY (`default_view_form_id`) REFERENCES `ExpressForms` (`id`),
  ADD CONSTRAINT `FK_BC772AA6C7DEC56D` FOREIGN KEY (`default_edit_form_id`) REFERENCES `ExpressForms` (`id`),
  ADD CONSTRAINT `FK_BC772AA6CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `ExpressEntityAssociationEntries`
--
ALTER TABLE `ExpressEntityAssociationEntries`
  ADD CONSTRAINT `FK_9C2BB76C6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_9C2BB76CEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityEntryAssociations` (`id`);

--
-- Constraints for table `ExpressEntityAssociations`
--
ALTER TABLE `ExpressEntityAssociations`
  ADD CONSTRAINT `FK_98A0F796B5910F71` FOREIGN KEY (`target_entity_id`) REFERENCES `ExpressEntities` (`id`),
  ADD CONSTRAINT `FK_98A0F796E9BBEE93` FOREIGN KEY (`source_entity_id`) REFERENCES `ExpressEntities` (`id`);

--
-- Constraints for table `ExpressEntityEntries`
--
ALTER TABLE `ExpressEntityEntries`
  ADD CONSTRAINT `FK_B8AE3531AFC87D03` FOREIGN KEY (`exEntryEntityID`) REFERENCES `ExpressEntities` (`id`),
  ADD CONSTRAINT `FK_B8AE3531FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `ExpressEntityEntryAssociations`
--
ALTER TABLE `ExpressEntityEntryAssociations`
  ADD CONSTRAINT `FK_25B3A0826DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_25B3A082EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`);

--
-- Constraints for table `ExpressEntityEntryAttributeValues`
--
ALTER TABLE `ExpressEntityEntryAttributeValues`
  ADD CONSTRAINT `FK_6DB641546DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_6DB64154A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_6DB64154B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `ExpressForm170ExpressSearchIndexAttributes`
--
ALTER TABLE `ExpressForm170ExpressSearchIndexAttributes`
  ADD CONSTRAINT `FK_722F0F0E6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ExpressFormFieldSetAssociationControls`
--
ALTER TABLE `ExpressFormFieldSetAssociationControls`
  ADD CONSTRAINT `FK_E6DF21BBBF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E6DF21BBEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`);

--
-- Constraints for table `ExpressFormFieldSetAttributeKeyControls`
--
ALTER TABLE `ExpressFormFieldSetAttributeKeyControls`
  ADD CONSTRAINT `FK_8481F9D1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_8481F9D1BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressFormFieldSetAuthorControls`
--
ALTER TABLE `ExpressFormFieldSetAuthorControls`
  ADD CONSTRAINT `FK_CF378786BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressFormFieldSetControls`
--
ALTER TABLE `ExpressFormFieldSetControls`
  ADD CONSTRAINT `FK_E42868A43ABF811A` FOREIGN KEY (`field_set_id`) REFERENCES `ExpressFormFieldSets` (`id`);

--
-- Constraints for table `ExpressFormFieldSets`
--
ALTER TABLE `ExpressFormFieldSets`
  ADD CONSTRAINT `FK_A33BBBEC5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `ExpressForms` (`id`);

--
-- Constraints for table `ExpressFormFieldSetTextControls`
--
ALTER TABLE `ExpressFormFieldSetTextControls`
  ADD CONSTRAINT `FK_DB5A209ABF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressForms`
--
ALTER TABLE `ExpressForms`
  ADD CONSTRAINT `FK_8D09031A81257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`);

--
-- Constraints for table `FileAttributeKeys`
--
ALTER TABLE `FileAttributeKeys`
  ADD CONSTRAINT `FK_BC5C7BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
  ADD CONSTRAINT `FK_BBECEAA4A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_BBECEAA4B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `FileImageThumbnailTypeFileSets`
--
ALTER TABLE `FileImageThumbnailTypeFileSets`
  ADD CONSTRAINT `FK_BD75F88D480660E5` FOREIGN KEY (`ftfsThumbnailType`) REFERENCES `FileImageThumbnailTypes` (`ftTypeID`) ON DELETE CASCADE;

--
-- Constraints for table `Files`
--
ALTER TABLE `Files`
  ADD CONSTRAINT `FK_C7F46F5DB81D3903` FOREIGN KEY (`fslID`) REFERENCES `FileStorageLocations` (`fslID`),
  ADD CONSTRAINT `FK_C7F46F5DFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
  ADD CONSTRAINT `FK_3A3A4845E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `FileVersions`
--
ALTER TABLE `FileVersions`
  ADD CONSTRAINT `FK_D7B5A13AE3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`);

--
-- Constraints for table `FormSubmissionNotifications`
--
ALTER TABLE `FormSubmissionNotifications`
  ADD CONSTRAINT `FK_E7B6BE406DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E7B6BE40ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `Geolocators`
--
ALTER TABLE `Geolocators`
  ADD CONSTRAINT `FK_83BB1614D5F6CC40` FOREIGN KEY (`glPackage`) REFERENCES `Packages` (`pkgID`) ON DELETE CASCADE;

--
-- Constraints for table `LegacyAttributeKeys`
--
ALTER TABLE `LegacyAttributeKeys`
  ADD CONSTRAINT `FK_740BA2BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `NotificationAlerts`
--
ALTER TABLE `NotificationAlerts`
  ADD CONSTRAINT `FK_E11C7408ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`),
  ADD CONSTRAINT `FK_E11C7408FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `OAuth2AccessToken`
--
ALTER TABLE `OAuth2AccessToken`
  ADD CONSTRAINT `FK_60D69F3FC7440455` FOREIGN KEY (`client`) REFERENCES `OAuth2Client` (`identifier`);

--
-- Constraints for table `OAuth2AuthCode`
--
ALTER TABLE `OAuth2AuthCode`
  ADD CONSTRAINT `FK_29D07B5C7440455` FOREIGN KEY (`client`) REFERENCES `OAuth2Client` (`identifier`);

--
-- Constraints for table `OAuth2RefreshToken`
--
ALTER TABLE `OAuth2RefreshToken`
  ADD CONSTRAINT `FK_A205CB8350A9822` FOREIGN KEY (`accessToken`) REFERENCES `OAuth2AccessToken` (`identifier`);

--
-- Constraints for table `PrivateMessageNotifications`
--
ALTER TABLE `PrivateMessageNotifications`
  ADD CONSTRAINT `FK_1AB97592ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
  ADD CONSTRAINT `FK_7C04D76477B5BAE` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SiteAttributeKeys`
--
ALTER TABLE `SiteAttributeKeys`
  ADD CONSTRAINT `FK_63D1E182B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `SiteAttributeValues`
--
ALTER TABLE `SiteAttributeValues`
  ADD CONSTRAINT `FK_67658AF7521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  ADD CONSTRAINT `FK_67658AF7A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_67658AF7B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `SiteLocales`
--
ALTER TABLE `SiteLocales`
  ADD CONSTRAINT `FK_2527AB2C521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  ADD CONSTRAINT `FK_2527AB2CF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTreeTrees` (`siteTreeID`);

--
-- Constraints for table `Sites`
--
ALTER TABLE `Sites`
  ADD CONSTRAINT `FK_7DC18567E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`);

--
-- Constraints for table `SiteSearchIndexAttributes`
--
ALTER TABLE `SiteSearchIndexAttributes`
  ADD CONSTRAINT `FK_3DD070B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SiteTreeTrees`
--
ALTER TABLE `SiteTreeTrees`
  ADD CONSTRAINT `FK_A4B9696EACD624CD` FOREIGN KEY (`siteLocaleID`) REFERENCES `SiteLocales` (`siteLocaleID`),
  ADD CONSTRAINT `FK_A4B9696EF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTrees` (`siteTreeID`) ON DELETE CASCADE;

--
-- Constraints for table `SiteTypes`
--
ALTER TABLE `SiteTypes`
  ADD CONSTRAINT `FK_7CBFE975CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
  ADD CONSTRAINT `FK_84EBA2B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
  ADD CONSTRAINT `FK_28970033B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
  ADD CONSTRAINT `FK_4DB68CA6A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_4DB68CA6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_4DB68CA6FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `UserDeactivatedNotifications`
--
ALTER TABLE `UserDeactivatedNotifications`
  ADD CONSTRAINT `FK_ED5A1F9FED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
  ADD CONSTRAINT `FK_74798B07FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UserSignupNotifications`
--
ALTER TABLE `UserSignupNotifications`
  ADD CONSTRAINT `FK_7FB1DF5B7B18287E` FOREIGN KEY (`usID`) REFERENCES `UserSignups` (`usID`),
  ADD CONSTRAINT `FK_7FB1DF5BED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `UserSignups`
--
ALTER TABLE `UserSignups`
  ADD CONSTRAINT `FK_FEB5D909D3564642` FOREIGN KEY (`createdBy`) REFERENCES `Users` (`uID`),
  ADD CONSTRAINT `FK_FEB5D909FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `WorkflowProgressNotifications`
--
ALTER TABLE `WorkflowProgressNotifications`
  ADD CONSTRAINT `FK_EC39CA81ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
