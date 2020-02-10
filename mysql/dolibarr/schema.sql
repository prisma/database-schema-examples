-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816436525.hosting-data.io    Database: db816436525
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
-- Table structure for table `doli_accounting_account`
--

DROP TABLE IF EXISTS `doli_accounting_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_accounting_account` (
  `rowid` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_pcg_version` varchar(32) NOT NULL,
  `pcg_type` varchar(20) NOT NULL,
  `pcg_subtype` varchar(20) NOT NULL,
  `account_number` varchar(32) NOT NULL,
  `account_parent` int(11) DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `fk_accounting_category` int(11) DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_accounting_account` (`account_number`,`entity`,`fk_pcg_version`),
  KEY `idx_accountingaccount_fk_pcg_version` (`fk_pcg_version`),
  KEY `idx_accounting_account_account_number` (`account_number`),
  KEY `idx_accounting_account_account_parent` (`account_parent`),
  CONSTRAINT `fk_accounting_account_fk_pcg_version` FOREIGN KEY (`fk_pcg_version`) REFERENCES `doli_accounting_system` (`pcg_version`)
) ENGINE=InnoDB AUTO_INCREMENT=4785 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_accounting_bookkeeping`
--

DROP TABLE IF EXISTS `doli_accounting_bookkeeping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_accounting_bookkeeping` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `doc_date` date NOT NULL,
  `doc_type` varchar(30) COLLATE latin1_german2_ci NOT NULL,
  `doc_ref` varchar(300) COLLATE latin1_german2_ci NOT NULL,
  `fk_doc` int(11) NOT NULL,
  `fk_docdet` int(11) NOT NULL,
  `thirdparty_code` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `numero_compte` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_compte` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `label_operation` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `debit` double(24,8) DEFAULT NULL,
  `credit` double(24,8) DEFAULT NULL,
  `montant` double(24,8) DEFAULT NULL,
  `sens` varchar(1) COLLATE latin1_german2_ci DEFAULT NULL,
  `multicurrency_amount` double(24,8) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `lettering_code` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_lettering` datetime DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `code_journal` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `journal_label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `piece_num` int(11) NOT NULL,
  `date_validated` datetime DEFAULT NULL,
  `date_export` datetime DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user_modif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subledger_account` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `subledger_label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_lim_reglement` datetime DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_accounting_bookkeeping_fk_doc` (`fk_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_accounting_bookkeeping_tmp`
--

DROP TABLE IF EXISTS `doli_accounting_bookkeeping_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_accounting_bookkeeping_tmp` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `doc_date` date NOT NULL,
  `doc_type` varchar(30) COLLATE latin1_german2_ci NOT NULL,
  `doc_ref` varchar(300) COLLATE latin1_german2_ci NOT NULL,
  `fk_doc` int(11) NOT NULL,
  `fk_docdet` int(11) NOT NULL,
  `thirdparty_code` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `subledger_account` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `subledger_label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `numero_compte` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `label_compte` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `label_operation` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `debit` double(24,8) NOT NULL,
  `credit` double(24,8) NOT NULL,
  `montant` double(24,8) NOT NULL,
  `sens` varchar(1) COLLATE latin1_german2_ci DEFAULT NULL,
  `multicurrency_amount` double(24,8) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `lettering_code` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_lettering` datetime DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `code_journal` varchar(32) COLLATE latin1_german2_ci NOT NULL,
  `journal_label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `piece_num` int(11) NOT NULL,
  `date_validated` datetime DEFAULT NULL,
  `extraparams` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_lim_reglement` datetime DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_accounting_bookkeeping_tmp_doc_date` (`doc_date`),
  KEY `idx_accounting_bookkeeping_tmp_fk_docdet` (`fk_docdet`),
  KEY `idx_accounting_bookkeeping_tmp_numero_compte` (`numero_compte`),
  KEY `idx_accounting_bookkeeping_tmp_code_journal` (`code_journal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_accounting_fiscalyear`
--

DROP TABLE IF EXISTS `doli_accounting_fiscalyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_accounting_fiscalyear` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `statut` tinyint(4) NOT NULL DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_accounting_journal`
--

DROP TABLE IF EXISTS `doli_accounting_journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_accounting_journal` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `nature` smallint(6) NOT NULL DEFAULT '0',
  `active` smallint(6) DEFAULT '0',
  `entity` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_accounting_journal_code` (`code`,`entity`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_accounting_system`
--

DROP TABLE IF EXISTS `doli_accounting_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_accounting_system` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `pcg_version` varchar(32) NOT NULL,
  `label` varchar(128) NOT NULL,
  `active` smallint(6) DEFAULT '0',
  `fk_country` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_accounting_system_pcg_version` (`pcg_version`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_actioncomm`
--

DROP TABLE IF EXISTS `doli_actioncomm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_actioncomm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_ext` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datep` datetime DEFAULT NULL,
  `datep2` datetime DEFAULT NULL,
  `fk_action` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_project` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_parent` int(11) NOT NULL DEFAULT '0',
  `fk_user_action` int(11) DEFAULT NULL,
  `transparency` int(11) DEFAULT NULL,
  `fk_user_done` int(11) DEFAULT NULL,
  `priority` smallint(6) DEFAULT NULL,
  `fulldayevent` smallint(6) NOT NULL DEFAULT '0',
  `punctual` smallint(6) NOT NULL DEFAULT '1',
  `percent` smallint(6) NOT NULL DEFAULT '0',
  `location` varchar(128) DEFAULT NULL,
  `durationp` double DEFAULT NULL,
  `durationa` double DEFAULT NULL,
  `note` text,
  `fk_element` int(11) DEFAULT NULL,
  `elementtype` varchar(255) DEFAULT NULL,
  `email_msgid` varchar(255) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_from` varchar(255) DEFAULT NULL,
  `email_sender` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `email_tocc` varchar(255) DEFAULT NULL,
  `email_tobcc` varchar(255) DEFAULT NULL,
  `errors_to` varchar(255) DEFAULT NULL,
  `recurid` varchar(128) DEFAULT NULL,
  `recurrule` varchar(128) DEFAULT NULL,
  `recurdateend` datetime DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `calling_duration` int(11) DEFAULT NULL,
  `visibility` varchar(12) DEFAULT 'default',
  PRIMARY KEY (`id`),
  KEY `idx_actioncomm_fk_soc` (`fk_soc`),
  KEY `idx_actioncomm_fk_contact` (`fk_contact`),
  KEY `idx_actioncomm_code` (`code`),
  KEY `idx_actioncomm_fk_element` (`fk_element`),
  KEY `idx_actioncomm_fk_user_action` (`fk_user_action`),
  KEY `idx_actioncomm_fk_project` (`fk_project`),
  KEY `idx_actioncomm_datep` (`datep`),
  KEY `idx_actioncomm_datep2` (`datep2`),
  KEY `idx_actioncomm_recurid` (`recurid`),
  KEY `idx_actioncomm_ref_ext` (`ref_ext`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_actioncomm_extrafields`
--

DROP TABLE IF EXISTS `doli_actioncomm_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_actioncomm_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_actioncomm_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_actioncomm_reminder`
--

DROP TABLE IF EXISTS `doli_actioncomm_reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_actioncomm_reminder` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `dateremind` datetime NOT NULL,
  `typeremind` varchar(32) COLLATE latin1_german2_ci NOT NULL,
  `fk_user` int(11) NOT NULL,
  `offsetvalue` int(11) NOT NULL,
  `offsetunit` varchar(1) COLLATE latin1_german2_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_actioncomm_reminder_unique` (`fk_user`,`typeremind`,`offsetvalue`,`offsetunit`),
  KEY `idx_actioncomm_reminder_rowid` (`rowid`),
  KEY `idx_actioncomm_reminder_dateremind` (`dateremind`),
  KEY `idx_actioncomm_reminder_fk_user` (`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_actioncomm_resources`
--

DROP TABLE IF EXISTS `doli_actioncomm_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_actioncomm_resources` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_actioncomm` int(11) NOT NULL,
  `element_type` varchar(50) NOT NULL,
  `fk_element` int(11) NOT NULL,
  `answer_status` varchar(50) DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `transparency` smallint(6) DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_actioncomm_resources` (`fk_actioncomm`,`element_type`,`fk_element`),
  KEY `idx_actioncomm_resources_fk_element` (`fk_element`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_adherent`
--

DROP TABLE IF EXISTS `doli_adherent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_adherent` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `civility` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `pass_crypted` varchar(128) DEFAULT NULL,
  `fk_adherent_type` int(11) NOT NULL,
  `morphy` varchar(3) NOT NULL,
  `societe` varchar(128) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `address` text,
  `zip` varchar(30) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `socialnetworks` text,
  `skype` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phone_perso` varchar(30) DEFAULT NULL,
  `phone_mobile` varchar(30) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `datefin` datetime DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `datevalid` datetime DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `model_pdf` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `snapchat` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_adherent_login` (`login`,`entity`),
  UNIQUE KEY `uk_adherent_fk_soc` (`fk_soc`),
  KEY `idx_adherent_fk_adherent_type` (`fk_adherent_type`),
  CONSTRAINT `adherent_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_adherent_adherent_type` FOREIGN KEY (`fk_adherent_type`) REFERENCES `doli_adherent_type` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_adherent_extrafields`
--

DROP TABLE IF EXISTS `doli_adherent_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_adherent_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_adherent_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_adherent_type`
--

DROP TABLE IF EXISTS `doli_adherent_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_adherent_type` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `libelle` varchar(50) NOT NULL,
  `subscription` varchar(3) NOT NULL DEFAULT '1',
  `vote` varchar(3) NOT NULL DEFAULT 'yes',
  `note` text,
  `mail_valid` text,
  `morphy` varchar(3) DEFAULT NULL,
  `duration` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_adherent_type_libelle` (`libelle`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_adherent_type_extrafields`
--

DROP TABLE IF EXISTS `doli_adherent_type_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_adherent_type_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_adherent_type_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_adherent_type_lang`
--

DROP TABLE IF EXISTS `doli_adherent_type_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_adherent_type_lang` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_type` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) COLLATE latin1_german2_ci NOT NULL DEFAULT '0',
  `label` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `description` text COLLATE latin1_german2_ci,
  `email` text COLLATE latin1_german2_ci,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_advtargetemailing`
--

DROP TABLE IF EXISTS `doli_advtargetemailing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_advtargetemailing` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE latin1_german2_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `filtervalue` text COLLATE latin1_german2_ci,
  `fk_user_author` int(11) NOT NULL,
  `datec` datetime NOT NULL,
  `fk_user_mod` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_element` int(11) NOT NULL,
  `type_element` varchar(180) COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_advtargetemailing_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_asset`
--

DROP TABLE IF EXISTS `doli_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_asset` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `amount_ht` double(24,8) DEFAULT NULL,
  `amount_vat` double(24,8) DEFAULT NULL,
  `fk_asset_type` int(11) NOT NULL,
  `description` text COLLATE latin1_german2_ci,
  `note_public` text COLLATE latin1_german2_ci,
  `note_private` text COLLATE latin1_german2_ci,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_asset_rowid` (`rowid`),
  KEY `idx_asset_ref` (`ref`),
  KEY `idx_asset_entity` (`entity`),
  KEY `idx_asset_fk_asset_type` (`fk_asset_type`),
  CONSTRAINT `fk_asset_asset_type` FOREIGN KEY (`fk_asset_type`) REFERENCES `doli_asset_type` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_asset_extrafields`
--

DROP TABLE IF EXISTS `doli_asset_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_asset_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_asset_type`
--

DROP TABLE IF EXISTS `doli_asset_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_asset_type` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `accountancy_code_asset` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `accountancy_code_depreciation_asset` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `accountancy_code_depreciation_expense` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `note` text COLLATE latin1_german2_ci,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_asset_type_label` (`label`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_asset_type_extrafields`
--

DROP TABLE IF EXISTS `doli_asset_type_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_asset_type_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_asset_type_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bank`
--

DROP TABLE IF EXISTS `doli_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bank` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datev` date DEFAULT NULL,
  `dateo` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `label` varchar(255) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_rappro` int(11) DEFAULT NULL,
  `fk_type` varchar(6) DEFAULT NULL,
  `num_releve` varchar(50) DEFAULT NULL,
  `num_chq` varchar(50) DEFAULT NULL,
  `rappro` tinyint(4) DEFAULT '0',
  `note` text,
  `fk_bordereau` int(11) DEFAULT '0',
  `banque` varchar(255) DEFAULT NULL,
  `emetteur` varchar(255) DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  `numero_compte` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_bank_datev` (`datev`),
  KEY `idx_bank_dateo` (`dateo`),
  KEY `idx_bank_fk_account` (`fk_account`),
  KEY `idx_bank_rappro` (`rappro`),
  KEY `idx_bank_num_releve` (`num_releve`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bank_account`
--

DROP TABLE IF EXISTS `doli_bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bank_account` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(12) NOT NULL,
  `label` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `bank` varchar(60) DEFAULT NULL,
  `code_banque` varchar(128) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `iban_prefix` varchar(34) DEFAULT NULL,
  `country_iban` varchar(2) DEFAULT NULL,
  `cle_iban` varchar(2) DEFAULT NULL,
  `domiciliation` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL,
  `proprio` varchar(60) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `courant` smallint(6) NOT NULL DEFAULT '0',
  `clos` smallint(6) NOT NULL DEFAULT '0',
  `rappro` smallint(6) DEFAULT '1',
  `url` varchar(128) DEFAULT NULL,
  `account_number` varchar(32) DEFAULT NULL,
  `accountancy_journal` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(3) NOT NULL,
  `min_allowed` int(11) DEFAULT '0',
  `min_desired` int(11) DEFAULT '0',
  `comment` text,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `fk_accountancy_journal` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bank_account_label` (`label`,`entity`),
  KEY `idx_fk_accountancy_journal` (`fk_accountancy_journal`),
  CONSTRAINT `fk_bank_account_accountancy_journal` FOREIGN KEY (`fk_accountancy_journal`) REFERENCES `doli_accounting_journal` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bank_account_extrafields`
--

DROP TABLE IF EXISTS `doli_bank_account_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bank_account_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_bank_account_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bank_categ`
--

DROP TABLE IF EXISTS `doli_bank_categ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bank_categ` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bank_class`
--

DROP TABLE IF EXISTS `doli_bank_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bank_class` (
  `lineid` int(11) NOT NULL,
  `fk_categ` int(11) NOT NULL,
  UNIQUE KEY `uk_bank_class_lineid` (`lineid`,`fk_categ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bank_url`
--

DROP TABLE IF EXISTS `doli_bank_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bank_url` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_bank` int(11) DEFAULT NULL,
  `url_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(24) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bank_url` (`fk_bank`,`url_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_blockedlog`
--

DROP TABLE IF EXISTS `doli_blockedlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_blockedlog` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `amounts` double(24,8) NOT NULL,
  `signature` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `signature_line` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `element` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_object` int(11) DEFAULT NULL,
  `ref_object` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_object` datetime DEFAULT NULL,
  `object_data` text COLLATE latin1_german2_ci,
  `fk_user` int(11) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `certified` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `user_fullname` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `signature` (`signature`),
  KEY `fk_object_element` (`fk_object`,`element`),
  KEY `entity` (`entity`),
  KEY `fk_user` (`fk_user`),
  KEY `entity_action` (`entity`,`action`),
  KEY `entity_action_certified` (`entity`,`action`,`certified`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_blockedlog_authority`
--

DROP TABLE IF EXISTS `doli_blockedlog_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_blockedlog_authority` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `blockchain` longtext COLLATE latin1_german2_ci NOT NULL,
  `signature` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  KEY `signature` (`signature`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bom_bom`
--

DROP TABLE IF EXISTS `doli_bom_bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bom_bom` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `description` text COLLATE latin1_german2_ci,
  `note_public` text COLLATE latin1_german2_ci,
  `note_private` text COLLATE latin1_german2_ci,
  `fk_product` int(11) DEFAULT NULL,
  `qty` double(24,8) DEFAULT NULL,
  `efficiency` double(8,4) DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `duration` double(24,8) DEFAULT NULL,
  `fk_warehouse` int(11) DEFAULT NULL,
  `model_pdf` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bom_bom_ref` (`ref`,`entity`),
  KEY `idx_bom_bom_rowid` (`rowid`),
  KEY `idx_bom_bom_ref` (`ref`),
  KEY `doli_bom_bom_fk_user_creat` (`fk_user_creat`),
  KEY `idx_bom_bom_status` (`status`),
  KEY `idx_bom_bom_fk_product` (`fk_product`),
  CONSTRAINT `doli_bom_bom_fk_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bom_bom_extrafields`
--

DROP TABLE IF EXISTS `doli_bom_bom_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bom_bom_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bom_bomline`
--

DROP TABLE IF EXISTS `doli_bom_bomline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bom_bomline` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_bom` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL,
  `fk_bom_child` int(11) DEFAULT NULL,
  `description` text COLLATE latin1_german2_ci,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `qty` double(24,8) NOT NULL,
  `efficiency` double(8,4) NOT NULL DEFAULT '1.0000',
  `position` int(11) NOT NULL,
  `qty_frozen` smallint(6) DEFAULT '0',
  `disable_stock_change` smallint(6) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_bom_bomline_rowid` (`rowid`),
  KEY `idx_bom_bomline_fk_product` (`fk_product`),
  KEY `idx_bom_bomline_fk_bom` (`fk_bom`),
  CONSTRAINT `doli_bom_bomline_fk_bom` FOREIGN KEY (`fk_bom`) REFERENCES `doli_bom_bom` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bom_bomline_extrafields`
--

DROP TABLE IF EXISTS `doli_bom_bomline_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bom_bomline_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bookmark`
--

DROP TABLE IF EXISTS `doli_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bookmark` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL,
  `dateb` datetime DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(16) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `favicon` varchar(24) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bookmark_url` (`fk_user`,`url`),
  UNIQUE KEY `uk_bookmark_title` (`fk_user`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_bordereau_cheque`
--

DROP TABLE IF EXISTS `doli_bordereau_cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_bordereau_cheque` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  `datec` datetime NOT NULL,
  `date_bordereau` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL,
  `nbcheque` smallint(6) NOT NULL,
  `fk_bank_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text,
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_bordereau_cheque` (`ref`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_boxes`
--

DROP TABLE IF EXISTS `doli_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_boxes` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `box_id` int(11) NOT NULL,
  `position` smallint(6) NOT NULL,
  `box_order` varchar(3) NOT NULL,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `maxline` int(11) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_boxes` (`entity`,`box_id`,`position`,`fk_user`),
  KEY `idx_boxes_boxid` (`box_id`),
  KEY `idx_boxes_fk_user` (`fk_user`),
  CONSTRAINT `fk_boxes_box_id` FOREIGN KEY (`box_id`) REFERENCES `doli_boxes_def` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_boxes_def`
--

DROP TABLE IF EXISTS `doli_boxes_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_boxes_def` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(200) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_boxes_def` (`file`,`entity`,`note`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_budget`
--

DROP TABLE IF EXISTS `doli_budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_budget` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `label` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `note` text COLLATE latin1_german2_ci,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_budget_lines`
--

DROP TABLE IF EXISTS `doli_budget_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_budget_lines` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_budget` int(11) NOT NULL,
  `fk_project_ids` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `amount` double(24,8) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_budget_lines` (`fk_budget`,`fk_project_ids`),
  CONSTRAINT `fk_budget_lines_budget` FOREIGN KEY (`fk_budget`) REFERENCES `doli_budget` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_accounting_category`
--

DROP TABLE IF EXISTS `doli_c_accounting_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_accounting_category` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `code` varchar(16) COLLATE latin1_german2_ci NOT NULL,
  `label` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `range_account` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `sens` tinyint(4) NOT NULL DEFAULT '0',
  `category_type` tinyint(4) NOT NULL DEFAULT '0',
  `formula` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `position` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_accounting_category` (`code`,`entity`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_action_trigger`
--

DROP TABLE IF EXISTS `doli_c_action_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_action_trigger` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `label` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `elementtype` varchar(64) NOT NULL,
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_action_trigger_code` (`code`),
  KEY `idx_action_trigger_rang` (`rang`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_actioncomm`
--

DROP TABLE IF EXISTS `doli_c_actioncomm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_actioncomm` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'system',
  `libelle` varchar(48) NOT NULL,
  `module` varchar(16) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `todo` tinyint(4) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `color` varchar(9) DEFAULT NULL,
  `picto` varchar(48) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_actioncomm` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_availability`
--

DROP TABLE IF EXISTS `doli_c_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_availability` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL,
  `label` varchar(60) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_availability` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_barcode_type`
--

DROP TABLE IF EXISTS `doli_c_barcode_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_barcode_type` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `libelle` varchar(50) NOT NULL,
  `coder` varchar(16) NOT NULL,
  `example` varchar(16) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_barcode_type` (`code`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_chargesociales`
--

DROP TABLE IF EXISTS `doli_c_chargesociales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_chargesociales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(80) DEFAULT NULL,
  `deductible` smallint(6) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `code` varchar(12) NOT NULL,
  `accountancy_code` varchar(32) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_civility`
--

DROP TABLE IF EXISTS `doli_c_civility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_civility` (
  `rowid` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_civility` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_country`
--

DROP TABLE IF EXISTS `doli_c_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_country` (
  `rowid` int(11) NOT NULL,
  `code` varchar(2) NOT NULL,
  `code_iso` varchar(3) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `favorite` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_c_country_code` (`code`),
  UNIQUE KEY `idx_c_pays_libelle` (`label`),
  UNIQUE KEY `idx_c_country_code_iso` (`code_iso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_currencies`
--

DROP TABLE IF EXISTS `doli_c_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_currencies` (
  `code_iso` varchar(3) NOT NULL,
  `label` varchar(64) NOT NULL,
  `unicode` varchar(32) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`code_iso`),
  UNIQUE KEY `uk_c_currencies_code_iso` (`code_iso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_departements`
--

DROP TABLE IF EXISTS `doli_c_departements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_departements` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code_departement` varchar(6) NOT NULL,
  `fk_region` int(11) DEFAULT NULL,
  `cheflieu` varchar(50) DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `ncc` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_departements` (`code_departement`,`fk_region`),
  KEY `idx_departements_fk_region` (`fk_region`),
  CONSTRAINT `fk_departements_code_region` FOREIGN KEY (`fk_region`) REFERENCES `doli_c_regions` (`code_region`)
) ENGINE=InnoDB AUTO_INCREMENT=1176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_ecotaxe`
--

DROP TABLE IF EXISTS `doli_c_ecotaxe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_ecotaxe` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_ecotaxe` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_effectif`
--

DROP TABLE IF EXISTS `doli_c_effectif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_effectif` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_effectif` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_email_senderprofile`
--

DROP TABLE IF EXISTS `doli_c_email_senderprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_email_senderprofile` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `private` smallint(6) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `email` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `signature` text COLLATE latin1_german2_ci,
  `position` smallint(6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_email_senderprofile` (`entity`,`label`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_email_templates`
--

DROP TABLE IF EXISTS `doli_c_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_email_templates` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `module` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `type_template` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `lang` varchar(6) COLLATE latin1_german2_ci DEFAULT NULL,
  `private` smallint(6) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `position` smallint(6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `topic` text COLLATE latin1_german2_ci,
  `content` mediumtext COLLATE latin1_german2_ci,
  `content_lines` text COLLATE latin1_german2_ci,
  `enabled` varchar(255) COLLATE latin1_german2_ci DEFAULT '1',
  `joinfiles` varchar(255) COLLATE latin1_german2_ci DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_email_templates` (`entity`,`label`,`lang`),
  KEY `idx_type` (`type_template`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_exp_tax_cat`
--

DROP TABLE IF EXISTS `doli_c_exp_tax_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_exp_tax_cat` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(48) COLLATE latin1_german2_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_exp_tax_range`
--

DROP TABLE IF EXISTS `doli_c_exp_tax_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_exp_tax_range` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_c_exp_tax_cat` int(11) NOT NULL DEFAULT '1',
  `range_ik` double NOT NULL DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1',
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_field_list`
--

DROP TABLE IF EXISTS `doli_c_field_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_field_list` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `element` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(32) NOT NULL,
  `alias` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `align` varchar(6) DEFAULT 'left',
  `sort` tinyint(4) NOT NULL DEFAULT '1',
  `search` tinyint(4) NOT NULL DEFAULT '0',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `enabled` varchar(255) DEFAULT '1',
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_format_cards`
--

DROP TABLE IF EXISTS `doli_c_format_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_format_cards` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `name` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `paper_size` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `orientation` varchar(1) COLLATE latin1_german2_ci NOT NULL,
  `metric` varchar(5) COLLATE latin1_german2_ci NOT NULL,
  `leftmargin` double(24,8) NOT NULL,
  `topmargin` double(24,8) NOT NULL,
  `nx` int(11) NOT NULL,
  `ny` int(11) NOT NULL,
  `spacex` double(24,8) NOT NULL,
  `spacey` double(24,8) NOT NULL,
  `width` double(24,8) NOT NULL,
  `height` double(24,8) NOT NULL,
  `font_size` int(11) NOT NULL,
  `custom_x` double(24,8) NOT NULL,
  `custom_y` double(24,8) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_forme_juridique`
--

DROP TABLE IF EXISTS `doli_c_forme_juridique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_forme_juridique` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `isvatexempted` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_forme_juridique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_holiday_types`
--

DROP TABLE IF EXISTS `doli_c_holiday_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_holiday_types` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) COLLATE latin1_german2_ci NOT NULL,
  `label` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `affect` int(11) NOT NULL,
  `delay` int(11) NOT NULL,
  `newByMonth` double(8,5) NOT NULL DEFAULT '0.00000',
  `fk_country` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_holiday_types` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_hrm_department`
--

DROP TABLE IF EXISTS `doli_c_hrm_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_hrm_department` (
  `rowid` int(11) NOT NULL,
  `pos` smallint(6) NOT NULL DEFAULT '0',
  `code` varchar(16) COLLATE latin1_german2_ci NOT NULL,
  `label` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `active` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_hrm_function`
--

DROP TABLE IF EXISTS `doli_c_hrm_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_hrm_function` (
  `rowid` int(11) NOT NULL,
  `pos` smallint(6) NOT NULL DEFAULT '0',
  `code` varchar(16) COLLATE latin1_german2_ci NOT NULL,
  `label` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `c_level` smallint(6) NOT NULL DEFAULT '0',
  `active` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_hrm_public_holiday`
--

DROP TABLE IF EXISTS `doli_c_hrm_public_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_hrm_public_holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '0',
  `fk_country` int(11) DEFAULT NULL,
  `code` varchar(62) COLLATE latin1_german2_ci DEFAULT NULL,
  `dayrule` varchar(64) COLLATE latin1_german2_ci DEFAULT '',
  `day` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_hrm_public_holiday` (`entity`,`code`),
  UNIQUE KEY `uk_c_hrm_public_holiday2` (`entity`,`fk_country`,`dayrule`,`day`,`month`,`year`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_incoterms`
--

DROP TABLE IF EXISTS `doli_c_incoterms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_incoterms` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE latin1_german2_ci NOT NULL,
  `libelle` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_incoterms` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_input_method`
--

DROP TABLE IF EXISTS `doli_c_input_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_input_method` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `libelle` varchar(60) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_input_method` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_input_reason`
--

DROP TABLE IF EXISTS `doli_c_input_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_input_reason` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `label` varchar(60) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_input_reason` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_lead_status`
--

DROP TABLE IF EXISTS `doli_c_lead_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_lead_status` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  `label` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `percent` double(5,2) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_paiement`
--

DROP TABLE IF EXISTS `doli_c_paiement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_paiement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `code` varchar(6) NOT NULL,
  `libelle` varchar(62) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code` varchar(32) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_paiement_code` (`entity`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_paiement_temp`
--

DROP TABLE IF EXISTS `doli_c_paiement_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_paiement_temp` (
  `id` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `code` varchar(6) CHARACTER SET utf8 NOT NULL,
  `libelle` varchar(62) CHARACTER SET utf8 DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `module` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_paper_format`
--

DROP TABLE IF EXISTS `doli_c_paper_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_paper_format` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `label` varchar(50) NOT NULL,
  `width` float(6,2) DEFAULT '0.00',
  `height` float(6,2) DEFAULT '0.00',
  `unit` varchar(5) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_payment_term`
--

DROP TABLE IF EXISTS `doli_c_payment_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_payment_term` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `code` varchar(16) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `libelle` varchar(255) DEFAULT NULL,
  `libelle_facture` text,
  `type_cdr` tinyint(4) DEFAULT NULL,
  `nbjour` smallint(6) DEFAULT NULL,
  `decalage` smallint(6) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_payment_term_code` (`entity`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_price_expression`
--

DROP TABLE IF EXISTS `doli_c_price_expression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_price_expression` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `expression` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_price_global_variable`
--

DROP TABLE IF EXISTS `doli_c_price_global_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_price_global_variable` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `description` text COLLATE latin1_german2_ci,
  `value` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_price_global_variable_updater`
--

DROP TABLE IF EXISTS `doli_c_price_global_variable_updater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_price_global_variable_updater` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `description` text COLLATE latin1_german2_ci,
  `parameters` text COLLATE latin1_german2_ci,
  `fk_variable` int(11) NOT NULL,
  `update_interval` int(11) DEFAULT '0',
  `next_update` int(11) DEFAULT '0',
  `last_status` text COLLATE latin1_german2_ci,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_propalst`
--

DROP TABLE IF EXISTS `doli_c_propalst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_propalst` (
  `id` smallint(6) NOT NULL,
  `code` varchar(12) NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_propalst` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_prospectlevel`
--

DROP TABLE IF EXISTS `doli_c_prospectlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_prospectlevel` (
  `code` varchar(12) NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `active` smallint(6) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_regions`
--

DROP TABLE IF EXISTS `doli_c_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_regions` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code_region` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `cheflieu` varchar(50) DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `code_region` (`code_region`),
  UNIQUE KEY `uk_code_region` (`code_region`),
  KEY `idx_c_regions_fk_pays` (`fk_pays`)
) ENGINE=InnoDB AUTO_INCREMENT=23222 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_revenuestamp`
--

DROP TABLE IF EXISTS `doli_c_revenuestamp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_revenuestamp` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pays` int(11) NOT NULL,
  `taux` double NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code_sell` varchar(32) DEFAULT NULL,
  `accountancy_code_buy` varchar(32) DEFAULT NULL,
  `revenuestamp_type` varchar(16) NOT NULL DEFAULT 'fixed',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_shipment_mode`
--

DROP TABLE IF EXISTS `doli_c_shipment_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_shipment_mode` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(30) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `description` text,
  `tracking` varchar(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `module` varchar(32) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_shipment_mode` (`code`,`entity`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_shipment_package_type`
--

DROP TABLE IF EXISTS `doli_c_shipment_package_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_shipment_package_type` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `description` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_socialnetworks`
--

DROP TABLE IF EXISTS `doli_c_socialnetworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_socialnetworks` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `code` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `label` varchar(150) COLLATE latin1_german2_ci DEFAULT NULL,
  `url` text COLLATE latin1_german2_ci,
  `icon` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_c_socialnetworks_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_stcomm`
--

DROP TABLE IF EXISTS `doli_c_stcomm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_stcomm` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `picto` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_stcomm` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_ticket_category`
--

DROP TABLE IF EXISTS `doli_c_ticket_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_ticket_category` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT '1',
  `code` varchar(32) COLLATE latin1_german2_ci NOT NULL,
  `pos` varchar(32) COLLATE latin1_german2_ci NOT NULL,
  `label` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `active` int(11) DEFAULT '1',
  `use_default` int(11) DEFAULT '1',
  `description` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_code` (`code`,`entity`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_ticket_severity`
--

DROP TABLE IF EXISTS `doli_c_ticket_severity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_ticket_severity` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT '1',
  `code` varchar(32) COLLATE latin1_german2_ci NOT NULL,
  `pos` varchar(32) COLLATE latin1_german2_ci NOT NULL,
  `label` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `color` varchar(10) COLLATE latin1_german2_ci NOT NULL,
  `active` int(11) DEFAULT '1',
  `use_default` int(11) DEFAULT '1',
  `description` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_code` (`code`,`entity`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_ticket_type`
--

DROP TABLE IF EXISTS `doli_c_ticket_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_ticket_type` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT '1',
  `code` varchar(32) COLLATE latin1_german2_ci NOT NULL,
  `pos` varchar(32) COLLATE latin1_german2_ci NOT NULL,
  `label` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `active` int(11) DEFAULT '1',
  `use_default` int(11) DEFAULT '1',
  `description` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_code` (`code`,`entity`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_tva`
--

DROP TABLE IF EXISTS `doli_c_tva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_tva` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_pays` int(11) NOT NULL,
  `code` varchar(10) DEFAULT '',
  `taux` double NOT NULL,
  `localtax1` varchar(20) DEFAULT NULL,
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2` varchar(20) DEFAULT NULL,
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `note` varchar(128) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code_sell` varchar(32) DEFAULT NULL,
  `accountancy_code_buy` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_tva_id` (`fk_pays`,`code`,`taux`,`recuperableonly`)
) ENGINE=InnoDB AUTO_INCREMENT=2473 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_type_contact`
--

DROP TABLE IF EXISTS `doli_c_type_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_type_contact` (
  `rowid` int(11) NOT NULL,
  `element` varchar(30) NOT NULL,
  `source` varchar(8) NOT NULL DEFAULT 'external',
  `code` varchar(32) NOT NULL,
  `libelle` varchar(64) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_type_contact_id` (`element`,`source`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_type_container`
--

DROP TABLE IF EXISTS `doli_c_type_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_type_container` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) COLLATE latin1_german2_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `label` varchar(64) COLLATE latin1_german2_ci NOT NULL,
  `module` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_type_container_id` (`code`,`entity`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_type_fees`
--

DROP TABLE IF EXISTS `doli_c_type_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_type_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `accountancy_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_type_fees` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_type_resource`
--

DROP TABLE IF EXISTS `doli_c_type_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_type_resource` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `label` varchar(64) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_type_resource_id` (`label`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_typent`
--

DROP TABLE IF EXISTS `doli_c_typent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_typent` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(64) DEFAULT NULL,
  `fk_country` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_typent` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_units`
--

DROP TABLE IF EXISTS `doli_c_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_units` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE latin1_german2_ci DEFAULT NULL,
  `label` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `short_label` varchar(5) COLLATE latin1_german2_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `scale` int(11) DEFAULT NULL,
  `unit_type` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_units_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_c_ziptown`
--

DROP TABLE IF EXISTS `doli_c_ziptown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_c_ziptown` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `fk_county` int(11) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(10) NOT NULL,
  `town` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_ziptown_fk_pays` (`zip`,`town`,`fk_pays`),
  KEY `idx_c_ziptown_fk_county` (`fk_county`),
  KEY `idx_c_ziptown_fk_pays` (`fk_pays`),
  KEY `idx_c_ziptown_zip` (`zip`),
  CONSTRAINT `fk_c_ziptown_fk_pays` FOREIGN KEY (`fk_pays`) REFERENCES `doli_c_country` (`rowid`),
  CONSTRAINT `fk_c_ziptown_fk_county` FOREIGN KEY (`fk_county`) REFERENCES `doli_c_departements` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie`
--

DROP TABLE IF EXISTS `doli_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_parent` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `description` text,
  `fk_soc` int(11) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `import_key` varchar(14) DEFAULT NULL,
  `color` varchar(8) DEFAULT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_categorie_ref` (`entity`,`fk_parent`,`label`,`type`),
  KEY `idx_categorie_type` (`type`),
  KEY `idx_categorie_label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie_account`
--

DROP TABLE IF EXISTS `doli_categorie_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie_account` (
  `fk_categorie` int(11) NOT NULL,
  `fk_account` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_account`),
  KEY `idx_categorie_account_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_account_fk_account` (`fk_account`),
  CONSTRAINT `fk_categorie_account_fk_account` FOREIGN KEY (`fk_account`) REFERENCES `doli_bank_account` (`rowid`),
  CONSTRAINT `fk_categorie_account_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `doli_categorie` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie_contact`
--

DROP TABLE IF EXISTS `doli_categorie_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie_contact` (
  `fk_categorie` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_socpeople`),
  KEY `idx_categorie_contact_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_contact_fk_socpeople` (`fk_socpeople`),
  CONSTRAINT `fk_categorie_contact_fk_socpeople` FOREIGN KEY (`fk_socpeople`) REFERENCES `doli_socpeople` (`rowid`),
  CONSTRAINT `fk_categorie_contact_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `doli_categorie` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie_fournisseur`
--

DROP TABLE IF EXISTS `doli_categorie_fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie_fournisseur` (
  `fk_categorie` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_soc`),
  KEY `idx_categorie_fournisseur_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_fournisseur_fk_societe` (`fk_soc`),
  CONSTRAINT `fk_categorie_fournisseur_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_categorie_fournisseur_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `doli_categorie` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie_lang`
--

DROP TABLE IF EXISTS `doli_categorie_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie_lang` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_category` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_category_lang` (`fk_category`,`lang`),
  CONSTRAINT `fk_category_lang_fk_category` FOREIGN KEY (`fk_category`) REFERENCES `doli_categorie` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie_member`
--

DROP TABLE IF EXISTS `doli_categorie_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie_member` (
  `fk_categorie` int(11) NOT NULL,
  `fk_member` int(11) NOT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_member`),
  KEY `idx_categorie_member_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_member_fk_member` (`fk_member`),
  CONSTRAINT `fk_categorie_member_member_rowid` FOREIGN KEY (`fk_member`) REFERENCES `doli_adherent` (`rowid`),
  CONSTRAINT `fk_categorie_member_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `doli_categorie` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie_product`
--

DROP TABLE IF EXISTS `doli_categorie_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie_product` (
  `fk_categorie` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_product`),
  KEY `idx_categorie_product_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_product_fk_product` (`fk_product`),
  CONSTRAINT `fk_categorie_product_product_rowid` FOREIGN KEY (`fk_product`) REFERENCES `doli_product` (`rowid`),
  CONSTRAINT `fk_categorie_product_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `doli_categorie` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie_project`
--

DROP TABLE IF EXISTS `doli_categorie_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie_project` (
  `fk_categorie` int(11) NOT NULL,
  `fk_project` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_project`),
  KEY `idx_categorie_project_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_project_fk_project` (`fk_project`),
  CONSTRAINT `fk_categorie_project_fk_project_rowid` FOREIGN KEY (`fk_project`) REFERENCES `doli_projet` (`rowid`),
  CONSTRAINT `fk_categorie_project_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `doli_categorie` (`rowid`),
  CONSTRAINT `fk_categorie_project_fk_project` FOREIGN KEY (`fk_project`) REFERENCES `doli_projet` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie_societe`
--

DROP TABLE IF EXISTS `doli_categorie_societe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie_societe` (
  `fk_categorie` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_soc`),
  KEY `idx_categorie_societe_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_societe_fk_societe` (`fk_soc`),
  CONSTRAINT `fk_categorie_societe_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_categorie_societe_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `doli_categorie` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie_user`
--

DROP TABLE IF EXISTS `doli_categorie_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie_user` (
  `fk_categorie` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_user`),
  KEY `idx_categorie_user_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_user_fk_user` (`fk_user`),
  CONSTRAINT `fk_categorie_user_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_categorie_user_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `doli_categorie` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categorie_warehouse`
--

DROP TABLE IF EXISTS `doli_categorie_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categorie_warehouse` (
  `fk_categorie` int(11) NOT NULL,
  `fk_warehouse` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`fk_categorie`,`fk_warehouse`),
  KEY `idx_categorie_warehouse_fk_categorie` (`fk_categorie`),
  KEY `idx_categorie_warehouse_fk_warehouse` (`fk_warehouse`),
  CONSTRAINT `fk_categorie_warehouse_fk_warehouse_rowid` FOREIGN KEY (`fk_warehouse`) REFERENCES `doli_entrepot` (`rowid`),
  CONSTRAINT `fk_categorie_warehouse_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `doli_categorie` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_categories_extrafields`
--

DROP TABLE IF EXISTS `doli_categories_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_categories_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_categories_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_chargesociales`
--

DROP TABLE IF EXISTS `doli_chargesociales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_chargesociales` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_ech` datetime NOT NULL,
  `libelle` varchar(80) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_type` int(11) NOT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `periode` date DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `ref` varchar(16) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_commande`
--

DROP TABLE IF EXISTS `doli_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_commande` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `source` smallint(6) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `amount_ht` double(24,8) DEFAULT '0.00000000',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `facture` tinyint(4) DEFAULT '0',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `fk_warehouse` int(11) DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `fk_input_reason` int(11) DEFAULT NULL,
  `fk_delivery_address` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `last_main_doc` varchar(255) DEFAULT NULL,
  `module_source` varchar(32) DEFAULT NULL,
  `pos_source` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_commande_ref` (`ref`,`entity`),
  KEY `idx_commande_fk_soc` (`fk_soc`),
  KEY `idx_commande_fk_user_author` (`fk_user_author`),
  KEY `idx_commande_fk_user_valid` (`fk_user_valid`),
  KEY `idx_commande_fk_user_cloture` (`fk_user_cloture`),
  KEY `idx_commande_fk_projet` (`fk_projet`),
  KEY `idx_commande_fk_account` (`fk_account`),
  KEY `idx_commande_fk_currency` (`fk_currency`),
  CONSTRAINT `fk_commande_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `doli_projet` (`rowid`),
  CONSTRAINT `fk_commande_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_commande_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_commande_fk_user_cloture` FOREIGN KEY (`fk_user_cloture`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_commande_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_commande_extrafields`
--

DROP TABLE IF EXISTS `doli_commande_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_commande_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_commande_fournisseur`
--

DROP TABLE IF EXISTS `doli_commande_fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_commande_fournisseur` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_supplier` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_approve` datetime DEFAULT NULL,
  `date_approve2` datetime DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_approve` int(11) DEFAULT NULL,
  `fk_user_approve2` int(11) DEFAULT NULL,
  `source` smallint(6) NOT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `billed` smallint(6) DEFAULT '0',
  `amount_ht` double(24,8) DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `date_livraison` datetime DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `fk_input_method` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `last_main_doc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_commande_fournisseur_ref` (`ref`,`fk_soc`,`entity`),
  KEY `idx_commande_fournisseur_fk_soc` (`fk_soc`),
  KEY `billed` (`billed`),
  CONSTRAINT `fk_commande_fournisseur_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_commande_fournisseur_dispatch`
--

DROP TABLE IF EXISTS `doli_commande_fournisseur_dispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_commande_fournisseur_dispatch` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_commande` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `fk_commandefourndet` int(11) NOT NULL DEFAULT '0',
  `qty` float DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `batch` varchar(30) DEFAULT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_reception` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_fournisseur_dispatch_fk_commande` (`fk_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_commande_fournisseur_extrafields`
--

DROP TABLE IF EXISTS `doli_commande_fournisseur_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_commande_fournisseur_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_fournisseur_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_commande_fournisseur_log`
--

DROP TABLE IF EXISTS `doli_commande_fournisseur_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_commande_fournisseur_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datelog` datetime NOT NULL,
  `fk_commande` int(11) NOT NULL,
  `fk_statut` smallint(6) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_commande_fournisseurdet`
--

DROP TABLE IF EXISTS `doli_commande_fournisseurdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_commande_fournisseurdet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_commande` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `vat_src_code` varchar(10) DEFAULT '',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `fk_commande_fournisseurdet_fk_unit` (`fk_unit`),
  CONSTRAINT `fk_commande_fournisseurdet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `doli_c_units` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_commande_fournisseurdet_extrafields`
--

DROP TABLE IF EXISTS `doli_commande_fournisseurdet_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_commande_fournisseurdet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commande_fournisseurdet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_commandedet`
--

DROP TABLE IF EXISTS `doli_commandedet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_commandedet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_commande` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT NULL,
  `vat_src_code` varchar(10) DEFAULT '',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(10) unsigned DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `fk_commandefourndet` int(11) DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `idx_commandedet_fk_commande` (`fk_commande`),
  KEY `idx_commandedet_fk_product` (`fk_product`),
  KEY `fk_commandedet_fk_unit` (`fk_unit`),
  CONSTRAINT `fk_commandedet_fk_commande` FOREIGN KEY (`fk_commande`) REFERENCES `doli_commande` (`rowid`),
  CONSTRAINT `fk_commandedet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `doli_c_units` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_commandedet_extrafields`
--

DROP TABLE IF EXISTS `doli_commandedet_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_commandedet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_commandedet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_comment`
--

DROP TABLE IF EXISTS `doli_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_comment` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text COLLATE latin1_german2_ci NOT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_element` int(11) DEFAULT NULL,
  `element_type` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `entity` int(11) DEFAULT '1',
  `import_key` varchar(125) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_const`
--

DROP TABLE IF EXISTS `doli_const`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_const` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `type` varchar(64) DEFAULT 'string',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `note` text,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_const` (`name`,`entity`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_contrat`
--

DROP TABLE IF EXISTS `doli_contrat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_contrat` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) DEFAULT NULL,
  `ref_supplier` varchar(50) DEFAULT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_contrat` datetime DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `mise_en_service` datetime DEFAULT NULL,
  `fin_validite` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_commercial_signature` int(11) DEFAULT NULL,
  `fk_commercial_suivi` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL DEFAULT '0',
  `fk_user_mise_en_service` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `ref_customer` varchar(50) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `last_main_doc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_contrat_ref` (`ref`,`entity`),
  KEY `idx_contrat_fk_soc` (`fk_soc`),
  KEY `idx_contrat_fk_user_author` (`fk_user_author`),
  CONSTRAINT `fk_contrat_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_contrat_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_contrat_extrafields`
--

DROP TABLE IF EXISTS `doli_contrat_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_contrat_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_contrat_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_contratdet`
--

DROP TABLE IF EXISTS `doli_contratdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_contratdet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_contrat` int(11) NOT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `label` text,
  `description` text,
  `fk_remise_except` int(11) DEFAULT NULL,
  `date_commande` datetime DEFAULT NULL,
  `date_ouverture_prevue` datetime DEFAULT NULL,
  `date_ouverture` datetime DEFAULT NULL,
  `date_fin_validite` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `vat_src_code` varchar(10) DEFAULT '',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double NOT NULL,
  `remise_percent` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT '0.00000000',
  `price_ht` double DEFAULT NULL,
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '1',
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT NULL,
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL DEFAULT '0',
  `fk_user_ouverture` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `commentaire` text,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `idx_contratdet_fk_contrat` (`fk_contrat`),
  KEY `idx_contratdet_fk_product` (`fk_product`),
  KEY `idx_contratdet_date_ouverture_prevue` (`date_ouverture_prevue`),
  KEY `idx_contratdet_date_ouverture` (`date_ouverture`),
  KEY `idx_contratdet_date_fin_validite` (`date_fin_validite`),
  KEY `fk_contratdet_fk_unit` (`fk_unit`),
  CONSTRAINT `fk_contratdet_fk_contrat` FOREIGN KEY (`fk_contrat`) REFERENCES `doli_contrat` (`rowid`),
  CONSTRAINT `fk_contratdet_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `doli_product` (`rowid`),
  CONSTRAINT `fk_contratdet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `doli_c_units` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_contratdet_extrafields`
--

DROP TABLE IF EXISTS `doli_contratdet_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_contratdet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_contratdet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_contratdet_log`
--

DROP TABLE IF EXISTS `doli_contratdet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_contratdet_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_contratdet` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `statut` smallint(6) NOT NULL,
  `fk_user_author` int(11) NOT NULL,
  `commentaire` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_contratdet_log_fk_contratdet` (`fk_contratdet`),
  KEY `idx_contratdet_log_date` (`date`),
  CONSTRAINT `fk_contratdet_log_fk_contratdet` FOREIGN KEY (`fk_contratdet`) REFERENCES `doli_contratdet` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_cronjob`
--

DROP TABLE IF EXISTS `doli_cronjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_cronjob` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `jobtype` varchar(10) NOT NULL,
  `label` text NOT NULL,
  `command` varchar(255) DEFAULT NULL,
  `classesname` varchar(255) DEFAULT NULL,
  `objectname` varchar(255) DEFAULT NULL,
  `methodename` varchar(255) DEFAULT NULL,
  `params` text,
  `md5params` varchar(32) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `datelastrun` datetime DEFAULT NULL,
  `datenextrun` datetime DEFAULT NULL,
  `datestart` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL,
  `datelastresult` datetime DEFAULT NULL,
  `lastresult` text,
  `lastoutput` text,
  `unitfrequency` varchar(255) NOT NULL DEFAULT '3600',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `nbrun` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `note` text,
  `libname` varchar(255) DEFAULT NULL,
  `entity` int(11) DEFAULT '0',
  `maxrun` int(11) NOT NULL DEFAULT '0',
  `autodelete` int(11) DEFAULT '0',
  `fk_mailing` int(11) DEFAULT NULL,
  `test` varchar(255) DEFAULT '1',
  `processing` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_default_values`
--

DROP TABLE IF EXISTS `doli_default_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_default_values` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `param` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `value` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_default_values` (`type`,`entity`,`user_id`,`page`,`param`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_deplacement`
--

DROP TABLE IF EXISTS `doli_deplacement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_deplacement` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dated` datetime DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `type` varchar(12) NOT NULL,
  `fk_statut` int(11) NOT NULL DEFAULT '1',
  `km` double DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_document_model`
--

DROP TABLE IF EXISTS `doli_document_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_document_model` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_document_model` (`nom`,`type`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_don`
--

DROP TABLE IF EXISTS `doli_don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_don` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `datedon` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `fk_payment` int(11) DEFAULT NULL,
  `paid` smallint(6) NOT NULL DEFAULT '0',
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `societe` varchar(50) DEFAULT NULL,
  `address` text,
  `zip` varchar(30) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `fk_country` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(24) DEFAULT NULL,
  `phone_mobile` varchar(24) DEFAULT NULL,
  `public` smallint(6) NOT NULL DEFAULT '1',
  `fk_projet` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_don_extrafields`
--

DROP TABLE IF EXISTS `doli_don_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_don_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_don_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_ecm_directories`
--

DROP TABLE IF EXISTS `doli_ecm_directories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_ecm_directories` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_parent` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cachenbofdoc` int(11) NOT NULL DEFAULT '0',
  `fullpath` varchar(750) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `date_c` datetime DEFAULT NULL,
  `date_m` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_c` int(11) DEFAULT NULL,
  `fk_user_m` int(11) DEFAULT NULL,
  `acl` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_ecm_directories` (`label`,`fk_parent`,`entity`),
  KEY `idx_ecm_directories_fk_user_c` (`fk_user_c`),
  KEY `idx_ecm_directories_fk_user_m` (`fk_user_m`),
  CONSTRAINT `fk_ecm_directories_fk_user_c` FOREIGN KEY (`fk_user_c`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_ecm_directories_fk_user_m` FOREIGN KEY (`fk_user_m`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_ecm_files`
--

DROP TABLE IF EXISTS `doli_ecm_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_ecm_files` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `label` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `share` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `filename` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `filepath` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `fullpath_orig` varchar(2048) COLLATE latin1_german2_ci DEFAULT NULL,
  `description` text COLLATE latin1_german2_ci,
  `keywords` text COLLATE latin1_german2_ci,
  `cover` text COLLATE latin1_german2_ci,
  `gen_or_uploaded` varchar(12) COLLATE latin1_german2_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_c` datetime DEFAULT NULL,
  `date_m` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_c` int(11) DEFAULT NULL,
  `fk_user_m` int(11) DEFAULT NULL,
  `acl` text COLLATE latin1_german2_ci,
  `position` int(11) DEFAULT NULL,
  `keyword` varchar(750) COLLATE latin1_german2_ci DEFAULT NULL,
  `src_object_type` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `src_object_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_ecm_files` (`filepath`,`filename`,`entity`),
  KEY `idx_ecm_files_label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_element_contact`
--

DROP TABLE IF EXISTS `doli_element_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_element_contact` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datecreate` datetime DEFAULT NULL,
  `statut` smallint(6) DEFAULT '5',
  `element_id` int(11) NOT NULL,
  `fk_c_type_contact` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_element_contact_idx1` (`element_id`,`fk_c_type_contact`,`fk_socpeople`),
  KEY `fk_element_contact_fk_c_type_contact` (`fk_c_type_contact`),
  KEY `idx_element_contact_fk_socpeople` (`fk_socpeople`),
  CONSTRAINT `fk_element_contact_fk_c_type_contact` FOREIGN KEY (`fk_c_type_contact`) REFERENCES `doli_c_type_contact` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_element_element`
--

DROP TABLE IF EXISTS `doli_element_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_element_element` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_source` int(11) NOT NULL,
  `sourcetype` varchar(32) NOT NULL,
  `fk_target` int(11) NOT NULL,
  `targettype` varchar(32) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_element_element_idx1` (`fk_source`,`sourcetype`,`fk_target`,`targettype`),
  KEY `idx_element_element_fk_target` (`fk_target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_element_lock`
--

DROP TABLE IF EXISTS `doli_element_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_element_lock` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_element` int(11) NOT NULL,
  `elementtype` varchar(32) NOT NULL,
  `datel` datetime DEFAULT NULL,
  `datem` datetime DEFAULT NULL,
  `sessionid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_element_resources`
--

DROP TABLE IF EXISTS `doli_element_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_element_resources` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(64) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `element_type` varchar(64) DEFAULT NULL,
  `busy` int(11) DEFAULT NULL,
  `mandatory` int(11) DEFAULT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `duree` double DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_element_resources_idx1` (`resource_id`,`resource_type`,`element_id`,`element_type`),
  KEY `idx_element_element_element_id` (`element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_element_tag`
--

DROP TABLE IF EXISTS `doli_element_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_element_tag` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `lang` varchar(5) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `fk_element` int(11) NOT NULL,
  `element` varchar(64) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_element_tag` (`entity`,`lang`,`tag`,`fk_element`,`element`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_emailcollector_emailcollector`
--

DROP TABLE IF EXISTS `doli_emailcollector_emailcollector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_emailcollector_emailcollector` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `description` text COLLATE latin1_german2_ci,
  `host` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `login` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `password` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `source_directory` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `target_directory` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `datelastresult` datetime DEFAULT NULL,
  `codelastresult` varchar(16) COLLATE latin1_german2_ci DEFAULT NULL,
  `lastresult` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `note_public` text COLLATE latin1_german2_ci,
  `note_private` text COLLATE latin1_german2_ci,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `datelastok` datetime DEFAULT NULL,
  `maxemailpercollect` int(11) DEFAULT '100',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_emailcollector_emailcollector_ref` (`ref`,`entity`),
  KEY `idx_emailcollector_entity` (`entity`),
  KEY `idx_emailcollector_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_emailcollector_emailcollectoraction`
--

DROP TABLE IF EXISTS `doli_emailcollector_emailcollectoraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_emailcollector_emailcollectoraction` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_emailcollector` int(11) NOT NULL,
  `type` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `actionparam` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_emailcollector_emailcollectoraction` (`fk_emailcollector`,`type`),
  KEY `idx_emailcollector_fk_emailcollector` (`fk_emailcollector`),
  CONSTRAINT `fk_emailcollectoraction_fk_emailcollector` FOREIGN KEY (`fk_emailcollector`) REFERENCES `doli_emailcollector_emailcollector` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_emailcollector_emailcollectorfilter`
--

DROP TABLE IF EXISTS `doli_emailcollector_emailcollectorfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_emailcollector_emailcollectorfilter` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_emailcollector` int(11) NOT NULL,
  `type` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `rulevalue` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_emailcollector_emailcollectorfilter` (`fk_emailcollector`,`type`,`rulevalue`),
  KEY `idx_emailcollector_fk_emailcollector` (`fk_emailcollector`),
  CONSTRAINT `fk_emailcollectorfilter_fk_emailcollector` FOREIGN KEY (`fk_emailcollector`) REFERENCES `doli_emailcollector_emailcollector` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_entrepot`
--

DROP TABLE IF EXISTS `doli_entrepot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_entrepot` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `description` text,
  `lieu` varchar(64) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `statut` tinyint(4) DEFAULT '1',
  `fk_user_author` int(11) DEFAULT NULL,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `fk_parent` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_entrepot_label` (`ref`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_entrepot_extrafields`
--

DROP TABLE IF EXISTS `doli_entrepot_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_entrepot_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_entrepot_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_establishment`
--

DROP TABLE IF EXISTS `doli_establishment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_establishment` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `address` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `zip` varchar(25) COLLATE latin1_german2_ci DEFAULT NULL,
  `town` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_state` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT '0',
  `profid1` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `profid2` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `profid3` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(6) DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_event_element`
--

DROP TABLE IF EXISTS `doli_event_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_event_element` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_source` int(11) NOT NULL,
  `fk_target` int(11) NOT NULL,
  `targettype` varchar(32) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_events`
--

DROP TABLE IF EXISTS `doli_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_events` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(32) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `dateevent` datetime DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `description` varchar(250) NOT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `fk_object` int(11) DEFAULT NULL,
  `prefix_session` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_events_dateevent` (`dateevent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expedition`
--

DROP TABLE IF EXISTS `doli_expedition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expedition` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(30) DEFAULT NULL,
  `ref_customer` varchar(30) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_expedition` datetime DEFAULT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `height` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `size_units` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `weight_units` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `billed` smallint(6) DEFAULT '0',
  `fk_user_modif` int(11) DEFAULT NULL,
  `last_main_doc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_expedition_uk_ref` (`ref`,`entity`),
  KEY `idx_expedition_fk_soc` (`fk_soc`),
  KEY `idx_expedition_fk_user_author` (`fk_user_author`),
  KEY `idx_expedition_fk_user_valid` (`fk_user_valid`),
  KEY `idx_expedition_fk_shipping_method` (`fk_shipping_method`),
  CONSTRAINT `fk_expedition_fk_shipping_method` FOREIGN KEY (`fk_shipping_method`) REFERENCES `doli_c_shipment_mode` (`rowid`),
  CONSTRAINT `fk_expedition_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_expedition_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_expedition_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expedition_extrafields`
--

DROP TABLE IF EXISTS `doli_expedition_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expedition_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_expedition_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expedition_package`
--

DROP TABLE IF EXISTS `doli_expedition_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expedition_package` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expedition` int(11) NOT NULL,
  `description` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `value` double(24,8) DEFAULT '0.00000000',
  `fk_parcel_type` int(11) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `size` float DEFAULT NULL,
  `size_units` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `weight_units` int(11) DEFAULT NULL,
  `dangerous_goods` smallint(6) DEFAULT '0',
  `tail_lift` smallint(6) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expeditiondet`
--

DROP TABLE IF EXISTS `doli_expeditiondet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expeditiondet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expedition` int(11) NOT NULL,
  `fk_origin_line` int(11) DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_expeditiondet_fk_expedition` (`fk_expedition`),
  KEY `idx_expeditiondet_fk_origin_line` (`fk_origin_line`),
  CONSTRAINT `fk_expeditiondet_fk_expedition` FOREIGN KEY (`fk_expedition`) REFERENCES `doli_expedition` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expeditiondet_batch`
--

DROP TABLE IF EXISTS `doli_expeditiondet_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expeditiondet_batch` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expeditiondet` int(11) NOT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `batch` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `fk_origin_stock` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_fk_expeditiondet` (`fk_expeditiondet`),
  CONSTRAINT `fk_expeditiondet_batch_fk_expeditiondet` FOREIGN KEY (`fk_expeditiondet`) REFERENCES `doli_expeditiondet` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expeditiondet_extrafields`
--

DROP TABLE IF EXISTS `doli_expeditiondet_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expeditiondet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_expeditiondet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expensereport`
--

DROP TABLE IF EXISTS `doli_expensereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expensereport` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_number_int` int(11) DEFAULT NULL,
  `ref_ext` int(11) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `date_create` datetime NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_approve` datetime DEFAULT NULL,
  `date_refuse` datetime DEFAULT NULL,
  `date_cancel` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_validator` int(11) DEFAULT NULL,
  `fk_user_approve` int(11) DEFAULT NULL,
  `fk_user_refuse` int(11) DEFAULT NULL,
  `fk_user_cancel` int(11) DEFAULT NULL,
  `fk_statut` int(11) NOT NULL,
  `fk_c_paiement` int(11) DEFAULT NULL,
  `paid` smallint(6) NOT NULL DEFAULT '0',
  `note_public` text COLLATE latin1_german2_ci,
  `note_private` text COLLATE latin1_german2_ci,
  `detail_refuse` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `detail_cancel` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `integration_compta` int(11) DEFAULT NULL,
  `fk_bank_account` int(11) DEFAULT NULL,
  `model_pdf` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_expensereport_uk_ref` (`ref`,`entity`),
  KEY `idx_expensereport_date_debut` (`date_debut`),
  KEY `idx_expensereport_date_fin` (`date_fin`),
  KEY `idx_expensereport_fk_statut` (`fk_statut`),
  KEY `idx_expensereport_fk_user_author` (`fk_user_author`),
  KEY `idx_expensereport_fk_user_valid` (`fk_user_valid`),
  KEY `idx_expensereport_fk_user_approve` (`fk_user_approve`),
  KEY `idx_expensereport_fk_refuse` (`fk_user_approve`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expensereport_det`
--

DROP TABLE IF EXISTS `doli_expensereport_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expensereport_det` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expensereport` int(11) NOT NULL,
  `docnumber` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_c_type_fees` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `comments` text COLLATE latin1_german2_ci NOT NULL,
  `product_type` int(11) DEFAULT '-1',
  `qty` double NOT NULL,
  `subprice` double(24,8) NOT NULL DEFAULT '0.00000000',
  `value_unit` double(24,8) NOT NULL,
  `remise_percent` double DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  `total_ht` double(24,8) NOT NULL DEFAULT '0.00000000',
  `total_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) NOT NULL DEFAULT '0.00000000',
  `date` date NOT NULL,
  `info_bits` int(11) DEFAULT '0',
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_facture` int(11) DEFAULT '0',
  `fk_code_ventilation` int(11) DEFAULT '0',
  `vat_src_code` varchar(10) COLLATE latin1_german2_ci DEFAULT '',
  `rule_warning_message` text COLLATE latin1_german2_ci,
  `fk_c_exp_tax_cat` int(11) DEFAULT NULL,
  `fk_ecm_files` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expensereport_extrafields`
--

DROP TABLE IF EXISTS `doli_expensereport_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expensereport_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_expensereport_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expensereport_ik`
--

DROP TABLE IF EXISTS `doli_expensereport_ik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expensereport_ik` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_c_exp_tax_cat` int(11) NOT NULL DEFAULT '0',
  `fk_range` int(11) NOT NULL DEFAULT '0',
  `coef` double NOT NULL DEFAULT '0',
  `ikoffset` double NOT NULL DEFAULT '0',
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_expensereport_rules`
--

DROP TABLE IF EXISTS `doli_expensereport_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_expensereport_rules` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dates` datetime NOT NULL,
  `datee` datetime NOT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `restrictive` tinyint(4) NOT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `fk_usergroup` int(11) DEFAULT NULL,
  `fk_c_type_fees` int(11) NOT NULL,
  `code_expense_rules_type` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `is_for_all` tinyint(4) DEFAULT '0',
  `entity` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_export_compta`
--

DROP TABLE IF EXISTS `doli_export_compta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_export_compta` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(12) NOT NULL,
  `date_export` datetime NOT NULL,
  `fk_user` int(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_export_model`
--

DROP TABLE IF EXISTS `doli_export_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_export_model` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `label` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `field` text NOT NULL,
  `filter` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_export_model` (`label`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_extrafields`
--

DROP TABLE IF EXISTS `doli_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `elementtype` varchar(64) NOT NULL DEFAULT 'member',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) NOT NULL,
  `type` varchar(8) DEFAULT NULL,
  `size` varchar(8) DEFAULT NULL,
  `fieldunique` int(11) DEFAULT '0',
  `fieldrequired` int(11) DEFAULT '0',
  `perms` varchar(255) DEFAULT NULL,
  `list` varchar(128) DEFAULT NULL,
  `totalizable` tinyint(1) DEFAULT '0',
  `pos` int(11) DEFAULT '0',
  `alwayseditable` int(11) DEFAULT '0',
  `param` text,
  `langs` varchar(64) DEFAULT NULL,
  `fieldcomputed` text,
  `fielddefault` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT '1',
  `help` text,
  `ishidden` int(11) DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `printable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_extrafields_name` (`name`,`entity`,`elementtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facture`
--

DROP TABLE IF EXISTS `doli_facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facture` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `increment` varchar(10) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `date_valid` date DEFAULT NULL,
  `date_closing` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `close_code` varchar(16) DEFAULT NULL,
  `close_note` varchar(128) DEFAULT NULL,
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `revenuestamp` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_closing` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) NOT NULL DEFAULT '1',
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `situation_cycle_ref` smallint(6) DEFAULT NULL,
  `situation_counter` smallint(6) DEFAULT NULL,
  `situation_final` smallint(6) DEFAULT NULL,
  `retained_warranty` double DEFAULT NULL,
  `retained_warranty_date_limit` date DEFAULT NULL,
  `retained_warranty_fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `date_pointoftax` date DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_fac_rec_source` int(11) DEFAULT NULL,
  `last_main_doc` varchar(255) DEFAULT NULL,
  `module_source` varchar(32) DEFAULT NULL,
  `pos_source` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_facture_ref` (`ref`,`entity`),
  KEY `idx_facture_fk_soc` (`fk_soc`),
  KEY `idx_facture_fk_user_author` (`fk_user_author`),
  KEY `idx_facture_fk_user_valid` (`fk_user_valid`),
  KEY `idx_facture_fk_facture_source` (`fk_facture_source`),
  KEY `idx_facture_fk_projet` (`fk_projet`),
  KEY `idx_facture_fk_account` (`fk_account`),
  KEY `idx_facture_fk_currency` (`fk_currency`),
  KEY `idx_facture_fk_statut` (`fk_statut`),
  CONSTRAINT `fk_facture_fk_facture_source` FOREIGN KEY (`fk_facture_source`) REFERENCES `doli_facture` (`rowid`),
  CONSTRAINT `fk_facture_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `doli_projet` (`rowid`),
  CONSTRAINT `fk_facture_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_facture_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_facture_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facture_extrafields`
--

DROP TABLE IF EXISTS `doli_facture_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facture_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facture_fourn`
--

DROP TABLE IF EXISTS `doli_facture_fourn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facture_fourn` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) NOT NULL,
  `ref_supplier` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `libelle` varchar(255) DEFAULT NULL,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise` double(24,8) DEFAULT '0.00000000',
  `close_code` varchar(16) DEFAULT NULL,
  `close_note` varchar(128) DEFAULT NULL,
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `last_main_doc` varchar(255) DEFAULT NULL,
  `date_pointoftax` date DEFAULT NULL,
  `date_valid` date DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_facture_fourn_ref` (`ref`,`entity`),
  UNIQUE KEY `uk_facture_fourn_ref_supplier` (`ref_supplier`,`fk_soc`,`entity`),
  KEY `idx_facture_fourn_date_lim_reglement` (`date_lim_reglement`),
  KEY `idx_facture_fourn_fk_soc` (`fk_soc`),
  KEY `idx_facture_fourn_fk_user_author` (`fk_user_author`),
  KEY `idx_facture_fourn_fk_user_valid` (`fk_user_valid`),
  KEY `idx_facture_fourn_fk_projet` (`fk_projet`),
  CONSTRAINT `fk_facture_fourn_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `doli_projet` (`rowid`),
  CONSTRAINT `fk_facture_fourn_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_facture_fourn_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_facture_fourn_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facture_fourn_det`
--

DROP TABLE IF EXISTS `doli_facture_fourn_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facture_fourn_det` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture_fourn` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `pu_ht` double(24,8) DEFAULT NULL,
  `pu_ttc` double(24,8) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `tva_tx` double(6,3) DEFAULT NULL,
  `vat_src_code` varchar(10) DEFAULT '',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_fourn_det_fk_facture` (`fk_facture_fourn`),
  KEY `fk_facture_fourn_det_fk_unit` (`fk_unit`),
  KEY `idx_facture_fourn_det_fk_code_ventilation` (`fk_code_ventilation`),
  KEY `idx_facture_fourn_det_fk_product` (`fk_product`),
  CONSTRAINT `fk_facture_fourn_det_fk_facture` FOREIGN KEY (`fk_facture_fourn`) REFERENCES `doli_facture_fourn` (`rowid`),
  CONSTRAINT `fk_facture_fourn_det_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `doli_c_units` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facture_fourn_det_extrafields`
--

DROP TABLE IF EXISTS `doli_facture_fourn_det_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facture_fourn_det_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_fourn_det_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facture_fourn_extrafields`
--

DROP TABLE IF EXISTS `doli_facture_fourn_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facture_fourn_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_fourn_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facture_rec`
--

DROP TABLE IF EXISTS `doli_facture_rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facture_rec` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) NOT NULL DEFAULT '1',
  `fk_mode_reglement` int(11) DEFAULT '0',
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `modelpdf` varchar(255) DEFAULT NULL,
  `usenewprice` int(11) DEFAULT '0',
  `frequency` int(11) DEFAULT NULL,
  `unit_frequency` varchar(2) DEFAULT 'd',
  `date_when` datetime DEFAULT NULL,
  `date_last_gen` datetime DEFAULT NULL,
  `nb_gen_done` int(11) DEFAULT NULL,
  `nb_gen_max` int(11) DEFAULT NULL,
  `revenuestamp` double(24,8) DEFAULT '0.00000000',
  `auto_validate` int(11) DEFAULT '0',
  `generate_pdf` int(11) DEFAULT '1',
  `fk_account` int(11) DEFAULT '0',
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_user_modif` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vat_src_code` varchar(10) DEFAULT '',
  `suspended` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_facture_rec_uk_titre` (`titre`,`entity`),
  KEY `idx_facture_rec_fk_soc` (`fk_soc`),
  KEY `idx_facture_rec_fk_user_author` (`fk_user_author`),
  KEY `idx_facture_rec_fk_projet` (`fk_projet`),
  CONSTRAINT `fk_facture_rec_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `doli_projet` (`rowid`),
  CONSTRAINT `fk_facture_rec_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_facture_rec_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facture_rec_extrafields`
--

DROP TABLE IF EXISTS `doli_facture_rec_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facture_rec_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facture_rec_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facturedet`
--

DROP TABLE IF EXISTS `doli_facturedet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facturedet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT NULL,
  `vat_src_code` varchar(10) DEFAULT '',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `subprice` double(24,8) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `special_code` int(10) unsigned DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_contract_line` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `situation_percent` double DEFAULT '100',
  `fk_prev_id` int(11) DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_fk_remise_except` (`fk_remise_except`,`fk_facture`),
  KEY `idx_facturedet_fk_facture` (`fk_facture`),
  KEY `idx_facturedet_fk_product` (`fk_product`),
  KEY `fk_facturedet_fk_unit` (`fk_unit`),
  KEY `idx_facturedet_fk_code_ventilation` (`fk_code_ventilation`),
  CONSTRAINT `fk_facturedet_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `doli_facture` (`rowid`),
  CONSTRAINT `fk_facturedet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `doli_c_units` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facturedet_extrafields`
--

DROP TABLE IF EXISTS `doli_facturedet_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facturedet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facturedet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facturedet_rec`
--

DROP TABLE IF EXISTS `doli_facturedet_rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facturedet_rec` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT NULL,
  `vat_src_code` varchar(10) DEFAULT '',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `special_code` int(10) unsigned DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_contract_line` int(11) DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `date_start_fill` int(11) DEFAULT '0',
  `date_end_fill` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `fk_facturedet_rec_fk_unit` (`fk_unit`),
  CONSTRAINT `fk_facturedet_rec_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `doli_c_units` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_facturedet_rec_extrafields`
--

DROP TABLE IF EXISTS `doli_facturedet_rec_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_facturedet_rec_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_facturedet_rec_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_fichinter`
--

DROP TABLE IF EXISTS `doli_fichinter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_fichinter` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `fk_contrat` int(11) DEFAULT '0',
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `datei` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `duree` double DEFAULT NULL,
  `dateo` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `datet` date DEFAULT NULL,
  `description` text,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  `last_main_doc` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_fichinter_ref` (`ref`,`entity`),
  KEY `idx_fichinter_fk_soc` (`fk_soc`),
  CONSTRAINT `fk_fichinter_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_fichinter_extrafields`
--

DROP TABLE IF EXISTS `doli_fichinter_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_fichinter_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_ficheinter_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_fichinter_rec`
--

DROP TABLE IF EXISTS `doli_fichinter_rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_fichinter_rec` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `fk_contrat` int(11) DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `duree` double DEFAULT NULL,
  `description` text COLLATE latin1_german2_ci,
  `modelpdf` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `note_private` text COLLATE latin1_german2_ci,
  `note_public` text COLLATE latin1_german2_ci,
  `frequency` int(11) DEFAULT NULL,
  `unit_frequency` varchar(2) COLLATE latin1_german2_ci DEFAULT 'm',
  `date_when` datetime DEFAULT NULL,
  `date_last_gen` datetime DEFAULT NULL,
  `nb_gen_done` int(11) DEFAULT NULL,
  `nb_gen_max` int(11) DEFAULT NULL,
  `auto_validate` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_fichinter_rec_uk_titre` (`titre`,`entity`),
  KEY `idx_fichinter_rec_fk_soc` (`fk_soc`),
  KEY `idx_fichinter_rec_fk_user_author` (`fk_user_author`),
  KEY `idx_fichinter_rec_fk_projet` (`fk_projet`),
  CONSTRAINT `fk_fichinter_rec_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `doli_projet` (`rowid`),
  CONSTRAINT `fk_fichinter_rec_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_fichinterdet`
--

DROP TABLE IF EXISTS `doli_fichinterdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_fichinterdet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_fichinter` int(11) DEFAULT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` text,
  `duree` int(11) DEFAULT NULL,
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_fichinterdet_fk_fichinter` (`fk_fichinter`),
  CONSTRAINT `fk_fichinterdet_fk_fichinter` FOREIGN KEY (`fk_fichinter`) REFERENCES `doli_fichinter` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_fichinterdet_extrafields`
--

DROP TABLE IF EXISTS `doli_fichinterdet_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_fichinterdet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_ficheinterdet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_fichinterdet_rec`
--

DROP TABLE IF EXISTS `doli_fichinterdet_rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_fichinterdet_rec` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_fichinter` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` text COLLATE latin1_german2_ci,
  `duree` int(11) DEFAULT NULL,
  `rang` int(11) DEFAULT '0',
  `total_ht` double(24,8) DEFAULT NULL,
  `subprice` double(24,8) DEFAULT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(1) COLLATE latin1_german2_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(1) COLLATE latin1_german2_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `fk_export_commpta` int(11) NOT NULL DEFAULT '0',
  `special_code` int(10) unsigned DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_holiday`
--

DROP TABLE IF EXISTS `doli_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_holiday` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `halfday` int(11) DEFAULT '0',
  `statut` int(11) NOT NULL DEFAULT '1',
  `fk_validator` int(11) NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_refuse` datetime DEFAULT NULL,
  `fk_user_refuse` int(11) DEFAULT NULL,
  `date_cancel` datetime DEFAULT NULL,
  `fk_user_cancel` int(11) DEFAULT NULL,
  `detail_refuse` varchar(250) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `fk_type` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(30) NOT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_holiday_fk_user` (`fk_user`),
  KEY `idx_holiday_fk_user_create` (`fk_user_create`),
  KEY `idx_holiday_date_create` (`date_create`),
  KEY `idx_holiday_date_debut` (`date_debut`),
  KEY `idx_holiday_date_fin` (`date_fin`),
  KEY `idx_holiday_fk_validator` (`fk_validator`),
  KEY `idx_holiday_entity` (`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_holiday_config`
--

DROP TABLE IF EXISTS `doli_holiday_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_holiday_config` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `value` text,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `idx_holiday_config` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_holiday_extrafields`
--

DROP TABLE IF EXISTS `doli_holiday_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_holiday_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_holiday_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_holiday_logs`
--

DROP TABLE IF EXISTS `doli_holiday_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_holiday_logs` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_action` datetime NOT NULL,
  `fk_user_action` int(11) NOT NULL,
  `fk_user_update` int(11) NOT NULL,
  `type_action` varchar(255) NOT NULL,
  `prev_solde` varchar(255) NOT NULL,
  `new_solde` varchar(255) NOT NULL,
  `fk_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_holiday_users`
--

DROP TABLE IF EXISTS `doli_holiday_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_holiday_users` (
  `fk_user` int(11) NOT NULL,
  `nb_holiday` double NOT NULL DEFAULT '0',
  `fk_type` int(11) NOT NULL DEFAULT '1',
  UNIQUE KEY `uk_holiday_users` (`fk_user`,`fk_type`,`nb_holiday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_import_model`
--

DROP TABLE IF EXISTS `doli_import_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_import_model` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `label` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `field` text NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_import_model` (`label`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_inventory`
--

DROP TABLE IF EXISTS `doli_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_inventory` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT '0',
  `ref` varchar(48) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_warehouse` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `date_inventory` datetime DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_validation` datetime DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_inventory_ref` (`ref`,`entity`),
  KEY `idx_inventory_tms` (`tms`),
  KEY `idx_inventory_datec` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_inventorydet`
--

DROP TABLE IF EXISTS `doli_inventorydet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_inventorydet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_inventory` int(11) DEFAULT '0',
  `fk_warehouse` int(11) DEFAULT '0',
  `fk_product` int(11) DEFAULT '0',
  `batch` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `qty_view` double DEFAULT NULL,
  `qty_stock` double DEFAULT NULL,
  `qty_regulated` double DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_inventorydet_tms` (`tms`),
  KEY `idx_inventorydet_datec` (`datec`),
  KEY `idx_inventorydet_fk_inventory` (`fk_inventory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_links`
--

DROP TABLE IF EXISTS `doli_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_links` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datea` datetime NOT NULL,
  `url` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `objecttype` varchar(255) NOT NULL,
  `objectid` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_links` (`objectid`,`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_livraison`
--

DROP TABLE IF EXISTS `doli_livraison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_livraison` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(30) DEFAULT NULL,
  `ref_customer` varchar(30) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `last_main_doc` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_livraison_uk_ref` (`ref`,`entity`),
  KEY `idx_livraison_fk_soc` (`fk_soc`),
  KEY `idx_livraison_fk_user_author` (`fk_user_author`),
  KEY `idx_livraison_fk_user_valid` (`fk_user_valid`),
  CONSTRAINT `fk_livraison_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_livraison_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_livraison_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_livraison_extrafields`
--

DROP TABLE IF EXISTS `doli_livraison_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_livraison_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_livraison_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_livraisondet`
--

DROP TABLE IF EXISTS `doli_livraisondet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_livraisondet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_livraison` int(11) DEFAULT NULL,
  `fk_origin_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `description` text,
  `qty` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `rang` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  KEY `idx_livraisondet_fk_expedition` (`fk_livraison`),
  CONSTRAINT `fk_livraisondet_fk_livraison` FOREIGN KEY (`fk_livraison`) REFERENCES `doli_livraison` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_livraisondet_extrafields`
--

DROP TABLE IF EXISTS `doli_livraisondet_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_livraisondet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_livraisondet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_loan`
--

DROP TABLE IF EXISTS `doli_loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_loan` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(80) COLLATE latin1_german2_ci NOT NULL,
  `fk_bank` int(11) DEFAULT NULL,
  `capital` double(24,8) DEFAULT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `nbterm` double DEFAULT NULL,
  `rate` double NOT NULL,
  `note_private` text COLLATE latin1_german2_ci,
  `note_public` text COLLATE latin1_german2_ci,
  `capital_position` double(24,8) DEFAULT NULL,
  `date_position` date DEFAULT NULL,
  `paid` smallint(6) NOT NULL DEFAULT '0',
  `accountancy_account_capital` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `accountancy_account_insurance` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `accountancy_account_interest` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `fk_projet` int(11) DEFAULT NULL,
  `insurance_amount` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_loan_schedule`
--

DROP TABLE IF EXISTS `doli_loan_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_loan_schedule` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_loan` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount_capital` double(24,8) DEFAULT NULL,
  `amount_insurance` double(24,8) DEFAULT NULL,
  `amount_interest` double(24,8) DEFAULT NULL,
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `note_private` text COLLATE latin1_german2_ci,
  `note_public` text COLLATE latin1_german2_ci,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_localtax`
--

DROP TABLE IF EXISTS `doli_localtax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_localtax` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `localtaxtype` tinyint(4) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_mailing`
--

DROP TABLE IF EXISTS `doli_mailing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_mailing` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `statut` smallint(6) DEFAULT '0',
  `titre` varchar(128) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `sujet` varchar(128) DEFAULT NULL,
  `body` mediumtext,
  `bgcolor` varchar(8) DEFAULT NULL,
  `bgimage` varchar(255) DEFAULT NULL,
  `cible` varchar(60) DEFAULT NULL,
  `nbemail` int(11) DEFAULT NULL,
  `email_from` varchar(160) DEFAULT NULL,
  `email_replyto` varchar(160) DEFAULT NULL,
  `email_errorsto` varchar(160) DEFAULT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `date_creat` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_appro` datetime DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_appro` int(11) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `joined_file1` varchar(255) DEFAULT NULL,
  `joined_file2` varchar(255) DEFAULT NULL,
  `joined_file3` varchar(255) DEFAULT NULL,
  `joined_file4` varchar(255) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_mailing_cibles`
--

DROP TABLE IF EXISTS `doli_mailing_cibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_mailing_cibles` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_mailing` int(11) NOT NULL,
  `fk_contact` int(11) NOT NULL,
  `lastname` varchar(160) DEFAULT NULL,
  `firstname` varchar(160) DEFAULT NULL,
  `email` varchar(160) NOT NULL,
  `other` varchar(255) DEFAULT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `source_url` varchar(255) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(16) DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL,
  `error_text` varchar(255) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_mailing_cibles` (`fk_mailing`,`email`),
  KEY `idx_mailing_cibles_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_mailing_unsubscribe`
--

DROP TABLE IF EXISTS `doli_mailing_unsubscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_mailing_unsubscribe` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `unsubscribegroup` varchar(128) COLLATE latin1_german2_ci DEFAULT '',
  `ip` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_creat` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_mailing_unsubscribe` (`email`,`entity`,`unsubscribegroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_menu`
--

DROP TABLE IF EXISTS `doli_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_menu` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `menu_handler` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `module` varchar(64) DEFAULT NULL,
  `type` varchar(4) NOT NULL,
  `mainmenu` varchar(100) NOT NULL,
  `leftmenu` varchar(100) DEFAULT NULL,
  `fk_menu` int(11) NOT NULL,
  `fk_mainmenu` varchar(100) DEFAULT NULL,
  `fk_leftmenu` varchar(100) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(100) DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `langs` varchar(100) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `perms` text,
  `enabled` varchar(255) DEFAULT '1',
  `usertype` int(11) NOT NULL DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_menu_uk_menu` (`menu_handler`,`fk_menu`,`position`,`url`,`entity`),
  KEY `idx_menu_menuhandler_type` (`menu_handler`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_mrp_mo`
--

DROP TABLE IF EXISTS `doli_mrp_mo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_mrp_mo` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(128) COLLATE latin1_german2_ci NOT NULL DEFAULT '(PROV)',
  `entity` int(11) NOT NULL DEFAULT '1',
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `fk_warehouse` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `note_public` text COLLATE latin1_german2_ci,
  `note_private` text COLLATE latin1_german2_ci,
  `date_creation` datetime NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `model_pdf` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL,
  `date_start_planned` datetime DEFAULT NULL,
  `date_end_planned` datetime DEFAULT NULL,
  `fk_bom` int(11) DEFAULT NULL,
  `fk_project` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_mrp_mo_ref` (`ref`),
  KEY `idx_mrp_mo_entity` (`entity`),
  KEY `idx_mrp_mo_fk_soc` (`fk_soc`),
  KEY `fk_mrp_mo_fk_user_creat` (`fk_user_creat`),
  KEY `idx_mrp_mo_status` (`status`),
  KEY `idx_mrp_mo_fk_product` (`fk_product`),
  KEY `idx_mrp_mo_date_start_planned` (`date_start_planned`),
  KEY `idx_mrp_mo_date_end_planned` (`date_end_planned`),
  KEY `idx_mrp_mo_fk_bom` (`fk_bom`),
  KEY `idx_mrp_mo_fk_project` (`fk_project`),
  CONSTRAINT `fk_mrp_mo_fk_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_mrp_mo_extrafields`
--

DROP TABLE IF EXISTS `doli_mrp_mo_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_mrp_mo_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_fk_object` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_mrp_production`
--

DROP TABLE IF EXISTS `doli_mrp_production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_mrp_production` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_mo` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `fk_product` int(11) NOT NULL,
  `fk_warehouse` int(11) DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '1',
  `qty_frozen` smallint(6) DEFAULT '0',
  `disable_stock_change` smallint(6) DEFAULT '0',
  `batch` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `role` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_mrp_production` int(11) DEFAULT NULL,
  `fk_stock_movement` int(11) DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `fk_mrp_production_product` (`fk_product`),
  KEY `fk_mrp_production_stock_movement` (`fk_stock_movement`),
  KEY `idx_mrp_production_fk_mo` (`fk_mo`),
  CONSTRAINT `fk_mrp_production_stock_movement` FOREIGN KEY (`fk_stock_movement`) REFERENCES `doli_stock_mouvement` (`rowid`),
  CONSTRAINT `fk_mrp_production_mo` FOREIGN KEY (`fk_mo`) REFERENCES `doli_mrp_mo` (`rowid`),
  CONSTRAINT `fk_mrp_production_product` FOREIGN KEY (`fk_product`) REFERENCES `doli_product` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_multicurrency`
--

DROP TABLE IF EXISTS `doli_multicurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_multicurrency` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_create` datetime DEFAULT NULL,
  `code` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `name` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `entity` int(11) DEFAULT '1',
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_multicurrency_rate`
--

DROP TABLE IF EXISTS `doli_multicurrency_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_multicurrency_rate` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `date_sync` datetime DEFAULT NULL,
  `rate` double NOT NULL DEFAULT '0',
  `fk_multicurrency` int(11) NOT NULL,
  `entity` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_notify`
--

DROP TABLE IF EXISTS `doli_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_notify` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `daten` datetime DEFAULT NULL,
  `fk_action` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'email',
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `objet_type` varchar(24) NOT NULL,
  `objet_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `type_target` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_notify_def`
--

DROP TABLE IF EXISTS `doli_notify_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_notify_def` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` date DEFAULT NULL,
  `fk_action` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'email',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_notify_def_object`
--

DROP TABLE IF EXISTS `doli_notify_def_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_notify_def_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `objet_type` varchar(16) COLLATE latin1_german2_ci DEFAULT NULL,
  `objet_id` int(11) NOT NULL,
  `type_notif` varchar(16) COLLATE latin1_german2_ci DEFAULT 'browser',
  `date_notif` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `moreparam` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_oauth_state`
--

DROP TABLE IF EXISTS `doli_oauth_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_oauth_state` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(36) COLLATE latin1_german2_ci DEFAULT NULL,
  `state` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `entity` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_oauth_token`
--

DROP TABLE IF EXISTS `doli_oauth_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_oauth_token` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(36) COLLATE latin1_german2_ci DEFAULT NULL,
  `token` text COLLATE latin1_german2_ci,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `entity` int(11) DEFAULT '1',
  `tokenstring` text COLLATE latin1_german2_ci,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_onlinesignature`
--

DROP TABLE IF EXISTS `doli_onlinesignature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_onlinesignature` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `object_type` varchar(32) COLLATE latin1_german2_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `ip` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `pathoffile` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_opensurvey_comments`
--

DROP TABLE IF EXISTS `doli_opensurvey_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_opensurvey_comments` (
  `id_comment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_sondage` char(16) NOT NULL,
  `comment` text NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usercomment` text,
  PRIMARY KEY (`id_comment`),
  KEY `idx_id_comment` (`id_comment`),
  KEY `idx_id_sondage` (`id_sondage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_opensurvey_formquestions`
--

DROP TABLE IF EXISTS `doli_opensurvey_formquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_opensurvey_formquestions` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `id_sondage` varchar(16) COLLATE latin1_german2_ci DEFAULT NULL,
  `question` text COLLATE latin1_german2_ci,
  `available_answers` text COLLATE latin1_german2_ci,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_opensurvey_sondage`
--

DROP TABLE IF EXISTS `doli_opensurvey_sondage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_opensurvey_sondage` (
  `id_sondage` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `commentaires` text,
  `mail_admin` varchar(128) DEFAULT NULL,
  `nom_admin` varchar(64) DEFAULT NULL,
  `fk_user_creat` int(11) NOT NULL,
  `titre` text NOT NULL,
  `date_fin` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `format` varchar(2) NOT NULL,
  `mailsonde` tinyint(4) NOT NULL DEFAULT '0',
  `allow_comments` tinyint(4) NOT NULL DEFAULT '1',
  `allow_spy` tinyint(4) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sujet` text,
  PRIMARY KEY (`id_sondage`),
  KEY `idx_date_fin` (`date_fin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_opensurvey_user_formanswers`
--

DROP TABLE IF EXISTS `doli_opensurvey_user_formanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_opensurvey_user_formanswers` (
  `fk_user_survey` int(11) NOT NULL,
  `fk_question` int(11) NOT NULL,
  `reponses` text COLLATE latin1_german2_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_opensurvey_user_studs`
--

DROP TABLE IF EXISTS `doli_opensurvey_user_studs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_opensurvey_user_studs` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(64) NOT NULL,
  `id_sondage` varchar(16) NOT NULL,
  `reponses` varchar(100) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_users`),
  KEY `idx_opensurvey_user_studs_id_users` (`id_users`),
  KEY `idx_opensurvey_user_studs_nom` (`nom`),
  KEY `idx_opensurvey_user_studs_id_sondage` (`id_sondage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_overwrite_trans`
--

DROP TABLE IF EXISTS `doli_overwrite_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_overwrite_trans` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `lang` varchar(5) COLLATE latin1_german2_ci DEFAULT NULL,
  `transkey` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `transvalue` text COLLATE latin1_german2_ci,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_overwrite_trans` (`lang`,`transkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_paiement`
--

DROP TABLE IF EXISTS `doli_paiement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_paiement` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL DEFAULT '',
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `fk_paiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_export_compta` int(11) NOT NULL DEFAULT '0',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000',
  `ext_payment_id` varchar(128) DEFAULT NULL,
  `ext_payment_site` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_paiement_facture`
--

DROP TABLE IF EXISTS `doli_paiement_facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_paiement_facture` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_paiement` int(11) DEFAULT NULL,
  `fk_facture` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_paiement_facture` (`fk_paiement`,`fk_facture`),
  KEY `idx_paiement_facture_fk_facture` (`fk_facture`),
  KEY `idx_paiement_facture_fk_paiement` (`fk_paiement`),
  CONSTRAINT `fk_paiement_facture_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `doli_facture` (`rowid`),
  CONSTRAINT `fk_paiement_facture_fk_paiement` FOREIGN KEY (`fk_paiement`) REFERENCES `doli_paiement` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_paiementcharge`
--

DROP TABLE IF EXISTS `doli_paiementcharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_paiementcharge` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_charge` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `fk_typepaiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_paiementfourn`
--

DROP TABLE IF EXISTS `doli_paiementfourn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_paiementfourn` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_paiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000',
  `model_pdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_paiementfourn_facturefourn`
--

DROP TABLE IF EXISTS `doli_paiementfourn_facturefourn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_paiementfourn_facturefourn` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_paiementfourn` int(11) DEFAULT NULL,
  `fk_facturefourn` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `multicurrency_amount` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_paiementfourn_facturefourn` (`fk_paiementfourn`,`fk_facturefourn`),
  KEY `idx_paiementfourn_facturefourn_fk_facture` (`fk_facturefourn`),
  KEY `idx_paiementfourn_facturefourn_fk_paiement` (`fk_paiementfourn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_payment_donation`
--

DROP TABLE IF EXISTS `doli_payment_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_payment_donation` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_donation` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `note` text COLLATE latin1_german2_ci,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_payment_expensereport`
--

DROP TABLE IF EXISTS `doli_payment_expensereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_payment_expensereport` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_expensereport` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `note` text COLLATE latin1_german2_ci,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_payment_loan`
--

DROP TABLE IF EXISTS `doli_payment_loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_payment_loan` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_loan` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount_capital` double(24,8) DEFAULT NULL,
  `amount_insurance` double(24,8) DEFAULT NULL,
  `amount_interest` double(24,8) DEFAULT NULL,
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `note_private` text COLLATE latin1_german2_ci,
  `note_public` text COLLATE latin1_german2_ci,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_payment_salary`
--

DROP TABLE IF EXISTS `doli_payment_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_payment_salary` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `salary` double(24,8) DEFAULT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `datesp` date DEFAULT NULL,
  `dateep` date DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_payment_salary_ref` (`num_payment`),
  KEY `idx_payment_salary_user` (`fk_user`,`entity`),
  KEY `idx_payment_salary_datep` (`datep`),
  KEY `idx_payment_salary_datesp` (`datesp`),
  KEY `idx_payment_salary_dateep` (`dateep`),
  CONSTRAINT `fk_payment_salary_user` FOREIGN KEY (`fk_user`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_payment_salary_extrafields`
--

DROP TABLE IF EXISTS `doli_payment_salary_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_payment_salary_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_payment_salary_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_payment_various`
--

DROP TABLE IF EXISTS `doli_payment_various`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_payment_various` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `sens` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `accountancy_code` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text COLLATE latin1_german2_ci,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `subledger_account` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_pos_cash_fence`
--

DROP TABLE IF EXISTS `doli_pos_cash_fence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_pos_cash_fence` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(64) COLLATE latin1_german2_ci DEFAULT NULL,
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `opening` double(24,8) DEFAULT '0.00000000',
  `cash` double(24,8) DEFAULT '0.00000000',
  `card` double(24,8) DEFAULT '0.00000000',
  `cheque` double(24,8) DEFAULT '0.00000000',
  `status` int(11) DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `day_close` int(11) DEFAULT NULL,
  `month_close` int(11) DEFAULT NULL,
  `year_close` int(11) DEFAULT NULL,
  `posmodule` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `posnumber` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_prelevement_bons`
--

DROP TABLE IF EXISTS `doli_prelevement_bons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_prelevement_bons` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(12) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `credite` smallint(6) DEFAULT '0',
  `note` text,
  `date_trans` datetime DEFAULT NULL,
  `method_trans` smallint(6) DEFAULT NULL,
  `fk_user_trans` int(11) DEFAULT NULL,
  `date_credit` datetime DEFAULT NULL,
  `fk_user_credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_prelevement_bons_ref` (`ref`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_prelevement_facture`
--

DROP TABLE IF EXISTS `doli_prelevement_facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_prelevement_facture` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `fk_prelevement_lignes` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_prelevement_facture_fk_prelevement_lignes` (`fk_prelevement_lignes`),
  CONSTRAINT `fk_prelevement_facture_fk_prelevement_lignes` FOREIGN KEY (`fk_prelevement_lignes`) REFERENCES `doli_prelevement_lignes` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_prelevement_facture_demande`
--

DROP TABLE IF EXISTS `doli_prelevement_facture_demande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_prelevement_facture_demande` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_facture` int(11) NOT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `date_demande` datetime NOT NULL,
  `traite` smallint(6) DEFAULT '0',
  `date_traite` datetime DEFAULT NULL,
  `fk_prelevement_bons` int(11) DEFAULT NULL,
  `fk_user_demande` int(11) NOT NULL,
  `code_banque` varchar(128) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `entity` int(11) DEFAULT NULL,
  `sourcetype` varchar(32) DEFAULT NULL,
  `ext_payment_id` varchar(128) DEFAULT NULL,
  `ext_payment_site` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_prelevement_lignes`
--

DROP TABLE IF EXISTS `doli_prelevement_lignes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_prelevement_lignes` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_prelevement_bons` int(11) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `statut` smallint(6) DEFAULT '0',
  `client_nom` varchar(255) DEFAULT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `code_banque` varchar(128) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`rowid`),
  KEY `idx_prelevement_lignes_fk_prelevement_bons` (`fk_prelevement_bons`),
  CONSTRAINT `fk_prelevement_lignes_fk_prelevement_bons` FOREIGN KEY (`fk_prelevement_bons`) REFERENCES `doli_prelevement_bons` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_prelevement_rejet`
--

DROP TABLE IF EXISTS `doli_prelevement_rejet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_prelevement_rejet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_prelevement_lignes` int(11) DEFAULT NULL,
  `date_rejet` datetime DEFAULT NULL,
  `motif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_creation` int(11) DEFAULT NULL,
  `note` text,
  `afacturer` tinyint(4) DEFAULT '0',
  `fk_facture` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_printer_ipp`
--

DROP TABLE IF EXISTS `doli_printer_ipp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_printer_ipp` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `printer_name` text NOT NULL,
  `printer_location` text NOT NULL,
  `printer_uri` varchar(255) NOT NULL,
  `copy` int(11) NOT NULL DEFAULT '1',
  `module` varchar(16) NOT NULL,
  `login` varchar(32) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_printing`
--

DROP TABLE IF EXISTS `doli_printing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_printing` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `printer_name` text COLLATE latin1_german2_ci NOT NULL,
  `printer_location` text COLLATE latin1_german2_ci NOT NULL,
  `printer_id` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `copy` int(11) NOT NULL DEFAULT '1',
  `module` varchar(16) COLLATE latin1_german2_ci NOT NULL,
  `driver` varchar(16) COLLATE latin1_german2_ci NOT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product`
--

DROP TABLE IF EXISTS `doli_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(128) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `virtual` tinyint(4) NOT NULL DEFAULT '0',
  `fk_parent` int(11) DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  `note` text,
  `customcode` varchar(32) DEFAULT NULL,
  `fk_country` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `tosell` tinyint(4) DEFAULT '1',
  `tobuy` tinyint(4) DEFAULT '1',
  `onportal` smallint(6) DEFAULT '0',
  `tobatch` tinyint(4) NOT NULL DEFAULT '0',
  `fk_product_type` int(11) DEFAULT '0',
  `duration` varchar(6) DEFAULT NULL,
  `seuil_stock_alerte` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT NULL,
  `accountancy_code_sell` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_code_sell_intra` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_code_sell_export` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountancy_code_buy` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `partnumber` varchar(32) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `weight_units` tinyint(4) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `length_units` tinyint(4) DEFAULT NULL,
  `surface` float DEFAULT NULL,
  `surface_units` tinyint(4) DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `volume_units` tinyint(4) DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `pmp` double(24,8) NOT NULL DEFAULT '0.00000000',
  `fifo` double(24,8) DEFAULT NULL,
  `lifo` double(24,8) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `finished` tinyint(4) DEFAULT NULL,
  `hidden` tinyint(4) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `desiredstock` int(11) DEFAULT '0',
  `fk_price_expression` int(11) DEFAULT NULL,
  `fk_unit` int(11) DEFAULT NULL,
  `cost_price` double(24,8) DEFAULT NULL,
  `default_vat_code` varchar(10) DEFAULT NULL,
  `price_autogen` smallint(6) DEFAULT '0',
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT '',
  `width` float DEFAULT NULL,
  `width_units` tinyint(4) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `height_units` tinyint(4) DEFAULT NULL,
  `fk_default_warehouse` int(11) DEFAULT NULL,
  `fk_project` int(11) DEFAULT NULL,
  `net_measure` float DEFAULT NULL,
  `net_measure_units` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_ref` (`ref`,`entity`),
  UNIQUE KEY `uk_product_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  KEY `idx_product_label` (`label`),
  KEY `idx_product_barcode` (`barcode`),
  KEY `idx_product_import_key` (`import_key`),
  KEY `idx_product_seuil_stock_alerte` (`seuil_stock_alerte`),
  KEY `idx_product_fk_country` (`fk_country`),
  KEY `idx_product_fk_user_author` (`fk_user_author`),
  KEY `idx_product_fk_barcode_type` (`fk_barcode_type`),
  KEY `fk_product_fk_unit` (`fk_unit`),
  KEY `fk_product_default_warehouse` (`fk_default_warehouse`),
  KEY `idx_product_fk_project` (`fk_project`),
  CONSTRAINT `fk_product_barcode_type` FOREIGN KEY (`fk_barcode_type`) REFERENCES `doli_c_barcode_type` (`rowid`),
  CONSTRAINT `fk_product_default_warehouse` FOREIGN KEY (`fk_default_warehouse`) REFERENCES `doli_entrepot` (`rowid`),
  CONSTRAINT `fk_product_fk_country` FOREIGN KEY (`fk_country`) REFERENCES `doli_c_country` (`rowid`),
  CONSTRAINT `fk_product_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `doli_c_units` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_association`
--

DROP TABLE IF EXISTS `doli_product_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_association` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product_pere` int(11) NOT NULL DEFAULT '0',
  `fk_product_fils` int(11) NOT NULL DEFAULT '0',
  `qty` double DEFAULT NULL,
  `incdec` int(11) DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_association` (`fk_product_pere`,`fk_product_fils`),
  KEY `idx_product_association_fils` (`fk_product_fils`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_attribute`
--

DROP TABLE IF EXISTS `doli_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_attribute` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `label` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `rang` int(11) NOT NULL DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `unique_ref` (`ref`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_attribute_combination`
--

DROP TABLE IF EXISTS `doli_product_attribute_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_attribute_combination` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product_parent` int(11) NOT NULL,
  `fk_product_child` int(11) NOT NULL,
  `variation_price` float NOT NULL,
  `variation_price_percentage` int(11) DEFAULT NULL,
  `variation_weight` float NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  KEY `idx_product_att_com_product_parent` (`fk_product_parent`),
  KEY `idx_product_att_com_product_child` (`fk_product_child`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_attribute_combination2val`
--

DROP TABLE IF EXISTS `doli_product_attribute_combination2val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_attribute_combination2val` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_prod_combination` int(11) NOT NULL,
  `fk_prod_attr` int(11) NOT NULL,
  `fk_prod_attr_val` int(11) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_attribute_value`
--

DROP TABLE IF EXISTS `doli_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_attribute_value` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product_attribute` int(11) NOT NULL,
  `ref` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `value` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_attribute_value` (`fk_product_attribute`,`ref`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_batch`
--

DROP TABLE IF EXISTS `doli_product_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_batch` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product_stock` int(11) NOT NULL,
  `eatby` datetime DEFAULT NULL,
  `sellby` datetime DEFAULT NULL,
  `batch` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_batch` (`fk_product_stock`,`batch`),
  KEY `idx_fk_product_stock` (`fk_product_stock`),
  KEY `ix_fk_product_stock` (`fk_product_stock`),
  CONSTRAINT `fk_product_batch_fk_product_stock` FOREIGN KEY (`fk_product_stock`) REFERENCES `doli_product_stock` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_customer_price`
--

DROP TABLE IF EXISTS `doli_product_customer_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_customer_price` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `default_vat_code` varchar(10) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_customer_price_fk_product_fk_soc` (`fk_product`,`fk_soc`),
  KEY `idx_product_customer_price_fk_user` (`fk_user`),
  KEY `idx_product_customer_price_fk_soc` (`fk_soc`),
  CONSTRAINT `fk_customer_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `doli_product` (`rowid`),
  CONSTRAINT `fk_customer_price_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_product_customer_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `doli_product` (`rowid`),
  CONSTRAINT `fk_product_customer_price_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_product_customer_price_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_customer_price_log`
--

DROP TABLE IF EXISTS `doli_product_customer_price_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_customer_price_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `default_vat_code` varchar(10) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_extrafields`
--

DROP TABLE IF EXISTS `doli_product_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_product_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_fournisseur_price`
--

DROP TABLE IF EXISTS `doli_product_fournisseur_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_fournisseur_price` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `ref_fourn` varchar(30) DEFAULT NULL,
  `desc_fourn` text,
  `fk_availability` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `remise_percent` double NOT NULL DEFAULT '0',
  `remise` double NOT NULL DEFAULT '0',
  `unitprice` double(24,8) DEFAULT '0.00000000',
  `charges` double(24,8) DEFAULT '0.00000000',
  `tva_tx` double(6,3) NOT NULL,
  `default_vat_code` varchar(10) DEFAULT NULL,
  `info_bits` int(11) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `fk_supplier_price_expression` int(11) DEFAULT NULL,
  `delivery_time_days` int(11) DEFAULT NULL,
  `supplier_reputation` varchar(10) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_unitprice` double(24,8) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_price` double(24,8) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `barcode` varchar(180) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_fournisseur_price_ref` (`ref_fourn`,`fk_soc`,`quantity`,`entity`),
  UNIQUE KEY `uk_product_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  KEY `idx_product_fournisseur_price_fk_user` (`fk_user`),
  KEY `idx_product_fourn_price_fk_product` (`fk_product`,`entity`),
  KEY `idx_product_fourn_price_fk_soc` (`fk_soc`,`entity`),
  KEY `idx_product_barcode` (`barcode`),
  KEY `idx_product_fk_barcode_type` (`fk_barcode_type`),
  CONSTRAINT `fk_product_fournisseur_price_barcode_type` FOREIGN KEY (`fk_barcode_type`) REFERENCES `doli_c_barcode_type` (`rowid`),
  CONSTRAINT `fk_product_fournisseur_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `doli_product` (`rowid`),
  CONSTRAINT `fk_product_fournisseur_price_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_fournisseur_price_extrafields`
--

DROP TABLE IF EXISTS `doli_product_fournisseur_price_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_fournisseur_price_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_product_fournisseur_price_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_fournisseur_price_log`
--

DROP TABLE IF EXISTS `doli_product_fournisseur_price_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_fournisseur_price_log` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `fk_product_fournisseur` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_price` double(24,8) DEFAULT NULL,
  `multicurrency_unitprice` double(24,8) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_lang`
--

DROP TABLE IF EXISTS `doli_product_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_lang` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  `note` text,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_lang` (`fk_product`,`lang`),
  CONSTRAINT `fk_product_lang_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `doli_product` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_lot`
--

DROP TABLE IF EXISTS `doli_product_lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_lot` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT '1',
  `fk_product` int(11) NOT NULL,
  `batch` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_lot` (`fk_product`,`batch`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_lot_extrafields`
--

DROP TABLE IF EXISTS `doli_product_lot_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_lot_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_product_lot_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_price`
--

DROP TABLE IF EXISTS `doli_product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_price` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `date_price` datetime DEFAULT NULL,
  `price_level` smallint(6) DEFAULT '1',
  `price` double(24,8) DEFAULT NULL,
  `price_ttc` double(24,8) DEFAULT NULL,
  `price_min` double(24,8) DEFAULT NULL,
  `price_min_ttc` double(24,8) DEFAULT NULL,
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) NOT NULL DEFAULT '0.000',
  `default_vat_code` varchar(10) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `tosell` tinyint(4) DEFAULT '1',
  `price_by_qty` int(11) NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `fk_price_expression` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_price` double(24,8) DEFAULT '0.00000000',
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_price_ttc` double(24,8) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_product_price_fk_user_author` (`fk_user_author`),
  KEY `idx_product_price_fk_product` (`fk_product`),
  CONSTRAINT `fk_product_price_product` FOREIGN KEY (`fk_product`) REFERENCES `doli_product` (`rowid`),
  CONSTRAINT `fk_product_price_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_price_by_qty`
--

DROP TABLE IF EXISTS `doli_product_price_by_qty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_price_by_qty` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product_price` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `remise_percent` double NOT NULL DEFAULT '0',
  `remise` double NOT NULL DEFAULT '0',
  `unitprice` double(24,8) DEFAULT '0.00000000',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) DEFAULT NULL,
  `price_base_type` varchar(3) DEFAULT 'HT',
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_price` double(24,8) DEFAULT NULL,
  `multicurrency_price_ttc` double(24,8) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_price_by_qty_level` (`fk_product_price`,`quantity`),
  KEY `idx_product_price_by_qty_fk_product_price` (`fk_product_price`),
  CONSTRAINT `fk_product_price_by_qty_fk_product_price` FOREIGN KEY (`fk_product_price`) REFERENCES `doli_product_price` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_pricerules`
--

DROP TABLE IF EXISTS `doli_product_pricerules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_pricerules` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `fk_level` int(11) NOT NULL,
  `var_percent` float NOT NULL,
  `var_min_percent` float NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `unique_level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_stock`
--

DROP TABLE IF EXISTS `doli_product_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_stock` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `reel` double DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_product_stock` (`fk_product`,`fk_entrepot`),
  KEY `idx_product_stock_fk_product` (`fk_product`),
  KEY `idx_product_stock_fk_entrepot` (`fk_entrepot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_product_warehouse_properties`
--

DROP TABLE IF EXISTS `doli_product_warehouse_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_product_warehouse_properties` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `seuil_stock_alerte` int(11) DEFAULT '0',
  `desiredstock` int(11) DEFAULT '0',
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_projet`
--

DROP TABLE IF EXISTS `doli_projet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_projet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateo` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` text,
  `fk_user_creat` int(11) NOT NULL,
  `public` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_opp_status` int(11) DEFAULT NULL,
  `opp_percent` double(5,2) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `budget_amount` double(24,8) DEFAULT NULL,
  `date_close` datetime DEFAULT NULL,
  `fk_user_close` int(11) DEFAULT NULL,
  `opp_amount` double(24,8) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `usage_bill_time` int(11) DEFAULT '0',
  `usage_opportunity` int(11) DEFAULT '0',
  `usage_task` int(11) DEFAULT '1',
  `usage_organize_event` int(11) DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_projet_ref` (`ref`,`entity`),
  KEY `idx_projet_fk_soc` (`fk_soc`),
  CONSTRAINT `fk_projet_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_projet_extrafields`
--

DROP TABLE IF EXISTS `doli_projet_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_projet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_projet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_projet_task`
--

DROP TABLE IF EXISTS `doli_projet_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_projet_task` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_projet` int(11) NOT NULL,
  `fk_task_parent` int(11) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateo` datetime DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  `datev` datetime DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `description` text,
  `duration_effective` double DEFAULT '0',
  `planned_workload` double DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `rang` int(11) DEFAULT '0',
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_projet_task_ref` (`ref`,`entity`),
  KEY `idx_projet_task_fk_projet` (`fk_projet`),
  KEY `idx_projet_task_fk_user_creat` (`fk_user_creat`),
  KEY `idx_projet_task_fk_user_valid` (`fk_user_valid`),
  CONSTRAINT `fk_projet_task_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `doli_projet` (`rowid`),
  CONSTRAINT `fk_projet_task_fk_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_projet_task_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_projet_task_extrafields`
--

DROP TABLE IF EXISTS `doli_projet_task_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_projet_task_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_projet_task_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_projet_task_time`
--

DROP TABLE IF EXISTS `doli_projet_task_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_projet_task_time` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_task` int(11) NOT NULL,
  `task_date` date DEFAULT NULL,
  `task_datehour` datetime DEFAULT NULL,
  `task_date_withhour` int(11) DEFAULT '0',
  `task_duration` double DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `thm` double(24,8) DEFAULT NULL,
  `note` text,
  `invoice_id` int(11) DEFAULT NULL,
  `invoice_line_id` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `datec` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  KEY `idx_projet_task_time_task` (`fk_task`),
  KEY `idx_projet_task_time_date` (`task_date`),
  KEY `idx_projet_task_time_datehour` (`task_datehour`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_propal`
--

DROP TABLE IF EXISTS `doli_propal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_propal` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` date DEFAULT NULL,
  `fin_validite` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `price` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `fk_input_reason` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_delivery_address` int(11) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `last_main_doc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_propal_ref` (`ref`,`entity`),
  KEY `idx_propal_fk_soc` (`fk_soc`),
  KEY `idx_propal_fk_user_author` (`fk_user_author`),
  KEY `idx_propal_fk_user_valid` (`fk_user_valid`),
  KEY `idx_propal_fk_user_cloture` (`fk_user_cloture`),
  KEY `idx_propal_fk_projet` (`fk_projet`),
  KEY `idx_propal_fk_account` (`fk_account`),
  KEY `idx_propal_fk_currency` (`fk_currency`),
  CONSTRAINT `fk_propal_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `doli_projet` (`rowid`),
  CONSTRAINT `fk_propal_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_propal_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_propal_fk_user_cloture` FOREIGN KEY (`fk_user_cloture`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_propal_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_propal_extrafields`
--

DROP TABLE IF EXISTS `doli_propal_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_propal_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_propal_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_propal_merge_pdf_product`
--

DROP TABLE IF EXISTS `doli_propal_merge_pdf_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_propal_merge_pdf_product` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product` int(11) NOT NULL,
  `file_name` varchar(200) COLLATE latin1_german2_ci NOT NULL,
  `lang` varchar(5) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) NOT NULL,
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_propaldet`
--

DROP TABLE IF EXISTS `doli_propaldet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_propaldet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_propal` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `fk_remise_except` int(11) DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `vat_src_code` varchar(10) DEFAULT '',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `fk_unit` int(11) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  PRIMARY KEY (`rowid`),
  KEY `idx_propaldet_fk_propal` (`fk_propal`),
  KEY `idx_propaldet_fk_product` (`fk_product`),
  KEY `fk_propaldet_fk_unit` (`fk_unit`),
  CONSTRAINT `fk_propaldet_fk_propal` FOREIGN KEY (`fk_propal`) REFERENCES `doli_propal` (`rowid`),
  CONSTRAINT `fk_propaldet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `doli_c_units` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_propaldet_extrafields`
--

DROP TABLE IF EXISTS `doli_propaldet_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_propaldet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_propaldet_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_reception`
--

DROP TABLE IF EXISTS `doli_reception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_reception` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) COLLATE latin1_german2_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `ref_ext` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `ref_int` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `ref_supplier` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `date_reception` datetime DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `tracking_number` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `billed` smallint(6) DEFAULT '0',
  `height` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `size_units` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `weight_units` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `note_private` text COLLATE latin1_german2_ci,
  `note_public` text COLLATE latin1_german2_ci,
  `model_pdf` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_reception_uk_ref` (`ref`,`entity`),
  KEY `idx_reception_fk_soc` (`fk_soc`),
  KEY `idx_reception_fk_user_author` (`fk_user_author`),
  KEY `idx_reception_fk_user_valid` (`fk_user_valid`),
  KEY `idx_reception_fk_shipping_method` (`fk_shipping_method`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_reception_extrafields`
--

DROP TABLE IF EXISTS `doli_reception_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_reception_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_reception_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_resource`
--

DROP TABLE IF EXISTS `doli_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_resource` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(255) DEFAULT NULL,
  `asset_number` varchar(255) DEFAULT NULL,
  `description` text,
  `fk_code_type_resource` varchar(32) DEFAULT NULL,
  `note_public` text,
  `note_private` text,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_country` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_resource_ref` (`ref`,`entity`),
  KEY `fk_code_type_resource_idx` (`fk_code_type_resource`),
  KEY `idx_resource_fk_country` (`fk_country`),
  CONSTRAINT `fk_resource_fk_country` FOREIGN KEY (`fk_country`) REFERENCES `doli_c_country` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_resource_extrafields`
--

DROP TABLE IF EXISTS `doli_resource_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_resource_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_resource_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_rights_def`
--

DROP TABLE IF EXISTS `doli_rights_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_rights_def` (
  `id` int(11) NOT NULL DEFAULT '0',
  `libelle` varchar(255) DEFAULT NULL,
  `module` varchar(64) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `perms` varchar(50) DEFAULT NULL,
  `subperms` varchar(50) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `bydefault` tinyint(4) DEFAULT '0',
  `module_position` int(11) NOT NULL DEFAULT '0',
  `family_position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe`
--

DROP TABLE IF EXISTS `doli_societe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(128) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(60) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '0',
  `parent` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `code_client` varchar(24) DEFAULT NULL,
  `code_fournisseur` varchar(24) DEFAULT NULL,
  `code_compta` varchar(24) DEFAULT NULL,
  `code_compta_fournisseur` varchar(24) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT '0',
  `fk_pays` int(11) DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `socialnetworks` text,
  `skype` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `snapchat` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `fk_effectif` int(11) DEFAULT '0',
  `fk_typent` int(11) DEFAULT '0',
  `fk_forme_juridique` int(11) DEFAULT '0',
  `fk_currency` varchar(3) DEFAULT NULL,
  `siren` varchar(128) DEFAULT NULL,
  `siret` varchar(128) DEFAULT NULL,
  `ape` varchar(128) DEFAULT NULL,
  `idprof4` varchar(128) DEFAULT NULL,
  `idprof5` varchar(128) DEFAULT NULL,
  `idprof6` varchar(128) DEFAULT NULL,
  `tva_intra` varchar(20) DEFAULT NULL,
  `capital` double(24,8) DEFAULT NULL,
  `fk_stcomm` int(11) NOT NULL DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `prefix_comm` varchar(5) DEFAULT NULL,
  `client` tinyint(4) DEFAULT '0',
  `fournisseur` tinyint(4) DEFAULT '0',
  `supplier_account` varchar(32) DEFAULT NULL,
  `fk_prospectlevel` varchar(12) DEFAULT NULL,
  `customer_bad` tinyint(4) DEFAULT '0',
  `customer_rate` double DEFAULT '0',
  `supplier_rate` double DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `remise_client` double DEFAULT '0',
  `remise_supplier` double DEFAULT '0',
  `mode_reglement` tinyint(4) DEFAULT NULL,
  `cond_reglement` tinyint(4) DEFAULT NULL,
  `mode_reglement_supplier` tinyint(4) DEFAULT NULL,
  `cond_reglement_supplier` tinyint(4) DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `tva_assuj` tinyint(4) DEFAULT '1',
  `localtax1_assuj` tinyint(4) DEFAULT '0',
  `localtax1_value` double(6,3) DEFAULT NULL,
  `localtax2_assuj` tinyint(4) DEFAULT '0',
  `localtax2_value` double(6,3) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `price_level` int(11) DEFAULT NULL,
  `outstanding_limit` double(24,8) DEFAULT NULL,
  `order_min_amount` double(24,8) DEFAULT NULL,
  `supplier_order_min_amount` double(24,8) DEFAULT NULL,
  `default_lang` varchar(6) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `webservices_url` varchar(255) DEFAULT NULL,
  `webservices_key` varchar(128) DEFAULT NULL,
  `name_alias` varchar(128) DEFAULT NULL,
  `fk_incoterms` int(11) DEFAULT NULL,
  `location_incoterms` varchar(255) DEFAULT NULL,
  `model_pdf` varchar(255) DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT '0',
  `logo_squarred` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_societe_prefix_comm` (`prefix_comm`,`entity`),
  UNIQUE KEY `uk_societe_code_client` (`code_client`,`entity`),
  UNIQUE KEY `uk_societe_code_fournisseur` (`code_fournisseur`,`entity`),
  UNIQUE KEY `uk_societe_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  KEY `idx_societe_user_creat` (`fk_user_creat`),
  KEY `idx_societe_user_modif` (`fk_user_modif`),
  KEY `idx_societe_barcode` (`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_account`
--

DROP TABLE IF EXISTS `doli_societe_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_account` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT '1',
  `key_account` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `login` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `pass_encoding` varchar(24) COLLATE latin1_german2_ci DEFAULT NULL,
  `pass_crypted` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `pass_temp` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `site` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_website` int(11) DEFAULT NULL,
  `note_private` text COLLATE latin1_german2_ci,
  `date_last_login` datetime DEFAULT NULL,
  `date_previous_login` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `site_account` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_societe_account_login_website_soc` (`entity`,`fk_soc`,`login`,`site`,`fk_website`),
  UNIQUE KEY `uk_societe_account_key_account_soc` (`entity`,`fk_soc`,`key_account`,`site`,`fk_website`),
  KEY `idx_societe_account_rowid` (`rowid`),
  KEY `idx_societe_account_login` (`login`),
  KEY `idx_societe_account_status` (`status`),
  KEY `idx_societe_account_fk_website` (`fk_website`),
  KEY `idx_societe_account_fk_soc` (`fk_soc`),
  CONSTRAINT `doli_societe_account_fk_societe` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `doli_societe_account_fk_website` FOREIGN KEY (`fk_website`) REFERENCES `doli_website` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_address`
--

DROP TABLE IF EXISTS `doli_societe_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_address` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `note` text,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_commerciaux`
--

DROP TABLE IF EXISTS `doli_societe_commerciaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_commerciaux` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_societe_commerciaux` (`fk_soc`,`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_contacts`
--

DROP TABLE IF EXISTS `doli_societe_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_contacts` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `date_creation` datetime NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_c_type_contact` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_societe_contacts_idx1` (`entity`,`fk_soc`,`fk_c_type_contact`,`fk_socpeople`),
  KEY `fk_societe_contacts_fk_c_type_contact` (`fk_c_type_contact`),
  KEY `fk_societe_contacts_fk_soc` (`fk_soc`),
  KEY `fk_societe_contacts_fk_socpeople` (`fk_socpeople`),
  CONSTRAINT `fk_societe_contacts_fk_socpeople` FOREIGN KEY (`fk_socpeople`) REFERENCES `doli_socpeople` (`rowid`),
  CONSTRAINT `fk_societe_contacts_fk_c_type_contact` FOREIGN KEY (`fk_c_type_contact`) REFERENCES `doli_c_type_contact` (`rowid`),
  CONSTRAINT `fk_societe_contacts_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_extrafields`
--

DROP TABLE IF EXISTS `doli_societe_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_societe_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_log`
--

DROP TABLE IF EXISTS `doli_societe_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datel` datetime DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_statut` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `label` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_prices`
--

DROP TABLE IF EXISTS `doli_societe_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_prices` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_soc` int(11) DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `price_level` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_remise`
--

DROP TABLE IF EXISTS `doli_societe_remise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_remise` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `remise_client` double(6,3) NOT NULL DEFAULT '0.000',
  `note` text,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_remise_except`
--

DROP TABLE IF EXISTS `doli_societe_remise_except`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_remise_except` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `discount_type` int(11) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `amount_ht` double(24,8) NOT NULL,
  `amount_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `amount_ttc` double(24,8) NOT NULL DEFAULT '0.00000000',
  `tva_tx` double(6,3) NOT NULL DEFAULT '0.000',
  `fk_user` int(11) NOT NULL,
  `fk_facture_line` int(11) DEFAULT NULL,
  `fk_facture` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `multicurrency_amount_ht` double(24,8) NOT NULL DEFAULT '0.00000000',
  `multicurrency_amount_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `multicurrency_amount_ttc` double(24,8) NOT NULL DEFAULT '0.00000000',
  `fk_invoice_supplier_line` int(11) DEFAULT NULL,
  `fk_invoice_supplier` int(11) DEFAULT NULL,
  `fk_invoice_supplier_source` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_societe_remise_except_fk_user` (`fk_user`),
  KEY `idx_societe_remise_except_fk_soc` (`fk_soc`),
  KEY `idx_societe_remise_except_fk_facture_line` (`fk_facture_line`),
  KEY `idx_societe_remise_except_fk_facture` (`fk_facture`),
  KEY `idx_societe_remise_except_fk_facture_source` (`fk_facture_source`),
  KEY `fk_soc_remise_fk_invoice_supplier_line` (`fk_invoice_supplier_line`),
  KEY `fk_societe_remise_fk_invoice_supplier_source` (`fk_invoice_supplier`),
  KEY `idx_societe_remise_except_discount_type` (`discount_type`),
  CONSTRAINT `fk_societe_remise_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `doli_facture` (`rowid`),
  CONSTRAINT `fk_societe_remise_fk_facture_line` FOREIGN KEY (`fk_facture_line`) REFERENCES `doli_facturedet` (`rowid`),
  CONSTRAINT `fk_societe_remise_fk_facture_source` FOREIGN KEY (`fk_facture_source`) REFERENCES `doli_facture` (`rowid`),
  CONSTRAINT `fk_societe_remise_fk_invoice_supplier` FOREIGN KEY (`fk_invoice_supplier`) REFERENCES `doli_facture_fourn` (`rowid`),
  CONSTRAINT `fk_societe_remise_fk_invoice_supplier_source` FOREIGN KEY (`fk_invoice_supplier`) REFERENCES `doli_facture_fourn` (`rowid`),
  CONSTRAINT `fk_societe_remise_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_societe_remise_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `doli_user` (`rowid`),
  CONSTRAINT `fk_soc_remise_fk_invoice_supplier_line` FOREIGN KEY (`fk_invoice_supplier_line`) REFERENCES `doli_facture_fourn_det` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_remise_supplier`
--

DROP TABLE IF EXISTS `doli_societe_remise_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_remise_supplier` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `remise_supplier` double(6,3) NOT NULL DEFAULT '0.000',
  `note` text COLLATE latin1_german2_ci,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_societe_rib`
--

DROP TABLE IF EXISTS `doli_societe_rib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_societe_rib` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(200) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `code_banque` varchar(128) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `bic` varchar(20) DEFAULT NULL,
  `iban_prefix` varchar(34) DEFAULT NULL,
  `domiciliation` varchar(255) DEFAULT NULL,
  `proprio` varchar(60) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `default_rib` smallint(6) NOT NULL DEFAULT '0',
  `rum` varchar(32) DEFAULT NULL,
  `date_rum` date DEFAULT NULL,
  `frstrecur` varchar(16) DEFAULT 'FRST',
  `import_key` varchar(14) DEFAULT NULL,
  `last_four` varchar(4) DEFAULT NULL,
  `card_type` varchar(255) DEFAULT NULL,
  `cvn` varchar(255) DEFAULT NULL,
  `exp_date_month` int(11) DEFAULT NULL,
  `exp_date_year` int(11) DEFAULT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `approved` int(11) DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `max_total_amount_of_all_payments` double(24,8) DEFAULT NULL,
  `preapproval_key` varchar(255) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `total_amount_of_all_payments` double(24,8) DEFAULT NULL,
  `stripe_card_ref` varchar(128) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `comment` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(68) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_socpeople`
--

DROP TABLE IF EXISTS `doli_socpeople`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_socpeople` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_soc` int(11) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `civility` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `poste` varchar(80) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phone_perso` varchar(30) DEFAULT NULL,
  `phone_mobile` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `socialnetworks` text,
  `jabberid` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `snapchat` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `no_email` smallint(6) NOT NULL DEFAULT '0',
  `priv` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT '0',
  `fk_user_modif` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `default_lang` varchar(6) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `statut` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  KEY `idx_socpeople_fk_soc` (`fk_soc`),
  KEY `idx_socpeople_fk_user_creat` (`fk_user_creat`),
  CONSTRAINT `fk_socpeople_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `doli_societe` (`rowid`),
  CONSTRAINT `fk_socpeople_user_creat_user_rowid` FOREIGN KEY (`fk_user_creat`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_socpeople_extrafields`
--

DROP TABLE IF EXISTS `doli_socpeople_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_socpeople_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_socpeople_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_stock_lotserial`
--

DROP TABLE IF EXISTS `doli_stock_lotserial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_stock_lotserial` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `batch` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_stock_mouvement`
--

DROP TABLE IF EXISTS `doli_stock_mouvement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_stock_mouvement` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datem` datetime DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `value` double DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `type_mouvement` smallint(6) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `fk_origin` int(11) DEFAULT NULL,
  `origintype` varchar(32) DEFAULT NULL,
  `model_pdf` varchar(255) DEFAULT NULL,
  `fk_projet` int(11) NOT NULL DEFAULT '0',
  `inventorycode` varchar(128) DEFAULT NULL,
  `batch` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `fk_project` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_stock_mouvement_fk_product` (`fk_product`),
  KEY `idx_stock_mouvement_fk_entrepot` (`fk_entrepot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_subscription`
--

DROP TABLE IF EXISTS `doli_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_subscription` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `dateadh` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `subscription` double(24,8) DEFAULT NULL,
  `fk_bank` int(11) DEFAULT NULL,
  `note` text,
  `fk_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_cotisation` (`fk_adherent`,`dateadh`),
  UNIQUE KEY `uk_subscription` (`fk_adherent`,`dateadh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_supplier_proposal`
--

DROP TABLE IF EXISTS `doli_supplier_proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_supplier_proposal` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) COLLATE latin1_german2_ci NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `ref_int` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `price` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `note_private` text COLLATE latin1_german2_ci,
  `note_public` text COLLATE latin1_german2_ci,
  `model_pdf` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `extraparams` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `multicurrency_tx` double(24,8) DEFAULT '1.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `last_main_doc` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_supplier_proposal_extrafields`
--

DROP TABLE IF EXISTS `doli_supplier_proposal_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_supplier_proposal_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_supplier_proposaldet`
--

DROP TABLE IF EXISTS `doli_supplier_proposaldet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_supplier_proposaldet` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_supplier_proposal` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `description` text COLLATE latin1_german2_ci,
  `fk_remise_except` int(11) DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `vat_src_code` varchar(10) COLLATE latin1_german2_ci DEFAULT '',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `ref_fourn` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_multicurrency` int(11) DEFAULT NULL,
  `multicurrency_code` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `multicurrency_subprice` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ht` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_tva` double(24,8) DEFAULT '0.00000000',
  `multicurrency_total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_unit` int(11) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_supplier_proposaldet_fk_supplier_proposal` (`fk_supplier_proposal`),
  KEY `idx_supplier_proposaldet_fk_product` (`fk_product`),
  KEY `fk_supplier_proposaldet_fk_unit` (`fk_unit`),
  CONSTRAINT `fk_supplier_proposaldet_fk_supplier_proposal` FOREIGN KEY (`fk_supplier_proposal`) REFERENCES `doli_supplier_proposal` (`rowid`),
  CONSTRAINT `fk_supplier_proposaldet_fk_unit` FOREIGN KEY (`fk_unit`) REFERENCES `doli_c_units` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_supplier_proposaldet_extrafields`
--

DROP TABLE IF EXISTS `doli_supplier_proposaldet_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_supplier_proposaldet_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_takepos_floor_tables`
--

DROP TABLE IF EXISTS `doli_takepos_floor_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_takepos_floor_tables` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `label` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `leftpos` float DEFAULT NULL,
  `toppos` float DEFAULT NULL,
  `floor` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_ticket`
--

DROP TABLE IF EXISTS `doli_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_ticket` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) DEFAULT '1',
  `ref` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `track_id` varchar(128) COLLATE latin1_german2_ci NOT NULL,
  `fk_soc` int(11) DEFAULT '0',
  `fk_project` int(11) DEFAULT '0',
  `origin_email` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `fk_user_assign` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `message` text COLLATE latin1_german2_ci,
  `fk_statut` int(11) DEFAULT NULL,
  `resolution` int(11) DEFAULT NULL,
  `progress` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `timing` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `type_code` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `category_code` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `severity_code` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `date_close` datetime DEFAULT NULL,
  `notify_tiers_at_create` tinyint(4) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_ticket_track_id` (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_ticket_extrafields`
--

DROP TABLE IF EXISTS `doli_ticket_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_ticket_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_ticket_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_tva`
--

DROP TABLE IF EXISTS `doli_tva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_tva` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` date DEFAULT NULL,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double(24,8) DEFAULT NULL,
  `fk_typepayment` int(11) DEFAULT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_user`
--

DROP TABLE IF EXISTS `doli_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_user` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(50) DEFAULT NULL,
  `ref_int` varchar(50) DEFAULT NULL,
  `employee` smallint(6) DEFAULT '1',
  `fk_establishment` int(11) DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(128) DEFAULT NULL,
  `pass_crypted` varchar(128) DEFAULT NULL,
  `pass_temp` varchar(128) DEFAULT NULL,
  `api_key` varchar(128) DEFAULT NULL,
  `civility` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_state` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT '0',
  `job` varchar(128) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `office_phone` varchar(20) DEFAULT NULL,
  `office_fax` varchar(20) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `personal_mobile` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `personal_email` varchar(255) DEFAULT NULL,
  `socialnetworks` text,
  `signature` text,
  `admin` smallint(6) DEFAULT '0',
  `module_comm` smallint(6) DEFAULT '1',
  `module_compta` smallint(6) DEFAULT '1',
  `fk_soc` int(11) DEFAULT NULL,
  `fk_socpeople` int(11) DEFAULT NULL,
  `fk_member` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `fk_user_expense_validator` int(11) DEFAULT NULL,
  `fk_user_holiday_validator` int(11) DEFAULT NULL,
  `thm` double(24,8) DEFAULT NULL,
  `note` text,
  `datelastlogin` datetime DEFAULT NULL,
  `datepreviouslogin` datetime DEFAULT NULL,
  `egroupware_id` int(11) DEFAULT NULL,
  `ldap_sid` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '1',
  `photo` varchar(255) DEFAULT NULL,
  `lang` varchar(6) DEFAULT NULL,
  `color` varchar(6) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `accountancy_code` varchar(32) DEFAULT NULL,
  `nb_holiday` int(11) DEFAULT '0',
  `salary` double(24,8) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `dateemployment` date DEFAULT NULL,
  `dateemploymentend` date DEFAULT NULL,
  `default_range` int(11) DEFAULT NULL,
  `default_c_exp_tax_cat` int(11) DEFAULT NULL,
  `tjm` double(24,8) DEFAULT NULL,
  `salaryextra` double(24,8) DEFAULT NULL,
  `weeklyhours` double(16,8) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `note_public` text,
  `import_key` varchar(14) DEFAULT NULL,
  `model_pdf` varchar(255) DEFAULT NULL,
  `pass_encoding` varchar(24) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `snapchat` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `fk_warehouse` int(11) DEFAULT NULL,
  `iplastlogin` varchar(250) DEFAULT NULL,
  `ippreviouslogin` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_user_login` (`login`,`entity`),
  UNIQUE KEY `uk_user_fk_socpeople` (`fk_socpeople`),
  UNIQUE KEY `uk_user_fk_member` (`fk_member`),
  KEY `idx_user_fk_societe` (`fk_soc`),
  KEY `idx_user_api_key` (`api_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_user_alert`
--

DROP TABLE IF EXISTS `doli_user_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_user_alert` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_user_clicktodial`
--

DROP TABLE IF EXISTS `doli_user_clicktodial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_user_clicktodial` (
  `fk_user` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `login` varchar(32) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `poste` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_user_employment`
--

DROP TABLE IF EXISTS `doli_user_employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_user_employment` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `ref_ext` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `job` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `salary` double(24,8) DEFAULT NULL,
  `salaryextra` double(24,8) DEFAULT NULL,
  `weeklyhours` double(16,8) DEFAULT NULL,
  `dateemployment` date DEFAULT NULL,
  `dateemploymentend` date DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_user_extrafields`
--

DROP TABLE IF EXISTS `doli_user_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_user_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_user_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_user_param`
--

DROP TABLE IF EXISTS `doli_user_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_user_param` (
  `fk_user` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `param` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `uk_user_param` (`fk_user`,`param`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_user_rib`
--

DROP TABLE IF EXISTS `doli_user_rib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_user_rib` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) COLLATE latin1_german2_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `code_banque` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `code_guichet` varchar(6) COLLATE latin1_german2_ci DEFAULT NULL,
  `number` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `cle_rib` varchar(5) COLLATE latin1_german2_ci DEFAULT NULL,
  `bic` varchar(11) COLLATE latin1_german2_ci DEFAULT NULL,
  `iban_prefix` varchar(34) COLLATE latin1_german2_ci DEFAULT NULL,
  `domiciliation` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `proprio` varchar(60) COLLATE latin1_german2_ci DEFAULT NULL,
  `owner_address` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_user_rights`
--

DROP TABLE IF EXISTS `doli_user_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_user_rights` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_user_rights` (`entity`,`fk_user`,`fk_id`),
  KEY `fk_user_rights_fk_user_user` (`fk_user`),
  CONSTRAINT `fk_user_rights_fk_user_user` FOREIGN KEY (`fk_user`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_usergroup`
--

DROP TABLE IF EXISTS `doli_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_usergroup` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_usergroup_name` (`nom`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_usergroup_extrafields`
--

DROP TABLE IF EXISTS `doli_usergroup_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_usergroup_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_usergroup_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_usergroup_rights`
--

DROP TABLE IF EXISTS `doli_usergroup_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_usergroup_rights` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_usergroup` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_usergroup_rights` (`entity`,`fk_usergroup`,`fk_id`),
  KEY `fk_usergroup_rights_fk_usergroup` (`fk_usergroup`),
  CONSTRAINT `fk_usergroup_rights_fk_usergroup` FOREIGN KEY (`fk_usergroup`) REFERENCES `doli_usergroup` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_usergroup_user`
--

DROP TABLE IF EXISTS `doli_usergroup_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_usergroup_user` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user` int(11) NOT NULL,
  `fk_usergroup` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_usergroup_user` (`entity`,`fk_user`,`fk_usergroup`),
  KEY `fk_usergroup_user_fk_user` (`fk_user`),
  KEY `fk_usergroup_user_fk_usergroup` (`fk_usergroup`),
  CONSTRAINT `fk_usergroup_user_fk_usergroup` FOREIGN KEY (`fk_usergroup`) REFERENCES `doli_usergroup` (`rowid`),
  CONSTRAINT `fk_usergroup_user_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `doli_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_website`
--

DROP TABLE IF EXISTS `doli_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_website` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `description` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `fk_default_home` int(11) DEFAULT NULL,
  `virtualhost` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_modification` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `maincolor` varchar(16) COLLATE latin1_german2_ci DEFAULT NULL,
  `maincolorbis` varchar(16) COLLATE latin1_german2_ci DEFAULT NULL,
  `use_manifest` int(11) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_website_ref` (`ref`,`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_website_extrafields`
--

DROP TABLE IF EXISTS `doli_website_extrafields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_website_extrafields` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_website_extrafields` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doli_website_page`
--

DROP TABLE IF EXISTS `doli_website_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doli_website_page` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `fk_website` int(11) DEFAULT NULL,
  `pageurl` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `aliasalt` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `title` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `description` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `content` mediumtext COLLATE latin1_german2_ci,
  `status` int(11) DEFAULT '1',
  `date_creation` datetime DEFAULT NULL,
  `date_modification` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `type_container` varchar(16) COLLATE latin1_german2_ci NOT NULL DEFAULT 'page',
  `lang` varchar(6) COLLATE latin1_german2_ci DEFAULT NULL,
  `fk_page` int(11) DEFAULT NULL,
  `grabbed_from` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `htmlheader` mediumtext COLLATE latin1_german2_ci,
  `import_key` varchar(14) COLLATE latin1_german2_ci DEFAULT NULL,
  `image` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_website_page_url` (`fk_website`,`pageurl`),
  CONSTRAINT `fk_website_page_website` FOREIGN KEY (`fk_website`) REFERENCES `doli_website` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_doli_accouting_account`
--

DROP TABLE IF EXISTS `tmp_doli_accouting_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_doli_accouting_account` (
  `MINID` int(11) DEFAULT NULL,
  `MAXID` int(11) DEFAULT NULL,
  `account_number` varchar(32) CHARACTER SET utf8 NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_pcg_version` varchar(32) CHARACTER SET utf8 NOT NULL,
  `NB` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 18:20:16
