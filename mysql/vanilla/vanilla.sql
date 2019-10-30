SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `GDN_AccessToken` (
  `AccessTokenID` int(11) NOT NULL,
  `Token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL,
  `Type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Scope` text COLLATE utf8mb4_unicode_ci,
  `DateInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `InsertUserID` int(11) DEFAULT NULL,
  `InsertIPAddress` varbinary(16) NOT NULL,
  `DateExpires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Attributes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Activity` (
  `ActivityID` int(11) NOT NULL,
  `ActivityTypeID` int(11) NOT NULL,
  `NotifyUserID` int(11) NOT NULL DEFAULT '0',
  `ActivityUserID` int(11) DEFAULT NULL,
  `RegardingUserID` int(11) DEFAULT NULL,
  `Photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HeadlineFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Story` text COLLATE utf8mb4_unicode_ci,
  `Format` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecordType` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `Notified` tinyint(4) NOT NULL DEFAULT '0',
  `Emailed` tinyint(4) NOT NULL DEFAULT '0',
  `Data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_ActivityComment` (
  `ActivityCommentID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_ActivityType` (
  `ActivityTypeID` int(11) NOT NULL,
  `Name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AllowComments` tinyint(4) NOT NULL DEFAULT '0',
  `ShowIcon` tinyint(4) NOT NULL DEFAULT '0',
  `ProfileHeadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FullHeadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RouteCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notify` tinyint(4) NOT NULL DEFAULT '0',
  `Public` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_AnalyticsLocal` (
  `TimeSlot` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Views` int(11) DEFAULT NULL,
  `EmbedViews` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Attachment` (
  `AttachmentID` int(11) NOT NULL,
  `Type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ForeignID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ForeignUserID` int(11) NOT NULL,
  `Source` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SourceID` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SourceURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci,
  `DateInserted` datetime NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `InsertIPAddress` varbinary(16) NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Ban` (
  `BanID` int(11) NOT NULL,
  `BanType` enum('IPAddress','Name','Email') COLLATE utf8mb4_unicode_ci NOT NULL,
  `BanValue` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CountUsers` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `CountBlockedRegistrations` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Category` (
  `CategoryID` int(11) NOT NULL,
  `ParentCategoryID` int(11) DEFAULT NULL,
  `TreeLeft` int(11) DEFAULT NULL,
  `TreeRight` int(11) DEFAULT NULL,
  `Depth` int(11) NOT NULL DEFAULT '0',
  `CountCategories` int(11) NOT NULL DEFAULT '0',
  `CountDiscussions` int(11) NOT NULL DEFAULT '0',
  `CountAllDiscussions` int(11) NOT NULL DEFAULT '0',
  `CountComments` int(11) NOT NULL DEFAULT '0',
  `CountAllComments` int(11) NOT NULL DEFAULT '0',
  `LastCategoryID` int(11) NOT NULL DEFAULT '0',
  `DateMarkedRead` datetime DEFAULT NULL,
  `AllowDiscussions` tinyint(4) NOT NULL DEFAULT '1',
  `Archived` tinyint(4) NOT NULL DEFAULT '0',
  `CanDelete` tinyint(4) NOT NULL DEFAULT '1',
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UrlCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL,
  `CssClass` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PermissionCategoryID` int(11) NOT NULL DEFAULT '-1',
  `PointsCategoryID` int(11) NOT NULL DEFAULT '0',
  `HideAllDiscussions` tinyint(4) NOT NULL DEFAULT '0',
  `DisplayAs` enum('Categories','Discussions','Flat','Heading','Default') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Discussions',
  `InsertUserID` int(11) NOT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime NOT NULL,
  `LastCommentID` int(11) DEFAULT NULL,
  `LastDiscussionID` int(11) DEFAULT NULL,
  `LastDateInserted` datetime DEFAULT NULL,
  `AllowedDiscussionTypes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DefaultDiscussionType` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Comment` (
  `CommentID` int(11) NOT NULL,
  `DiscussionID` int(11) NOT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `DeleteUserID` int(11) DEFAULT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateInserted` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL,
  `Flag` tinyint(4) NOT NULL DEFAULT '0',
  `Score` float DEFAULT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_contentDraft` (
  `draftID` int(11) NOT NULL,
  `recordType` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recordID` int(11) DEFAULT NULL,
  `parentRecordID` int(11) DEFAULT NULL,
  `attributes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `insertUserID` int(11) NOT NULL,
  `dateInserted` datetime NOT NULL,
  `updateUserID` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Conversation` (
  `ConversationID` int(11) NOT NULL,
  `Type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ForeignID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Contributors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstMessageID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime DEFAULT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `UpdateUserID` int(11) NOT NULL,
  `DateUpdated` datetime NOT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL,
  `CountMessages` int(11) NOT NULL DEFAULT '0',
  `CountParticipants` int(11) NOT NULL DEFAULT '0',
  `LastMessageID` int(11) DEFAULT NULL,
  `RegardingID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_ConversationMessage` (
  `MessageID` int(11) NOT NULL,
  `ConversationID` int(11) NOT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Discussion` (
  `DiscussionID` int(11) NOT NULL,
  `Type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ForeignID` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoryID` int(11) NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `FirstCommentID` int(11) DEFAULT NULL,
  `LastCommentID` int(11) DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tags` text COLLATE utf8mb4_unicode_ci,
  `CountComments` int(11) NOT NULL DEFAULT '0',
  `CountBookmarks` int(11) DEFAULT NULL,
  `CountViews` int(11) NOT NULL DEFAULT '1',
  `Closed` tinyint(4) NOT NULL DEFAULT '0',
  `Announce` tinyint(4) NOT NULL DEFAULT '0',
  `Sink` tinyint(4) NOT NULL DEFAULT '0',
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL,
  `DateLastComment` datetime DEFAULT NULL,
  `LastCommentUserID` int(11) DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci,
  `RegardingID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Draft` (
  `DraftID` int(11) NOT NULL,
  `DiscussionID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `UpdateUserID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Closed` tinyint(4) NOT NULL DEFAULT '0',
  `Announce` tinyint(4) NOT NULL DEFAULT '0',
  `Sink` tinyint(4) NOT NULL DEFAULT '0',
  `Body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Invitation` (
  `InvitationID` int(11) NOT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleIDs` text COLLATE utf8mb4_unicode_ci,
  `Code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `AcceptedUserID` int(11) DEFAULT NULL,
  `DateAccepted` datetime DEFAULT NULL,
  `DateExpires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Log` (
  `LogID` int(11) NOT NULL,
  `Operation` enum('Delete','Edit','Spam','Moderate','Pending','Ban','Error') COLLATE utf8mb4_unicode_ci NOT NULL,
  `RecordType` enum('Discussion','Comment','User','Registration','Activity','ActivityComment','Configuration','Group','Event') COLLATE utf8mb4_unicode_ci NOT NULL,
  `TransactionLogID` int(11) DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `RecordUserID` int(11) DEFAULT NULL,
  `RecordDate` datetime NOT NULL,
  `RecordIPAddress` varbinary(16) DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `OtherUserIDs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `ParentRecordID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Data` mediumtext COLLATE utf8mb4_unicode_ci,
  `CountGroup` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Media` (
  `MediaID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Size` int(11) NOT NULL,
  `Active` tinyint(4) NOT NULL DEFAULT '1',
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `ForeignID` int(11) DEFAULT NULL,
  `ForeignTable` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImageWidth` smallint(5) UNSIGNED DEFAULT NULL,
  `ImageHeight` smallint(5) UNSIGNED DEFAULT NULL,
  `ThumbWidth` smallint(5) UNSIGNED DEFAULT NULL,
  `ThumbHeight` smallint(5) UNSIGNED DEFAULT NULL,
  `ThumbPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Message` (
  `MessageID` int(11) NOT NULL,
  `Content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AllowDismiss` tinyint(4) NOT NULL DEFAULT '1',
  `Enabled` tinyint(4) NOT NULL DEFAULT '1',
  `Application` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `IncludeSubcategories` tinyint(4) NOT NULL DEFAULT '0',
  `AssetTarget` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CssClass` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Permission` (
  `PermissionID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  `JunctionTable` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JunctionColumn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JunctionID` int(11) DEFAULT NULL,
  `Garden.Email.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Settings.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Settings.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.SignIn.Allow` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Approve` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Activity.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Activity.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Profiles.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Profiles.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Curation.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Moderation.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.PersonalInfo.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.AdvancedNotifications.Allow` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Community.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Tokens.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Uploads.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Tagging.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Conversations.Moderation.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Conversations.Conversations.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Approval.Require` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Me` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.View` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Announce` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Sink` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Close` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Delete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_reaction` (
  `reactionID` int(11) NOT NULL,
  `reactionOwnerID` int(11) NOT NULL,
  `recordID` int(11) NOT NULL,
  `reactionValue` int(11) NOT NULL,
  `insertUserID` int(11) NOT NULL,
  `dateInserted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_reactionOwner` (
  `reactionOwnerID` int(11) NOT NULL,
  `ownerType` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reactionType` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recordType` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insertUserID` int(11) NOT NULL,
  `dateInserted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Regarding` (
  `RegardingID` int(11) NOT NULL,
  `Type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `ForeignType` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ForeignID` int(11) NOT NULL,
  `OriginalContent` text COLLATE utf8mb4_unicode_ci,
  `ParentType` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `ForeignURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reports` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Role` (
  `RoleID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` enum('guest','unconfirmed','applicant','member','moderator','administrator') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL,
  `Deletable` tinyint(4) NOT NULL DEFAULT '1',
  `CanSession` tinyint(4) NOT NULL DEFAULT '1',
  `PersonalInfo` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Session` (
  `SessionID` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL DEFAULT '0',
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `DateExpires` datetime DEFAULT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Spammer` (
  `UserID` int(11) NOT NULL,
  `CountSpam` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `CountDeletedSpam` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_Tag` (
  `TagID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FullName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ParentTagID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `CategoryID` int(11) NOT NULL DEFAULT '-1',
  `CountDiscussions` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_TagDiscussion` (
  `TagID` int(11) NOT NULL,
  `DiscussionID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `DateInserted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_User` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varbinary(100) NOT NULL,
  `HashMethod` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `About` text COLLATE utf8mb4_unicode_ci,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ShowEmail` tinyint(4) NOT NULL DEFAULT '0',
  `Gender` enum('u','m','f') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'u',
  `CountVisits` int(11) NOT NULL DEFAULT '0',
  `CountInvitations` int(11) NOT NULL DEFAULT '0',
  `CountNotifications` int(11) DEFAULT NULL,
  `InviteUserID` int(11) DEFAULT NULL,
  `DiscoveryText` text COLLATE utf8mb4_unicode_ci,
  `Preferences` text COLLATE utf8mb4_unicode_ci,
  `Permissions` text COLLATE utf8mb4_unicode_ci,
  `Attributes` text COLLATE utf8mb4_unicode_ci,
  `DateSetInvitations` datetime DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `DateFirstVisit` datetime DEFAULT NULL,
  `DateLastActive` datetime DEFAULT NULL,
  `LastIPAddress` varbinary(16) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varbinary(16) DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateIPAddress` varbinary(16) DEFAULT NULL,
  `HourOffset` int(11) NOT NULL DEFAULT '0',
  `Score` float DEFAULT NULL,
  `Admin` tinyint(4) NOT NULL DEFAULT '0',
  `Confirmed` tinyint(4) NOT NULL DEFAULT '1',
  `Verified` tinyint(4) NOT NULL DEFAULT '0',
  `Banned` tinyint(4) NOT NULL DEFAULT '0',
  `Deleted` tinyint(4) NOT NULL DEFAULT '0',
  `Points` int(11) NOT NULL DEFAULT '0',
  `CountUnreadConversations` int(11) DEFAULT NULL,
  `CountDiscussions` int(11) DEFAULT NULL,
  `CountUnreadDiscussions` int(11) DEFAULT NULL,
  `CountComments` int(11) DEFAULT NULL,
  `CountDrafts` int(11) DEFAULT NULL,
  `CountBookmarks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserAuthentication` (
  `ForeignUserKey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProviderKey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserAuthenticationNonce` (
  `Nonce` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserAuthenticationProvider` (
  `AuthenticationKey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AuthenticationSchemeAlias` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssociationSecret` text COLLATE utf8mb4_unicode_ci,
  `AssociationHashMethod` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AuthenticateUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegisterUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SignInUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SignOutUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PasswordUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProfileUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci,
  `Active` tinyint(4) NOT NULL DEFAULT '1',
  `IsDefault` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserAuthenticationToken` (
  `Token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProviderKey` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ForeignUserKey` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TokenSecret` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TokenType` enum('request','access') COLLATE utf8mb4_unicode_ci NOT NULL,
  `Authorized` tinyint(4) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Lifetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserCategory` (
  `UserID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `DateMarkedRead` datetime DEFAULT NULL,
  `Followed` tinyint(4) NOT NULL DEFAULT '0',
  `Unfollow` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserComment` (
  `UserID` int(11) NOT NULL,
  `CommentID` int(11) NOT NULL,
  `Score` float DEFAULT NULL,
  `DateLastViewed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserConversation` (
  `UserID` int(11) NOT NULL,
  `ConversationID` int(11) NOT NULL,
  `CountReadMessages` int(11) NOT NULL DEFAULT '0',
  `LastMessageID` int(11) DEFAULT NULL,
  `DateLastViewed` datetime DEFAULT NULL,
  `DateCleared` datetime DEFAULT NULL,
  `Bookmarked` tinyint(4) NOT NULL DEFAULT '0',
  `Deleted` tinyint(4) NOT NULL DEFAULT '0',
  `DateConversationUpdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserDiscussion` (
  `UserID` int(11) NOT NULL,
  `DiscussionID` int(11) NOT NULL,
  `Score` float DEFAULT NULL,
  `CountComments` int(11) NOT NULL DEFAULT '0',
  `DateLastViewed` datetime DEFAULT NULL,
  `Dismissed` tinyint(4) NOT NULL DEFAULT '0',
  `Bookmarked` tinyint(4) NOT NULL DEFAULT '0',
  `Participated` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserIP` (
  `UserID` int(11) NOT NULL,
  `IPAddress` varbinary(16) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserMerge` (
  `MergeID` int(11) NOT NULL,
  `OldUserID` int(11) NOT NULL,
  `NewUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `Attributes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserMergeItem` (
  `MergeID` int(11) NOT NULL,
  `Table` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Column` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RecordID` int(11) NOT NULL,
  `OldUserID` int(11) NOT NULL,
  `NewUserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserMeta` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserPoints` (
  `SlotType` enum('d','w','m','y','a') COLLATE utf8mb4_unicode_ci NOT NULL,
  `TimeSlot` datetime NOT NULL,
  `Source` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Total',
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `UserID` int(11) NOT NULL,
  `Points` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `GDN_UserRole` (
  `UserID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `GDN_AccessToken`
  ADD PRIMARY KEY (`AccessTokenID`),
  ADD UNIQUE KEY `UX_AccessToken` (`Token`),
  ADD KEY `IX_AccessToken_UserID` (`UserID`),
  ADD KEY `IX_AccessToken_Type` (`Type`);

ALTER TABLE `GDN_Activity`
  ADD PRIMARY KEY (`ActivityID`),
  ADD KEY `IX_Activity_Notify` (`NotifyUserID`,`Notified`),
  ADD KEY `IX_Activity_Recent` (`NotifyUserID`,`DateUpdated`),
  ADD KEY `IX_Activity_Feed` (`NotifyUserID`,`ActivityUserID`,`DateUpdated`),
  ADD KEY `IX_Activity_DateUpdated` (`DateUpdated`),
  ADD KEY `FK_Activity_InsertUserID` (`InsertUserID`);

ALTER TABLE `GDN_ActivityComment`
  ADD PRIMARY KEY (`ActivityCommentID`),
  ADD KEY `FK_ActivityComment_ActivityID` (`ActivityID`);

ALTER TABLE `GDN_ActivityType`
  ADD PRIMARY KEY (`ActivityTypeID`);

ALTER TABLE `GDN_AnalyticsLocal`
  ADD UNIQUE KEY `UX_AnalyticsLocal` (`TimeSlot`);

ALTER TABLE `GDN_Attachment`
  ADD PRIMARY KEY (`AttachmentID`),
  ADD KEY `IX_Attachment_ForeignID` (`ForeignID`),
  ADD KEY `FK_Attachment_ForeignUserID` (`ForeignUserID`),
  ADD KEY `FK_Attachment_InsertUserID` (`InsertUserID`);

ALTER TABLE `GDN_Ban`
  ADD PRIMARY KEY (`BanID`),
  ADD UNIQUE KEY `UX_Ban` (`BanType`,`BanValue`);

ALTER TABLE `GDN_Category`
  ADD PRIMARY KEY (`CategoryID`),
  ADD KEY `FK_Category_ParentCategoryID` (`ParentCategoryID`),
  ADD KEY `FK_Category_InsertUserID` (`InsertUserID`);

ALTER TABLE `GDN_Comment`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `IX_Comment_1` (`DiscussionID`,`DateInserted`),
  ADD KEY `IX_Comment_DateInserted` (`DateInserted`),
  ADD KEY `IX_Comment_Score` (`Score`),
  ADD KEY `FK_Comment_InsertUserID` (`InsertUserID`);
ALTER TABLE `GDN_Comment` ADD FULLTEXT KEY `TX_Comment` (`Body`);

ALTER TABLE `GDN_contentDraft`
  ADD PRIMARY KEY (`draftID`),
  ADD KEY `IX_contentDraft_recordType` (`recordType`),
  ADD KEY `IX_contentDraft_insertUserID` (`insertUserID`),
  ADD KEY `IX_contentDraft_record` (`recordType`,`recordID`),
  ADD KEY `IX_contentDraft_parentRecord` (`recordType`,`parentRecordID`);

ALTER TABLE `GDN_Conversation`
  ADD PRIMARY KEY (`ConversationID`),
  ADD KEY `IX_Conversation_Type` (`Type`),
  ADD KEY `IX_Conversation_RegardingID` (`RegardingID`),
  ADD KEY `FK_Conversation_FirstMessageID` (`FirstMessageID`),
  ADD KEY `FK_Conversation_InsertUserID` (`InsertUserID`),
  ADD KEY `FK_Conversation_DateInserted` (`DateInserted`),
  ADD KEY `FK_Conversation_UpdateUserID` (`UpdateUserID`);

ALTER TABLE `GDN_ConversationMessage`
  ADD PRIMARY KEY (`MessageID`),
  ADD KEY `FK_ConversationMessage_ConversationID` (`ConversationID`),
  ADD KEY `FK_ConversationMessage_InsertUserID` (`InsertUserID`);

ALTER TABLE `GDN_Discussion`
  ADD PRIMARY KEY (`DiscussionID`),
  ADD KEY `IX_Discussion_Type` (`Type`),
  ADD KEY `IX_Discussion_ForeignID` (`ForeignID`),
  ADD KEY `IX_Discussion_DateInserted` (`DateInserted`),
  ADD KEY `IX_Discussion_DateLastComment` (`DateLastComment`),
  ADD KEY `IX_Discussion_RegardingID` (`RegardingID`),
  ADD KEY `IX_Discussion_CategoryPages` (`CategoryID`,`DateLastComment`),
  ADD KEY `IX_Discussion_CategoryInserted` (`CategoryID`,`DateInserted`),
  ADD KEY `FK_Discussion_InsertUserID` (`InsertUserID`);
ALTER TABLE `GDN_Discussion` ADD FULLTEXT KEY `TX_Discussion` (`Name`,`Body`);

ALTER TABLE `GDN_Draft`
  ADD PRIMARY KEY (`DraftID`),
  ADD KEY `FK_Draft_DiscussionID` (`DiscussionID`),
  ADD KEY `FK_Draft_CategoryID` (`CategoryID`),
  ADD KEY `FK_Draft_InsertUserID` (`InsertUserID`);

ALTER TABLE `GDN_Invitation`
  ADD PRIMARY KEY (`InvitationID`),
  ADD UNIQUE KEY `UX_Invitation` (`Code`),
  ADD KEY `IX_Invitation_Email` (`Email`),
  ADD KEY `IX_Invitation_userdate` (`InsertUserID`,`DateInserted`);

ALTER TABLE `GDN_Log`
  ADD PRIMARY KEY (`LogID`),
  ADD KEY `IX_Log_Operation` (`Operation`),
  ADD KEY `IX_Log_RecordType` (`RecordType`),
  ADD KEY `IX_Log_RecordID` (`RecordID`),
  ADD KEY `IX_Log_RecordUserID` (`RecordUserID`),
  ADD KEY `IX_Log_RecordIPAddress` (`RecordIPAddress`),
  ADD KEY `IX_Log_DateInserted` (`DateInserted`),
  ADD KEY `IX_Log_ParentRecordID` (`ParentRecordID`),
  ADD KEY `FK_Log_CategoryID` (`CategoryID`);

ALTER TABLE `GDN_Media`
  ADD PRIMARY KEY (`MediaID`),
  ADD KEY `IX_Media_InsertUserID` (`InsertUserID`),
  ADD KEY `IX_Media_Foreign` (`ForeignID`,`ForeignTable`);

ALTER TABLE `GDN_Message`
  ADD PRIMARY KEY (`MessageID`);

ALTER TABLE `GDN_Permission`
  ADD PRIMARY KEY (`PermissionID`),
  ADD KEY `FK_Permission_RoleID` (`RoleID`);

ALTER TABLE `GDN_reaction`
  ADD PRIMARY KEY (`reactionID`),
  ADD KEY `IX_reaction_reactionOwnerID` (`reactionOwnerID`),
  ADD KEY `IX_reaction_insertUserID` (`insertUserID`),
  ADD KEY `IX_reaction_record` (`reactionOwnerID`,`recordID`);

ALTER TABLE `GDN_reactionOwner`
  ADD PRIMARY KEY (`reactionOwnerID`),
  ADD UNIQUE KEY `UX_reactionOwner` (`ownerType`,`reactionType`,`recordType`),
  ADD KEY `IX_reactionOwner_ownerType` (`ownerType`),
  ADD KEY `IX_reactionOwner_reactionType` (`reactionType`),
  ADD KEY `IX_reactionOwner_recordType` (`recordType`),
  ADD KEY `IX_reactionOwner_insertUserID` (`insertUserID`);

ALTER TABLE `GDN_Regarding`
  ADD PRIMARY KEY (`RegardingID`),
  ADD KEY `FK_Regarding_Type` (`Type`);

ALTER TABLE `GDN_Role`
  ADD PRIMARY KEY (`RoleID`);

ALTER TABLE `GDN_Session`
  ADD PRIMARY KEY (`SessionID`),
  ADD KEY `IX_Session_DateExpires` (`DateExpires`);

ALTER TABLE `GDN_Spammer`
  ADD PRIMARY KEY (`UserID`);

ALTER TABLE `GDN_Tag`
  ADD PRIMARY KEY (`TagID`),
  ADD UNIQUE KEY `UX_Tag` (`Name`,`CategoryID`),
  ADD KEY `IX_Tag_FullName` (`FullName`),
  ADD KEY `IX_Tag_Type` (`Type`),
  ADD KEY `FK_Tag_ParentTagID` (`ParentTagID`),
  ADD KEY `FK_Tag_InsertUserID` (`InsertUserID`);

ALTER TABLE `GDN_TagDiscussion`
  ADD PRIMARY KEY (`TagID`,`DiscussionID`),
  ADD KEY `IX_TagDiscussion_CategoryID` (`CategoryID`);

ALTER TABLE `GDN_User`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `FK_User_Name` (`Name`),
  ADD KEY `IX_User_Email` (`Email`),
  ADD KEY `IX_User_DateLastActive` (`DateLastActive`),
  ADD KEY `IX_User_DateInserted` (`DateInserted`);

ALTER TABLE `GDN_UserAuthentication`
  ADD PRIMARY KEY (`ForeignUserKey`,`ProviderKey`),
  ADD KEY `FK_UserAuthentication_UserID` (`UserID`);

ALTER TABLE `GDN_UserAuthenticationNonce`
  ADD PRIMARY KEY (`Nonce`),
  ADD KEY `IX_UserAuthenticationNonce_Timestamp` (`Timestamp`);

ALTER TABLE `GDN_UserAuthenticationProvider`
  ADD PRIMARY KEY (`AuthenticationKey`);

ALTER TABLE `GDN_UserAuthenticationToken`
  ADD PRIMARY KEY (`Token`,`ProviderKey`),
  ADD KEY `IX_UserAuthenticationToken_Timestamp` (`Timestamp`);

ALTER TABLE `GDN_UserCategory`
  ADD PRIMARY KEY (`UserID`,`CategoryID`);

ALTER TABLE `GDN_UserComment`
  ADD PRIMARY KEY (`UserID`,`CommentID`);

ALTER TABLE `GDN_UserConversation`
  ADD PRIMARY KEY (`UserID`,`ConversationID`),
  ADD KEY `IX_UserConversation_Inbox` (`UserID`,`Deleted`,`DateConversationUpdated`),
  ADD KEY `FK_UserConversation_ConversationID` (`ConversationID`);

ALTER TABLE `GDN_UserDiscussion`
  ADD PRIMARY KEY (`UserID`,`DiscussionID`),
  ADD KEY `FK_UserDiscussion_DiscussionID` (`DiscussionID`);

ALTER TABLE `GDN_UserIP`
  ADD PRIMARY KEY (`UserID`,`IPAddress`);

ALTER TABLE `GDN_UserMerge`
  ADD PRIMARY KEY (`MergeID`),
  ADD KEY `FK_UserMerge_OldUserID` (`OldUserID`),
  ADD KEY `FK_UserMerge_NewUserID` (`NewUserID`);

ALTER TABLE `GDN_UserMergeItem`
  ADD KEY `FK_UserMergeItem_MergeID` (`MergeID`);

ALTER TABLE `GDN_UserMeta`
  ADD PRIMARY KEY (`UserID`,`Name`),
  ADD KEY `IX_UserMeta_Name` (`Name`);

ALTER TABLE `GDN_UserPoints`
  ADD PRIMARY KEY (`SlotType`,`TimeSlot`,`Source`,`CategoryID`,`UserID`);

ALTER TABLE `GDN_UserRole`
  ADD PRIMARY KEY (`UserID`,`RoleID`),
  ADD KEY `IX_UserRole_RoleID` (`RoleID`);


ALTER TABLE `GDN_AccessToken`
  MODIFY `AccessTokenID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Activity`
  MODIFY `ActivityID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_ActivityComment`
  MODIFY `ActivityCommentID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_ActivityType`
  MODIFY `ActivityTypeID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Attachment`
  MODIFY `AttachmentID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Ban`
  MODIFY `BanID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Comment`
  MODIFY `CommentID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_contentDraft`
  MODIFY `draftID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Conversation`
  MODIFY `ConversationID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_ConversationMessage`
  MODIFY `MessageID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Discussion`
  MODIFY `DiscussionID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Draft`
  MODIFY `DraftID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Invitation`
  MODIFY `InvitationID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Log`
  MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Media`
  MODIFY `MediaID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Message`
  MODIFY `MessageID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Permission`
  MODIFY `PermissionID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_reaction`
  MODIFY `reactionID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_reactionOwner`
  MODIFY `reactionOwnerID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Regarding`
  MODIFY `RegardingID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Role`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_Tag`
  MODIFY `TagID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_User`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `GDN_UserMerge`
  MODIFY `MergeID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
