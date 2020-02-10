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
-- Dumping data for table `doli_accounting_account`
--

LOCK TABLES `doli_accounting_account` WRITE;
/*!40000 ALTER TABLE `doli_accounting_account` DISABLE KEYS */;
INSERT INTO `doli_accounting_account` VALUES (1,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','CAPITAL','101',1401,'Capital',0,NULL,NULL,1,NULL,NULL),(2,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','105',1401,'Ecarts de réévaluation',0,NULL,NULL,1,NULL,NULL),(3,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','1061',1401,'Réserve légale',0,NULL,NULL,1,NULL,NULL),(4,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','1063',1401,'Réserves statutaires ou contractuelles',0,NULL,NULL,1,NULL,NULL),(5,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','1064',1401,'Réserves réglementées',0,NULL,NULL,1,NULL,NULL),(6,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','1068',1401,'Autres réserves',0,NULL,NULL,1,NULL,NULL),(7,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','108',1401,'Compte de l\'exploitant',0,NULL,NULL,1,NULL,NULL),(8,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','12',1401,'Résultat de l\'exercice',0,NULL,NULL,1,NULL,NULL),(9,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','145',1401,'Amortissements dérogatoires',0,NULL,NULL,1,NULL,NULL),(10,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','146',1401,'Provision spéciale de réévaluation',0,NULL,NULL,1,NULL,NULL),(11,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','147',1401,'Plus-values réinvesties',0,NULL,NULL,1,NULL,NULL),(12,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','148',1401,'Autres provisions réglementées',0,NULL,NULL,1,NULL,NULL),(13,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','15',1401,'Provisions pour risques et charges',0,NULL,NULL,1,NULL,NULL),(14,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','CAPIT','XXXXXX','16',1401,'Emprunts et dettes assimilees',0,NULL,NULL,1,NULL,NULL),(15,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','20',1402,'Immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(16,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','201',15,'Frais d\'établissement',0,NULL,NULL,1,NULL,NULL),(17,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','206',15,'Droit au bail',0,NULL,NULL,1,NULL,NULL),(18,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','207',15,'Fonds commercial',0,NULL,NULL,1,NULL,NULL),(19,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','208',15,'Autres immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(20,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','21',1402,'Immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(21,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','23',1402,'Immobilisations en cours',0,NULL,NULL,1,NULL,NULL),(22,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','27',1402,'Autres immobilisations financieres',0,NULL,NULL,1,NULL,NULL),(23,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','280',1402,'Amortissements des immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(24,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','281',1402,'Amortissements des immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(25,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','290',1402,'Provisions pour dépréciation des immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(26,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','291',1402,'Provisions pour dépréciation des immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(27,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','IMMO','XXXXXX','297',1402,'Provisions pour dépréciation des autres immobilisations financières',0,NULL,NULL,1,NULL,NULL),(28,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','31',1403,'Matieres premières',0,NULL,NULL,1,NULL,NULL),(29,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','32',1403,'Autres approvisionnements',0,NULL,NULL,1,NULL,NULL),(30,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','33',1403,'En-cours de production de biens',0,NULL,NULL,1,NULL,NULL),(31,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','34',1403,'En-cours de production de services',0,NULL,NULL,1,NULL,NULL),(32,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','35',1403,'Stocks de produits',0,NULL,NULL,1,NULL,NULL),(33,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','37',1403,'Stocks de marchandises',0,NULL,NULL,1,NULL,NULL),(34,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','391',1403,'Provisions pour dépréciation des matières premières',0,NULL,NULL,1,NULL,NULL),(35,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','392',1403,'Provisions pour dépréciation des autres approvisionnements',0,NULL,NULL,1,NULL,NULL),(36,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','393',1403,'Provisions pour dépréciation des en-cours de production de biens',0,NULL,NULL,1,NULL,NULL),(37,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','394',1403,'Provisions pour dépréciation des en-cours de production de services',0,NULL,NULL,1,NULL,NULL),(38,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','395',1403,'Provisions pour dépréciation des stocks de produits',0,NULL,NULL,1,NULL,NULL),(39,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','STOCK','XXXXXX','397',1403,'Provisions pour dépréciation des stocks de marchandises',0,NULL,NULL,1,NULL,NULL),(40,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','SUPPLIER','400',1404,'Fournisseurs et Comptes rattachés',0,NULL,NULL,1,NULL,NULL),(41,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','409',1404,'Fournisseurs débiteurs',0,NULL,NULL,1,NULL,NULL),(42,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','CUSTOMER','410',1404,'Clients et Comptes rattachés',0,NULL,NULL,1,NULL,NULL),(43,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','419',1404,'Clients créditeurs',0,NULL,NULL,1,NULL,NULL),(44,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','421',1404,'Personnel',0,NULL,NULL,1,NULL,NULL),(45,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','428',1404,'Personnel',0,NULL,NULL,1,NULL,NULL),(46,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','43',1404,'Sécurité sociale et autres organismes sociaux',0,NULL,NULL,1,NULL,NULL),(47,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','444',1404,'Etat - impôts sur bénéfice',0,NULL,NULL,1,NULL,NULL),(48,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','445',1404,'Etat - Taxes sur chiffre affaires',0,NULL,NULL,1,NULL,NULL),(49,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','447',1404,'Autres impôts, taxes et versements assimilés',0,NULL,NULL,1,NULL,NULL),(50,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','45',1404,'Groupe et associes',0,NULL,NULL,1,NULL,NULL),(51,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','455',50,'Associés',0,NULL,NULL,1,NULL,NULL),(52,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','46',1404,'Débiteurs divers et créditeurs divers',0,NULL,NULL,1,NULL,NULL),(53,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','47',1404,'Comptes transitoires ou d\'attente',0,NULL,NULL,1,NULL,NULL),(54,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','481',1404,'Charges à répartir sur plusieurs exercices',0,NULL,NULL,1,NULL,NULL),(55,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','486',1404,'Charges constatées d\'avance',0,NULL,NULL,1,NULL,NULL),(56,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','487',1404,'Produits constatés d\'avance',0,NULL,NULL,1,NULL,NULL),(57,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','491',1404,'Provisions pour dépréciation des comptes de clients',0,NULL,NULL,1,NULL,NULL),(58,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','TIERS','XXXXXX','496',1404,'Provisions pour dépréciation des comptes de débiteurs divers',0,NULL,NULL,1,NULL,NULL),(59,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','FINAN','XXXXXX','50',1405,'Valeurs mobilières de placement',0,NULL,NULL,1,NULL,NULL),(60,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','FINAN','BANK','51',1405,'Banques, établissements financiers et assimilés',0,NULL,NULL,1,NULL,NULL),(61,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','FINAN','CASH','53',1405,'Caisse',0,NULL,NULL,1,NULL,NULL),(62,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','FINAN','XXXXXX','54',1405,'Régies d\'avance et accréditifs',0,NULL,NULL,1,NULL,NULL),(63,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','FINAN','XXXXXX','58',1405,'Virements internes',0,NULL,NULL,1,NULL,NULL),(64,1,NULL,'2020-02-09 17:36:23','PCG99-ABREGE','FINAN','XXXXXX','590',1405,'Provisions pour dépréciation des valeurs mobilières de placement',0,NULL,NULL,1,NULL,NULL),(65,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','PRODUCT','60',1406,'Achats',0,NULL,NULL,1,NULL,NULL),(66,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','603',65,'Variations des stocks',0,NULL,NULL,1,NULL,NULL),(67,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','SERVICE','61',1406,'Services extérieurs',0,NULL,NULL,1,NULL,NULL),(68,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','62',1406,'Autres services extérieurs',0,NULL,NULL,1,NULL,NULL),(69,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','63',1406,'Impôts, taxes et versements assimiles',0,NULL,NULL,1,NULL,NULL),(70,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','641',1406,'Rémunérations du personnel',0,NULL,NULL,1,NULL,NULL),(71,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','644',1406,'Rémunération du travail de l\'exploitant',0,NULL,NULL,1,NULL,NULL),(72,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','SOCIAL','645',1406,'Charges de sécurité sociale et de prévoyance',0,NULL,NULL,1,NULL,NULL),(73,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','646',1406,'Cotisations sociales personnelles de l\'exploitant',0,NULL,NULL,1,NULL,NULL),(74,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','65',1406,'Autres charges de gestion courante',0,NULL,NULL,1,NULL,NULL),(75,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','66',1406,'Charges financières',0,NULL,NULL,1,NULL,NULL),(76,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','67',1406,'Charges exceptionnelles',0,NULL,NULL,1,NULL,NULL),(77,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','681',1406,'Dotations aux amortissements et aux provisions',0,NULL,NULL,1,NULL,NULL),(78,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','686',1406,'Dotations aux amortissements et aux provisions',0,NULL,NULL,1,NULL,NULL),(79,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','687',1406,'Dotations aux amortissements et aux provisions',0,NULL,NULL,1,NULL,NULL),(80,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','691',1406,'Participation des salariés aux résultats',0,NULL,NULL,1,NULL,NULL),(81,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','695',1406,'Impôts sur les bénéfices',0,NULL,NULL,1,NULL,NULL),(82,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','697',1406,'Imposition forfaitaire annuelle des sociétés',0,NULL,NULL,1,NULL,NULL),(83,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','699',1406,'Produits',0,NULL,NULL,1,NULL,NULL),(84,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','PRODUCT','701',1407,'Ventes de produits finis',0,NULL,NULL,1,NULL,NULL),(85,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','SERVICE','706',1407,'Prestations de services',0,NULL,NULL,1,NULL,NULL),(86,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','PRODUCT','707',1407,'Ventes de marchandises',0,NULL,NULL,1,NULL,NULL),(87,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','PRODUCT','708',1407,'Produits des activités annexes',0,NULL,NULL,1,NULL,NULL),(88,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','709',1407,'Rabais, remises et ristournes accordés par l\'entreprise',0,NULL,NULL,1,NULL,NULL),(89,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','713',1407,'Variation des stocks',0,NULL,NULL,1,NULL,NULL),(90,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','72',1407,'Production immobilisée',0,NULL,NULL,1,NULL,NULL),(91,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','73',1407,'Produits nets partiels sur opérations à long terme',0,NULL,NULL,1,NULL,NULL),(92,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','74',1407,'Subventions d\'exploitation',0,NULL,NULL,1,NULL,NULL),(93,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','75',1407,'Autres produits de gestion courante',0,NULL,NULL,1,NULL,NULL),(94,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','753',93,'Jetons de présence et rémunérations d\'administrateurs, gérants,...',0,NULL,NULL,1,NULL,NULL),(95,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','754',93,'Ristournes perçues des coopératives',0,NULL,NULL,1,NULL,NULL),(96,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','755',93,'Quotes-parts de résultat sur opérations faites en commun',0,NULL,NULL,1,NULL,NULL),(97,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','76',1407,'Produits financiers',0,NULL,NULL,1,NULL,NULL),(98,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','77',1407,'Produits exceptionnels',0,NULL,NULL,1,NULL,NULL),(99,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','781',1407,'Reprises sur amortissements et provisions',0,NULL,NULL,1,NULL,NULL),(100,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','786',1407,'Reprises sur provisions pour risques',0,NULL,NULL,1,NULL,NULL),(101,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','787',1407,'Reprises sur provisions',0,NULL,NULL,1,NULL,NULL),(102,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','79',1407,'Transferts de charges',0,NULL,NULL,1,NULL,NULL),(103,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','10',1501,'Capital  et réserves',0,NULL,NULL,1,NULL,NULL),(104,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','CAPITAL','101',103,'Capital',0,NULL,NULL,1,NULL,NULL),(105,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','104',103,'Primes liées au capital social',0,NULL,NULL,1,NULL,NULL),(106,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','105',103,'Ecarts de réévaluation',0,NULL,NULL,1,NULL,NULL),(107,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','106',103,'Réserves',0,NULL,NULL,1,NULL,NULL),(108,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','107',103,'Ecart d\'equivalence',0,NULL,NULL,1,NULL,NULL),(109,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','108',103,'Compte de l\'exploitant',0,NULL,NULL,1,NULL,NULL),(110,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','109',103,'Actionnaires : capital souscrit - non appelé',0,NULL,NULL,1,NULL,NULL),(111,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','11',1501,'Report à nouveau (solde créditeur ou débiteur)',0,NULL,NULL,1,NULL,NULL),(112,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','110',111,'Report à nouveau (solde créditeur)',0,NULL,NULL,1,NULL,NULL),(113,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','119',111,'Report à nouveau (solde débiteur)',0,NULL,NULL,1,NULL,NULL),(114,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','12',1501,'Résultat de l\'exercice (bénéfice ou perte)',0,NULL,NULL,1,NULL,NULL),(115,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','120',114,'Résultat de l\'exercice (bénéfice)',0,NULL,NULL,1,NULL,NULL),(116,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','129',114,'Résultat de l\'exercice (perte)',0,NULL,NULL,1,NULL,NULL),(117,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','13',1501,'Subventions d\'investissement',0,NULL,NULL,1,NULL,NULL),(118,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','131',117,'Subventions d\'équipement',0,NULL,NULL,1,NULL,NULL),(119,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','138',117,'Autres subventions d\'investissement',0,NULL,NULL,1,NULL,NULL),(120,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','139',117,'Subventions d\'investissement inscrites au compte de résultat',0,NULL,NULL,1,NULL,NULL),(121,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','14',1501,'Provisions réglementées',0,NULL,NULL,1,NULL,NULL),(122,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','142',121,'Provisions réglementées relatives aux immobilisations',0,NULL,NULL,1,NULL,NULL),(123,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','143',121,'Provisions réglementées relatives aux stocks',0,NULL,NULL,1,NULL,NULL),(124,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','144',121,'Provisions réglementées relatives aux autres éléments de l\'actif',0,NULL,NULL,1,NULL,NULL),(125,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','145',121,'Amortissements dérogatoires',0,NULL,NULL,1,NULL,NULL),(126,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','146',121,'Provision spéciale de réévaluation',0,NULL,NULL,1,NULL,NULL),(127,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','147',121,'Plus-values réinvesties',0,NULL,NULL,1,NULL,NULL),(128,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','148',121,'Autres provisions réglementées',0,NULL,NULL,1,NULL,NULL),(129,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','15',1501,'Provisions pour risques et charges',0,NULL,NULL,1,NULL,NULL),(130,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','151',129,'Provisions pour risques',0,NULL,NULL,1,NULL,NULL),(131,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','153',129,'Provisions pour pensions et obligations similaires',0,NULL,NULL,1,NULL,NULL),(132,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','154',129,'Provisions pour restructurations',0,NULL,NULL,1,NULL,NULL),(133,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','155',129,'Provisions pour impôts',0,NULL,NULL,1,NULL,NULL),(134,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','156',129,'Provisions pour renouvellement des immobilisations (entreprises concessionnaires)',0,NULL,NULL,1,NULL,NULL),(135,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','157',129,'Provisions pour charges à répartir sur plusieurs exercices',0,NULL,NULL,1,NULL,NULL),(136,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','158',129,'Autres provisions pour charges',0,NULL,NULL,1,NULL,NULL),(137,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','16',1501,'Emprunts et dettes assimilees',0,NULL,NULL,1,NULL,NULL),(138,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','161',137,'Emprunts obligataires convertibles',0,NULL,NULL,1,NULL,NULL),(139,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','163',137,'Autres emprunts obligataires',0,NULL,NULL,1,NULL,NULL),(140,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','164',137,'Emprunts auprès des établissements de crédit',0,NULL,NULL,1,NULL,NULL),(141,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','165',137,'Dépôts et cautionnements reçus',0,NULL,NULL,1,NULL,NULL),(142,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','166',137,'Participation des salariés aux résultats',0,NULL,NULL,1,NULL,NULL),(143,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','167',137,'Emprunts et dettes assortis de conditions particulières',0,NULL,NULL,1,NULL,NULL),(144,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','168',137,'Autres emprunts et dettes assimilées',0,NULL,NULL,1,NULL,NULL),(145,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','169',137,'Primes de remboursement des obligations',0,NULL,NULL,1,NULL,NULL),(146,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','17',1501,'Dettes rattachées à des participations',0,NULL,NULL,1,NULL,NULL),(147,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','171',146,'Dettes rattachées à des participations (groupe)',0,NULL,NULL,1,NULL,NULL),(148,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','174',146,'Dettes rattachées à des participations (hors groupe)',0,NULL,NULL,1,NULL,NULL),(149,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','178',146,'Dettes rattachées à des sociétés en participation',0,NULL,NULL,1,NULL,NULL),(150,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','18',1501,'Comptes de liaison des établissements et sociétés en participation',0,NULL,NULL,1,NULL,NULL),(151,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','181',150,'Comptes de liaison des établissements',0,NULL,NULL,1,NULL,NULL),(152,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','186',150,'Biens et prestations de services échangés entre établissements (charges)',0,NULL,NULL,1,NULL,NULL),(153,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','187',150,'Biens et prestations de services échangés entre établissements (produits)',0,NULL,NULL,1,NULL,NULL),(154,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','CAPIT','XXXXXX','188',150,'Comptes de liaison des sociétés en participation',0,NULL,NULL,1,NULL,NULL),(155,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','20',1502,'Immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(156,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','201',155,'Frais d\'établissement',0,NULL,NULL,1,NULL,NULL),(157,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','203',155,'Frais de recherche et de développement',0,NULL,NULL,1,NULL,NULL),(158,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','205',155,'Concessions et droits similaires, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires',0,NULL,NULL,1,NULL,NULL),(159,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','206',155,'Droit au bail',0,NULL,NULL,1,NULL,NULL),(160,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','207',155,'Fonds commercial',0,NULL,NULL,1,NULL,NULL),(161,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','208',155,'Autres immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(162,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','21',1502,'Immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(163,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','211',162,'Terrains',0,NULL,NULL,1,NULL,NULL),(164,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','212',162,'Agencements et aménagements de terrains',0,NULL,NULL,1,NULL,NULL),(165,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','213',162,'Constructions',0,NULL,NULL,1,NULL,NULL),(166,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','214',162,'Constructions sur sol d\'autrui',0,NULL,NULL,1,NULL,NULL),(167,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','215',162,'Installations techniques, matériels et outillage industriels',0,NULL,NULL,1,NULL,NULL),(168,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','218',162,'Autres immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(169,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','22',1502,'Immobilisations mises en concession',0,NULL,NULL,1,NULL,NULL),(170,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','23',1502,'Immobilisations en cours',0,NULL,NULL,1,NULL,NULL),(171,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','231',170,'Immobilisations corporelles en cours',0,NULL,NULL,1,NULL,NULL),(172,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','232',170,'Immobilisations incorporelles en cours',0,NULL,NULL,1,NULL,NULL),(173,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','237',170,'Avances et acomptes versés sur immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(174,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','238',170,'Avances et acomptes versés sur commandes d\'immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(175,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','25',1502,'Parts dans des entreprises liées et créances sur des entreprises liées',0,NULL,NULL,1,NULL,NULL),(176,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','26',1502,'Participations et créances rattachées à des participations',0,NULL,NULL,1,NULL,NULL),(177,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','261',176,'Titres de participation',0,NULL,NULL,1,NULL,NULL),(178,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','266',176,'Autres formes de participation',0,NULL,NULL,1,NULL,NULL),(179,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','267',176,'Créances rattachées à des participations',0,NULL,NULL,1,NULL,NULL),(180,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','268',176,'Créances rattachées à des sociétés en participation',0,NULL,NULL,1,NULL,NULL),(181,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','269',176,'Versements restant à effectuer sur titres de participation non libérés',0,NULL,NULL,1,NULL,NULL),(182,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','27',1502,'Autres immobilisations financieres',0,NULL,NULL,1,NULL,NULL),(183,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','271',183,'Titres immobilisés autres que les titres immobilisés de l\'activité de portefeuille (droit de propriété)',0,NULL,NULL,1,NULL,NULL),(184,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','272',183,'Titres immobilisés (droit de créance)',0,NULL,NULL,1,NULL,NULL),(185,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','273',183,'Titres immobilisés de l\'activité de portefeuille',0,NULL,NULL,1,NULL,NULL),(186,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','274',183,'Prêts',0,NULL,NULL,1,NULL,NULL),(187,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','275',183,'Dépôts et cautionnements versés',0,NULL,NULL,1,NULL,NULL),(188,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','276',183,'Autres créances immobilisées',0,NULL,NULL,1,NULL,NULL),(189,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','277',183,'(Actions propres ou parts propres)',0,NULL,NULL,1,NULL,NULL),(190,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','279',183,'Versements restant à effectuer sur titres immobilisés non libérés',0,NULL,NULL,1,NULL,NULL),(191,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','28',1502,'Amortissements des immobilisations',0,NULL,NULL,1,NULL,NULL),(192,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','280',191,'Amortissements des immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(193,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','281',191,'Amortissements des immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(194,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','282',191,'Amortissements des immobilisations mises en concession',0,NULL,NULL,1,NULL,NULL),(195,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','29',1502,'Dépréciations des immobilisations',0,NULL,NULL,1,NULL,NULL),(196,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','290',195,'Dépréciations des immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(197,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','291',195,'Dépréciations des immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(198,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','292',195,'Dépréciations des immobilisations mises en concession',0,NULL,NULL,1,NULL,NULL),(199,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','293',195,'Dépréciations des immobilisations en cours',0,NULL,NULL,1,NULL,NULL),(200,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','296',195,'Provisions pour dépréciation des participations et créances rattachées à des participations',0,NULL,NULL,1,NULL,NULL),(201,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','IMMO','XXXXXX','297',195,'Provisions pour dépréciation des autres immobilisations financières',0,NULL,NULL,1,NULL,NULL),(202,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','31',1503,'Matières premières (et fournitures)',0,NULL,NULL,1,NULL,NULL),(203,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','311',202,'Matières (ou groupe) A',0,NULL,NULL,1,NULL,NULL),(204,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','312',202,'Matières (ou groupe) B',0,NULL,NULL,1,NULL,NULL),(205,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','317',202,'Fournitures A, B, C,',0,NULL,NULL,1,NULL,NULL),(206,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','32',1503,'Autres approvisionnements',0,NULL,NULL,1,NULL,NULL),(207,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','321',206,'Matières consommables',0,NULL,NULL,1,NULL,NULL),(208,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','322',206,'Fournitures consommables',0,NULL,NULL,1,NULL,NULL),(209,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','326',206,'Emballages',0,NULL,NULL,1,NULL,NULL),(210,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','33',1503,'En-cours de production de biens',0,NULL,NULL,1,NULL,NULL),(211,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','331',210,'Produits en cours',0,NULL,NULL,1,NULL,NULL),(212,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','335',210,'Travaux en cours',0,NULL,NULL,1,NULL,NULL),(213,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','34',1503,'En-cours de production de services',0,NULL,NULL,1,NULL,NULL),(214,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','341',213,'Etudes en cours',0,NULL,NULL,1,NULL,NULL),(215,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','345',213,'Prestations de services en cours',0,NULL,NULL,1,NULL,NULL),(216,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','35',1503,'Stocks de produits',0,NULL,NULL,1,NULL,NULL),(217,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','351',216,'Produits intermédiaires',0,NULL,NULL,1,NULL,NULL),(218,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','355',216,'Produits finis',0,NULL,NULL,1,NULL,NULL),(219,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','358',216,'Produits résiduels (ou matières de récupération)',0,NULL,NULL,1,NULL,NULL),(220,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','37',1503,'Stocks de marchandises',0,NULL,NULL,1,NULL,NULL),(221,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','371',220,'Marchandises (ou groupe) A',0,NULL,NULL,1,NULL,NULL),(222,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','372',220,'Marchandises (ou groupe) B',0,NULL,NULL,1,NULL,NULL),(223,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','39',1503,'Provisions pour dépréciation des stocks et en-cours',0,NULL,NULL,1,NULL,NULL),(224,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','391',223,'Provisions pour dépréciation des matières premières',0,NULL,NULL,1,NULL,NULL),(225,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','392',223,'Provisions pour dépréciation des autres approvisionnements',0,NULL,NULL,1,NULL,NULL),(226,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','393',223,'Provisions pour dépréciation des en-cours de production de biens',0,NULL,NULL,1,NULL,NULL),(227,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','394',223,'Provisions pour dépréciation des en-cours de production de services',0,NULL,NULL,1,NULL,NULL),(228,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','395',223,'Provisions pour dépréciation des stocks de produits',0,NULL,NULL,1,NULL,NULL),(229,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','STOCK','XXXXXX','397',223,'Provisions pour dépréciation des stocks de marchandises',0,NULL,NULL,1,NULL,NULL),(230,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','40',1504,'Fournisseurs et Comptes rattachés',0,NULL,NULL,1,NULL,NULL),(231,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','400',230,'Fournisseurs et Comptes rattachés',0,NULL,NULL,1,NULL,NULL),(232,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','SUPPLIER','401',230,'Fournisseurs',0,NULL,NULL,1,NULL,NULL),(233,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','403',230,'Fournisseurs - Effets à payer',0,NULL,NULL,1,NULL,NULL),(234,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','404',230,'Fournisseurs d\'immobilisations',0,NULL,NULL,1,NULL,NULL),(235,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','405',230,'Fournisseurs d\'immobilisations - Effets à payer',0,NULL,NULL,1,NULL,NULL),(236,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','408',230,'Fournisseurs - Factures non parvenues',0,NULL,NULL,1,NULL,NULL),(237,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','409',230,'Fournisseurs débiteurs',0,NULL,NULL,1,NULL,NULL),(238,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','41',1504,'Clients et comptes rattachés',0,NULL,NULL,1,NULL,NULL),(239,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','410',238,'Clients et Comptes rattachés',0,NULL,NULL,1,NULL,NULL),(240,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','CUSTOMER','411',238,'Clients',0,NULL,NULL,1,NULL,NULL),(241,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','413',238,'Clients - Effets à recevoir',0,NULL,NULL,1,NULL,NULL),(242,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','416',238,'Clients douteux ou litigieux',0,NULL,NULL,1,NULL,NULL),(243,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','418',238,'Clients - Produits non encore facturés',0,NULL,NULL,1,NULL,NULL),(244,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','419',238,'Clients créditeurs',0,NULL,NULL,1,NULL,NULL),(245,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','42',1504,'Personnel et comptes rattachés',0,NULL,NULL,1,NULL,NULL),(246,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','421',245,'Personnel - Rémunérations dues',0,NULL,NULL,1,NULL,NULL),(247,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','422',245,'Comités d\'entreprises, d\'établissement, ...',0,NULL,NULL,1,NULL,NULL),(248,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','424',245,'Participation des salariés aux résultats',0,NULL,NULL,1,NULL,NULL),(249,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','425',245,'Personnel - Avances et acomptes',0,NULL,NULL,1,NULL,NULL),(250,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','426',245,'Personnel - Dépôts',0,NULL,NULL,1,NULL,NULL),(251,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','427',245,'Personnel - Oppositions',0,NULL,NULL,1,NULL,NULL),(252,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','428',245,'Personnel - Charges à payer et produits à recevoir',0,NULL,NULL,1,NULL,NULL),(253,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','43',1504,'Sécurité sociale et autres organismes sociaux',0,NULL,NULL,1,NULL,NULL),(254,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','431',253,'Sécurité sociale',0,NULL,NULL,1,NULL,NULL),(255,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','437',253,'Autres organismes sociaux',0,NULL,NULL,1,NULL,NULL),(256,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','438',253,'Organismes sociaux - Charges à payer et produits à recevoir',0,NULL,NULL,1,NULL,NULL),(257,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','44',1504,'État et autres collectivités publiques',0,NULL,NULL,1,NULL,NULL),(258,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','441',257,'État - Subventions à recevoir',0,NULL,NULL,1,NULL,NULL),(259,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','442',257,'Etat - Impôts et taxes recouvrables sur des tiers',0,NULL,NULL,1,NULL,NULL),(260,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','443',257,'Opérations particulières avec l\'Etat, les collectivités publiques, les organismes internationaux',0,NULL,NULL,1,NULL,NULL),(261,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','444',257,'Etat - Impôts sur les bénéfices',0,NULL,NULL,1,NULL,NULL),(262,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','445',257,'Etat - Taxes sur le chiffre d\'affaires',0,NULL,NULL,1,NULL,NULL),(263,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','446',257,'Obligations cautionnées',0,NULL,NULL,1,NULL,NULL),(264,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','447',257,'Autres impôts, taxes et versements assimilés',0,NULL,NULL,1,NULL,NULL),(265,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','448',257,'Etat - Charges à payer et produits à recevoir',0,NULL,NULL,1,NULL,NULL),(266,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','449',257,'Quotas d\'émission à restituer à l\'Etat',0,NULL,NULL,1,NULL,NULL),(267,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','45',1504,'Groupe et associes',0,NULL,NULL,1,NULL,NULL),(268,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','451',267,'Groupe',0,NULL,NULL,1,NULL,NULL),(269,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','455',267,'Associés - Comptes courants',0,NULL,NULL,1,NULL,NULL),(270,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','456',267,'Associés - Opérations sur le capital',0,NULL,NULL,1,NULL,NULL),(271,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','457',267,'Associés - Dividendes à payer',0,NULL,NULL,1,NULL,NULL),(272,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','458',267,'Associés - Opérations faites en commun et en G.I.E.',0,NULL,NULL,1,NULL,NULL),(273,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','46',1504,'Débiteurs divers et créditeurs divers',0,NULL,NULL,1,NULL,NULL),(274,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','462',273,'Créances sur cessions d\'immobilisations',0,NULL,NULL,1,NULL,NULL),(275,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','464',273,'Dettes sur acquisitions de valeurs mobilières de placement',0,NULL,NULL,1,NULL,NULL),(276,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','465',273,'Créances sur cessions de valeurs mobilières de placement',0,NULL,NULL,1,NULL,NULL),(277,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','467',273,'Autres comptes débiteurs ou créditeurs',0,NULL,NULL,1,NULL,NULL),(278,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','468',273,'Divers - Charges à payer et produits à recevoir',0,NULL,NULL,1,NULL,NULL),(279,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','47',1504,'Comptes transitoires ou d\'attente',0,NULL,NULL,1,NULL,NULL),(280,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','471',279,'Comptes d\'attente',0,NULL,NULL,1,NULL,NULL),(281,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','476',279,'Différence de conversion - Actif',0,NULL,NULL,1,NULL,NULL),(282,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','477',279,'Différences de conversion - Passif',0,NULL,NULL,1,NULL,NULL),(283,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','478',279,'Autres comptes transitoires',0,NULL,NULL,1,NULL,NULL),(284,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','48',1504,'Comptes de régularisation',0,NULL,NULL,1,NULL,NULL),(285,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','481',284,'Charges à répartir sur plusieurs exercices',0,NULL,NULL,1,NULL,NULL),(286,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','486',284,'Charges constatées d\'avance',0,NULL,NULL,1,NULL,NULL),(287,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','487',284,'Produits constatés d\'avance',0,NULL,NULL,1,NULL,NULL),(288,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','488',284,'Comptes de répartition périodique des charges et des produits',0,NULL,NULL,1,NULL,NULL),(289,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','489',284,'Quotas d\'émission alloués par l\'Etat',0,NULL,NULL,1,NULL,NULL),(290,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','49',1504,'Provisions pour dépréciation des comptes de tiers',0,NULL,NULL,1,NULL,NULL),(291,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','491',290,'Provisions pour dépréciation des comptes de clients',0,NULL,NULL,1,NULL,NULL),(292,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','495',290,'Provisions pour dépréciation des comptes du groupe et des associés',0,NULL,NULL,1,NULL,NULL),(293,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','TIERS','XXXXXX','496',290,'Provisions pour dépréciation des comptes de débiteurs divers',0,NULL,NULL,1,NULL,NULL),(294,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','50',1505,'Valeurs mobilières de placement',0,NULL,NULL,1,NULL,NULL),(295,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','501',294,'Parts dans des entreprises liées',0,NULL,NULL,1,NULL,NULL),(296,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','502',294,'Actions propres',0,NULL,NULL,1,NULL,NULL),(297,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','503',294,'Actions',0,NULL,NULL,1,NULL,NULL),(298,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','504',294,'Autres titres conférant un droit de propriété',0,NULL,NULL,1,NULL,NULL),(299,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','505',294,'Obligations et bons émis par la société et rachetés par elle',0,NULL,NULL,1,NULL,NULL),(300,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','506',294,'Obligations',0,NULL,NULL,1,NULL,NULL),(301,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','507',294,'Bons du Trésor et bons de caisse à court terme',0,NULL,NULL,1,NULL,NULL),(302,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','508',294,'Autres valeurs mobilières de placement et autres créances assimilées',0,NULL,NULL,1,NULL,NULL),(303,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','509',294,'Versements restant à effectuer sur valeurs mobilières de placement non libérées',0,NULL,NULL,1,NULL,NULL),(304,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','51',1505,'Banques, établissements financiers et assimilés',0,NULL,NULL,1,NULL,NULL),(305,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','511',304,'Valeurs à l\'encaissement',0,NULL,NULL,1,NULL,NULL),(306,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','BANK','512',304,'Banques',0,NULL,NULL,1,NULL,NULL),(307,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','514',304,'Chèques postaux',0,NULL,NULL,1,NULL,NULL),(308,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','515',304,'Caisses du Trésor et des établissements publics',0,NULL,NULL,1,NULL,NULL),(309,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','516',304,'Sociétés de bourse',0,NULL,NULL,1,NULL,NULL),(310,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','517',304,'Autres organismes financiers',0,NULL,NULL,1,NULL,NULL),(311,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','518',304,'Intérêts courus',0,NULL,NULL,1,NULL,NULL),(312,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','519',304,'Concours bancaires courants',0,NULL,NULL,1,NULL,NULL),(313,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','52',1505,'Instruments de trésorerie',0,NULL,NULL,1,NULL,NULL),(314,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','CASH','53',1505,'Caisse',0,NULL,NULL,1,NULL,NULL),(315,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','531',314,'Caisse siège social',0,NULL,NULL,1,NULL,NULL),(316,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','532',314,'Caisse succursale (ou usine) A',0,NULL,NULL,1,NULL,NULL),(317,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','533',314,'Caisse succursale (ou usine) B',0,NULL,NULL,1,NULL,NULL),(318,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','54',1505,'Régies d\'avance et accréditifs',0,NULL,NULL,1,NULL,NULL),(319,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','58',1505,'Virements internes',0,NULL,NULL,1,NULL,NULL),(320,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','59',1505,'Provisions pour dépréciation des comptes financiers',0,NULL,NULL,1,NULL,NULL),(321,1,NULL,'2020-02-09 17:36:23','PCG99-BASE','FINAN','XXXXXX','590',320,'Provisions pour dépréciation des valeurs mobilières de placement',0,NULL,NULL,1,NULL,NULL),(322,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','PRODUCT','60',1506,'Achats',0,NULL,NULL,1,NULL,NULL),(323,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','601',322,'Achats stockés - Matières premières (et fournitures)',0,NULL,NULL,1,NULL,NULL),(324,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','602',322,'Achats stockés - Autres approvisionnements',0,NULL,NULL,1,NULL,NULL),(325,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','603',322,'Variations des stocks (approvisionnements et marchandises)',0,NULL,NULL,1,NULL,NULL),(326,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','604',322,'Achats stockés - Matières premières (et fournitures)',0,NULL,NULL,1,NULL,NULL),(327,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','605',322,'Achats de matériel, équipements et travaux',0,NULL,NULL,1,NULL,NULL),(328,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','606',322,'Achats non stockés de matière et fournitures',0,NULL,NULL,1,NULL,NULL),(329,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','607',322,'Achats de marchandises',0,NULL,NULL,1,NULL,NULL),(330,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','608',322,'(Compte réservé, le cas échéant, à la récapitulation des frais accessoires incorporés aux achats)',0,NULL,NULL,1,NULL,NULL),(331,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','609',322,'Rabais, remises et ristournes obtenus sur achats',0,NULL,NULL,1,NULL,NULL),(332,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','SERVICE','61',1506,'Services extérieurs',0,NULL,NULL,1,NULL,NULL),(333,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','611',332,'Sous-traitance générale',0,NULL,NULL,1,NULL,NULL),(334,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','612',332,'Redevances de crédit-bail',0,NULL,NULL,1,NULL,NULL),(335,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','613',332,'Locations',0,NULL,NULL,1,NULL,NULL),(336,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','614',332,'Charges locatives et de copropriété',0,NULL,NULL,1,NULL,NULL),(337,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','615',332,'Entretien et réparations',0,NULL,NULL,1,NULL,NULL),(338,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','616',332,'Primes d\'assurances',0,NULL,NULL,1,NULL,NULL),(339,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','617',332,'Etudes et recherches',0,NULL,NULL,1,NULL,NULL),(340,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','618',332,'Divers',0,NULL,NULL,1,NULL,NULL),(341,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','619',332,'Rabais, remises et ristournes obtenus sur services extérieurs',0,NULL,NULL,1,NULL,NULL),(342,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','62',1506,'Autres services extérieurs',0,NULL,NULL,1,NULL,NULL),(343,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','621',342,'Personnel extérieur à l\'entreprise',0,NULL,NULL,1,NULL,NULL),(344,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','622',342,'Rémunérations d\'intermédiaires et honoraires',0,NULL,NULL,1,NULL,NULL),(345,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','623',342,'Publicité, publications, relations publiques',0,NULL,NULL,1,NULL,NULL),(346,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','624',342,'Transports de biens et transports collectifs du personnel',0,NULL,NULL,1,NULL,NULL),(347,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','625',342,'Déplacements, missions et réceptions',0,NULL,NULL,1,NULL,NULL),(348,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','626',342,'Frais postaux et de télécommunications',0,NULL,NULL,1,NULL,NULL),(349,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','627',342,'Services bancaires et assimilés',0,NULL,NULL,1,NULL,NULL),(350,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','628',342,'Divers',0,NULL,NULL,1,NULL,NULL),(351,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','629',342,'Rabais, remises et ristournes obtenus sur autres services extérieurs',0,NULL,NULL,1,NULL,NULL),(352,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','63',1506,'Impôts, taxes et versements assimilés',0,NULL,NULL,1,NULL,NULL),(353,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','631',352,'Impôts, taxes et versements assimilés sur rémunérations (administrations des impôts)',0,NULL,NULL,1,NULL,NULL),(354,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','633',352,'Impôts, taxes et versements assimilés sur rémunérations (autres organismes)',0,NULL,NULL,1,NULL,NULL),(355,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','635',352,'Autres impôts, taxes et versements assimilés (administrations des impôts)',0,NULL,NULL,1,NULL,NULL),(356,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','637',352,'Autres impôts, taxes et versements assimilés (autres organismes)',0,NULL,NULL,1,NULL,NULL),(357,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','64',1506,'Charges de personnel',0,NULL,NULL,1,NULL,NULL),(358,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','641',357,'Rémunérations du personnel',0,NULL,NULL,1,NULL,NULL),(359,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','644',357,'Rémunération du travail de l\'exploitant',0,NULL,NULL,1,NULL,NULL),(360,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','SOCIAL','645',357,'Charges de sécurité sociale et de prévoyance',0,NULL,NULL,1,NULL,NULL),(361,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','646',357,'Cotisations sociales personnelles de l\'exploitant',0,NULL,NULL,1,NULL,NULL),(362,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','647',357,'Autres charges sociales',0,NULL,NULL,1,NULL,NULL),(363,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','648',357,'Autres charges de personnel',0,NULL,NULL,1,NULL,NULL),(364,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','65',1506,'Autres charges de gestion courante',0,NULL,NULL,1,NULL,NULL),(365,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','651',364,'Redevances pour concessions, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires',0,NULL,NULL,1,NULL,NULL),(366,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','653',364,'Jetons de présence',0,NULL,NULL,1,NULL,NULL),(367,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','654',364,'Pertes sur créances irrécouvrables',0,NULL,NULL,1,NULL,NULL),(368,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','655',364,'Quote-part de résultat sur opérations faites en commun',0,NULL,NULL,1,NULL,NULL),(369,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','658',364,'Charges diverses de gestion courante',0,NULL,NULL,1,NULL,NULL),(370,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','66',1506,'Charges financières',0,NULL,NULL,1,NULL,NULL),(371,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','661',370,'Charges d\'intérêts',0,NULL,NULL,1,NULL,NULL),(372,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','664',370,'Pertes sur créances liées à des participations',0,NULL,NULL,1,NULL,NULL),(373,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','665',370,'Escomptes accordés',0,NULL,NULL,1,NULL,NULL),(374,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','666',370,'Pertes de change',0,NULL,NULL,1,NULL,NULL),(375,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','667',370,'Charges nettes sur cessions de valeurs mobilières de placement',0,NULL,NULL,1,NULL,NULL),(376,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','668',370,'Autres charges financières',0,NULL,NULL,1,NULL,NULL),(377,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','67',1506,'Charges exceptionnelles',0,NULL,NULL,1,NULL,NULL),(378,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','671',377,'Charges exceptionnelles sur opérations de gestion',0,NULL,NULL,1,NULL,NULL),(379,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','672',377,'(Compte à la disposition des entités pour enregistrer, en cours d\'exercice, les charges sur exercices antérieurs)',0,NULL,NULL,1,NULL,NULL),(380,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','675',377,'Valeurs comptables des éléments d\'actif cédés',0,NULL,NULL,1,NULL,NULL),(381,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','678',377,'Autres charges exceptionnelles',0,NULL,NULL,1,NULL,NULL),(382,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','68',1506,'Dotations aux amortissements et aux provisions',0,NULL,NULL,1,NULL,NULL),(383,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','681',382,'Dotations aux amortissements et aux provisions - Charges d\'exploitation',0,NULL,NULL,1,NULL,NULL),(384,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','686',382,'Dotations aux amortissements et aux provisions - Charges financières',0,NULL,NULL,1,NULL,NULL),(385,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','687',382,'Dotations aux amortissements et aux provisions - Charges exceptionnelles',0,NULL,NULL,1,NULL,NULL),(386,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','69',1506,'Participation des salariés - impôts sur les bénéfices et assimiles',0,NULL,NULL,1,NULL,NULL),(387,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','691',386,'Participation des salariés aux résultats',0,NULL,NULL,1,NULL,NULL),(388,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','695',386,'Impôts sur les bénéfices',0,NULL,NULL,1,NULL,NULL),(389,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','696',386,'Suppléments d\'impôt sur les sociétés liés aux distributions',0,NULL,NULL,1,NULL,NULL),(390,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','697',386,'Imposition forfaitaire annuelle des sociétés',0,NULL,NULL,1,NULL,NULL),(391,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','698',386,'Intégration fiscale',0,NULL,NULL,1,NULL,NULL),(392,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','699',386,'Produits - Reports en arrière des déficits',0,NULL,NULL,1,NULL,NULL),(393,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','70',1507,'Ventes de produits fabriqués, prestations de services, marchandises',0,NULL,NULL,1,NULL,NULL),(394,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','PRODUCT','701',393,'Ventes de produits finis',0,NULL,NULL,1,NULL,NULL),(395,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','702',393,'Ventes de produits intermédiaires',0,NULL,NULL,1,NULL,NULL),(396,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','703',393,'Ventes de produits résiduels',0,NULL,NULL,1,NULL,NULL),(397,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','704',393,'Travaux',0,NULL,NULL,1,NULL,NULL),(398,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','705',393,'Etudes',0,NULL,NULL,1,NULL,NULL),(399,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','SERVICE','706',393,'Prestations de services',0,NULL,NULL,1,NULL,NULL),(400,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','PRODUCT','707',393,'Ventes de marchandises',0,NULL,NULL,1,NULL,NULL),(401,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','PRODUCT','708',393,'Produits des activités annexes',0,NULL,NULL,1,NULL,NULL),(402,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','709',393,'Rabais, remises et ristournes accordés par l\'entreprise',0,NULL,NULL,1,NULL,NULL),(403,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','71',1507,'Production stockée (ou déstockage)',0,NULL,NULL,1,NULL,NULL),(404,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','713',403,'Variation des stocks (en-cours de production, produits)',0,NULL,NULL,1,NULL,NULL),(405,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','72',1507,'Production immobilisée',0,NULL,NULL,1,NULL,NULL),(406,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','721',405,'Immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(407,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','722',405,'Immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(408,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','74',1507,'Subventions d\'exploitation',0,NULL,NULL,1,NULL,NULL),(409,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','75',1507,'Autres produits de gestion courante',0,NULL,NULL,1,NULL,NULL),(410,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','751',409,'Redevances pour concessions, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires',0,NULL,NULL,1,NULL,NULL),(411,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','752',409,'Revenus des immeubles non affectés à des activités professionnelles',0,NULL,NULL,1,NULL,NULL),(412,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','753',409,'Jetons de présence et rémunérations d\'administrateurs, gérants,...',0,NULL,NULL,1,NULL,NULL),(413,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','754',409,'Ristournes perçues des coopératives (provenant des excédents)',0,NULL,NULL,1,NULL,NULL),(414,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','755',409,'Quotes-parts de résultat sur opérations faites en commun',0,NULL,NULL,1,NULL,NULL),(415,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','758',409,'Produits divers de gestion courante',0,NULL,NULL,1,NULL,NULL),(416,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','76',1507,'Produits financiers',0,NULL,NULL,1,NULL,NULL),(417,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','761',416,'Produits de participations',0,NULL,NULL,1,NULL,NULL),(418,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','762',416,'Produits des autres immobilisations financières',0,NULL,NULL,1,NULL,NULL),(419,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','763',416,'Revenus des autres créances',0,NULL,NULL,1,NULL,NULL),(420,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','764',416,'Revenus des valeurs mobilières de placement',0,NULL,NULL,1,NULL,NULL),(421,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','765',416,'Escomptes obtenus',0,NULL,NULL,1,NULL,NULL),(422,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','766',416,'Gains de change',0,NULL,NULL,1,NULL,NULL),(423,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','767',416,'Produits nets sur cessions de valeurs mobilières de placement',0,NULL,NULL,1,NULL,NULL),(424,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','768',416,'Autres produits financiers',0,NULL,NULL,1,NULL,NULL),(425,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','77',1507,'Produits exceptionnels',0,NULL,NULL,1,NULL,NULL),(426,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','771',425,'Produits exceptionnels sur opérations de gestion',0,NULL,NULL,1,NULL,NULL),(427,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','772',425,'(Compte à la disposition des entités pour enregistrer, en cours d\'exercice, les produits sur exercices antérieurs)',0,NULL,NULL,1,NULL,NULL),(428,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','775',425,'Produits des cessions d\'éléments d\'actif',0,NULL,NULL,1,NULL,NULL),(429,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','777',425,'Quote-part des subventions d\'investissement virée au résultat de l\'exercice',0,NULL,NULL,1,NULL,NULL),(430,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','778',425,'Autres produits exceptionnels',0,NULL,NULL,1,NULL,NULL),(431,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','78',1507,'Reprises sur amortissements et provisions',0,NULL,NULL,1,NULL,NULL),(432,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','781',431,'Reprises sur amortissements et provisions (à inscrire dans les produits d\'exploitation)',0,NULL,NULL,1,NULL,NULL),(433,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','786',431,'Reprises sur provisions pour risques (à inscrire dans les produits financiers)',0,NULL,NULL,1,NULL,NULL),(434,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','787',431,'Reprises sur provisions (à inscrire dans les produits exceptionnels)',0,NULL,NULL,1,NULL,NULL),(435,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','79',1507,'Transferts de charges',0,NULL,NULL,1,NULL,NULL),(436,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','791',435,'Transferts de charges d\'exploitation ',0,NULL,NULL,1,NULL,NULL),(437,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','796',435,'Transferts de charges financières',0,NULL,NULL,1,NULL,NULL),(438,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','797',435,'Transferts de charges exceptionnelles',0,NULL,NULL,1,NULL,NULL),(439,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','10',1351,'Capital',0,NULL,NULL,1,NULL,NULL),(440,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','100',439,'Capital souscrit ou capital personnel',0,NULL,NULL,1,NULL,NULL),(441,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1000',440,'Capital non amorti',0,NULL,NULL,1,NULL,NULL),(442,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1001',440,'Capital amorti',0,NULL,NULL,1,NULL,NULL),(443,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','101',439,'Capital non appelé',0,NULL,NULL,1,NULL,NULL),(444,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','109',439,'Compte de l\'exploitant',0,NULL,NULL,1,NULL,NULL),(445,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1090',444,'Opérations courantes',0,NULL,NULL,1,NULL,NULL),(446,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1091',444,'Impôts personnels',0,NULL,NULL,1,NULL,NULL),(447,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1092',444,'Rémunérations et autres avantages',0,NULL,NULL,1,NULL,NULL),(448,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','11',1351,'Primes d\'émission',0,NULL,NULL,1,NULL,NULL),(449,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','12',1351,'Plus-values de réévaluation',0,NULL,NULL,1,NULL,NULL),(450,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','120',449,'Plus-values de réévaluation sur immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(451,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1200',450,'Plus-values de réévaluation',0,NULL,NULL,1,NULL,NULL),(452,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1201',450,'Reprises de réductions de valeur',0,NULL,NULL,1,NULL,NULL),(453,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','121',449,'Plus-values de réévaluation sur immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(454,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1210',453,'Plus-values de réévaluation',0,NULL,NULL,1,NULL,NULL),(455,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1211',453,'Reprises de réductions de valeur',0,NULL,NULL,1,NULL,NULL),(456,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','122',449,'Plus-values de réévaluation sur immobilisations financières',0,NULL,NULL,1,NULL,NULL),(457,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1220',456,'Plus-values de réévaluation',0,NULL,NULL,1,NULL,NULL),(458,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1221',456,'Reprises de réductions de valeur',0,NULL,NULL,1,NULL,NULL),(459,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','123',449,'Plus-values de réévaluation sur stocks',0,NULL,NULL,1,NULL,NULL),(460,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','124',449,'Reprises de réductions de valeur sur placements de trésorerie',0,NULL,NULL,1,NULL,NULL),(461,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','13',1351,'Réserve',0,NULL,NULL,1,NULL,NULL),(462,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','130',461,'Réserve légale',0,NULL,NULL,1,NULL,NULL),(463,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','131',461,'Réserves indisponibles',0,NULL,NULL,1,NULL,NULL),(464,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1310',463,'Réserve pour actions propres',0,NULL,NULL,1,NULL,NULL),(465,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1311',463,'Autres réserves indisponibles',0,NULL,NULL,1,NULL,NULL),(466,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','132',461,'Réserves immunisées',0,NULL,NULL,1,NULL,NULL),(467,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','133',461,'Réserves disponibles',0,NULL,NULL,1,NULL,NULL),(468,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1330',467,'Réserve pour régularisation de dividendes',0,NULL,NULL,1,NULL,NULL),(469,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1331',467,'Réserve pour renouvellement des immobilisations',0,NULL,NULL,1,NULL,NULL),(470,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1332',467,'Réserve pour installations en faveur du personnel 1333 Réserves libres',0,NULL,NULL,1,NULL,NULL),(471,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','14',1351,'Bénéfice reporté (ou perte reportée)',0,NULL,NULL,1,NULL,NULL),(472,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','15',1351,'Subsides en capital',0,NULL,NULL,1,NULL,NULL),(473,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','150',472,'Montants obtenus',0,NULL,NULL,1,NULL,NULL),(474,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','151',472,'Montants transférés aux résultats',0,NULL,NULL,1,NULL,NULL),(475,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','16',1351,'Provisions pour risques et charges',0,NULL,NULL,1,NULL,NULL),(476,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','160',475,'Provisions pour pensions et obligations similaires',0,NULL,NULL,1,NULL,NULL),(477,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','161',475,'Provisions pour charges fiscales',0,NULL,NULL,1,NULL,NULL),(478,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','162',475,'Provisions pour grosses réparations et gros entretiens',0,NULL,NULL,1,NULL,NULL),(479,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','163',475,'à 169 Provisions pour autres risques et charges',0,NULL,NULL,1,NULL,NULL),(480,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','164',475,'Provisions pour sûretés personnelles ou réelles constituées à l\'appui de dettes et d\'engagements de tiers',0,NULL,NULL,1,NULL,NULL),(481,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','165',475,'Provisions pour engagements relatifs à l\'acquisition ou à la cession d\'immobilisations',0,NULL,NULL,1,NULL,NULL),(482,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','166',475,'Provisions pour exécution de commandes passées ou reçues',0,NULL,NULL,1,NULL,NULL),(483,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','167',475,'Provisions pour positions et marchés à terme en devises ou positions et marchés à terme en marchandises',0,NULL,NULL,1,NULL,NULL),(484,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','168',475,'Provisions pour garanties techniques attachées aux ventes et prestations déjà effectuées par l\'entreprise',0,NULL,NULL,1,NULL,NULL),(485,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','169',475,'Provisions pour autres risques et charges',0,NULL,NULL,1,NULL,NULL),(486,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1690',485,'Pour litiges en cours',0,NULL,NULL,1,NULL,NULL),(487,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1691',485,'Pour amendes, doubles droits et pénalités',0,NULL,NULL,1,NULL,NULL),(488,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1692',485,'Pour propre assureur',0,NULL,NULL,1,NULL,NULL),(489,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1693',485,'Pour risques inhérents aux opérations de crédits à moyen ou long terme',0,NULL,NULL,1,NULL,NULL),(490,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1695',485,'Provision pour charge de liquidation',0,NULL,NULL,1,NULL,NULL),(491,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1696',485,'Provision pour départ de personnel',0,NULL,NULL,1,NULL,NULL),(492,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1699',485,'Pour risques divers',0,NULL,NULL,1,NULL,NULL),(493,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17',1351,'Dettes à plus d\'un an',0,NULL,NULL,1,NULL,NULL),(494,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','170',493,'Emprunts subordonnés',0,NULL,NULL,1,NULL,NULL),(495,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1700',494,'Convertibles',0,NULL,NULL,1,NULL,NULL),(496,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1701',494,'Non convertibles',0,NULL,NULL,1,NULL,NULL),(497,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','171',493,'Emprunts obligataires non subordonnés',0,NULL,NULL,1,NULL,NULL),(498,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1710',498,'Convertibles',0,NULL,NULL,1,NULL,NULL),(499,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1711',498,'Non convertibles',0,NULL,NULL,1,NULL,NULL),(500,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','172',493,'Dettes de location-financement et assimilés',0,NULL,NULL,1,NULL,NULL),(501,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1720',500,'Dettes de location-financement de biens immobiliers',0,NULL,NULL,1,NULL,NULL),(502,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1721',500,'Dettes de location-financement de biens mobiliers',0,NULL,NULL,1,NULL,NULL),(503,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1722',500,'Dettes sur droits réels sur immeubles',0,NULL,NULL,1,NULL,NULL),(504,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','173',493,'Etablissements de crédit',0,NULL,NULL,1,NULL,NULL),(505,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1730',504,'Dettes en compte',0,NULL,NULL,1,NULL,NULL),(506,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17300',505,'Banque A',0,NULL,NULL,1,NULL,NULL),(507,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17301',505,'Banque B',0,NULL,NULL,1,NULL,NULL),(508,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17302',505,'Banque C',0,NULL,NULL,1,NULL,NULL),(509,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17303',505,'Banque D',0,NULL,NULL,1,NULL,NULL),(510,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1731',504,'Promesses',0,NULL,NULL,1,NULL,NULL),(511,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17310',510,'Banque A',0,NULL,NULL,1,NULL,NULL),(512,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17311',510,'Banque B',0,NULL,NULL,1,NULL,NULL),(513,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17312',510,'Banque C',0,NULL,NULL,1,NULL,NULL),(514,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17313',510,'Banque D',0,NULL,NULL,1,NULL,NULL),(515,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1732',504,'Crédits d\'acceptation',0,NULL,NULL,1,NULL,NULL),(516,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17320',515,'Banque A',0,NULL,NULL,1,NULL,NULL),(517,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17321',515,'Banque B',0,NULL,NULL,1,NULL,NULL),(518,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17322',515,'Banque C',0,NULL,NULL,1,NULL,NULL),(519,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17323',515,'Banque D',0,NULL,NULL,1,NULL,NULL),(520,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','174',493,'Autres emprunts',0,NULL,NULL,1,NULL,NULL),(521,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175',493,'Dettes commerciales',0,NULL,NULL,1,NULL,NULL),(522,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1750',521,'Fournisseurs : dettes en compte',0,NULL,NULL,1,NULL,NULL),(523,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17500',522,'Entreprises apparentées',0,NULL,NULL,1,NULL,NULL),(524,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175000',523,'Entreprises liées',0,NULL,NULL,1,NULL,NULL),(525,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175001',523,'Entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(526,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17501',522,'Fournisseurs ordinaires',0,NULL,NULL,1,NULL,NULL),(527,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175010',526,'Fournisseurs belges',0,NULL,NULL,1,NULL,NULL),(528,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175011',526,'Fournisseurs C.E.E.',0,NULL,NULL,1,NULL,NULL),(529,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175012',526,'Fournisseurs importation',0,NULL,NULL,1,NULL,NULL),(530,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1751',521,'Effets à payer',0,NULL,NULL,1,NULL,NULL),(531,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17510',530,'Entreprises apparentées',0,NULL,NULL,1,NULL,NULL),(532,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175100',531,'Entreprises liées',0,NULL,NULL,1,NULL,NULL),(533,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175101',531,'Entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(534,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','17511',530,'Fournisseurs ordinaires',0,NULL,NULL,1,NULL,NULL),(535,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175110',534,'Fournisseurs belges',0,NULL,NULL,1,NULL,NULL),(536,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175111',534,'Fournisseurs C.E.E.',0,NULL,NULL,1,NULL,NULL),(537,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','175112',534,'Fournisseurs importation',0,NULL,NULL,1,NULL,NULL),(538,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','176',493,'Acomptes reçus sur commandes',0,NULL,NULL,1,NULL,NULL),(539,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','178',493,'Cautionnements reçus en numéraires',0,NULL,NULL,1,NULL,NULL),(540,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','179',493,'Dettes diverses',0,NULL,NULL,1,NULL,NULL),(541,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1790',540,'Entreprises liées',0,NULL,NULL,1,NULL,NULL),(542,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1791',540,'Autres entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(543,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1792',540,'Administrateurs, gérants et associés',0,NULL,NULL,1,NULL,NULL),(544,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1794',540,'Rentes viagères capitalisées',0,NULL,NULL,1,NULL,NULL),(545,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1798',540,'Dettes envers les coparticipants des associations momentanées et en participation',0,NULL,NULL,1,NULL,NULL),(546,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','1799',540,'Autres dettes diverses',0,NULL,NULL,1,NULL,NULL),(547,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','CAPIT','XXXXXX','18',1351,'Comptes de liaison des établissements et succursales',0,NULL,NULL,1,NULL,NULL),(548,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','20',1352,'Frais d\'établissement',0,NULL,NULL,1,NULL,NULL),(549,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','200',548,'Frais de constitution et d\'augmentation de capital',0,NULL,NULL,1,NULL,NULL),(550,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2000',549,'Frais de constitution et d\'augmentation de capital',0,NULL,NULL,1,NULL,NULL),(551,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2009',549,'Amortissements sur frais de constitution et d\'augmentation de capital',0,NULL,NULL,1,NULL,NULL),(552,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','201',548,'Frais d\'émission d\'emprunts et primes de remboursement',0,NULL,NULL,1,NULL,NULL),(553,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2010',552,'Agios sur emprunts et frais d\'émission d\'emprunts',0,NULL,NULL,1,NULL,NULL),(554,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2019',552,'Amortissements sur agios sur emprunts et frais d\'émission d\'emprunts',0,NULL,NULL,1,NULL,NULL),(555,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','202',548,'Autres frais d\'établissement',0,NULL,NULL,1,NULL,NULL),(556,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2020',555,'Autres frais d\'établissement',0,NULL,NULL,1,NULL,NULL),(557,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2029',555,'Amortissements sur autres frais d\'établissement',0,NULL,NULL,1,NULL,NULL),(558,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','203',548,'Intérêts intercalaires',0,NULL,NULL,1,NULL,NULL),(559,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2030',558,'Intérêts intercalaires',0,NULL,NULL,1,NULL,NULL),(560,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2039',558,'Amortissements sur intérêts intercalaires',0,NULL,NULL,1,NULL,NULL),(561,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','204',548,'Frais de restructuration',0,NULL,NULL,1,NULL,NULL),(562,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2040',561,'Coût des frais de restructuration',0,NULL,NULL,1,NULL,NULL),(563,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2049',561,'Amortissements sur frais de restructuration',0,NULL,NULL,1,NULL,NULL),(564,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','21',1352,'Immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(565,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','210',564,'Frais de recherche et de développement',0,NULL,NULL,1,NULL,NULL),(566,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2100',565,'Frais de recherche et de mise au point',0,NULL,NULL,1,NULL,NULL),(567,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2108',565,'Plus-values actées sur frais de recherche et de mise au point',0,NULL,NULL,1,NULL,NULL),(568,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2109',565,'Amortissements sur frais de recherche et de mise au point',0,NULL,NULL,1,NULL,NULL),(569,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','211',564,'Concessions, brevets, licences, savoir-faire, marque et droits similaires',0,NULL,NULL,1,NULL,NULL),(570,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2110',569,'Concessions, brevets, licences, marques, etc',0,NULL,NULL,1,NULL,NULL),(571,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2118',569,'Plus-values actées sur concessions, etc',0,NULL,NULL,1,NULL,NULL),(572,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2119',569,'Amortissements sur concessions, etc',0,NULL,NULL,1,NULL,NULL),(573,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','212',564,'Goodwill',0,NULL,NULL,1,NULL,NULL),(574,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2120',573,'Coût d\'acquisition',0,NULL,NULL,1,NULL,NULL),(575,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2128',573,'Plus-values actées',0,NULL,NULL,1,NULL,NULL),(576,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2129',573,'Amortissements sur goodwill',0,NULL,NULL,1,NULL,NULL),(577,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','213',564,'Acomptes versés',0,NULL,NULL,1,NULL,NULL),(578,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22',1352,'Terrains et constructions',0,NULL,NULL,1,NULL,NULL),(579,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','220',578,'Terrains',0,NULL,NULL,1,NULL,NULL),(580,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2200',579,'Terrains',0,NULL,NULL,1,NULL,NULL),(581,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2201',579,'Frais d\'acquisition sur terrains',0,NULL,NULL,1,NULL,NULL),(582,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2208',579,'Plus-values actées sur terrains',0,NULL,NULL,1,NULL,NULL),(583,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2209',579,'Amortissements et réductions de valeur',0,NULL,NULL,1,NULL,NULL),(584,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22090',583,'Amortissements sur frais d\'acquisition',0,NULL,NULL,1,NULL,NULL),(585,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22091',583,'Réductions de valeur sur terrains',0,NULL,NULL,1,NULL,NULL),(586,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','221',578,'Constructions',0,NULL,NULL,1,NULL,NULL),(587,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2210',586,'Bâtiments industriels',0,NULL,NULL,1,NULL,NULL),(588,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2211',586,'Bâtiments administratifs et commerciaux',0,NULL,NULL,1,NULL,NULL),(589,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2212',586,'Autres bâtiments d\'exploitation',0,NULL,NULL,1,NULL,NULL),(590,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2213',586,'Voies de transport et ouvrages d\'art',0,NULL,NULL,1,NULL,NULL),(591,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2215',586,'Constructions sur sol d\'autrui',0,NULL,NULL,1,NULL,NULL),(592,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2216',586,'Frais d\'acquisition sur constructions',0,NULL,NULL,1,NULL,NULL),(593,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2218',586,'Plus-values actées',0,NULL,NULL,1,NULL,NULL),(594,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22180',593,'Sur bâtiments industriels',0,NULL,NULL,1,NULL,NULL),(595,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22181',593,'Sur bâtiments administratifs et commerciaux',0,NULL,NULL,1,NULL,NULL),(596,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22182',593,'Sur autres bâtiments d\'exploitation',0,NULL,NULL,1,NULL,NULL),(597,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22184',593,'Sur voies de transport et ouvrages d\'art',0,NULL,NULL,1,NULL,NULL),(598,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2219',586,'Amortissements sur constructions',0,NULL,NULL,1,NULL,NULL),(599,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22190',598,'Sur bâtiments industriels',0,NULL,NULL,1,NULL,NULL),(600,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22191',598,'Sur bâtiments administratifs et commerciaux',0,NULL,NULL,1,NULL,NULL),(601,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22192',598,'Sur autres bâtiments d\'exploitation',0,NULL,NULL,1,NULL,NULL),(602,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22194',598,'Sur voies de transport et ouvrages d\'art',0,NULL,NULL,1,NULL,NULL),(603,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22195',598,'Sur constructions sur sol d\'autrui',0,NULL,NULL,1,NULL,NULL),(604,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22196',598,'Sur frais d\'acquisition sur constructions',0,NULL,NULL,1,NULL,NULL),(605,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','222',578,'Terrains bâtis',0,NULL,NULL,1,NULL,NULL),(606,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2220',605,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(607,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22200',606,'Bâtiments industriels',0,NULL,NULL,1,NULL,NULL),(608,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22201',606,'Bâtiments administratifs et commerciaux',0,NULL,NULL,1,NULL,NULL),(609,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22202',606,'Autres bâtiments d\'exploitation',0,NULL,NULL,1,NULL,NULL),(610,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22203',606,'Voies de transport et ouvrages d\'art',0,NULL,NULL,1,NULL,NULL),(611,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22204',606,'Frais d\'acquisition des terrains à bâtir',0,NULL,NULL,1,NULL,NULL),(612,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2228',605,'Plus-values actées',0,NULL,NULL,1,NULL,NULL),(613,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22280',612,'Sur bâtiments industriels',0,NULL,NULL,1,NULL,NULL),(614,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22281',612,'Sur bâtiments administratifs et commerciaux',0,NULL,NULL,1,NULL,NULL),(615,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22282',612,'Sur autres bâtiments d\'exploitation',0,NULL,NULL,1,NULL,NULL),(616,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22283',612,'Sur voies de transport et ouvrages d\'art',0,NULL,NULL,1,NULL,NULL),(617,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2229',605,'Amortissements sur terrains bâtis',0,NULL,NULL,1,NULL,NULL),(618,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22290',617,'Sur bâtiments industriels',0,NULL,NULL,1,NULL,NULL),(619,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22291',617,'Sur bâtiments administratifs et commerciaux',0,NULL,NULL,1,NULL,NULL),(620,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22292',617,'Sur autres bâtiments d\'exploitation',0,NULL,NULL,1,NULL,NULL),(621,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22293',617,'Sur voies de transport et ouvrages d\'art',0,NULL,NULL,1,NULL,NULL),(622,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','22294',617,'Sur frais d\'acquisition des terrains bâtis',0,NULL,NULL,1,NULL,NULL),(623,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','223',578,'Autres droits réels sur des immeubles',0,NULL,NULL,1,NULL,NULL),(624,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2230',623,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(625,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2238',623,'Plus-values actées',0,NULL,NULL,1,NULL,NULL),(626,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2239',623,'Amortissements',0,NULL,NULL,1,NULL,NULL),(627,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','23',1352,'Installations, machines et outillages',0,NULL,NULL,1,NULL,NULL),(628,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','230',627,'Installations',0,NULL,NULL,1,NULL,NULL),(633,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2300',628,'Installation d\'eau',0,NULL,NULL,1,NULL,NULL),(634,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2301',628,'Installation d\'électricité',0,NULL,NULL,1,NULL,NULL),(635,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2302',628,'Installation de vapeur',0,NULL,NULL,1,NULL,NULL),(636,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2303',628,'Installation de gaz',0,NULL,NULL,1,NULL,NULL),(637,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2304',628,'Installation de chauffage',0,NULL,NULL,1,NULL,NULL),(638,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2305',628,'Installation de conditionnement d\'air',0,NULL,NULL,1,NULL,NULL),(639,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2306',628,'Installation de chargement',0,NULL,NULL,1,NULL,NULL),(640,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','231',627,'Machines',0,NULL,NULL,1,NULL,NULL),(641,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2310',640,'Division A',0,NULL,NULL,1,NULL,NULL),(642,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2311',640,'Division B',0,NULL,NULL,1,NULL,NULL),(643,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2312',640,'Division C',0,NULL,NULL,1,NULL,NULL),(644,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','237',627,'Outillage',0,NULL,NULL,1,NULL,NULL),(645,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2370',644,'Division A',0,NULL,NULL,1,NULL,NULL),(646,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2371',644,'Division B',0,NULL,NULL,1,NULL,NULL),(647,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2372',644,'Division C',0,NULL,NULL,1,NULL,NULL),(648,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','238',627,'Plus-values actées',0,NULL,NULL,1,NULL,NULL),(649,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2380',648,'Sur installations',0,NULL,NULL,1,NULL,NULL),(650,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2381',648,'Sur machines',0,NULL,NULL,1,NULL,NULL),(651,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2382',648,'Sur outillage',0,NULL,NULL,1,NULL,NULL),(652,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','239',627,'Amortissements',0,NULL,NULL,1,NULL,NULL),(653,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2390',652,'Sur installations',0,NULL,NULL,1,NULL,NULL),(654,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2391',652,'Sur machines',0,NULL,NULL,1,NULL,NULL),(655,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2392',652,'Sur outillage',0,NULL,NULL,1,NULL,NULL),(656,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24',1352,'Mobilier et matériel roulant',0,NULL,NULL,1,NULL,NULL),(657,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','240',656,'Mobilier',0,NULL,NULL,1,NULL,NULL),(658,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2400',656,'Mobilier',0,NULL,NULL,1,NULL,NULL),(659,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24000',658,'Mobilier des bâtiments industriels',0,NULL,NULL,1,NULL,NULL),(660,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24001',658,'Mobilier des bâtiments administratifs et commerciaux',0,NULL,NULL,1,NULL,NULL),(661,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24002',658,'Mobilier des autres bâtiments d\'exploitation',0,NULL,NULL,1,NULL,NULL),(662,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24003',658,'Mobilier oeuvres sociales',0,NULL,NULL,1,NULL,NULL),(663,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2401',657,'Matériel de bureau et de service social',0,NULL,NULL,1,NULL,NULL),(664,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24010',663,'Des bâtiments industriels',0,NULL,NULL,1,NULL,NULL),(665,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24011',663,'Des bâtiments administratifs et commerciaux',0,NULL,NULL,1,NULL,NULL),(666,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24012',663,'Des autres bâtiments d\'exploitation',0,NULL,NULL,1,NULL,NULL),(667,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24013',663,'Des oeuvres sociales',0,NULL,NULL,1,NULL,NULL),(668,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2408',657,'Plus-values actées',0,NULL,NULL,1,NULL,NULL),(669,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24080',668,'Plus-values actées sur mobilier',0,NULL,NULL,1,NULL,NULL),(670,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24081',668,'Plus-values actées sur matériel de bureau et service social',0,NULL,NULL,1,NULL,NULL),(671,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2409',657,'Amortissements',0,NULL,NULL,1,NULL,NULL),(672,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24090',671,'Amortissements sur mobilier',0,NULL,NULL,1,NULL,NULL),(673,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24091',671,'Amortissements sur matériel de bureau et service social',0,NULL,NULL,1,NULL,NULL),(674,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','241',656,'Matériel roulant',0,NULL,NULL,1,NULL,NULL),(675,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2410',674,'Matériel automobile',0,NULL,NULL,1,NULL,NULL),(676,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24100',675,'Voitures',0,NULL,NULL,1,NULL,NULL),(677,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24105',675,'Camions',0,NULL,NULL,1,NULL,NULL),(678,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2411',674,'Matériel ferroviaire',0,NULL,NULL,1,NULL,NULL),(679,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2412',674,'Matériel fluvial',0,NULL,NULL,1,NULL,NULL),(680,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2413',674,'Matériel naval',0,NULL,NULL,1,NULL,NULL),(681,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2414',674,'Matériel aérien',0,NULL,NULL,1,NULL,NULL),(682,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2418',674,'Plus-values sur matériel roulant',0,NULL,NULL,1,NULL,NULL),(683,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24180',682,'Plus-values sur matériel automobile',0,NULL,NULL,1,NULL,NULL),(684,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24181',682,'Idem sur matériel ferroviaire',0,NULL,NULL,1,NULL,NULL),(685,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24182',682,'Idem sur matériel fluvial',0,NULL,NULL,1,NULL,NULL),(686,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24183',682,'Idem sur matériel naval',0,NULL,NULL,1,NULL,NULL),(687,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24184',682,'Idem sur matériel aérien',0,NULL,NULL,1,NULL,NULL),(688,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2419',674,'Amortissements sur matériel roulant',0,NULL,NULL,1,NULL,NULL),(689,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24190',688,'Amortissements sur matériel automobile',0,NULL,NULL,1,NULL,NULL),(690,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24191',688,'Idem sur matériel ferroviaire',0,NULL,NULL,1,NULL,NULL),(691,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24192',688,'Idem sur matériel fluvial',0,NULL,NULL,1,NULL,NULL),(692,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24193',688,'Idem sur matériel naval',0,NULL,NULL,1,NULL,NULL),(693,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','24194',688,'Idem sur matériel aérien',0,NULL,NULL,1,NULL,NULL),(694,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','25',1352,'Immobilisation détenues en location-financement et droits similaires',0,NULL,NULL,1,NULL,NULL),(695,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','250',694,'Terrains et constructions',0,NULL,NULL,1,NULL,NULL),(696,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2500',695,'Terrains',0,NULL,NULL,1,NULL,NULL),(697,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2501',695,'Constructions',0,NULL,NULL,1,NULL,NULL),(698,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2508',695,'Plus-values sur emphytéose,  leasing et droits similaires : terrains et constructions',0,NULL,NULL,1,NULL,NULL),(699,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2509',695,'Amortissements et réductions de valeur sur terrains et constructions en leasing',0,NULL,NULL,1,NULL,NULL),(700,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','251',694,'Installations,  machines et outillage',0,NULL,NULL,1,NULL,NULL),(701,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2510',700,'Installations',0,NULL,NULL,1,NULL,NULL),(702,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2511',700,'Machines',0,NULL,NULL,1,NULL,NULL),(703,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2512',700,'Outillage',0,NULL,NULL,1,NULL,NULL),(704,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2518',700,'Plus-values actées sur installations machines et outillage pris en leasing',0,NULL,NULL,1,NULL,NULL),(705,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2519',700,'Amortissements sur installations machines et outillage pris en leasing',0,NULL,NULL,1,NULL,NULL),(706,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','252',694,'Mobilier et matériel roulant',0,NULL,NULL,1,NULL,NULL),(707,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2520',706,'Mobilier',0,NULL,NULL,1,NULL,NULL),(708,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2521',706,'Matériel roulant',0,NULL,NULL,1,NULL,NULL),(709,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2528',706,'Plus-values actées sur mobilier et matériel roulant en leasing',0,NULL,NULL,1,NULL,NULL),(710,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2529',706,'Amortissements sur mobilier et matériel roulant en leasing',0,NULL,NULL,1,NULL,NULL),(711,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','26',1352,'Autres immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(712,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','260',711,'Frais d\'aménagements de locaux pris en location',0,NULL,NULL,1,NULL,NULL),(713,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','261',711,'Maison d\'habitation',0,NULL,NULL,1,NULL,NULL),(714,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','262',711,'Réserve immobilière',0,NULL,NULL,1,NULL,NULL),(715,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','263',711,'Matériel d\'emballage',0,NULL,NULL,1,NULL,NULL),(716,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','264',711,'Emballages récupérables',0,NULL,NULL,1,NULL,NULL),(717,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','268',711,'Plus-values actées sur autres immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(718,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','269',711,'Amortissements sur autres immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(719,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2690',718,'Amortissements sur frais d\'aménagement des locaux pris en location',0,NULL,NULL,1,NULL,NULL),(720,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2691',718,'Amortissements sur maison d\'habitation',0,NULL,NULL,1,NULL,NULL),(721,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2692',718,'Amortissements sur réserve immobilière',0,NULL,NULL,1,NULL,NULL),(722,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2693',718,'Amortissements sur matériel d\'emballage',0,NULL,NULL,1,NULL,NULL),(723,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2694',718,'Amortissements sur emballages récupérables',0,NULL,NULL,1,NULL,NULL),(724,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','27',1352,'Immobilisations corporelles en cours et acomptes versés',0,NULL,NULL,1,NULL,NULL),(725,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','270',724,'Immobilisations en cours',0,NULL,NULL,1,NULL,NULL),(726,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2700',725,'Constructions',0,NULL,NULL,1,NULL,NULL),(727,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2701',725,'Installations machines et outillage',0,NULL,NULL,1,NULL,NULL),(728,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2702',725,'Mobilier et matériel roulant',0,NULL,NULL,1,NULL,NULL),(729,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2703',725,'Autres immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(730,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','271',724,'Avances et acomptes versés sur immobilisations en cours',0,NULL,NULL,1,NULL,NULL),(731,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','28',1352,'Immobilisations financières',0,NULL,NULL,1,NULL,NULL),(732,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','280',731,'Participations dans des entreprises liées',0,NULL,NULL,1,NULL,NULL),(733,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2800',732,'Valeur d\'acquisition (peut être subdivisé par participation)',0,NULL,NULL,1,NULL,NULL),(734,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2801',732,'Montants non appelés (idem)',0,NULL,NULL,1,NULL,NULL),(735,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2808',732,'Plus-values actées (idem)',0,NULL,NULL,1,NULL,NULL),(736,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2809',732,'Réductions de valeurs actées (idem)',0,NULL,NULL,1,NULL,NULL),(737,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','281',731,'Créances sur des entreprises liées',0,NULL,NULL,1,NULL,NULL),(738,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2810',737,'Créances en compte',0,NULL,NULL,1,NULL,NULL),(739,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2811',737,'Effets à recevoir',0,NULL,NULL,1,NULL,NULL),(740,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2812',737,'Titres à revenu fixes',0,NULL,NULL,1,NULL,NULL),(741,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2817',737,'Créances douteuses',0,NULL,NULL,1,NULL,NULL),(742,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2819',737,'Réductions de valeurs actées',0,NULL,NULL,1,NULL,NULL),(743,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','282',731,'Participations dans des entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(744,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2820',743,'Valeur d\'acquisition (peut être subdivisé par participation)',0,NULL,NULL,1,NULL,NULL),(745,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2821',743,'Montants non appelés (idem)',0,NULL,NULL,1,NULL,NULL),(746,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2828',743,'Plus-values actées (idem)',0,NULL,NULL,1,NULL,NULL),(747,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2829',743,'Réductions de valeurs actées (idem)',0,NULL,NULL,1,NULL,NULL),(748,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','283',731,'Créances sur des entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(749,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2830',748,'Créances en compte',0,NULL,NULL,1,NULL,NULL),(750,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2831',748,'Effets à recevoir',0,NULL,NULL,1,NULL,NULL),(751,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2832',748,'Titres à revenu fixe',0,NULL,NULL,1,NULL,NULL),(752,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2837',748,'Créances douteuses',0,NULL,NULL,1,NULL,NULL),(753,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2839',748,'Réductions de valeurs actées',0,NULL,NULL,1,NULL,NULL),(754,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','284',731,'Autres actions et parts',0,NULL,NULL,1,NULL,NULL),(755,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2840',754,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(756,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2841',754,'Montants non appelés',0,NULL,NULL,1,NULL,NULL),(757,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2848',754,'Plus-values actées',0,NULL,NULL,1,NULL,NULL),(758,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2849',754,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(759,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','285',731,'Autres créances',0,NULL,NULL,1,NULL,NULL),(760,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2850',759,'Créances en compte',0,NULL,NULL,1,NULL,NULL),(761,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2851',759,'Effets à recevoir',0,NULL,NULL,1,NULL,NULL),(762,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2852',759,'Titres à revenu fixe',0,NULL,NULL,1,NULL,NULL),(763,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2857',759,'Créances douteuses',0,NULL,NULL,1,NULL,NULL),(764,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2859',759,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(765,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','288',731,'Cautionnements versés en numéraires',0,NULL,NULL,1,NULL,NULL),(766,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2880',765,'Téléphone, téléfax, télex',0,NULL,NULL,1,NULL,NULL),(767,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2881',765,'Gaz',0,NULL,NULL,1,NULL,NULL),(768,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2882',765,'Eau',0,NULL,NULL,1,NULL,NULL),(769,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2883',765,'Electricité',0,NULL,NULL,1,NULL,NULL),(770,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2887',765,'Autres cautionnements versés en numéraires',0,NULL,NULL,1,NULL,NULL),(771,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29',1352,'Créances à plus d\'un an',0,NULL,NULL,1,NULL,NULL),(772,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','290',771,'Créances commerciales',0,NULL,NULL,1,NULL,NULL),(773,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2900',772,'Clients',0,NULL,NULL,1,NULL,NULL),(774,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29000',773,'Créances en compte sur entreprises liées',0,NULL,NULL,1,NULL,NULL),(775,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29001',773,'Sur entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(776,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29002',773,'Sur clients Belgique',0,NULL,NULL,1,NULL,NULL),(777,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29003',773,'Sur clients C.E.E.',0,NULL,NULL,1,NULL,NULL),(778,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29004',773,'Sur clients exportation hors C.E.E.',0,NULL,NULL,1,NULL,NULL),(779,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29005',773,'Créances sur les coparticipants (associations momentanées)',0,NULL,NULL,1,NULL,NULL),(780,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2901',772,'Effets à recevoir',0,NULL,NULL,1,NULL,NULL),(781,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29010',780,'Sur entreprises liées',0,NULL,NULL,1,NULL,NULL),(782,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29011',780,'Sur entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(783,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29012',780,'Sur clients Belgique',0,NULL,NULL,1,NULL,NULL),(784,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29013',780,'Sur clients C.E.E.',0,NULL,NULL,1,NULL,NULL),(785,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29014',780,'Sur clients exportation hors C.E.E.',0,NULL,NULL,1,NULL,NULL),(786,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2905',772,'Retenues sur garanties',0,NULL,NULL,1,NULL,NULL),(787,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2906',772,'Acomptes versés',0,NULL,NULL,1,NULL,NULL),(788,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2907',772,'Créances douteuses (à ventiler comme clients 2900)',0,NULL,NULL,1,NULL,NULL),(789,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2909',772,'Réductions de valeur actées (à ventiler comme clients 2900)',0,NULL,NULL,1,NULL,NULL),(790,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','291',771,'Autres créances',0,NULL,NULL,1,NULL,NULL),(791,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2910',790,'Créances en compte',0,NULL,NULL,1,NULL,NULL),(792,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29100',791,'Sur entreprises liées',0,NULL,NULL,1,NULL,NULL),(793,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29101',791,'Sur entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(794,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29102',791,'Sur autres débiteurs',0,NULL,NULL,1,NULL,NULL),(795,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2911',790,'Effets à recevoir',0,NULL,NULL,1,NULL,NULL),(796,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29110',795,'Sur entreprises liées',0,NULL,NULL,1,NULL,NULL),(797,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29111',795,'Sur entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(798,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','29112',795,'Sur autres débiteurs',0,NULL,NULL,1,NULL,NULL),(799,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2912',790,'Créances résultant de la cession d\'immobilisations données en leasing',0,NULL,NULL,1,NULL,NULL),(800,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2917',790,'Créances douteuses',0,NULL,NULL,1,NULL,NULL),(801,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','IMMO','XXXXXX','2919',790,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(802,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','30',1353,'Approvisionnements - matières premières',0,NULL,NULL,1,NULL,NULL),(803,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','300',802,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(804,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','309',802,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(805,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','31',1353,'Approvsionnements et fournitures',0,NULL,NULL,1,NULL,NULL),(806,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','310',805,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(807,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3100',806,'Matières d\'approvisionnement',0,NULL,NULL,1,NULL,NULL),(808,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3101',806,'Energie, charbon, coke, mazout, essence, propane',0,NULL,NULL,1,NULL,NULL),(809,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3102',806,'Produits d\'entretien',0,NULL,NULL,1,NULL,NULL),(810,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3103',806,'Fournitures diverses et petit outillage',0,NULL,NULL,1,NULL,NULL),(811,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3104',806,'Imprimés et fournitures de bureau',0,NULL,NULL,1,NULL,NULL),(812,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3105',806,'Fournitures de services sociaux',0,NULL,NULL,1,NULL,NULL),(813,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3106',806,'Emballages commerciaux',0,NULL,NULL,1,NULL,NULL),(814,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','31060',813,'Emballages perdus',0,NULL,NULL,1,NULL,NULL),(815,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','31061',813,'Emballages récupérables',0,NULL,NULL,1,NULL,NULL),(816,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','319',805,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(817,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','32',1353,'En cours de fabrication',0,NULL,NULL,1,NULL,NULL),(818,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','320',817,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(819,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3200',818,'Produits semi-ouvrés',0,NULL,NULL,1,NULL,NULL),(820,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3201',818,'Produits en cours de fabrication',0,NULL,NULL,1,NULL,NULL),(821,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3202',818,'Travaux en cours',0,NULL,NULL,1,NULL,NULL),(822,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3205',818,'Déchets',0,NULL,NULL,1,NULL,NULL),(823,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3206',818,'Rebuts',0,NULL,NULL,1,NULL,NULL),(824,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3209',818,'Travaux en association momentanée',0,NULL,NULL,1,NULL,NULL),(825,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','329',817,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(826,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','33',1353,'Produits finis',0,NULL,NULL,1,NULL,NULL),(827,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','330',826,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(828,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3300',827,'Produits finis',0,NULL,NULL,1,NULL,NULL),(829,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','339',826,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(830,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','34',1353,'Marchandises',0,NULL,NULL,1,NULL,NULL),(831,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','340',830,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(832,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3400',831,'Groupe A',0,NULL,NULL,1,NULL,NULL),(833,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3401',831,'Groupe B',0,NULL,NULL,1,NULL,NULL),(834,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3402',831,'Groupe C',0,NULL,NULL,1,NULL,NULL),(835,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','349',830,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(836,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','35',1353,'Immeubles destinés à la vente',0,NULL,NULL,1,NULL,NULL),(837,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','350',836,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(838,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3500',837,'Immeuble A',0,NULL,NULL,1,NULL,NULL),(839,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3501',837,'Immeuble B',0,NULL,NULL,1,NULL,NULL),(840,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3502',837,'Immeuble C',0,NULL,NULL,1,NULL,NULL),(841,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','351',836,'Immeubles construits en vue de leur revente',0,NULL,NULL,1,NULL,NULL),(842,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3510',841,'Immeuble A',0,NULL,NULL,1,NULL,NULL),(843,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3511',841,'Immeuble B',0,NULL,NULL,1,NULL,NULL),(844,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','3512',841,'Immeuble C',0,NULL,NULL,1,NULL,NULL),(845,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','359',836,'Réductions de valeurs actées',0,NULL,NULL,1,NULL,NULL),(846,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','36',1353,'Acomptes versés sur achats pour stocks',0,NULL,NULL,1,NULL,NULL),(847,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','360',846,'Acomptes versés (à ventiler éventuellement par catégorie)',0,NULL,NULL,1,NULL,NULL),(848,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','369',846,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(849,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','37',1353,'Commandes en cours d\'exécution',0,NULL,NULL,1,NULL,NULL),(850,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','370',849,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(851,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','371',849,'Bénéfice pris en compte',0,NULL,NULL,1,NULL,NULL),(852,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','STOCK','XXXXXX','379',849,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(853,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','40',1354,'Créances commerciales',0,NULL,NULL,1,NULL,NULL),(854,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','400',853,'Clients',0,NULL,NULL,1,NULL,NULL),(855,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4007',854,'Rabais, remises et  ristournes à accorder et autres notes de crédit à établir',0,NULL,NULL,1,NULL,NULL),(856,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4008',854,'Créances résultant de livraisons de biens (associations momentanées)',0,NULL,NULL,1,NULL,NULL),(857,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','401',853,'Effets à recevoir',0,NULL,NULL,1,NULL,NULL),(858,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4010',857,'Effets à recevoir',0,NULL,NULL,1,NULL,NULL),(859,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4013',857,'Effets à l\'encaissement',0,NULL,NULL,1,NULL,NULL),(860,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4015',857,'Effets à l\'escompte',0,NULL,NULL,1,NULL,NULL),(861,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','402',853,'Clients, créances courantes, entreprises apparentées, administrateurs et gérants',0,NULL,NULL,1,NULL,NULL),(862,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4020',861,'Entreprises liées',0,NULL,NULL,1,NULL,NULL),(863,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4021',861,'Autres entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(864,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4022',861,'Administrateurs et gérants d\'entreprise',0,NULL,NULL,1,NULL,NULL),(865,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','403',853,'Effets à recevoir sur entreprises apparentées et administrateurs et gérants',0,NULL,NULL,1,NULL,NULL),(866,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4030',865,'Entreprises liées',0,NULL,NULL,1,NULL,NULL),(867,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4031',865,'Autres entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(868,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4032',865,'Administrateurs et gérants de l\'entreprise',0,NULL,NULL,1,NULL,NULL),(869,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','404',853,'Produits à recevoir (factures à établir)',0,NULL,NULL,1,NULL,NULL),(870,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','405',853,'Clients : retenues sur garanties',0,NULL,NULL,1,NULL,NULL),(871,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','406',853,'Acomptes versés',0,NULL,NULL,1,NULL,NULL),(872,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','407',853,'Créances douteuses',0,NULL,NULL,1,NULL,NULL),(873,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','408',853,'Compensation clients',0,NULL,NULL,1,NULL,NULL),(874,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','409',853,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(875,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','41',1354,'Autres créances',0,NULL,NULL,1,NULL,NULL),(876,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','410',875,'Capital appelé, non versé',0,NULL,NULL,1,NULL,NULL),(877,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4100',876,'Appels de fonds',0,NULL,NULL,1,NULL,NULL),(878,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4101',876,'Actionnaires défaillants',0,NULL,NULL,1,NULL,NULL),(879,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','411',875,'T.V.A. à récupérer',0,NULL,NULL,1,NULL,NULL),(880,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4110',879,'T.V.A. due',0,NULL,NULL,1,NULL,NULL),(881,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4111',879,'T.V.A. déductible',0,NULL,NULL,1,NULL,NULL),(882,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4112',879,'Compte courant administration T.V.A.',0,NULL,NULL,1,NULL,NULL),(883,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4118',879,'Taxe d\'égalisation due',0,NULL,NULL,1,NULL,NULL),(884,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','412',875,'Impôts et versements fiscaux à récupérer',0,NULL,NULL,1,NULL,NULL),(885,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4120',884,'Impôts belges sur le résultat',0,NULL,NULL,1,NULL,NULL),(886,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4125',884,'Autres impôts belges',0,NULL,NULL,1,NULL,NULL),(887,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4128',884,'Impôts étrangers',0,NULL,NULL,1,NULL,NULL),(888,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','414',875,'Produits à recevoir',0,NULL,NULL,1,NULL,NULL),(889,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','416',875,'Créances diverses',0,NULL,NULL,1,NULL,NULL),(890,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4160',889,'Associés (compte d\'apport en société)',0,NULL,NULL,1,NULL,NULL),(891,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4161',889,'Avances et prêts au personnel',0,NULL,NULL,1,NULL,NULL),(892,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4162',889,'Compte courant des associés en S.P.R.L.',0,NULL,NULL,1,NULL,NULL),(893,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4163',889,'Compte courant des administrateurs et gérants',0,NULL,NULL,1,NULL,NULL),(894,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4164',889,'Créances sur sociétés apparentées',0,NULL,NULL,1,NULL,NULL),(895,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4166',889,'Emballages et matériel à rendre',0,NULL,NULL,1,NULL,NULL),(896,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4167',889,'Etat et établissements publics',0,NULL,NULL,1,NULL,NULL),(897,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','41670',896,'Subsides à recevoir',0,NULL,NULL,1,NULL,NULL),(898,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','41671',896,'Autres créances',0,NULL,NULL,1,NULL,NULL),(899,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4168',889,'Rabais, ristournes et remises à obtenir et autres avoirs non encore reçus',0,NULL,NULL,1,NULL,NULL),(900,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','417',875,'Créances douteuses',0,NULL,NULL,1,NULL,NULL),(901,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','418',875,'Cautionnements versés en numéraires',0,NULL,NULL,1,NULL,NULL),(902,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','419',875,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(903,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','42',1354,'Dettes à plus d\'un an échéant dans l\'année',0,NULL,NULL,1,NULL,NULL),(904,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','420',903,'Emprunts subordonnés',0,NULL,NULL,1,NULL,NULL),(905,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4200',904,'Convertibles',0,NULL,NULL,1,NULL,NULL),(906,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4201',904,'Non convertibles',0,NULL,NULL,1,NULL,NULL),(907,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','421',903,'Emprunts obligataires non subordonnés',0,NULL,NULL,1,NULL,NULL),(908,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4210',907,'Convertibles',0,NULL,NULL,1,NULL,NULL),(909,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4211',907,'Non convertibles',0,NULL,NULL,1,NULL,NULL),(910,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','422',903,'Dettes de location-financement et assimilées',0,NULL,NULL,1,NULL,NULL),(911,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4220',910,'Financement de biens immobiliers',0,NULL,NULL,1,NULL,NULL),(912,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4221',910,'Financement de biens mobiliers',0,NULL,NULL,1,NULL,NULL),(913,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','423',903,'Etablissements de crédit',0,NULL,NULL,1,NULL,NULL),(914,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4230',913,'Dettes en compte',0,NULL,NULL,1,NULL,NULL),(915,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4231',913,'Promesses',0,NULL,NULL,1,NULL,NULL),(916,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4232',913,'Crédits d\'acceptation',0,NULL,NULL,1,NULL,NULL),(917,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','424',903,'Autres emprunts',0,NULL,NULL,1,NULL,NULL),(918,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','425',903,'Dettes commerciales',0,NULL,NULL,1,NULL,NULL),(919,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4250',918,'Fournisseurs',0,NULL,NULL,1,NULL,NULL),(920,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4251',918,'Effets à payer',0,NULL,NULL,1,NULL,NULL),(921,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','426',903,'Cautionnements reçus en numéraires',0,NULL,NULL,1,NULL,NULL),(922,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','429',903,'Dettes diverses',0,NULL,NULL,1,NULL,NULL),(923,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4290',922,'Entreprises liées',0,NULL,NULL,1,NULL,NULL),(924,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4291',922,'Entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(925,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4292',922,'Administrateurs, gérants, associés',0,NULL,NULL,1,NULL,NULL),(926,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4299',922,'Autres dettes',0,NULL,NULL,1,NULL,NULL),(927,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','43',1354,'Dettes financières',0,NULL,NULL,1,NULL,NULL),(928,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','430',927,'Etablissements de crédit. Emprunts en compte à terme fixe',0,NULL,NULL,1,NULL,NULL),(929,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','431',927,'Etablissements de crédit. Promesses',0,NULL,NULL,1,NULL,NULL),(930,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','432',927,'Etablissements de crédit. Crédits d\'acceptation',0,NULL,NULL,1,NULL,NULL),(931,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','433',927,'Etablissements de crédit. Dettes en compte courant',0,NULL,NULL,1,NULL,NULL),(932,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','439',927,'Autres emprunts',0,NULL,NULL,1,NULL,NULL),(933,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44',1354,'Dettes commerciales',0,NULL,NULL,1,NULL,NULL),(934,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','440',933,'Fournisseurs',0,NULL,NULL,1,NULL,NULL),(935,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4400',934,'Entreprises apparentées',0,NULL,NULL,1,NULL,NULL),(936,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44000',935,'Entreprises liées',0,NULL,NULL,1,NULL,NULL),(937,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44001',935,'Entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(938,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4401',934,'Fournisseurs ordinaires',0,NULL,NULL,1,NULL,NULL),(939,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44010',938,'Fournisseurs belges',0,NULL,NULL,1,NULL,NULL),(940,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44011',938,'Fournisseurs CEE',0,NULL,NULL,1,NULL,NULL),(941,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44012',938,'Fournisseurs importation',0,NULL,NULL,1,NULL,NULL),(942,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4402',934,'Dettes envers les coparticipants (associations momentanées)',0,NULL,NULL,1,NULL,NULL),(943,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4403',934,'Fournisseurs - retenues de garanties',0,NULL,NULL,1,NULL,NULL),(944,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','441',933,'Effets à payer',0,NULL,NULL,1,NULL,NULL),(945,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4410',944,'Entreprises apparentées',0,NULL,NULL,1,NULL,NULL),(946,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44100',945,'Entreprises liées',0,NULL,NULL,1,NULL,NULL),(947,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44101',945,'Entreprises avec lesquelles il existe un lien de participation',0,NULL,NULL,1,NULL,NULL),(948,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4411',944,'Fournisseurs ordinaires',0,NULL,NULL,1,NULL,NULL),(949,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44110',948,'Fournisseurs belges',0,NULL,NULL,1,NULL,NULL),(950,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44111',948,'Fournisseurs CEE',0,NULL,NULL,1,NULL,NULL),(951,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','44112',948,'Fournisseurs importation',0,NULL,NULL,1,NULL,NULL),(952,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','444',933,'Factures à recevoir',0,NULL,NULL,1,NULL,NULL),(953,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','446',933,'Acomptes reçus',0,NULL,NULL,1,NULL,NULL),(954,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','448',933,'Compensations fournisseurs',0,NULL,NULL,1,NULL,NULL),(955,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','45',1354,'Dettes fiscales, salariales et sociales',0,NULL,NULL,1,NULL,NULL),(956,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','450',955,'Dettes fiscales estimées',0,NULL,NULL,1,NULL,NULL),(957,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4501',956,'Impôts sur le résultat',0,NULL,NULL,1,NULL,NULL),(958,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4505',956,'Autres impôts en Belgique',0,NULL,NULL,1,NULL,NULL),(959,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4508',956,'Impôts à l\'étranger',0,NULL,NULL,1,NULL,NULL),(960,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','451',955,'T.V.A. à payer',0,NULL,NULL,1,NULL,NULL),(961,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4510',960,'T.V.A. due',0,NULL,NULL,1,NULL,NULL),(962,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4511',960,'T.V.A. déductible',0,NULL,NULL,1,NULL,NULL),(963,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4512',960,'Compte courant administration T.V.A.',0,NULL,NULL,1,NULL,NULL),(964,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4518',960,'Taxe d\'égalisation due',0,NULL,NULL,1,NULL,NULL),(965,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','452',955,'Impôts et taxes à payer',0,NULL,NULL,1,NULL,NULL),(966,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4520',965,'Autres impôts sur le résultat',0,NULL,NULL,1,NULL,NULL),(967,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4525',965,'Autres impôts et taxes en Belgique',0,NULL,NULL,1,NULL,NULL),(968,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','45250',967,'Précompte immobilier',0,NULL,NULL,1,NULL,NULL),(969,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','45251',967,'Impôts communaux à payer',0,NULL,NULL,1,NULL,NULL),(970,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','45252',967,'Impôts provinciaux à payer',0,NULL,NULL,1,NULL,NULL),(971,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','45253',967,'Autres impôts et taxes à payer',0,NULL,NULL,1,NULL,NULL),(972,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4528',965,'Impôts et taxes à l\'étranger',0,NULL,NULL,1,NULL,NULL),(973,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','453',955,'Précomptes retenus',0,NULL,NULL,1,NULL,NULL),(974,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4530',973,'Précompte professionnel retenu sur rémunérations',0,NULL,NULL,1,NULL,NULL),(975,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4531',973,'Précompte professionnel retenu sur tantièmes',0,NULL,NULL,1,NULL,NULL),(976,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4532',973,'Précompte mobilier retenu sur dividendes attribués',0,NULL,NULL,1,NULL,NULL),(977,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4533',973,'Précompte mobilier retenu sur intérêts payés',0,NULL,NULL,1,NULL,NULL),(978,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4538',973,'Autres précomptes retenus',0,NULL,NULL,1,NULL,NULL),(979,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','454',955,'Office National de la Sécurité Sociale',0,NULL,NULL,1,NULL,NULL),(980,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4540',979,'Arriérés',0,NULL,NULL,1,NULL,NULL),(981,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4541',979,'1er trimestre',0,NULL,NULL,1,NULL,NULL),(982,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4542',979,'2ème trimestre',0,NULL,NULL,1,NULL,NULL),(983,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4543',979,'3ème trimestre',0,NULL,NULL,1,NULL,NULL),(984,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4544',979,'4ème trimestre',0,NULL,NULL,1,NULL,NULL),(985,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','455',955,'Rémunérations',0,NULL,NULL,1,NULL,NULL),(986,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4550',985,'Administrateurs,  gérants et commissaires (non réviseurs)',0,NULL,NULL,1,NULL,NULL),(987,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4551',985,'Direction',0,NULL,NULL,1,NULL,NULL),(988,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4552',985,'Employés',0,NULL,NULL,1,NULL,NULL),(989,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4553',985,'Ouvriers',0,NULL,NULL,1,NULL,NULL),(990,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','456',955,'Pécules de vacances',0,NULL,NULL,1,NULL,NULL),(991,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4560',990,'Direction',0,NULL,NULL,1,NULL,NULL),(992,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4561',990,'Employés',0,NULL,NULL,1,NULL,NULL),(993,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4562',990,'Ouvriers',0,NULL,NULL,1,NULL,NULL),(994,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','459',955,'Autres dettes sociales',0,NULL,NULL,1,NULL,NULL),(995,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4590',994,'Provision pour gratifications de fin d\'année',0,NULL,NULL,1,NULL,NULL),(996,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4591',994,'Départs de personnel',0,NULL,NULL,1,NULL,NULL),(997,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4592',994,'Oppositions sur rémunérations',0,NULL,NULL,1,NULL,NULL),(998,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4593',994,'Assurances relatives au personnel',0,NULL,NULL,1,NULL,NULL),(999,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','45930',998,'Assurance loi',0,NULL,NULL,1,NULL,NULL),(1000,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','45931',998,'Assurance salaire garanti',0,NULL,NULL,1,NULL,NULL),(1001,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','45932',998,'Assurance groupe',0,NULL,NULL,1,NULL,NULL),(1002,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','45933',998,'Assurances individuelles',0,NULL,NULL,1,NULL,NULL),(1003,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4594',994,'Caisse d\'assurances sociales pour travailleurs indépendants',0,NULL,NULL,1,NULL,NULL),(1004,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4597',994,'Dettes et provisions sociales diverses',0,NULL,NULL,1,NULL,NULL),(1005,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','46',1354,'Acomptes reçus sur commande',0,NULL,NULL,1,NULL,NULL),(1006,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','47',1354,'Dettes découlant de l\'affectation des résultats',0,NULL,NULL,1,NULL,NULL),(1007,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','470',1006,'Dividendes et tantièmes d\'exercices antérieurs',0,NULL,NULL,1,NULL,NULL),(1008,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','471',1006,'Dividendes de l\'exercice',0,NULL,NULL,1,NULL,NULL),(1009,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','472',1006,'Tantièmes de l\'exercice',0,NULL,NULL,1,NULL,NULL),(1010,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','473',1006,'Autres allocataires',0,NULL,NULL,1,NULL,NULL),(1011,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','48',4,'Dettes diverses',0,NULL,NULL,1,NULL,NULL),(1012,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','480',1011,'Obligations et coupons échus',0,NULL,NULL,1,NULL,NULL),(1013,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','481',1011,'Actionnaires - capital à rembourser',0,NULL,NULL,1,NULL,NULL),(1014,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','482',1011,'Participation du personnel à payer',0,NULL,NULL,1,NULL,NULL),(1015,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','483',1011,'Acomptes reçus d\'autres tiers à moins d\'un an',0,NULL,NULL,1,NULL,NULL),(1016,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','486',1011,'Emballages et matériel consignés',0,NULL,NULL,1,NULL,NULL),(1017,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','488',1011,'Cautionnements reçus en numéraires',0,NULL,NULL,1,NULL,NULL),(1018,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','489',1011,'Autres dettes diverses',0,NULL,NULL,1,NULL,NULL),(1019,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','49',1354,'Comptes de régularisation et compte d\'attente',0,NULL,NULL,1,NULL,NULL),(1020,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','490',1019,'Charges à reporter (à subdiviser par catégorie de charges)',0,NULL,NULL,1,NULL,NULL),(1021,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','491',1019,'Produits acquis',0,NULL,NULL,1,NULL,NULL),(1022,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4910',1021,'Produits d\'exploitation',0,NULL,NULL,1,NULL,NULL),(1023,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','49100',1022,'Ristournes et rabais à obtenir',0,NULL,NULL,1,NULL,NULL),(1024,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','49101',1022,'Commissions à obtenir',0,NULL,NULL,1,NULL,NULL),(1025,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','49102',1022,'Autres produits d\'exploitation (redevances par exemple)',0,NULL,NULL,1,NULL,NULL),(1026,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4911',1021,'Produits financiers',0,NULL,NULL,1,NULL,NULL),(1027,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','49110',1026,'Intérêts courus et non échus sur prêts et débits',0,NULL,NULL,1,NULL,NULL),(1028,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','49111',1026,'Autres produits financiers',0,NULL,NULL,1,NULL,NULL),(1029,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','492',1019,'Charges à imputer (à subdiviser par catégorie de charges)',0,NULL,NULL,1,NULL,NULL),(1030,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','493',1019,'Produits à reporter',0,NULL,NULL,1,NULL,NULL),(1031,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4930',1030,'Produits d\'exploitation à reporter',0,NULL,NULL,1,NULL,NULL),(1032,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4931',1030,'Produits financiers à reporter',0,NULL,NULL,1,NULL,NULL),(1033,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','499',1019,'Comptes d\'attente',0,NULL,NULL,1,NULL,NULL),(1034,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4990',1033,'Compte d\'attente',0,NULL,NULL,1,NULL,NULL),(1035,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4991',1033,'Compte de répartition périodique des charges',0,NULL,NULL,1,NULL,NULL),(1036,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','TIERS','XXXXXX','4999',1033,'Transferts d\'exercice',0,NULL,NULL,1,NULL,NULL),(1037,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','50',1355,'Actions propres',0,NULL,NULL,1,NULL,NULL),(1038,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','51',1355,'Actions et parts',0,NULL,NULL,1,NULL,NULL),(1039,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','510',1038,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(1040,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','511',1038,'Montants non appelés',0,NULL,NULL,1,NULL,NULL),(1041,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','519',1038,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(1042,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','52',1355,'Titres à revenus fixes',0,NULL,NULL,1,NULL,NULL),(1043,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','520',1042,'Valeur d\'acquisition',0,NULL,NULL,1,NULL,NULL),(1044,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','529',1042,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(1045,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','53',1355,'Dépots à terme',0,NULL,NULL,1,NULL,NULL),(1046,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','530',1045,'De plus d\'un an',0,NULL,NULL,1,NULL,NULL),(1047,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','531',1045,'De plus d\'un mois et à un an au plus',0,NULL,NULL,1,NULL,NULL),(1048,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','532',1045,'d\'un mois au plus',0,NULL,NULL,1,NULL,NULL),(1049,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','539',1045,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(1050,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','54',1355,'Valeurs échues à l\'encaissement',0,NULL,NULL,1,NULL,NULL),(1051,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','540',1050,'Chèques à encaisser',0,NULL,NULL,1,NULL,NULL),(1052,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','541',1050,'Coupons à encaisser',0,NULL,NULL,1,NULL,NULL),(1053,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','55',1355,'Etablissements de crédit - Comptes ouverts auprès des divers établissements.',0,NULL,NULL,1,NULL,NULL),(1054,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','550',1053,'Comptes courants',0,NULL,NULL,1,NULL,NULL),(1055,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','551',1053,'Chèques émis',0,NULL,NULL,1,NULL,NULL),(1056,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','559',1053,'Réductions de valeur actées',0,NULL,NULL,1,NULL,NULL),(1057,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','56',1355,'Office des chèques postaux',0,NULL,NULL,1,NULL,NULL),(1058,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','560',1057,'Compte courant',0,NULL,NULL,1,NULL,NULL),(1059,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','561',1057,'Chèques émis',0,NULL,NULL,1,NULL,NULL),(1060,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','57',1355,'Caisses',0,NULL,NULL,1,NULL,NULL),(1061,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','570',1060,'à 577 Caisses - espèces ( 0 - centrale ; 7 - succursales et agences)',0,NULL,NULL,1,NULL,NULL),(1062,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','578',1060,'Caisses - timbres ( 0 - fiscaux ; 1 - postaux)',0,NULL,NULL,1,NULL,NULL),(1063,1,NULL,'2020-02-09 17:36:23','PCMN-BASE','FINAN','XXXXXX','58',1355,'Virements internes',0,NULL,NULL,1,NULL,NULL),(1064,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','60',1356,'Approvisionnements et marchandises',0,NULL,NULL,1,NULL,NULL),(1065,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','600',1064,'Achats de matières premières',0,NULL,NULL,1,NULL,NULL),(1066,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','601',1064,'Achats de fournitures',0,NULL,NULL,1,NULL,NULL),(1067,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','602',1064,'Achats de services, travaux et études',0,NULL,NULL,1,NULL,NULL),(1068,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','603',1064,'Sous-traitances générales',0,NULL,NULL,1,NULL,NULL),(1069,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','604',1064,'Achats de marchandises',0,NULL,NULL,1,NULL,NULL),(1070,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','605',1064,'Achats d\'immeubles destinés à la revente',0,NULL,NULL,1,NULL,NULL),(1071,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','608',1064,'Remises , ristournes et rabais obtenus sur achats',0,NULL,NULL,1,NULL,NULL),(1072,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','609',1064,'Variations de stocks',0,NULL,NULL,1,NULL,NULL),(1073,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6090',1072,'De matières premières',0,NULL,NULL,1,NULL,NULL),(1074,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6091',1072,'De fournitures',0,NULL,NULL,1,NULL,NULL),(1075,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6094',1072,'De marchandises',0,NULL,NULL,1,NULL,NULL),(1076,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6095',1072,'d\'immeubles destinés à la vente',0,NULL,NULL,1,NULL,NULL),(1077,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61',1356,'Services et biens divers',0,NULL,NULL,1,NULL,NULL),(1078,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','610',1077,'Loyers et charges locatives',0,NULL,NULL,1,NULL,NULL),(1079,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6100',1078,'Loyers divers',0,NULL,NULL,1,NULL,NULL),(1080,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6101',1078,'Charges locatives (assurances, frais de confort,etc)',0,NULL,NULL,1,NULL,NULL),(1081,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','611',1077,'Entretien et réparation (fournitures et prestations)',0,NULL,NULL,1,NULL,NULL),(1082,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','612',1077,'Fournitures faites à l\'entreprise',0,NULL,NULL,1,NULL,NULL),(1083,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6120',1082,'Eau, gaz, électricité, vapeur',0,NULL,NULL,1,NULL,NULL),(1084,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61200',1083,'Eau',0,NULL,NULL,1,NULL,NULL),(1085,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61201',1083,'Gaz',0,NULL,NULL,1,NULL,NULL),(1086,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61202',1083,'Electricité',0,NULL,NULL,1,NULL,NULL),(1087,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61203',1083,'Vapeur',0,NULL,NULL,1,NULL,NULL),(1088,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6121',1082,'Téléphone, télégrammes, télex, téléfax, frais postaux',0,NULL,NULL,1,NULL,NULL),(1089,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61210',1088,'Téléphone',0,NULL,NULL,1,NULL,NULL),(1090,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61211',1088,'Télégrammes',0,NULL,NULL,1,NULL,NULL),(1091,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61212',1088,'Télex et téléfax',0,NULL,NULL,1,NULL,NULL),(1092,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61213',1088,'Frais postaux',0,NULL,NULL,1,NULL,NULL),(1093,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6122',1082,'Livres, bibliothèque',0,NULL,NULL,1,NULL,NULL),(1094,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6123',1082,'Imprimés et fournitures de bureau (si non comptabilisé au 601)',0,NULL,NULL,1,NULL,NULL),(1095,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','613',1077,'Rétributions de tiers',0,NULL,NULL,1,NULL,NULL),(1096,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6130',1095,'Redevances et royalties',0,NULL,NULL,1,NULL,NULL),(1097,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61300',1096,'Redevances pour brevets, licences, marques et accessoires',0,NULL,NULL,1,NULL,NULL),(1098,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61301',1096,'Autres redevances (procédés de fabrication)',0,NULL,NULL,1,NULL,NULL),(1099,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6131',1095,'Assurances non relatives au personnel',0,NULL,NULL,1,NULL,NULL),(1100,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61310',1099,'Assurance incendie',0,NULL,NULL,1,NULL,NULL),(1101,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61311',1099,'Assurance vol',0,NULL,NULL,1,NULL,NULL),(1102,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61312',1099,'Assurance autos',0,NULL,NULL,1,NULL,NULL),(1103,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61313',1099,'Assurance crédit',0,NULL,NULL,1,NULL,NULL),(1104,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61314',1099,'Assurances frais généraux',0,NULL,NULL,1,NULL,NULL),(1105,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6132',1095,'Divers',0,NULL,NULL,1,NULL,NULL),(1106,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61320',1105,'Commissions aux tiers',0,NULL,NULL,1,NULL,NULL),(1107,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61321',1105,'Honoraires d\'avocats, d\'experts, etc',0,NULL,NULL,1,NULL,NULL),(1108,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61322',1105,'Cotisations aux groupements professionnels',0,NULL,NULL,1,NULL,NULL),(1109,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61323',1105,'Dons, libéralités, etc',0,NULL,NULL,1,NULL,NULL),(1110,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61324',1105,'Frais de contentieux',0,NULL,NULL,1,NULL,NULL),(1111,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61325',1105,'Publications légales',0,NULL,NULL,1,NULL,NULL),(1112,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6133',1095,'Transports et déplacements',0,NULL,NULL,1,NULL,NULL),(1113,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61330',1112,'Transports de personnel',0,NULL,NULL,1,NULL,NULL),(1114,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','61331',1112,'Voyages, déplacements et représentations',0,NULL,NULL,1,NULL,NULL),(1115,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6134',1095,'Personnel intérimaire',0,NULL,NULL,1,NULL,NULL),(1116,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','614',1077,'Annonces, publicité, propagande et documentation',0,NULL,NULL,1,NULL,NULL),(1117,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6140',1116,'Annonces et insertions',0,NULL,NULL,1,NULL,NULL),(1118,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6141',1116,'Catalogues et imprimés',0,NULL,NULL,1,NULL,NULL),(1119,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6142',1116,'Echantillons',0,NULL,NULL,1,NULL,NULL),(1120,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6143',1116,'Foires et expositions',0,NULL,NULL,1,NULL,NULL),(1121,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6144',1116,'Primes',0,NULL,NULL,1,NULL,NULL),(1122,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6145',1116,'Cadeaux à la clientèle',0,NULL,NULL,1,NULL,NULL),(1123,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6146',1116,'Missions et réceptions',0,NULL,NULL,1,NULL,NULL),(1124,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6147',1116,'Documentation',0,NULL,NULL,1,NULL,NULL),(1125,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','615',1077,'Sous-traitants',0,NULL,NULL,1,NULL,NULL),(1126,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6150',1125,'Sous-traitants pour activités propres',0,NULL,NULL,1,NULL,NULL),(1127,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6151',1125,'Sous-traitants d\'associations momentanées (coparticipants)',0,NULL,NULL,1,NULL,NULL),(1128,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6152',1125,'Quote-part bénéficiaire des coparticipants',0,NULL,NULL,1,NULL,NULL),(1129,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','617',1077,'Personnel intérimaire et personnes mises à la disposition de l\'entreprise',0,NULL,NULL,1,NULL,NULL),(1130,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','618',1077,'Rémunérations, primes pour assurances extralégales, pensions de retraite et de survie des administrateurs, gérants et associés actifs qui ne sont pas attribuées en vertu d\'un contrat de travail',0,NULL,NULL,1,NULL,NULL),(1131,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','62',1356,'Rémunérations, charges sociales et pensions',0,NULL,NULL,1,NULL,NULL),(1132,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','620',1131,'Rémunérations et avantages sociaux directs',0,NULL,NULL,1,NULL,NULL),(1133,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6200',1132,'Administrateurs ou gérants',0,NULL,NULL,1,NULL,NULL),(1134,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6201',1132,'Personnel de direction',0,NULL,NULL,1,NULL,NULL),(1135,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6202',1132,'Employés',0,NULL,NULL,1,NULL,NULL),(1136,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6203',1132,'Ouvriers',0,NULL,NULL,1,NULL,NULL),(1137,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6204',1132,'Autres membres du personnel',0,NULL,NULL,1,NULL,NULL),(1138,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','621',1131,'Cotisations patronales d\'assurances sociales',0,NULL,NULL,1,NULL,NULL),(1139,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6210',1138,'Sur salaires',0,NULL,NULL,1,NULL,NULL),(1140,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6211',1138,'Sur appointements et commissions',0,NULL,NULL,1,NULL,NULL),(1141,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','622',1131,'Primes patronales pour assurances extralégales',0,NULL,NULL,1,NULL,NULL),(1142,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','623',1131,'Autres frais de personnel',0,NULL,NULL,1,NULL,NULL),(1143,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6230',1142,'Assurances du personnel',0,NULL,NULL,1,NULL,NULL),(1144,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','62300',1143,'Assurances loi, responsabilité civile, chemin du travail',0,NULL,NULL,1,NULL,NULL),(1145,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','62301',1143,'Assurance salaire garanti',0,NULL,NULL,1,NULL,NULL),(1146,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','62302',1143,'Assurances individuelles',0,NULL,NULL,1,NULL,NULL),(1147,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6231',1142,'Charges sociales diverses',0,NULL,NULL,1,NULL,NULL),(1148,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','62310',1147,'Jours fériés payés',0,NULL,NULL,1,NULL,NULL),(1149,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','62311',1147,'Salaire hebdomadaire garanti',0,NULL,NULL,1,NULL,NULL),(1150,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','62312',1147,'Allocations familiales complémentaires',0,NULL,NULL,1,NULL,NULL),(1151,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6232',1142,'Charges sociales des administrateurs, gérants et commissaires',0,NULL,NULL,1,NULL,NULL),(1152,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','62320',1151,'Allocations familiales complémentaires pour non salariés',0,NULL,NULL,1,NULL,NULL),(1153,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','62321',1151,'Lois sociales pour indépendants',0,NULL,NULL,1,NULL,NULL),(1154,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','62322',1151,'Divers',0,NULL,NULL,1,NULL,NULL),(1155,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','624',1131,'Pensions de retraite et de survie',0,NULL,NULL,1,NULL,NULL),(1156,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6240',1155,'Administrateurs et gérants',0,NULL,NULL,1,NULL,NULL),(1157,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6241',1155,'Personnel',0,NULL,NULL,1,NULL,NULL),(1158,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','625',1131,'Provision pour pécule de vacances',0,NULL,NULL,1,NULL,NULL),(1159,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6250',1158,'Dotations',0,NULL,NULL,1,NULL,NULL),(1160,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6251',1158,'Utilisations et reprises',0,NULL,NULL,1,NULL,NULL),(1161,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','63',1356,'Amortissements, réductions de valeur et provisions pour risques et charges',0,NULL,NULL,1,NULL,NULL),(1162,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','630',1161,'Dotations aux amortissements et aux réductions de valeur sur immobilisations',0,NULL,NULL,1,NULL,NULL),(1163,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6300',1162,'Dotations aux amortissements sur frais d\'établissement',0,NULL,NULL,1,NULL,NULL),(1164,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6301',1162,'Dotations aux amortissements sur immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(1165,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6302',1162,'Dotations aux amortissements sur immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(1166,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6308',1162,'Dotations aux réductions de valeur sur immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(1167,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6309',1162,'Dotations aux réductions de valeur sur immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(1168,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','631',1161,'Réductions de valeur sur stocks',0,NULL,NULL,1,NULL,NULL),(1169,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6310',1168,'Dotations',0,NULL,NULL,1,NULL,NULL),(1170,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6311',1168,'Reprises',0,NULL,NULL,1,NULL,NULL),(1171,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','632',1161,'Réductions de valeur sur commandes en cours d\'exécution',0,NULL,NULL,1,NULL,NULL),(1172,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6320',1171,'Dotations',0,NULL,NULL,1,NULL,NULL),(1173,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6321',1171,'Reprises',0,NULL,NULL,1,NULL,NULL),(1174,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','633',1161,'Réductions de valeur sur créances commerciales à plus d\'un an',0,NULL,NULL,1,NULL,NULL),(1175,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6330',1174,'Dotations',0,NULL,NULL,1,NULL,NULL),(1176,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6331',1174,'Reprises',0,NULL,NULL,1,NULL,NULL),(1177,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','634',1161,'Réductions de valeur sur créances commerciales à un an au plus',0,NULL,NULL,1,NULL,NULL),(1178,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6340',1177,'Dotations',0,NULL,NULL,1,NULL,NULL),(1179,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6341',1177,'Reprises',0,NULL,NULL,1,NULL,NULL),(1180,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','635',1161,'Provisions pour pensions et obligations similaires',0,NULL,NULL,1,NULL,NULL),(1181,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6350',1180,'Dotations',0,NULL,NULL,1,NULL,NULL),(1182,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6351',1180,'Utilisations et reprises',0,NULL,NULL,1,NULL,NULL),(1183,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','636',11613,'Provisions pour grosses réparations et gros entretiens',0,NULL,NULL,1,NULL,NULL),(1184,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6360',1183,'Dotations',0,NULL,NULL,1,NULL,NULL),(1185,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6361',1183,'Utilisations et reprises',0,NULL,NULL,1,NULL,NULL),(1186,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','637',1161,'Provisions pour autres risques et charges',0,NULL,NULL,1,NULL,NULL),(1187,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6370',1186,'Dotations',0,NULL,NULL,1,NULL,NULL),(1188,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6371',1186,'Utilisations et reprises',0,NULL,NULL,1,NULL,NULL),(1189,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','64',1356,'Autres charges d\'exploitation',0,NULL,NULL,1,NULL,NULL),(1190,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','640',1189,'Charges fiscales d\'exploitation',0,NULL,NULL,1,NULL,NULL),(1191,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6400',1190,'Taxes et impôts directs',0,NULL,NULL,1,NULL,NULL),(1192,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','64000',1191,'Taxes sur autos et camions',0,NULL,NULL,1,NULL,NULL),(1193,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6401',1190,'Taxes et impôts indirects',0,NULL,NULL,1,NULL,NULL),(1194,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','64010',1193,'Timbres fiscaux pris en charge par la firme',0,NULL,NULL,1,NULL,NULL),(1195,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','64011',1193,'Droits d\'enregistrement',0,NULL,NULL,1,NULL,NULL),(1196,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','64012',1193,'T.V.A. non déductible',0,NULL,NULL,1,NULL,NULL),(1197,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6402',1190,'Impôts provinciaux et communaux',0,NULL,NULL,1,NULL,NULL),(1198,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','64020',1197,'Taxe sur la force motrice',0,NULL,NULL,1,NULL,NULL),(1199,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','64021',1197,'Taxe sur le personnel occupé',0,NULL,NULL,1,NULL,NULL),(1200,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6403',1190,'Taxes diverses',0,NULL,NULL,1,NULL,NULL),(1201,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','641',1189,'Moins-values sur réalisations courantes d\'immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(1202,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','642',1189,'Moins-values sur réalisations de créances commerciales',0,NULL,NULL,1,NULL,NULL),(1203,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','643',1189,'à 648 Charges d\'exploitations diverses',0,NULL,NULL,1,NULL,NULL),(1204,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','649',1189,'Charges d\'exploitation portées à l\'actif au titre de restructuration',0,NULL,NULL,1,NULL,NULL),(1205,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','65',1356,'Charges financières',0,NULL,NULL,1,NULL,NULL),(1206,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','650',1205,'Charges des dettes',0,NULL,NULL,1,NULL,NULL),(1207,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6500',1206,'Intérêts, commissions et frais afférents aux dettes',0,NULL,NULL,1,NULL,NULL),(1208,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6501',1206,'Amortissements des agios et frais d\'émission d\'emprunts',0,NULL,NULL,1,NULL,NULL),(1209,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6502',1206,'Autres charges de dettes',0,NULL,NULL,1,NULL,NULL),(1210,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6503',1206,'Intérêts intercalaires portés à l\'actif',0,NULL,NULL,1,NULL,NULL),(1211,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','651',1205,'Réductions de valeur sur actifs circulants',0,NULL,NULL,1,NULL,NULL),(1212,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6510',1211,'Dotations',0,NULL,NULL,1,NULL,NULL),(1213,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6511',1211,'Reprises',0,NULL,NULL,1,NULL,NULL),(1214,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','652',1205,'Moins-values sur réalisation d\'actifs circulants',0,NULL,NULL,1,NULL,NULL),(1215,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','653',1205,'Charges d\'escompte de créances',0,NULL,NULL,1,NULL,NULL),(1216,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','654',1205,'Différences de change',0,NULL,NULL,1,NULL,NULL),(1217,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','655',1205,'Ecarts de conversion des devises',0,NULL,NULL,1,NULL,NULL),(1218,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','656',1205,'Frais de banques, de chèques postaux',0,NULL,NULL,1,NULL,NULL),(1219,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','657',1205,'Commissions sur ouvertures de crédit, cautions et avals',0,NULL,NULL,1,NULL,NULL),(1220,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','658',1205,'Frais de vente des titres',0,NULL,NULL,1,NULL,NULL),(1221,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','66',1356,'Charges exceptionnelles',0,NULL,NULL,1,NULL,NULL),(1222,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','660',1221,'Amortissements et réductions de valeur exceptionnels',0,NULL,NULL,1,NULL,NULL),(1223,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6600',1222,'Sur frais d\'établissement',0,NULL,NULL,1,NULL,NULL),(1224,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6601',1222,'Sur immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(1225,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6602',1222,'Sur immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(1226,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','661',1221,'Réductions de valeur sur immobilisations financières',0,NULL,NULL,1,NULL,NULL),(1227,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','662',1221,'Provisions pour risques et charges exceptionnels',0,NULL,NULL,1,NULL,NULL),(1228,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','663',1221,'Moins-values sur réalisation d\'actifs immobilisés',0,NULL,NULL,1,NULL,NULL),(1229,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6630',1228,'Sur immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(1230,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6631',1228,'Sur immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(1231,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6632',1228,'Sur immobilisations détenues en location-financement et droits similaires',0,NULL,NULL,1,NULL,NULL),(1232,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6633',1228,'Sur immobilisations financières',0,NULL,NULL,1,NULL,NULL),(1233,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6634',1228,'Sur immeubles acquis ou construits en vue de la revente',0,NULL,NULL,1,NULL,NULL),(1235,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','664',1221,'Pénalités et amendes diverses',0,NULL,NULL,1,NULL,NULL),(1236,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','665',1221,'Différence de charge',0,NULL,NULL,1,NULL,NULL),(1237,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','669',1221,'Charges exceptionnelles transférées à l\'actif en frais de restructuration',0,NULL,NULL,1,NULL,NULL),(1238,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','67',1356,'Impôts sur le résultat',0,NULL,NULL,1,NULL,NULL),(1239,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','670',1238,'Impôts belges sur le résultat de l\'exercice',0,NULL,NULL,1,NULL,NULL),(1240,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6700',1239,'Impôts et précomptes dus ou versés',0,NULL,NULL,1,NULL,NULL),(1241,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6701',1239,'Excédent de versements d\'impôts et précomptes porté à l\'actif',0,NULL,NULL,1,NULL,NULL),(1242,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6702',1239,'Charges fiscales estimées',0,NULL,NULL,1,NULL,NULL),(1243,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','671',1238,'Impôts belges sur le résultat d\'exercices antérieurs',0,NULL,NULL,1,NULL,NULL),(1244,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6710',1243,'Suppléments d\'impôts dus ou versés',0,NULL,NULL,1,NULL,NULL),(1245,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6711',1243,'Suppléments d\'impôts estimés',0,NULL,NULL,1,NULL,NULL),(1246,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6712',1243,'Provisions fiscales constituées',0,NULL,NULL,1,NULL,NULL),(1247,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','672',1238,'Impôts étrangers sur le résultat de l\'exercice',0,NULL,NULL,1,NULL,NULL),(1248,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','673',1238,'Impôts étrangers sur le résultat d\'exercices antérieurs',0,NULL,NULL,1,NULL,NULL),(1249,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','68',1356,'Transferts aux réserves immunisées',0,NULL,NULL,1,NULL,NULL),(1250,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','69',1356,'Affectation des résultats',0,NULL,NULL,1,NULL,NULL),(1251,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','690',1250,'Perte reportée de l\'exercice précédent',0,NULL,NULL,1,NULL,NULL),(1252,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','691',1250,'Dotation à la réserve légale',0,NULL,NULL,1,NULL,NULL),(1253,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','692',1250,'Dotation aux autres réserves',0,NULL,NULL,1,NULL,NULL),(1254,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','693',1250,'Bénéfice à reporter',0,NULL,NULL,1,NULL,NULL),(1255,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','694',1250,'Rémunération du capital',0,NULL,NULL,1,NULL,NULL),(1256,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','695',1250,'Administrateurs ou gérants',0,NULL,NULL,1,NULL,NULL),(1257,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','696',1250,'Autres allocataires',0,NULL,NULL,1,NULL,NULL),(1258,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','70',1357,'Chiffre d\'affaires',0,NULL,NULL,1,NULL,NULL),(1260,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','700',1258,'Ventes de marchandises',0,NULL,NULL,1,NULL,NULL),(1261,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7000',1260,'Ventes en Belgique',0,NULL,NULL,1,NULL,NULL),(1262,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7001',1260,'Ventes dans les pays membres de la C.E.E.',0,NULL,NULL,1,NULL,NULL),(1263,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7002',1260,'Ventes à l\'exportation',0,NULL,NULL,1,NULL,NULL),(1264,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','701',1258,'Ventes de produits finis',0,NULL,NULL,1,NULL,NULL),(1265,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7010',1264,'Ventes en Belgique',0,NULL,NULL,1,NULL,NULL),(1266,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7011',1264,'Ventes dans les pays membres de la C.E.E.',0,NULL,NULL,1,NULL,NULL),(1267,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7012',1264,'Ventes à l\'exportation',0,NULL,NULL,1,NULL,NULL),(1268,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','702',1258,'Ventes de déchets et rebuts',0,NULL,NULL,1,NULL,NULL),(1269,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7020',1268,'Ventes en Belgique',0,NULL,NULL,1,NULL,NULL),(1270,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7021',1268,'Ventes dans les pays membres de la C.E.E.',0,NULL,NULL,1,NULL,NULL),(1271,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7022',1268,'Ventes à l\'exportation',0,NULL,NULL,1,NULL,NULL),(1272,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','703',1258,'Ventes d\'emballages récupérables',0,NULL,NULL,1,NULL,NULL),(1273,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','704',1258,'Facturations des travaux en cours (associations momentanées)',0,NULL,NULL,1,NULL,NULL),(1274,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','705',1258,'Prestations de services',0,NULL,NULL,1,NULL,NULL),(1275,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7050',1274,'Prestations de services en Belgique',0,NULL,NULL,1,NULL,NULL),(1276,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7051',1274,'Prestations de services dans les pays membres de la C.E.E.',0,NULL,NULL,1,NULL,NULL),(1277,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7052',1274,'Prestations de services en vue de l\'exportation',0,NULL,NULL,1,NULL,NULL),(1278,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','706',1258,'Pénalités et dédits obtenus par l\'entreprise',0,NULL,NULL,1,NULL,NULL),(1279,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','708',1258,'Remises, ristournes et rabais accordés',0,NULL,NULL,1,NULL,NULL),(1280,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7080',1279,'Sur ventes de marchandises',0,NULL,NULL,1,NULL,NULL),(1281,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7081',1279,'Sur ventes de produits finis',0,NULL,NULL,1,NULL,NULL),(1282,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7082',1279,'Sur ventes de déchets et rebuts',0,NULL,NULL,1,NULL,NULL),(1283,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7083',1279,'Sur prestations de services',0,NULL,NULL,1,NULL,NULL),(1284,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7084',1279,'Mali sur travaux facturés aux associations momentanées',0,NULL,NULL,1,NULL,NULL),(1285,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','71',1357,'Variation des stocks et des commandes en cours d\'exécution',0,NULL,NULL,1,NULL,NULL),(1286,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','712',1285,'Des en cours de fabrication',0,NULL,NULL,1,NULL,NULL),(1287,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','713',1285,'Des produits finis',0,NULL,NULL,1,NULL,NULL),(1288,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','715',1285,'Des immeubles construits destinés à la vente',0,NULL,NULL,1,NULL,NULL),(1289,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','717',1285,'Des commandes en cours d\'exécution',0,NULL,NULL,1,NULL,NULL),(1290,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7170',1289,'Commandes en cours - Coût de revient',0,NULL,NULL,1,NULL,NULL),(1291,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','71700',1290,'Coût des commandes en cours d\'exécution',0,NULL,NULL,1,NULL,NULL),(1292,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','71701',1290,'Coût des travaux en cours des associations momentanées',0,NULL,NULL,1,NULL,NULL),(1293,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7171',1289,'Bénéfices portés en compte sur commandes en cours',0,NULL,NULL,1,NULL,NULL),(1294,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','71710',1293,'Sur commandes en cours d\'exécution',0,NULL,NULL,1,NULL,NULL),(1295,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','71711',1293,'Sur travaux en cours des associations momentanées',0,NULL,NULL,1,NULL,NULL),(1296,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','72',1357,'Production immobilisée',0,NULL,NULL,1,NULL,NULL),(1297,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','720',1296,'En frais d\'établissement',0,NULL,NULL,1,NULL,NULL),(1298,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','721',1296,'En immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(1299,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','722',1296,'En immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(1300,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','723',1296,'En immobilisations en cours',0,NULL,NULL,1,NULL,NULL),(1301,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','74',1357,'Autres produits d\'exploitation',0,NULL,NULL,1,NULL,NULL),(1302,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','740',1301,'Subsides d\'exploitation et montants compensatoires',0,NULL,NULL,1,NULL,NULL),(1303,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','741',1301,'Plus-values sur réalisations courantes d\'immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(1304,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','742',1301,'Plus-values sur réalisations de créances commerciales',0,NULL,NULL,1,NULL,NULL),(1306,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','743',1301,'Produits de services exploités dans l\'intérêt du personnel',0,NULL,NULL,1,NULL,NULL),(1307,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','744',1301,'Commissions et courtages',0,NULL,NULL,1,NULL,NULL),(1308,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','745',1301,'Redevances pour brevets et licences',0,NULL,NULL,1,NULL,NULL),(1309,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','746',1301,'Prestations de services (transports, études, etc)',0,NULL,NULL,1,NULL,NULL),(1310,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','747',1301,'Revenus des immeubles affectés aux activités non professionnelles',0,NULL,NULL,1,NULL,NULL),(1311,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','748',1301,'Locations diverses à caractère professionnel',0,NULL,NULL,1,NULL,NULL),(1312,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','749',1301,'Produits divers',0,NULL,NULL,1,NULL,NULL),(1313,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7490',1312,'Bonis sur reprises d\'emballages consignés',0,NULL,NULL,1,NULL,NULL),(1314,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7491',1312,'Bonis sur travaux en associations momentanées',0,NULL,NULL,1,NULL,NULL),(1315,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','75',1357,'Produits financiers',0,NULL,NULL,1,NULL,NULL),(1316,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','750',1315,'Produits des immobilisations financières',0,NULL,NULL,1,NULL,NULL),(1317,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7500',1316,'Revenus des actions',0,NULL,NULL,1,NULL,NULL),(1318,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7501',1316,'Revenus des obligations',0,NULL,NULL,1,NULL,NULL),(1319,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7502',1316,'Revenus des créances à plus d\'un an',0,NULL,NULL,1,NULL,NULL),(1320,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','751',1315,'Produits des actifs circulants',0,NULL,NULL,1,NULL,NULL),(1321,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','752',1315,'Plus-values sur réalisations d\'actifs circulants',0,NULL,NULL,1,NULL,NULL),(1322,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','753',1315,'Subsides en capital et en intérêts',0,NULL,NULL,1,NULL,NULL),(1323,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','754',1315,'Différences de change',0,NULL,NULL,1,NULL,NULL),(1324,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','755',1315,'Ecarts de conversion des devises',0,NULL,NULL,1,NULL,NULL),(1326,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','756',1315,'Produits des autres créances',0,NULL,NULL,1,NULL,NULL),(1327,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','757',1315,'Escomptes obtenus',0,NULL,NULL,1,NULL,NULL),(1328,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','76',1357,'Produits exceptionnels',0,NULL,NULL,1,NULL,NULL),(1329,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','760',1328,'Reprises d\'amortissements et de réductions de valeur',0,NULL,NULL,1,NULL,NULL),(1330,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7600',1329,'Sur immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(1331,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7601',1329,'Sur immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(1332,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','761',1328,'Reprises de réductions de valeur sur immobilisations financières',0,NULL,NULL,1,NULL,NULL),(1333,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','762',1328,'Reprises de provisions pour risques et charges exceptionnelles',0,NULL,NULL,1,NULL,NULL),(1334,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','763',1328,'Plus-values sur réalisation d\'actifs immobilisés',0,NULL,NULL,1,NULL,NULL),(1335,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7630',1334,'Sur immobilisations incorporelles',0,NULL,NULL,1,NULL,NULL),(1336,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7631',1334,'Sur immobilisations corporelles',0,NULL,NULL,1,NULL,NULL),(1337,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7632',1334,'Sur immobilisations financières',0,NULL,NULL,1,NULL,NULL),(1338,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','764',1328,'Autres produits exceptionnels',0,NULL,NULL,1,NULL,NULL),(1339,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','77',1357,'Régularisations d\'impôts et reprises de provisions fiscales',0,NULL,NULL,1,NULL,NULL),(1340,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','771',1339,'Impôts belges sur le résultat',0,NULL,NULL,1,NULL,NULL),(1341,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7710',1340,'Régularisations d\'impôts dus ou versés',0,NULL,NULL,1,NULL,NULL),(1342,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7711',1340,'Régularisations d\'impôts estimés',0,NULL,NULL,1,NULL,NULL),(1343,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7712',1340,'Reprises de provisions fiscales',0,NULL,NULL,1,NULL,NULL),(1344,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','773',1339,'Impôts étrangers sur le résultat',0,NULL,NULL,1,NULL,NULL),(1345,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','79',1357,'Affectation aux résultats',0,NULL,NULL,1,NULL,NULL),(1346,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','790',1345,'Bénéfice reporté de l\'exercice précédent',0,NULL,NULL,1,NULL,NULL),(1347,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','791',1345,'Prélèvement sur le capital et les primes d\'émission',0,NULL,NULL,1,NULL,NULL),(1348,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','792',1345,'Prélèvement sur les réserves',0,NULL,NULL,1,NULL,NULL),(1349,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','793',1345,'Perte à reporter',0,NULL,NULL,1,NULL,NULL),(1350,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','794',1345,'Intervention d\'associés (ou du propriétaire) dans la perte',0,NULL,NULL,1,NULL,NULL),(1351,1,NULL,'2020-02-09 17:35:52','PCMN-BASE','CAPIT','XXXXXX','1',0,'Fonds propres, provisions pour risques et charges et dettes à plus d\'un an',0,NULL,NULL,1,NULL,NULL),(1352,1,NULL,'2020-02-09 17:35:52','PCMN-BASE','IMMO','XXXXXX','2',0,'Frais d\'établissement. Actifs immobilisés et créances à plus d\'un an',0,NULL,NULL,1,NULL,NULL),(1353,1,NULL,'2020-02-09 17:35:52','PCMN-BASE','STOCK','XXXXXX','3',0,'Stock et commandes en cours d\'exécution',0,NULL,NULL,1,NULL,NULL),(1354,1,NULL,'2020-02-09 17:35:52','PCMN-BASE','TIERS','XXXXXX','4',0,'Créances et dettes à un an au plus',0,NULL,NULL,1,NULL,NULL),(1355,1,NULL,'2020-02-09 17:35:52','PCMN-BASE','FINAN','XXXXXX','5',0,'Placement de trésorerie et de valeurs disponibles',0,NULL,NULL,1,NULL,NULL),(1356,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','EXPENSE','XXXXXX','6',0,'Charges',0,NULL,NULL,1,NULL,NULL),(1357,1,NULL,'2020-02-09 17:36:25','PCMN-BASE','INCOME','XXXXXX','7',0,'Produits',0,NULL,NULL,1,NULL,NULL),(1401,1,NULL,'2020-02-09 17:35:52','PCG99-ABREGE','CAPIT','XXXXXX','1',0,'Fonds propres, provisions pour risques et charges et dettes à plus d\'un an',0,NULL,NULL,1,NULL,NULL),(1402,1,NULL,'2020-02-09 17:35:52','PCG99-ABREGE','IMMO','XXXXXX','2',0,'Frais d\'établissement. Actifs immobilisés et créances à plus d\'un an',0,NULL,NULL,1,NULL,NULL),(1403,1,NULL,'2020-02-09 17:35:52','PCG99-ABREGE','STOCK','XXXXXX','3',0,'Stock et commandes en cours d\'exécution',0,NULL,NULL,1,NULL,NULL),(1404,1,NULL,'2020-02-09 17:35:52','PCG99-ABREGE','TIERS','XXXXXX','4',0,'Créances et dettes à un an au plus',0,NULL,NULL,1,NULL,NULL),(1405,1,NULL,'2020-02-09 17:35:52','PCG99-ABREGE','FINAN','XXXXXX','5',0,'Placement de trésorerie et de valeurs disponibles',0,NULL,NULL,1,NULL,NULL),(1406,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','EXPENSE','XXXXXX','6',0,'Charges',0,NULL,NULL,1,NULL,NULL),(1407,1,NULL,'2020-02-09 17:36:25','PCG99-ABREGE','INCOME','XXXXXX','7',0,'Produits',0,NULL,NULL,1,NULL,NULL),(1501,1,NULL,'2020-02-09 17:35:52','PCG99-BASE','CAPIT','XXXXXX','1',0,'Fonds propres, provisions pour risques et charges et dettes à plus d\'un an',0,NULL,NULL,1,NULL,NULL),(1502,1,NULL,'2020-02-09 17:35:52','PCG99-BASE','IMMO','XXXXXX','2',0,'Frais d\'établissement. Actifs immobilisés et créances à plus d\'un an',0,NULL,NULL,1,NULL,NULL),(1503,1,NULL,'2020-02-09 17:35:52','PCG99-BASE','STOCK','XXXXXX','3',0,'Stock et commandes en cours d\'exécution',0,NULL,NULL,1,NULL,NULL),(1504,1,NULL,'2020-02-09 17:35:52','PCG99-BASE','TIERS','XXXXXX','4',0,'Créances et dettes à un an au plus',0,NULL,NULL,1,NULL,NULL),(1505,1,NULL,'2020-02-09 17:35:52','PCG99-BASE','FINAN','XXXXXX','5',0,'Placement de trésorerie et de valeurs disponibles',0,NULL,NULL,1,NULL,NULL),(1506,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','EXPENSE','XXXXXX','6',0,'Charges',0,NULL,NULL,1,NULL,NULL),(1507,1,NULL,'2020-02-09 17:36:25','PCG99-BASE','INCOME','XXXXXX','7',0,'Produits',0,NULL,NULL,1,NULL,NULL),(4001,1,NULL,'2020-02-09 17:35:52','PCG08-PYME','FINANCIACION','XXXXXX','1',0,'Financiación básica',0,NULL,NULL,1,NULL,NULL),(4002,1,NULL,'2020-02-09 17:35:52','PCG08-PYME','ACTIVO','XXXXXX','2',0,'Activo no corriente',0,NULL,NULL,1,NULL,NULL),(4003,1,NULL,'2020-02-09 17:35:52','PCG08-PYME','EXISTENCIAS','XXXXXX','3',0,'Existencias',0,NULL,NULL,1,NULL,NULL),(4004,1,NULL,'2020-02-09 17:35:52','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4',0,'Acreedores y deudores por operaciones comerciales',0,NULL,NULL,1,NULL,NULL),(4005,1,NULL,'2020-02-09 17:35:52','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5',0,'Cuentas financieras',0,NULL,NULL,1,NULL,NULL),(4006,1,NULL,'2020-02-09 17:35:52','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6',0,'Compras y gastos',0,NULL,NULL,1,NULL,NULL),(4007,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7',0,'Ventas e ingresos',0,NULL,NULL,1,NULL,NULL),(4008,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','10',4001,'CAPITAL',0,NULL,NULL,1,NULL,NULL),(4009,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','100',4008,'Capital social',0,NULL,NULL,1,NULL,NULL),(4010,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','101',4008,'Fondo social',0,NULL,NULL,1,NULL,NULL),(4011,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','CAPITAL','102',4008,'Capital',0,NULL,NULL,1,NULL,NULL),(4012,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','103',4008,'Socios por desembolsos no exigidos',0,NULL,NULL,1,NULL,NULL),(4013,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1030',4012,'Socios por desembolsos no exigidos capital social',0,NULL,NULL,1,NULL,NULL),(4014,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1034',4012,'Socios por desembolsos no exigidos capital pendiente de inscripción',0,NULL,NULL,1,NULL,NULL),(4015,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','104',4008,'Socios por aportaciones no dineradas pendientes',0,NULL,NULL,1,NULL,NULL),(4016,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1040',4015,'Socios por aportaciones no dineradas pendientes capital social',0,NULL,NULL,1,NULL,NULL),(4017,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1044',4015,'Socios por aportaciones no dineradas pendientes capital pendiente de inscripción',0,NULL,NULL,1,NULL,NULL),(4018,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','108',4008,'Acciones o participaciones propias en situaciones especiales',0,NULL,NULL,1,NULL,NULL),(4019,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','109',4008,'Acciones o participaciones propias para reducción de capital',0,NULL,NULL,1,NULL,NULL),(4020,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','11',4001,'Reservas y otros instrumentos de patrimonio',0,NULL,NULL,1,NULL,NULL),(4021,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','110',4020,'Prima de emisión o asunción',0,NULL,NULL,1,NULL,NULL),(4022,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','111',4020,'Otros instrumentos de patrimonio neto',0,NULL,NULL,1,NULL,NULL),(4023,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1110',4022,'Patrimonio neto por emisión de instrumentos financieros compuestos',0,NULL,NULL,1,NULL,NULL),(4024,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1111',4022,'Resto de instrumentos de patrimoio neto',0,NULL,NULL,1,NULL,NULL),(4025,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','112',4020,'Reserva legal',0,NULL,NULL,1,NULL,NULL),(4026,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','113',4020,'Reservas voluntarias',0,NULL,NULL,1,NULL,NULL),(4027,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','114',4020,'Reservas especiales',0,NULL,NULL,1,NULL,NULL),(4028,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1140',4027,'Reservas para acciones o participaciones de la sociedad dominante',0,NULL,NULL,1,NULL,NULL),(4029,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1141',4027,'Reservas estatutarias',0,NULL,NULL,1,NULL,NULL),(4030,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1142',4027,'Reservas por capital amortizado',0,NULL,NULL,1,NULL,NULL),(4031,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1143',4027,'Reservas por fondo de comercio',0,NULL,NULL,1,NULL,NULL),(4032,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1144',4028,'Reservas por acciones propias aceptadas en garantía',0,NULL,NULL,1,NULL,NULL),(4033,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','115',4020,'Reservas por pérdidas y ganancias actuariales y otros ajustes',0,NULL,NULL,1,NULL,NULL),(4034,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','118',4020,'Aportaciones de socios o propietarios',0,NULL,NULL,1,NULL,NULL),(4035,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','119',4020,'Diferencias por ajuste del capital a euros',0,NULL,NULL,1,NULL,NULL),(4036,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','12',4001,'Resultados pendientes de aplicación',0,NULL,NULL,1,NULL,NULL),(4037,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','120',4036,'Remanente',0,NULL,NULL,1,NULL,NULL),(4038,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','121',4036,'Resultados negativos de ejercicios anteriores',0,NULL,NULL,1,NULL,NULL),(4039,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','129',4036,'Resultado del ejercicio',0,NULL,NULL,1,NULL,NULL),(4040,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','13',4001,'Subvenciones, donaciones y ajustes por cambio de valor',0,NULL,NULL,1,NULL,NULL),(4041,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','130',4040,'Subvenciones oficiales de capital',0,NULL,NULL,1,NULL,NULL),(4042,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','131',4040,'Donaciones y legados de capital',0,NULL,NULL,1,NULL,NULL),(4043,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','132',4040,'Otras subvenciones, donaciones y legados',0,NULL,NULL,1,NULL,NULL),(4044,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','133',4040,'Ajustes por valoración en activos financieros disponibles para la venta',0,NULL,NULL,1,NULL,NULL),(4045,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','134',4040,'Operaciones de cobertura',0,NULL,NULL,1,NULL,NULL),(4046,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1340',4045,'Cobertura de flujos de efectivo',0,NULL,NULL,1,NULL,NULL),(4047,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1341',4045,'Cobertura de una inversión neta en un negocio extranjero',0,NULL,NULL,1,NULL,NULL),(4048,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','135',4040,'Diferencias de conversión',0,NULL,NULL,1,NULL,NULL),(4049,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','136',4040,'Ajustes por valoración en activos no corrientes y grupos enajenables de elementos mantenidos para la venta',0,NULL,NULL,1,NULL,NULL),(4050,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','137',4040,'Ingresos fiscales a distribuir en varios ejercicios',0,NULL,NULL,1,NULL,NULL),(4051,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1370',4050,'Ingresos fiscales por diferencias permanentes a distribuir en varios ejercicios',0,NULL,NULL,1,NULL,NULL),(4052,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1371',4050,'Ingresos fiscales por deducciones y bonificaciones a distribuir en varios ejercicios',0,NULL,NULL,1,NULL,NULL),(4053,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','14',4001,'Provisiones',0,NULL,NULL,1,NULL,NULL),(4054,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','141',4053,'Provisión para impuestos',0,NULL,NULL,1,NULL,NULL),(4055,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','142',4053,'Provisión para otras responsabilidades',0,NULL,NULL,1,NULL,NULL),(4056,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','143',4053,'Provisión por desmantelamiento, retiro o rehabilitación del inmovilizado',0,NULL,NULL,1,NULL,NULL),(4057,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','145',4053,'Provisión para actuaciones medioambientales',0,NULL,NULL,1,NULL,NULL),(4058,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','15',4001,'Deudas a largo plazo con características especiales',0,NULL,NULL,1,NULL,NULL),(4059,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','150',4058,'Acciones o participaciones a largo plazo consideradas como pasivos financieros',0,NULL,NULL,1,NULL,NULL),(4060,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','153',4058,'Desembolsos no exigidos por acciones o participaciones consideradas como pasivos financieros',0,NULL,NULL,1,NULL,NULL),(4061,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1533',4060,'Desembolsos no exigidos empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4062,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1534',4060,'Desembolsos no exigidos empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4063,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1535',4060,'Desembolsos no exigidos otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4064,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1536',4060,'Otros desembolsos no exigidos',0,NULL,NULL,1,NULL,NULL),(4065,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','154',4058,'Aportaciones no dinerarias pendientes por acciones o participaciones consideradas como pasivos financieros',0,NULL,NULL,1,NULL,NULL),(4066,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1543',4065,'Aportaciones no dinerarias pendientes empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4067,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1544',4065,'Aportaciones no dinerarias pendientes empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4068,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1545',4065,'Aportaciones no dinerarias pendientes otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4069,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1546',4065,'Otras aportaciones no dinerarias pendientes',0,NULL,NULL,1,NULL,NULL),(4070,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','16',4001,'Deudas a largo plazo con partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4071,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','160',4070,'Deudas a largo plazo con entidades de crédito vinculadas',0,NULL,NULL,1,NULL,NULL),(4072,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1603',4071,'Deudas a largo plazo con entidades de crédito empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4073,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1604',4071,'Deudas a largo plazo con entidades de crédito empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4074,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1605',4071,'Deudas a largo plazo con otras entidades de crédito vinculadas',0,NULL,NULL,1,NULL,NULL),(4075,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','161',4070,'Proveedores de inmovilizado a largo plazo partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4076,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1613',4075,'Proveedores de inmovilizado a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4077,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1614',4075,'Proveedores de inmovilizado a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4078,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1615',4075,'Proveedores de inmovilizado a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4079,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','162',4070,'Acreedores por arrendamiento financiero a largo plazo partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4080,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1623',4079,'Acreedores por arrendamiento financiero a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4081,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1624',4080,'Acreedores por arrendamiento financiero a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4082,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1625',4080,'Acreedores por arrendamiento financiero a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4083,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','163',4070,'Otras deudas a largo plazo con partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4084,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1633',4083,'Otras deudas a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4085,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1634',4083,'Otras deudas a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4086,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','1635',4083,'Otras deudas a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4087,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','17',4001,'Deudas a largo plazo por préstamos recibidos empresitos y otros conceptos',0,NULL,NULL,1,NULL,NULL),(4088,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','170',4087,'Deudas a largo plazo con entidades de crédito',0,NULL,NULL,1,NULL,NULL),(4089,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','171',4087,'Deudas a largo plazo',0,NULL,NULL,1,NULL,NULL),(4090,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','172',4087,'Deudas a largo plazo transformables en suvbenciones donaciones y legados',0,NULL,NULL,1,NULL,NULL),(4091,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','173',4087,'Proveedores de inmovilizado a largo plazo',0,NULL,NULL,1,NULL,NULL),(4092,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','174',4087,'Acreedores por arrendamiento financiero a largo plazo',0,NULL,NULL,1,NULL,NULL),(4093,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','175',4087,'Efectos a pagar a largo plazo',0,NULL,NULL,1,NULL,NULL),(4094,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','176',4087,'Pasivos por derivados financieros a largo plazo',0,NULL,NULL,1,NULL,NULL),(4095,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','177',4087,'Obligaciones y bonos',0,NULL,NULL,1,NULL,NULL),(4096,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','179',4087,'Deudas representadas en otros valores negociables',0,NULL,NULL,1,NULL,NULL),(4097,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','18',4001,'Pasivos por fianzas garantias y otros conceptos a largo plazo',0,NULL,NULL,1,NULL,NULL),(4098,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','180',4097,'Fianzas recibidas a largo plazo',0,NULL,NULL,1,NULL,NULL),(4099,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','181',4097,'Anticipos recibidos por ventas o prestaciones de servicios a largo plazo',0,NULL,NULL,1,NULL,NULL),(4100,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','185',4097,'Depositos recibidos a largo plazo',0,NULL,NULL,1,NULL,NULL),(4101,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','19',4001,'Situaciones transitorias de financiación',0,NULL,NULL,1,NULL,NULL),(4102,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','190',4101,'Acciones o participaciones emitidas',0,NULL,NULL,1,NULL,NULL),(4103,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','192',4101,'Suscriptores de acciones',0,NULL,NULL,1,NULL,NULL),(4104,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','194',4101,'Capital emitido pendiente de inscripción',0,NULL,NULL,1,NULL,NULL),(4105,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','195',4101,'Acciones o participaciones emitidas consideradas como pasivos financieros',0,NULL,NULL,1,NULL,NULL),(4106,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','197',4101,'Suscriptores de acciones consideradas como pasivos financieros',0,NULL,NULL,1,NULL,NULL),(4107,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','FINANCIACION','XXXXXX','199',4101,'Acciones o participaciones emitidas consideradas como pasivos financieros pendientes de inscripción',0,NULL,NULL,1,NULL,NULL),(4108,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','20',4002,'Inmovilizaciones intangibles',0,NULL,NULL,1,NULL,NULL),(4109,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','200',4108,'Investigación',0,NULL,NULL,1,NULL,NULL),(4110,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','201',4108,'Desarrollo',0,NULL,NULL,1,NULL,NULL),(4111,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','202',4108,'Concesiones administrativas',0,NULL,NULL,1,NULL,NULL),(4112,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','203',4108,'Propiedad industrial',0,NULL,NULL,1,NULL,NULL),(4113,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','205',4108,'Derechos de transpaso',0,NULL,NULL,1,NULL,NULL),(4114,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','206',4108,'Aplicaciones informáticas',0,NULL,NULL,1,NULL,NULL),(4115,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','209',4108,'Anticipos para inmovilizaciones intangibles',0,NULL,NULL,1,NULL,NULL),(4116,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','21',4002,'Inmovilizaciones materiales',0,NULL,NULL,1,NULL,NULL),(4117,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','210',4116,'Terrenos y bienes naturales',0,NULL,NULL,1,NULL,NULL),(4118,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','211',4116,'Construcciones',0,NULL,NULL,1,NULL,NULL),(4119,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','212',4116,'Instalaciones técnicas',0,NULL,NULL,1,NULL,NULL),(4120,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','213',4116,'Maquinaria',0,NULL,NULL,1,NULL,NULL),(4121,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','214',4116,'Utillaje',0,NULL,NULL,1,NULL,NULL),(4122,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','215',4116,'Otras instalaciones',0,NULL,NULL,1,NULL,NULL),(4123,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','216',4116,'Mobiliario',0,NULL,NULL,1,NULL,NULL),(4124,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','217',4116,'Equipos para procesos de información',0,NULL,NULL,1,NULL,NULL),(4125,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','218',4116,'Elementos de transporte',0,NULL,NULL,1,NULL,NULL),(4126,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','219',4116,'Otro inmovilizado material',0,NULL,NULL,1,NULL,NULL),(4127,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','22',4002,'Inversiones inmobiliarias',0,NULL,NULL,1,NULL,NULL),(4128,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','220',4127,'Inversiones en terreons y bienes naturales',0,NULL,NULL,1,NULL,NULL),(4129,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','221',4127,'Inversiones en construcciones',0,NULL,NULL,1,NULL,NULL),(4130,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','23',4002,'Inmovilizaciones materiales en curso',0,NULL,NULL,1,NULL,NULL),(4131,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','230',4130,'Adaptación de terrenos y bienes naturales',0,NULL,NULL,1,NULL,NULL),(4132,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','231',4130,'Construcciones en curso',0,NULL,NULL,1,NULL,NULL),(4133,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','232',4130,'Instalaciones técnicas en montaje',0,NULL,NULL,1,NULL,NULL),(4134,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','233',4130,'Maquinaria en montaje',0,NULL,NULL,1,NULL,NULL),(4135,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','237',4130,'Equipos para procesos de información en montaje',0,NULL,NULL,1,NULL,NULL),(4136,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','239',4130,'Anticipos para inmovilizaciones materiales',0,NULL,NULL,1,NULL,NULL),(4137,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','24',4002,'Inversiones financieras a largo plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4138,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','240',4137,'Participaciones a largo plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4139,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','2403',4138,'Participaciones a largo plazo en empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4140,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','2404',4138,'Participaciones a largo plazo en empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4141,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','2405',4138,'Participaciones a largo plazo en otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4142,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','241',4137,'Valores representativos de deuda a largo plazo de partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4143,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','2413',4142,'Valores representativos de deuda a largo plazo de empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4144,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','2414',4142,'Valores representativos de deuda a largo plazo de empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4145,1,NULL,'2020-02-09 17:35:18','PCG08-PYME','ACTIVO','XXXXXX','2415',4142,'Valores representativos de deuda a largo plazo de otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4146,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','242',4137,'Créditos a largo plazo a partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4147,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2423',4146,'Créditos a largo plazo a empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4148,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2424',4146,'Créditos a largo plazo a empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4149,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2425',4146,'Créditos a largo plazo a otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4150,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','249',4137,'Desembolsos pendientes sobre participaciones a largo plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4151,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2493',4150,'Desembolsos pendientes sobre participaciones a largo plazo en empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4152,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2494',4150,'Desembolsos pendientes sobre participaciones a largo plazo en empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4153,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2495',4150,'Desembolsos pendientes sobre participaciones a largo plazo en otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4154,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','25',4002,'Otras inversiones financieras a largo plazo',0,NULL,NULL,1,NULL,NULL),(4155,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','250',4154,'Inversiones financieras a largo plazo en instrumentos de patrimonio',0,NULL,NULL,1,NULL,NULL),(4156,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','251',4154,'Valores representativos de deuda a largo plazo',0,NULL,NULL,1,NULL,NULL),(4157,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','252',4154,'Créditos a largo plazo',0,NULL,NULL,1,NULL,NULL),(4158,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','253',4154,'Créditos a largo plazo por enajenación de inmovilizado',0,NULL,NULL,1,NULL,NULL),(4159,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','254',4154,'Créditos a largo plazo al personal',0,NULL,NULL,1,NULL,NULL),(4160,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','255',4154,'Activos por derivados financieros a largo plazo',0,NULL,NULL,1,NULL,NULL),(4161,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','258',4154,'Imposiciones a largo plazo',0,NULL,NULL,1,NULL,NULL),(4162,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','259',4154,'Desembolsos pendientes sobre participaciones en el patrimonio neto a largo plazo',0,NULL,NULL,1,NULL,NULL),(4163,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','26',4002,'Fianzas y depósitos constituidos a largo plazo',0,NULL,NULL,1,NULL,NULL),(4164,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','260',4163,'Fianzas constituidas a largo plazo',0,NULL,NULL,1,NULL,NULL),(4165,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','261',4163,'Depósitos constituidos a largo plazo',0,NULL,NULL,1,NULL,NULL),(4166,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','28',4002,'Amortización acumulada del inmovilizado',0,NULL,NULL,1,NULL,NULL),(4167,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','280',4166,'Amortización acumulado del inmovilizado intangible',0,NULL,NULL,1,NULL,NULL),(4168,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2800',4167,'Amortización acumulada de investigación',0,NULL,NULL,1,NULL,NULL),(4169,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2801',4167,'Amortización acumulada de desarrollo',0,NULL,NULL,1,NULL,NULL),(4170,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2802',4167,'Amortización acumulada de concesiones administrativas',0,NULL,NULL,1,NULL,NULL),(4171,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2803',4167,'Amortización acumulada de propiedad industrial',0,NULL,NULL,1,NULL,NULL),(4172,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2805',4167,'Amortización acumulada de derechos de transpaso',0,NULL,NULL,1,NULL,NULL),(4173,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2806',4167,'Amortización acumulada de aplicaciones informáticas',0,NULL,NULL,1,NULL,NULL),(4174,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','281',4166,'Amortización acumulado del inmovilizado material',0,NULL,NULL,1,NULL,NULL),(4175,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2811',4174,'Amortización acumulada de construcciones',0,NULL,NULL,1,NULL,NULL),(4176,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2812',4174,'Amortización acumulada de instalaciones técnicas',0,NULL,NULL,1,NULL,NULL),(4177,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2813',4174,'Amortización acumulada de maquinaria',0,NULL,NULL,1,NULL,NULL),(4178,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2814',4174,'Amortización acumulada de utillaje',0,NULL,NULL,1,NULL,NULL),(4179,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2815',4174,'Amortización acumulada de otras instalaciones',0,NULL,NULL,1,NULL,NULL),(4180,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2816',4174,'Amortización acumulada de mobiliario',0,NULL,NULL,1,NULL,NULL),(4181,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2817',4174,'Amortización acumulada de equipos para proceso de información',0,NULL,NULL,1,NULL,NULL),(4182,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2818',4174,'Amortización acumulada de elementos de transporte',0,NULL,NULL,1,NULL,NULL),(4183,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2819',4175,'Amortización acumulada de otro inmovilizado material',0,NULL,NULL,1,NULL,NULL),(4184,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','282',4166,'Amortización acumulada de las inversiones inmobiliarias',0,NULL,NULL,1,NULL,NULL),(4185,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','29',4002,'Deterioro de valor de activos no corrientes',0,NULL,NULL,1,NULL,NULL),(4186,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','290',4185,'Deterioro de valor del inmovilizado intangible',0,NULL,NULL,1,NULL,NULL),(4187,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2900',4186,'Deterioro de valor de investigación',0,NULL,NULL,1,NULL,NULL),(4188,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2901',4186,'Deterioro de valor de desarrollo',0,NULL,NULL,1,NULL,NULL),(4189,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2902',4186,'Deterioro de valor de concesiones administrativas',0,NULL,NULL,1,NULL,NULL),(4190,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2903',4186,'Deterioro de valor de propiedad industrial',0,NULL,NULL,1,NULL,NULL),(4191,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2905',4186,'Deterioro de valor de derechos de transpaso',0,NULL,NULL,1,NULL,NULL),(4192,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2906',4186,'Deterioro de valor de aplicaciones informáticas',0,NULL,NULL,1,NULL,NULL),(4193,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','291',4185,'Deterioro de valor del inmovilizado material',0,NULL,NULL,1,NULL,NULL),(4194,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2910',4193,'Deterioro de valor de terrenos y bienes naturales',0,NULL,NULL,1,NULL,NULL),(4195,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2911',4193,'Deterioro de valor de construcciones',0,NULL,NULL,1,NULL,NULL),(4196,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2912',4193,'Deterioro de valor de instalaciones técnicas',0,NULL,NULL,1,NULL,NULL),(4197,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2913',4193,'Deterioro de valor de maquinaria',0,NULL,NULL,1,NULL,NULL),(4198,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2914',4193,'Deterioro de valor de utillajes',0,NULL,NULL,1,NULL,NULL),(4199,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2915',4194,'Deterioro de valor de otras instalaciones',0,NULL,NULL,1,NULL,NULL),(4200,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2916',4194,'Deterioro de valor de mobiliario',0,NULL,NULL,1,NULL,NULL),(4201,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2917',4194,'Deterioro de valor de equipos para proceso de información',0,NULL,NULL,1,NULL,NULL),(4202,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2918',4194,'Deterioro de valor de elementos de transporte',0,NULL,NULL,1,NULL,NULL),(4203,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2919',4194,'Deterioro de valor de otro inmovilizado material',0,NULL,NULL,1,NULL,NULL),(4204,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','292',4185,'Deterioro de valor de las inversiones inmobiliarias',0,NULL,NULL,1,NULL,NULL),(4205,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2920',4204,'Deterioro de valor de terrenos y bienes naturales',0,NULL,NULL,1,NULL,NULL),(4206,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2921',4204,'Deterioro de valor de construcciones',0,NULL,NULL,1,NULL,NULL),(4207,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','293',4185,'Deterioro de valor de participaciones a largo plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4208,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2933',4207,'Deterioro de valor de participaciones a largo plazo en empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4209,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2934',4207,'Deterioro de valor de sobre participaciones a largo plazo en empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4210,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2935',4207,'Deterioro de valor de sobre participaciones a largo plazo en otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4211,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','294',4185,'Deterioro de valor de valores representativos de deuda a largo plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4212,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2943',4211,'Deterioro de valor de valores representativos de deuda a largo plazo en empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4213,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2944',4211,'Deterioro de valor de valores representativos de deuda a largo plazo en empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4214,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2945',4211,'Deterioro de valor de valores representativos de deuda a largo plazo en otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4215,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','295',4185,'Deterioro de valor de créditos a largo plazo a partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4216,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2953',4215,'Deterioro de valor de créditos a largo plazo a empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4217,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2954',4215,'Deterioro de valor de créditos a largo plazo a empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4218,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','2955',4215,'Deterioro de valor de créditos a largo plazo a otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4219,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','296',4185,'Deterioro de valor de participaciones en el patrimonio netoa largo plazo',0,NULL,NULL,1,NULL,NULL),(4220,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','297',4185,'Deterioro de valor de valores representativos de deuda a largo plazo',0,NULL,NULL,1,NULL,NULL),(4221,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACTIVO','XXXXXX','298',4185,'Deterioro de valor de créditos a largo plazo',0,NULL,NULL,1,NULL,NULL),(4222,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','30',4003,'Comerciales',0,NULL,NULL,1,NULL,NULL),(4223,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','300',4222,'Mercaderías A',0,NULL,NULL,1,NULL,NULL),(4224,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','301',4222,'Mercaderías B',0,NULL,NULL,1,NULL,NULL),(4225,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','31',4003,'Materias primas',0,NULL,NULL,1,NULL,NULL),(4226,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','310',4225,'Materias primas A',0,NULL,NULL,1,NULL,NULL),(4227,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','311',4225,'Materias primas B',0,NULL,NULL,1,NULL,NULL),(4228,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','32',4003,'Otros aprovisionamientos',0,NULL,NULL,1,NULL,NULL),(4229,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','320',4228,'Elementos y conjuntos incorporables',0,NULL,NULL,1,NULL,NULL),(4230,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','321',4228,'Combustibles',0,NULL,NULL,1,NULL,NULL),(4231,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','322',4228,'Repuestos',0,NULL,NULL,1,NULL,NULL),(4232,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','325',4228,'Materiales diversos',0,NULL,NULL,1,NULL,NULL),(4233,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','326',4228,'Embalajes',0,NULL,NULL,1,NULL,NULL),(4234,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','327',4228,'Envases',0,NULL,NULL,1,NULL,NULL),(4235,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','328',4229,'Material de oficina',0,NULL,NULL,1,NULL,NULL),(4236,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','33',4003,'Productos en curso',0,NULL,NULL,1,NULL,NULL),(4237,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','330',4236,'Productos en curos A',0,NULL,NULL,1,NULL,NULL),(4238,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','331',4236,'Productos en curso B',0,NULL,NULL,1,NULL,NULL),(4239,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','34',4003,'Productos semiterminados',0,NULL,NULL,1,NULL,NULL),(4240,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','340',4239,'Productos semiterminados A',0,NULL,NULL,1,NULL,NULL),(4241,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','341',4239,'Productos semiterminados B',0,NULL,NULL,1,NULL,NULL),(4242,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','35',4003,'Productos terminados',0,NULL,NULL,1,NULL,NULL),(4243,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','350',4242,'Productos terminados A',0,NULL,NULL,1,NULL,NULL),(4244,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','351',4242,'Productos terminados B',0,NULL,NULL,1,NULL,NULL),(4245,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','36',4003,'Subproductos, residuos y materiales recuperados',0,NULL,NULL,1,NULL,NULL),(4246,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','360',4245,'Subproductos A',0,NULL,NULL,1,NULL,NULL),(4247,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','361',4245,'Subproductos B',0,NULL,NULL,1,NULL,NULL),(4248,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','365',4245,'Residuos A',0,NULL,NULL,1,NULL,NULL),(4249,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','366',4245,'Residuos B',0,NULL,NULL,1,NULL,NULL),(4250,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','368',4245,'Materiales recuperados A',0,NULL,NULL,1,NULL,NULL),(4251,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','369',4245,'Materiales recuperados B',0,NULL,NULL,1,NULL,NULL),(4252,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','39',4003,'Deterioro de valor de las existencias',0,NULL,NULL,1,NULL,NULL),(4253,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','390',4252,'Deterioro de valor de las mercaderías',0,NULL,NULL,1,NULL,NULL),(4254,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','391',4252,'Deterioro de valor de las materias primas',0,NULL,NULL,1,NULL,NULL),(4255,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','392',4252,'Deterioro de valor de otros aprovisionamientos',0,NULL,NULL,1,NULL,NULL),(4256,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','393',4252,'Deterioro de valor de los productos en curso',0,NULL,NULL,1,NULL,NULL),(4257,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','394',4252,'Deterioro de valor de los productos semiterminados',0,NULL,NULL,1,NULL,NULL),(4258,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','395',4252,'Deterioro de valor de los productos terminados',0,NULL,NULL,1,NULL,NULL),(4259,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','EXISTENCIAS','XXXXXX','396',4252,'Deterioro de valor de los subproductos, residuos y materiales recuperados',0,NULL,NULL,1,NULL,NULL),(4260,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','PROVEEDORES','40',4004,'Proveedores',0,NULL,NULL,1,NULL,NULL),(4261,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','PROVEEDORES','400',4260,'Proveedores',0,NULL,NULL,1,NULL,NULL),(4262,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4000',4261,'Proveedores euros',0,NULL,NULL,1,NULL,NULL),(4263,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4004',4261,'Proveedores moneda extranjera',0,NULL,NULL,1,NULL,NULL),(4264,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4009',4261,'Proveedores facturas pendientes de recibir o formalizar',0,NULL,NULL,1,NULL,NULL),(4265,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','401',4260,'Proveedores efectos comerciales a pagar',0,NULL,NULL,1,NULL,NULL),(4266,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','403',4260,'Proveedores empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4267,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4030',4266,'Proveedores empresas del grupo euros',0,NULL,NULL,1,NULL,NULL),(4268,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4031',4266,'Efectos comerciales a pagar empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4269,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4034',4266,'Proveedores empresas del grupo moneda extranjera',0,NULL,NULL,1,NULL,NULL),(4270,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4036',4266,'Envases y embalajes a devolver a proveedores empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4271,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4039',4266,'Proveedores empresas del grupo facturas pendientes de recibir o de formalizar',0,NULL,NULL,1,NULL,NULL),(4272,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','404',4260,'Proveedores empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4273,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','405',4260,'Proveedores otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4274,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','406',4260,'Envases y embalajes a devolver a proveedores',0,NULL,NULL,1,NULL,NULL),(4275,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','407',4260,'Anticipos a proveedores',0,NULL,NULL,1,NULL,NULL),(4276,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','41',4004,'Acreedores varios',0,NULL,NULL,1,NULL,NULL),(4277,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','410',4276,'Acreedores por prestaciones de servicios',0,NULL,NULL,1,NULL,NULL),(4278,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4100',4277,'Acreedores por prestaciones de servicios euros',0,NULL,NULL,1,NULL,NULL),(4279,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4104',4277,'Acreedores por prestaciones de servicios moneda extranjera',0,NULL,NULL,1,NULL,NULL),(4280,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4109',4277,'Acreedores por prestaciones de servicios facturas pendientes de recibir o formalizar',0,NULL,NULL,1,NULL,NULL),(4281,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','411',4276,'Acreedores efectos comerciales a pagar',0,NULL,NULL,1,NULL,NULL),(4282,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','419',4276,'Acreedores por operaciones en común',0,NULL,NULL,1,NULL,NULL),(4283,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','CLIENTES','43',4004,'Clientes',0,NULL,NULL,1,NULL,NULL),(4284,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','CLIENTES','430',4283,'Clientes',0,NULL,NULL,1,NULL,NULL),(4285,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4300',4284,'Clientes euros',0,NULL,NULL,1,NULL,NULL),(4286,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4304',4284,'Clientes moneda extranjera',0,NULL,NULL,1,NULL,NULL),(4287,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4309',4284,'Clientes facturas pendientes de formalizar',0,NULL,NULL,1,NULL,NULL),(4288,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','431',4283,'Clientes efectos comerciales a cobrar',0,NULL,NULL,1,NULL,NULL),(4289,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4310',4288,'Efectos comerciales en cartera',0,NULL,NULL,1,NULL,NULL),(4290,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4311',4288,'Efectos comerciales descontados',0,NULL,NULL,1,NULL,NULL),(4291,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4312',4288,'Efectos comerciales en gestión de cobro',0,NULL,NULL,1,NULL,NULL),(4292,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4315',4288,'Efectos comerciales impagados',0,NULL,NULL,1,NULL,NULL),(4293,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','432',4283,'Clientes operaciones de factoring',0,NULL,NULL,1,NULL,NULL),(4294,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','433',4283,'Clientes empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4295,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4330',4294,'Clientes empresas del grupo euros',0,NULL,NULL,1,NULL,NULL),(4296,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4331',4294,'Efectos comerciales a cobrar empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4297,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4332',4294,'Clientes empresas del grupo operaciones de factoring',0,NULL,NULL,1,NULL,NULL),(4298,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4334',4294,'Clientes empresas del grupo moneda extranjera',0,NULL,NULL,1,NULL,NULL),(4299,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4336',4294,'Clientes empresas del grupo dudoso cobro',0,NULL,NULL,1,NULL,NULL),(4300,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4337',4294,'Envases y embalajes a devolver a clientes empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4301,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4339',4294,'Clientes empresas del grupo facturas pendientes de formalizar',0,NULL,NULL,1,NULL,NULL),(4302,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','434',4283,'Clientes empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4303,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','435',4283,'Clientes otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4304,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','436',4283,'Clientes de dudoso cobro',0,NULL,NULL,1,NULL,NULL),(4305,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','437',4283,'Envases y embalajes a devolver por clientes',0,NULL,NULL,1,NULL,NULL),(4306,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','438',4283,'Anticipos de clientes',0,NULL,NULL,1,NULL,NULL),(4307,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','44',4004,'Deudores varios',0,NULL,NULL,1,NULL,NULL),(4308,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','440',4307,'Deudores',0,NULL,NULL,1,NULL,NULL),(4309,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4400',4308,'Deudores euros',0,NULL,NULL,1,NULL,NULL),(4310,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4404',4308,'Deudores moneda extranjera',0,NULL,NULL,1,NULL,NULL),(4311,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4409',4308,'Deudores facturas pendientes de formalizar',0,NULL,NULL,1,NULL,NULL),(4312,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','441',4307,'Deudores efectos comerciales a cobrar',0,NULL,NULL,1,NULL,NULL),(4313,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4410',4312,'Deudores efectos comerciales en cartera',0,NULL,NULL,1,NULL,NULL),(4314,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4411',4312,'Deudores efectos comerciales descontados',0,NULL,NULL,1,NULL,NULL),(4315,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4412',4312,'Deudores efectos comerciales en gestión de cobro',0,NULL,NULL,1,NULL,NULL),(4316,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4415',4312,'Deudores efectos comerciales impagados',0,NULL,NULL,1,NULL,NULL),(4317,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','446',4307,'Deudores de dusoso cobro',0,NULL,NULL,1,NULL,NULL),(4318,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','449',4307,'Deudores por operaciones en común',0,NULL,NULL,1,NULL,NULL),(4319,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','46',4004,'Personal',0,NULL,NULL,1,NULL,NULL),(4320,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','460',4319,'Anticipos de renumeraciones',0,NULL,NULL,1,NULL,NULL),(4321,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','465',4319,'Renumeraciones pendientes de pago',0,NULL,NULL,1,NULL,NULL),(4322,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','47',4004,'Administraciones Públicas',0,NULL,NULL,1,NULL,NULL),(4323,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','470',4322,'Hacienda Pública deudora por diversos conceptos',0,NULL,NULL,1,NULL,NULL),(4324,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4700',4323,'Hacienda Pública deudora por IVA',0,NULL,NULL,1,NULL,NULL),(4325,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4708',4323,'Hacienda Pública deudora por subvenciones concedidas',0,NULL,NULL,1,NULL,NULL),(4326,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4709',4323,'Hacienda Pública deudora por devolución de impuestos',0,NULL,NULL,1,NULL,NULL),(4327,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','471',4322,'Organismos de la Seguridad Social deudores',0,NULL,NULL,1,NULL,NULL),(4328,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','472',4322,'Hacienda Pública IVA soportado',0,NULL,NULL,1,NULL,NULL),(4329,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','473',4322,'Hacienda Pública retenciones y pagos a cuenta',0,NULL,NULL,1,NULL,NULL),(4330,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','474',4322,'Activos por impuesto diferido',0,NULL,NULL,1,NULL,NULL),(4331,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4740',4330,'Activos por diferencias temporarias deducibles',0,NULL,NULL,1,NULL,NULL),(4332,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4742',4330,'Derechos por deducciones y bonificaciones pendientes de aplicar',0,NULL,NULL,1,NULL,NULL),(4333,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4745',4330,'Crédito por pérdidasa compensar del ejercicio',0,NULL,NULL,1,NULL,NULL),(4334,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','475',4322,'Hacienda Pública acreedora por conceptos fiscales',0,NULL,NULL,1,NULL,NULL),(4335,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4750',4334,'Hacienda Pública acreedora por IVA',0,NULL,NULL,1,NULL,NULL),(4336,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4751',4334,'Hacienda Pública acreedora por retenciones practicadas',0,NULL,NULL,1,NULL,NULL),(4337,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4752',4334,'Hacienda Pública acreedora por impuesto sobre sociedades',0,NULL,NULL,1,NULL,NULL),(4338,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4758',4334,'Hacienda Pública acreedora por subvenciones a integrar',0,NULL,NULL,1,NULL,NULL),(4339,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','476',4322,'Organismos de la Seguridad Social acreedores',0,NULL,NULL,1,NULL,NULL),(4340,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','477',4322,'Hacienda Pública IVA repercutido',0,NULL,NULL,1,NULL,NULL),(4341,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','479',4322,'Pasivos por diferencias temporarias imponibles',0,NULL,NULL,1,NULL,NULL),(4342,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','48',4004,'Ajustes por periodificación',0,NULL,NULL,1,NULL,NULL),(4343,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','480',4342,'Gastos anticipados',0,NULL,NULL,1,NULL,NULL),(4344,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','485',4342,'Ingresos anticipados',0,NULL,NULL,1,NULL,NULL),(4345,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','49',4004,'Deterioro de valor de créditos comerciales y provisiones a corto plazo',0,NULL,NULL,1,NULL,NULL),(4346,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','490',4345,'Deterioro de valor de créditos por operaciones comerciales',0,NULL,NULL,1,NULL,NULL),(4347,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','493',4345,'Deterioro de valor de créditos por operaciones comerciales con partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4348,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4933',4347,'Deterioro de valor de créditos por operaciones comerciales con empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4349,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4934',4347,'Deterioro de valor de créditos por operaciones comerciales con empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4350,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4935',4347,'Deterioro de valor de créditos por operaciones comerciales con otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4351,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','499',4345,'Provisiones por operaciones comerciales',0,NULL,NULL,1,NULL,NULL),(4352,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4994',4351,'Provisión para contratos anerosos',0,NULL,NULL,1,NULL,NULL),(4353,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','ACREEDORES_DEUDORES','XXXXXX','4999',4351,'Provisión para otras operaciones comerciales',0,NULL,NULL,1,NULL,NULL),(4354,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','50',4005,'Emprésitos deudas con características especiales y otras emisiones análogas a corto plazo',0,NULL,NULL,1,NULL,NULL),(4355,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','500',4354,'Obligaciones y bonos a corto plazo',0,NULL,NULL,1,NULL,NULL),(4356,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','502',4354,'Acciones o participaciones a corto plazo consideradas como pasivos financieros',0,NULL,NULL,1,NULL,NULL),(4357,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','505',4354,'Deudas representadas en otros valores negociables a corto plazo',0,NULL,NULL,1,NULL,NULL),(4358,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','506',4354,'Intereses a corto plazo de emprésitos y otras emisiones analógicas',0,NULL,NULL,1,NULL,NULL),(4359,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','507',4354,'Dividendos de acciones o participaciones consideradas como pasivos financieros',0,NULL,NULL,1,NULL,NULL),(4360,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','509',4354,'Valores negociables amortizados',0,NULL,NULL,1,NULL,NULL),(4361,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5090',4360,'Obligaciones y bonos amortizados',0,NULL,NULL,1,NULL,NULL),(4362,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5095',4360,'Otros valores negociables amortizados',0,NULL,NULL,1,NULL,NULL),(4363,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','51',4005,'Deudas a corto plazo con partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4364,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','510',4363,'Deudas a corto plazo con entidades de crédito vinculadas',0,NULL,NULL,1,NULL,NULL),(4365,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5103',4364,'Deudas a corto plazo con entidades de crédito empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4366,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5104',4364,'Deudas a corto plazo con entidades de crédito empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4367,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5105',4364,'Deudas a corto plazo con otras entidades de crédito vinculadas',0,NULL,NULL,1,NULL,NULL),(4368,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','511',4363,'Proveedores de inmovilizado a corto plazo partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4369,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5113',4368,'Proveedores de inmovilizado a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4370,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5114',4368,'Proveedores de inmovilizado a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4371,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5115',4368,'Proveedores de inmovilizado a corto plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4372,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','512',4363,'Acreedores por arrendamiento financiero a corto plazo partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4373,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5123',4372,'Acreedores por arrendamiento financiero a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4374,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5124',4372,'Acreedores por arrendamiento financiero a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4375,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5125',4372,'Acreedores por arrendamiento financiero a corto plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4376,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','513',4363,'Otras deudas a corto plazo con partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4377,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5133',4376,'Otras deudas a corto plazo con empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4378,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5134',4376,'Otras deudas a corto plazo con empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4379,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5135',4376,'Otras deudas a corto plazo con partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4380,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','514',4363,'Intereses a corto plazo con partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4381,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5143',4380,'Intereses a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4382,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5144',4380,'Intereses a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4383,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5145',4380,'Intereses deudas a corto plazo partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4384,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','52',4005,'Deudas a corto plazo por préstamos recibidos y otros conceptos',0,NULL,NULL,1,NULL,NULL),(4385,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','520',4384,'Deudas a corto plazo con entidades de crédito',0,NULL,NULL,1,NULL,NULL),(4386,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5200',4385,'Préstamos a corto plazo de entidades de crédito',0,NULL,NULL,1,NULL,NULL),(4387,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5201',4385,'Deudas a corto plazo por crédito dispuesto',0,NULL,NULL,1,NULL,NULL),(4388,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5208',4385,'Deudas por efectos descontados',0,NULL,NULL,1,NULL,NULL),(4389,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5209',4385,'Deudas por operaciones de factoring',0,NULL,NULL,1,NULL,NULL),(4390,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','521',4384,'Deudas a corto plazo',0,NULL,NULL,1,NULL,NULL),(4391,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','522',4384,'Deudas a corto plazo transformables en subvenciones donaciones y legados',0,NULL,NULL,1,NULL,NULL),(4392,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','523',4384,'Proveedores de inmovilizado a corto plazo',0,NULL,NULL,1,NULL,NULL),(4393,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','526',4384,'Dividendo activo a pagar',0,NULL,NULL,1,NULL,NULL),(4394,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','527',4384,'Intereses a corto plazo de deudas con entidades de crédito',0,NULL,NULL,1,NULL,NULL),(4395,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','528',4384,'Intereses a corto plazo de deudas',0,NULL,NULL,1,NULL,NULL),(4396,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','529',4384,'Provisiones a corto plazo',0,NULL,NULL,1,NULL,NULL),(4397,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5291',4396,'Provisión a corto plazo para impuestos',0,NULL,NULL,1,NULL,NULL),(4398,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5292',4396,'Provisión a corto plazo para otras responsabilidades',0,NULL,NULL,1,NULL,NULL),(4399,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5293',4396,'Provisión a corto plazo por desmantelamiento retiro o rehabilitación del inmovilizado',0,NULL,NULL,1,NULL,NULL),(4400,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5295',4396,'Provisión a corto plazo para actuaciones medioambientales',0,NULL,NULL,1,NULL,NULL),(4401,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','53',4005,'Inversiones financieras a corto plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4402,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','530',4401,'Participaciones a corto plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4403,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5303',4402,'Participaciones a corto plazo en empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4404,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5304',4402,'Participaciones a corto plazo en empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4405,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5305',4402,'Participaciones a corto plazo en otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4406,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','531',4401,'Valores representativos de deuda a corto plazo de partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4407,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5313',4406,'Valores representativos de deuda a corto plazo de empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4408,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5314',4406,'Valores representativos de deuda a corto plazo de empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4409,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5315',4406,'Valores representativos de deuda a corto plazo de otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4410,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','532',4401,'Créditos a corto plazo a partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4411,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5323',4410,'Créditos a corto plazo a empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4412,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5324',4410,'Créditos a corto plazo a empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4413,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5325',4410,'Créditos a corto plazo a otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4414,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','533',4401,'Intereses a corto plazo de valores representativos de deuda de partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4415,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5333',4414,'Intereses a corto plazo de valores representativos de deuda en empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4416,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5334',4414,'Intereses a corto plazo de valores representativos de deuda en empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4417,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5335',4414,'Intereses a corto plazo de valores representativos de deuda en otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4418,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','534',4401,'Intereses a corto plazo de créditos a partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4419,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5343',4418,'Intereses a corto plazo de créditos a empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4420,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5344',4418,'Intereses a corto plazo de créditos a empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4421,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5345',4418,'Intereses a corto plazo de créditos a otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4422,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','535',4401,'Dividendo a cobrar de inversiones financieras en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4423,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5353',4422,'Dividendo a cobrar de empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4424,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5354',4422,'Dividendo a cobrar de empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4425,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5355',4422,'Dividendo a cobrar de otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4426,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','539',4401,'Desembolsos pendientes sobre participaciones a corto plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4427,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5393',4426,'Desembolsos pendientes sobre participaciones a corto plazo en empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4428,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5394',4426,'Desembolsos pendientes sobre participaciones a corto plazo en empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4429,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5395',4426,'Desembolsos pendientes sobre participaciones a corto plazo en otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4430,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','54',4005,'Otras inversiones financieras a corto plazo',0,NULL,NULL,1,NULL,NULL),(4431,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','540',4430,'Inversiones financieras a corto plazo en instrumentos de patrimonio',0,NULL,NULL,1,NULL,NULL),(4432,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','541',4430,'Valores representativos de deuda a corto plazo',0,NULL,NULL,1,NULL,NULL),(4433,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','542',4430,'Créditos a corto plazo',0,NULL,NULL,1,NULL,NULL),(4434,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','543',4430,'Créditos a corto plazo por enejenación de inmovilizado',0,NULL,NULL,1,NULL,NULL),(4435,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','544',4430,'Créditos a corto plazo al personal',0,NULL,NULL,1,NULL,NULL),(4436,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','545',4430,'Dividendo a cobrar',0,NULL,NULL,1,NULL,NULL),(4437,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','546',4430,'Intereses a corto plazo de valores reprsentativos de deuda',0,NULL,NULL,1,NULL,NULL),(4438,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','547',4430,'Intereses a corto plazo de créditos',0,NULL,NULL,1,NULL,NULL),(4439,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','548',4430,'Imposiciones a corto plazo',0,NULL,NULL,1,NULL,NULL),(4440,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','549',4430,'Desembolsos pendientes sobre participaciones en el patrimonio neto a corto plazo',0,NULL,NULL,1,NULL,NULL),(4441,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','55',4005,'Otras cuentas no bancarias',0,NULL,NULL,1,NULL,NULL),(4442,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','550',4441,'Titular de la explotación',0,NULL,NULL,1,NULL,NULL),(4443,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','551',4441,'Cuenta corriente con socios y administradores',0,NULL,NULL,1,NULL,NULL),(4444,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','552',4441,'Cuenta corriente otras personas y entidades vinculadas',0,NULL,NULL,1,NULL,NULL),(4445,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5523',4444,'Cuenta corriente con empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4446,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5524',4444,'Cuenta corriente con empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4447,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5525',4444,'Cuenta corriente con otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4448,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','554',4441,'Cuenta corriente con uniones temporales de empresas y comunidades de bienes',0,NULL,NULL,1,NULL,NULL),(4449,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','555',4441,'Partidas pendientes de aplicación',0,NULL,NULL,1,NULL,NULL),(4450,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','556',4441,'Desembolsos exigidos sobre participaciones en el patrimonio neto',0,NULL,NULL,1,NULL,NULL),(4451,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5563',4450,'Desembolsos exigidos sobre participaciones empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4452,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5564',4450,'Desembolsos exigidos sobre participaciones empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4453,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5565',4450,'Desembolsos exigidos sobre participaciones otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4454,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5566',4450,'Desembolsos exigidos sobre participaciones otras empresas',0,NULL,NULL,1,NULL,NULL),(4455,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','557',4441,'Dividendo activo a cuenta',0,NULL,NULL,1,NULL,NULL),(4456,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','558',4441,'Socios por desembolsos exigidos',0,NULL,NULL,1,NULL,NULL),(4457,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5580',4456,'Socios por desembolsos exigidos sobre acciones o participaciones ordinarias',0,NULL,NULL,1,NULL,NULL),(4458,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5585',4456,'Socios por desembolsos exigidos sobre acciones o participaciones consideradas como pasivos financieros',0,NULL,NULL,1,NULL,NULL),(4459,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','559',4441,'Derivados financieros a corto plazo',0,NULL,NULL,1,NULL,NULL),(4460,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5590',4459,'Activos por derivados financieros a corto plazo',0,NULL,NULL,1,NULL,NULL),(4461,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5595',4459,'Pasivos por derivados financieros a corto plazo',0,NULL,NULL,1,NULL,NULL),(4462,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','56',4005,'Finanzas y depósitos recibidos y constituidos a corto plazo y ajustes por periodificación',0,NULL,NULL,1,NULL,NULL),(4463,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','560',4462,'Finanzas recibidas a corto plazo',0,NULL,NULL,1,NULL,NULL),(4464,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','561',4462,'Depósitos recibidos a corto plazo',0,NULL,NULL,1,NULL,NULL),(4465,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','565',4462,'Finanzas constituidas a corto plazo',0,NULL,NULL,1,NULL,NULL),(4466,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','566',4462,'Depósitos constituidos a corto plazo',0,NULL,NULL,1,NULL,NULL),(4467,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','567',4462,'Intereses pagados por anticipado',0,NULL,NULL,1,NULL,NULL),(4468,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','568',4462,'Intereses cobrados a corto plazo',0,NULL,NULL,1,NULL,NULL),(4469,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','57',4005,'Tesorería',0,NULL,NULL,1,NULL,NULL),(4470,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','CAJA','570',4469,'Caja euros',0,NULL,NULL,1,NULL,NULL),(4471,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','571',4469,'Caja moneda extranjera',0,NULL,NULL,1,NULL,NULL),(4472,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','BANCOS','572',4469,'Bancos e instituciones de crédito cc vista euros',0,NULL,NULL,1,NULL,NULL),(4473,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','573',4469,'Bancos e instituciones de crédito cc vista moneda extranjera',0,NULL,NULL,1,NULL,NULL),(4474,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','574',4469,'Bancos e instituciones de crédito cuentas de ahorro euros',0,NULL,NULL,1,NULL,NULL),(4475,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','575',4469,'Bancos e instituciones de crédito cuentas de ahorro moneda extranjera',0,NULL,NULL,1,NULL,NULL),(4476,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','576',4469,'Inversiones a corto plazo de gran liquidez',0,NULL,NULL,1,NULL,NULL),(4477,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','59',4005,'Deterioro del valor de las inversiones financieras a corto plazo',0,NULL,NULL,1,NULL,NULL),(4478,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','593',4477,'Deterioro del valor de participaciones a corto plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4479,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5933',4478,'Deterioro del valor de participaciones a corto plazo en empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4480,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5934',4478,'Deterioro del valor de participaciones a corto plazo en empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4481,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5935',4478,'Deterioro del valor de participaciones a corto plazo en otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4482,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','594',4477,'Deterioro del valor de valores representativos de deuda a corto plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4483,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5943',4482,'Deterioro del valor de valores representativos de deuda a corto plazo en empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4484,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5944',4482,'Deterioro del valor de valores representativos de deuda a corto plazo en empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4485,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5945',4482,'Deterioro del valor de valores representativos de deuda a corto plazo en otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4486,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','595',4477,'Deterioro del valor de créditos a corto plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4487,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5953',4486,'Deterioro del valor de créditos a corto plazo en empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4488,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5954',4486,'Deterioro del valor de créditos a corto plazo en empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4489,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','5955',4486,'Deterioro del valor de créditos a corto plazo en otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4490,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','596',4477,'Deterioro del valor de participaciones a corto plazo',0,NULL,NULL,1,NULL,NULL),(4491,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','597',4477,'Deterioro del valor de valores representativos de deuda a corto plazo',0,NULL,NULL,1,NULL,NULL),(4492,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','CUENTAS_FINANCIERAS','XXXXXX','598',4477,'Deterioro de valor de créditos a corto plazo',0,NULL,NULL,1,NULL,NULL),(4493,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','60',4006,'Compras',0,NULL,NULL,1,NULL,NULL),(4494,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','COMPRAS','600',4493,'Compras de mercaderías',0,NULL,NULL,1,NULL,NULL),(4495,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','COMPRAS','601',4493,'Compras de materias primas',0,NULL,NULL,1,NULL,NULL),(4496,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','602',4493,'Compras de otros aprovisionamientos',0,NULL,NULL,1,NULL,NULL),(4497,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','606',4493,'Descuentos sobre compras por pronto pago',0,NULL,NULL,1,NULL,NULL),(4498,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6060',4497,'Descuentos sobre compras por pronto pago de mercaderías',0,NULL,NULL,1,NULL,NULL),(4499,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6061',4497,'Descuentos sobre compras por pronto pago de materias primas',0,NULL,NULL,1,NULL,NULL),(4500,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6062',4497,'Descuentos sobre compras por pronto pago de otros aprovisionamientos',0,NULL,NULL,1,NULL,NULL),(4501,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','COMPRAS','607',4493,'Trabajos realizados por otras empresas',0,NULL,NULL,1,NULL,NULL),(4502,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','608',4493,'Devoluciones de compras y operaciones similares',0,NULL,NULL,1,NULL,NULL),(4503,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6080',4502,'Devoluciones de compras de mercaderías',0,NULL,NULL,1,NULL,NULL),(4504,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6081',4502,'Devoluciones de compras de materias primas',0,NULL,NULL,1,NULL,NULL),(4505,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6082',4502,'Devoluciones de compras de otros aprovisionamientos',0,NULL,NULL,1,NULL,NULL),(4506,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','609',4493,'Rappels por compras',0,NULL,NULL,1,NULL,NULL),(4507,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6090',4506,'Rappels por compras de mercaderías',0,NULL,NULL,1,NULL,NULL),(4508,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6091',4506,'Rappels por compras de materias primas',0,NULL,NULL,1,NULL,NULL),(4509,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6092',4506,'Rappels por compras de otros aprovisionamientos',0,NULL,NULL,1,NULL,NULL),(4510,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','61',4006,'Variación de existencias',0,NULL,NULL,1,NULL,NULL),(4511,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','610',4510,'Variación de existencias de mercaderías',0,NULL,NULL,1,NULL,NULL),(4512,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','611',4510,'Variación de existencias de materias primas',0,NULL,NULL,1,NULL,NULL),(4513,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','612',4510,'Variación de existencias de otros aprovisionamientos',0,NULL,NULL,1,NULL,NULL),(4514,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','62',4006,'Servicios exteriores',0,NULL,NULL,1,NULL,NULL),(4515,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','620',4514,'Gastos en investigación y desarrollo del ejercicio',0,NULL,NULL,1,NULL,NULL),(4516,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','621',4514,'Arrendamientos y cánones',0,NULL,NULL,1,NULL,NULL),(4517,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','622',4514,'Reparaciones y conservación',0,NULL,NULL,1,NULL,NULL),(4518,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','623',4514,'Servicios profesionales independientes',0,NULL,NULL,1,NULL,NULL),(4519,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','624',4514,'Transportes',0,NULL,NULL,1,NULL,NULL),(4520,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','625',4514,'Primas de seguros',0,NULL,NULL,1,NULL,NULL),(4521,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','626',4514,'Servicios bancarios y similares',0,NULL,NULL,1,NULL,NULL),(4522,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','627',4514,'Publicidad, propaganda y relaciones públicas',0,NULL,NULL,1,NULL,NULL),(4523,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','628',4514,'Suministros',0,NULL,NULL,1,NULL,NULL),(4524,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','629',4514,'Otros servicios',0,NULL,NULL,1,NULL,NULL),(4525,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','63',4006,'Tributos',0,NULL,NULL,1,NULL,NULL),(4526,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','630',4525,'Impuesto sobre benecifios',0,NULL,NULL,1,NULL,NULL),(4527,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6300',4526,'Impuesto corriente',0,NULL,NULL,1,NULL,NULL),(4528,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6301',4526,'Impuesto diferido',0,NULL,NULL,1,NULL,NULL),(4529,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','631',4525,'Otros tributos',0,NULL,NULL,1,NULL,NULL),(4530,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','633',4525,'Ajustes negativos en la imposición sobre beneficios',0,NULL,NULL,1,NULL,NULL),(4531,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','634',4525,'Ajustes negativos en la imposición indirecta',0,NULL,NULL,1,NULL,NULL),(4532,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6341',4531,'Ajustes negativos en IVA de activo corriente',0,NULL,NULL,1,NULL,NULL),(4533,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6342',4531,'Ajustes negativos en IVA de inversiones',0,NULL,NULL,1,NULL,NULL),(4534,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','636',4525,'Devolución de impuestos',0,NULL,NULL,1,NULL,NULL),(4535,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','638',4525,'Ajustes positivos en la imposición sobre beneficios',0,NULL,NULL,1,NULL,NULL),(4536,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','639',4525,'Ajustes positivos en la imposición directa',0,NULL,NULL,1,NULL,NULL),(4537,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6391',4536,'Ajustes positivos en IVA de activo corriente',0,NULL,NULL,1,NULL,NULL),(4538,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6392',4536,'Ajustes positivos en IVA de inversiones',0,NULL,NULL,1,NULL,NULL),(4539,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','64',4006,'Gastos de personal',0,NULL,NULL,1,NULL,NULL),(4540,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','640',4539,'Sueldos y salarios',0,NULL,NULL,1,NULL,NULL),(4541,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','641',4539,'Indemnizaciones',0,NULL,NULL,1,NULL,NULL),(4542,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','642',4539,'Seguridad social a cargo de la empresa',0,NULL,NULL,1,NULL,NULL),(4543,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','649',4539,'Otros gastos sociales',0,NULL,NULL,1,NULL,NULL),(4544,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','65',4006,'Otros gastos de gestión',0,NULL,NULL,1,NULL,NULL),(4545,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','650',4544,'Pérdidas de créditos comerciales incobrables',0,NULL,NULL,1,NULL,NULL),(4546,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','651',4544,'Resultados de operaciones en común',0,NULL,NULL,1,NULL,NULL),(4547,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6510',4546,'Beneficio transferido gestor',0,NULL,NULL,1,NULL,NULL),(4548,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6511',4546,'Pérdida soportada participe o asociado no gestor',0,NULL,NULL,1,NULL,NULL),(4549,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','659',4544,'Otras pérdidas en gestión corriente',0,NULL,NULL,1,NULL,NULL),(4550,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','66',4006,'Gastos financieros',0,NULL,NULL,1,NULL,NULL),(4551,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','660',4550,'Gastos financieros por actualización de provisiones',0,NULL,NULL,1,NULL,NULL),(4552,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','661',4550,'Intereses de obligaciones y bonos',0,NULL,NULL,1,NULL,NULL),(4553,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6610',4452,'Intereses de obligaciones y bonos a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4554,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6611',4452,'Intereses de obligaciones y bonos a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4555,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6612',4452,'Intereses de obligaciones y bonos a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4556,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6613',4452,'Intereses de obligaciones y bonos a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4557,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6615',4452,'Intereses de obligaciones y bonos a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4558,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6616',4452,'Intereses de obligaciones y bonos a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4559,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6617',4452,'Intereses de obligaciones y bonos a corto plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4560,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6618',4452,'Intereses de obligaciones y bonos a corto plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4561,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','662',4550,'Intereses de deudas',0,NULL,NULL,1,NULL,NULL),(4562,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6620',4561,'Intereses de deudas empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4563,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6621',4561,'Intereses de deudas empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4564,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6622',4561,'Intereses de deudas otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4565,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6623',4561,'Intereses de deudas con entidades de crédito',0,NULL,NULL,1,NULL,NULL),(4566,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6624',4561,'Intereses de deudas otras empresas',0,NULL,NULL,1,NULL,NULL),(4567,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','663',4550,'Pérdidas por valorización de activos y pasivos financieros por su valor razonable',0,NULL,NULL,1,NULL,NULL),(4568,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','664',4550,'Gastos por dividendos de acciones o participaciones consideradas como pasivos financieros',0,NULL,NULL,1,NULL,NULL),(4569,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6640',4568,'Dividendos de pasivos empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4570,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6641',4568,'Dividendos de pasivos empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4571,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6642',4568,'Dividendos de pasivos otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4572,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6643',4568,'Dividendos de pasivos otras empresas',0,NULL,NULL,1,NULL,NULL),(4573,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','665',4550,'Intereses por descuento de efectos y operaciones de factoring',0,NULL,NULL,1,NULL,NULL),(4574,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6650',4573,'Intereses por descuento de efectos en entidades de crédito del grupo',0,NULL,NULL,1,NULL,NULL),(4575,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6651',4573,'Intereses por descuento de efectos en entidades de crédito asociadas',0,NULL,NULL,1,NULL,NULL),(4576,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6652',4573,'Intereses por descuento de efectos en entidades de crédito vinculadas',0,NULL,NULL,1,NULL,NULL),(4577,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6653',4573,'Intereses por descuento de efectos en otras entidades de crédito',0,NULL,NULL,1,NULL,NULL),(4578,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6654',4573,'Intereses por operaciones de factoring con entidades de crédito del grupo',0,NULL,NULL,1,NULL,NULL),(4579,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6655',4573,'Intereses por operaciones de factoring con entidades de crédito asociadas',0,NULL,NULL,1,NULL,NULL),(4580,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6656',4573,'Intereses por operaciones de factoring con otras entidades de crédito vinculadas',0,NULL,NULL,1,NULL,NULL),(4581,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6657',4573,'Intereses por operaciones de factoring con otras entidades de crédito',0,NULL,NULL,1,NULL,NULL),(4582,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','666',4550,'Pérdidas en participaciones y valores representativos de deuda',0,NULL,NULL,1,NULL,NULL),(4583,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6660',4582,'Pérdidas en valores representativos de deuda a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4584,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6661',4582,'Pérdidas en valores representativos de deuda a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4585,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6662',4582,'Pérdidas en valores representativos de deuda a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4586,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6663',4582,'Pérdidas en participaciones y valores representativos de deuda a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4587,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6665',4582,'Pérdidas en participaciones y valores representativos de deuda a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4588,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6666',4582,'Pérdidas en participaciones y valores representativos de deuda a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4589,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6667',4582,'Pérdidas en valores representativos de deuda a corto plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4590,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6668',4582,'Pérdidas en valores representativos de deuda a corto plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4591,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','667',4550,'Pérdidas de créditos no comerciales',0,NULL,NULL,1,NULL,NULL),(4592,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6670',4591,'Pérdidas de créditos a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4593,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6671',4591,'Pérdidas de créditos a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4594,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6672',4591,'Pérdidas de créditos a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4595,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6673',4591,'Pérdidas de créditos a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4596,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6675',4591,'Pérdidas de créditos a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4597,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6676',4591,'Pérdidas de créditos a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4598,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6677',4591,'Pérdidas de créditos a corto plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4599,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6678',4591,'Pérdidas de créditos a corto plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4600,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','668',4550,'Diferencias negativas de cambio',0,NULL,NULL,1,NULL,NULL),(4601,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','669',4550,'Otros gastos financieros',0,NULL,NULL,1,NULL,NULL),(4602,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','67',4006,'Pérdidas procedentes de activos no corrientes y gastos excepcionales',0,NULL,NULL,1,NULL,NULL),(4603,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','670',4602,'Pérdidas procedentes del inmovilizado intangible',0,NULL,NULL,1,NULL,NULL),(4604,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','671',4602,'Pérdidas procedentes del inmovilizado material',0,NULL,NULL,1,NULL,NULL),(4605,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','672',4602,'Pérdidas procedentes de las inversiones inmobiliarias',0,NULL,NULL,1,NULL,NULL),(4607,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','673',4602,'Pérdidas procedentes de participaciones a largo plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4608,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6733',4607,'Pérdidas procedentes de participaciones a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4609,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6734',4607,'Pérdidas procedentes de participaciones a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4610,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6735',4607,'Pérdidas procedentes de participaciones a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4611,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','675',4602,'Pérdidas por operaciones con obligaciones propias',0,NULL,NULL,1,NULL,NULL),(4612,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','678',4602,'Gastos excepcionales',0,NULL,NULL,1,NULL,NULL),(4613,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','68',4006,'Dotaciones para amortizaciones',0,NULL,NULL,1,NULL,NULL),(4614,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','680',4613,'Amortización del inmovilizado intangible',0,NULL,NULL,1,NULL,NULL),(4615,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','681',4613,'Amortización del inmovilizado material',0,NULL,NULL,1,NULL,NULL),(4616,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','682',4613,'Amortización de las inversiones inmobiliarias',0,NULL,NULL,1,NULL,NULL),(4617,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','69',4006,'Pérdidas por deterioro y otras dotaciones',0,NULL,NULL,1,NULL,NULL),(4618,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','690',4617,'Pérdidas por deterioro del inmovilizado intangible',0,NULL,NULL,1,NULL,NULL),(4619,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','691',4617,'Pérdidas por deterioro del inmovilizado material',0,NULL,NULL,1,NULL,NULL),(4620,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','692',4617,'Pérdidas por deterioro de las inversiones inmobiliarias',0,NULL,NULL,1,NULL,NULL),(4621,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','693',4617,'Pérdidas por deterioro de existencias',0,NULL,NULL,1,NULL,NULL),(4622,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6930',4621,'Pérdidas por deterioro de productos terminados y en curso de fabricación',0,NULL,NULL,1,NULL,NULL),(4623,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6931',4621,'Pérdidas por deterioro de mercaderías',0,NULL,NULL,1,NULL,NULL),(4624,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6932',4621,'Pérdidas por deterioro de materias primas',0,NULL,NULL,1,NULL,NULL),(4625,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6933',4621,'Pérdidas por deterioro de otros aprovisionamientos',0,NULL,NULL,1,NULL,NULL),(4626,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','694',4617,'Pérdidas por deterioro de créditos por operaciones comerciales',0,NULL,NULL,1,NULL,NULL),(4627,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','695',4617,'Dotación a la provisión por operaciones comerciales',0,NULL,NULL,1,NULL,NULL),(4628,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6954',4627,'Dotación a la provisión por contratos onerosos',0,NULL,NULL,1,NULL,NULL),(4629,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6959',4628,'Dotación a la provisión para otras operaciones comerciales',0,NULL,NULL,1,NULL,NULL),(4630,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','696',4617,'Pérdidas por deterioro de participaciones y valores representativos de deuda a largo plazo',0,NULL,NULL,1,NULL,NULL),(4631,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6960',4630,'Pérdidas por deterioro de participaciones en instrumentos de patrimonio neto a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4632,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6961',4630,'Pérdidas por deterioro de participaciones en instrumentos de patrimonio neto a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4633,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6962',4630,'Pérdidas por deterioro de participaciones en instrumentos de patrimonio neto a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4634,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6963',4630,'Pérdidas por deterioro de participaciones en instrumentos de patrimonio neto a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4635,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6965',4630,'Pérdidas por deterioro en valores representativos de deuda a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4636,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6966',4630,'Pérdidas por deterioro en valores representativos de deuda a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4637,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6967',4630,'Pérdidas por deterioro en valores representativos de deuda a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4638,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6968',4630,'Pérdidas por deterioro en valores representativos de deuda a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4639,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','697',4617,'Pérdidas por deterioro de créditos a largo plazo',0,NULL,NULL,1,NULL,NULL),(4640,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6970',4639,'Pérdidas por deterioro de créditos a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4641,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6971',4639,'Pérdidas por deterioro de créditos a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4642,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6972',4639,'Pérdidas por deterioro de créditos a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4643,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6973',4639,'Pérdidas por deterioro de créditos a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4644,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','698',4617,'Pérdidas por deterioro de participaciones y valores representativos de deuda a corto plazo',0,NULL,NULL,1,NULL,NULL),(4645,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6980',4644,'Pérdidas por deterioro de participaciones en instrumentos de patrimonio neto a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4646,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6981',4644,'Pérdidas por deterioro de participaciones en instrumentos de patrimonio neto a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4647,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6985',4644,'Pérdidas por deterioro en valores representativos de deuda a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4648,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6986',4644,'Pérdidas por deterioro en valores representativos de deuda a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4649,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6988',4644,'Pérdidas por deterioro en valores representativos de deuda a corto plazo de otras empresas',0,NULL,NULL,1,NULL,NULL),(4650,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','699',4617,'Pérdidas por deterioro de crédito a corto plazo',0,NULL,NULL,1,NULL,NULL),(4651,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6990',4650,'Pérdidas por deterioro de crédito a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4652,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6991',4650,'Pérdidas por deterioro de crédito a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4653,1,NULL,'2020-02-09 17:35:19','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6992',4650,'Pérdidas por deterioro de crédito a corto plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4654,1,NULL,'2020-02-09 17:35:20','PCG08-PYME','COMPRAS_Y_GASTOS','XXXXXX','6993',4650,'Pérdidas por deterioro de crédito a corto plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4655,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','70',4007,'Ventas',0,NULL,NULL,1,NULL,NULL),(4656,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','VENTAS','700',4655,'Ventas de mercaderías',0,NULL,NULL,1,NULL,NULL),(4657,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','VENTAS','701',4655,'Ventas de productos terminados',0,NULL,NULL,1,NULL,NULL),(4658,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','702',4655,'Ventas de productos semiterminados',0,NULL,NULL,1,NULL,NULL),(4659,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','703',4655,'Ventas de subproductos y residuos',0,NULL,NULL,1,NULL,NULL),(4660,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','704',4655,'Ventas de envases y embalajes',0,NULL,NULL,1,NULL,NULL),(4661,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','VENTAS','705',4655,'Prestaciones de servicios',0,NULL,NULL,1,NULL,NULL),(4662,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','706',4655,'Descuentos sobre ventas por pronto pago',0,NULL,NULL,1,NULL,NULL),(4663,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7060',4662,'Descuentos sobre ventas por pronto pago de mercaderías',0,NULL,NULL,1,NULL,NULL),(4664,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7061',4662,'Descuentos sobre ventas por pronto pago de productos terminados',0,NULL,NULL,1,NULL,NULL),(4665,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7062',4662,'Descuentos sobre ventas por pronto pago de productos semiterminados',0,NULL,NULL,1,NULL,NULL),(4666,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7063',4662,'Descuentos sobre ventas por pronto pago de subproductos y residuos',0,NULL,NULL,1,NULL,NULL),(4667,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','708',4655,'Devoluciones de ventas y operacioes similares',0,NULL,NULL,1,NULL,NULL),(4668,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7080',4667,'Devoluciones de ventas de mercaderías',0,NULL,NULL,1,NULL,NULL),(4669,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7081',4667,'Devoluciones de ventas de productos terminados',0,NULL,NULL,1,NULL,NULL),(4670,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7082',4667,'Devoluciones de ventas de productos semiterminados',0,NULL,NULL,1,NULL,NULL),(4671,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7083',4667,'Devoluciones de ventas de subproductos y residuos',0,NULL,NULL,1,NULL,NULL),(4672,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7084',4667,'Devoluciones de ventas de envases y embalajes',0,NULL,NULL,1,NULL,NULL),(4673,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','71',4007,'Variación de existencias',0,NULL,NULL,1,NULL,NULL),(4674,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','710',4673,'Variación de existencias de productos en curso',0,NULL,NULL,1,NULL,NULL),(4675,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','711',4673,'Variación de existencias de productos semiterminados',0,NULL,NULL,1,NULL,NULL),(4676,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','712',4673,'Variación de existencias de productos terminados',0,NULL,NULL,1,NULL,NULL),(4677,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','713',4673,'Variación de existencias de subproductos, residuos y materiales recuperados',0,NULL,NULL,1,NULL,NULL),(4678,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','73',4007,'Trabajos realizados para la empresa',0,NULL,NULL,1,NULL,NULL),(4679,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','730',4678,'Trabajos realizados para el inmovilizado intangible',0,NULL,NULL,1,NULL,NULL),(4680,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','731',4678,'Trabajos realizados para el inmovilizado tangible',0,NULL,NULL,1,NULL,NULL),(4681,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','732',4678,'Trabajos realizados en inversiones inmobiliarias',0,NULL,NULL,1,NULL,NULL),(4682,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','733',4678,'Trabajos realizados para el inmovilizado material en curso',0,NULL,NULL,1,NULL,NULL),(4683,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','74',4007,'Subvenciones, donaciones y legados',0,NULL,NULL,1,NULL,NULL),(4684,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','740',4683,'Subvenciones, donaciones y legados a la explotación',0,NULL,NULL,1,NULL,NULL),(4685,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','746',4683,'Subvenciones, donaciones y legados de capital transferidos al resultado del ejercicio',0,NULL,NULL,1,NULL,NULL),(4686,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','747',4683,'Otras subvenciones, donaciones y legados transferidos al resultado del ejercicio',0,NULL,NULL,1,NULL,NULL),(4687,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','75',4007,'Otros ingresos de gestión',0,NULL,NULL,1,NULL,NULL),(4688,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','751',4687,'Resultados de operaciones en común',0,NULL,NULL,1,NULL,NULL),(4689,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7510',4688,'Pérdida transferida gestor',0,NULL,NULL,1,NULL,NULL),(4690,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7511',4688,'Beneficio atribuido participe o asociado no gestor',0,NULL,NULL,1,NULL,NULL),(4691,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','752',4687,'Ingreso por arrendamiento',0,NULL,NULL,1,NULL,NULL),(4692,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','753',4687,'Ingresos de propiedad industrial cedida en explotación',0,NULL,NULL,1,NULL,NULL),(4693,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','754',4687,'Ingresos por comisiones',0,NULL,NULL,1,NULL,NULL),(4694,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','755',4687,'Ingresos por servicios al personal',0,NULL,NULL,1,NULL,NULL),(4695,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','759',4687,'Ingresos por servicios diversos',0,NULL,NULL,1,NULL,NULL),(4696,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','76',4007,'Ingresos financieros',0,NULL,NULL,1,NULL,NULL),(4697,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','760',4696,'Ingresos de participaciones en instrumentos de patrimonio',0,NULL,NULL,1,NULL,NULL),(4698,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7600',4697,'Ingresos de participaciones en instrumentos de patrimonio empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4699,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7601',4697,'Ingresos de participaciones en instrumentos de patrimonio empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4700,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7602',4697,'Ingresos de participaciones en instrumentos de patrimonio otras partes asociadas',0,NULL,NULL,1,NULL,NULL),(4701,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7603',4697,'Ingresos de participaciones en instrumentos de patrimonio otras empresas',0,NULL,NULL,1,NULL,NULL),(4702,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','761',4696,'Ingresos de valores representativos de deuda',0,NULL,NULL,1,NULL,NULL),(4703,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7610',4702,'Ingresos de valores representativos de deuda empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4704,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7611',4702,'Ingresos de valores representativos de deuda empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4705,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7612',4702,'Ingresos de valores representativos de deuda otras partes asociadas',0,NULL,NULL,1,NULL,NULL),(4706,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7613',4702,'Ingresos de valores representativos de deuda otras empresas',0,NULL,NULL,1,NULL,NULL),(4707,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','762',4696,'Ingresos de créditos',0,NULL,NULL,1,NULL,NULL),(4708,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7620',4707,'Ingresos de créditos a largo plazo',0,NULL,NULL,1,NULL,NULL),(4709,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','76200',4708,'Ingresos de crédito a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4710,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','76201',4708,'Ingresos de crédito a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4711,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','76202',4708,'Ingresos de crédito a largo plazo otras partes asociadas',0,NULL,NULL,1,NULL,NULL),(4712,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','76203',4708,'Ingresos de crédito a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4713,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7621',4707,'Ingresos de créditos a corto plazo',0,NULL,NULL,1,NULL,NULL),(4714,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','76210',4713,'Ingresos de crédito a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4715,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','76211',4713,'Ingresos de crédito a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4716,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','76212',4713,'Ingresos de crédito a corto plazo otras partes asociadas',0,NULL,NULL,1,NULL,NULL),(4717,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','76213',4713,'Ingresos de crédito a corto plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4718,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','763',4696,'Beneficios por valorización de activos y pasivos financieros por su valor razonable',0,NULL,NULL,1,NULL,NULL),(4719,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','766',4696,'Beneficios en participaciones y valores representativos de deuda',0,NULL,NULL,1,NULL,NULL),(4720,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7660',4719,'Beneficios en participaciones y valores representativos de deuda a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4721,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7661',4719,'Beneficios en participaciones y valores representativos de deuda a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4722,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7662',4719,'Beneficios en participaciones y valores representativos de deuda a largo plazo otras partes asociadas',0,NULL,NULL,1,NULL,NULL),(4723,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7663',4719,'Beneficios en participaciones y valores representativos de deuda a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4724,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7665',4719,'Beneficios en participaciones y valores representativos de deuda a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4725,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7666',4719,'Beneficios en participaciones y valores representativos de deuda a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4726,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7667',4719,'Beneficios en participaciones y valores representativos de deuda a corto plazo otras partes asociadas',0,NULL,NULL,1,NULL,NULL),(4727,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7668',4719,'Beneficios en participaciones y valores representativos de deuda a corto plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4728,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','768',4696,'Diferencias positivas de cambio',0,NULL,NULL,1,NULL,NULL),(4729,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','769',4696,'Otros ingresos financieros',0,NULL,NULL,1,NULL,NULL),(4730,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','77',4007,'Beneficios procedentes de activos no corrientes e ingresos excepcionales',0,NULL,NULL,1,NULL,NULL),(4731,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','770',4730,'Beneficios procedentes del inmovilizado intangible',0,NULL,NULL,1,NULL,NULL),(4732,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','771',4730,'Beneficios procedentes del inmovilizado material',0,NULL,NULL,1,NULL,NULL),(4733,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','772',4730,'Beneficios procedentes de las inversiones inmobiliarias',0,NULL,NULL,1,NULL,NULL),(4734,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','773',4730,'Beneficios procedentes de participaciones a largo plazo en partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4735,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7733',4734,'Beneficios procedentes de participaciones a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4736,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7734',4734,'Beneficios procedentes de participaciones a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4737,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7735',4734,'Beneficios procedentes de participaciones a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4738,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','775',4730,'Beneficios por operaciones con obligaciones propias',0,NULL,NULL,1,NULL,NULL),(4739,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','778',4730,'Ingresos excepcionales',0,NULL,NULL,1,NULL,NULL),(4741,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','79',4007,'Excesos y aplicaciones de provisiones y pérdidas por deterioro',0,NULL,NULL,1,NULL,NULL),(4742,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','790',4741,'Revisión del deterioro del inmovilizado intangible',0,NULL,NULL,1,NULL,NULL),(4743,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','791',4741,'Revisión del deterioro del inmovilizado material',0,NULL,NULL,1,NULL,NULL),(4744,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','792',4741,'Revisión del deterioro de las inversiones inmobiliarias',0,NULL,NULL,1,NULL,NULL),(4745,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','793',4741,'Revisión del deterioro de las existencias',0,NULL,NULL,1,NULL,NULL),(4746,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7930',4745,'Revisión del deterioro de productos terminados y en curso de fabricación',0,NULL,NULL,1,NULL,NULL),(4747,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7931',4745,'Revisión del deterioro de mercaderías',0,NULL,NULL,1,NULL,NULL),(4748,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7932',4745,'Revisión del deterioro de materias primas',0,NULL,NULL,1,NULL,NULL),(4749,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7933',4745,'Revisión del deterioro de otros aprovisionamientos',0,NULL,NULL,1,NULL,NULL),(4750,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','794',4741,'Revisión del deterioro de créditos por operaciones comerciales',0,NULL,NULL,1,NULL,NULL),(4751,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','795',4741,'Exceso de provisiones',0,NULL,NULL,1,NULL,NULL),(4752,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7951',4751,'Exceso de provisión para impuestos',0,NULL,NULL,1,NULL,NULL),(4753,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7952',4751,'Exceso de provisión para otras responsabilidades',0,NULL,NULL,1,NULL,NULL),(4755,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7954',4751,'Exceso de provisión para operaciones comerciales',0,NULL,NULL,1,NULL,NULL),(4756,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','79544',4755,'Exceso de provisión por contratos onerosos',0,NULL,NULL,1,NULL,NULL),(4757,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','79549',4755,'Exceso de provisión para otras operaciones comerciales',0,NULL,NULL,1,NULL,NULL),(4758,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7955',4751,'Exceso de provisión para actuaciones medioambienteales',0,NULL,NULL,1,NULL,NULL),(4759,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','796',4741,'Revisión del deterioro de participaciones y valores representativos de deuda a largo plazo',0,NULL,NULL,1,NULL,NULL),(4760,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7960',4759,'Revisión del deterioro de participaciones en instrumentos de patrimonio neto a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4761,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7961',4759,'Revisión del deterioro de participaciones en instrumentos de patrimonio neto a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4762,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7962',4759,'Revisión del deterioro de participaciones en instrumentos de patrimonio neto a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4763,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7963',4759,'Revisión del deterioro de participaciones en instrumentos de patrimonio neto a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4764,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7965',4759,'Revisión del deterioro de valores representativos a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4765,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7966',4759,'Revisión del deterioro de valores representativos a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4766,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7967',4759,'Revisión del deterioro de valores representativos a largo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4767,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7968',4759,'Revisión del deterioro de valores representativos a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4768,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','797',4741,'Revisión del deterioro de créditos a largo plazo',0,NULL,NULL,1,NULL,NULL),(4769,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7970',4768,'Revisión del deterioro de créditos a largo plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4770,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7971',4768,'Revisión del deterioro de créditos a largo plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4771,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7972',4768,'Revisión del deterioro de créditos a largo plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4772,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7973',4768,'Revisión del deterioro de créditos a largo plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4773,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','798',4741,'Revisión del deterioro de participaciones y valores representativos de deuda a corto plazo',0,NULL,NULL,1,NULL,NULL),(4774,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7980',4773,'Revisión del deterioro de participaciones en instrumentos de patrimonio neto a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4775,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7981',4773,'Revisión del deterioro de participaciones en instrumentos de patrimonio neto a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4776,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7985',4773,'Revisión del deterioro de valores representativos de deuda a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4777,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7986',4773,'Revisión del deterioro de valores representativos de deuda a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4778,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7987',4773,'Revisión del deterioro de valores representativos de deuda a corto plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4779,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7988',4773,'Revisión del deterioro de valores representativos de deuda a corto plazo otras empresas',0,NULL,NULL,1,NULL,NULL),(4780,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','799',4741,'Revisión del deterioro de créditos a corto plazo',0,NULL,NULL,1,NULL,NULL),(4781,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7990',4780,'Revisión del deterioro de créditos a corto plazo empresas del grupo',0,NULL,NULL,1,NULL,NULL),(4782,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7991',4780,'Revisión del deterioro de créditos a corto plazo empresas asociadas',0,NULL,NULL,1,NULL,NULL),(4783,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7992',4780,'Revisión del deterioro de créditos a corto plazo otras partes vinculadas',0,NULL,NULL,1,NULL,NULL),(4784,1,NULL,'2020-02-09 17:36:25','PCG08-PYME','INCOME','XXXXXX','7993',4780,'Revisión del deterioro de créditos a corto plazo otras empresas',0,NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `doli_accounting_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_accounting_bookkeeping`
--

LOCK TABLES `doli_accounting_bookkeeping` WRITE;
/*!40000 ALTER TABLE `doli_accounting_bookkeeping` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_accounting_bookkeeping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_accounting_bookkeeping_tmp`
--

LOCK TABLES `doli_accounting_bookkeeping_tmp` WRITE;
/*!40000 ALTER TABLE `doli_accounting_bookkeeping_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_accounting_bookkeeping_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_accounting_fiscalyear`
--

LOCK TABLES `doli_accounting_fiscalyear` WRITE;
/*!40000 ALTER TABLE `doli_accounting_fiscalyear` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_accounting_fiscalyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_accounting_journal`
--

LOCK TABLES `doli_accounting_journal` WRITE;
/*!40000 ALTER TABLE `doli_accounting_journal` DISABLE KEYS */;
INSERT INTO `doli_accounting_journal` VALUES (1,'VT','Sale journal',2,1,1),(2,'AC','Purchase journal',3,1,1),(3,'BQ','Bank journal',4,1,1),(4,'OD','Other journal',1,1,1),(5,'AN','Has new journal',9,1,1),(6,'ER','Expense report journal',5,1,1),(7,'INV','Inventory journal',8,1,1);
/*!40000 ALTER TABLE `doli_accounting_journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_accounting_system`
--

LOCK TABLES `doli_accounting_system` WRITE;
/*!40000 ALTER TABLE `doli_accounting_system` DISABLE KEYS */;
INSERT INTO `doli_accounting_system` VALUES (1,'PCG99-ABREGE','The simple accountancy french plan',1,1),(2,'PCG99-BASE','The base accountancy french plan',1,1),(3,'PCMN-BASE','The base accountancy belgium plan',1,2),(4,'PCG08-PYME','The PYME accountancy spanish plan',1,4),(5,'PC-MIPYME','The PYME accountancy Chile plan',1,67),(6,'ENG-BASE','England plan',1,7),(7,'SYSCOHADA-BJ','Plan comptable Ouest-Africain',1,49),(8,'SYSCOHADA-BF','Plan comptable Ouest-Africain',1,60),(9,'SYSCOHADA-CM','Plan comptable Ouest-Africain',1,24),(10,'SYSCOHADA-CF','Plan comptable Ouest-Africain',1,65),(11,'SYSCOHADA-KM','Plan comptable Ouest-Africain',1,71),(12,'SYSCOHADA-CG','Plan comptable Ouest-Africain',1,72),(13,'SYSCOHADA-CI','Plan comptable Ouest-Africain',1,21),(14,'SYSCOHADA-GA','Plan comptable Ouest-Africain',1,16),(15,'SYSCOHADA-GQ','Plan comptable Ouest-Africain',1,87),(16,'SYSCOHADA-ML','Plan comptable Ouest-Africain',1,147),(17,'SYSCOHADA-NE','Plan comptable Ouest-Africain',1,168),(18,'SYSCOHADA-CD','Plan comptable Ouest-Africain',1,73),(19,'SYSCOHADA-SN','Plan comptable Ouest-Africain',1,22),(20,'SYSCOHADA-TD','Plan comptable Ouest-Africain',1,66),(21,'SYSCOHADA-TG','Plan comptable Ouest-Africain',1,15),(22,'PCG14-DEV','The developed accountancy french plan 2014',1,1),(23,'PCG_SUISSE','Switzerland plan',1,6),(24,'PCN-LUXEMBURG','Plan comptable normalisé Luxembourgeois',1,140),(25,'DK-STD','Standardkontoplan fra SKAT',1,80),(26,'PCT','The Tunisia plan',1,10),(27,'PCG','The Moroccan chart of accounts',1,12),(45,'RO-BASE','Plan de conturi romanesc',1,188),(46,'SKR03','Standardkontenrahmen SKR 03',1,5),(47,'SKR04','Standardkontenrahmen SKR 04',1,5),(48,'BAS-K1-MINI','The Swedish mini chart of accounts',1,20);
/*!40000 ALTER TABLE `doli_accounting_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_actioncomm`
--

LOCK TABLES `doli_actioncomm` WRITE;
/*!40000 ALTER TABLE `doli_actioncomm` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_actioncomm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_actioncomm_extrafields`
--

LOCK TABLES `doli_actioncomm_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_actioncomm_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_actioncomm_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_actioncomm_reminder`
--

LOCK TABLES `doli_actioncomm_reminder` WRITE;
/*!40000 ALTER TABLE `doli_actioncomm_reminder` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_actioncomm_reminder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_actioncomm_resources`
--

LOCK TABLES `doli_actioncomm_resources` WRITE;
/*!40000 ALTER TABLE `doli_actioncomm_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_actioncomm_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_adherent`
--

LOCK TABLES `doli_adherent` WRITE;
/*!40000 ALTER TABLE `doli_adherent` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_adherent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_adherent_extrafields`
--

LOCK TABLES `doli_adherent_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_adherent_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_adherent_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_adherent_type`
--

LOCK TABLES `doli_adherent_type` WRITE;
/*!40000 ALTER TABLE `doli_adherent_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_adherent_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_adherent_type_extrafields`
--

LOCK TABLES `doli_adherent_type_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_adherent_type_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_adherent_type_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_adherent_type_lang`
--

LOCK TABLES `doli_adherent_type_lang` WRITE;
/*!40000 ALTER TABLE `doli_adherent_type_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_adherent_type_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_advtargetemailing`
--

LOCK TABLES `doli_advtargetemailing` WRITE;
/*!40000 ALTER TABLE `doli_advtargetemailing` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_advtargetemailing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_asset`
--

LOCK TABLES `doli_asset` WRITE;
/*!40000 ALTER TABLE `doli_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_asset_extrafields`
--

LOCK TABLES `doli_asset_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_asset_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_asset_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_asset_type`
--

LOCK TABLES `doli_asset_type` WRITE;
/*!40000 ALTER TABLE `doli_asset_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_asset_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_asset_type_extrafields`
--

LOCK TABLES `doli_asset_type_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_asset_type_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_asset_type_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bank`
--

LOCK TABLES `doli_bank` WRITE;
/*!40000 ALTER TABLE `doli_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bank_account`
--

LOCK TABLES `doli_bank_account` WRITE;
/*!40000 ALTER TABLE `doli_bank_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bank_account_extrafields`
--

LOCK TABLES `doli_bank_account_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_bank_account_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bank_account_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bank_categ`
--

LOCK TABLES `doli_bank_categ` WRITE;
/*!40000 ALTER TABLE `doli_bank_categ` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bank_categ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bank_class`
--

LOCK TABLES `doli_bank_class` WRITE;
/*!40000 ALTER TABLE `doli_bank_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bank_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bank_url`
--

LOCK TABLES `doli_bank_url` WRITE;
/*!40000 ALTER TABLE `doli_bank_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bank_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_blockedlog`
--

LOCK TABLES `doli_blockedlog` WRITE;
/*!40000 ALTER TABLE `doli_blockedlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_blockedlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_blockedlog_authority`
--

LOCK TABLES `doli_blockedlog_authority` WRITE;
/*!40000 ALTER TABLE `doli_blockedlog_authority` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_blockedlog_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bom_bom`
--

LOCK TABLES `doli_bom_bom` WRITE;
/*!40000 ALTER TABLE `doli_bom_bom` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bom_bom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bom_bom_extrafields`
--

LOCK TABLES `doli_bom_bom_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_bom_bom_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bom_bom_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bom_bomline`
--

LOCK TABLES `doli_bom_bomline` WRITE;
/*!40000 ALTER TABLE `doli_bom_bomline` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bom_bomline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bom_bomline_extrafields`
--

LOCK TABLES `doli_bom_bomline_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_bom_bomline_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bom_bomline_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bookmark`
--

LOCK TABLES `doli_bookmark` WRITE;
/*!40000 ALTER TABLE `doli_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_bordereau_cheque`
--

LOCK TABLES `doli_bordereau_cheque` WRITE;
/*!40000 ALTER TABLE `doli_bordereau_cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_bordereau_cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_boxes`
--

LOCK TABLES `doli_boxes` WRITE;
/*!40000 ALTER TABLE `doli_boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_boxes_def`
--

LOCK TABLES `doli_boxes_def` WRITE;
/*!40000 ALTER TABLE `doli_boxes_def` DISABLE KEYS */;
INSERT INTO `doli_boxes_def` VALUES (1,'box_lastlogin.php',1,'2020-02-09 17:37:05',NULL),(2,'box_birthdays.php',1,'2020-02-09 17:37:05',NULL);
/*!40000 ALTER TABLE `doli_boxes_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_budget`
--

LOCK TABLES `doli_budget` WRITE;
/*!40000 ALTER TABLE `doli_budget` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_budget_lines`
--

LOCK TABLES `doli_budget_lines` WRITE;
/*!40000 ALTER TABLE `doli_budget_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_budget_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_accounting_category`
--

LOCK TABLES `doli_c_accounting_category` WRITE;
/*!40000 ALTER TABLE `doli_c_accounting_category` DISABLE KEYS */;
INSERT INTO `doli_c_accounting_category` VALUES (1,1,'VENTES','Ventes de marchandises','7xxxxx',0,0,'',10,1,1),(2,1,'DEPENSES','Coût achats marchandises vendues','6xxxxx',0,0,'',20,1,1),(3,1,'PROFIT','Marge commerciale','Balance',0,1,'VENTES+DEPENSES',30,1,1);
/*!40000 ALTER TABLE `doli_c_accounting_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_action_trigger`
--

LOCK TABLES `doli_c_action_trigger` WRITE;
/*!40000 ALTER TABLE `doli_c_action_trigger` DISABLE KEYS */;
INSERT INTO `doli_c_action_trigger` VALUES (1,'FICHINTER_VALIDATE','Intervention validated','Executed when a intervention is validated','ficheinter',19),(2,'BILL_VALIDATE','Customer invoice validated','Executed when a customer invoice is approved','facture',6),(3,'ORDER_SUPPLIER_APPROVE','Supplier order request approved','Executed when a supplier order is approved','order_supplier',12),(4,'ORDER_SUPPLIER_REFUSE','Supplier order request refused','Executed when a supplier order is refused','order_supplier',13),(5,'ORDER_VALIDATE','Customer order validate','Executed when a customer order is validated','commande',4),(6,'PROPAL_VALIDATE','Customer proposal validated','Executed when a commercial proposal is validated','propal',2),(9,'COMPANY_SENTBYMAIL','Mails sent from third party card','Executed when you send email from third party card','societe',1),(10,'COMPANY_CREATE','Third party created','Executed when a third party is created','societe',1),(11,'CONTRACT_VALIDATE','Contract validated','Executed when a contract is validated','contrat',18),(12,'PROPAL_SENTBYMAIL','Commercial proposal sent by mail','Executed when a commercial proposal is sent by mail','propal',3),(13,'ORDER_SENTBYMAIL','Customer order sent by mail','Executed when a customer order is sent by mail ','commande',5),(14,'BILL_PAYED','Customer invoice payed','Executed when a customer invoice is payed','facture',7),(15,'BILL_CANCEL','Customer invoice canceled','Executed when a customer invoice is conceled','facture',8),(16,'BILL_SENTBYMAIL','Customer invoice sent by mail','Executed when a customer invoice is sent by mail','facture',9),(17,'ORDER_SUPPLIER_VALIDATE','Supplier order validated','Executed when a supplier order is validated','order_supplier',11),(18,'ORDER_SUPPLIER_SENTBYMAIL','Supplier order sent by mail','Executed when a supplier order is sent by mail','order_supplier',14),(19,'BILL_SUPPLIER_VALIDATE','Supplier invoice validated','Executed when a supplier invoice is validated','invoice_supplier',15),(20,'BILL_SUPPLIER_PAYED','Supplier invoice payed','Executed when a supplier invoice is payed','invoice_supplier',16),(21,'BILL_SUPPLIER_SENTBYMAIL','Supplier invoice sent by mail','Executed when a supplier invoice is sent by mail','invoice_supplier',17),(22,'SHIPPING_VALIDATE','Shipping validated','Executed when a shipping is validated','shipping',20),(23,'SHIPPING_SENTBYMAIL','Shipping sent by mail','Executed when a shipping is sent by mail','shipping',21),(24,'MEMBER_VALIDATE','Member validated','Executed when a member is validated','member',22),(26,'MEMBER_RESILIATE','Member resiliated','Executed when a member is resiliated','member',24),(27,'MEMBER_DELETE','Member deleted','Executed when a member is deleted','member',25),(28,'BILL_UNVALIDATE','Customer invoice unvalidated','Executed when a customer invoice status set back to draft','facture',10),(29,'FICHINTER_SENTBYMAIL','Intervention sent by mail','Executed when a intervention is sent by mail','ficheinter',29),(30,'PROJECT_CREATE','Project creation','Executed when a project is created','project',140),(31,'PROPAL_CLOSE_SIGNED','Customer proposal closed signed','Executed when a customer proposal is closed signed','propal',31),(32,'PROPAL_CLOSE_REFUSED','Customer proposal closed refused','Executed when a customer proposal is closed refused','propal',32),(33,'BILL_SUPPLIER_CANCELED','Supplier invoice cancelled','Executed when a supplier invoice is cancelled','invoice_supplier',33),(34,'MEMBER_MODIFY','Member modified','Executed when a member is modified','member',34),(35,'TASK_CREATE','Task created','Executed when a project task is created','project',35),(36,'TASK_MODIFY','Task modified','Executed when a project task is modified','project',36),(37,'TASK_DELETE','Task deleted','Executed when a project task is deleted','project',37),(38,'FICHINTER_CLASSIFY_BILLED','Intervention set billed','Executed when a intervention is set to billed (when option FICHINTER_CLASSIFY_BILLED is set)','ficheinter',19),(39,'FICHINTER_CLASSIFY_UNBILLED','Intervention set unbilled','Executed when a intervention is set to unbilled (when option FICHINTER_CLASSIFY_BILLED is set)','ficheinter',19),(41,'FICHINTER_REOPEN','Intervention opened','Executed when a intervention is re-opened','ficheinter',19),(42,'PROPAL_CLASSIFY_BILLED','Customer proposal set billed','Executed when a customer proposal is set to billed','propal',2),(43,'ORDER_CLOSE','Customer order classify delivered','Executed when a customer order is set delivered','commande',5),(44,'ORDER_CLASSIFY_BILLED','Customer order classify billed','Executed when a customer order is set to billed','commande',5),(45,'ORDER_CANCEL','Customer order canceled','Executed when a customer order is canceled','commande',5),(85,'BILL_SUPPLIER_UNVALIDATE','Supplier invoice unvalidated','Executed when a supplier invoice status is set back to draft','invoice_supplier',15),(86,'PROJECT_MODIFY','Project modified','Executed when a project is modified','project',141),(87,'PROJECT_DELETE','Project deleted','Executed when a project is deleted','project',142),(88,'ORDER_SUPPLIER_CREATE','Supplier order validated','Executed when a supplier order is validated','order_supplier',11),(89,'ORDER_SUPPLIER_SUBMIT','Supplier order request submited','Executed when a supplier order is approved','order_supplier',12),(90,'ORDER_SUPPLIER_RECEIVE','Supplier order request received','Executed when a supplier order is received','order_supplier',12),(91,'ORDER_SUPPLIER_CLASSIFY_BILLED','Supplier order set billed','Executed when a supplier order is set as billed','order_supplier',14),(92,'PRODUCT_CREATE','Product or service created','Executed when a product or sevice is created','product',30),(93,'PRODUCT_MODIFY','Product or service modified','Executed when a product or sevice is modified','product',30),(94,'PRODUCT_DELETE','Product or service deleted','Executed when a product or sevice is deleted','product',30),(95,'EXPENSE_REPORT_CREATE','Expense report created','Executed when an expense report is created','expense_report',201),(97,'EXPENSE_REPORT_VALIDATE','Expense report validated','Executed when an expense report is validated','expense_report',202),(98,'EXPENSE_REPORT_APPROVE','Expense report approved','Executed when an expense report is approved','expense_report',203),(99,'EXPENSE_REPORT_PAYED','Expense report billed','Executed when an expense report is set as billed','expense_report',204),(104,'HOLIDAY_CREATE','Leave request created','Executed when a leave request is created','holiday',221),(105,'HOLIDAY_VALIDATE','Leave request validated','Executed when a leave request is validated','holiday',222),(106,'HOLIDAY_APPROVE','Leave request approved','Executed when a leave request is approved','holiday',223),(107,'MEMBER_SUBSCRIPTION_CREATE','Member subscribtion recorded','Executed when a member subscribtion is deleted','member',24),(108,'MEMBER_SUBSCRIPTION_MODIFY','Member subscribtion modified','Executed when a member subscribtion is modified','member',24),(109,'MEMBER_SUBSCRIPTION_DELETE','Member subscribtion deleted','Executed when a member subscribtion is deleted','member',24),(110,'MEMBER_SENTBYMAIL','Mails sent from member card','Executed when you send email from member card','member',23),(111,'CONTRACT_SENTBYMAIL','Contract sent by mail','Executed when a contract is sent by mail','contrat',18),(112,'PROPOSAL_SUPPLIER_VALIDATE','Price request validated','Executed when a commercial proposal is validated','proposal_supplier',10),(113,'PROPOSAL_SUPPLIER_SENTBYMAIL','Price request sent by mail','Executed when a commercial proposal is sent by mail','proposal_supplier',10),(114,'PROPOSAL_SUPPLIER_CLOSE_SIGNED','Price request closed signed','Executed when a customer proposal is closed signed','proposal_supplier',10),(115,'PROPOSAL_SUPPLIER_CLOSE_REFUSED','Price request closed refused','Executed when a customer proposal is closed refused','proposal_supplier',10),(116,'COMPANY_DELETE','Third party deleted','Executed when you delete third party','societe',1),(117,'PROPAL_DELETE','Customer proposal deleted','Executed when a customer proposal is deleted','propal',2),(118,'ORDER_DELETE','Customer order deleted','Executed when a customer order is deleted','commande',5),(119,'BILL_DELETE','Customer invoice deleted','Executed when a customer invoice is deleted','facture',9),(120,'PROPOSAL_SUPPLIER_DELETE','Price request deleted','Executed when a customer proposal delete','proposal_supplier',10),(121,'ORDER_SUPPLIER_DELETE','Supplier order deleted','Executed when a supplier order is deleted','order_supplier',14),(122,'BILL_SUPPLIER_DELETE','Supplier invoice deleted','Executed when a supplier invoice is deleted','invoice_supplier',17),(123,'CONTRACT_DELETE','Contract deleted','Executed when a contract is deleted','contrat',18),(124,'FICHINTER_DELETE','Intervention is deleted','Executed when a intervention is deleted','ficheinter',35),(125,'EXPENSE_DELETE','Expense report deleted','Executed when an expense report is deleted','expensereport',204),(128,'TICKET_CREATE','Ticket created','Executed when a ticket is created','ticket',161),(129,'TICKET_MODIFY','Ticket modified','Executed when a ticket is modified','ticket',163),(130,'TICKET_ASSIGNED','Ticket assigned','Executed when a ticket is assigned to another user','ticket',164),(131,'TICKET_CLOSE','Ticket closed','Executed when a ticket is closed','ticket',165),(132,'TICKET_SENTBYMAIL','Ticket message sent by email','Executed when a message is sent from the ticket record','ticket',166),(133,'TICKET_DELETE','Ticket deleted','Executed when a ticket is deleted','ticket',167),(134,'USER_SENTBYMAIL','Email sent','Executed when an email is sent from user card','user',300),(135,'BOM_VALIDATE','BOM validated','Executed when a BOM is validated','bom',650),(136,'BOM_UNVALIDATE','BOM unvalidated','Executed when a BOM is unvalidated','bom',651),(137,'BOM_CLOSE','BOM disabled','Executed when a BOM is disabled','bom',652),(138,'BOM_REOPEN','BOM reopen','Executed when a BOM is re-open','bom',653),(139,'BOM_DELETE','BOM deleted','Executed when a BOM deleted','bom',654),(140,'MRP_MO_VALIDATE','MO validated','Executed when a MO is validated','bom',660),(141,'MRP_MO_PRODUCED','MO produced','Executed when a MO is produced','bom',661),(142,'MRP_MO_DELETE','MO deleted','Executed when a MO is deleted','bom',662),(143,'MRP_MO_CANCEL','MO canceled','Executed when a MO is canceled','bom',663);
/*!40000 ALTER TABLE `doli_c_action_trigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_actioncomm`
--

LOCK TABLES `doli_c_actioncomm` WRITE;
/*!40000 ALTER TABLE `doli_c_actioncomm` DISABLE KEYS */;
INSERT INTO `doli_c_actioncomm` VALUES (1,'AC_TEL','system','Phone call',NULL,1,NULL,2,NULL,NULL),(2,'AC_FAX','system','Send Fax',NULL,1,NULL,3,NULL,NULL),(4,'AC_EMAIL','system','Send Email',NULL,1,NULL,4,NULL,NULL),(5,'AC_RDV','system','Rendez-vous',NULL,1,NULL,1,NULL,NULL),(11,'AC_INT','system','Intervention on site',NULL,1,NULL,4,NULL,NULL),(40,'AC_OTH_AUTO','systemauto','Other (automatically inserted events)',NULL,1,NULL,20,NULL,NULL),(50,'AC_OTH','system','Other (manually inserted events)',NULL,1,NULL,5,NULL,NULL);
/*!40000 ALTER TABLE `doli_c_actioncomm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_availability`
--

LOCK TABLES `doli_c_availability` WRITE;
/*!40000 ALTER TABLE `doli_c_availability` DISABLE KEYS */;
INSERT INTO `doli_c_availability` VALUES (1,'AV_NOW','Immediate',1),(2,'AV_1W','1 week',1),(3,'AV_2W','2 weeks',1),(4,'AV_3W','3 weeks',1);
/*!40000 ALTER TABLE `doli_c_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_barcode_type`
--

LOCK TABLES `doli_c_barcode_type` WRITE;
/*!40000 ALTER TABLE `doli_c_barcode_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_c_barcode_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_chargesociales`
--

LOCK TABLES `doli_c_chargesociales` WRITE;
/*!40000 ALTER TABLE `doli_c_chargesociales` DISABLE KEYS */;
INSERT INTO `doli_c_chargesociales` VALUES (1,'Allocations familiales',1,1,'TAXFAM',NULL,1,NULL),(2,'CSG Deductible',1,1,'TAXCSGD',NULL,1,NULL),(3,'CSG/CRDS NON Deductible',0,1,'TAXCSGND',NULL,1,NULL),(10,'Taxe apprentissage',0,1,'TAXAPP',NULL,1,NULL),(11,'Taxe professionnelle',0,1,'TAXPRO',NULL,1,NULL),(12,'Cotisation fonciere des entreprises',0,1,'TAXCFE',NULL,1,NULL),(13,'Cotisation sur la valeur ajoutee des entreprises',0,1,'TAXCVAE',NULL,1,NULL),(20,'Impots locaux/fonciers',0,1,'TAXFON',NULL,1,NULL),(25,'Impots revenus',0,1,'TAXREV',NULL,1,NULL),(30,'Assurance Sante',0,1,'TAXSECU',NULL,1,NULL),(40,'Mutuelle',0,1,'TAXMUT',NULL,1,NULL),(50,'Assurance vieillesse',0,1,'TAXRET',NULL,1,NULL),(60,'Assurance Chomage',0,1,'TAXCHOM',NULL,1,NULL),(201,'ONSS',1,1,'TAXBEONSS',NULL,2,NULL),(210,'Precompte professionnel',1,1,'TAXBEPREPRO',NULL,2,NULL),(220,'Prime existence',1,1,'TAXBEPRIEXI',NULL,2,NULL),(230,'Precompte immobilier',1,1,'TAXBEPREIMMO',NULL,2,NULL),(4101,'Krankenversicherung',1,1,'TAXATKV',NULL,41,NULL),(4102,'Unfallversicherung',1,1,'TAXATUV',NULL,41,NULL),(4103,'Pensionsversicherung',1,1,'TAXATPV',NULL,41,NULL),(4104,'Arbeitslosenversicherung',1,1,'TAXATAV',NULL,41,NULL),(4105,'Insolvenzentgeltsicherungsfond',1,1,'TAXATIESG',NULL,41,NULL),(4106,'Wohnbauförderung',1,1,'TAXATWF',NULL,41,NULL),(4107,'Arbeiterkammerumlage',1,1,'TAXATAK',NULL,41,NULL),(4108,'Mitarbeitervorsorgekasse',1,1,'TAXATMVK',NULL,41,NULL),(4109,'Familienlastenausgleichsfond',1,1,'TAXATFLAF',NULL,41,NULL);
/*!40000 ALTER TABLE `doli_c_chargesociales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_civility`
--

LOCK TABLES `doli_c_civility` WRITE;
/*!40000 ALTER TABLE `doli_c_civility` DISABLE KEYS */;
INSERT INTO `doli_c_civility` VALUES (1,'MME','Madame',1,NULL),(3,'MR','Monsieur',1,NULL),(5,'MLE','Mademoiselle',1,NULL),(7,'MTRE','Maître',1,NULL),(8,'DR','Docteur',1,NULL);
/*!40000 ALTER TABLE `doli_c_civility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_country`
--

LOCK TABLES `doli_c_country` WRITE;
/*!40000 ALTER TABLE `doli_c_country` DISABLE KEYS */;
INSERT INTO `doli_c_country` VALUES (0,'',NULL,'-',1,1),(1,'FR',NULL,'France',1,0),(2,'BE',NULL,'Belgium',1,0),(3,'IT',NULL,'Italy',1,0),(4,'ES',NULL,'Spain',1,0),(5,'DE',NULL,'Germany',1,0),(6,'CH',NULL,'Switzerland',1,0),(7,'GB',NULL,'United Kingdom',1,0),(8,'IE',NULL,'Irland',1,0),(9,'CN',NULL,'China',1,0),(10,'TN',NULL,'Tunisia',1,0),(11,'US',NULL,'United States',1,0),(12,'MA',NULL,'Maroc',1,0),(13,'DZ',NULL,'Algeria',1,0),(14,'CA',NULL,'Canada',1,0),(15,'TG',NULL,'Togo',1,0),(16,'GA',NULL,'Gabon',1,0),(17,'NL',NULL,'Nerderland',1,0),(18,'HU',NULL,'Hongrie',1,0),(19,'RU',NULL,'Russia',1,0),(20,'SE',NULL,'Sweden',1,0),(21,'CI',NULL,'Côte d\'Ivoire',1,0),(22,'SN',NULL,'Senegal',1,0),(23,'AR',NULL,'Argentine',1,0),(24,'CM',NULL,'Cameroun',1,0),(25,'PT',NULL,'Portugal',1,0),(26,'SA',NULL,'Saudi Arabia',1,0),(27,'MC',NULL,'Monaco',1,0),(28,'AU',NULL,'Australia',1,0),(29,'SG',NULL,'Singapour',1,0),(30,'AF',NULL,'Afghanistan',1,0),(31,'AX',NULL,'Iles Aland',1,0),(32,'AL',NULL,'Albanie',1,0),(33,'AS',NULL,'Samoa américaines',1,0),(34,'AD',NULL,'Andorre',1,0),(35,'AO',NULL,'Angola',1,0),(36,'AI',NULL,'Anguilla',1,0),(37,'AQ',NULL,'Antarctique',1,0),(38,'AG',NULL,'Antigua-et-Barbuda',1,0),(39,'AM',NULL,'Arménie',1,0),(40,'AW',NULL,'Aruba',1,0),(41,'AT',NULL,'Autriche',1,0),(42,'AZ',NULL,'Azerbaïdjan',1,0),(43,'BS',NULL,'Bahamas',1,0),(44,'BH',NULL,'Bahreïn',1,0),(45,'BD',NULL,'Bangladesh',1,0),(46,'BB',NULL,'Barbade',1,0),(47,'BY',NULL,'Biélorussie',1,0),(48,'BZ',NULL,'Belize',1,0),(49,'BJ',NULL,'Bénin',1,0),(50,'BM',NULL,'Bermudes',1,0),(51,'BT',NULL,'Bhoutan',1,0),(52,'BO',NULL,'Bolivie',1,0),(53,'BA',NULL,'Bosnie-Herzégovine',1,0),(54,'BW',NULL,'Botswana',1,0),(55,'BV',NULL,'Ile Bouvet',1,0),(56,'BR',NULL,'Brazil',1,0),(57,'IO',NULL,'Territoire britannique de l\'Océan Indien',1,0),(58,'BN',NULL,'Brunei',1,0),(59,'BG',NULL,'Bulgarie',1,0),(60,'BF',NULL,'Burkina Faso',1,0),(61,'BI',NULL,'Burundi',1,0),(62,'KH',NULL,'Cambodge',1,0),(63,'CV',NULL,'Cap-Vert',1,0),(64,'KY',NULL,'Iles Cayman',1,0),(65,'CF',NULL,'République centrafricaine',1,0),(66,'TD',NULL,'Tchad',1,0),(67,'CL',NULL,'Chili',1,0),(68,'CX',NULL,'Ile Christmas',1,0),(69,'CC',NULL,'Iles des Cocos (Keeling)',1,0),(70,'CO',NULL,'Colombie',1,0),(71,'KM',NULL,'Comores',1,0),(72,'CG',NULL,'Congo',1,0),(73,'CD',NULL,'République démocratique du Congo',1,0),(74,'CK',NULL,'Iles Cook',1,0),(75,'CR',NULL,'Costa Rica',1,0),(76,'HR',NULL,'Croatie',1,0),(77,'CU',NULL,'Cuba',1,0),(78,'CY',NULL,'Chypre',1,0),(79,'CZ',NULL,'République Tchèque',1,0),(80,'DK',NULL,'Danemark',1,0),(81,'DJ',NULL,'Djibouti',1,0),(82,'DM',NULL,'Dominique',1,0),(83,'DO',NULL,'République Dominicaine',1,0),(84,'EC',NULL,'Equateur',1,0),(85,'EG',NULL,'Egypte',1,0),(86,'SV',NULL,'Salvador',1,0),(87,'GQ',NULL,'Guinée Equatoriale',1,0),(88,'ER',NULL,'Erythrée',1,0),(89,'EE',NULL,'Estonia',1,0),(90,'ET',NULL,'Ethiopie',1,0),(91,'FK',NULL,'Iles Falkland',1,0),(92,'FO',NULL,'Iles Féroé',1,0),(93,'FJ',NULL,'Iles Fidji',1,0),(94,'FI',NULL,'Finlande',1,0),(95,'GF',NULL,'Guyane française',1,0),(96,'PF',NULL,'Polynésie française',1,0),(97,'TF',NULL,'Terres australes françaises',1,0),(98,'GM',NULL,'Gambie',1,0),(99,'GE',NULL,'Georgia',1,0),(100,'GH',NULL,'Ghana',1,0),(101,'GI',NULL,'Gibraltar',1,0),(102,'GR',NULL,'Greece',1,0),(103,'GL',NULL,'Groenland',1,0),(104,'GD',NULL,'Grenade',1,0),(106,'GU',NULL,'Guam',1,0),(107,'GT',NULL,'Guatemala',1,0),(108,'GN',NULL,'Guinea',1,0),(109,'GW',NULL,'Guinea-Bissao',1,0),(111,'HT',NULL,'Haiti',1,0),(112,'HM',NULL,'Iles Heard et McDonald',1,0),(113,'VA',NULL,'Saint-Siège (Vatican)',1,0),(114,'HN',NULL,'Honduras',1,0),(115,'HK',NULL,'Hong Kong',1,0),(116,'IS',NULL,'Islande',1,0),(117,'IN',NULL,'India',1,0),(118,'ID',NULL,'Indonésie',1,0),(119,'IR',NULL,'Iran',1,0),(120,'IQ',NULL,'Iraq',1,0),(121,'IL',NULL,'Israel',1,0),(122,'JM',NULL,'Jamaïque',1,0),(123,'JP',NULL,'Japon',1,0),(124,'JO',NULL,'Jordanie',1,0),(125,'KZ',NULL,'Kazakhstan',1,0),(126,'KE',NULL,'Kenya',1,0),(127,'KI',NULL,'Kiribati',1,0),(128,'KP',NULL,'North Corea',1,0),(129,'KR',NULL,'South Corea',1,0),(130,'KW',NULL,'Koweït',1,0),(131,'KG',NULL,'Kirghizistan',1,0),(132,'LA',NULL,'Laos',1,0),(133,'LV',NULL,'Lettonie',1,0),(134,'LB',NULL,'Liban',1,0),(135,'LS',NULL,'Lesotho',1,0),(136,'LR',NULL,'Liberia',1,0),(137,'LY',NULL,'Libye',1,0),(138,'LI',NULL,'Liechtenstein',1,0),(139,'LT',NULL,'Lituanie',1,0),(140,'LU',NULL,'Luxembourg',1,0),(141,'MO',NULL,'Macao',1,0),(142,'MK',NULL,'ex-République yougoslave de Macédoine',1,0),(143,'MG',NULL,'Madagascar',1,0),(144,'MW',NULL,'Malawi',1,0),(145,'MY',NULL,'Malaisie',1,0),(146,'MV',NULL,'Maldives',1,0),(147,'ML',NULL,'Mali',1,0),(148,'MT',NULL,'Malte',1,0),(149,'MH',NULL,'Iles Marshall',1,0),(151,'MR',NULL,'Mauritanie',1,0),(152,'MU',NULL,'Maurice',1,0),(153,'YT',NULL,'Mayotte',1,0),(154,'MX',NULL,'Mexique',1,0),(155,'FM',NULL,'Micronésie',1,0),(156,'MD',NULL,'Moldavie',1,0),(157,'MN',NULL,'Mongolie',1,0),(158,'MS',NULL,'Monserrat',1,0),(159,'MZ',NULL,'Mozambique',1,0),(160,'MM',NULL,'Birmanie (Myanmar)',1,0),(161,'NA',NULL,'Namibie',1,0),(162,'NR',NULL,'Nauru',1,0),(163,'NP',NULL,'Népal',1,0),(164,'AN',NULL,'Antilles néerlandaises',1,0),(165,'NC',NULL,'Nouvelle-Calédonie',1,0),(166,'NZ',NULL,'Nouvelle-Zélande',1,0),(167,'NI',NULL,'Nicaragua',1,0),(168,'NE',NULL,'Niger',1,0),(169,'NG',NULL,'Nigeria',1,0),(170,'NU',NULL,'Nioué',1,0),(171,'NF',NULL,'Ile Norfolk',1,0),(172,'MP',NULL,'Mariannes du Nord',1,0),(173,'NO',NULL,'Norvège',1,0),(174,'OM',NULL,'Oman',1,0),(175,'PK',NULL,'Pakistan',1,0),(176,'PW',NULL,'Palaos',1,0),(177,'PS',NULL,'Territoire Palestinien Occupé',1,0),(178,'PA',NULL,'Panama',1,0),(179,'PG',NULL,'Papouasie-Nouvelle-Guinée',1,0),(180,'PY',NULL,'Paraguay',1,0),(181,'PE',NULL,'Peru',1,0),(182,'PH',NULL,'Philippines',1,0),(183,'PN',NULL,'Iles Pitcairn',1,0),(184,'PL',NULL,'Pologne',1,0),(185,'PR',NULL,'Porto Rico',1,0),(186,'QA',NULL,'Qatar',1,0),(188,'RO',NULL,'Roumanie',1,0),(189,'RW',NULL,'Rwanda',1,0),(190,'SH',NULL,'Sainte-Hélène',1,0),(191,'KN',NULL,'Saint-Christophe-et-Niévès',1,0),(192,'LC',NULL,'Sainte-Lucie',1,0),(193,'PM',NULL,'Saint-Pierre-et-Miquelon',1,0),(194,'VC',NULL,'Saint-Vincent-et-les-Grenadines',1,0),(195,'WS',NULL,'Samoa',1,0),(196,'SM',NULL,'Saint-Marin',1,0),(197,'ST',NULL,'Sao Tomé-et-Principe',1,0),(198,'RS',NULL,'Serbie',1,0),(199,'SC',NULL,'Seychelles',1,0),(200,'SL',NULL,'Sierra Leone',1,0),(201,'SK',NULL,'Slovaquie',1,0),(202,'SI',NULL,'Slovénie',1,0),(203,'SB',NULL,'Iles Salomon',1,0),(204,'SO',NULL,'Somalie',1,0),(205,'ZA',NULL,'Afrique du Sud',1,0),(206,'GS',NULL,'Iles Géorgie du Sud et Sandwich du Sud',1,0),(207,'LK',NULL,'Sri Lanka',1,0),(208,'SD',NULL,'Soudan',1,0),(209,'SR',NULL,'Suriname',1,0),(210,'SJ',NULL,'Iles Svalbard et Jan Mayen',1,0),(211,'SZ',NULL,'Swaziland',1,0),(212,'SY',NULL,'Syrie',1,0),(213,'TW',NULL,'Taïwan',1,0),(214,'TJ',NULL,'Tadjikistan',1,0),(215,'TZ',NULL,'Tanzanie',1,0),(216,'TH',NULL,'Thaïlande',1,0),(217,'TL',NULL,'Timor Oriental',1,0),(218,'TK',NULL,'Tokélaou',1,0),(219,'TO',NULL,'Tonga',1,0),(220,'TT',NULL,'Trinité-et-Tobago',1,0),(221,'TR',NULL,'Turquie',1,0),(222,'TM',NULL,'Turkménistan',1,0),(223,'TC',NULL,'Iles Turks-et-Caicos',1,0),(224,'TV',NULL,'Tuvalu',1,0),(225,'UG',NULL,'Ouganda',1,0),(226,'UA',NULL,'Ukraine',1,0),(227,'AE',NULL,'Émirats arabes unis',1,0),(228,'UM',NULL,'Iles mineures éloignées des États-Unis',1,0),(229,'UY',NULL,'Uruguay',1,0),(230,'UZ',NULL,'Ouzbékistan',1,0),(231,'VU',NULL,'Vanuatu',1,0),(232,'VE',NULL,'Vénézuela',1,0),(233,'VN',NULL,'Viêt Nam',1,0),(234,'VG',NULL,'Iles Vierges britanniques',1,0),(235,'VI',NULL,'Iles Vierges américaines',1,0),(236,'WF',NULL,'Wallis-et-Futuna',1,0),(237,'EH',NULL,'Sahara occidental',1,0),(238,'YE',NULL,'Yémen',1,0),(239,'ZM',NULL,'Zambie',1,0),(240,'ZW',NULL,'Zimbabwe',1,0),(241,'GG',NULL,'Guernesey',1,0),(242,'IM',NULL,'Ile de Man',1,0),(243,'JE',NULL,'Jersey',1,0),(244,'ME',NULL,'Monténégro',1,0),(245,'BL',NULL,'Saint-Barthélemy',1,0),(246,'MF',NULL,'Saint-Martin',1,0);
/*!40000 ALTER TABLE `doli_c_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_currencies`
--

LOCK TABLES `doli_c_currencies` WRITE;
/*!40000 ALTER TABLE `doli_c_currencies` DISABLE KEYS */;
INSERT INTO `doli_c_currencies` VALUES ('AED','United Arab Emirates Dirham',NULL,1),('AFN','Afghanistan Afghani','[1547]',1),('ALL','Albania Lek','[76,101,107]',1),('ANG','Netherlands Antilles Guilder','[402]',1),('ARP','Pesos argentins',NULL,0),('ARS','Argentino Peso','[36]',1),('ATS','Shiliing autrichiens',NULL,0),('AUD','Australia Dollar','[36]',1),('AWG','Aruba Guilder','[402]',1),('AZN','Azerbaijan New Manat','[1084,1072,1085]',1),('BAM','Bosnia and Herzegovina Convertible Marka','[75,77]',1),('BBD','Barbados Dollar','[36]',1),('BEF','Francs belges',NULL,0),('BGN','Bulgaria Lev','[1083,1074]',1),('BMD','Bermuda Dollar','[36]',1),('BND','Brunei Darussalam Dollar','[36]',1),('BOB','Bolivia Boliviano','[36,98]',1),('BRL','Brazil Real','[82,36]',1),('BSD','Bahamas Dollar','[36]',1),('BWP','Botswana Pula','[80]',1),('BYR','Belarus Ruble','[112,46]',1),('BZD','Belize Dollar','[66,90,36]',1),('CAD','Canada Dollar','[36]',1),('CHF','Switzerland Franc','[67,72,70]',1),('CLP','Chile Peso','[36]',1),('CNY','China Yuan Renminbi','[165]',1),('COP','Colombia Peso','[36]',1),('CRC','Costa Rica Colon','[8353]',1),('CUP','Cuba Peso','[8369]',1),('CZK','Czech Republic Koruna','[75,269]',1),('DEM','Deutsch mark',NULL,0),('DKK','Denmark Krone','[107,114]',1),('DOP','Dominican Republic Peso','[82,68,36]',1),('DZD','Algeria Dinar',NULL,1),('EEK','Estonia Kroon','[107,114]',1),('EGP','Egypt Pound','[163]',1),('ESP','Pesete',NULL,0),('EUR','Euro Member Countries','[8364]',1),('FIM','Mark finlandais',NULL,0),('FJD','Fiji Dollar','[36]',1),('FKP','Falkland Islands (Malvinas) Pound','[163]',1),('FRF','Francs francais',NULL,0),('GBP','United Kingdom Pound','[163]',1),('GGP','Guernsey Pound','[163]',1),('GHC','Ghana Cedis','[162]',1),('GIP','Gibraltar Pound','[163]',1),('GRD','Drachme (grece)',NULL,0),('GTQ','Guatemala Quetzal','[81]',1),('GYD','Guyana Dollar','[36]',1),('HKD','Hong Kong Dollar','[36]',1),('HNL','Honduras Lempira','[76]',1),('HRK','Croatia Kuna','[107,110]',1),('HUF','Hungary Forint','[70,116]',1),('IDR','Indonesia Rupiah','[82,112]',1),('IEP','Livres irlandaises',NULL,0),('ILS','Israel Shekel','[8362]',1),('IMP','Isle of Man Pound','[163]',1),('INR','India Rupee',NULL,1),('IRR','Iran Rial','[65020]',1),('ISK','Iceland Krona','[107,114]',1),('ITL','Lires',NULL,0),('JEP','Jersey Pound','[163]',1),('JMD','Jamaica Dollar','[74,36]',1),('JPY','Japan Yen','[165]',1),('KES','Kenya Shilling',NULL,1),('KGS','Kyrgyzstan Som','[1083,1074]',1),('KHR','Cambodia Riel','[6107]',1),('KPW','Korea (North) Won','[8361]',1),('KRW','Korea (South) Won','[8361]',1),('KYD','Cayman Islands Dollar','[36]',1),('KZT','Kazakhstan Tenge','[1083,1074]',1),('LAK','Laos Kip','[8365]',1),('LBP','Lebanon Pound','[163]',1),('LKR','Sri Lanka Rupee','[8360]',1),('LRD','Liberia Dollar','[36]',1),('LTL','Lithuania Litas','[76,116]',1),('LUF','Francs luxembourgeois',NULL,0),('LVL','Latvia Lat','[76,115]',1),('MAD','Morocco Dirham',NULL,1),('MKD','Macedonia Denar','[1076,1077,1085]',1),('MNT','Mongolia Tughrik','[8366]',1),('MRO','Mauritania Ouguiya',NULL,1),('MUR','Mauritius Rupee','[8360]',1),('MXN','Mexico Peso','[36]',1),('MXP','Pesos Mexicans',NULL,0),('MYR','Malaysia Ringgit','[82,77]',1),('MZN','Mozambique Metical','[77,84]',1),('NAD','Namibia Dollar','[36]',1),('NGN','Nigeria Naira','[8358]',1),('NIO','Nicaragua Cordoba','[67,36]',1),('NLG','Florins',NULL,0),('NOK','Norway Krone','[107,114]',1),('NPR','Nepal Rupee','[8360]',1),('NZD','New Zealand Dollar','[36]',1),('OMR','Oman Rial','[65020]',1),('PAB','Panama Balboa','[66,47,46]',1),('PEN','Peru Nuevo Sol','[83,47,46]',1),('PHP','Philippines Peso','[8369]',1),('PKR','Pakistan Rupee','[8360]',1),('PLN','Poland Zloty','[122,322]',1),('PTE','Escudos',NULL,0),('PYG','Paraguay Guarani','[71,115]',1),('QAR','Qatar Riyal','[65020]',1),('RON','Romania New Leu','[108,101,105]',1),('RSD','Serbia Dinar','[1044,1080,1085,46]',1),('RUB','Russia Ruble','[1088,1091,1073]',1),('SAR','Saudi Arabia Riyal','[65020]',1),('SBD','Solomon Islands Dollar','[36]',1),('SCR','Seychelles Rupee','[8360]',1),('SEK','Sweden Krona','[107,114]',1),('SGD','Singapore Dollar','[36]',1),('SHP','Saint Helena Pound','[163]',1),('SKK','Couronnes slovaques',NULL,0),('SOS','Somalia Shilling','[83]',1),('SRD','Suriname Dollar','[36]',1),('SUR','Rouble',NULL,0),('SVC','El Salvador Colon','[36]',1),('SYP','Syria Pound','[163]',1),('THB','Thailand Baht','[3647]',1),('TND','Tunisia Dinar',NULL,1),('TRL','Turkey Lira','[84,76]',1),('TRY','Turkey Lira','[8356]',1),('TTD','Trinidad and Tobago Dollar','[84,84,36]',1),('TVD','Tuvalu Dollar','[36]',1),('TWD','Taiwan New Dollar','[78,84,36]',1),('UAH','Ukraine Hryvna','[8372]',1),('USD','United States Dollar','[36]',1),('UYU','Uruguay Peso','[36,85]',1),('UZS','Uzbekistan Som','[1083,1074]',1),('VEF','Venezuela Bolivar Fuerte','[66,115]',1),('VND','Viet Nam Dong','[8363]',1),('XAF','Communaute Financiere Africaine (BEAC) CFA Franc',NULL,1),('XCD','East Caribbean Dollar','[36]',1),('XEU','Ecus',NULL,0),('XOF','Communaute Financiere Africaine (BCEAO) Franc',NULL,1),('YER','Yemen Rial','[65020]',1),('ZAR','South Africa Rand','[82]',1),('ZWD','Zimbabwe Dollar','[90,36]',1);
/*!40000 ALTER TABLE `doli_c_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_departements`
--

LOCK TABLES `doli_c_departements` WRITE;
/*!40000 ALTER TABLE `doli_c_departements` DISABLE KEYS */;
INSERT INTO `doli_c_departements` VALUES (1,'0',0,'0',0,'-','-',1),(2,'01',82,'01053',5,'AIN','Ain',1),(3,'02',22,'02408',5,'AISNE','Aisne',1),(4,'03',83,'03190',5,'ALLIER','Allier',1),(5,'04',93,'04070',4,'ALPES-DE-HAUTE-PROVENCE','Alpes-de-Haute-Provence',1),(6,'05',93,'05061',4,'HAUTES-ALPES','Hautes-Alpes',1),(7,'06',93,'06088',4,'ALPES-MARITIMES','Alpes-Maritimes',1),(8,'07',82,'07186',5,'ARDECHE','Ardèche',1),(9,'08',21,'08105',4,'ARDENNES','Ardennes',1),(10,'09',73,'09122',5,'ARIEGE','Ariège',1),(11,'10',21,'10387',5,'AUBE','Aube',1),(12,'11',91,'11069',5,'AUDE','Aude',1),(13,'12',73,'12202',5,'AVEYRON','Aveyron',1),(14,'13',93,'13055',4,'BOUCHES-DU-RHONE','Bouches-du-Rhône',1),(15,'14',25,'14118',2,'CALVADOS','Calvados',1),(16,'15',83,'15014',2,'CANTAL','Cantal',1),(17,'16',54,'16015',3,'CHARENTE','Charente',1),(18,'17',54,'17300',3,'CHARENTE-MARITIME','Charente-Maritime',1),(19,'18',24,'18033',2,'CHER','Cher',1),(20,'19',74,'19272',3,'CORREZE','Corrèze',1),(21,'2A',94,'2A004',3,'CORSE-DU-SUD','Corse-du-Sud',1),(22,'2B',94,'2B033',3,'HAUTE-CORSE','Haute-Corse',1),(23,'21',26,'21231',3,'COTE-D OR','Côte-d Or',1),(24,'22',53,'22278',4,'COTES-D ARMOR','Côtes-d Armor',1),(25,'23',74,'23096',3,'CREUSE','Creuse',1),(26,'24',72,'24322',3,'DORDOGNE','Dordogne',1),(27,'25',43,'25056',2,'DOUBS','Doubs',1),(28,'26',82,'26362',3,'DROME','Drôme',1),(29,'27',23,'27229',5,'EURE','Eure',1),(30,'28',24,'28085',1,'EURE-ET-LOIR','Eure-et-Loir',1),(31,'29',53,'29232',2,'FINISTERE','Finistère',1),(32,'30',91,'30189',2,'GARD','Gard',1),(33,'31',73,'31555',3,'HAUTE-GARONNE','Haute-Garonne',1),(34,'32',73,'32013',2,'GERS','Gers',1),(35,'33',72,'33063',3,'GIRONDE','Gironde',1),(36,'34',91,'34172',5,'HERAULT','Hérault',1),(37,'35',53,'35238',1,'ILLE-ET-VILAINE','Ille-et-Vilaine',1),(38,'36',24,'36044',5,'INDRE','Indre',1),(39,'37',24,'37261',1,'INDRE-ET-LOIRE','Indre-et-Loire',1),(40,'38',82,'38185',5,'ISERE','Isère',1),(41,'39',43,'39300',2,'JURA','Jura',1),(42,'40',72,'40192',4,'LANDES','Landes',1),(43,'41',24,'41018',0,'LOIR-ET-CHER','Loir-et-Cher',1),(44,'42',82,'42218',3,'LOIRE','Loire',1),(45,'43',83,'43157',3,'HAUTE-LOIRE','Haute-Loire',1),(46,'44',52,'44109',3,'LOIRE-ATLANTIQUE','Loire-Atlantique',1),(47,'45',24,'45234',2,'LOIRET','Loiret',1),(48,'46',73,'46042',2,'LOT','Lot',1),(49,'47',72,'47001',0,'LOT-ET-GARONNE','Lot-et-Garonne',1),(50,'48',91,'48095',3,'LOZERE','Lozère',1),(51,'49',52,'49007',0,'MAINE-ET-LOIRE','Maine-et-Loire',1),(52,'50',25,'50502',3,'MANCHE','Manche',1),(53,'51',21,'51108',3,'MARNE','Marne',1),(54,'52',21,'52121',3,'HAUTE-MARNE','Haute-Marne',1),(55,'53',52,'53130',3,'MAYENNE','Mayenne',1),(56,'54',41,'54395',0,'MEURTHE-ET-MOSELLE','Meurthe-et-Moselle',1),(57,'55',41,'55029',3,'MEUSE','Meuse',1),(58,'56',53,'56260',2,'MORBIHAN','Morbihan',1),(59,'57',41,'57463',3,'MOSELLE','Moselle',1),(60,'58',26,'58194',3,'NIEVRE','Nièvre',1),(61,'59',31,'59350',2,'NORD','Nord',1),(62,'60',22,'60057',5,'OISE','Oise',1),(63,'61',25,'61001',5,'ORNE','Orne',1),(64,'62',31,'62041',2,'PAS-DE-CALAIS','Pas-de-Calais',1),(65,'63',83,'63113',2,'PUY-DE-DOME','Puy-de-Dôme',1),(66,'64',72,'64445',4,'PYRENEES-ATLANTIQUES','Pyrénées-Atlantiques',1),(67,'65',73,'65440',4,'HAUTES-PYRENEES','Hautes-Pyrénées',1),(68,'66',91,'66136',4,'PYRENEES-ORIENTALES','Pyrénées-Orientales',1),(69,'67',42,'67482',2,'BAS-RHIN','Bas-Rhin',1),(70,'68',42,'68066',2,'HAUT-RHIN','Haut-Rhin',1),(71,'69',82,'69123',2,'RHONE','Rhône',1),(72,'70',43,'70550',3,'HAUTE-SAONE','Haute-Saône',1),(73,'71',26,'71270',0,'SAONE-ET-LOIRE','Saône-et-Loire',1),(74,'72',52,'72181',3,'SARTHE','Sarthe',1),(75,'73',82,'73065',3,'SAVOIE','Savoie',1),(76,'74',82,'74010',3,'HAUTE-SAVOIE','Haute-Savoie',1),(77,'75',11,'75056',0,'PARIS','Paris',1),(78,'76',23,'76540',3,'SEINE-MARITIME','Seine-Maritime',1),(79,'77',11,'77288',0,'SEINE-ET-MARNE','Seine-et-Marne',1),(80,'78',11,'78646',4,'YVELINES','Yvelines',1),(81,'79',54,'79191',4,'DEUX-SEVRES','Deux-Sèvres',1),(82,'80',22,'80021',3,'SOMME','Somme',1),(83,'81',73,'81004',2,'TARN','Tarn',1),(84,'82',73,'82121',0,'TARN-ET-GARONNE','Tarn-et-Garonne',1),(85,'83',93,'83137',2,'VAR','Var',1),(86,'84',93,'84007',0,'VAUCLUSE','Vaucluse',1),(87,'85',52,'85191',3,'VENDEE','Vendée',1),(88,'86',54,'86194',3,'VIENNE','Vienne',1),(89,'87',74,'87085',3,'HAUTE-VIENNE','Haute-Vienne',1),(90,'88',41,'88160',4,'VOSGES','Vosges',1),(91,'89',26,'89024',5,'YONNE','Yonne',1),(92,'90',43,'90010',0,'TERRITOIRE DE BELFORT','Territoire de Belfort',1),(93,'91',11,'91228',5,'ESSONNE','Essonne',1),(94,'92',11,'92050',4,'HAUTS-DE-SEINE','Hauts-de-Seine',1),(95,'93',11,'93008',3,'SEINE-SAINT-DENIS','Seine-Saint-Denis',1),(96,'94',11,'94028',2,'VAL-DE-MARNE','Val-de-Marne',1),(97,'95',11,'95500',2,'VAL-D OISE','Val-d Oise',1),(98,'971',1,'97105',3,'GUADELOUPE','Guadeloupe',1),(99,'972',2,'97209',3,'MARTINIQUE','Martinique',1),(100,'973',3,'97302',3,'GUYANE','Guyane',1),(101,'974',4,'97411',3,'REUNION','Réunion',1),(103,'01',201,'',1,'ANVERS','Anvers',1),(104,'02',203,'',3,'BRUXELLES-CAPITALE','Bruxelles-Capitale',1),(105,'03',202,'',2,'BRABANT-WALLON','Brabant-Wallon',1),(106,'04',201,'',1,'BRABANT-FLAMAND','Brabant-Flamand',1),(107,'05',201,'',1,'FLANDRE-OCCIDENTALE','Flandre-Occidentale',1),(108,'06',201,'',1,'FLANDRE-ORIENTALE','Flandre-Orientale',1),(109,'07',202,'',2,'HAINAUT','Hainaut',1),(110,'08',201,'',2,'LIEGE','Liège',1),(111,'09',202,'',1,'LIMBOURG','Limbourg',1),(112,'10',202,'',2,'LUXEMBOURG','Luxembourg',1),(113,'11',201,'',2,'NAMUR','Namur',1),(114,'AG',315,NULL,NULL,NULL,'AGRIGENTO',1),(115,'AL',312,NULL,NULL,NULL,'ALESSANDRIA',1),(116,'AN',310,NULL,NULL,NULL,'ANCONA',1),(117,'AO',319,NULL,NULL,NULL,'AOSTA',1),(118,'AR',316,NULL,NULL,NULL,'AREZZO',1),(119,'AP',310,NULL,NULL,NULL,'ASCOLI PICENO',1),(120,'AT',312,NULL,NULL,NULL,'ASTI',1),(121,'AV',304,NULL,NULL,NULL,'AVELLINO',1),(122,'BA',313,NULL,NULL,NULL,'BARI',1),(123,'BT',313,NULL,NULL,NULL,'BARLETTA-ANDRIA-TRANI',1),(124,'BL',320,NULL,NULL,NULL,'BELLUNO',1),(125,'BN',304,NULL,NULL,NULL,'BENEVENTO',1),(126,'BG',309,NULL,NULL,NULL,'BERGAMO',1),(127,'BI',312,NULL,NULL,NULL,'BIELLA',1),(128,'BO',305,NULL,NULL,NULL,'BOLOGNA',1),(129,'BZ',317,NULL,NULL,NULL,'BOLZANO',1),(130,'BS',309,NULL,NULL,NULL,'BRESCIA',1),(131,'BR',313,NULL,NULL,NULL,'BRINDISI',1),(132,'CA',314,NULL,NULL,NULL,'CAGLIARI',1),(133,'CL',315,NULL,NULL,NULL,'CALTANISSETTA',1),(134,'CB',311,NULL,NULL,NULL,'CAMPOBASSO',1),(135,'CI',314,NULL,NULL,NULL,'CARBONIA-IGLESIAS',1),(136,'CE',304,NULL,NULL,NULL,'CASERTA',1),(137,'CT',315,NULL,NULL,NULL,'CATANIA',1),(138,'CZ',303,NULL,NULL,NULL,'CATANZARO',1),(139,'CH',301,NULL,NULL,NULL,'CHIETI',1),(140,'CO',309,NULL,NULL,NULL,'COMO',1),(141,'CS',303,NULL,NULL,NULL,'COSENZA',1),(142,'CR',309,NULL,NULL,NULL,'CREMONA',1),(143,'KR',303,NULL,NULL,NULL,'CROTONE',1),(144,'CN',312,NULL,NULL,NULL,'CUNEO',1),(145,'EN',315,NULL,NULL,NULL,'ENNA',1),(146,'FM',310,NULL,NULL,NULL,'FERMO',1),(147,'FE',305,NULL,NULL,NULL,'FERRARA',1),(148,'FI',316,NULL,NULL,NULL,'FIRENZE',1),(149,'FG',313,NULL,NULL,NULL,'FOGGIA',1),(150,'FC',305,NULL,NULL,NULL,'FORLI-CESENA',1),(151,'FR',307,NULL,NULL,NULL,'FROSINONE',1),(152,'GE',308,NULL,NULL,NULL,'GENOVA',1),(153,'GO',306,NULL,NULL,NULL,'GORIZIA',1),(154,'GR',316,NULL,NULL,NULL,'GROSSETO',1),(155,'IM',308,NULL,NULL,NULL,'IMPERIA',1),(156,'IS',311,NULL,NULL,NULL,'ISERNIA',1),(157,'SP',308,NULL,NULL,NULL,'LA SPEZIA',1),(158,'AQ',301,NULL,NULL,NULL,'L AQUILA',1),(159,'LT',307,NULL,NULL,NULL,'LATINA',1),(160,'LE',313,NULL,NULL,NULL,'LECCE',1),(161,'LC',309,NULL,NULL,NULL,'LECCO',1),(162,'LI',314,NULL,NULL,NULL,'LIVORNO',1),(163,'LO',309,NULL,NULL,NULL,'LODI',1),(164,'LU',316,NULL,NULL,NULL,'LUCCA',1),(165,'MC',310,NULL,NULL,NULL,'MACERATA',1),(166,'MN',309,NULL,NULL,NULL,'MANTOVA',1),(167,'MS',316,NULL,NULL,NULL,'MASSA-CARRARA',1),(168,'MT',302,NULL,NULL,NULL,'MATERA',1),(169,'VS',314,NULL,NULL,NULL,'MEDIO CAMPIDANO',1),(170,'ME',315,NULL,NULL,NULL,'MESSINA',1),(171,'MI',309,NULL,NULL,NULL,'MILANO',1),(172,'MB',309,NULL,NULL,NULL,'MONZA e BRIANZA',1),(173,'MO',305,NULL,NULL,NULL,'MODENA',1),(174,'NA',304,NULL,NULL,NULL,'NAPOLI',1),(175,'NO',312,NULL,NULL,NULL,'NOVARA',1),(176,'NU',314,NULL,NULL,NULL,'NUORO',1),(177,'OG',314,NULL,NULL,NULL,'OGLIASTRA',1),(178,'OT',314,NULL,NULL,NULL,'OLBIA-TEMPIO',1),(179,'OR',314,NULL,NULL,NULL,'ORISTANO',1),(180,'PD',320,NULL,NULL,NULL,'PADOVA',1),(181,'PA',315,NULL,NULL,NULL,'PALERMO',1),(182,'PR',305,NULL,NULL,NULL,'PARMA',1),(183,'PV',309,NULL,NULL,NULL,'PAVIA',1),(184,'PG',318,NULL,NULL,NULL,'PERUGIA',1),(185,'PU',310,NULL,NULL,NULL,'PESARO e URBINO',1),(186,'PE',301,NULL,NULL,NULL,'PESCARA',1),(187,'PC',305,NULL,NULL,NULL,'PIACENZA',1),(188,'PI',316,NULL,NULL,NULL,'PISA',1),(189,'PT',316,NULL,NULL,NULL,'PISTOIA',1),(190,'PN',306,NULL,NULL,NULL,'PORDENONE',1),(191,'PZ',302,NULL,NULL,NULL,'POTENZA',1),(192,'PO',316,NULL,NULL,NULL,'PRATO',1),(193,'RG',315,NULL,NULL,NULL,'RAGUSA',1),(194,'RA',305,NULL,NULL,NULL,'RAVENNA',1),(195,'RC',303,NULL,NULL,NULL,'REGGIO CALABRIA',1),(196,'RE',305,NULL,NULL,NULL,'REGGIO NELL EMILIA',1),(197,'RI',307,NULL,NULL,NULL,'RIETI',1),(198,'RN',305,NULL,NULL,NULL,'RIMINI',1),(199,'RM',307,NULL,NULL,NULL,'ROMA',1),(200,'RO',320,NULL,NULL,NULL,'ROVIGO',1),(201,'SA',304,NULL,NULL,NULL,'SALERNO',1),(202,'SS',314,NULL,NULL,NULL,'SASSARI',1),(203,'SV',308,NULL,NULL,NULL,'SAVONA',1),(204,'SI',316,NULL,NULL,NULL,'SIENA',1),(205,'SR',315,NULL,NULL,NULL,'SIRACUSA',1),(206,'SO',309,NULL,NULL,NULL,'SONDRIO',1),(207,'TA',313,NULL,NULL,NULL,'TARANTO',1),(208,'TE',301,NULL,NULL,NULL,'TERAMO',1),(209,'TR',318,NULL,NULL,NULL,'TERNI',1),(210,'TO',312,NULL,NULL,NULL,'TORINO',1),(211,'TP',315,NULL,NULL,NULL,'TRAPANI',1),(212,'TN',317,NULL,NULL,NULL,'TRENTO',1),(213,'TV',320,NULL,NULL,NULL,'TREVISO',1),(214,'TS',306,NULL,NULL,NULL,'TRIESTE',1),(215,'UD',306,NULL,NULL,NULL,'UDINE',1),(216,'VA',309,NULL,NULL,NULL,'VARESE',1),(217,'VE',320,NULL,NULL,NULL,'VENEZIA',1),(218,'VB',312,NULL,NULL,NULL,'VERBANO-CUSIO-OSSOLA',1),(219,'VC',312,NULL,NULL,NULL,'VERCELLI',1),(220,'VR',320,NULL,NULL,NULL,'VERONA',1),(221,'VV',303,NULL,NULL,NULL,'VIBO VALENTIA',1),(222,'VI',320,NULL,NULL,NULL,'VICENZA',1),(223,'VT',307,NULL,NULL,NULL,'VITERBO',1),(224,'NSW',2801,'',1,'','New South Wales',1),(225,'VIC',2801,'',1,'','Victoria',1),(226,'QLD',2801,'',1,'','Queensland',1),(227,'SA',2801,'',1,'','South Australia',1),(228,'ACT',2801,'',1,'','Australia Capital Territory',1),(229,'TAS',2801,'',1,'','Tasmania',1),(230,'WA',2801,'',1,'','Western Australia',1),(231,'NT',2801,'',1,'','Northern Territory',1),(232,'ON',1401,'',1,'','Ontario',1),(233,'QC',1401,'',1,'','Quebec',1),(234,'NS',1401,'',1,'','Nova Scotia',1),(235,'NB',1401,'',1,'','New Brunswick',1),(236,'MB',1401,'',1,'','Manitoba',1),(237,'BC',1401,'',1,'','British Columbia',1),(238,'PE',1401,'',1,'','Prince Edward Island',1),(239,'SK',1401,'',1,'','Saskatchewan',1),(240,'AB',1401,'',1,'','Alberta',1),(241,'NL',1401,'',1,'','Newfoundland and Labrador',1),(242,'VI',419,'',19,'ALAVA','Álava',1),(243,'AB',404,'',4,'ALBACETE','Albacete',1),(244,'A',411,'',11,'ALICANTE','Alicante',1),(245,'AL',401,'',1,'ALMERIA','Almería',1),(246,'AV',403,'',3,'AVILA','Avila',1),(247,'BA',412,'',12,'BADAJOZ','Badajoz',1),(248,'PM',414,'',14,'ISLAS BALEARES','Islas Baleares',1),(249,'B',406,'',6,'BARCELONA','Barcelona',1),(250,'BU',403,'',8,'BURGOS','Burgos',1),(251,'CC',412,'',12,'CACERES','Cáceres',1),(252,'CA',401,'',1,'CADIZ','Cádiz',1),(253,'CS',411,'',11,'CASTELLON','Castellón',1),(254,'CR',404,'',4,'CIUDAD REAL','Ciudad Real',1),(255,'CO',401,'',1,'CORDOBA','Córdoba',1),(256,'C',413,'',13,'LA CORUÑA','La Coruña',1),(257,'CU',404,'',4,'CUENCA','Cuenca',1),(258,'GI',406,'',6,'GERONA','Gerona',1),(259,'GR',401,'',1,'GRANADA','Granada',1),(260,'GU',404,'',4,'GUADALAJARA','Guadalajara',1),(261,'SS',419,'',19,'GUIPUZCOA','Guipúzcoa',1),(262,'H',401,'',1,'HUELVA','Huelva',1),(263,'HU',402,'',2,'HUESCA','Huesca',1),(264,'J',401,'',1,'JAEN','Jaén',1),(265,'LE',403,'',3,'LEON','León',1),(266,'L',406,'',6,'LERIDA','Lérida',1),(267,'LO',415,'',15,'LA RIOJA','La Rioja',1),(268,'LU',413,'',13,'LUGO','Lugo',1),(269,'M',416,'',16,'MADRID','Madrid',1),(270,'MA',401,'',1,'MALAGA','Málaga',1),(271,'MU',417,'',17,'MURCIA','Murcia',1),(272,'NA',408,'',8,'NAVARRA','Navarra',1),(273,'OR',413,'',13,'ORENSE','Orense',1),(274,'O',418,'',18,'ASTURIAS','Asturias',1),(275,'P',403,'',3,'PALENCIA','Palencia',1),(276,'GC',405,'',5,'LAS PALMAS','Las Palmas',1),(277,'PO',413,'',13,'PONTEVEDRA','Pontevedra',1),(278,'SA',403,'',3,'SALAMANCA','Salamanca',1),(279,'TF',405,'',5,'STA. CRUZ DE TENERIFE','Sta. Cruz de Tenerife',1),(280,'S',410,'',10,'CANTABRIA','Cantabria',1),(281,'SG',403,'',3,'SEGOVIA','Segovia',1),(282,'SE',401,'',1,'SEVILLA','Sevilla',1),(283,'SO',403,'',3,'SORIA','Soria',1),(284,'T',406,'',6,'TARRAGONA','Tarragona',1),(285,'TE',402,'',2,'TERUEL','Teruel',1),(286,'TO',404,'',5,'TOLEDO','Toledo',1),(287,'V',411,'',11,'VALENCIA','Valencia',1),(288,'VA',403,'',3,'VALLADOLID','Valladolid',1),(289,'BI',419,'',19,'VIZCAYA','Vizcaya',1),(290,'ZA',403,'',3,'ZAMORA','Zamora',1),(291,'Z',402,'',1,'ZARAGOZA','Zaragoza',1),(292,'CE',407,'',7,'CEUTA','Ceuta',1),(293,'ML',409,'',9,'MELILLA','Melilla',1),(295,'BW',501,NULL,NULL,'BADEN-WÜRTTEMBERG','Baden-Württemberg',1),(296,'BY',501,NULL,NULL,'BAYERN','Bayern',1),(297,'BE',501,NULL,NULL,'BERLIN','Berlin',1),(298,'BB',501,NULL,NULL,'BRANDENBURG','Brandenburg',1),(299,'HB',501,NULL,NULL,'BREMEN','Bremen',1),(300,'HH',501,NULL,NULL,'HAMBURG','Hamburg',1),(301,'HE',501,NULL,NULL,'HESSEN','Hessen',1),(302,'MV',501,NULL,NULL,'MECKLENBURG-VORPOMMERN','Mecklenburg-Vorpommern',1),(303,'NI',501,NULL,NULL,'NIEDERSACHSEN','Niedersachsen',1),(304,'NW',501,NULL,NULL,'NORDRHEIN-WESTFALEN','Nordrhein-Westfalen',1),(305,'RP',501,NULL,NULL,'RHEINLAND-PFALZ','Rheinland-Pfalz',1),(306,'SL',501,NULL,NULL,'SAARLAND','Saarland',1),(307,'SN',501,NULL,NULL,'SACHSEN','Sachsen',1),(308,'ST',501,NULL,NULL,'SACHSEN-ANHALT','Sachsen-Anhalt',1),(309,'SH',501,NULL,NULL,'SCHLESWIG-HOLSTEIN','Schleswig-Holstein',1),(310,'TH',501,NULL,NULL,'THÜRINGEN','Thüringen',1),(311,'66',10201,'',0,'','?????',1),(312,'67',10205,'',0,'','?????',1),(313,'01',10205,'',0,'','?????',1),(314,'02',10205,'',0,'','?????',1),(315,'03',10205,'',0,'','??????',1),(316,'04',10205,'',0,'','?????',1),(317,'05',10205,'',0,'','??????',1),(318,'06',10203,'',0,'','??????',1),(319,'07',10203,'',0,'','???????????',1),(320,'08',10203,'',0,'','??????',1),(321,'09',10203,'',0,'','?????',1),(322,'10',10203,'',0,'','??????',1),(323,'11',10203,'',0,'','??????',1),(324,'12',10203,'',0,'','?????????',1),(325,'13',10206,'',0,'','????',1),(326,'14',10206,'',0,'','?????????',1),(327,'15',10206,'',0,'','????????',1),(328,'16',10206,'',0,'','???????',1),(329,'17',10213,'',0,'','???????',1),(330,'18',10213,'',0,'','????????',1),(331,'19',10213,'',0,'','??????',1),(332,'20',10213,'',0,'','???????',1),(333,'21',10212,'',0,'','????????',1),(334,'22',10212,'',0,'','??????',1),(335,'23',10212,'',0,'','????????',1),(336,'24',10212,'',0,'','???????',1),(337,'25',10212,'',0,'','????????',1),(338,'26',10212,'',0,'','???????',1),(339,'27',10202,'',0,'','??????',1),(340,'28',10202,'',0,'','?????????',1),(341,'29',10202,'',0,'','????????',1),(342,'30',10202,'',0,'','??????',1),(343,'31',10209,'',0,'','????????',1),(344,'32',10209,'',0,'','???????',1),(345,'33',10209,'',0,'','????????',1),(346,'34',10209,'',0,'','???????',1),(347,'35',10209,'',0,'','????????',1),(348,'36',10211,'',0,'','???????????????',1),(349,'37',10211,'',0,'','?????',1),(350,'38',10211,'',0,'','?????',1),(351,'39',10207,'',0,'','????????',1),(352,'40',10207,'',0,'','???????',1),(353,'41',10207,'',0,'','??????????',1),(354,'42',10207,'',0,'','?????',1),(355,'43',10207,'',0,'','???????',1),(356,'44',10208,'',0,'','??????',1),(357,'45',10208,'',0,'','??????',1),(358,'46',10208,'',0,'','??????',1),(359,'47',10208,'',0,'','?????',1),(360,'48',10208,'',0,'','????',1),(361,'49',10210,'',0,'','??????',1),(362,'50',10210,'',0,'','????',1),(363,'51',10210,'',0,'','????????',1),(364,'52',10210,'',0,'','????????',1),(365,'53',10210,'',0,'','???-??????',1),(366,'54',10210,'',0,'','??',1),(367,'55',10210,'',0,'','?????',1),(368,'56',10210,'',0,'','???????',1),(369,'57',10210,'',0,'','?????',1),(370,'58',10210,'',0,'','?????',1),(371,'59',10210,'',0,'','?????',1),(372,'60',10210,'',0,'','?????',1),(373,'61',10210,'',0,'','?????',1),(374,'62',10204,'',0,'','????????',1),(375,'63',10204,'',0,'','??????',1),(376,'64',10204,'',0,'','???????',1),(377,'65',10204,'',0,'','?????',1),(378,'AG',601,NULL,NULL,'ARGOVIE','Argovie',1),(379,'AI',601,NULL,NULL,'APPENZELL RHODES INTERIEURES','Appenzell Rhodes intérieures',1),(380,'AR',601,NULL,NULL,'APPENZELL RHODES EXTERIEURES','Appenzell Rhodes extérieures',1),(381,'BE',601,NULL,NULL,'BERNE','Berne',1),(382,'BL',601,NULL,NULL,'BALE CAMPAGNE','Bâle Campagne',1),(383,'BS',601,NULL,NULL,'BALE VILLE','Bâle Ville',1),(384,'FR',601,NULL,NULL,'FRIBOURG','Fribourg',1),(385,'GE',601,NULL,NULL,'GENEVE','Genève',1),(386,'GL',601,NULL,NULL,'GLARIS','Glaris',1),(387,'GR',601,NULL,NULL,'GRISONS','Grisons',1),(388,'JU',601,NULL,NULL,'JURA','Jura',1),(389,'LU',601,NULL,NULL,'LUCERNE','Lucerne',1),(390,'NE',601,NULL,NULL,'NEUCHATEL','Neuchâtel',1),(391,'NW',601,NULL,NULL,'NIDWALD','Nidwald',1),(392,'OW',601,NULL,NULL,'OBWALD','Obwald',1),(393,'SG',601,NULL,NULL,'SAINT-GALL','Saint-Gall',1),(394,'SH',601,NULL,NULL,'SCHAFFHOUSE','Schaffhouse',1),(395,'SO',601,NULL,NULL,'SOLEURE','Soleure',1),(396,'SZ',601,NULL,NULL,'SCHWYZ','Schwyz',1),(397,'TG',601,NULL,NULL,'THURGOVIE','Thurgovie',1),(398,'TI',601,NULL,NULL,'TESSIN','Tessin',1),(399,'UR',601,NULL,NULL,'URI','Uri',1),(400,'VD',601,NULL,NULL,'VAUD','Vaud',1),(401,'VS',601,NULL,NULL,'VALAIS','Valais',1),(402,'ZG',601,NULL,NULL,'ZUG','Zug',1),(403,'ZH',601,NULL,NULL,'ZURICH','Zürich',1),(404,'701',701,NULL,0,NULL,'Bedfordshire',1),(405,'702',701,NULL,0,NULL,'Berkshire',1),(406,'703',701,NULL,0,NULL,'Bristol, City of',1),(407,'704',701,NULL,0,NULL,'Buckinghamshire',1),(408,'705',701,NULL,0,NULL,'Cambridgeshire',1),(409,'706',701,NULL,0,NULL,'Cheshire',1),(410,'707',701,NULL,0,NULL,'Cleveland',1),(411,'708',701,NULL,0,NULL,'Cornwall',1),(412,'709',701,NULL,0,NULL,'Cumberland',1),(413,'710',701,NULL,0,NULL,'Cumbria',1),(414,'711',701,NULL,0,NULL,'Derbyshire',1),(415,'712',701,NULL,0,NULL,'Devon',1),(416,'713',701,NULL,0,NULL,'Dorset',1),(417,'714',701,NULL,0,NULL,'Co. Durham',1),(418,'715',701,NULL,0,NULL,'East Riding of Yorkshire',1),(419,'716',701,NULL,0,NULL,'East Sussex',1),(420,'717',701,NULL,0,NULL,'Essex',1),(421,'718',701,NULL,0,NULL,'Gloucestershire',1),(422,'719',701,NULL,0,NULL,'Greater Manchester',1),(423,'720',701,NULL,0,NULL,'Hampshire',1),(424,'721',701,NULL,0,NULL,'Hertfordshire',1),(425,'722',701,NULL,0,NULL,'Hereford and Worcester',1),(426,'723',701,NULL,0,NULL,'Herefordshire',1),(427,'724',701,NULL,0,NULL,'Huntingdonshire',1),(428,'725',701,NULL,0,NULL,'Isle of Man',1),(429,'726',701,NULL,0,NULL,'Isle of Wight',1),(430,'727',701,NULL,0,NULL,'Jersey',1),(431,'728',701,NULL,0,NULL,'Kent',1),(432,'729',701,NULL,0,NULL,'Lancashire',1),(433,'730',701,NULL,0,NULL,'Leicestershire',1),(434,'731',701,NULL,0,NULL,'Lincolnshire',1),(435,'732',701,NULL,0,NULL,'London - City of London',1),(436,'733',701,NULL,0,NULL,'Merseyside',1),(437,'734',701,NULL,0,NULL,'Middlesex',1),(438,'735',701,NULL,0,NULL,'Norfolk',1),(439,'736',701,NULL,0,NULL,'North Yorkshire',1),(440,'737',701,NULL,0,NULL,'North Riding of Yorkshire',1),(441,'738',701,NULL,0,NULL,'Northamptonshire',1),(442,'739',701,NULL,0,NULL,'Northumberland',1),(443,'740',701,NULL,0,NULL,'Nottinghamshire',1),(444,'741',701,NULL,0,NULL,'Oxfordshire',1),(445,'742',701,NULL,0,NULL,'Rutland',1),(446,'743',701,NULL,0,NULL,'Shropshire',1),(447,'744',701,NULL,0,NULL,'Somerset',1),(448,'745',701,NULL,0,NULL,'Staffordshire',1),(449,'746',701,NULL,0,NULL,'Suffolk',1),(450,'747',701,NULL,0,NULL,'Surrey',1),(451,'748',701,NULL,0,NULL,'Sussex',1),(452,'749',701,NULL,0,NULL,'Tyne and Wear',1),(453,'750',701,NULL,0,NULL,'Warwickshire',1),(454,'751',701,NULL,0,NULL,'West Midlands',1),(455,'752',701,NULL,0,NULL,'West Sussex',1),(456,'753',701,NULL,0,NULL,'West Yorkshire',1),(457,'754',701,NULL,0,NULL,'West Riding of Yorkshire',1),(458,'755',701,NULL,0,NULL,'Wiltshire',1),(459,'756',701,NULL,0,NULL,'Worcestershire',1),(460,'757',701,NULL,0,NULL,'Yorkshire',1),(461,'758',702,NULL,0,NULL,'Anglesey',1),(462,'759',702,NULL,0,NULL,'Breconshire',1),(463,'760',702,NULL,0,NULL,'Caernarvonshire',1),(464,'761',702,NULL,0,NULL,'Cardiganshire',1),(465,'762',702,NULL,0,NULL,'Carmarthenshire',1),(466,'763',702,NULL,0,NULL,'Ceredigion',1),(467,'764',702,NULL,0,NULL,'Denbighshire',1),(468,'765',702,NULL,0,NULL,'Flintshire',1),(469,'766',702,NULL,0,NULL,'Glamorgan',1),(470,'767',702,NULL,0,NULL,'Gwent',1),(471,'768',702,NULL,0,NULL,'Gwynedd',1),(472,'769',702,NULL,0,NULL,'Merionethshire',1),(473,'770',702,NULL,0,NULL,'Monmouthshire',1),(474,'771',702,NULL,0,NULL,'Mid Glamorgan',1),(475,'772',702,NULL,0,NULL,'Montgomeryshire',1),(476,'773',702,NULL,0,NULL,'Pembrokeshire',1),(477,'774',702,NULL,0,NULL,'Powys',1),(478,'775',702,NULL,0,NULL,'Radnorshire',1),(479,'776',702,NULL,0,NULL,'South Glamorgan',1),(480,'777',703,NULL,0,NULL,'Aberdeen, City of',1),(481,'778',703,NULL,0,NULL,'Angus',1),(482,'779',703,NULL,0,NULL,'Argyll',1),(483,'780',703,NULL,0,NULL,'Ayrshire',1),(484,'781',703,NULL,0,NULL,'Banffshire',1),(485,'782',703,NULL,0,NULL,'Berwickshire',1),(486,'783',703,NULL,0,NULL,'Bute',1),(487,'784',703,NULL,0,NULL,'Caithness',1),(488,'785',703,NULL,0,NULL,'Clackmannanshire',1),(489,'786',703,NULL,0,NULL,'Dumfriesshire',1),(490,'787',703,NULL,0,NULL,'Dumbartonshire',1),(491,'788',703,NULL,0,NULL,'Dundee, City of',1),(492,'789',703,NULL,0,NULL,'East Lothian',1),(493,'790',703,NULL,0,NULL,'Fife',1),(494,'791',703,NULL,0,NULL,'Inverness',1),(495,'792',703,NULL,0,NULL,'Kincardineshire',1),(496,'793',703,NULL,0,NULL,'Kinross-shire',1),(497,'794',703,NULL,0,NULL,'Kirkcudbrightshire',1),(498,'795',703,NULL,0,NULL,'Lanarkshire',1),(499,'796',703,NULL,0,NULL,'Midlothian',1),(500,'797',703,NULL,0,NULL,'Morayshire',1),(501,'798',703,NULL,0,NULL,'Nairnshire',1),(502,'799',703,NULL,0,NULL,'Orkney',1),(503,'800',703,NULL,0,NULL,'Peebleshire',1),(504,'801',703,NULL,0,NULL,'Perthshire',1),(505,'802',703,NULL,0,NULL,'Renfrewshire',1),(506,'803',703,NULL,0,NULL,'Ross & Cromarty',1),(507,'804',703,NULL,0,NULL,'Roxburghshire',1),(508,'805',703,NULL,0,NULL,'Selkirkshire',1),(509,'806',703,NULL,0,NULL,'Shetland',1),(510,'807',703,NULL,0,NULL,'Stirlingshire',1),(511,'808',703,NULL,0,NULL,'Sutherland',1),(512,'809',703,NULL,0,NULL,'West Lothian',1),(513,'810',703,NULL,0,NULL,'Wigtownshire',1),(514,'811',704,NULL,0,NULL,'Antrim',1),(515,'812',704,NULL,0,NULL,'Armagh',1),(516,'813',704,NULL,0,NULL,'Co. Down',1),(517,'814',704,NULL,0,NULL,'Co. Fermanagh',1),(518,'815',704,NULL,0,NULL,'Co. Londonderry',1),(519,'AL',1101,'',0,'ALABAMA','Alabama',1),(520,'AK',1101,'',0,'ALASKA','Alaska',1),(521,'AZ',1101,'',0,'ARIZONA','Arizona',1),(522,'AR',1101,'',0,'ARKANSAS','Arkansas',1),(523,'CA',1101,'',0,'CALIFORNIA','California',1),(524,'CO',1101,'',0,'COLORADO','Colorado',1),(525,'CT',1101,'',0,'CONNECTICUT','Connecticut',1),(526,'DE',1101,'',0,'DELAWARE','Delaware',1),(527,'FL',1101,'',0,'FLORIDA','Florida',1),(528,'GA',1101,'',0,'GEORGIA','Georgia',1),(529,'HI',1101,'',0,'HAWAII','Hawaii',1),(530,'ID',1101,'',0,'IDAHO','Idaho',1),(531,'IL',1101,'',0,'ILLINOIS','Illinois',1),(532,'IN',1101,'',0,'INDIANA','Indiana',1),(533,'IA',1101,'',0,'IOWA','Iowa',1),(534,'KS',1101,'',0,'KANSAS','Kansas',1),(535,'KY',1101,'',0,'KENTUCKY','Kentucky',1),(536,'LA',1101,'',0,'LOUISIANA','Louisiana',1),(537,'ME',1101,'',0,'MAINE','Maine',1),(538,'MD',1101,'',0,'MARYLAND','Maryland',1),(539,'MA',1101,'',0,'MASSACHUSSETTS','Massachusetts',1),(540,'MI',1101,'',0,'MICHIGAN','Michigan',1),(541,'MN',1101,'',0,'MINNESOTA','Minnesota',1),(542,'MS',1101,'',0,'MISSISSIPPI','Mississippi',1),(543,'MO',1101,'',0,'MISSOURI','Missouri',1),(544,'MT',1101,'',0,'MONTANA','Montana',1),(545,'NE',1101,'',0,'NEBRASKA','Nebraska',1),(546,'NV',1101,'',0,'NEVADA','Nevada',1),(547,'NH',1101,'',0,'NEW HAMPSHIRE','New Hampshire',1),(548,'NJ',1101,'',0,'NEW JERSEY','New Jersey',1),(549,'NM',1101,'',0,'NEW MEXICO','New Mexico',1),(550,'NY',1101,'',0,'NEW YORK','New York',1),(551,'NC',1101,'',0,'NORTH CAROLINA','North Carolina',1),(552,'ND',1101,'',0,'NORTH DAKOTA','North Dakota',1),(553,'OH',1101,'',0,'OHIO','Ohio',1),(554,'OK',1101,'',0,'OKLAHOMA','Oklahoma',1),(555,'OR',1101,'',0,'OREGON','Oregon',1),(556,'PA',1101,'',0,'PENNSYLVANIA','Pennsylvania',1),(557,'RI',1101,'',0,'RHODE ISLAND','Rhode Island',1),(558,'SC',1101,'',0,'SOUTH CAROLINA','South Carolina',1),(559,'SD',1101,'',0,'SOUTH DAKOTA','South Dakota',1),(560,'TN',1101,'',0,'TENNESSEE','Tennessee',1),(561,'TX',1101,'',0,'TEXAS','Texas',1),(562,'UT',1101,'',0,'UTAH','Utah',1),(563,'VT',1101,'',0,'VERMONT','Vermont',1),(564,'VA',1101,'',0,'VIRGINIA','Virginia',1),(565,'WA',1101,'',0,'WASHINGTON','Washington',1),(566,'WV',1101,'',0,'WEST VIRGINIA','West Virginia',1),(567,'WI',1101,'',0,'WISCONSIN','Wisconsin',1),(568,'WY',1101,'',0,'WYOMING','Wyoming',1),(569,'GR',1701,NULL,NULL,NULL,'Groningen',1),(570,'FR',1701,NULL,NULL,NULL,'Friesland',1),(571,'DR',1701,NULL,NULL,NULL,'Drenthe',1),(572,'OV',1701,NULL,NULL,NULL,'Overijssel',1),(573,'GD',1701,NULL,NULL,NULL,'Gelderland',1),(574,'FL',1701,NULL,NULL,NULL,'Flevoland',1),(575,'UT',1701,NULL,NULL,NULL,'Utrecht',1),(576,'NH',1701,NULL,NULL,NULL,'Noord-Holland',1),(577,'ZH',1701,NULL,NULL,NULL,'Zuid-Holland',1),(578,'ZL',1701,NULL,NULL,NULL,'Zeeland',1),(579,'NB',1701,NULL,NULL,NULL,'Noord-Brabant',1),(580,'LB',1701,NULL,NULL,NULL,'Limburg',1),(581,'SS',8601,'',0,'','San Salvador',1),(582,'SA',8603,'',0,'','Santa Ana',1),(583,'AH',8603,'',0,'','Ahuachapan',1),(584,'SO',8603,'',0,'','Sonsonate',1),(585,'US',8602,'',0,'','Usulutan',1),(586,'SM',8602,'',0,'','San Miguel',1),(587,'MO',8602,'',0,'','Morazan',1),(588,'LU',8602,'',0,'','La Union',1),(589,'LL',8601,'',0,'','La Libertad',1),(590,'CH',8601,'',0,'','Chalatenango',1),(591,'CA',8601,'',0,'','Cabañas',1),(592,'LP',8601,'',0,'','La Paz',1),(593,'SV',8601,'',0,'','San Vicente',1),(594,'CU',8601,'',0,'','Cuscatlan',1),(595,'2301',2301,'',0,'CATAMARCA','Catamarca',1),(596,'2302',2301,'',0,'JUJUY','Jujuy',1),(597,'2303',2301,'',0,'TUCAMAN','Tucamán',1),(598,'2304',2301,'',0,'SANTIAGO DEL ESTERO','Santiago del Estero',1),(599,'2305',2301,'',0,'SALTA','Salta',1),(600,'2306',2302,'',0,'CHACO','Chaco',1),(601,'2307',2302,'',0,'CORRIENTES','Corrientes',1),(602,'2308',2302,'',0,'ENTRE RIOS','Entre Ríos',1),(603,'2309',2302,'',0,'FORMOSA','Formosa',1),(604,'2310',2302,'',0,'SANTA FE','Santa Fe',1),(605,'2311',2303,'',0,'LA RIOJA','La Rioja',1),(606,'2312',2303,'',0,'MENDOZA','Mendoza',1),(607,'2313',2303,'',0,'SAN JUAN','San Juan',1),(608,'2314',2303,'',0,'SAN LUIS','San Luis',1),(609,'2315',2304,'',0,'CORDOBA','Córdoba',1),(610,'2316',2304,'',0,'BUENOS AIRES','Buenos Aires',1),(611,'2317',2304,'',0,'CABA','Caba',1),(612,'2318',2305,'',0,'LA PAMPA','La Pampa',1),(613,'2319',2305,'',0,'NEUQUEN','Neuquén',1),(614,'2320',2305,'',0,'RIO NEGRO','Río Negro',1),(615,'2321',2305,'',0,'CHUBUT','Chubut',1),(616,'2322',2305,'',0,'SANTA CRUZ','Santa Cruz',1),(617,'2323',2305,'',0,'TIERRA DEL FUEGO','Tierra del Fuego',1),(618,'2324',2305,'',0,'ISLAS MALVINAS','Islas Malvinas',1),(619,'2325',2305,'',0,'ANTARTIDA','Antártida',1),(620,'AC',5601,'ACRE',0,'AC','Acre',1),(621,'AL',5601,'ALAGOAS',0,'AL','Alagoas',1),(622,'AP',5601,'AMAPA',0,'AP','Amapá',1),(623,'AM',5601,'AMAZONAS',0,'AM','Amazonas',1),(624,'BA',5601,'BAHIA',0,'BA','Bahia',1),(625,'CE',5601,'CEARA',0,'CE','Ceará',1),(626,'ES',5601,'ESPIRITO SANTO',0,'ES','Espirito Santo',1),(627,'GO',5601,'GOIAS',0,'GO','Goiás',1),(628,'MA',5601,'MARANHAO',0,'MA','Maranhão',1),(629,'MT',5601,'MATO GROSSO',0,'MT','Mato Grosso',1),(630,'MS',5601,'MATO GROSSO DO SUL',0,'MS','Mato Grosso do Sul',1),(631,'MG',5601,'MINAS GERAIS',0,'MG','Minas Gerais',1),(632,'PA',5601,'PARA',0,'PA','Pará',1),(633,'PB',5601,'PARAIBA',0,'PB','Paraiba',1),(634,'PR',5601,'PARANA',0,'PR','Paraná',1),(635,'PE',5601,'PERNAMBUCO',0,'PE','Pernambuco',1),(636,'PI',5601,'PIAUI',0,'PI','Piauí',1),(637,'RJ',5601,'RIO DE JANEIRO',0,'RJ','Rio de Janeiro',1),(638,'RN',5601,'RIO GRANDE DO NORTE',0,'RN','Rio Grande do Norte',1),(639,'RS',5601,'RIO GRANDE DO SUL',0,'RS','Rio Grande do Sul',1),(640,'RO',5601,'RONDONIA',0,'RO','Rondônia',1),(641,'RR',5601,'RORAIMA',0,'RR','Roraima',1),(642,'SC',5601,'SANTA CATARINA',0,'SC','Santa Catarina',1),(643,'SE',5601,'SERGIPE',0,'SE','Sergipe',1),(644,'SP',5601,'SAO PAULO',0,'SP','Sao Paulo',1),(645,'TO',5601,'TOCANTINS',0,'TO','Tocantins',1),(646,'DF',5601,'DISTRITO FEDERAL',0,'DF','Distrito Federal',1),(647,'151',6715,'',0,'151','Arica',1),(648,'152',6715,'',0,'152','Parinacota',1),(649,'011',6701,'',0,'011','Iquique',1),(650,'014',6701,'',0,'014','Tamarugal',1),(651,'021',6702,'',0,'021','Antofagasa',1),(652,'022',6702,'',0,'022','El Loa',1),(653,'023',6702,'',0,'023','Tocopilla',1),(654,'031',6703,'',0,'031','Copiapó',1),(655,'032',6703,'',0,'032','Chañaral',1),(656,'033',6703,'',0,'033','Huasco',1),(657,'041',6704,'',0,'041','Elqui',1),(658,'042',6704,'',0,'042','Choapa',1),(659,'043',6704,'',0,'043','Limarí',1),(660,'051',6705,'',0,'051','Valparaíso',1),(661,'052',6705,'',0,'052','Isla de Pascua',1),(662,'053',6705,'',0,'053','Los Andes',1),(663,'054',6705,'',0,'054','Petorca',1),(664,'055',6705,'',0,'055','Quillota',1),(665,'056',6705,'',0,'056','San Antonio',1),(666,'057',6705,'',0,'057','San Felipe de Aconcagua',1),(667,'058',6705,'',0,'058','Marga Marga',1),(668,'061',6706,'',0,'061','Cachapoal',1),(669,'062',6706,'',0,'062','Cardenal Caro',1),(670,'063',6706,'',0,'063','Colchagua',1),(671,'071',6707,'',0,'071','Talca',1),(672,'072',6707,'',0,'072','Cauquenes',1),(673,'073',6707,'',0,'073','Curicó',1),(674,'074',6707,'',0,'074','Linares',1),(675,'081',6708,'',0,'081','Concepción',1),(676,'082',6708,'',0,'082','Arauco',1),(677,'083',6708,'',0,'083','Biobío',1),(678,'084',6708,'',0,'084','Ñuble',1),(679,'091',6709,'',0,'091','Cautín',1),(680,'092',6709,'',0,'092','Malleco',1),(681,'141',6714,'',0,'141','Valdivia',1),(682,'142',6714,'',0,'142','Ranco',1),(683,'101',6710,'',0,'101','Llanquihue',1),(684,'102',6710,'',0,'102','Chiloé',1),(685,'103',6710,'',0,'103','Osorno',1),(686,'104',6710,'',0,'104','Palena',1),(687,'111',6711,'',0,'111','Coihaique',1),(688,'112',6711,'',0,'112','Aisén',1),(689,'113',6711,'',0,'113','Capitán Prat',1),(690,'114',6711,'',0,'114','General Carrera',1),(691,'121',6712,'',0,'121','Magallanes',1),(692,'122',6712,'',0,'122','Antártica Chilena',1),(693,'123',6712,'',0,'123','Tierra del Fuego',1),(694,'124',6712,'',0,'124','Última Esperanza',1),(695,'131',6713,'',0,'131','Santiago',1),(696,'132',6713,'',0,'132','Cordillera',1),(697,'133',6713,'',0,'133','Chacabuco',1),(698,'134',6713,'',0,'134','Maipo',1),(699,'135',6713,'',0,'135','Melipilla',1),(700,'136',6713,'',0,'136','Talagante',1),(701,'AN',11701,NULL,0,'AN','Andaman & Nicobar',1),(702,'AP',11701,NULL,0,'AP','Andhra Pradesh',1),(703,'AR',11701,NULL,0,'AR','Arunachal Pradesh',1),(704,'AS',11701,NULL,0,'AS','Assam',1),(705,'BR',11701,NULL,0,'BR','Bihar',1),(706,'CG',11701,NULL,0,'CG','Chattisgarh',1),(707,'CH',11701,NULL,0,'CH','Chandigarh',1),(708,'DD',11701,NULL,0,'DD','Daman & Diu',1),(709,'DL',11701,NULL,0,'DL','Delhi',1),(710,'DN',11701,NULL,0,'DN','Dadra and Nagar Haveli',1),(711,'GA',11701,NULL,0,'GA','Goa',1),(712,'GJ',11701,NULL,0,'GJ','Gujarat',1),(713,'HP',11701,NULL,0,'HP','Himachal Pradesh',1),(714,'HR',11701,NULL,0,'HR','Haryana',1),(715,'JH',11701,NULL,0,'JH','Jharkhand',1),(716,'JK',11701,NULL,0,'JK','Jammu & Kashmir',1),(717,'KA',11701,NULL,0,'KA','Karnataka',1),(718,'KL',11701,NULL,0,'KL','Kerala',1),(719,'LD',11701,NULL,0,'LD','Lakshadweep',1),(720,'MH',11701,NULL,0,'MH','Maharashtra',1),(721,'ML',11701,NULL,0,'ML','Meghalaya',1),(722,'MN',11701,NULL,0,'MN','Manipur',1),(723,'MP',11701,NULL,0,'MP','Madhya Pradesh',1),(724,'MZ',11701,NULL,0,'MZ','Mizoram',1),(725,'NL',11701,NULL,0,'NL','Nagaland',1),(726,'OR',11701,NULL,0,'OR','Orissa',1),(727,'PB',11701,NULL,0,'PB','Punjab',1),(728,'PY',11701,NULL,0,'PY','Puducherry',1),(729,'RJ',11701,NULL,0,'RJ','Rajasthan',1),(730,'SK',11701,NULL,0,'SK','Sikkim',1),(731,'TN',11701,NULL,0,'TN','Tamil Nadu',1),(732,'TR',11701,NULL,0,'TR','Tripura',1),(733,'UL',11701,NULL,0,'UL','Uttarakhand',1),(734,'UP',11701,NULL,0,'UP','Uttar Pradesh',1),(735,'WB',11701,NULL,0,'WB','West Bengal',1),(736,'DIF',15401,'',0,'DIF','Distrito Federal',1),(737,'AGS',15401,'',0,'AGS','Aguascalientes',1),(738,'BCN',15401,'',0,'BCN','Baja California Norte',1),(739,'BCS',15401,'',0,'BCS','Baja California Sur',1),(740,'CAM',15401,'',0,'CAM','Campeche',1),(741,'CHP',15401,'',0,'CHP','Chiapas',1),(742,'CHI',15401,'',0,'CHI','Chihuahua',1),(743,'COA',15401,'',0,'COA','Coahuila',1),(744,'COL',15401,'',0,'COL','Colima',1),(745,'DUR',15401,'',0,'DUR','Durango',1),(746,'GTO',15401,'',0,'GTO','Guanajuato',1),(747,'GRO',15401,'',0,'GRO','Guerrero',1),(748,'HGO',15401,'',0,'HGO','Hidalgo',1),(749,'JAL',15401,'',0,'JAL','Jalisco',1),(750,'MEX',15401,'',0,'MEX','México',1),(751,'MIC',15401,'',0,'MIC','Michoacán de Ocampo',1),(752,'MOR',15401,'',0,'MOR','Morelos',1),(753,'NAY',15401,'',0,'NAY','Nayarit',1),(754,'NLE',15401,'',0,'NLE','Nuevo León',1),(755,'OAX',15401,'',0,'OAX','Oaxaca',1),(756,'PUE',15401,'',0,'PUE','Puebla',1),(757,'QRO',15401,'',0,'QRO','Querétaro',1),(758,'ROO',15401,'',0,'ROO','Quintana Roo',1),(759,'SLP',15401,'',0,'SLP','San Luis Potosí',1),(760,'SIN',15401,'',0,'SIN','Sinaloa',1),(761,'SON',15401,'',0,'SON','Sonora',1),(762,'TAB',15401,'',0,'TAB','Tabasco',1),(763,'TAM',15401,'',0,'TAM','Tamaulipas',1),(764,'TLX',15401,'',0,'TLX','Tlaxcala',1),(765,'VER',15401,'',0,'VER','Veracruz',1),(766,'YUC',15401,'',0,'YUC','Yucatán',1),(767,'ZAC',15401,'',0,'ZAC','Zacatecas',1),(768,'ANT',7001,'',0,'ANT','Antioquia',1),(769,'BOL',7001,'',0,'BOL','Bolívar',1),(770,'BOY',7001,'',0,'BOY','Boyacá',1),(771,'CAL',7001,'',0,'CAL','Caldas',1),(772,'CAU',7001,'',0,'CAU','Cauca',1),(773,'CUN',7001,'',0,'CUN','Cundinamarca',1),(774,'HUI',7001,'',0,'HUI','Huila',1),(775,'LAG',7001,'',0,'LAG','La Guajira',1),(776,'MET',7001,'',0,'MET','Meta',1),(777,'NAR',7001,'',0,'NAR','Nariño',1),(778,'NDS',7001,'',0,'NDS','Norte de Santander',1),(779,'SAN',7001,'',0,'SAN','Santander',1),(780,'SUC',7001,'',0,'SUC','Sucre',1),(781,'TOL',7001,'',0,'TOL','Tolima',1),(782,'VAC',7001,'',0,'VAC','Valle del Cauca',1),(783,'RIS',7001,'',0,'RIS','Risalda',1),(784,'ATL',7001,'',0,'ATL','Atlántico',1),(785,'COR',7001,'',0,'COR','Córdoba',1),(786,'SAP',7001,'',0,'SAP','San Andrés, Providencia y Santa Catalina',1),(787,'ARA',7001,'',0,'ARA','Arauca',1),(788,'CAS',7001,'',0,'CAS','Casanare',1),(789,'AMA',7001,'',0,'AMA','Amazonas',1),(790,'CAQ',7001,'',0,'CAQ','Caquetá',1),(791,'CHO',7001,'',0,'CHO','Chocó',1),(792,'GUA',7001,'',0,'GUA','Guainía',1),(793,'GUV',7001,'',0,'GUV','Guaviare',1),(794,'PUT',7001,'',0,'PUT','Putumayo',1),(795,'QUI',7001,'',0,'QUI','Quindío',1),(796,'VAU',7001,'',0,'VAU','Vaupés',1),(797,'BOG',7001,'',0,'BOG','Bogotá',1),(798,'VID',7001,'',0,'VID','Vichada',1),(799,'CES',7001,'',0,'CES','Cesar',1),(800,'MAG',7001,'',0,'MAG','Magdalena',1),(801,'AT',11401,'',0,'AT','Atlántida',1),(802,'CH',11401,'',0,'CH','Choluteca',1),(803,'CL',11401,'',0,'CL','Colón',1),(804,'CM',11401,'',0,'CM','Comayagua',1),(805,'CO',11401,'',0,'CO','Copán',1),(806,'CR',11401,'',0,'CR','Cortés',1),(807,'EP',11401,'',0,'EP','El Paraíso',1),(808,'FM',11401,'',0,'FM','Francisco Morazán',1),(809,'GD',11401,'',0,'GD','Gracias a Dios',1),(810,'IN',11401,'',0,'IN','Intibucá',1),(811,'IB',11401,'',0,'IB','Islas de la Bahía',1),(812,'LP',11401,'',0,'LP','La Paz',1),(813,'LM',11401,'',0,'LM','Lempira',1),(814,'OC',11401,'',0,'OC','Ocotepeque',1),(815,'OL',11401,'',0,'OL','Olancho',1),(816,'SB',11401,'',0,'SB','Santa Bárbara',1),(817,'VL',11401,'',0,'VL','Valle',1),(818,'YO',11401,'',0,'YO','Yoro',1),(819,'DC',11401,'',0,'DC','Distrito Central',1),(820,'CC',4601,'Oistins',0,'CC','Christ Church',1),(821,'SA',4601,'Greenland',0,'SA','Saint Andrew',1),(822,'SG',4601,'Bulkeley',0,'SG','Saint George',1),(823,'JA',4601,'Holetown',0,'JA','Saint James',1),(824,'SJ',4601,'Four Roads',0,'SJ','Saint John',1),(825,'SB',4601,'Bathsheba',0,'SB','Saint Joseph',1),(826,'SL',4601,'Crab Hill',0,'SL','Saint Lucy',1),(827,'SM',4601,'Bridgetown',0,'SM','Saint Michael',1),(828,'SP',4601,'Speightstown',0,'SP','Saint Peter',1),(829,'SC',4601,'Crane',0,'SC','Saint Philip',1),(830,'ST',4601,'Hillaby',0,'ST','Saint Thomas',1),(831,'VE-L',23201,'',0,'VE-L','Mérida',1),(832,'VE-T',23201,'',0,'VE-T','Trujillo',1),(833,'VE-E',23201,'',0,'VE-E','Barinas',1),(834,'VE-M',23202,'',0,'VE-M','Miranda',1),(835,'VE-W',23202,'',0,'VE-W','Vargas',1),(836,'VE-A',23202,'',0,'VE-A','Distrito Capital',1),(837,'VE-D',23203,'',0,'VE-D','Aragua',1),(838,'VE-G',23203,'',0,'VE-G','Carabobo',1),(839,'VE-I',23204,'',0,'VE-I','Falcón',1),(840,'VE-K',23204,'',0,'VE-K','Lara',1),(841,'VE-U',23204,'',0,'VE-U','Yaracuy',1),(842,'VE-F',23205,'',0,'VE-F','Bolívar',1),(843,'VE-X',23205,'',0,'VE-X','Amazonas',1),(844,'VE-Y',23205,'',0,'VE-Y','Delta Amacuro',1),(845,'VE-O',23206,'',0,'VE-O','Nueva Esparta',1),(846,'VE-Z',23206,'',0,'VE-Z','Dependencias Federales',1),(847,'VE-C',23207,'',0,'VE-C','Apure',1),(848,'VE-J',23207,'',0,'VE-J','Guárico',1),(849,'VE-H',23207,'',0,'VE-H','Cojedes',1),(850,'VE-P',23207,'',0,'VE-P','Portuguesa',1),(851,'VE-B',23208,'',0,'VE-B','Anzoátegui',1),(852,'VE-N',23208,'',0,'VE-N','Monagas',1),(853,'VE-R',23208,'',0,'VE-R','Sucre',1),(854,'VE-V',23209,'',0,'VE-V','Zulia',1),(855,'VE-S',23209,'',0,'VE-S','Táchira',1),(856,'AL01',1301,'',0,'','Wilaya d\'Adrar',1),(857,'AL02',1301,'',0,'','Wilaya de Chlef',1),(858,'AL03',1301,'',0,'','Wilaya de Laghouat',1),(859,'AL04',1301,'',0,'','Wilaya d\'Oum El Bouaghi',1),(860,'AL05',1301,'',0,'','Wilaya de Batna',1),(861,'AL06',1301,'',0,'','Wilaya de Béjaïa',1),(862,'AL07',1301,'',0,'','Wilaya de Biskra',1),(863,'AL08',1301,'',0,'','Wilaya de Béchar',1),(864,'AL09',1301,'',0,'','Wilaya de Blida',1),(865,'AL11',1301,'',0,'','Wilaya de Bouira',1),(866,'AL12',1301,'',0,'','Wilaya de Tamanrasset',1),(867,'AL13',1301,'',0,'','Wilaya de Tébessa',1),(868,'AL14',1301,'',0,'','Wilaya de Tlemcen',1),(869,'AL15',1301,'',0,'','Wilaya de Tiaret',1),(870,'AL16',1301,'',0,'','Wilaya de Tizi Ouzou',1),(871,'AL17',1301,'',0,'','Wilaya d\'Alger',1),(872,'AL18',1301,'',0,'','Wilaya de Djelfa',1),(873,'AL19',1301,'',0,'','Wilaya de Jijel',1),(874,'AL20',1301,'',0,'','Wilaya de Sétif	',1),(875,'AL21',1301,'',0,'','Wilaya de Saïda',1),(876,'AL22',1301,'',0,'','Wilaya de Skikda',1),(877,'AL23',1301,'',0,'','Wilaya de Sidi Bel Abbès',1),(878,'AL24',1301,'',0,'','Wilaya d\'Annaba',1),(879,'AL25',1301,'',0,'','Wilaya de Guelma',1),(880,'AL26',1301,'',0,'','Wilaya de Constantine',1),(881,'AL27',1301,'',0,'','Wilaya de Médéa',1),(882,'AL28',1301,'',0,'','Wilaya de Mostaganem',1),(883,'AL29',1301,'',0,'','Wilaya de M\'Sila',1),(884,'AL30',1301,'',0,'','Wilaya de Mascara',1),(885,'AL31',1301,'',0,'','Wilaya d\'Ouargla',1),(886,'AL32',1301,'',0,'','Wilaya d\'Oran',1),(887,'AL33',1301,'',0,'','Wilaya d\'El Bayadh',1),(888,'AL34',1301,'',0,'','Wilaya d\'Illizi',1),(889,'AL35',1301,'',0,'','Wilaya de Bordj Bou Arreridj',1),(890,'AL36',1301,'',0,'','Wilaya de Boumerdès',1),(891,'AL37',1301,'',0,'','Wilaya d\'El Tarf',1),(892,'AL38',1301,'',0,'','Wilaya de Tindouf',1),(893,'AL39',1301,'',0,'','Wilaya de Tissemsilt',1),(894,'AL40',1301,'',0,'','Wilaya d\'El Oued',1),(895,'AL41',1301,'',0,'','Wilaya de Khenchela',1),(896,'AL42',1301,'',0,'','Wilaya de Souk Ahras',1),(897,'AL43',1301,'',0,'','Wilaya de Tipaza',1),(898,'AL44',1301,'',0,'','Wilaya de Mila',1),(899,'AL45',1301,'',0,'','Wilaya d\'Aïn Defla',1),(900,'AL46',1301,'',0,'','Wilaya de Naâma',1),(901,'AL47',1301,'',0,'','Wilaya d\'Aïn Témouchent',1),(902,'AL48',1301,'',0,'','Wilaya de Ghardaia',1),(903,'AL49',1301,'',0,'','Wilaya de Relizane',1),(904,'MA',1209,'',0,'','Province de Benslimane',1),(905,'MA1',1209,'',0,'','Province de Berrechid',1),(906,'MA2',1209,'',0,'','Province de Khouribga',1),(907,'MA3',1209,'',0,'','Province de Settat',1),(908,'MA4',1210,'',0,'','Province d\'El Jadida',1),(909,'MA5',1210,'',0,'','Province de Safi',1),(910,'MA6',1210,'',0,'','Province de Sidi Bennour',1),(911,'MA7',1210,'',0,'','Province de Youssoufia',1),(912,'MA6B',1205,'',0,'','Préfecture de Fès',1),(913,'MA7B',1205,'',0,'','Province de Boulemane',1),(914,'MA8',1205,'',0,'','Province de Moulay Yacoub',1),(915,'MA9',1205,'',0,'','Province de Sefrou',1),(916,'MA8A',1202,'',0,'','Province de Kénitra',1),(917,'MA9A',1202,'',0,'','Province de Sidi Kacem',1),(918,'MA10',1202,'',0,'','Province de Sidi Slimane',1),(919,'MA11',1208,'',0,'','Préfecture de Casablanca',1),(920,'MA12',1208,'',0,'','Préfecture de Mohammédia',1),(921,'MA13',1208,'',0,'','Province de Médiouna',1),(922,'MA14',1208,'',0,'','Province de Nouaceur',1),(923,'MA15',1214,'',0,'','Province d\'Assa-Zag',1),(924,'MA16',1214,'',0,'','Province d\'Es-Semara',1),(925,'MA17A',1214,'',0,'','Province de Guelmim',1),(926,'MA18',1214,'',0,'','Province de Tata',1),(927,'MA19',1214,'',0,'','Province de Tan-Tan',1),(928,'MA15',1215,'',0,'','Province de Boujdour',1),(929,'MA16',1215,'',0,'','Province de Lâayoune',1),(930,'MA17',1215,'',0,'','Province de Tarfaya',1),(931,'MA18',1211,'',0,'','Préfecture de Marrakech',1),(932,'MA19',1211,'',0,'','Province d\'Al Haouz',1),(933,'MA20',1211,'',0,'','Province de Chichaoua',1),(934,'MA21',1211,'',0,'','Province d\'El Kelâa des Sraghna',1),(935,'MA22',1211,'',0,'','Province d\'Essaouira',1),(936,'MA23',1211,'',0,'','Province de Rehamna',1),(937,'MA24',1206,'',0,'','Préfecture de Meknès',1),(938,'MA25',1206,'',0,'','Province d’El Hajeb',1),(939,'MA26',1206,'',0,'','Province d\'Errachidia',1),(940,'MA27',1206,'',0,'','Province d’Ifrane',1),(941,'MA28',1206,'',0,'','Province de Khénifra',1),(942,'MA29',1206,'',0,'','Province de Midelt',1),(943,'MA30',1204,'',0,'','Préfecture d\'Oujda-Angad',1),(944,'MA31',1204,'',0,'','Province de Berkane',1),(945,'MA32',1204,'',0,'','Province de Driouch',1),(946,'MA33',1204,'',0,'','Province de Figuig',1),(947,'MA34',1204,'',0,'','Province de Jerada',1),(948,'MA35',1204,'',0,'','Province de Nadorgg',1),(949,'MA36',1204,'',0,'','Province de Taourirt',1),(950,'MA37',1216,'',0,'','Province d\'Aousserd',1),(951,'MA38',1216,'',0,'','Province d\'Oued Ed-Dahab',1),(952,'MA39',1207,'',0,'','Préfecture de Rabat',1),(953,'MA40',1207,'',0,'','Préfecture de Skhirat-Témara',1),(954,'MA41',1207,'',0,'','Préfecture de Salé',1),(955,'MA42',1207,'',0,'','Province de Khémisset',1),(956,'MA43',1213,'',0,'','Préfecture d\'Agadir Ida-Outanane',1),(957,'MA44',1213,'',0,'','Préfecture d\'Inezgane-Aït Melloul',1),(958,'MA45',1213,'',0,'','Province de Chtouka-Aït Baha',1),(959,'MA46',1213,'',0,'','Province d\'Ouarzazate',1),(960,'MA47',1213,'',0,'','Province de Sidi Ifni',1),(961,'MA48',1213,'',0,'','Province de Taroudant',1),(962,'MA49',1213,'',0,'','Province de Tinghir',1),(963,'MA50',1213,'',0,'','Province de Tiznit',1),(964,'MA51',1213,'',0,'','Province de Zagora',1),(965,'MA52',1212,'',0,'','Province d\'Azilal',1),(966,'MA53',1212,'',0,'','Province de Beni Mellal',1),(967,'MA54',1212,'',0,'','Province de Fquih Ben Salah',1),(968,'MA55',1201,'',0,'','Préfecture de M\'diq-Fnideq',1),(969,'MA56',1201,'',0,'','Préfecture de Tanger-Asilah',1),(970,'MA57',1201,'',0,'','Province de Chefchaouen',1),(971,'MA58',1201,'',0,'','Province de Fahs-Anjra',1),(972,'MA59',1201,'',0,'','Province de Larache',1),(973,'MA60',1201,'',0,'','Province d\'Ouezzane',1),(974,'MA61',1201,'',0,'','Province de Tétouan',1),(975,'MA62',1203,'',0,'','Province de Guercif',1),(976,'MA63',1203,'',0,'','Province d\'Al Hoceïma',1),(977,'MA64',1203,'',0,'','Province de Taounate',1),(978,'MA65',1203,'',0,'','Province de Taza',1),(979,'MA6A',1205,'',0,'','Préfecture de Fès',1),(980,'MA7A',1205,'',0,'','Province de Boulemane',1),(981,'MA15A',1214,'',0,'','Province d\'Assa-Zag',1),(982,'MA16A',1214,'',0,'','Province d\'Es-Semara',1),(983,'MA18A',1211,'',0,'','Préfecture de Marrakech',1),(984,'MA19A',1214,'',0,'','Province de Tan-Tan',1),(985,'MA19B',1214,'',0,'','Province de Tan-Tan',1),(986,'TN01',1001,'',0,'','Ariana',1),(987,'TN02',1001,'',0,'','Béja',1),(988,'TN03',1001,'',0,'','Ben Arous',1),(989,'TN04',1001,'',0,'','Bizerte',1),(990,'TN05',1001,'',0,'','Gabès',1),(991,'TN06',1001,'',0,'','Gafsa',1),(992,'TN07',1001,'',0,'','Jendouba',1),(993,'TN08',1001,'',0,'','Kairouan',1),(994,'TN09',1001,'',0,'','Kasserine',1),(995,'TN10',1001,'',0,'','Kébili',1),(996,'TN11',1001,'',0,'','La Manouba',1),(997,'TN12',1001,'',0,'','Le Kef',1),(998,'TN13',1001,'',0,'','Mahdia',1),(999,'TN14',1001,'',0,'','Médenine',1),(1000,'TN15',1001,'',0,'','Monastir',1),(1001,'TN16',1001,'',0,'','Nabeul',1),(1002,'TN17',1001,'',0,'','Sfax',1),(1003,'TN18',1001,'',0,'','Sidi Bouzid',1),(1004,'TN19',1001,'',0,'','Siliana',1),(1005,'TN20',1001,'',0,'','Sousse',1),(1006,'TN21',1001,'',0,'','Tataouine',1),(1007,'TN22',1001,'',0,'','Tozeur',1),(1008,'TN23',1001,'',0,'','Tunis',1),(1009,'TN24',1001,'',0,'','Zaghouan',1),(1010,'001',5201,'',0,'','Belisario Boeto',1),(1011,'002',5201,'',0,'','Hernando Siles',1),(1012,'003',5201,'',0,'','Jaime Zudáñez',1),(1013,'004',5201,'',0,'','Juana Azurduy de Padilla',1),(1014,'005',5201,'',0,'','Luis Calvo',1),(1015,'006',5201,'',0,'','Nor Cinti',1),(1016,'007',5201,'',0,'','Oropeza',1),(1017,'008',5201,'',0,'','Sud Cinti',1),(1018,'009',5201,'',0,'','Tomina',1),(1019,'010',5201,'',0,'','Yamparáez',1),(1020,'011',5202,'',0,'','Abel Iturralde',1),(1021,'012',5202,'',0,'','Aroma',1),(1022,'013',5202,'',0,'','Bautista Saavedra',1),(1023,'014',5202,'',0,'','Caranavi',1),(1024,'015',5202,'',0,'','Eliodoro Camacho',1),(1025,'016',5202,'',0,'','Franz Tamayo',1),(1026,'017',5202,'',0,'','Gualberto Villarroel',1),(1027,'018',5202,'',0,'','Ingaví',1),(1028,'019',5202,'',0,'','Inquisivi',1),(1029,'020',5202,'',0,'','José Ramón Loayza',1),(1030,'021',5202,'',0,'','Larecaja',1),(1031,'022',5202,'',0,'','Los Andes (Bolivia)',1),(1032,'023',5202,'',0,'','Manco Kapac',1),(1033,'024',5202,'',0,'','Muñecas',1),(1034,'025',5202,'',0,'','Nor Yungas',1),(1035,'026',5202,'',0,'','Omasuyos',1),(1036,'027',5202,'',0,'','Pacajes',1),(1037,'028',5202,'',0,'','Pedro Domingo Murillo',1),(1038,'029',5202,'',0,'','Sud Yungas',1),(1039,'030',5202,'',0,'','General José Manuel Pando',1),(1040,'031',5203,'',0,'','Arani',1),(1041,'032',5203,'',0,'','Arque',1),(1042,'033',5203,'',0,'','Ayopaya',1),(1043,'034',5203,'',0,'','Bolívar (Bolivia)',1),(1044,'035',5203,'',0,'','Campero',1),(1045,'036',5203,'',0,'','Capinota',1),(1046,'037',5203,'',0,'','Cercado (Cochabamba)',1),(1047,'038',5203,'',0,'','Esteban Arze',1),(1048,'039',5203,'',0,'','Germán Jordán',1),(1049,'040',5203,'',0,'','José Carrasco',1),(1050,'041',5203,'',0,'','Mizque',1),(1051,'042',5203,'',0,'','Punata',1),(1052,'043',5203,'',0,'','Quillacollo',1),(1053,'044',5203,'',0,'','Tapacarí',1),(1054,'045',5203,'',0,'','Tiraque',1),(1055,'046',5203,'',0,'','Chapare',1),(1056,'047',5204,'',0,'','Carangas',1),(1057,'048',5204,'',0,'','Cercado (Oruro)',1),(1058,'049',5204,'',0,'','Eduardo Avaroa',1),(1059,'050',5204,'',0,'','Ladislao Cabrera',1),(1060,'051',5204,'',0,'','Litoral de Atacama',1),(1061,'052',5204,'',0,'','Mejillones',1),(1062,'053',5204,'',0,'','Nor Carangas',1),(1063,'054',5204,'',0,'','Pantaleón Dalence',1),(1064,'055',5204,'',0,'','Poopó',1),(1065,'056',5204,'',0,'','Sabaya',1),(1066,'057',5204,'',0,'','Sajama',1),(1067,'058',5204,'',0,'','San Pedro de Totora',1),(1068,'059',5204,'',0,'','Saucarí',1),(1069,'060',5204,'',0,'','Sebastián Pagador',1),(1070,'061',5204,'',0,'','Sud Carangas',1),(1071,'062',5204,'',0,'','Tomás Barrón',1),(1072,'063',5205,'',0,'','Alonso de Ibáñez',1),(1073,'064',5205,'',0,'','Antonio Quijarro',1),(1074,'065',5205,'',0,'','Bernardino Bilbao',1),(1075,'066',5205,'',0,'','Charcas (Potosí)',1),(1076,'067',5205,'',0,'','Chayanta',1),(1077,'068',5205,'',0,'','Cornelio Saavedra',1),(1078,'069',5205,'',0,'','Daniel Campos',1),(1079,'070',5205,'',0,'','Enrique Baldivieso',1),(1080,'071',5205,'',0,'','José María Linares',1),(1081,'072',5205,'',0,'','Modesto Omiste',1),(1082,'073',5205,'',0,'','Nor Chichas',1),(1083,'074',5205,'',0,'','Nor Lípez',1),(1084,'075',5205,'',0,'','Rafael Bustillo',1),(1085,'076',5205,'',0,'','Sud Chichas',1),(1086,'077',5205,'',0,'','Sud Lípez',1),(1087,'078',5205,'',0,'','Tomás Frías',1),(1088,'079',5206,'',0,'','Aniceto Arce',1),(1089,'080',5206,'',0,'','Burdet O\'Connor',1),(1090,'081',5206,'',0,'','Cercado (Tarija)',1),(1091,'082',5206,'',0,'','Eustaquio Méndez',1),(1092,'083',5206,'',0,'','José María Avilés',1),(1093,'084',5206,'',0,'','Gran Chaco',1),(1094,'085',5207,'',0,'','Andrés Ibáñez',1),(1095,'086',5207,'',0,'','Caballero',1),(1096,'087',5207,'',0,'','Chiquitos',1),(1097,'088',5207,'',0,'','Cordillera (Bolivia)',1),(1098,'089',5207,'',0,'','Florida',1),(1099,'090',5207,'',0,'','Germán Busch',1),(1100,'091',5207,'',0,'','Guarayos',1),(1101,'092',5207,'',0,'','Ichilo',1),(1102,'093',5207,'',0,'','Obispo Santistevan',1),(1103,'094',5207,'',0,'','Sara',1),(1104,'095',5207,'',0,'','Vallegrande',1),(1105,'096',5207,'',0,'','Velasco',1),(1106,'097',5207,'',0,'','Warnes',1),(1107,'098',5207,'',0,'','Ángel Sandóval',1),(1108,'099',5207,'',0,'','Ñuflo de Chaves',1),(1109,'100',5208,'',0,'','Cercado (Beni)',1),(1110,'101',5208,'',0,'','Iténez',1),(1111,'102',5208,'',0,'','Mamoré',1),(1112,'103',5208,'',0,'','Marbán',1),(1113,'104',5208,'',0,'','Moxos',1),(1114,'105',5208,'',0,'','Vaca Díez',1),(1115,'106',5208,'',0,'','Yacuma',1),(1116,'107',5208,'',0,'','General José Ballivián Segurola',1),(1117,'108',5209,'',0,'','Abuná',1),(1118,'109',5209,'',0,'','Madre de Dios',1),(1119,'110',5209,'',0,'','Manuripi',1),(1120,'111',5209,'',0,'','Nicolás Suárez',1),(1121,'112',5209,'',0,'','General Federico Román',1),(1122,'B',4101,NULL,NULL,'BURGENLAND','Burgenland',1),(1123,'K',4101,NULL,NULL,'KAERNTEN','Kärnten',1),(1124,'N',4101,NULL,NULL,'NIEDEROESTERREICH','Niederösterreich',1),(1125,'O',4101,NULL,NULL,'OBEROESTERREICH','Oberösterreich',1),(1126,'S',4101,NULL,NULL,'SALZBURG','Salzburg',1),(1127,'ST',4101,NULL,NULL,'STEIERMARK','Steiermark',1),(1128,'T',4101,NULL,NULL,'TIROL','Tirol',1),(1129,'V',4101,NULL,NULL,'VORARLBERG','Vorarlberg',1),(1130,'W',4101,NULL,NULL,'WIEN','Wien',1),(1131,'2326',2305,'',0,'MISIONES','Misiones',1),(1132,'PA-1',17801,'',0,'','Bocas del Toro',1),(1133,'PA-2',17801,'',0,'','Coclé',1),(1134,'PA-3',17801,'',0,'','Colón',1),(1135,'PA-4',17801,'',0,'','Chiriquí',1),(1136,'PA-5',17801,'',0,'','Darién',1),(1137,'PA-6',17801,'',0,'','Herrera',1),(1138,'PA-7',17801,'',0,'','Los Santos',1),(1139,'PA-8',17801,'',0,'','Panamá',1),(1140,'PA-9',17801,'',0,'','Veraguas',1),(1141,'PA-13',17801,'',0,'','Panamá Oeste',1),(1142,'BA',11801,NULL,0,'BA','Bali',1),(1143,'BB',11801,NULL,0,'BB','Bangka Belitung',1),(1144,'BT',11801,NULL,0,'BT','Banten',1),(1145,'BE',11801,NULL,0,'BA','Bengkulu',1),(1146,'YO',11801,NULL,0,'YO','DI Yogyakarta',1),(1147,'JK',11801,NULL,0,'JK','DKI Jakarta',1),(1148,'GO',11801,NULL,0,'GO','Gorontalo',1),(1149,'JA',11801,NULL,0,'JA','Jambi',1),(1150,'JB',11801,NULL,0,'JB','Jawa Barat',1),(1151,'JT',11801,NULL,0,'JT','Jawa Tengah',1),(1152,'JI',11801,NULL,0,'JI','Jawa Timur',1),(1153,'KB',11801,NULL,0,'KB','Kalimantan Barat',1),(1154,'KS',11801,NULL,0,'KS','Kalimantan Selatan',1),(1155,'KT',11801,NULL,0,'KT','Kalimantan Tengah',1),(1156,'KI',11801,NULL,0,'KI','Kalimantan Timur',1),(1157,'KU',11801,NULL,0,'KU','Kalimantan Utara',1),(1158,'KR',11801,NULL,0,'KR','Kepulauan Riau',1),(1159,'LA',11801,NULL,0,'LA','Lampung',1),(1160,'MA',11801,NULL,0,'MA','Maluku',1),(1161,'MU',11801,NULL,0,'MU','Maluku Utara',1),(1162,'AC',11801,NULL,0,'AC','Nanggroe Aceh Darussalam',1),(1163,'NB',11801,NULL,0,'NB','Nusa Tenggara Barat',1),(1164,'NT',11801,NULL,0,'NT','Nusa Tenggara Timur',1),(1165,'PA',11801,NULL,0,'PA','Papua',1),(1166,'PB',11801,NULL,0,'PB','Papua Barat',1),(1167,'RI',11801,NULL,0,'RI','Riau',1),(1168,'SR',11801,NULL,0,'SR','Sulawesi Barat',1),(1169,'SN',11801,NULL,0,'SN','Sulawesi Selatan',1),(1170,'ST',11801,NULL,0,'ST','Sulawesi Tengah',1),(1171,'SG',11801,NULL,0,'SG','Sulawesi Tenggara',1),(1172,'SA',11801,NULL,0,'SA','Sulawesi Utara',1),(1173,'SB',11801,NULL,0,'SB','Sumatera Barat',1),(1174,'SS',11801,NULL,0,'SS','Sumatera Selatan',1),(1175,'SU',11801,NULL,0,'SU','Sumatera Utara	',1);
/*!40000 ALTER TABLE `doli_c_departements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_ecotaxe`
--

LOCK TABLES `doli_c_ecotaxe` WRITE;
/*!40000 ALTER TABLE `doli_c_ecotaxe` DISABLE KEYS */;
INSERT INTO `doli_c_ecotaxe` VALUES (1,'ER-A-A','Materiels electriques < 0,2kg',0.01000000,'ERP',1,1),(2,'ER-A-B','Materiels electriques >= 0,2 kg et < 0,5 kg',0.03000000,'ERP',1,1),(3,'ER-A-C','Materiels electriques >= 0,5 kg et < 1 kg',0.04000000,'ERP',1,1),(4,'ER-A-D','Materiels electriques >= 1 kg et < 2 kg',0.13000000,'ERP',1,1),(5,'ER-A-E','Materiels electriques >= 2 kg et < 4kg',0.21000000,'ERP',1,1),(6,'ER-A-F','Materiels electriques >= 4 kg et < 8 kg',0.42000000,'ERP',1,1),(7,'ER-A-G','Materiels electriques >= 8 kg et < 15 kg',0.84000000,'ERP',1,1),(8,'ER-A-H','Materiels electriques >= 15 kg et < 20 kg',1.25000000,'ERP',1,1),(9,'ER-A-I','Materiels electriques >= 20 kg et < 30 kg',1.88000000,'ERP',1,1),(10,'ER-A-J','Materiels electriques >= 30 kg',3.34000000,'ERP',1,1),(11,'ER-M-1','TV, Moniteurs < 9kg',0.84000000,'ERP',1,1),(12,'ER-M-2','TV, Moniteurs >= 9kg et < 15kg',1.67000000,'ERP',1,1),(13,'ER-M-3','TV, Moniteurs >= 15kg et < 30kg',3.34000000,'ERP',1,1),(14,'ER-M-4','TV, Moniteurs >= 30 kg',6.69000000,'ERP',1,1),(15,'EC-A-A','Materiels electriques  0,2 kg max',0.00840000,'Ecologic',1,1),(16,'EC-A-B','Materiels electriques 0,21 kg min - 0,50 kg max',0.02500000,'Ecologic',1,1),(17,'EC-A-C','Materiels electriques  0,51 kg min - 1 kg max',0.04000000,'Ecologic',1,1),(18,'EC-A-D','Materiels electriques  1,01 kg min - 2,5 kg max',0.13000000,'Ecologic',1,1),(19,'EC-A-E','Materiels electriques  2,51 kg min - 4 kg max',0.21000000,'Ecologic',1,1),(20,'EC-A-F','Materiels electriques 4,01 kg min - 8 kg max',0.42000000,'Ecologic',1,1),(21,'EC-A-G','Materiels electriques  8,01 kg min - 12 kg max',0.63000000,'Ecologic',1,1),(22,'EC-A-H','Materiels electriques 12,01 kg min - 20 kg max',1.05000000,'Ecologic',1,1),(23,'EC-A-I','Materiels electriques  20,01 kg min',1.88000000,'Ecologic',1,1),(24,'EC-M-1','TV, Moniteurs 9 kg max',0.84000000,'Ecologic',1,1),(25,'EC-M-2','TV, Moniteurs 9,01 kg min - 18 kg max',1.67000000,'Ecologic',1,1),(26,'EC-M-3','TV, Moniteurs 18,01 kg min - 36 kg max',3.34000000,'Ecologic',1,1),(27,'EC-M-4','TV, Moniteurs 36,01 kg min',6.69000000,'Ecologic',1,1),(28,'ES-M-1','TV, Moniteurs <= 20 pouces',0.84000000,'Eco-systemes',1,1),(29,'ES-M-2','TV, Moniteurs > 20 pouces et <= 32 pouces',3.34000000,'Eco-systemes',1,1),(30,'ES-M-3','TV, Moniteurs > 32 pouces et autres grands ecrans',6.69000000,'Eco-systemes',1,1),(31,'ES-A-A','Ordinateur fixe, Audio home systems (HIFI), elements hifi separes',0.84000000,'Eco-systemes',1,1),(32,'ES-A-B','Ordinateur portable, CD-RCR, VCR, lecteurs et enregistreurs DVD, instruments de musique et caisses de resonance, haut parleurs...',0.25000000,'Eco-systemes',1,1),(33,'ES-A-C','Imprimante, photocopieur, telecopieur',0.42000000,'Eco-systemes',1,1),(34,'ES-A-D','Accessoires, clavier, souris, PDA, imprimante photo, appareil photo, gps, telephone, repondeur, telephone sans fil, modem, telecommande, casque, camescope, baladeur mp3, radio portable, radio K7 et CD portable, radio reveil',0.08400000,'Eco-systemes',1,1),(35,'ES-A-E','GSM',0.00840000,'Eco-systemes',1,1),(36,'ES-A-F','Jouets et equipements de loisirs et de sports < 0,5 kg',0.04200000,'Eco-systemes',1,1),(37,'ES-A-G','Jouets et equipements de loisirs et de sports > 0,5 kg',0.17000000,'Eco-systemes',1,1),(38,'ES-A-H','Jouets et equipements de loisirs et de sports > 10 kg',1.25000000,'Eco-systemes',1,1);
/*!40000 ALTER TABLE `doli_c_ecotaxe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_effectif`
--

LOCK TABLES `doli_c_effectif` WRITE;
/*!40000 ALTER TABLE `doli_c_effectif` DISABLE KEYS */;
INSERT INTO `doli_c_effectif` VALUES (0,'EF0','-',1,NULL),(1,'EF1-5','1 - 5',1,NULL),(2,'EF6-10','6 - 10',1,NULL),(3,'EF11-50','11 - 50',1,NULL),(4,'EF51-100','51 - 100',1,NULL),(5,'EF100-500','100 - 500',1,NULL),(6,'EF500-','> 500',1,NULL);
/*!40000 ALTER TABLE `doli_c_effectif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_email_senderprofile`
--

LOCK TABLES `doli_c_email_senderprofile` WRITE;
/*!40000 ALTER TABLE `doli_c_email_senderprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_c_email_senderprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_email_templates`
--

LOCK TABLES `doli_c_email_templates` WRITE;
/*!40000 ALTER TABLE `doli_c_email_templates` DISABLE KEYS */;
INSERT INTO `doli_c_email_templates` VALUES (1,0,'adherent','member','',0,NULL,NULL,'2020-02-09 17:36:24','(SendingAnEMailToMember)',1,1,'__(CardContent)__','__(Hello)__,<br><br>\n\n__(ThisIsContentOfYourCard)__<br>\n__(ID)__ : __ID__<br>\n__(Civiliyty)__ : __MEMBER_CIVILITY__<br>\n__(Firstname)__ : __MEMBER_FIRSTNAME__<br>\n__(Lastname)__ : __MEMBER_LASTNAME__<br>\n__(Fullname)__ : __MEMBER_FULLNAME__<br>\n__(Company)__ : __MEMBER_COMPANY__<br>\n__(Address)__ : __MEMBER_ADDRESS__<br>\n__(Zip)__ : __MEMBER_ZIP__<br>\n__(Town)__ : __MEMBER_TOWN__<br>\n__(Country)__ : __MEMBER_COUNTRY__<br>\n__(Email)__ : __MEMBER_EMAIL__<br>\n__(Birthday)__ : __MEMBER_BIRTH__<br>\n__(Photo)__ : __MEMBER_PHOTO__<br>\n__(Login)__ : __MEMBER_LOGIN__<br>\n__(Password)__ : __MEMBER_PASSWORD__<br>\n__(Phone)__ : __MEMBER_PHONE__<br>\n__(PhonePerso)__ : __MEMBER_PHONEPRO__<br>\n__(PhoneMobile)__ : __MEMBER_PHONEMOBILE__<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__',NULL,'1','1'),(2,0,'banque','thirdparty','',0,NULL,NULL,'2020-02-09 17:36:24','(YourSEPAMandate)',1,0,'__(YourSEPAMandate)__','__(Hello)__,<br><br>\n\n__(FindYourSEPAMandate)__ :<br>\n__MYCOMPANY_NAME__<br>\n__MYCOMPANY_FULLADDRESS__<br><br>\n__(Sincerely)__<br>\n__USER_SIGNATURE__',NULL,'1','1'),(3,0,'adherent','member','',0,NULL,NULL,'2020-02-09 17:36:34','(SendingEmailOnAutoSubscription)',10,1,'[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipRequestWasReceived)__','__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfYourMembershipRequestWasReceived)__<br>\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\n<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__',NULL,'1','0'),(4,0,'adherent','member','',0,NULL,NULL,'2020-02-09 17:36:34','(SendingEmailOnMemberValidation)',20,1,'[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipWasValidated)__','__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfYourMembershipWasValidated)__<br>\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\n<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__',NULL,'1','0'),(5,0,'adherent','member','',0,NULL,NULL,'2020-02-09 17:36:34','(SendingEmailOnNewSubscription)',30,1,'[__[MAIN_INFO_SOCIETE_NOM]__] __(YourSubscriptionWasRecorded)__','__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfYourSubscriptionWasRecorded)__<br>\n\n<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__',NULL,'1','1'),(6,0,'adherent','member','',0,NULL,NULL,'2020-02-09 17:36:34','(SendingReminderForExpiredSubscription)',40,1,'[__[MAIN_INFO_SOCIETE_NOM]__] __(SubscriptionReminderEmail)__','__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfSubscriptionReminderEmail)__<br>\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\n<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__',NULL,'1','0'),(7,0,'adherent','member','',0,NULL,NULL,'2020-02-09 17:36:34','(SendingEmailOnCancelation)',50,1,'[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipWasCanceled)__','__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(YourMembershipWasCanceled)__<br>\n<br><br>\n__(Sincerely)__<br>__USER_SIGNATURE__',NULL,'1','0');
/*!40000 ALTER TABLE `doli_c_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_exp_tax_cat`
--

LOCK TABLES `doli_c_exp_tax_cat` WRITE;
/*!40000 ALTER TABLE `doli_c_exp_tax_cat` DISABLE KEYS */;
INSERT INTO `doli_c_exp_tax_cat` VALUES (1,'ExpAutoCat',1,1),(2,'ExpCycloCat',1,1),(3,'ExpMotoCat',1,1),(4,'ExpAuto3CV',1,1),(5,'ExpAuto4CV',1,1),(6,'ExpAuto5CV',1,1),(7,'ExpAuto6CV',1,1),(8,'ExpAuto7CV',1,1),(9,'ExpAuto8CV',1,1),(10,'ExpAuto9CV',1,1),(11,'ExpAuto10CV',1,1),(12,'ExpAuto11CV',1,1),(13,'ExpAuto12CV',1,1),(14,'ExpAuto3PCV',1,1),(15,'ExpAuto4PCV',1,1),(16,'ExpAuto5PCV',1,1),(17,'ExpAuto6PCV',1,1),(18,'ExpAuto7PCV',1,1),(19,'ExpAuto8PCV',1,1),(20,'ExpAuto9PCV',1,1),(21,'ExpAuto10PCV',1,1),(22,'ExpAuto11PCV',1,1),(23,'ExpAuto12PCV',1,1),(24,'ExpAuto13PCV',1,1),(25,'ExpCyclo',1,1),(26,'ExpMoto12CV',1,1),(27,'ExpMoto345CV',1,1),(28,'ExpMoto5PCV',1,1);
/*!40000 ALTER TABLE `doli_c_exp_tax_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_exp_tax_range`
--

LOCK TABLES `doli_c_exp_tax_range` WRITE;
/*!40000 ALTER TABLE `doli_c_exp_tax_range` DISABLE KEYS */;
INSERT INTO `doli_c_exp_tax_range` VALUES (1,4,0,1,1),(2,4,5000,1,1),(3,4,20000,1,1),(4,5,0,1,1),(5,5,5000,1,1),(6,5,20000,1,1),(7,6,0,1,1),(8,6,5000,1,1),(9,6,20000,1,1),(10,7,0,1,1),(11,7,5000,1,1),(12,7,20000,1,1),(13,8,0,1,1),(14,8,5000,1,1),(15,8,20000,1,1);
/*!40000 ALTER TABLE `doli_c_exp_tax_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_field_list`
--

LOCK TABLES `doli_c_field_list` WRITE;
/*!40000 ALTER TABLE `doli_c_field_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_c_field_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_format_cards`
--

LOCK TABLES `doli_c_format_cards` WRITE;
/*!40000 ALTER TABLE `doli_c_format_cards` DISABLE KEYS */;
INSERT INTO `doli_c_format_cards` VALUES (1,'5160','Avery-5160, WL-875WX','letter','P','mm',5.58165000,12.70000000,3,10,3.55600000,0.00000000,65.87490000,25.40000000,7,0.00000000,0.00000000,1),(2,'5161','Avery-5161, WL-75WX','letter','P','mm',4.44500000,12.70000000,2,10,3.96800000,0.00000000,101.60000000,25.40000000,7,0.00000000,0.00000000,1),(3,'5162','Avery-5162, WL-100WX','letter','P','mm',3.87350000,22.35200000,2,7,4.95400000,0.00000000,101.60000000,33.78100000,8,0.00000000,0.00000000,1),(4,'5163','Avery-5163, WL-125WX','letter','P','mm',4.57200000,12.70000000,2,5,3.55600000,0.00000000,101.60000000,50.80000000,10,0.00000000,0.00000000,1),(5,'5164','5164 (Letter)','letter','P','in',0.14800000,0.50000000,2,3,0.20310000,0.00000000,4.00000000,3.33000000,12,0.00000000,0.00000000,0),(6,'8600','Avery-8600','letter','P','mm',7.10000000,19.00000000,3,10,9.50000000,3.10000000,66.60000000,25.40000000,7,0.00000000,0.00000000,1),(7,'99012','DYMO 99012 89*36mm','custom','L','mm',1.00000000,1.00000000,1,1,0.00000000,0.00000000,36.00000000,89.00000000,10,36.00000000,89.00000000,1),(8,'99014','DYMO 99014 101*54mm','custom','L','mm',1.00000000,1.00000000,1,1,0.00000000,0.00000000,54.00000000,101.00000000,10,54.00000000,101.00000000,1),(9,'AVERYC32010','Avery-C32010','A4','P','mm',15.00000000,13.00000000,2,5,10.00000000,0.00000000,85.00000000,54.00000000,10,0.00000000,0.00000000,1),(10,'CARD','Dolibarr Business cards','A4','P','mm',15.00000000,15.00000000,2,5,0.00000000,0.00000000,85.00000000,54.00000000,10,0.00000000,0.00000000,1),(11,'L7163','Avery-L7163','A4','P','mm',5.00000000,15.00000000,2,7,2.50000000,0.00000000,99.10000000,38.10000000,8,0.00000000,0.00000000,1);
/*!40000 ALTER TABLE `doli_c_format_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_forme_juridique`
--

LOCK TABLES `doli_c_forme_juridique` WRITE;
/*!40000 ALTER TABLE `doli_c_forme_juridique` DISABLE KEYS */;
INSERT INTO `doli_c_forme_juridique` VALUES (1,0,0,'-',0,1,NULL,0),(2,2301,23,'Monotributista',0,1,NULL,0),(3,2302,23,'Sociedad Civil',0,1,NULL,0),(4,2303,23,'Sociedades Comerciales',0,1,NULL,0),(5,2304,23,'Sociedades de Hecho',0,1,NULL,0),(6,2305,23,'Sociedades Irregulares',0,1,NULL,0),(7,2306,23,'Sociedad Colectiva',0,1,NULL,0),(8,2307,23,'Sociedad en Comandita Simple',0,1,NULL,0),(9,2308,23,'Sociedad de Capital e Industria',0,1,NULL,0),(10,2309,23,'Sociedad Accidental o en participación',0,1,NULL,0),(11,2310,23,'Sociedad de Responsabilidad Limitada',0,1,NULL,0),(12,2311,23,'Sociedad Anónima',0,1,NULL,0),(13,2312,23,'Sociedad Anónima con Participación Estatal Mayoritaria',0,1,NULL,0),(14,2313,23,'Sociedad en Comandita por Acciones (arts. 315 a 324, LSC)',0,1,NULL,0),(15,11,1,'Artisan Commerçant (EI)',0,1,NULL,0),(16,12,1,'Commerçant (EI)',0,1,NULL,0),(17,13,1,'Artisan (EI)',0,1,NULL,0),(18,14,1,'Officier public ou ministériel',0,1,NULL,0),(19,15,1,'Profession libérale (EI)',0,1,NULL,0),(20,16,1,'Exploitant agricole',0,1,NULL,0),(21,17,1,'Agent commercial',0,1,NULL,0),(22,18,1,'Associé Gérant de société',0,1,NULL,0),(23,19,1,'Personne physique',0,1,NULL,0),(24,21,1,'Indivision',0,1,NULL,0),(25,22,1,'Société créée de fait',0,1,NULL,0),(26,23,1,'Société en participation',0,1,NULL,0),(27,27,1,'Paroisse hors zone concordataire',0,1,NULL,0),(28,29,1,'Groupement de droit privé non doté de la personnalité morale',0,1,NULL,0),(29,31,1,'Personne morale de droit étranger, immatriculée au RCS',0,1,NULL,0),(30,32,1,'Personne morale de droit étranger, non immatriculée au RCS',0,1,NULL,0),(31,35,1,'Régime auto-entrepreneur',0,1,NULL,0),(32,41,1,'Établissement public ou régie à caractère industriel ou commercial',0,1,NULL,0),(33,51,1,'Société coopérative commerciale particulière',0,1,NULL,0),(34,52,1,'Société en nom collectif',0,1,NULL,0),(35,53,1,'Société en commandite',0,1,NULL,0),(36,54,1,'Société à responsabilité limitée (SARL)',0,1,NULL,0),(37,55,1,'Société anonyme à conseil d administration',0,1,NULL,0),(38,56,1,'Société anonyme à directoire',0,1,NULL,0),(39,57,1,'Société par actions simplifiée (SAS)',0,1,NULL,0),(40,58,1,'Entreprise Unipersonnelle à Responsabilité Limitée (EURL)',0,1,NULL,0),(41,59,1,'Société par actions simplifiée unipersonnelle (SASU)',0,1,NULL,0),(42,61,1,'Caisse d\'épargne et de prévoyance',0,1,NULL,0),(43,62,1,'Groupement d\'intérêt économique (GIE)',0,1,NULL,0),(44,63,1,'Société coopérative agricole',0,1,NULL,0),(45,64,1,'Société non commerciale d assurances',0,1,NULL,0),(46,65,1,'Société civile',0,1,NULL,0),(47,69,1,'Personnes de droit privé inscrites au RCS',0,1,NULL,0),(48,71,1,'Administration de l état',0,1,NULL,0),(49,72,1,'Collectivité territoriale',0,1,NULL,0),(50,73,1,'Établissement public administratif',0,1,NULL,0),(51,74,1,'Personne morale de droit public administratif',0,1,NULL,0),(52,81,1,'Organisme gérant régime de protection social à adhésion obligatoire',0,1,NULL,0),(53,82,1,'Organisme mutualiste',0,1,NULL,0),(54,83,1,'Comité d entreprise',0,1,NULL,0),(55,84,1,'Organisme professionnel',0,1,NULL,0),(56,85,1,'Organisme de retraite à adhésion non obligatoire',0,1,NULL,0),(57,91,1,'Syndicat de propriétaires',0,1,NULL,0),(58,92,1,'Association loi 1901 ou assimilé',0,1,NULL,0),(59,93,1,'Fondation',0,1,NULL,0),(60,99,1,'Personne morale de droit privé',0,1,NULL,0),(61,200,2,'Indépendant',0,1,NULL,0),(62,201,2,'SPRL - Société à responsabilité limitée',0,1,NULL,0),(63,202,2,'SA   - Société Anonyme',0,1,NULL,0),(64,203,2,'SCRL - Société coopérative à responsabilité limitée',0,1,NULL,0),(65,204,2,'ASBL - Association sans but Lucratif',0,1,NULL,0),(66,205,2,'SCRI - Société coopérative à responsabilité illimitée',0,1,NULL,0),(67,206,2,'SCS  - Société en commandite simple',0,1,NULL,0),(68,207,2,'SCA  - Société en commandite par action',0,1,NULL,0),(69,208,2,'SNC  - Société en nom collectif',0,1,NULL,0),(70,209,2,'GIE  - Groupement d intérêt économique',0,1,NULL,0),(71,210,2,'GEIE - Groupement européen d intérêt économique',0,1,NULL,0),(72,220,2,'Eenmanszaak',0,1,NULL,0),(73,221,2,'BVBA - Besloten vennootschap met beperkte aansprakelijkheid',0,1,NULL,0),(74,222,2,'NV   - Naamloze Vennootschap',0,1,NULL,0),(75,223,2,'CVBA - Coöperatieve vennootschap met beperkte aansprakelijkheid',0,1,NULL,0),(76,224,2,'VZW  - Vereniging zonder winstoogmerk',0,1,NULL,0),(77,225,2,'CVOA - Coöperatieve vennootschap met onbeperkte aansprakelijkheid ',0,1,NULL,0),(78,226,2,'GCV  - Gewone commanditaire vennootschap',0,1,NULL,0),(79,227,2,'Comm.VA - Commanditaire vennootschap op aandelen',0,1,NULL,0),(80,228,2,'VOF  - Vennootschap onder firma',0,1,NULL,0),(81,229,2,'VS0  - Vennootschap met sociaal oogmerk',0,1,NULL,0),(82,500,5,'GmbH - Gesellschaft mit beschränkter Haftung',0,1,NULL,0),(83,501,5,'AG - Aktiengesellschaft ',0,1,NULL,0),(84,502,5,'GmbH&Co. KG - Gesellschaft mit beschränkter Haftung & Compagnie Kommanditgesellschaft',0,1,NULL,0),(85,503,5,'Gewerbe - Personengesellschaft',0,1,NULL,0),(86,504,5,'UG - Unternehmergesellschaft -haftungsbeschränkt-',0,1,NULL,0),(87,505,5,'GbR - Gesellschaft des bürgerlichen Rechts',0,1,NULL,0),(88,506,5,'KG - Kommanditgesellschaft',0,1,NULL,0),(89,507,5,'Ltd. - Limited Company',0,1,NULL,0),(90,508,5,'OHG - Offene Handelsgesellschaft',0,1,NULL,0),(91,10201,102,'??????? ??????????',0,1,NULL,0),(92,10202,102,'????????  ??????????',0,1,NULL,0),(93,10203,102,'????????? ???????? ?.?',0,1,NULL,0),(94,10204,102,'??????????? ???????? ?.?',0,1,NULL,0),(95,10205,102,'???????? ????????????? ??????? ?.?.?',0,1,NULL,0),(96,10206,102,'??????? ???????? ?.?',0,1,NULL,0),(97,10207,102,'??????? ?????????? ???????? ?.?.?',0,1,NULL,0),(98,10208,102,'?????????????',0,1,NULL,0),(99,10209,102,'??????????????',0,1,NULL,0),(100,301,3,'Società semplice',0,1,NULL,0),(101,302,3,'Società in nome collettivo s.n.c.',0,1,NULL,0),(102,303,3,'Società in accomandita semplice s.a.s.',0,1,NULL,0),(103,304,3,'Società per azioni s.p.a.',0,1,NULL,0),(104,305,3,'Società a responsabilità limitata s.r.l.',0,1,NULL,0),(105,306,3,'Società in accomandita per azioni s.a.p.a.',0,1,NULL,0),(106,307,3,'Società cooperativa a r.l.',0,1,NULL,0),(107,308,3,'Società consortile',0,1,NULL,0),(108,309,3,'Società europea',0,1,NULL,0),(109,310,3,'Società cooperativa europea',0,1,NULL,0),(110,311,3,'Società unipersonale',0,1,NULL,0),(111,312,3,'Società di professionisti',0,1,NULL,0),(112,313,3,'Società di fatto',0,1,NULL,0),(113,315,3,'Società apparente',0,1,NULL,0),(114,316,3,'Impresa individuale ',0,1,NULL,0),(115,317,3,'Impresa coniugale',0,1,NULL,0),(116,318,3,'Impresa familiare',0,1,NULL,0),(117,319,3,'Consorzio cooperativo',0,1,NULL,0),(118,320,3,'Società cooperativa sociale',0,1,NULL,0),(119,321,3,'Società cooperativa di consumo',0,1,NULL,0),(120,322,3,'Società cooperativa agricola',0,1,NULL,0),(121,323,3,'A.T.I. Associazione temporanea di imprese',0,1,NULL,0),(122,324,3,'R.T.I. Raggruppamento temporaneo di imprese',0,1,NULL,0),(123,325,3,'Studio associato',0,1,NULL,0),(124,600,6,'Raison Individuelle',0,1,NULL,0),(125,601,6,'Société Simple',0,1,NULL,0),(126,602,6,'Société en nom collectif',0,1,NULL,0),(127,603,6,'Société en commandite',0,1,NULL,0),(128,604,6,'Société anonyme (SA)',0,1,NULL,0),(129,605,6,'Société en commandite par actions',0,1,NULL,0),(130,606,6,'Société à responsabilité limitée (SARL)',0,1,NULL,0),(131,607,6,'Société coopérative',0,1,NULL,0),(132,608,6,'Association',0,1,NULL,0),(133,609,6,'Fondation',0,1,NULL,0),(134,700,7,'Sole Trader',0,1,NULL,0),(135,701,7,'Partnership',0,1,NULL,0),(136,702,7,'Private Limited Company by shares (LTD)',0,1,NULL,0),(137,703,7,'Public Limited Company',0,1,NULL,0),(138,704,7,'Workers Cooperative',0,1,NULL,0),(139,705,7,'Limited Liability Partnership',0,1,NULL,0),(140,706,7,'Franchise',0,1,NULL,0),(141,1000,10,'Société à responsabilité limitée (SARL)',0,1,NULL,0),(142,1001,10,'Société en Nom Collectif (SNC)',0,1,NULL,0),(143,1002,10,'Société en Commandite Simple (SCS)',0,1,NULL,0),(144,1003,10,'société en participation',0,1,NULL,0),(145,1004,10,'Société Anonyme (SA)',0,1,NULL,0),(146,1005,10,'Société Unipersonnelle à Responsabilité Limitée (SUARL)',0,1,NULL,0),(147,1006,10,'Groupement d\'intérêt économique (GEI)',0,1,NULL,0),(148,1007,10,'Groupe de sociétés',0,1,NULL,0),(149,1701,17,'Eenmanszaak',0,1,NULL,0),(150,1702,17,'Maatschap',0,1,NULL,0),(151,1703,17,'Vennootschap onder firma',0,1,NULL,0),(152,1704,17,'Commanditaire vennootschap',0,1,NULL,0),(153,1705,17,'Besloten vennootschap (BV)',0,1,NULL,0),(154,1706,17,'Naamloze Vennootschap (NV)',0,1,NULL,0),(155,1707,17,'Vereniging',0,1,NULL,0),(156,1708,17,'Stichting',0,1,NULL,0),(157,1709,17,'Coöperatie met beperkte aansprakelijkheid (BA)',0,1,NULL,0),(158,1710,17,'Coöperatie met uitgesloten aansprakelijkheid (UA)',0,1,NULL,0),(159,1711,17,'Coöperatie met wettelijke aansprakelijkheid (WA)',0,1,NULL,0),(160,1712,17,'Onderlinge waarborgmaatschappij',0,1,NULL,0),(161,401,4,'Empresario Individual',0,1,NULL,0),(162,402,4,'Comunidad de Bienes',0,1,NULL,0),(163,403,4,'Sociedad Civil',0,1,NULL,0),(164,404,4,'Sociedad Colectiva',0,1,NULL,0),(165,405,4,'Sociedad Limitada',0,1,NULL,0),(166,406,4,'Sociedad Anónima',0,1,NULL,0),(167,407,4,'Sociedad Comanditaria por Acciones',0,1,NULL,0),(168,408,4,'Sociedad Comanditaria Simple',0,1,NULL,0),(169,409,4,'Sociedad Laboral',0,1,NULL,0),(170,410,4,'Sociedad Cooperativa',0,1,NULL,0),(171,411,4,'Sociedad de Garantía Recíproca',0,1,NULL,0),(172,412,4,'Entidad de Capital-Riesgo',0,1,NULL,0),(173,413,4,'Agrupación de Interés Económico',0,1,NULL,0),(174,414,4,'Sociedad de Inversión Mobiliaria',0,1,NULL,0),(175,415,4,'Agrupación sin Ánimo de Lucro',0,1,NULL,0),(176,15201,152,'Mauritius Private Company Limited By Shares',0,1,NULL,0),(177,15202,152,'Mauritius Company Limited By Guarantee',0,1,NULL,0),(178,15203,152,'Mauritius Public Company Limited By Shares',0,1,NULL,0),(179,15204,152,'Mauritius Foreign Company',0,1,NULL,0),(180,15205,152,'Mauritius GBC1 (Offshore Company)',0,1,NULL,0),(181,15206,152,'Mauritius GBC2 (International Company)',0,1,NULL,0),(182,15207,152,'Mauritius General Partnership',0,1,NULL,0),(183,15208,152,'Mauritius Limited Partnership',0,1,NULL,0),(184,15209,152,'Mauritius Sole Proprietorship',0,1,NULL,0),(185,15210,152,'Mauritius Trusts',0,1,NULL,0),(186,15401,154,'Sociedad en nombre colectivo',0,1,NULL,0),(187,15402,154,'Sociedad en comandita simple',0,1,NULL,0),(188,15403,154,'Sociedad de responsabilidad limitada',0,1,NULL,0),(189,15404,154,'Sociedad anónima',0,1,NULL,0),(190,15405,154,'Sociedad en comandita por acciones',0,1,NULL,0),(191,15406,154,'Sociedad cooperativa',0,1,NULL,0),(192,60,1,'Entreprise Individuelle à Responsabilité Limitée (EIRL)',0,1,NULL,0),(193,4100,41,'GmbH - Gesellschaft mit beschränkter Haftung',0,1,NULL,0),(194,4101,41,'GesmbH - Gesellschaft mit beschränkter Haftung',0,1,NULL,0),(195,4102,41,'AG - Aktiengesellschaft',0,1,NULL,0),(196,4103,41,'EWIV - Europäische wirtschaftliche Interessenvereinigung',0,1,NULL,0),(197,4104,41,'KEG - Kommanditerwerbsgesellschaft',0,1,NULL,0),(198,4105,41,'OEG - Offene Erwerbsgesellschaft',0,1,NULL,0),(199,4106,41,'OHG - Offene Handelsgesellschaft',0,1,NULL,0),(200,4107,41,'AG & Co KG - Kommanditgesellschaft',0,1,NULL,0),(201,4108,41,'GmbH & Co KG - Kommanditgesellschaft',0,1,NULL,0),(202,4109,41,'KG - Kommanditgesellschaft',0,1,NULL,0),(203,4110,41,'OG - Offene Gesellschaft',0,1,NULL,0),(204,4111,41,'GbR - Gesellschaft nach bürgerlichem Recht',0,1,NULL,0),(205,4112,41,'GesbR - Gesellschaft nach bürgerlichem Recht',0,1,NULL,0),(206,4113,41,'GesnbR - Gesellschaft nach bürgerlichem Recht',0,1,NULL,0),(207,4114,41,'e.U. - eingetragener Einzelunternehmer',0,1,NULL,0),(208,17801,178,'Empresa individual',0,1,NULL,0),(209,17802,178,'Asociación General',0,1,NULL,0),(210,17803,178,'Sociedad de Responsabilidad Limitada',0,1,NULL,0),(211,17804,178,'Sociedad Civil',0,1,NULL,0),(212,17805,178,'Sociedad Anónima',0,1,NULL,0),(213,8001,80,'Aktieselvskab A/S',0,1,NULL,0),(214,8002,80,'Anparts Selvskab ApS',0,1,NULL,0),(215,8003,80,'Personlig ejet selvskab',0,1,NULL,0),(216,8004,80,'Iværksætterselvskab IVS',0,1,NULL,0),(217,8005,80,'Interessentskab I/S',0,1,NULL,0),(218,8006,80,'Holdingselskab',0,1,NULL,0),(219,8007,80,'Selskab Med Begrænset Hæftelse SMBA',0,1,NULL,0),(220,8008,80,'Kommanditselskab K/S',0,1,NULL,0),(221,8009,80,'SPE-selskab',0,1,NULL,0);
/*!40000 ALTER TABLE `doli_c_forme_juridique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_holiday_types`
--

LOCK TABLES `doli_c_holiday_types` WRITE;
/*!40000 ALTER TABLE `doli_c_holiday_types` DISABLE KEYS */;
INSERT INTO `doli_c_holiday_types` VALUES (1,'LEAVE_PAID','Paid vacation',1,7,0.00000,NULL,1),(2,'LEAVE_SICK','Sick leave',0,0,0.00000,NULL,1),(3,'LEAVE_OTHER','Other leave',0,0,0.00000,NULL,1),(4,'LEAVE_RTT','RTT',1,7,0.83000,1,1);
/*!40000 ALTER TABLE `doli_c_holiday_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_hrm_department`
--

LOCK TABLES `doli_c_hrm_department` WRITE;
/*!40000 ALTER TABLE `doli_c_hrm_department` DISABLE KEYS */;
INSERT INTO `doli_c_hrm_department` VALUES (1,5,'MANAGEMENT','Management',1),(2,10,'GESTION','Gestion',1),(3,15,'TRAINING','Training',1),(4,20,'IT','Inform. Technology (IT)',1),(5,25,'MARKETING','Marketing',1),(6,30,'SALES','Sales',1),(7,35,'LEGAL','Legal',1),(8,40,'FINANCIAL','Financial accounting',1),(9,45,'HUMANRES','Human resources',1),(10,50,'PURCHASING','Purchasing',1),(11,55,'SERVICES','Services',1),(12,60,'CUSTOMSERV','Customer service',1),(13,65,'CONSULTING','Consulting',1),(14,70,'LOGISTIC','Logistics',1),(15,75,'CONSTRUCT','Engineering/design',1),(16,80,'PRODUCTION','Manufacturing',1),(17,85,'QUALITY','Quality assurance',1),(18,85,'MAINT','Plant assurance',1);
/*!40000 ALTER TABLE `doli_c_hrm_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_hrm_function`
--

LOCK TABLES `doli_c_hrm_function` WRITE;
/*!40000 ALTER TABLE `doli_c_hrm_function` DISABLE KEYS */;
INSERT INTO `doli_c_hrm_function` VALUES (1,5,'EXECBOARD','Executive board',0,1),(2,10,'MANAGDIR','Managing director',1,1),(3,15,'ACCOUNTMANAG','Account manager',0,1),(4,20,'ENGAGDIR','Engagement director',1,1),(5,25,'DIRECTOR','Director',1,1),(6,30,'PROJMANAG','Project manager',0,1),(7,35,'DEPHEAD','Department head',0,1),(8,40,'SECRETAR','Secretary',0,1),(9,45,'EMPLOYEE','Department employee',0,1);
/*!40000 ALTER TABLE `doli_c_hrm_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_hrm_public_holiday`
--

LOCK TABLES `doli_c_hrm_public_holiday` WRITE;
/*!40000 ALTER TABLE `doli_c_hrm_public_holiday` DISABLE KEYS */;
INSERT INTO `doli_c_hrm_public_holiday` VALUES (1,0,0,'NEWYEARDAY1','',1,1,0,1,NULL),(2,0,0,'LABORDAY1','',1,5,0,1,NULL),(3,0,0,'ASSOMPTIONDAY1','',15,8,0,1,NULL),(4,0,0,'CHRISTMASDAY1','',25,12,0,1,NULL),(5,0,1,'FR-VICTORYDAY','',8,5,0,1,NULL),(6,0,1,'FR-NATIONALDAY','',14,7,0,1,NULL),(7,0,1,'FR-ASSOMPTION','',15,8,0,1,NULL),(8,0,1,'FR-TOUSSAINT','',1,11,0,1,NULL),(9,0,1,'FR-ARMISTICE','',11,11,0,1,NULL),(10,0,1,'FR-EASTER','eastermonday',0,0,0,1,NULL),(11,0,1,'FR-ASCENSION','ascension',0,0,0,1,NULL),(12,0,1,'FR-PENTECOST','pentecost',0,0,0,1,NULL),(13,0,3,'IT-LIBEAZIONE','',25,4,0,1,NULL),(14,0,3,'IT-EPIPHANY','',1,6,0,1,NULL),(15,0,3,'IT-REPUBBLICA','',2,6,0,1,NULL),(16,0,3,'IT-TUTTISANTIT','',1,11,0,1,NULL),(17,0,3,'IT-IMMACULE','',8,12,0,1,NULL),(18,0,3,'IT-SAINTSTEFAN','',26,12,0,1,NULL),(19,0,4,'ES-EASTER','easter',0,0,0,1,NULL),(20,0,4,'ES-REYE','',1,6,0,1,NULL),(21,0,4,'ES-HISPANIDAD','',12,10,0,1,NULL),(22,0,4,'ES-TOUSSAINT','',1,11,0,1,NULL),(23,0,4,'ES-CONSTITUIZION','',6,12,0,1,NULL),(24,0,4,'ES-IMMACULE','',8,12,0,1,NULL),(25,0,41,'AT-EASTER','eastermonday',0,0,0,1,NULL),(26,0,41,'AT-ASCENSION','ascension',0,0,0,1,NULL),(27,0,41,'AT-PENTECOST','pentecost',0,0,0,1,NULL),(28,0,41,'AT-FRONLEICHNAM','fronleichnam',0,0,0,1,NULL),(29,0,41,'AT-KONEGIE','',1,6,0,1,NULL),(30,0,41,'AT-26OKT','',26,10,0,1,NULL),(31,0,41,'AT-TOUSSAINT','',1,11,0,1,NULL),(32,0,41,'AT-IMMACULE','',8,12,0,1,NULL),(33,0,41,'AT-24DEC','',24,12,0,1,NULL),(34,0,41,'AT-SAINTSTEFAN','',26,12,0,1,NULL),(35,0,41,'AT-Silvester','',31,12,0,1,NULL),(36,0,117,'IN-REPUBLICDAY','',26,1,0,1,NULL),(37,0,117,'IN-GANDI','',2,10,0,1,NULL);
/*!40000 ALTER TABLE `doli_c_hrm_public_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_incoterms`
--

LOCK TABLES `doli_c_incoterms` WRITE;
/*!40000 ALTER TABLE `doli_c_incoterms` DISABLE KEYS */;
INSERT INTO `doli_c_incoterms` VALUES (1,'EXW','Ex Works, au départ non chargé, non dédouané sortie d\'usine (uniquement adapté aux flux domestiques, nationaux)',1),(2,'FCA','Free Carrier, marchandises dédouanées et chargées dans le pays de départ, chez le vendeur ou chez le commissionnaire de transport de l\'acheteur',1),(3,'FAS','Free Alongside Ship, sur le quai du port de départ',1),(4,'FOB','Free On Board, chargé sur le bateau, les frais de chargement dans celui-ci étant fonction du liner term indiqué par la compagnie maritime (à la charge du vendeur)',1),(5,'CFR','Cost and Freight, chargé dans le bateau, livraison au port de départ, frais payés jusqu\'au port d\'arrivée, sans assurance pour le transport, non déchargé du navire à destination (les frais de déchargement sont inclus ou non au port d\'arrivée)',1),(6,'CIF','Cost, Insurance and Freight, chargé sur le bateau, frais jusqu\'au port d\'arrivée, avec l\'assurance marchandise transportée souscrite par le vendeur pour le compte de l\'acheteur',1),(7,'CPT','Carriage Paid To, livraison au premier transporteur, frais jusqu\'au déchargement du mode de transport, sans assurance pour le transport',1),(8,'CIP','Carriage and Insurance Paid to, idem CPT, avec assurance marchandise transportée souscrite par le vendeur pour le compte de l\'acheteur',1),(9,'DAT','Delivered At Terminal, marchandises (déchargées) livrées sur quai, dans un terminal maritime, fluvial, aérien, routier ou ferroviaire désigné (dédouanement import, et post-acheminement payés par l\'acheteur)',1),(10,'DAP','Delivered At Place, marchandises (non déchargées) mises à disposition de l\'acheteur dans le pays d\'importation au lieu précisé dans le contrat (déchargement, dédouanement import payé par l\'acheteur)',1),(11,'DDP','Delivered Duty Paid, marchandises (non déchargées) livrées à destination finale, dédouanement import et taxes à la charge du vendeur ; l\'acheteur prend en charge uniquement le déchargement (si exclusion des taxes type TVA, le préciser clairement)',1);
/*!40000 ALTER TABLE `doli_c_incoterms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_input_method`
--

LOCK TABLES `doli_c_input_method` WRITE;
/*!40000 ALTER TABLE `doli_c_input_method` DISABLE KEYS */;
INSERT INTO `doli_c_input_method` VALUES (1,'OrderByMail','Courrier',1,NULL),(2,'OrderByFax','Fax',1,NULL),(3,'OrderByEMail','EMail',1,NULL),(4,'OrderByPhone','Téléphone',1,NULL),(5,'OrderByWWW','En ligne',1,NULL);
/*!40000 ALTER TABLE `doli_c_input_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_input_reason`
--

LOCK TABLES `doli_c_input_reason` WRITE;
/*!40000 ALTER TABLE `doli_c_input_reason` DISABLE KEYS */;
INSERT INTO `doli_c_input_reason` VALUES (1,'SRC_INTE','Web site',1,NULL),(2,'SRC_CAMP_MAIL','Mailing campaign',1,NULL),(3,'SRC_CAMP_PHO','Phone campaign',1,NULL),(4,'SRC_CAMP_FAX','Fax campaign',1,NULL),(5,'SRC_COMM','Commercial contact',1,NULL),(6,'SRC_SHOP','Shop contact',1,NULL),(7,'SRC_CAMP_EMAIL','EMailing campaign',1,NULL),(8,'SRC_WOM','Word of mouth',1,NULL),(9,'SRC_PARTNER','Partner',1,NULL),(10,'SRC_EMPLOYEE','Employee',1,NULL),(11,'SRC_SPONSORING','Sponsorship',1,NULL);
/*!40000 ALTER TABLE `doli_c_input_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_lead_status`
--

LOCK TABLES `doli_c_lead_status` WRITE;
/*!40000 ALTER TABLE `doli_c_lead_status` DISABLE KEYS */;
INSERT INTO `doli_c_lead_status` VALUES (1,'PROSP','Prospection',10,0.00,1),(2,'QUAL','Qualification',20,20.00,1),(3,'PROPO','Proposal',30,40.00,1),(4,'NEGO','Negotiation',40,60.00,1),(5,'PENDING','Pending',50,50.00,0),(6,'WON','Won',60,100.00,1),(7,'LOST','Lost',70,0.00,1);
/*!40000 ALTER TABLE `doli_c_lead_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_paiement`
--

LOCK TABLES `doli_c_paiement` WRITE;
/*!40000 ALTER TABLE `doli_c_paiement` DISABLE KEYS */;
INSERT INTO `doli_c_paiement` VALUES (1,1,'TIP','TIP',2,1,NULL,NULL,0),(2,1,'VIR','Virement',2,1,NULL,NULL,0),(3,1,'PRE','Prélèvement',2,1,NULL,NULL,0),(4,1,'LIQ','Espèces',2,1,NULL,NULL,0),(6,1,'CB','Carte Bancaire',2,1,NULL,NULL,0),(7,1,'CHQ','Chèque',2,1,NULL,NULL,0),(50,1,'VAD','Paiement en ligne',2,0,NULL,NULL,0),(51,1,'TRA','Traite',2,0,NULL,NULL,0),(52,1,'LCR','LCR',2,0,NULL,NULL,0),(53,1,'FAC','Factor',2,0,NULL,NULL,0),(54,1,'PRO','Proforma',2,0,NULL,NULL,0);
/*!40000 ALTER TABLE `doli_c_paiement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_paiement_temp`
--

LOCK TABLES `doli_c_paiement_temp` WRITE;
/*!40000 ALTER TABLE `doli_c_paiement_temp` DISABLE KEYS */;
INSERT INTO `doli_c_paiement_temp` VALUES (1,1,'TIP','TIP',2,1,NULL,NULL,0),(2,1,'VIR','Virement',2,1,NULL,NULL,0),(3,1,'PRE','Prélèvement',2,1,NULL,NULL,0),(4,1,'LIQ','Espèces',2,1,NULL,NULL,0),(6,1,'CB','Carte Bancaire',2,1,NULL,NULL,0),(7,1,'CHQ','Chèque',2,1,NULL,NULL,0),(50,1,'VAD','Paiement en ligne',2,0,NULL,NULL,0),(51,1,'TRA','Traite',2,0,NULL,NULL,0),(52,1,'LCR','LCR',2,0,NULL,NULL,0),(53,1,'FAC','Factor',2,0,NULL,NULL,0),(54,1,'PRO','Proforma',2,0,NULL,NULL,0);
/*!40000 ALTER TABLE `doli_c_paiement_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_paper_format`
--

LOCK TABLES `doli_c_paper_format` WRITE;
/*!40000 ALTER TABLE `doli_c_paper_format` DISABLE KEYS */;
INSERT INTO `doli_c_paper_format` VALUES (1,'EU4A0','Format 4A0',1682.00,2378.00,'mm',1,NULL),(2,'EU2A0','Format 2A0',1189.00,1682.00,'mm',1,NULL),(3,'EUA0','Format A0',840.00,1189.00,'mm',1,NULL),(4,'EUA1','Format A1',594.00,840.00,'mm',1,NULL),(5,'EUA2','Format A2',420.00,594.00,'mm',1,NULL),(6,'EUA3','Format A3',297.00,420.00,'mm',1,NULL),(7,'EUA4','Format A4',210.00,297.00,'mm',1,NULL),(8,'EUA5','Format A5',148.00,210.00,'mm',1,NULL),(9,'EUA6','Format A6',105.00,148.00,'mm',1,NULL),(100,'USLetter','Format Letter (A)',216.00,279.00,'mm',1,NULL),(105,'USLegal','Format Legal',216.00,356.00,'mm',1,NULL),(110,'USExecutive','Format Executive',190.00,254.00,'mm',1,NULL),(115,'USLedger','Format Ledger/Tabloid (B)',279.00,432.00,'mm',1,NULL),(200,'CAP1','Format Canadian P1',560.00,860.00,'mm',1,NULL),(205,'CAP2','Format Canadian P2',430.00,560.00,'mm',1,NULL),(210,'CAP3','Format Canadian P3',280.00,430.00,'mm',1,NULL),(215,'CAP4','Format Canadian P4',215.00,280.00,'mm',1,NULL),(220,'CAP5','Format Canadian P5',140.00,215.00,'mm',1,NULL),(225,'CAP6','Format Canadian P6',107.00,140.00,'mm',1,NULL);
/*!40000 ALTER TABLE `doli_c_paper_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_payment_term`
--

LOCK TABLES `doli_c_payment_term` WRITE;
/*!40000 ALTER TABLE `doli_c_payment_term` DISABLE KEYS */;
INSERT INTO `doli_c_payment_term` VALUES (1,1,'RECEP',1,1,'A réception de facture','Réception de facture',0,0,NULL,NULL,0),(2,1,'30D',2,1,'30 jours','Réglement à 30 jours',0,30,NULL,NULL,0),(3,1,'30DENDMONTH',3,1,'30 jours fin de mois','Réglement à 30 jours fin de mois',1,30,NULL,NULL,0),(4,1,'60D',4,1,'60 jours','Réglement à 60 jours',0,60,NULL,NULL,0),(5,1,'60DENDMONTH',5,1,'60 jours fin de mois','Réglement à 60 jours fin de mois',1,60,NULL,NULL,0),(6,1,'PT_ORDER',6,1,'A réception de commande','A réception de commande',0,0,NULL,NULL,0),(7,1,'PT_DELIVERY',7,1,'Livraison','Règlement à la livraison',0,0,NULL,NULL,0),(8,1,'PT_5050',8,1,'50 et 50','Règlement 50% à la commande, 50% à la livraison',0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `doli_c_payment_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_price_expression`
--

LOCK TABLES `doli_c_price_expression` WRITE;
/*!40000 ALTER TABLE `doli_c_price_expression` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_c_price_expression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_price_global_variable`
--

LOCK TABLES `doli_c_price_global_variable` WRITE;
/*!40000 ALTER TABLE `doli_c_price_global_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_c_price_global_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_price_global_variable_updater`
--

LOCK TABLES `doli_c_price_global_variable_updater` WRITE;
/*!40000 ALTER TABLE `doli_c_price_global_variable_updater` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_c_price_global_variable_updater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_propalst`
--

LOCK TABLES `doli_c_propalst` WRITE;
/*!40000 ALTER TABLE `doli_c_propalst` DISABLE KEYS */;
INSERT INTO `doli_c_propalst` VALUES (0,'PR_DRAFT','Brouillon',1),(1,'PR_OPEN','Ouverte',1),(2,'PR_SIGNED','Signée',1),(3,'PR_NOTSIGNED','Non Signée',1),(4,'PR_FAC','Facturée',1);
/*!40000 ALTER TABLE `doli_c_propalst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_prospectlevel`
--

LOCK TABLES `doli_c_prospectlevel` WRITE;
/*!40000 ALTER TABLE `doli_c_prospectlevel` DISABLE KEYS */;
INSERT INTO `doli_c_prospectlevel` VALUES ('PL_HIGH','High',4,1,NULL),('PL_LOW','Low',2,1,NULL),('PL_MEDIUM','Medium',3,1,NULL),('PL_NONE','None',1,1,NULL);
/*!40000 ALTER TABLE `doli_c_prospectlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_regions`
--

LOCK TABLES `doli_c_regions` WRITE;
/*!40000 ALTER TABLE `doli_c_regions` DISABLE KEYS */;
INSERT INTO `doli_c_regions` VALUES (1,0,0,'0',0,'-',1),(101,1,1,'97105',3,'Guadeloupe',1),(102,2,1,'97209',3,'Martinique',1),(103,3,1,'97302',3,'Guyane',1),(104,4,1,'97411',3,'Réunion',1),(105,11,1,'75056',1,'Île-de-France',1),(106,21,1,'51108',0,'Champagne-Ardenne',1),(107,22,1,'80021',0,'Picardie',1),(108,23,1,'76540',0,'Haute-Normandie',1),(109,24,1,'45234',2,'Centre',1),(110,25,1,'14118',0,'Basse-Normandie',1),(111,26,1,'21231',0,'Bourgogne',1),(112,31,1,'59350',2,'Nord-Pas-de-Calais',1),(113,41,1,'57463',0,'Lorraine',1),(114,42,1,'67482',1,'Alsace',1),(115,43,1,'25056',0,'Franche-Comté',1),(116,52,1,'44109',4,'Pays de la Loire',1),(117,53,1,'35238',0,'Bretagne',1),(118,54,1,'86194',2,'Poitou-Charentes',1),(119,72,1,'33063',1,'Aquitaine',1),(120,73,1,'31555',0,'Midi-Pyrénées',1),(121,74,1,'87085',2,'Limousin',1),(122,82,1,'69123',2,'Rhône-Alpes',1),(123,83,1,'63113',1,'Auvergne',1),(124,91,1,'34172',2,'Languedoc-Roussillon',1),(125,93,1,'13055',0,'Provence-Alpes-Côte d\'Azur',1),(126,94,1,'2A004',0,'Corse',1),(201,201,2,'',1,'Flandre',1),(202,202,2,'',2,'Wallonie',1),(203,203,2,'',3,'Bruxelles-Capitale',1),(301,301,3,NULL,1,'Abruzzo',1),(302,302,3,NULL,1,'Basilicata',1),(303,303,3,NULL,1,'Calabria',1),(304,304,3,NULL,1,'Campania',1),(305,305,3,NULL,1,'Emilia-Romagna',1),(306,306,3,NULL,1,'Friuli-Venezia Giulia',1),(307,307,3,NULL,1,'Lazio',1),(308,308,3,NULL,1,'Liguria',1),(309,309,3,NULL,1,'Lombardia',1),(310,310,3,NULL,1,'Marche',1),(311,311,3,NULL,1,'Molise',1),(312,312,3,NULL,1,'Piemonte',1),(313,313,3,NULL,1,'Puglia',1),(314,314,3,NULL,1,'Sardegna',1),(315,315,3,NULL,1,'Sicilia',1),(316,316,3,NULL,1,'Toscana',1),(317,317,3,NULL,1,'Trentino-Alto Adige',1),(318,318,3,NULL,1,'Umbria',1),(319,319,3,NULL,1,'Valle d Aosta',1),(320,320,3,NULL,1,'Veneto',1),(401,401,4,'',0,'Andalucia',1),(402,402,4,'',0,'Aragón',1),(403,403,4,'',0,'Castilla y León',1),(404,404,4,'',0,'Castilla la Mancha',1),(405,405,4,'',0,'Canarias',1),(406,406,4,'',0,'Cataluña',1),(407,407,4,'',0,'Comunidad de Ceuta',1),(408,408,4,'',0,'Comunidad Foral de Navarra',1),(409,409,4,'',0,'Comunidad de Melilla',1),(410,410,4,'',0,'Cantabria',1),(411,411,4,'',0,'Comunidad Valenciana',1),(412,412,4,'',0,'Extemadura',1),(413,413,4,'',0,'Galicia',1),(414,414,4,'',0,'Islas Baleares',1),(415,415,4,'',0,'La Rioja',1),(416,416,4,'',0,'Comunidad de Madrid',1),(417,417,4,'',0,'Región de Murcia',1),(418,418,4,'',0,'Principado de Asturias',1),(419,419,4,'',0,'Pais Vasco',1),(501,501,5,'',0,'Deutschland',1),(601,601,6,'',1,'Cantons',1),(701,701,7,'',0,'England',1),(702,702,7,'',0,'Wales',1),(703,703,7,'',0,'Scotland',1),(704,704,7,'',0,'Northern Ireland',1),(1001,1001,10,'',0,'Ariana',1),(1002,1002,10,'',0,'Béja',1),(1003,1003,10,'',0,'Ben Arous',1),(1004,1004,10,'',0,'Bizerte',1),(1005,1005,10,'',0,'Gabès',1),(1006,1006,10,'',0,'Gafsa',1),(1007,1007,10,'',0,'Jendouba',1),(1008,1008,10,'',0,'Kairouan',1),(1009,1009,10,'',0,'Kasserine',1),(1010,1010,10,'',0,'Kébili',1),(1011,1011,10,'',0,'La Manouba',1),(1012,1012,10,'',0,'Le Kef',1),(1013,1013,10,'',0,'Mahdia',1),(1014,1014,10,'',0,'Médenine',1),(1015,1015,10,'',0,'Monastir',1),(1016,1016,10,'',0,'Nabeul',1),(1017,1017,10,'',0,'Sfax',1),(1018,1018,10,'',0,'Sidi Bouzid',1),(1019,1019,10,'',0,'Siliana',1),(1020,1020,10,'',0,'Sousse',1),(1021,1021,10,'',0,'Tataouine',1),(1022,1022,10,'',0,'Tozeur',1),(1023,1023,10,'',0,'Tunis',1),(1024,1024,10,'',0,'Zaghouan',1),(1101,1101,11,'',0,'United-States',1),(1201,1201,12,'',0,'Tanger-Tétouan',1),(1202,1202,12,'',0,'Gharb-Chrarda-Beni Hssen',1),(1203,1203,12,'',0,'Taza-Al Hoceima-Taounate',1),(1204,1204,12,'',0,'L\'Oriental',1),(1205,1205,12,'',0,'Fès-Boulemane',1),(1206,1206,12,'',0,'Meknès-Tafialet',1),(1207,1207,12,'',0,'Rabat-Salé-Zemour-Zaër',1),(1208,1208,12,'',0,'Grand Cassablanca',1),(1209,1209,12,'',0,'Chaouia-Ouardigha',1),(1210,1210,12,'',0,'Doukahla-Adba',1),(1211,1211,12,'',0,'Marrakech-Tensift-Al Haouz',1),(1212,1212,12,'',0,'Tadla-Azilal',1),(1213,1213,12,'',0,'Sous-Massa-Drâa',1),(1214,1214,12,'',0,'Guelmim-Es Smara',1),(1215,1215,12,'',0,'Laâyoune-Boujdour-Sakia el Hamra',1),(1216,1216,12,'',0,'Oued Ed-Dahab Lagouira',1),(1301,1301,13,'',0,'Algerie',1),(1401,1401,14,'',0,'Canada',1),(1701,1701,17,'',0,'Provincies van Nederland ',1),(2301,2301,23,'',0,'Norte',1),(2302,2302,23,'',0,'Litoral',1),(2303,2303,23,'',0,'Cuyana',1),(2304,2304,23,'',0,'Central',1),(2305,2305,23,'',0,'Patagonia',1),(2801,2801,28,'',0,'Australia',1),(4601,4601,46,'',0,'Barbados',1),(5601,5601,56,'',0,'Brasil',1),(6701,6701,67,NULL,NULL,'Tarapacá',1),(6702,6702,67,NULL,NULL,'Antofagasta',1),(6703,6703,67,NULL,NULL,'Atacama',1),(6704,6704,67,NULL,NULL,'Coquimbo',1),(6705,6705,67,NULL,NULL,'Valparaíso',1),(6706,6706,67,NULL,NULL,'General Bernardo O Higgins',1),(6707,6707,67,NULL,NULL,'Maule',1),(6708,6708,67,NULL,NULL,'Biobío',1),(6709,6709,67,NULL,NULL,'Raucanía',1),(6710,6710,67,NULL,NULL,'Los Lagos',1),(6711,6711,67,NULL,NULL,'Aysén General Carlos Ibáñez del Campo',1),(6712,6712,67,NULL,NULL,'Magallanes y Antártica Chilena',1),(6713,6713,67,NULL,NULL,'Metropolitana de Santiago',1),(6714,6714,67,NULL,NULL,'Los Ríos',1),(6715,6715,67,NULL,NULL,'Arica y Parinacota',1),(7001,7001,70,'',0,'Colombie',1),(8601,8601,86,NULL,NULL,'Central',1),(8602,8602,86,NULL,NULL,'Oriental',1),(8603,8603,86,NULL,NULL,'Occidental',1),(10201,10201,102,NULL,NULL,'??????',1),(10202,10202,102,NULL,NULL,'?????? ??????',1),(10203,10203,102,NULL,NULL,'???????? ?????????',1),(10204,10204,102,NULL,NULL,'?????',1),(10205,10205,102,NULL,NULL,'????????? ????????? ??? ?????',1),(10206,10206,102,NULL,NULL,'???????',1),(10207,10207,102,NULL,NULL,'????? ?????',1),(10208,10208,102,NULL,NULL,'?????? ??????',1),(10209,10209,102,NULL,NULL,'????????????',1),(10210,10210,102,NULL,NULL,'????? ??????',1),(10211,10211,102,NULL,NULL,'?????? ??????',1),(10212,10212,102,NULL,NULL,'????????',1),(10213,10213,102,NULL,NULL,'?????? ?????????',1),(11401,11401,114,'',0,'Honduras',1),(11701,11701,117,'',0,'India',1),(15201,15201,152,'',0,'Rivière Noire',1),(15202,15202,152,'',0,'Flacq',1),(15203,15203,152,'',0,'Grand Port',1),(15204,15204,152,'',0,'Moka',1),(15205,15205,152,'',0,'Pamplemousses',1),(15206,15206,152,'',0,'Plaines Wilhems',1),(15207,15207,152,'',0,'Port-Louis',1),(15208,15208,152,'',0,'Rivière du Rempart',1),(15209,15209,152,'',0,'Savanne',1),(15210,15210,152,'',0,'Rodrigues',1),(15211,15211,152,'',0,'Les îles Agaléga',1),(15212,15212,152,'',0,'Les écueils des Cargados Carajos',1),(15401,15401,154,'',0,'Mexique',1),(23201,23201,232,'',0,'Los Andes',1),(23202,23202,232,'',0,'Capital',1),(23203,23203,232,'',0,'Central',1),(23204,23204,232,'',0,'Cento Occidental',1),(23205,23205,232,'',0,'Guayana',1),(23206,23206,232,'',0,'Insular',1),(23207,23207,232,'',0,'Los Llanos',1),(23208,23208,232,'',0,'Nor-Oriental',1),(23209,23209,232,'',0,'Zuliana',1),(23210,5201,52,'',0,'Chuquisaca',1),(23211,5202,52,'',0,'La Paz',1),(23212,5203,52,'',0,'Cochabamba',1),(23213,5204,52,'',0,'Oruro',1),(23214,5205,52,'',0,'Potosí',1),(23215,5206,52,'',0,'Tarija',1),(23216,5207,52,'',0,'Santa Cruz',1),(23217,5208,52,'',0,'El Beni',1),(23218,5209,52,'',0,'Pando',1),(23219,4101,41,'',0,'Österreich',1),(23220,17801,178,'',0,'Panama',1),(23221,11801,118,'',0,'Indonesia',1);
/*!40000 ALTER TABLE `doli_c_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_revenuestamp`
--

LOCK TABLES `doli_c_revenuestamp` WRITE;
/*!40000 ALTER TABLE `doli_c_revenuestamp` DISABLE KEYS */;
INSERT INTO `doli_c_revenuestamp` VALUES (101,10,0.4,'Revenue stamp tunisia',1,NULL,NULL,'fixed');
/*!40000 ALTER TABLE `doli_c_revenuestamp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_shipment_mode`
--

LOCK TABLES `doli_c_shipment_mode` WRITE;
/*!40000 ALTER TABLE `doli_c_shipment_mode` DISABLE KEYS */;
INSERT INTO `doli_c_shipment_mode` VALUES (1,'2014-12-01 02:25:41','CATCH','Catch','Catch by client','',1,NULL,1),(2,'2014-12-01 02:25:41','TRANS','Transporter','Generic transporter','',1,NULL,1),(3,'2014-12-01 02:25:41','COLSUI','Colissimo Suivi','Colissimo Suivi','',0,NULL,1),(4,'2014-12-01 02:25:41','LETTREMAX','Lettre Max','Courrier Suivi et Lettre Max','',0,NULL,1),(5,'2014-12-01 02:25:41','UPS','UPS','United Parcel Service','http://wwwapps.ups.com/etracking/tracking.cgi?InquiryNumber2=&InquiryNumber3=&tracknums_displayed=3&loc=fr_FR&TypeOfInquiryNumber=T&HTMLVersion=4.0&InquiryNumber22=&InquiryNumber32=&track=Track&Suivi.x=64&Suivi.y=7&Suivi=Valider&InquiryNumber1={TRACKID}',0,NULL,1),(6,'2014-12-01 02:25:41','KIALA','KIALA','Relais Kiala','http://www.kiala.fr/tnt/delivery/{TRACKID}',0,NULL,1),(7,'2014-12-01 02:25:41','GLS','GLS','General Logistics Systems','http://www.gls-group.eu/276-I-PORTAL-WEB/content/GLS/FR01/FR/5004.htm?txtAction=71000&txtRefNo={TRACKID}',0,NULL,1),(8,'2014-12-01 02:25:41','CHRONO','Chronopost','Chronopost','http://www.chronopost.fr/expedier/inputLTNumbersNoJahia.do?listeNumeros={TRACKID}',0,NULL,1);
/*!40000 ALTER TABLE `doli_c_shipment_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_shipment_package_type`
--

LOCK TABLES `doli_c_shipment_package_type` WRITE;
/*!40000 ALTER TABLE `doli_c_shipment_package_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_c_shipment_package_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_socialnetworks`
--

LOCK TABLES `doli_c_socialnetworks` WRITE;
/*!40000 ALTER TABLE `doli_c_socialnetworks` DISABLE KEYS */;
INSERT INTO `doli_c_socialnetworks` VALUES (1,1,'facebook','Facebook','https://www.facebook.com/{socialid}','fa-facebook',1),(2,1,'skype','Skype','https://www.skype.com/{socialid}','fa-skype',1),(3,1,'twitter','Twitter','https://www.twitter.com/{socialid}','fa-twitter',1),(4,1,'linkedin','LinkedIn','https://www.linkedin.com/{socialid}','fa-linkedin',1),(5,1,'instagram','Instagram','https://www.instagram.com/{socialid}','fa-instagram',1),(6,1,'snapchat','Snapchat','{socialid}','fa-snapchat',1),(7,1,'googleplus','GooglePlus','https://www.googleplus.com/{socialid}','fa-google-plus-g',1),(8,1,'youtube','Youtube','https://www.youtube.com/{socialid}','fa-youtube',1),(9,1,'whatsapp','Whatsapp','{socialid}','fa-whatsapp',1),(10,1,'tumblr','Tumblr','https://www.tumblr.com/{socialid}','fa-tumblr',0),(11,1,'vero','Vero','https://vero.co/{socialid}','',0),(12,1,'viadeo','Viadeo','https://fr.viadeo.com/fr/{socialid}','fa-viadeo',0),(13,1,'slack','Slack','{socialid}','fa-slack',0),(14,1,'xing','Xing','{socialid}','fa-xing',0),(15,1,'meetup','Meetup','{socialid}','fa-meetup',0),(16,1,'pinterest','Pinterest','{socialid}','fa-pinterest',0),(17,1,'flickr','Flickr','{socialid}','fa-flickr',0),(18,1,'500px','500px','{socialid}','fa-500px',0),(19,1,'giphy','Giphy','{socialid}','',0),(20,1,'gifycat','Gificat','{socialid}','',0),(21,1,'dailymotion','Dailymotion','{socialid}','',0),(22,1,'vimeo','Vimeo','{socialid}','',0),(23,1,'periscope','Periscope','{socialid}','',0),(24,1,'twitch','Twitch','{socialid}','',0),(25,1,'discord','Discord','{socialid}','fa-discord',0),(26,1,'wikipedia','Wikipedia','{socialid}','',0),(27,1,'reddit','Reddit','{socialid}','fa-reddit',0),(28,1,'quora','Quora','{socialid}','',0),(29,1,'tripadvisor','Tripadvisor','{socialid}','',0),(30,1,'mastodon','Mastodon','{socialid}','',0),(31,1,'diaspora','Diaspora','{socialid}','',0),(32,1,'viber','Viber','{socialid}','',0);
/*!40000 ALTER TABLE `doli_c_socialnetworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_stcomm`
--

LOCK TABLES `doli_c_stcomm` WRITE;
/*!40000 ALTER TABLE `doli_c_stcomm` DISABLE KEYS */;
INSERT INTO `doli_c_stcomm` VALUES (-1,'ST_NO','Ne pas contacter',1,NULL),(0,'ST_NEVER','Jamais contacté',1,NULL),(1,'ST_TODO','A contacter',1,NULL),(2,'ST_PEND','Contact en cours',1,NULL),(3,'ST_DONE','Contactée',1,NULL);
/*!40000 ALTER TABLE `doli_c_stcomm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_ticket_category`
--

LOCK TABLES `doli_c_ticket_category` WRITE;
/*!40000 ALTER TABLE `doli_c_ticket_category` DISABLE KEYS */;
INSERT INTO `doli_c_ticket_category` VALUES (1,1,'OTHER','10','Other',1,1,NULL);
/*!40000 ALTER TABLE `doli_c_ticket_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_ticket_severity`
--

LOCK TABLES `doli_c_ticket_severity` WRITE;
/*!40000 ALTER TABLE `doli_c_ticket_severity` DISABLE KEYS */;
INSERT INTO `doli_c_ticket_severity` VALUES (1,1,'LOW','10','Low','',1,0,NULL),(2,1,'NORMAL','20','Normal','',1,1,NULL),(3,1,'HIGH','30','High','',1,0,NULL),(4,1,'BLOCKING','40','Critical / blocking','',1,0,NULL);
/*!40000 ALTER TABLE `doli_c_ticket_severity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_ticket_type`
--

LOCK TABLES `doli_c_ticket_type` WRITE;
/*!40000 ALTER TABLE `doli_c_ticket_type` DISABLE KEYS */;
INSERT INTO `doli_c_ticket_type` VALUES (1,1,'COM','10','Commercial question',1,1,NULL),(2,1,'ISSUE','20','Issue or problem',1,0,NULL),(3,1,'REQUEST','25','Change or enhancement request',1,0,NULL),(4,1,'PROJECT','30','Project',0,0,NULL),(5,1,'OTHER','40','Other',1,0,NULL),(6,1,'HELP','15','Request for functionnal help',1,0,NULL);
/*!40000 ALTER TABLE `doli_c_ticket_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_tva`
--

LOCK TABLES `doli_c_tva` WRITE;
/*!40000 ALTER TABLE `doli_c_tva` DISABLE KEYS */;
INSERT INTO `doli_c_tva` VALUES (11,1,'',20,'0','0','0','0',0,'VAT standard rate (France hors DOM-TOM)',1,NULL,NULL),(12,1,'',8.5,'0','0','0','0',0,'VAT standard rate (DOM sauf Guyane et Saint-Martin)',0,NULL,NULL),(13,1,'',8.5,'0','0','0','0',1,'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur',0,NULL,NULL),(14,1,'',5.5,'0','0','0','0',0,'VAT reduced rate (France hors DOM-TOM)',1,NULL,NULL),(15,1,'',0,'0','0','0','0',0,'VAT Rate 0 ou non applicable',1,NULL,NULL),(16,1,'',2.1,'0','0','0','0',0,'VAT super-reduced rate',1,NULL,NULL),(17,1,'',10,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(21,2,'',21,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(22,2,'',6,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(23,2,'',0,'0','0','0','0',0,'VAT Rate 0 ou non applicable',1,NULL,NULL),(24,2,'',12,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(31,3,'',21,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(32,3,'',10,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(33,3,'',4,'0','0','0','0',0,'VAT super-reduced rate',1,NULL,NULL),(34,3,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(41,4,'',21,'5.2','3','-21','1',0,'VAT standard rate',1,NULL,NULL),(42,4,'',10,'1.4','3','-21','1',0,'VAT reduced rate',1,NULL,NULL),(43,4,'',4,'0.5','3','-21','1',0,'VAT super-reduced rate',1,NULL,NULL),(44,4,'',0,'0','3','-21','1',0,'VAT Rate 0',1,NULL,NULL),(51,5,'',19,'0','0','0','0',0,'allgemeine Ust.',1,NULL,NULL),(52,5,'',7,'0','0','0','0',0,'ermäßigte USt.',1,NULL,NULL),(53,5,'',0,'0','0','0','0',0,'keine USt.',1,NULL,NULL),(54,5,'',5.5,'0','0','0','0',0,'USt. Forst',0,NULL,NULL),(55,5,'',10.7,'0','0','0','0',0,'USt. Landwirtschaft',0,NULL,NULL),(61,6,'',8,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(62,6,'',3.8,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(63,6,'',2.5,'0','0','0','0',0,'VAT super-reduced rate',1,NULL,NULL),(64,6,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(71,7,'',20,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(72,7,'',17.5,'0','0','0','0',0,'VAT standard rate before 2011',1,NULL,NULL),(73,7,'',5,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(74,7,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(91,9,'',17,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(92,9,'',13,'0','0','0','0',0,'VAT reduced rate 0',1,NULL,NULL),(93,9,'',3,'0','0','0','0',0,'VAT super reduced rate 0',1,NULL,NULL),(94,9,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(101,10,'',6,'1','4','0','0',0,'VAT 6%',1,NULL,NULL),(102,10,'',12,'1','4','0','0',0,'VAT 12%',1,NULL,NULL),(103,10,'',18,'1','4','0','0',0,'VAT 18%',1,NULL,NULL),(104,10,'',7.5,'1','4','0','0',0,'VAT 6% Majoré à 25% (7.5%)',1,NULL,NULL),(105,10,'',15,'1','4','0','0',0,'VAT 12% Majoré à 25% (15%)',1,NULL,NULL),(106,10,'',22.5,'1','4','0','0',0,'VAT 18% Majoré à 25% (22.5%)',1,NULL,NULL),(107,10,'',0,'1','4','0','0',0,'VAT Rate 0',1,NULL,NULL),(111,11,'',0,'0','0','0','0',0,'No Sales Tax',1,NULL,NULL),(112,11,'',4,'0','0','0','0',0,'Sales Tax 4%',1,NULL,NULL),(113,11,'',6,'0','0','0','0',0,'Sales Tax 6%',1,NULL,NULL),(121,12,'',20,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(122,12,'',14,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(123,12,'',10,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(124,12,'',7,'0','0','0','0',0,'VAT super-reduced rate',1,NULL,NULL),(125,12,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(141,14,'',7,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(142,14,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(143,14,'',5,'9.975','1','0','0',0,'TPS and TVQ rate',1,NULL,NULL),(171,17,'',19,'0','0','0','0',0,'Algemeen BTW tarief',1,NULL,NULL),(172,17,'',6,'0','0','0','0',0,'Verlaagd BTW tarief',1,NULL,NULL),(173,17,'',0,'0','0','0','0',0,'0 BTW tarief',1,NULL,NULL),(174,17,'',21,'0','0','0','0',0,'Algemeen BTW tarief (vanaf 1 oktober 2012)',0,NULL,NULL),(201,20,'',25,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(202,20,'',12,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(203,20,'',6,'0','0','0','0',0,'VAT super-reduced rate',1,NULL,NULL),(204,20,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(211,21,'',0,'0','0','0','0',0,'IVA Rate 0',1,NULL,NULL),(212,21,'',18,'7.5','2','0','0',0,'IVA standard rate',1,NULL,NULL),(231,23,'',21,'0','0','0','0',0,'IVA standard rate',1,NULL,NULL),(232,23,'',10.5,'0','0','0','0',0,'IVA reduced rate',1,NULL,NULL),(233,23,'',0,'0','0','0','0',0,'IVA Rate 0',1,NULL,NULL),(241,24,'',19.25,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(242,24,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(251,25,'',23,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(252,25,'',13,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(253,25,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(254,25,'',6,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(261,26,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(271,27,'',19.6,'0','0','0','0',0,'VAT standard rate (France hors DOM-TOM)',1,NULL,NULL),(272,27,'',8.5,'0','0','0','0',0,'VAT standard rate (DOM sauf Guyane et Saint-Martin)',0,NULL,NULL),(273,27,'',8.5,'0','0','0','0',1,'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur',0,NULL,NULL),(274,27,'',5.5,'0','0','0','0',0,'VAT reduced rate (France hors DOM-TOM)',0,NULL,NULL),(275,27,'',0,'0','0','0','0',0,'VAT Rate 0 ou non applicable',1,NULL,NULL),(276,27,'',2.1,'0','0','0','0',0,'VAT super-reduced rate',1,NULL,NULL),(277,27,'',7,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(281,28,'',10,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(282,28,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(411,41,'',20,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(412,41,'',10,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(413,41,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(461,46,'',0,'0','0','0','0',0,'No VAT',1,NULL,NULL),(462,46,'',15,'0','0','0','0',0,'VAT 15%',1,NULL,NULL),(463,46,'',7.5,'0','0','0','0',0,'VAT 7.5%',1,NULL,NULL),(561,56,'',0,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(591,59,'',20,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(592,59,'',7,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(593,59,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(671,67,'',19,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(672,67,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(801,80,'',25,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(802,80,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(861,86,'',13,'0','0','0','0',0,'IVA 13',1,NULL,NULL),(862,86,'',0,'0','0','0','0',0,'SIN IVA',1,NULL,NULL),(1141,114,'',0,'0','0','0','0',0,'No ISV',1,NULL,NULL),(1142,114,'',12,'0','0','0','0',0,'ISV 12%',1,NULL,NULL),(1161,116,'',25.5,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(1162,116,'',7,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(1163,116,'',0,'0','0','0','0',0,'VAT rate 0',1,NULL,NULL),(1171,117,'',12.5,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(1172,117,'',4,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(1173,117,'',1,'0','0','0','0',0,'VAT super-reduced rate',1,NULL,NULL),(1174,117,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1176,117,'C+S-18',0,'9','1','9','1',0,'CGST+SGST - Same state sales',1,NULL,NULL),(1177,117,'I-18',18,'0','0','0','0',0,'IGST',1,NULL,NULL),(1178,117,'C+S-5',0,'2.5','1','2.5','1',0,'CGST+SGST - Same state sales',1,NULL,NULL),(1179,117,'I-5',5,'0','0','0','0',0,'IGST',1,NULL,NULL),(1180,117,'C+S-12',0,'6','1','6','1',0,'CGST+SGST - Same state sales',1,NULL,NULL),(1181,117,'I-12',12,'0','0','0','0',0,'IGST',1,NULL,NULL),(1182,117,'C+S-28',0,'14','1','14','1',0,'CGST+SGST - Same state sales',1,NULL,NULL),(1183,117,'I-28',28,'0','0','0','0',0,'IGST',1,NULL,NULL),(1231,123,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1232,123,'',5,'0','0','0','0',0,'VAT Rate 5',1,NULL,NULL),(1401,140,'',15,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(1402,140,'',12,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(1403,140,'',6,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(1404,140,'',3,'0','0','0','0',0,'VAT super-reduced rate',1,NULL,NULL),(1405,140,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1481,148,'',18,NULL,'0',NULL,'0',0,'VAT standard rate',1,NULL,NULL),(1482,148,'',7,NULL,'0',NULL,'0',0,'VAT reduced rate',1,NULL,NULL),(1483,148,'',5,NULL,'0',NULL,'0',0,'VAT super-reduced rate',1,NULL,NULL),(1484,148,'',0,NULL,'0',NULL,'0',0,'VAT Rate 0',1,NULL,NULL),(1511,151,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1512,151,'',14,'0','0','0','0',0,'VAT Rate 14',1,NULL,NULL),(1521,152,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1522,152,'',15,'0','0','0','0',0,'VAT Rate 15',1,NULL,NULL),(1541,154,'',0,'0','0','0','0',0,'No VAT',1,NULL,NULL),(1542,154,'',16,'0','0','0','0',0,'VAT 16%',1,NULL,NULL),(1543,154,'',10,'0','0','0','0',0,'VAT Frontero',1,NULL,NULL),(1662,166,'',15,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(1663,166,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1692,169,'',5,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(1693,169,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1731,173,'',25,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(1732,173,'',14,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(1733,173,'',8,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(1734,173,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1781,178,'',7,NULL,'0',NULL,'0',0,'ITBMS standard rate',1,NULL,NULL),(1782,178,'',0,NULL,'0',NULL,'0',0,'ITBMS Rate 0',1,NULL,NULL),(1841,181,'',18,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(1842,184,'',7,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(1843,181,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1844,184,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1881,188,'',24,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(1882,188,'',9,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(1883,188,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(1884,188,'',5,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(1931,193,'',0,'0','0','0','0',0,'No VAT in SPM',1,NULL,NULL),(2011,201,'',19,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(2012,201,'',10,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(2013,201,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(2021,202,'',22,'0','0','0','0',0,'VAT standard rate',1,NULL,NULL),(2022,202,'',9.5,'0','0','0','0',0,'VAT reduced rate',1,NULL,NULL),(2023,202,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(2051,205,'',0,'0','0','0','0',0,'No VAT',1,NULL,NULL),(2052,205,'',14,'0','0','0','0',0,'VAT 14%',1,NULL,NULL),(2131,213,'',5,NULL,'0',NULL,'0',0,'VAT 5%',1,NULL,NULL),(2261,226,'',20,'0','0','0','0',0,'VAT standart rate',1,NULL,NULL),(2262,226,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(2321,232,'',0,'0','0','0','0',0,'No VAT',1,NULL,NULL),(2322,232,'',12,'0','0','0','0',0,'VAT 12%',1,NULL,NULL),(2323,232,'',8,'0','0','0','0',0,'VAT 8%',1,NULL,NULL),(2461,246,'',0,'0','0','0','0',0,'VAT Rate 0',1,NULL,NULL),(2462,102,'',23,'0','0','0','0',0,'????????? ?.?.?.',1,NULL,NULL),(2463,102,'',0,'0','0','0','0',0,'???????? ?.?.?.',1,NULL,NULL),(2464,102,'',13,'0','0','0','0',0,'????????? ?.?.?.',1,NULL,NULL),(2465,102,'',6.5,'0','0','0','0',0,'????????????? ?.?.?.',1,NULL,NULL),(2466,102,'',16,'0','0','0','0',0,'????? ????????? ?.?.?.',1,NULL,NULL),(2467,102,'',9,'0','0','0','0',0,'????? ????????? ?.?.?.',1,NULL,NULL),(2468,102,'',5,'0','0','0','0',0,'????? ????????????? ?.?.?.',1,NULL,NULL),(2469,1,'85',8.5,NULL,'0',NULL,'0',0,'VAT standard rate (DOM sauf Guyane et Saint-Martin)',0,NULL,NULL),(2470,1,'85NPR',8.5,NULL,'0',NULL,'0',1,'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur',0,NULL,NULL),(2471,1,'85NPROM',8.5,'2','3',NULL,'0',1,'VAT standard rate (DOM sauf Guyane et Saint-Martin), NPR, Octroi de Mer',0,NULL,NULL),(2472,1,'85NPROMOMR',8.5,'2','3','2.5','3',1,'VAT standard rate (DOM sauf Guyane et Saint-Martin), NPR, Octroi de Mer et Octroi de Mer Regional',0,NULL,NULL);
/*!40000 ALTER TABLE `doli_c_tva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_type_contact`
--

LOCK TABLES `doli_c_type_contact` WRITE;
/*!40000 ALTER TABLE `doli_c_type_contact` DISABLE KEYS */;
INSERT INTO `doli_c_type_contact` VALUES (10,'contrat','internal','SALESREPSIGN','Commercial signataire du contrat',1,NULL,0),(11,'contrat','internal','SALESREPFOLL','Commercial suivi du contrat',1,NULL,0),(20,'contrat','external','BILLING','Contact client facturation contrat',1,NULL,0),(21,'contrat','external','CUSTOMER','Contact client suivi contrat',1,NULL,0),(22,'contrat','external','SALESREPSIGN','Contact client signataire contrat',1,NULL,0),(31,'propal','internal','SALESREPFOLL','Commercial à l\'origine de la propale',1,NULL,0),(40,'propal','external','BILLING','Contact client facturation propale',1,NULL,0),(41,'propal','external','CUSTOMER','Contact client suivi propale',1,NULL,0),(42,'propal','external','SHIPPING','Customer contact for delivery',1,NULL,0),(50,'facture','internal','SALESREPFOLL','Responsable suivi du paiement',1,NULL,0),(60,'facture','external','BILLING','Contact client facturation',1,NULL,0),(61,'facture','external','SHIPPING','Contact client livraison',1,NULL,0),(62,'facture','external','SERVICE','Contact client prestation',1,NULL,0),(70,'invoice_supplier','internal','SALESREPFOLL','Responsable suivi du paiement',1,NULL,0),(71,'invoice_supplier','external','BILLING','Contact fournisseur facturation',1,NULL,0),(72,'invoice_supplier','external','SHIPPING','Contact fournisseur livraison',1,NULL,0),(73,'invoice_supplier','external','SERVICE','Contact fournisseur prestation',1,NULL,0),(80,'agenda','internal','ACTOR','Responsable',1,NULL,0),(81,'agenda','internal','GUEST','Guest',1,NULL,0),(85,'agenda','external','ACTOR','Responsable',1,NULL,0),(86,'agenda','external','GUEST','Guest',1,NULL,0),(91,'commande','internal','SALESREPFOLL','Responsable suivi de la commande',1,NULL,0),(100,'commande','external','BILLING','Contact client facturation commande',1,NULL,0),(101,'commande','external','CUSTOMER','Contact client suivi commande',1,NULL,0),(102,'commande','external','SHIPPING','Contact client livraison commande',1,NULL,0),(110,'supplier_proposal','internal','SALESREPFOLL','Responsable suivi de la demande',1,NULL,0),(111,'supplier_proposal','external','BILLING','Contact fournisseur facturation',1,NULL,0),(112,'supplier_proposal','external','SHIPPING','Contact fournisseur livraison',1,NULL,0),(113,'supplier_proposal','external','SERVICE','Contact fournisseur prestation',1,NULL,0),(120,'fichinter','internal','INTERREPFOLL','Responsable suivi de l\'intervention',1,NULL,0),(121,'fichinter','internal','INTERVENING','Intervenant',1,NULL,0),(130,'fichinter','external','BILLING','Contact client facturation intervention',1,NULL,0),(131,'fichinter','external','CUSTOMER','Contact client suivi de l\'intervention',1,NULL,0),(140,'order_supplier','internal','SALESREPFOLL','Responsable suivi de la commande',1,NULL,0),(141,'order_supplier','internal','SHIPPING','Responsable réception de la commande',1,NULL,0),(142,'order_supplier','external','BILLING','Contact fournisseur facturation commande',1,NULL,0),(143,'order_supplier','external','CUSTOMER','Contact fournisseur suivi commande',1,NULL,0),(145,'order_supplier','external','SHIPPING','Contact fournisseur livraison commande',1,NULL,0),(150,'dolresource','internal','USERINCHARGE','In charge of resource',1,NULL,0),(151,'dolresource','external','THIRDINCHARGE','In charge of resource',1,NULL,0),(155,'ticket','internal','SUPPORTTEC','Utilisateur contact support',1,NULL,0),(156,'ticket','internal','CONTRIBUTOR','Intervenant',1,NULL,0),(157,'ticket','external','SUPPORTCLI','Contact client suivi incident',1,NULL,0),(158,'ticket','external','CONTRIBUTOR','Intervenant',1,NULL,0),(160,'project','internal','PROJECTLEADER','Chef de Projet',1,NULL,0),(161,'project','internal','PROJECTCONTRIBUTOR','Intervenant',1,NULL,0),(170,'project','external','PROJECTLEADER','Chef de Projet',1,NULL,0),(171,'project','external','PROJECTCONTRIBUTOR','Intervenant',1,NULL,0),(180,'project_task','internal','TASKEXECUTIVE','Responsable',1,NULL,0),(181,'project_task','internal','TASKCONTRIBUTOR','Intervenant',1,NULL,0),(190,'project_task','external','TASKEXECUTIVE','Responsable',1,NULL,0),(191,'project_task','external','TASKCONTRIBUTOR','Intervenant',1,NULL,0);
/*!40000 ALTER TABLE `doli_c_type_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_type_container`
--

LOCK TABLES `doli_c_type_container` WRITE;
/*!40000 ALTER TABLE `doli_c_type_container` DISABLE KEYS */;
INSERT INTO `doli_c_type_container` VALUES (1,'page',1,'Page','system',1),(2,'banner',1,'Banner','system',1),(3,'blogpost',1,'BlogPost','system',1),(4,'other',1,'Other','system',1),(5,'menu',1,'Menu','system',1);
/*!40000 ALTER TABLE `doli_c_type_container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_type_fees`
--

LOCK TABLES `doli_c_type_fees` WRITE;
/*!40000 ALTER TABLE `doli_c_type_fees` DISABLE KEYS */;
INSERT INTO `doli_c_type_fees` VALUES (1,'TF_OTHER','Other',NULL,1,NULL,0,0),(2,'TF_TRIP','Trip',NULL,1,NULL,0,0),(3,'TF_LUNCH','Lunch',NULL,1,NULL,0,0),(4,'EX_KME','ExpLabelKm','625100',1,NULL,0,0),(5,'EX_FUE','ExpLabelFuelCV','606150',0,NULL,0,0),(6,'EX_HOT','ExpLabelHotel','625160',0,NULL,0,0),(7,'EX_PAR','ExpLabelParkingCV','625160',0,NULL,0,0),(8,'EX_TOL','ExpLabelTollCV','625160',0,NULL,0,0),(9,'EX_TAX','ExpLabelVariousTaxes','637800',0,NULL,0,0),(10,'EX_IND','ExpLabelIndemnityTranspSub','648100',0,NULL,0,0),(11,'EX_SUM','ExpLabelMaintenanceSupply','606300',0,NULL,0,0),(12,'EX_SUO','ExpLabelOfficeSupplies','606400',0,NULL,0,0),(13,'EX_CAR','ExpLabelCarRental','613000',0,NULL,0,0),(14,'EX_DOC','ExpLabelDocumentation','618100',0,NULL,0,0),(15,'EX_CUR','ExpLabelCustomersReceiving','625710',0,NULL,0,0),(16,'EX_OTR','ExpLabelOtherReceiving','625700',0,NULL,0,0),(17,'EX_POS','ExpLabelPostage','626100',0,NULL,0,0),(18,'EX_CAM','ExpLabelMaintenanceRepairCV','615300',0,NULL,0,0),(19,'EX_EMM','ExpLabelEmployeesMeal','625160',0,NULL,0,0),(20,'EX_GUM','ExpLabelGuestsMeal','625160',0,NULL,0,0),(21,'EX_BRE','ExpLabelBreakfast','625160',0,NULL,0,0),(22,'EX_FUE_VP','ExpLabelFuelPV','606150',0,NULL,0,0),(23,'EX_TOL_VP','ExpLabelTollPV','625160',0,NULL,0,0),(24,'EX_PAR_VP','ExpLabelParkingPV','625160',0,NULL,0,0),(25,'EX_CAM_VP','ExpLabelMaintenanceRepairPV','615300',0,NULL,0,0);
/*!40000 ALTER TABLE `doli_c_type_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_type_resource`
--

LOCK TABLES `doli_c_type_resource` WRITE;
/*!40000 ALTER TABLE `doli_c_type_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_c_type_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_typent`
--

LOCK TABLES `doli_c_typent` WRITE;
/*!40000 ALTER TABLE `doli_c_typent` DISABLE KEYS */;
INSERT INTO `doli_c_typent` VALUES (0,'TE_UNKNOWN','-',NULL,1,NULL,0),(1,'TE_STARTUP','Start-up',NULL,0,NULL,0),(2,'TE_GROUP','Grand groupe',NULL,1,NULL,0),(3,'TE_MEDIUM','PME/PMI',NULL,1,NULL,0),(4,'TE_SMALL','TPE',NULL,1,NULL,0),(5,'TE_ADMIN','Administration',NULL,1,NULL,0),(6,'TE_WHOLE','Grossiste',NULL,0,NULL,0),(7,'TE_RETAIL','Revendeur',NULL,0,NULL,0),(8,'TE_PRIVATE','Particulier',NULL,1,NULL,0),(100,'TE_OTHER','Autres',NULL,1,NULL,0);
/*!40000 ALTER TABLE `doli_c_typent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_units`
--

LOCK TABLES `doli_c_units` WRITE;
/*!40000 ALTER TABLE `doli_c_units` DISABLE KEYS */;
INSERT INTO `doli_c_units` VALUES (1,'P','piece','p',1,NULL,NULL),(2,'SET','set','se',1,NULL,NULL),(3,'S','second','s',1,NULL,'time'),(4,'H','hour','h',1,NULL,'time'),(5,'D','day','d',1,NULL,'time'),(6,'KG','kilogram','kg',1,0,'weight'),(7,'G','gram','g',1,-3,'weight'),(8,'M','SizeUnitm','m',1,0,'size'),(9,'LM','linear meter','lm',0,0,'size'),(10,'M2','SurfaceUnitm2','m2',1,0,'surface'),(11,'M3','VolumeUnitm3','m3',1,0,'volume'),(12,'L','liter','l',0,-3,'volume'),(13,'T','WeightUnitton','T',1,3,'weight'),(16,'MG','WeightUnitmg','mg',1,-6,'weight'),(17,'OZ','WeightUnitounce','Oz',1,98,'weight'),(18,'LB','WeightUnitpound','lb',1,99,'weight'),(20,'DM','SizeUnitdm','dm',1,-1,'size'),(21,'CM','SizeUnitcm','cm',1,-2,'size'),(22,'MM','SizeUnitmm','mm',1,-3,'size'),(23,'FT','SizeUnitfoot','ft',1,98,'size'),(24,'IN','SizeUnitinch','in',1,99,'size'),(26,'DM2','SurfaceUnitdm2','dm2',1,-2,'surface'),(27,'CM2','SurfaceUnitcm2','cm2',1,-4,'surface'),(28,'MM2','SurfaceUnitmm2','mm2',1,-6,'surface'),(29,'FT2','SurfaceUnitfoot2','ft2',1,98,'surface'),(30,'IN2','SurfaceUnitinch2','in2',1,99,'surface'),(32,'DM3','VolumeUnitdm3','dm3',1,-3,'volume'),(33,'CM3','VolumeUnitcm3','cm3',1,-6,'volume'),(34,'MM3','VolumeUnitmm3','mm3',1,-9,'volume'),(35,'FT3','VolumeUnitfoot3','ft3',1,88,'volume'),(36,'IN3','VolumeUnitinch3','in3',1,89,'volume'),(37,'OZ3','VolumeUnitounce','Oz',1,97,'volume'),(39,'GAL','VolumeUnitgallon','gal',1,99,'volume'),(43,'MI','minute','i',1,60,'time'),(46,'W','week','w',1,604800,'time'),(47,'MO','month','m',1,2629800,'time'),(48,'Y','year','y',1,31557600,'time');
/*!40000 ALTER TABLE `doli_c_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_c_ziptown`
--

LOCK TABLES `doli_c_ziptown` WRITE;
/*!40000 ALTER TABLE `doli_c_ziptown` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_c_ziptown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie`
--

LOCK TABLES `doli_categorie` WRITE;
/*!40000 ALTER TABLE `doli_categorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie_account`
--

LOCK TABLES `doli_categorie_account` WRITE;
/*!40000 ALTER TABLE `doli_categorie_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie_contact`
--

LOCK TABLES `doli_categorie_contact` WRITE;
/*!40000 ALTER TABLE `doli_categorie_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie_fournisseur`
--

LOCK TABLES `doli_categorie_fournisseur` WRITE;
/*!40000 ALTER TABLE `doli_categorie_fournisseur` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie_fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie_lang`
--

LOCK TABLES `doli_categorie_lang` WRITE;
/*!40000 ALTER TABLE `doli_categorie_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie_member`
--

LOCK TABLES `doli_categorie_member` WRITE;
/*!40000 ALTER TABLE `doli_categorie_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie_product`
--

LOCK TABLES `doli_categorie_product` WRITE;
/*!40000 ALTER TABLE `doli_categorie_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie_project`
--

LOCK TABLES `doli_categorie_project` WRITE;
/*!40000 ALTER TABLE `doli_categorie_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie_societe`
--

LOCK TABLES `doli_categorie_societe` WRITE;
/*!40000 ALTER TABLE `doli_categorie_societe` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie_societe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie_user`
--

LOCK TABLES `doli_categorie_user` WRITE;
/*!40000 ALTER TABLE `doli_categorie_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categorie_warehouse`
--

LOCK TABLES `doli_categorie_warehouse` WRITE;
/*!40000 ALTER TABLE `doli_categorie_warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categorie_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_categories_extrafields`
--

LOCK TABLES `doli_categories_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_categories_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_categories_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_chargesociales`
--

LOCK TABLES `doli_chargesociales` WRITE;
/*!40000 ALTER TABLE `doli_chargesociales` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_chargesociales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_commande`
--

LOCK TABLES `doli_commande` WRITE;
/*!40000 ALTER TABLE `doli_commande` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_commande_extrafields`
--

LOCK TABLES `doli_commande_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_commande_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_commande_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_commande_fournisseur`
--

LOCK TABLES `doli_commande_fournisseur` WRITE;
/*!40000 ALTER TABLE `doli_commande_fournisseur` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_commande_fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_commande_fournisseur_dispatch`
--

LOCK TABLES `doli_commande_fournisseur_dispatch` WRITE;
/*!40000 ALTER TABLE `doli_commande_fournisseur_dispatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_commande_fournisseur_dispatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_commande_fournisseur_extrafields`
--

LOCK TABLES `doli_commande_fournisseur_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_commande_fournisseur_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_commande_fournisseur_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_commande_fournisseur_log`
--

LOCK TABLES `doli_commande_fournisseur_log` WRITE;
/*!40000 ALTER TABLE `doli_commande_fournisseur_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_commande_fournisseur_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_commande_fournisseurdet`
--

LOCK TABLES `doli_commande_fournisseurdet` WRITE;
/*!40000 ALTER TABLE `doli_commande_fournisseurdet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_commande_fournisseurdet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_commande_fournisseurdet_extrafields`
--

LOCK TABLES `doli_commande_fournisseurdet_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_commande_fournisseurdet_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_commande_fournisseurdet_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_commandedet`
--

LOCK TABLES `doli_commandedet` WRITE;
/*!40000 ALTER TABLE `doli_commandedet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_commandedet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_commandedet_extrafields`
--

LOCK TABLES `doli_commandedet_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_commandedet_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_commandedet_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_comment`
--

LOCK TABLES `doli_comment` WRITE;
/*!40000 ALTER TABLE `doli_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_const`
--

LOCK TABLES `doli_const` WRITE;
/*!40000 ALTER TABLE `doli_const` DISABLE KEYS */;
INSERT INTO `doli_const` VALUES (2,'MAIN_FEATURES_LEVEL',0,'0','chaine',1,'Level of features to show (0=stable only, 1=stable+experimental, 2=stable+experimental+development','2014-12-01 02:25:41'),(3,'MAILING_LIMIT_SENDBYWEB',0,'25','chaine',1,'Number of targets to defined packet size when sending mass email','2014-12-01 02:25:41'),(4,'SYSLOG_HANDLERS',0,'[\"mod_syslog_file\"]','chaine',0,'Which logger to use','2014-12-01 02:25:41'),(5,'SYSLOG_FILE',0,'DOL_DATA_ROOT/dolibarr.log','chaine',0,'Directory where to write log file','2014-12-01 02:25:41'),(6,'SYSLOG_LEVEL',0,'7','chaine',0,'Level of debug info to show','2014-12-01 02:25:41'),(7,'MAIN_MAIL_SMTP_SERVER',1,'','chaine',0,'Host or ip address for SMTP server','2020-02-09 17:35:28'),(8,'MAIN_MAIL_SMTP_PORT',1,'','chaine',0,'Port for SMTP server','2020-02-09 17:35:28'),(9,'MAIN_UPLOAD_DOC',0,'2048','chaine',0,'Max size for file upload (0 means no upload allowed)','2014-12-01 02:25:41'),(10,'MAIN_MONNAIE',1,'EUR','chaine',0,'Monnaie','2014-12-01 02:25:41'),(11,'MAIN_MAIL_EMAIL_FROM',1,'robot@domain.com','chaine',0,'EMail emetteur pour les emails automatiques Dolibarr','2014-12-01 02:25:41'),(12,'MAIN_SIZE_LISTE_LIMIT',0,'25','chaine',0,'Longueur maximum des listes','2014-12-01 02:25:41'),(14,'MAIN_MENU_STANDARD',1,'eldy_menu.php','chaine',0,'Menu manager for internal users','2014-12-01 02:25:41'),(15,'MAIN_MENUFRONT_STANDARD',1,'eldy_menu.php','chaine',0,'Menu manager for external users','2014-12-01 02:25:41'),(16,'MAIN_MENU_SMARTPHONE',1,'eldy_menu.php','chaine',0,'Menu manager for internal users using smartphones','2014-12-01 02:25:41'),(17,'MAIN_MENUFRONT_SMARTPHONE',1,'eldy_menu.php','chaine',0,'Menu manager for external users using smartphones','2014-12-01 02:25:41'),(18,'MAIN_DELAY_ACTIONS_TODO',1,'7','chaine',0,'Tolérance de retard avant alerte (en jours) sur actions planifiées non réalisées','2014-12-01 02:25:41'),(19,'MAIN_DELAY_ORDERS_TO_PROCESS',1,'2','chaine',0,'Tolérance de retard avant alerte (en jours) sur commandes clients non traitées','2014-12-01 02:25:41'),(20,'MAIN_DELAY_SUPPLIER_ORDERS_TO_PROCESS',1,'7','chaine',0,'Tolérance de retard avant alerte (en jours) sur commandes fournisseurs non traitées','2014-12-01 02:25:41'),(21,'MAIN_DELAY_PROPALS_TO_CLOSE',1,'31','chaine',0,'Tolérance de retard avant alerte (en jours) sur propales à cloturer','2014-12-01 02:25:41'),(22,'MAIN_DELAY_PROPALS_TO_BILL',1,'7','chaine',0,'Tolérance de retard avant alerte (en jours) sur propales non facturées','2014-12-01 02:25:41'),(23,'MAIN_DELAY_CUSTOMER_BILLS_UNPAYED',1,'31','chaine',0,'Tolérance de retard avant alerte (en jours) sur factures client impayées','2014-12-01 02:25:41'),(24,'MAIN_DELAY_SUPPLIER_BILLS_TO_PAY',1,'2','chaine',0,'Tolérance de retard avant alerte (en jours) sur factures fournisseur impayées','2014-12-01 02:25:41'),(25,'MAIN_DELAY_NOT_ACTIVATED_SERVICES',1,'0','chaine',0,'Tolérance de retard avant alerte (en jours) sur services à activer','2014-12-01 02:25:41'),(26,'MAIN_DELAY_RUNNING_SERVICES',1,'0','chaine',0,'Tolérance de retard avant alerte (en jours) sur services expirés','2014-12-01 02:25:41'),(27,'MAIN_DELAY_MEMBERS',1,'31','chaine',0,'Tolérance de retard avant alerte (en jours) sur cotisations adhérent en retard','2014-12-01 02:25:41'),(28,'MAIN_DELAY_TRANSACTIONS_TO_CONCILIATE',1,'62','chaine',0,'Tolérance de retard avant alerte (en jours) sur rapprochements bancaires à faire','2014-12-01 02:25:41'),(29,'MAIN_FIX_FOR_BUGGED_MTA',1,'1','chaine',1,'Set constant to fix email ending from PHP with some linux ike system','2014-12-01 02:25:41'),(30,'MAILING_EMAIL_FROM',1,'dolibarr@domain.com','chaine',0,'EMail emmetteur pour les envois d emailings','2014-12-01 02:25:41'),(32,'MAIN_VERSION_LAST_INSTALL',0,'3.6.1','chaine',0,'Dolibarr version when install','2014-12-01 02:25:41'),(33,'MAIN_LANG_DEFAULT',1,'en_US','chaine',0,'Default language','2014-12-01 02:25:41'),(36,'MAIN_REMOVE_INSTALL_WARNING',1,'1',NULL,1,NULL,'2020-02-09 17:35:04'),(37,'MAIN_VERSION_LAST_UPGRADE',0,'11.0.0','chaine',0,'Dolibarr version for last upgrade','2020-02-09 17:35:14'),(39,'PRODUCT_USE_OLD_PATH_FOR_PHOTO',0,'1','chaine',1,'Use old path for products images','2020-02-09 17:35:20'),(42,'MAIN_ENABLE_LOG_TO_HTML',0,'0','chaine',1,'If this option is set to 1, it is possible to see log output at end of HTML sources by adding paramater logtohtml=1 on URL','2020-02-09 17:35:39'),(43,'MAIN_DELAY_EXPENSEREPORTS_TO_PAY',1,'31','chaine',0,'Tolérance de retard avant alerte (en jours) sur les notes de frais impayées','2020-02-09 17:35:39'),(44,'MAIN_SIZE_SHORTLISTE_LIMIT',1,'3','chaine',0,'Max length for small lists (tabs)','2020-02-09 17:35:39'),(47,'MAIN_SIZE_SHORTLIST_LIMIT',0,'3','chaine',0,'Max length for small lists (tabs)','2020-02-09 17:36:02'),(48,'EXPEDITION_ADDON_NUMBER',1,'mod_expedition_safor','chaine',0,'Name for numbering manager for shipments','2020-02-09 17:36:02'),(50,'PRODUCT_ADDON_PDF_ODT_PATH',1,'DOL_DATA_ROOT/doctemplates/products','chaine',0,'','2020-02-09 17:36:13'),(51,'CONTRACT_ADDON_PDF_ODT_PATH',1,'DOL_DATA_ROOT/doctemplates/contracts','chaine',0,'','2020-02-09 17:36:13'),(52,'USERGROUP_ADDON_PDF_ODT_PATH',1,'DOL_DATA_ROOT/doctemplates/usergroups','chaine',0,'','2020-02-09 17:36:13'),(53,'USER_ADDON_PDF_ODT_PATH',1,'DOL_DATA_ROOT/doctemplates/users','chaine',0,'','2020-02-09 17:36:13'),(54,'MAIN_ENABLE_OVERWRITE_TRANSLATION',1,'1','chaine',0,'Enable overwrote of translation','2020-02-09 17:36:13'),(60,'MAIN_MODULE_USER',0,'1','string',0,'{\"authorid\":0,\"ip\":\"2001:8d8:5c0:453:3128:0:1:2\"}','2020-02-09 17:37:05'),(62,'MAIN_INFO_SOCIETE_NOM',1,'Dolibarr','string',1,NULL,'2020-02-09 17:37:24');
/*!40000 ALTER TABLE `doli_const` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_contrat`
--

LOCK TABLES `doli_contrat` WRITE;
/*!40000 ALTER TABLE `doli_contrat` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_contrat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_contrat_extrafields`
--

LOCK TABLES `doli_contrat_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_contrat_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_contrat_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_contratdet`
--

LOCK TABLES `doli_contratdet` WRITE;
/*!40000 ALTER TABLE `doli_contratdet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_contratdet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_contratdet_extrafields`
--

LOCK TABLES `doli_contratdet_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_contratdet_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_contratdet_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_contratdet_log`
--

LOCK TABLES `doli_contratdet_log` WRITE;
/*!40000 ALTER TABLE `doli_contratdet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_contratdet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_cronjob`
--

LOCK TABLES `doli_cronjob` WRITE;
/*!40000 ALTER TABLE `doli_cronjob` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_cronjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_default_values`
--

LOCK TABLES `doli_default_values` WRITE;
/*!40000 ALTER TABLE `doli_default_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_default_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_deplacement`
--

LOCK TABLES `doli_deplacement` WRITE;
/*!40000 ALTER TABLE `doli_deplacement` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_deplacement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_document_model`
--

LOCK TABLES `doli_document_model` WRITE;
/*!40000 ALTER TABLE `doli_document_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_document_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_don`
--

LOCK TABLES `doli_don` WRITE;
/*!40000 ALTER TABLE `doli_don` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_don` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_don_extrafields`
--

LOCK TABLES `doli_don_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_don_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_don_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_ecm_directories`
--

LOCK TABLES `doli_ecm_directories` WRITE;
/*!40000 ALTER TABLE `doli_ecm_directories` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_ecm_directories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_ecm_files`
--

LOCK TABLES `doli_ecm_files` WRITE;
/*!40000 ALTER TABLE `doli_ecm_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_ecm_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_element_contact`
--

LOCK TABLES `doli_element_contact` WRITE;
/*!40000 ALTER TABLE `doli_element_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_element_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_element_element`
--

LOCK TABLES `doli_element_element` WRITE;
/*!40000 ALTER TABLE `doli_element_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_element_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_element_lock`
--

LOCK TABLES `doli_element_lock` WRITE;
/*!40000 ALTER TABLE `doli_element_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_element_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_element_resources`
--

LOCK TABLES `doli_element_resources` WRITE;
/*!40000 ALTER TABLE `doli_element_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_element_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_element_tag`
--

LOCK TABLES `doli_element_tag` WRITE;
/*!40000 ALTER TABLE `doli_element_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_element_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_emailcollector_emailcollector`
--

LOCK TABLES `doli_emailcollector_emailcollector` WRITE;
/*!40000 ALTER TABLE `doli_emailcollector_emailcollector` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_emailcollector_emailcollector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_emailcollector_emailcollectoraction`
--

LOCK TABLES `doli_emailcollector_emailcollectoraction` WRITE;
/*!40000 ALTER TABLE `doli_emailcollector_emailcollectoraction` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_emailcollector_emailcollectoraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_emailcollector_emailcollectorfilter`
--

LOCK TABLES `doli_emailcollector_emailcollectorfilter` WRITE;
/*!40000 ALTER TABLE `doli_emailcollector_emailcollectorfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_emailcollector_emailcollectorfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_entrepot`
--

LOCK TABLES `doli_entrepot` WRITE;
/*!40000 ALTER TABLE `doli_entrepot` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_entrepot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_entrepot_extrafields`
--

LOCK TABLES `doli_entrepot_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_entrepot_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_entrepot_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_establishment`
--

LOCK TABLES `doli_establishment` WRITE;
/*!40000 ALTER TABLE `doli_establishment` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_establishment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_event_element`
--

LOCK TABLES `doli_event_element` WRITE;
/*!40000 ALTER TABLE `doli_event_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_event_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_events`
--

LOCK TABLES `doli_events` WRITE;
/*!40000 ALTER TABLE `doli_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expedition`
--

LOCK TABLES `doli_expedition` WRITE;
/*!40000 ALTER TABLE `doli_expedition` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_expedition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expedition_extrafields`
--

LOCK TABLES `doli_expedition_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_expedition_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_expedition_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expedition_package`
--

LOCK TABLES `doli_expedition_package` WRITE;
/*!40000 ALTER TABLE `doli_expedition_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_expedition_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expeditiondet`
--

LOCK TABLES `doli_expeditiondet` WRITE;
/*!40000 ALTER TABLE `doli_expeditiondet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_expeditiondet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expeditiondet_batch`
--

LOCK TABLES `doli_expeditiondet_batch` WRITE;
/*!40000 ALTER TABLE `doli_expeditiondet_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_expeditiondet_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expeditiondet_extrafields`
--

LOCK TABLES `doli_expeditiondet_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_expeditiondet_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_expeditiondet_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expensereport`
--

LOCK TABLES `doli_expensereport` WRITE;
/*!40000 ALTER TABLE `doli_expensereport` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_expensereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expensereport_det`
--

LOCK TABLES `doli_expensereport_det` WRITE;
/*!40000 ALTER TABLE `doli_expensereport_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_expensereport_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expensereport_extrafields`
--

LOCK TABLES `doli_expensereport_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_expensereport_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_expensereport_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expensereport_ik`
--

LOCK TABLES `doli_expensereport_ik` WRITE;
/*!40000 ALTER TABLE `doli_expensereport_ik` DISABLE KEYS */;
INSERT INTO `doli_expensereport_ik` VALUES (1,NULL,'2020-02-09 17:36:25',4,1,0.41,0,1),(2,NULL,'2020-02-09 17:36:25',4,2,0.244,824,1),(3,NULL,'2020-02-09 17:36:25',4,3,0.286,0,1),(4,NULL,'2020-02-09 17:36:25',5,4,0.493,0,1),(5,NULL,'2020-02-09 17:36:25',5,5,0.277,1082,1),(6,NULL,'2020-02-09 17:36:25',5,6,0.332,0,1),(7,NULL,'2020-02-09 17:36:25',6,7,0.543,0,1),(8,NULL,'2020-02-09 17:36:25',6,8,0.305,1180,1),(9,NULL,'2020-02-09 17:36:25',6,9,0.364,0,1),(10,NULL,'2020-02-09 17:36:25',7,10,0.568,0,1),(11,NULL,'2020-02-09 17:36:25',7,11,0.32,1244,1),(12,NULL,'2020-02-09 17:36:25',7,12,0.382,0,1),(13,NULL,'2020-02-09 17:36:25',8,13,0.595,0,1),(14,NULL,'2020-02-09 17:36:25',8,14,0.337,1288,1),(15,NULL,'2020-02-09 17:36:25',8,15,0.401,0,1);
/*!40000 ALTER TABLE `doli_expensereport_ik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_expensereport_rules`
--

LOCK TABLES `doli_expensereport_rules` WRITE;
/*!40000 ALTER TABLE `doli_expensereport_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_expensereport_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_export_compta`
--

LOCK TABLES `doli_export_compta` WRITE;
/*!40000 ALTER TABLE `doli_export_compta` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_export_compta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_export_model`
--

LOCK TABLES `doli_export_model` WRITE;
/*!40000 ALTER TABLE `doli_export_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_export_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_extrafields`
--

LOCK TABLES `doli_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facture`
--

LOCK TABLES `doli_facture` WRITE;
/*!40000 ALTER TABLE `doli_facture` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facture_extrafields`
--

LOCK TABLES `doli_facture_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_facture_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facture_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facture_fourn`
--

LOCK TABLES `doli_facture_fourn` WRITE;
/*!40000 ALTER TABLE `doli_facture_fourn` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facture_fourn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facture_fourn_det`
--

LOCK TABLES `doli_facture_fourn_det` WRITE;
/*!40000 ALTER TABLE `doli_facture_fourn_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facture_fourn_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facture_fourn_det_extrafields`
--

LOCK TABLES `doli_facture_fourn_det_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_facture_fourn_det_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facture_fourn_det_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facture_fourn_extrafields`
--

LOCK TABLES `doli_facture_fourn_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_facture_fourn_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facture_fourn_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facture_rec`
--

LOCK TABLES `doli_facture_rec` WRITE;
/*!40000 ALTER TABLE `doli_facture_rec` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facture_rec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facture_rec_extrafields`
--

LOCK TABLES `doli_facture_rec_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_facture_rec_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facture_rec_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facturedet`
--

LOCK TABLES `doli_facturedet` WRITE;
/*!40000 ALTER TABLE `doli_facturedet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facturedet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facturedet_extrafields`
--

LOCK TABLES `doli_facturedet_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_facturedet_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facturedet_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facturedet_rec`
--

LOCK TABLES `doli_facturedet_rec` WRITE;
/*!40000 ALTER TABLE `doli_facturedet_rec` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facturedet_rec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_facturedet_rec_extrafields`
--

LOCK TABLES `doli_facturedet_rec_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_facturedet_rec_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_facturedet_rec_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_fichinter`
--

LOCK TABLES `doli_fichinter` WRITE;
/*!40000 ALTER TABLE `doli_fichinter` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_fichinter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_fichinter_extrafields`
--

LOCK TABLES `doli_fichinter_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_fichinter_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_fichinter_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_fichinter_rec`
--

LOCK TABLES `doli_fichinter_rec` WRITE;
/*!40000 ALTER TABLE `doli_fichinter_rec` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_fichinter_rec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_fichinterdet`
--

LOCK TABLES `doli_fichinterdet` WRITE;
/*!40000 ALTER TABLE `doli_fichinterdet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_fichinterdet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_fichinterdet_extrafields`
--

LOCK TABLES `doli_fichinterdet_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_fichinterdet_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_fichinterdet_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_fichinterdet_rec`
--

LOCK TABLES `doli_fichinterdet_rec` WRITE;
/*!40000 ALTER TABLE `doli_fichinterdet_rec` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_fichinterdet_rec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_holiday`
--

LOCK TABLES `doli_holiday` WRITE;
/*!40000 ALTER TABLE `doli_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_holiday_config`
--

LOCK TABLES `doli_holiday_config` WRITE;
/*!40000 ALTER TABLE `doli_holiday_config` DISABLE KEYS */;
INSERT INTO `doli_holiday_config` VALUES (1,'userGroup',NULL),(2,'lastUpdate',NULL),(3,'nbUser',NULL),(4,'delayForRequest','31'),(5,'AlertValidatorDelay','0'),(6,'AlertValidatorSolde','0'),(7,'nbHolidayDeducted','1'),(8,'nbHolidayEveryMonth','2.08334');
/*!40000 ALTER TABLE `doli_holiday_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_holiday_extrafields`
--

LOCK TABLES `doli_holiday_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_holiday_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_holiday_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_holiday_logs`
--

LOCK TABLES `doli_holiday_logs` WRITE;
/*!40000 ALTER TABLE `doli_holiday_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_holiday_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_holiday_users`
--

LOCK TABLES `doli_holiday_users` WRITE;
/*!40000 ALTER TABLE `doli_holiday_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_holiday_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_import_model`
--

LOCK TABLES `doli_import_model` WRITE;
/*!40000 ALTER TABLE `doli_import_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_import_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_inventory`
--

LOCK TABLES `doli_inventory` WRITE;
/*!40000 ALTER TABLE `doli_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_inventorydet`
--

LOCK TABLES `doli_inventorydet` WRITE;
/*!40000 ALTER TABLE `doli_inventorydet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_inventorydet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_links`
--

LOCK TABLES `doli_links` WRITE;
/*!40000 ALTER TABLE `doli_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_livraison`
--

LOCK TABLES `doli_livraison` WRITE;
/*!40000 ALTER TABLE `doli_livraison` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_livraison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_livraison_extrafields`
--

LOCK TABLES `doli_livraison_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_livraison_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_livraison_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_livraisondet`
--

LOCK TABLES `doli_livraisondet` WRITE;
/*!40000 ALTER TABLE `doli_livraisondet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_livraisondet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_livraisondet_extrafields`
--

LOCK TABLES `doli_livraisondet_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_livraisondet_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_livraisondet_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_loan`
--

LOCK TABLES `doli_loan` WRITE;
/*!40000 ALTER TABLE `doli_loan` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_loan_schedule`
--

LOCK TABLES `doli_loan_schedule` WRITE;
/*!40000 ALTER TABLE `doli_loan_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_loan_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_localtax`
--

LOCK TABLES `doli_localtax` WRITE;
/*!40000 ALTER TABLE `doli_localtax` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_localtax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_mailing`
--

LOCK TABLES `doli_mailing` WRITE;
/*!40000 ALTER TABLE `doli_mailing` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_mailing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_mailing_cibles`
--

LOCK TABLES `doli_mailing_cibles` WRITE;
/*!40000 ALTER TABLE `doli_mailing_cibles` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_mailing_cibles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_mailing_unsubscribe`
--

LOCK TABLES `doli_mailing_unsubscribe` WRITE;
/*!40000 ALTER TABLE `doli_mailing_unsubscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_mailing_unsubscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_menu`
--

LOCK TABLES `doli_menu` WRITE;
/*!40000 ALTER TABLE `doli_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_mrp_mo`
--

LOCK TABLES `doli_mrp_mo` WRITE;
/*!40000 ALTER TABLE `doli_mrp_mo` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_mrp_mo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_mrp_mo_extrafields`
--

LOCK TABLES `doli_mrp_mo_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_mrp_mo_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_mrp_mo_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_mrp_production`
--

LOCK TABLES `doli_mrp_production` WRITE;
/*!40000 ALTER TABLE `doli_mrp_production` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_mrp_production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_multicurrency`
--

LOCK TABLES `doli_multicurrency` WRITE;
/*!40000 ALTER TABLE `doli_multicurrency` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_multicurrency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_multicurrency_rate`
--

LOCK TABLES `doli_multicurrency_rate` WRITE;
/*!40000 ALTER TABLE `doli_multicurrency_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_multicurrency_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_notify`
--

LOCK TABLES `doli_notify` WRITE;
/*!40000 ALTER TABLE `doli_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_notify_def`
--

LOCK TABLES `doli_notify_def` WRITE;
/*!40000 ALTER TABLE `doli_notify_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_notify_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_notify_def_object`
--

LOCK TABLES `doli_notify_def_object` WRITE;
/*!40000 ALTER TABLE `doli_notify_def_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_notify_def_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_oauth_state`
--

LOCK TABLES `doli_oauth_state` WRITE;
/*!40000 ALTER TABLE `doli_oauth_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_oauth_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_oauth_token`
--

LOCK TABLES `doli_oauth_token` WRITE;
/*!40000 ALTER TABLE `doli_oauth_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_oauth_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_onlinesignature`
--

LOCK TABLES `doli_onlinesignature` WRITE;
/*!40000 ALTER TABLE `doli_onlinesignature` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_onlinesignature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_opensurvey_comments`
--

LOCK TABLES `doli_opensurvey_comments` WRITE;
/*!40000 ALTER TABLE `doli_opensurvey_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_opensurvey_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_opensurvey_formquestions`
--

LOCK TABLES `doli_opensurvey_formquestions` WRITE;
/*!40000 ALTER TABLE `doli_opensurvey_formquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_opensurvey_formquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_opensurvey_sondage`
--

LOCK TABLES `doli_opensurvey_sondage` WRITE;
/*!40000 ALTER TABLE `doli_opensurvey_sondage` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_opensurvey_sondage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_opensurvey_user_formanswers`
--

LOCK TABLES `doli_opensurvey_user_formanswers` WRITE;
/*!40000 ALTER TABLE `doli_opensurvey_user_formanswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_opensurvey_user_formanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_opensurvey_user_studs`
--

LOCK TABLES `doli_opensurvey_user_studs` WRITE;
/*!40000 ALTER TABLE `doli_opensurvey_user_studs` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_opensurvey_user_studs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_overwrite_trans`
--

LOCK TABLES `doli_overwrite_trans` WRITE;
/*!40000 ALTER TABLE `doli_overwrite_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_overwrite_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_paiement`
--

LOCK TABLES `doli_paiement` WRITE;
/*!40000 ALTER TABLE `doli_paiement` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_paiement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_paiement_facture`
--

LOCK TABLES `doli_paiement_facture` WRITE;
/*!40000 ALTER TABLE `doli_paiement_facture` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_paiement_facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_paiementcharge`
--

LOCK TABLES `doli_paiementcharge` WRITE;
/*!40000 ALTER TABLE `doli_paiementcharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_paiementcharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_paiementfourn`
--

LOCK TABLES `doli_paiementfourn` WRITE;
/*!40000 ALTER TABLE `doli_paiementfourn` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_paiementfourn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_paiementfourn_facturefourn`
--

LOCK TABLES `doli_paiementfourn_facturefourn` WRITE;
/*!40000 ALTER TABLE `doli_paiementfourn_facturefourn` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_paiementfourn_facturefourn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_payment_donation`
--

LOCK TABLES `doli_payment_donation` WRITE;
/*!40000 ALTER TABLE `doli_payment_donation` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_payment_donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_payment_expensereport`
--

LOCK TABLES `doli_payment_expensereport` WRITE;
/*!40000 ALTER TABLE `doli_payment_expensereport` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_payment_expensereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_payment_loan`
--

LOCK TABLES `doli_payment_loan` WRITE;
/*!40000 ALTER TABLE `doli_payment_loan` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_payment_loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_payment_salary`
--

LOCK TABLES `doli_payment_salary` WRITE;
/*!40000 ALTER TABLE `doli_payment_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_payment_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_payment_salary_extrafields`
--

LOCK TABLES `doli_payment_salary_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_payment_salary_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_payment_salary_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_payment_various`
--

LOCK TABLES `doli_payment_various` WRITE;
/*!40000 ALTER TABLE `doli_payment_various` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_payment_various` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_pos_cash_fence`
--

LOCK TABLES `doli_pos_cash_fence` WRITE;
/*!40000 ALTER TABLE `doli_pos_cash_fence` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_pos_cash_fence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_prelevement_bons`
--

LOCK TABLES `doli_prelevement_bons` WRITE;
/*!40000 ALTER TABLE `doli_prelevement_bons` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_prelevement_bons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_prelevement_facture`
--

LOCK TABLES `doli_prelevement_facture` WRITE;
/*!40000 ALTER TABLE `doli_prelevement_facture` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_prelevement_facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_prelevement_facture_demande`
--

LOCK TABLES `doli_prelevement_facture_demande` WRITE;
/*!40000 ALTER TABLE `doli_prelevement_facture_demande` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_prelevement_facture_demande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_prelevement_lignes`
--

LOCK TABLES `doli_prelevement_lignes` WRITE;
/*!40000 ALTER TABLE `doli_prelevement_lignes` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_prelevement_lignes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_prelevement_rejet`
--

LOCK TABLES `doli_prelevement_rejet` WRITE;
/*!40000 ALTER TABLE `doli_prelevement_rejet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_prelevement_rejet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_printer_ipp`
--

LOCK TABLES `doli_printer_ipp` WRITE;
/*!40000 ALTER TABLE `doli_printer_ipp` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_printer_ipp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_printing`
--

LOCK TABLES `doli_printing` WRITE;
/*!40000 ALTER TABLE `doli_printing` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_printing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product`
--

LOCK TABLES `doli_product` WRITE;
/*!40000 ALTER TABLE `doli_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_association`
--

LOCK TABLES `doli_product_association` WRITE;
/*!40000 ALTER TABLE `doli_product_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_attribute`
--

LOCK TABLES `doli_product_attribute` WRITE;
/*!40000 ALTER TABLE `doli_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_attribute_combination`
--

LOCK TABLES `doli_product_attribute_combination` WRITE;
/*!40000 ALTER TABLE `doli_product_attribute_combination` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_attribute_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_attribute_combination2val`
--

LOCK TABLES `doli_product_attribute_combination2val` WRITE;
/*!40000 ALTER TABLE `doli_product_attribute_combination2val` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_attribute_combination2val` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_attribute_value`
--

LOCK TABLES `doli_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `doli_product_attribute_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_batch`
--

LOCK TABLES `doli_product_batch` WRITE;
/*!40000 ALTER TABLE `doli_product_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_customer_price`
--

LOCK TABLES `doli_product_customer_price` WRITE;
/*!40000 ALTER TABLE `doli_product_customer_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_customer_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_customer_price_log`
--

LOCK TABLES `doli_product_customer_price_log` WRITE;
/*!40000 ALTER TABLE `doli_product_customer_price_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_customer_price_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_extrafields`
--

LOCK TABLES `doli_product_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_product_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_fournisseur_price`
--

LOCK TABLES `doli_product_fournisseur_price` WRITE;
/*!40000 ALTER TABLE `doli_product_fournisseur_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_fournisseur_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_fournisseur_price_extrafields`
--

LOCK TABLES `doli_product_fournisseur_price_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_product_fournisseur_price_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_fournisseur_price_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_fournisseur_price_log`
--

LOCK TABLES `doli_product_fournisseur_price_log` WRITE;
/*!40000 ALTER TABLE `doli_product_fournisseur_price_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_fournisseur_price_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_lang`
--

LOCK TABLES `doli_product_lang` WRITE;
/*!40000 ALTER TABLE `doli_product_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_lot`
--

LOCK TABLES `doli_product_lot` WRITE;
/*!40000 ALTER TABLE `doli_product_lot` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_lot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_lot_extrafields`
--

LOCK TABLES `doli_product_lot_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_product_lot_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_lot_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_price`
--

LOCK TABLES `doli_product_price` WRITE;
/*!40000 ALTER TABLE `doli_product_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_price_by_qty`
--

LOCK TABLES `doli_product_price_by_qty` WRITE;
/*!40000 ALTER TABLE `doli_product_price_by_qty` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_price_by_qty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_pricerules`
--

LOCK TABLES `doli_product_pricerules` WRITE;
/*!40000 ALTER TABLE `doli_product_pricerules` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_pricerules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_stock`
--

LOCK TABLES `doli_product_stock` WRITE;
/*!40000 ALTER TABLE `doli_product_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_product_warehouse_properties`
--

LOCK TABLES `doli_product_warehouse_properties` WRITE;
/*!40000 ALTER TABLE `doli_product_warehouse_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_product_warehouse_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_projet`
--

LOCK TABLES `doli_projet` WRITE;
/*!40000 ALTER TABLE `doli_projet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_projet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_projet_extrafields`
--

LOCK TABLES `doli_projet_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_projet_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_projet_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_projet_task`
--

LOCK TABLES `doli_projet_task` WRITE;
/*!40000 ALTER TABLE `doli_projet_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_projet_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_projet_task_extrafields`
--

LOCK TABLES `doli_projet_task_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_projet_task_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_projet_task_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_projet_task_time`
--

LOCK TABLES `doli_projet_task_time` WRITE;
/*!40000 ALTER TABLE `doli_projet_task_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_projet_task_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_propal`
--

LOCK TABLES `doli_propal` WRITE;
/*!40000 ALTER TABLE `doli_propal` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_propal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_propal_extrafields`
--

LOCK TABLES `doli_propal_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_propal_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_propal_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_propal_merge_pdf_product`
--

LOCK TABLES `doli_propal_merge_pdf_product` WRITE;
/*!40000 ALTER TABLE `doli_propal_merge_pdf_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_propal_merge_pdf_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_propaldet`
--

LOCK TABLES `doli_propaldet` WRITE;
/*!40000 ALTER TABLE `doli_propaldet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_propaldet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_propaldet_extrafields`
--

LOCK TABLES `doli_propaldet_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_propaldet_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_propaldet_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_reception`
--

LOCK TABLES `doli_reception` WRITE;
/*!40000 ALTER TABLE `doli_reception` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_reception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_reception_extrafields`
--

LOCK TABLES `doli_reception_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_reception_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_reception_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_resource`
--

LOCK TABLES `doli_resource` WRITE;
/*!40000 ALTER TABLE `doli_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_resource_extrafields`
--

LOCK TABLES `doli_resource_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_resource_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_resource_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_rights_def`
--

LOCK TABLES `doli_rights_def` WRITE;
/*!40000 ALTER TABLE `doli_rights_def` DISABLE KEYS */;
INSERT INTO `doli_rights_def` VALUES (251,'Consulter les autres utilisateurs','user',1,'user','lire','r',0,0,0),(252,'Consulter les permissions des autres utilisateurs','user',1,'user_advance','readperms','r',0,0,0),(253,'Creer/modifier utilisateurs internes et externes','user',1,'user','creer','w',0,0,0),(254,'Creer/modifier utilisateurs externes seulement','user',1,'user_advance','write','w',0,0,0),(255,'Modifier le mot de passe des autres utilisateurs','user',1,'user','password','w',0,0,0),(256,'Supprimer ou desactiver les autres utilisateurs','user',1,'user','supprimer','d',0,0,0),(341,'Consulter ses propres permissions','user',1,'self_advance','readperms','r',0,0,0),(342,'Creer/modifier ses propres infos utilisateur','user',1,'self','creer','w',0,0,0),(343,'Modifier son propre mot de passe','user',1,'self','password','w',0,0,0),(344,'Modifier ses propres permissions','user',1,'self_advance','writeperms','w',0,0,0),(351,'Consulter les groupes','user',1,'group_advance','read','r',0,0,0),(352,'Consulter les permissions des groupes','user',1,'group_advance','readperms','r',0,0,0),(353,'Creer/modifier les groupes et leurs permissions','user',1,'group_advance','write','w',0,0,0),(354,'Supprimer ou desactiver les groupes','user',1,'group_advance','delete','d',0,0,0),(358,'Exporter les utilisateurs','user',1,'user','export','r',0,0,0);
/*!40000 ALTER TABLE `doli_rights_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe`
--

LOCK TABLES `doli_societe` WRITE;
/*!40000 ALTER TABLE `doli_societe` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_account`
--

LOCK TABLES `doli_societe_account` WRITE;
/*!40000 ALTER TABLE `doli_societe_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_address`
--

LOCK TABLES `doli_societe_address` WRITE;
/*!40000 ALTER TABLE `doli_societe_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_commerciaux`
--

LOCK TABLES `doli_societe_commerciaux` WRITE;
/*!40000 ALTER TABLE `doli_societe_commerciaux` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_commerciaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_contacts`
--

LOCK TABLES `doli_societe_contacts` WRITE;
/*!40000 ALTER TABLE `doli_societe_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_extrafields`
--

LOCK TABLES `doli_societe_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_societe_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_log`
--

LOCK TABLES `doli_societe_log` WRITE;
/*!40000 ALTER TABLE `doli_societe_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_prices`
--

LOCK TABLES `doli_societe_prices` WRITE;
/*!40000 ALTER TABLE `doli_societe_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_remise`
--

LOCK TABLES `doli_societe_remise` WRITE;
/*!40000 ALTER TABLE `doli_societe_remise` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_remise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_remise_except`
--

LOCK TABLES `doli_societe_remise_except` WRITE;
/*!40000 ALTER TABLE `doli_societe_remise_except` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_remise_except` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_remise_supplier`
--

LOCK TABLES `doli_societe_remise_supplier` WRITE;
/*!40000 ALTER TABLE `doli_societe_remise_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_remise_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_societe_rib`
--

LOCK TABLES `doli_societe_rib` WRITE;
/*!40000 ALTER TABLE `doli_societe_rib` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_societe_rib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_socpeople`
--

LOCK TABLES `doli_socpeople` WRITE;
/*!40000 ALTER TABLE `doli_socpeople` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_socpeople` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_socpeople_extrafields`
--

LOCK TABLES `doli_socpeople_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_socpeople_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_socpeople_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_stock_lotserial`
--

LOCK TABLES `doli_stock_lotserial` WRITE;
/*!40000 ALTER TABLE `doli_stock_lotserial` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_stock_lotserial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_stock_mouvement`
--

LOCK TABLES `doli_stock_mouvement` WRITE;
/*!40000 ALTER TABLE `doli_stock_mouvement` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_stock_mouvement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_subscription`
--

LOCK TABLES `doli_subscription` WRITE;
/*!40000 ALTER TABLE `doli_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_supplier_proposal`
--

LOCK TABLES `doli_supplier_proposal` WRITE;
/*!40000 ALTER TABLE `doli_supplier_proposal` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_supplier_proposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_supplier_proposal_extrafields`
--

LOCK TABLES `doli_supplier_proposal_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_supplier_proposal_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_supplier_proposal_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_supplier_proposaldet`
--

LOCK TABLES `doli_supplier_proposaldet` WRITE;
/*!40000 ALTER TABLE `doli_supplier_proposaldet` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_supplier_proposaldet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_supplier_proposaldet_extrafields`
--

LOCK TABLES `doli_supplier_proposaldet_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_supplier_proposaldet_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_supplier_proposaldet_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_takepos_floor_tables`
--

LOCK TABLES `doli_takepos_floor_tables` WRITE;
/*!40000 ALTER TABLE `doli_takepos_floor_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_takepos_floor_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_ticket`
--

LOCK TABLES `doli_ticket` WRITE;
/*!40000 ALTER TABLE `doli_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_ticket_extrafields`
--

LOCK TABLES `doli_ticket_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_ticket_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_ticket_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_tva`
--

LOCK TABLES `doli_tva` WRITE;
/*!40000 ALTER TABLE `doli_tva` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_tva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_user`
--

LOCK TABLES `doli_user` WRITE;
/*!40000 ALTER TABLE `doli_user` DISABLE KEYS */;
INSERT INTO `doli_user` VALUES (1,0,NULL,NULL,1,0,'2020-02-09 18:34:57','2020-02-09 17:37:22',NULL,NULL,'admin','6U95zLnGa52STWZ!','296409b5104724723c460dd8747d348c',NULL,NULL,NULL,'SuperAdmin','','','','',NULL,NULL,'',NULL,'','','',NULL,'piotrowski+ionos.de@prisma.io',NULL,'[]','',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'',NULL,1,NULL,NULL,NULL,NULL,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `doli_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_user_alert`
--

LOCK TABLES `doli_user_alert` WRITE;
/*!40000 ALTER TABLE `doli_user_alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_user_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_user_clicktodial`
--

LOCK TABLES `doli_user_clicktodial` WRITE;
/*!40000 ALTER TABLE `doli_user_clicktodial` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_user_clicktodial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_user_employment`
--

LOCK TABLES `doli_user_employment` WRITE;
/*!40000 ALTER TABLE `doli_user_employment` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_user_employment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_user_extrafields`
--

LOCK TABLES `doli_user_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_user_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_user_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_user_param`
--

LOCK TABLES `doli_user_param` WRITE;
/*!40000 ALTER TABLE `doli_user_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_user_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_user_rib`
--

LOCK TABLES `doli_user_rib` WRITE;
/*!40000 ALTER TABLE `doli_user_rib` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_user_rib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_user_rights`
--

LOCK TABLES `doli_user_rights` WRITE;
/*!40000 ALTER TABLE `doli_user_rights` DISABLE KEYS */;
INSERT INTO `doli_user_rights` VALUES (25,1,251,1),(6,1,252,1),(8,1,253,1),(9,1,254,1),(11,1,255,1),(13,1,256,1),(14,1,341,1),(15,1,342,1),(16,1,343,1),(17,1,344,1),(23,1,351,1),(20,1,352,1),(22,1,353,1),(24,1,354,1),(26,1,358,1);
/*!40000 ALTER TABLE `doli_user_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_usergroup`
--

LOCK TABLES `doli_usergroup` WRITE;
/*!40000 ALTER TABLE `doli_usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_usergroup_extrafields`
--

LOCK TABLES `doli_usergroup_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_usergroup_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_usergroup_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_usergroup_rights`
--

LOCK TABLES `doli_usergroup_rights` WRITE;
/*!40000 ALTER TABLE `doli_usergroup_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_usergroup_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_usergroup_user`
--

LOCK TABLES `doli_usergroup_user` WRITE;
/*!40000 ALTER TABLE `doli_usergroup_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_usergroup_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_website`
--

LOCK TABLES `doli_website` WRITE;
/*!40000 ALTER TABLE `doli_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_website_extrafields`
--

LOCK TABLES `doli_website_extrafields` WRITE;
/*!40000 ALTER TABLE `doli_website_extrafields` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_website_extrafields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doli_website_page`
--

LOCK TABLES `doli_website_page` WRITE;
/*!40000 ALTER TABLE `doli_website_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `doli_website_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tmp_doli_accouting_account`
--

LOCK TABLES `tmp_doli_accouting_account` WRITE;
/*!40000 ALTER TABLE `tmp_doli_accouting_account` DISABLE KEYS */;
INSERT INTO `tmp_doli_accouting_account` VALUES (629,633,'2300',1,'PCMN-BASE',2),(630,634,'2301',1,'PCMN-BASE',2),(631,635,'2302',1,'PCMN-BASE',2),(632,636,'2303',1,'PCMN-BASE',2),(1234,1235,'664',1,'PCMN-BASE',2),(1305,1306,'743',1,'PCMN-BASE',2),(1325,1326,'756',1,'PCMN-BASE',2);
/*!40000 ALTER TABLE `tmp_doli_accouting_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 19:28:54
