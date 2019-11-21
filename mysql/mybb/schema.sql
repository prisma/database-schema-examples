SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `awu3h_adminlog` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipaddress` varbinary(16) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL DEFAULT '',
  `action` varchar(50) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_adminoptions` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `cpstyle` varchar(50) NOT NULL DEFAULT '',
  `cplanguage` varchar(50) NOT NULL DEFAULT '',
  `codepress` tinyint(1) NOT NULL DEFAULT '1',
  `notes` text NOT NULL,
  `permissions` text NOT NULL,
  `defaultviews` text NOT NULL,
  `loginattempts` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `loginlockoutexpiry` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authsecret` varchar(16) NOT NULL DEFAULT '',
  `recovery_codes` varchar(177) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_adminsessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `loginkey` varchar(50) NOT NULL DEFAULT '',
  `ip` varbinary(16) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastactive` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `useragent` varchar(200) NOT NULL DEFAULT '',
  `authenticated` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_adminviews` (
  `vid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(6) NOT NULL DEFAULT '',
  `visibility` tinyint(1) NOT NULL DEFAULT '0',
  `fields` text NOT NULL,
  `conditions` text NOT NULL,
  `custom_profile_fields` text NOT NULL,
  `sortby` varchar(20) NOT NULL DEFAULT '',
  `sortorder` varchar(4) NOT NULL DEFAULT '',
  `perpage` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `view_type` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_announcements` (
  `aid` int(10) UNSIGNED NOT NULL,
  `fid` int(11) NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(120) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `startdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `enddate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `allowhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowmycode` tinyint(1) NOT NULL DEFAULT '0',
  `allowsmilies` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_attachments` (
  `aid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `posthash` varchar(50) NOT NULL DEFAULT '',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filename` varchar(120) NOT NULL DEFAULT '',
  `filetype` varchar(120) NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attachname` varchar(120) NOT NULL DEFAULT '',
  `downloads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dateuploaded` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `thumbnail` varchar(120) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_attachtypes` (
  `atid` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `mimetype` varchar(120) NOT NULL DEFAULT '',
  `extension` varchar(10) NOT NULL DEFAULT '',
  `maxsize` int(15) UNSIGNED NOT NULL DEFAULT '0',
  `icon` varchar(100) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `groups` text NOT NULL,
  `forums` text NOT NULL,
  `avatarfile` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_awaitingactivation` (
  `aid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `code` varchar(100) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT '',
  `validated` tinyint(1) NOT NULL DEFAULT '0',
  `misc` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_badwords` (
  `bid` int(10) UNSIGNED NOT NULL,
  `badword` varchar(100) NOT NULL DEFAULT '',
  `regex` tinyint(1) NOT NULL DEFAULT '0',
  `replacement` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_banfilters` (
  `fid` int(10) UNSIGNED NOT NULL,
  `filter` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `lastuse` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_banned` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `oldgroup` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `oldadditionalgroups` text NOT NULL,
  `olddisplaygroup` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `admin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bantime` varchar(50) NOT NULL DEFAULT '',
  `lifted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_buddyrequests` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `touid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_calendarpermissions` (
  `cid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `canviewcalendar` tinyint(1) NOT NULL DEFAULT '0',
  `canaddevents` tinyint(1) NOT NULL DEFAULT '0',
  `canbypasseventmod` tinyint(1) NOT NULL DEFAULT '0',
  `canmoderateevents` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_calendars` (
  `cid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `startofweek` tinyint(1) NOT NULL DEFAULT '0',
  `showbirthdays` tinyint(1) NOT NULL DEFAULT '0',
  `eventlimit` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `moderation` tinyint(1) NOT NULL DEFAULT '0',
  `allowhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowmycode` tinyint(1) NOT NULL DEFAULT '0',
  `allowimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowvideocode` tinyint(1) NOT NULL DEFAULT '0',
  `allowsmilies` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_captcha` (
  `imagehash` varchar(32) NOT NULL DEFAULT '',
  `imagestring` varchar(8) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `used` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_datacache` (
  `title` varchar(50) NOT NULL DEFAULT '',
  `cache` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_delayedmoderation` (
  `did` int(10) UNSIGNED NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `delaydateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tids` text NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `inputs` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_events` (
  `eid` int(10) UNSIGNED NOT NULL,
  `cid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timezone` varchar(5) NOT NULL DEFAULT '',
  `ignoretimezone` tinyint(1) NOT NULL DEFAULT '0',
  `usingtime` tinyint(1) NOT NULL DEFAULT '0',
  `repeats` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_forumpermissions` (
  `pid` int(10) UNSIGNED NOT NULL,
  `fid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `canview` tinyint(1) NOT NULL DEFAULT '0',
  `canviewthreads` tinyint(1) NOT NULL DEFAULT '0',
  `canonlyviewownthreads` tinyint(1) NOT NULL DEFAULT '0',
  `candlattachments` tinyint(1) NOT NULL DEFAULT '0',
  `canpostthreads` tinyint(1) NOT NULL DEFAULT '0',
  `canpostreplys` tinyint(1) NOT NULL DEFAULT '0',
  `canonlyreplyownthreads` tinyint(1) NOT NULL DEFAULT '0',
  `canpostattachments` tinyint(1) NOT NULL DEFAULT '0',
  `canratethreads` tinyint(1) NOT NULL DEFAULT '0',
  `caneditposts` tinyint(1) NOT NULL DEFAULT '0',
  `candeleteposts` tinyint(1) NOT NULL DEFAULT '0',
  `candeletethreads` tinyint(1) NOT NULL DEFAULT '0',
  `caneditattachments` tinyint(1) NOT NULL DEFAULT '0',
  `canviewdeletionnotice` tinyint(1) NOT NULL DEFAULT '0',
  `modposts` tinyint(1) NOT NULL DEFAULT '0',
  `modthreads` tinyint(1) NOT NULL DEFAULT '0',
  `mod_edit_posts` tinyint(1) NOT NULL DEFAULT '0',
  `modattachments` tinyint(1) NOT NULL DEFAULT '0',
  `canpostpolls` tinyint(1) NOT NULL DEFAULT '0',
  `canvotepolls` tinyint(1) NOT NULL DEFAULT '0',
  `cansearch` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_forums` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `linkto` varchar(180) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT '',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `parentlist` text NOT NULL,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `open` tinyint(1) NOT NULL DEFAULT '0',
  `threads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastposter` varchar(120) NOT NULL DEFAULT '',
  `lastposteruid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastposttid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpostsubject` varchar(120) NOT NULL DEFAULT '',
  `allowhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowmycode` tinyint(1) NOT NULL DEFAULT '0',
  `allowsmilies` tinyint(1) NOT NULL DEFAULT '0',
  `allowimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowvideocode` tinyint(1) NOT NULL DEFAULT '0',
  `allowpicons` tinyint(1) NOT NULL DEFAULT '0',
  `allowtratings` tinyint(1) NOT NULL DEFAULT '0',
  `usepostcounts` tinyint(1) NOT NULL DEFAULT '0',
  `usethreadcounts` tinyint(1) NOT NULL DEFAULT '0',
  `requireprefix` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '',
  `showinjump` tinyint(1) NOT NULL DEFAULT '0',
  `style` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `overridestyle` tinyint(1) NOT NULL DEFAULT '0',
  `rulestype` tinyint(1) NOT NULL DEFAULT '0',
  `rulestitle` varchar(200) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `unapprovedthreads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unapprovedposts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deletedthreads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deletedposts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `defaultdatecut` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `defaultsortby` varchar(10) NOT NULL DEFAULT '',
  `defaultsortorder` varchar(4) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_forumsread` (
  `fid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_forumsubscriptions` (
  `fsid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_groupleaders` (
  `lid` smallint(5) UNSIGNED NOT NULL,
  `gid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `canmanagemembers` tinyint(1) NOT NULL DEFAULT '0',
  `canmanagerequests` tinyint(1) NOT NULL DEFAULT '0',
  `caninvitemembers` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_helpdocs` (
  `hid` smallint(5) UNSIGNED NOT NULL,
  `sid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `document` text NOT NULL,
  `usetranslation` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_helpsections` (
  `sid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `usetranslation` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_icons` (
  `iid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `path` varchar(220) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_joinrequests` (
  `rid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `reason` varchar(250) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `invite` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_mailerrors` (
  `eid` int(10) UNSIGNED NOT NULL,
  `subject` varchar(200) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `toaddress` varchar(150) NOT NULL DEFAULT '',
  `fromaddress` varchar(150) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `error` text NOT NULL,
  `smtperror` varchar(200) NOT NULL DEFAULT '',
  `smtpcode` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_maillogs` (
  `mid` int(10) UNSIGNED NOT NULL,
  `subject` varchar(200) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fromuid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fromemail` varchar(200) NOT NULL DEFAULT '',
  `touid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `toemail` varchar(200) NOT NULL DEFAULT '',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipaddress` varbinary(16) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_mailqueue` (
  `mid` int(10) UNSIGNED NOT NULL,
  `mailto` varchar(200) NOT NULL,
  `mailfrom` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `headers` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_massemails` (
  `mid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(200) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `htmlmessage` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `format` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `senddate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sentcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `totalcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `conditions` text NOT NULL,
  `perpage` smallint(4) UNSIGNED NOT NULL DEFAULT '50'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_moderatorlog` (
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `action` text NOT NULL,
  `data` text NOT NULL,
  `ipaddress` varbinary(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_moderators` (
  `mid` smallint(5) UNSIGNED NOT NULL,
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `caneditposts` tinyint(1) NOT NULL DEFAULT '0',
  `cansoftdeleteposts` tinyint(1) NOT NULL DEFAULT '0',
  `canrestoreposts` tinyint(1) NOT NULL DEFAULT '0',
  `candeleteposts` tinyint(1) NOT NULL DEFAULT '0',
  `cansoftdeletethreads` tinyint(1) NOT NULL DEFAULT '0',
  `canrestorethreads` tinyint(1) NOT NULL DEFAULT '0',
  `candeletethreads` tinyint(1) NOT NULL DEFAULT '0',
  `canviewips` tinyint(1) NOT NULL DEFAULT '0',
  `canviewunapprove` tinyint(1) NOT NULL DEFAULT '0',
  `canviewdeleted` tinyint(1) NOT NULL DEFAULT '0',
  `canopenclosethreads` tinyint(1) NOT NULL DEFAULT '0',
  `canstickunstickthreads` tinyint(1) NOT NULL DEFAULT '0',
  `canapproveunapprovethreads` tinyint(1) NOT NULL DEFAULT '0',
  `canapproveunapproveposts` tinyint(1) NOT NULL DEFAULT '0',
  `canapproveunapproveattachs` tinyint(1) NOT NULL DEFAULT '0',
  `canmanagethreads` tinyint(1) NOT NULL DEFAULT '0',
  `canmanagepolls` tinyint(1) NOT NULL DEFAULT '0',
  `canpostclosedthreads` tinyint(1) NOT NULL DEFAULT '0',
  `canmovetononmodforum` tinyint(1) NOT NULL DEFAULT '0',
  `canusecustomtools` tinyint(1) NOT NULL DEFAULT '0',
  `canmanageannouncements` tinyint(1) NOT NULL DEFAULT '0',
  `canmanagereportedposts` tinyint(1) NOT NULL DEFAULT '0',
  `canviewmodlog` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_modtools` (
  `tid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `forums` text NOT NULL,
  `groups` text NOT NULL,
  `type` char(1) NOT NULL DEFAULT '',
  `postoptions` text NOT NULL,
  `threadoptions` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_mycode` (
  `cid` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `regex` text NOT NULL,
  `replacement` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `parseorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_polls` (
  `pid` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(200) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `options` text NOT NULL,
  `votes` text NOT NULL,
  `numoptions` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `numvotes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timeout` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `maxoptions` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_pollvotes` (
  `vid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `voteoption` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipaddress` varbinary(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_posts` (
  `pid` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `replyto` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(120) NOT NULL DEFAULT '',
  `icon` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(80) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `ipaddress` varbinary(16) NOT NULL DEFAULT '',
  `includesig` tinyint(1) NOT NULL DEFAULT '0',
  `smilieoff` tinyint(1) NOT NULL DEFAULT '0',
  `edituid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `editreason` varchar(150) NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_privatemessages` (
  `pmid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `toid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fromid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `recipients` text NOT NULL,
  `folder` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `subject` varchar(120) NOT NULL DEFAULT '',
  `icon` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deletetime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `statustime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `includesig` tinyint(1) NOT NULL DEFAULT '0',
  `smilieoff` tinyint(1) NOT NULL DEFAULT '0',
  `receipt` tinyint(1) NOT NULL DEFAULT '0',
  `readtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipaddress` varbinary(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_profilefields` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `type` text NOT NULL,
  `regex` text NOT NULL,
  `length` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `profile` tinyint(1) NOT NULL DEFAULT '0',
  `postbit` tinyint(1) NOT NULL DEFAULT '0',
  `viewableby` text NOT NULL,
  `editableby` text NOT NULL,
  `postnum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `allowhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowmycode` tinyint(1) NOT NULL DEFAULT '0',
  `allowsmilies` tinyint(1) NOT NULL DEFAULT '0',
  `allowimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowvideocode` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_promotionlogs` (
  `plid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `oldusergroup` varchar(200) NOT NULL DEFAULT '0',
  `newusergroup` smallint(6) NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(9) NOT NULL DEFAULT 'primary'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_promotions` (
  `pid` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `logging` tinyint(1) NOT NULL DEFAULT '0',
  `posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `posttype` char(2) NOT NULL DEFAULT '',
  `threads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `threadtype` char(2) NOT NULL DEFAULT '',
  `registered` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `registeredtype` varchar(20) NOT NULL DEFAULT '',
  `online` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `onlinetype` varchar(20) NOT NULL DEFAULT '',
  `reputations` int(11) NOT NULL DEFAULT '0',
  `reputationtype` char(2) NOT NULL DEFAULT '',
  `referrals` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `referralstype` char(2) NOT NULL DEFAULT '',
  `warnings` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `warningstype` char(2) NOT NULL DEFAULT '',
  `requirements` varchar(200) NOT NULL DEFAULT '',
  `originalusergroup` varchar(120) NOT NULL DEFAULT '0',
  `newusergroup` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `usergrouptype` varchar(120) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_questions` (
  `qid` int(10) UNSIGNED NOT NULL,
  `question` varchar(200) NOT NULL DEFAULT '',
  `answer` varchar(150) NOT NULL DEFAULT '',
  `shown` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `correct` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `incorrect` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_questionsessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `qid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_reportedcontent` (
  `rid` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reportstatus` tinyint(1) NOT NULL DEFAULT '0',
  `reasonid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `reason` varchar(250) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `reports` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reporters` text NOT NULL,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastreport` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_reportreasons` (
  `rid` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL DEFAULT '',
  `appliesto` varchar(250) NOT NULL DEFAULT '',
  `extra` tinyint(1) NOT NULL DEFAULT '0',
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_reputation` (
  `rid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `adduid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reputation` smallint(6) NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comments` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_searchlog` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ipaddress` varbinary(16) NOT NULL DEFAULT '',
  `threads` longtext NOT NULL,
  `posts` longtext NOT NULL,
  `resulttype` varchar(10) NOT NULL DEFAULT '',
  `querycache` text NOT NULL,
  `keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varbinary(16) NOT NULL DEFAULT '',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `location` varchar(150) NOT NULL DEFAULT '',
  `useragent` varchar(200) NOT NULL DEFAULT '',
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `nopermission` tinyint(1) NOT NULL DEFAULT '0',
  `location1` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `location2` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_settinggroups` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(220) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_settings` (
  `sid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `optionscode` text NOT NULL,
  `value` text NOT NULL,
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `gid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_smilies` (
  `sid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '',
  `find` text NOT NULL,
  `image` varchar(220) NOT NULL DEFAULT '',
  `disporder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `showclickable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_spamlog` (
  `sid` int(10) UNSIGNED NOT NULL,
  `username` varchar(120) NOT NULL DEFAULT '',
  `email` varchar(220) NOT NULL DEFAULT '',
  `ipaddress` varbinary(16) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_spiders` (
  `sid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `theme` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `language` varchar(20) NOT NULL DEFAULT '',
  `usergroup` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `useragent` varchar(200) NOT NULL DEFAULT '',
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_stats` (
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `numusers` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `numthreads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `numposts` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_tasklog` (
  `lid` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_tasks` (
  `tid` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `file` varchar(30) NOT NULL DEFAULT '',
  `minute` varchar(200) NOT NULL DEFAULT '',
  `hour` varchar(200) NOT NULL DEFAULT '',
  `day` varchar(100) NOT NULL DEFAULT '',
  `month` varchar(30) NOT NULL DEFAULT '',
  `weekday` varchar(15) NOT NULL DEFAULT '',
  `nextrun` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastrun` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `logging` tinyint(1) NOT NULL DEFAULT '0',
  `locked` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_templategroups` (
  `gid` int(10) UNSIGNED NOT NULL,
  `prefix` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_templates` (
  `tid` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `sid` smallint(6) NOT NULL DEFAULT '0',
  `version` varchar(20) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_templatesets` (
  `sid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_themes` (
  `tid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `def` tinyint(1) NOT NULL DEFAULT '0',
  `properties` text NOT NULL,
  `stylesheets` text NOT NULL,
  `allowedgroups` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_themestylesheets` (
  `sid` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `tid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `attachedto` text NOT NULL,
  `stylesheet` longtext NOT NULL,
  `cachefile` varchar(100) NOT NULL DEFAULT '',
  `lastmodified` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_threadprefixes` (
  `pid` int(10) UNSIGNED NOT NULL,
  `prefix` varchar(120) NOT NULL DEFAULT '',
  `displaystyle` varchar(200) NOT NULL DEFAULT '',
  `forums` text NOT NULL,
  `groups` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_threadratings` (
  `rid` int(10) UNSIGNED NOT NULL,
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ipaddress` varbinary(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_threads` (
  `tid` int(10) UNSIGNED NOT NULL,
  `fid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(120) NOT NULL DEFAULT '',
  `prefix` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `icon` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `poll` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(80) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `firstpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastposter` varchar(120) NOT NULL DEFAULT '',
  `lastposteruid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `views` int(100) UNSIGNED NOT NULL DEFAULT '0',
  `replies` int(100) UNSIGNED NOT NULL DEFAULT '0',
  `closed` varchar(30) NOT NULL DEFAULT '',
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `numratings` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `totalratings` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `unapprovedposts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deletedposts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attachmentcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deletetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_threadsread` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_threadsubscriptions` (
  `sid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notification` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_threadviews` (
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_userfields` (
  `ufid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fid1` text NOT NULL,
  `fid2` text NOT NULL,
  `fid3` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_usergroups` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `namestyle` varchar(200) NOT NULL DEFAULT '{username}',
  `usertitle` varchar(120) NOT NULL DEFAULT '',
  `stars` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `starimage` varchar(120) NOT NULL DEFAULT '',
  `image` varchar(120) NOT NULL DEFAULT '',
  `disporder` smallint(6) UNSIGNED NOT NULL,
  `isbannedgroup` tinyint(1) NOT NULL DEFAULT '0',
  `canview` tinyint(1) NOT NULL DEFAULT '0',
  `canviewthreads` tinyint(1) NOT NULL DEFAULT '0',
  `canviewprofiles` tinyint(1) NOT NULL DEFAULT '0',
  `candlattachments` tinyint(1) NOT NULL DEFAULT '0',
  `canviewboardclosed` tinyint(1) NOT NULL DEFAULT '0',
  `canpostthreads` tinyint(1) NOT NULL DEFAULT '0',
  `canpostreplys` tinyint(1) NOT NULL DEFAULT '0',
  `canpostattachments` tinyint(1) NOT NULL DEFAULT '0',
  `canratethreads` tinyint(1) NOT NULL DEFAULT '0',
  `modposts` tinyint(1) NOT NULL DEFAULT '0',
  `modthreads` tinyint(1) NOT NULL DEFAULT '0',
  `mod_edit_posts` tinyint(1) NOT NULL DEFAULT '0',
  `modattachments` tinyint(1) NOT NULL DEFAULT '0',
  `caneditposts` tinyint(1) NOT NULL DEFAULT '0',
  `candeleteposts` tinyint(1) NOT NULL DEFAULT '0',
  `candeletethreads` tinyint(1) NOT NULL DEFAULT '0',
  `caneditattachments` tinyint(1) NOT NULL DEFAULT '0',
  `canviewdeletionnotice` tinyint(1) NOT NULL DEFAULT '0',
  `canpostpolls` tinyint(1) NOT NULL DEFAULT '0',
  `canvotepolls` tinyint(1) NOT NULL DEFAULT '0',
  `canundovotes` tinyint(1) NOT NULL DEFAULT '0',
  `canusepms` tinyint(1) NOT NULL DEFAULT '0',
  `cansendpms` tinyint(1) NOT NULL DEFAULT '0',
  `cantrackpms` tinyint(1) NOT NULL DEFAULT '0',
  `candenypmreceipts` tinyint(1) NOT NULL DEFAULT '0',
  `pmquota` int(3) UNSIGNED NOT NULL DEFAULT '0',
  `maxpmrecipients` int(4) UNSIGNED NOT NULL DEFAULT '5',
  `cansendemail` tinyint(1) NOT NULL DEFAULT '0',
  `cansendemailoverride` tinyint(1) NOT NULL DEFAULT '0',
  `maxemails` int(3) UNSIGNED NOT NULL DEFAULT '5',
  `emailfloodtime` int(3) UNSIGNED NOT NULL DEFAULT '5',
  `canviewmemberlist` tinyint(1) NOT NULL DEFAULT '0',
  `canviewcalendar` tinyint(1) NOT NULL DEFAULT '0',
  `canaddevents` tinyint(1) NOT NULL DEFAULT '0',
  `canbypasseventmod` tinyint(1) NOT NULL DEFAULT '0',
  `canmoderateevents` tinyint(1) NOT NULL DEFAULT '0',
  `canviewonline` tinyint(1) NOT NULL DEFAULT '0',
  `canviewwolinvis` tinyint(1) NOT NULL DEFAULT '0',
  `canviewonlineips` tinyint(1) NOT NULL DEFAULT '0',
  `cancp` tinyint(1) NOT NULL DEFAULT '0',
  `issupermod` tinyint(1) NOT NULL DEFAULT '0',
  `cansearch` tinyint(1) NOT NULL DEFAULT '0',
  `canusercp` tinyint(1) NOT NULL DEFAULT '0',
  `canuploadavatars` tinyint(1) NOT NULL DEFAULT '0',
  `canratemembers` tinyint(1) NOT NULL DEFAULT '0',
  `canchangename` tinyint(1) NOT NULL DEFAULT '0',
  `canbereported` tinyint(1) NOT NULL DEFAULT '0',
  `canchangewebsite` tinyint(1) NOT NULL DEFAULT '1',
  `showforumteam` tinyint(1) NOT NULL DEFAULT '0',
  `usereputationsystem` tinyint(1) NOT NULL DEFAULT '0',
  `cangivereputations` tinyint(1) NOT NULL DEFAULT '0',
  `candeletereputations` tinyint(1) NOT NULL DEFAULT '0',
  `reputationpower` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxreputationsday` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxreputationsperuser` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxreputationsperthread` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `candisplaygroup` tinyint(1) NOT NULL DEFAULT '0',
  `attachquota` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cancustomtitle` tinyint(1) NOT NULL DEFAULT '0',
  `canwarnusers` tinyint(1) NOT NULL DEFAULT '0',
  `canreceivewarnings` tinyint(1) NOT NULL DEFAULT '0',
  `maxwarningsday` int(3) UNSIGNED NOT NULL DEFAULT '3',
  `canmodcp` tinyint(1) NOT NULL DEFAULT '0',
  `showinbirthdaylist` tinyint(1) NOT NULL DEFAULT '0',
  `canoverridepm` tinyint(1) NOT NULL DEFAULT '0',
  `canusesig` tinyint(1) NOT NULL DEFAULT '0',
  `canusesigxposts` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `signofollow` tinyint(1) NOT NULL DEFAULT '0',
  `edittimelimit` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `maxposts` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `showmemberlist` tinyint(1) NOT NULL DEFAULT '1',
  `canmanageannounce` tinyint(1) NOT NULL DEFAULT '0',
  `canmanagemodqueue` tinyint(1) NOT NULL DEFAULT '0',
  `canmanagereportedcontent` tinyint(1) NOT NULL DEFAULT '0',
  `canviewmodlogs` tinyint(1) NOT NULL DEFAULT '0',
  `caneditprofiles` tinyint(1) NOT NULL DEFAULT '0',
  `canbanusers` tinyint(1) NOT NULL DEFAULT '0',
  `canviewwarnlogs` tinyint(1) NOT NULL DEFAULT '0',
  `canuseipsearch` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `username` varchar(120) NOT NULL DEFAULT '',
  `password` varchar(120) NOT NULL DEFAULT '',
  `salt` varchar(10) NOT NULL DEFAULT '',
  `loginkey` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(220) NOT NULL DEFAULT '',
  `postnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `threadnum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `avatar` varchar(200) NOT NULL DEFAULT '',
  `avatardimensions` varchar(10) NOT NULL DEFAULT '',
  `avatartype` varchar(10) NOT NULL DEFAULT '0',
  `usergroup` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `additionalgroups` varchar(200) NOT NULL DEFAULT '',
  `displaygroup` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `usertitle` varchar(250) NOT NULL DEFAULT '',
  `regdate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastactive` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `website` varchar(200) NOT NULL DEFAULT '',
  `icq` varchar(10) NOT NULL DEFAULT '',
  `yahoo` varchar(50) NOT NULL DEFAULT '',
  `skype` varchar(75) NOT NULL DEFAULT '',
  `google` varchar(75) NOT NULL DEFAULT '',
  `birthday` varchar(15) NOT NULL DEFAULT '',
  `birthdayprivacy` varchar(4) NOT NULL DEFAULT 'all',
  `signature` text NOT NULL,
  `allownotices` tinyint(1) NOT NULL DEFAULT '0',
  `hideemail` tinyint(1) NOT NULL DEFAULT '0',
  `subscriptionmethod` tinyint(1) NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `receivepms` tinyint(1) NOT NULL DEFAULT '0',
  `receivefrombuddy` tinyint(1) NOT NULL DEFAULT '0',
  `pmnotice` tinyint(1) NOT NULL DEFAULT '0',
  `pmnotify` tinyint(1) NOT NULL DEFAULT '0',
  `buddyrequestspm` tinyint(1) NOT NULL DEFAULT '1',
  `buddyrequestsauto` tinyint(1) NOT NULL DEFAULT '0',
  `threadmode` varchar(8) NOT NULL DEFAULT '',
  `showimages` tinyint(1) NOT NULL DEFAULT '0',
  `showvideos` tinyint(1) NOT NULL DEFAULT '0',
  `showsigs` tinyint(1) NOT NULL DEFAULT '0',
  `showavatars` tinyint(1) NOT NULL DEFAULT '0',
  `showquickreply` tinyint(1) NOT NULL DEFAULT '0',
  `showredirect` tinyint(1) NOT NULL DEFAULT '0',
  `ppp` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `tpp` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `daysprune` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `dateformat` varchar(4) NOT NULL DEFAULT '',
  `timeformat` varchar(4) NOT NULL DEFAULT '',
  `timezone` varchar(5) NOT NULL DEFAULT '',
  `dst` tinyint(1) NOT NULL DEFAULT '0',
  `dstcorrection` tinyint(1) NOT NULL DEFAULT '0',
  `buddylist` text NOT NULL,
  `ignorelist` text NOT NULL,
  `style` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `away` tinyint(1) NOT NULL DEFAULT '0',
  `awaydate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `returndate` varchar(15) NOT NULL DEFAULT '',
  `awayreason` varchar(200) NOT NULL DEFAULT '',
  `pmfolders` text NOT NULL,
  `notepad` text NOT NULL,
  `referrer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `referrals` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reputation` int(11) NOT NULL DEFAULT '0',
  `regip` varbinary(16) NOT NULL DEFAULT '',
  `lastip` varbinary(16) NOT NULL DEFAULT '',
  `language` varchar(50) NOT NULL DEFAULT '',
  `timeonline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showcodebuttons` tinyint(1) NOT NULL DEFAULT '1',
  `totalpms` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `unreadpms` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `warningpoints` int(3) UNSIGNED NOT NULL DEFAULT '0',
  `moderateposts` tinyint(1) NOT NULL DEFAULT '0',
  `moderationtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `suspendposting` tinyint(1) NOT NULL DEFAULT '0',
  `suspensiontime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `suspendsignature` tinyint(1) NOT NULL DEFAULT '0',
  `suspendsigtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `coppauser` tinyint(1) NOT NULL DEFAULT '0',
  `classicpostbit` tinyint(1) NOT NULL DEFAULT '0',
  `loginattempts` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `loginlockoutexpiry` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `usernotes` text NOT NULL,
  `sourceeditor` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_usertitles` (
  `utid` smallint(5) UNSIGNED NOT NULL,
  `posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `stars` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `starimage` varchar(120) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_warninglevels` (
  `lid` int(10) UNSIGNED NOT NULL,
  `percentage` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_warnings` (
  `wid` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `points` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `issuedby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expired` tinyint(1) NOT NULL DEFAULT '0',
  `daterevoked` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `revokedby` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `revokereason` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `awu3h_warningtypes` (
  `tid` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `points` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `expirationtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE `awu3h_adminlog`
  ADD KEY `module` (`module`,`action`),
  ADD KEY `uid` (`uid`);

ALTER TABLE `awu3h_adminoptions`
  ADD PRIMARY KEY (`uid`);

ALTER TABLE `awu3h_adminviews`
  ADD PRIMARY KEY (`vid`);

ALTER TABLE `awu3h_announcements`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `fid` (`fid`);

ALTER TABLE `awu3h_attachments`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `pid` (`pid`,`visible`),
  ADD KEY `uid` (`uid`);

ALTER TABLE `awu3h_attachtypes`
  ADD PRIMARY KEY (`atid`);

ALTER TABLE `awu3h_awaitingactivation`
  ADD PRIMARY KEY (`aid`);

ALTER TABLE `awu3h_badwords`
  ADD PRIMARY KEY (`bid`);

ALTER TABLE `awu3h_banfilters`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `type` (`type`);

ALTER TABLE `awu3h_banned`
  ADD KEY `uid` (`uid`),
  ADD KEY `dateline` (`dateline`);

ALTER TABLE `awu3h_buddyrequests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `touid` (`touid`);

ALTER TABLE `awu3h_calendars`
  ADD PRIMARY KEY (`cid`);

ALTER TABLE `awu3h_captcha`
  ADD KEY `imagehash` (`imagehash`),
  ADD KEY `dateline` (`dateline`);

ALTER TABLE `awu3h_datacache`
  ADD PRIMARY KEY (`title`);

ALTER TABLE `awu3h_delayedmoderation`
  ADD PRIMARY KEY (`did`);

ALTER TABLE `awu3h_events`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `daterange` (`starttime`,`endtime`),
  ADD KEY `private` (`private`);

ALTER TABLE `awu3h_forumpermissions`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `fid` (`fid`,`gid`);

ALTER TABLE `awu3h_forums`
  ADD PRIMARY KEY (`fid`);

ALTER TABLE `awu3h_forumsread`
  ADD UNIQUE KEY `fid` (`fid`,`uid`),
  ADD KEY `dateline` (`dateline`);

ALTER TABLE `awu3h_forumsubscriptions`
  ADD PRIMARY KEY (`fsid`),
  ADD KEY `uid` (`uid`);

ALTER TABLE `awu3h_groupleaders`
  ADD PRIMARY KEY (`lid`);

ALTER TABLE `awu3h_helpdocs`
  ADD PRIMARY KEY (`hid`);

ALTER TABLE `awu3h_helpsections`
  ADD PRIMARY KEY (`sid`);

ALTER TABLE `awu3h_icons`
  ADD PRIMARY KEY (`iid`);

ALTER TABLE `awu3h_joinrequests`
  ADD PRIMARY KEY (`rid`);

ALTER TABLE `awu3h_mailerrors`
  ADD PRIMARY KEY (`eid`);

ALTER TABLE `awu3h_maillogs`
  ADD PRIMARY KEY (`mid`);

ALTER TABLE `awu3h_mailqueue`
  ADD PRIMARY KEY (`mid`);

ALTER TABLE `awu3h_massemails`
  ADD PRIMARY KEY (`mid`);

ALTER TABLE `awu3h_moderatorlog`
  ADD KEY `uid` (`uid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `tid` (`tid`);

ALTER TABLE `awu3h_moderators`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `uid` (`id`,`fid`);

ALTER TABLE `awu3h_modtools`
  ADD PRIMARY KEY (`tid`);

ALTER TABLE `awu3h_mycode`
  ADD PRIMARY KEY (`cid`);

ALTER TABLE `awu3h_polls`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `tid` (`tid`);

ALTER TABLE `awu3h_pollvotes`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `pid` (`pid`,`uid`);

ALTER TABLE `awu3h_posts`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `tid` (`tid`,`uid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `visible` (`visible`),
  ADD KEY `dateline` (`dateline`),
  ADD KEY `ipaddress` (`ipaddress`),
  ADD KEY `tiddate` (`tid`,`dateline`);
ALTER TABLE `awu3h_posts` ADD FULLTEXT KEY `message` (`message`);

ALTER TABLE `awu3h_privatemessages`
  ADD PRIMARY KEY (`pmid`),
  ADD KEY `uid` (`uid`,`folder`),
  ADD KEY `toid` (`toid`);

ALTER TABLE `awu3h_profilefields`
  ADD PRIMARY KEY (`fid`);

ALTER TABLE `awu3h_promotionlogs`
  ADD PRIMARY KEY (`plid`);

ALTER TABLE `awu3h_promotions`
  ADD PRIMARY KEY (`pid`);

ALTER TABLE `awu3h_questions`
  ADD PRIMARY KEY (`qid`);

ALTER TABLE `awu3h_questionsessions`
  ADD PRIMARY KEY (`sid`);

ALTER TABLE `awu3h_reportedcontent`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `reportstatus` (`reportstatus`),
  ADD KEY `lastreport` (`lastreport`);

ALTER TABLE `awu3h_reportreasons`
  ADD PRIMARY KEY (`rid`);

ALTER TABLE `awu3h_reputation`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `uid` (`uid`);

ALTER TABLE `awu3h_searchlog`
  ADD PRIMARY KEY (`sid`);

ALTER TABLE `awu3h_sessions`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `location` (`location1`,`location2`),
  ADD KEY `time` (`time`),
  ADD KEY `uid` (`uid`),
  ADD KEY `ip` (`ip`);

ALTER TABLE `awu3h_settinggroups`
  ADD PRIMARY KEY (`gid`);

ALTER TABLE `awu3h_settings`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `gid` (`gid`);

ALTER TABLE `awu3h_smilies`
  ADD PRIMARY KEY (`sid`);

ALTER TABLE `awu3h_spamlog`
  ADD PRIMARY KEY (`sid`);

ALTER TABLE `awu3h_spiders`
  ADD PRIMARY KEY (`sid`);

ALTER TABLE `awu3h_stats`
  ADD PRIMARY KEY (`dateline`);

ALTER TABLE `awu3h_tasklog`
  ADD PRIMARY KEY (`lid`);

ALTER TABLE `awu3h_tasks`
  ADD PRIMARY KEY (`tid`);

ALTER TABLE `awu3h_templategroups`
  ADD PRIMARY KEY (`gid`);

ALTER TABLE `awu3h_templates`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `sid` (`sid`,`title`);

ALTER TABLE `awu3h_templatesets`
  ADD PRIMARY KEY (`sid`);

ALTER TABLE `awu3h_themes`
  ADD PRIMARY KEY (`tid`);

ALTER TABLE `awu3h_themestylesheets`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `tid` (`tid`);

ALTER TABLE `awu3h_threadprefixes`
  ADD PRIMARY KEY (`pid`);

ALTER TABLE `awu3h_threadratings`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `tid` (`tid`,`uid`);

ALTER TABLE `awu3h_threads`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `fid` (`fid`,`visible`,`sticky`),
  ADD KEY `dateline` (`dateline`),
  ADD KEY `lastpost` (`lastpost`,`fid`),
  ADD KEY `firstpost` (`firstpost`),
  ADD KEY `uid` (`uid`);
ALTER TABLE `awu3h_threads` ADD FULLTEXT KEY `subject` (`subject`);

ALTER TABLE `awu3h_threadsread`
  ADD UNIQUE KEY `tid` (`tid`,`uid`),
  ADD KEY `dateline` (`dateline`);

ALTER TABLE `awu3h_threadsubscriptions`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `tid` (`tid`,`notification`);

ALTER TABLE `awu3h_threadviews`
  ADD KEY `tid` (`tid`);

ALTER TABLE `awu3h_userfields`
  ADD PRIMARY KEY (`ufid`);

ALTER TABLE `awu3h_usergroups`
  ADD PRIMARY KEY (`gid`);

ALTER TABLE `awu3h_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `usergroup` (`usergroup`),
  ADD KEY `regip` (`regip`),
  ADD KEY `lastip` (`lastip`);

ALTER TABLE `awu3h_usertitles`
  ADD PRIMARY KEY (`utid`);

ALTER TABLE `awu3h_warninglevels`
  ADD PRIMARY KEY (`lid`);

ALTER TABLE `awu3h_warnings`
  ADD PRIMARY KEY (`wid`),
  ADD KEY `uid` (`uid`);

ALTER TABLE `awu3h_warningtypes`
  ADD PRIMARY KEY (`tid`);


ALTER TABLE `awu3h_adminviews`
  MODIFY `vid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_announcements`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_attachments`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_attachtypes`
  MODIFY `atid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_awaitingactivation`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_badwords`
  MODIFY `bid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_banfilters`
  MODIFY `fid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_buddyrequests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_calendars`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_delayedmoderation`
  MODIFY `did` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_events`
  MODIFY `eid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_forumpermissions`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_forums`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_forumsubscriptions`
  MODIFY `fsid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_groupleaders`
  MODIFY `lid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_helpdocs`
  MODIFY `hid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_helpsections`
  MODIFY `sid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_icons`
  MODIFY `iid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_joinrequests`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_mailerrors`
  MODIFY `eid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_maillogs`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_mailqueue`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_massemails`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_moderators`
  MODIFY `mid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_modtools`
  MODIFY `tid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_mycode`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_polls`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_pollvotes`
  MODIFY `vid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_posts`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_privatemessages`
  MODIFY `pmid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_profilefields`
  MODIFY `fid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_promotionlogs`
  MODIFY `plid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_promotions`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_questions`
  MODIFY `qid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_reportedcontent`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_reportreasons`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_reputation`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_settinggroups`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_settings`
  MODIFY `sid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_smilies`
  MODIFY `sid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_spamlog`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_spiders`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_tasklog`
  MODIFY `lid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_tasks`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_templategroups`
  MODIFY `gid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_templates`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_templatesets`
  MODIFY `sid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_themes`
  MODIFY `tid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_themestylesheets`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_threadprefixes`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_threadratings`
  MODIFY `rid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_threads`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_threadsubscriptions`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_usergroups`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_users`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_usertitles`
  MODIFY `utid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_warninglevels`
  MODIFY `lid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_warnings`
  MODIFY `wid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `awu3h_warningtypes`
  MODIFY `tid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
