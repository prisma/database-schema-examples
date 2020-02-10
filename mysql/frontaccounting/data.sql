-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: db816446667.hosting-data.io    Database: db816446667
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
-- Dumping data for table `frac_areas`
--

LOCK TABLES `frac_areas` WRITE;
/*!40000 ALTER TABLE `frac_areas` DISABLE KEYS */;
INSERT INTO `frac_areas` VALUES (1,'Global',0);
/*!40000 ALTER TABLE `frac_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_attachments`
--

LOCK TABLES `frac_attachments` WRITE;
/*!40000 ALTER TABLE `frac_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_audit_trail`
--

LOCK TABLES `frac_audit_trail` WRITE;
/*!40000 ALTER TABLE `frac_audit_trail` DISABLE KEYS */;
INSERT INTO `frac_audit_trail` VALUES (1,18,1,1,'2018-05-05 12:08:02',NULL,1,'2018-05-05',0),(2,25,1,1,'2018-05-05 12:08:14',NULL,1,'2018-05-05',1),(3,30,1,1,'2018-05-05 12:09:54',NULL,1,'2018-05-10',0),(4,13,1,1,'2018-05-05 12:09:55',NULL,1,'2018-05-10',13),(5,10,1,1,'2018-05-05 12:09:55',NULL,1,'2018-05-10',14),(6,12,1,1,'2018-05-05 12:09:55',NULL,1,'2018-05-10',15),(7,29,1,1,'2018-05-05 12:18:49','Quick production.',1,'2018-05-05',2),(8,18,2,1,'2018-05-05 12:22:32',NULL,1,'2018-05-05',0),(9,25,2,1,'2018-05-05 12:22:32',NULL,1,'2018-05-05',3),(10,20,1,1,'2018-05-05 12:22:32',NULL,1,'2018-05-05',4),(11,30,2,1,'2018-05-07 05:55:15',NULL,1,'2018-05-07',0),(12,13,2,1,'2018-05-07 05:55:16',NULL,1,'2018-05-07',7),(13,10,2,1,'2018-05-07 05:55:16',NULL,1,'2018-05-07',8),(14,12,2,1,'2018-05-07 05:55:16',NULL,1,'2018-05-07',9),(15,30,3,1,'2018-05-07 06:08:24',NULL,1,'2018-05-07',0),(16,30,4,1,'2018-05-07 07:18:44',NULL,1,'2018-05-07',0),(17,30,5,1,'2018-05-07 09:42:41',NULL,1,'2018-05-07',0),(18,13,3,1,'2018-05-07 09:42:41',NULL,1,'2018-05-07',10),(19,10,3,1,'2018-05-07 09:42:41',NULL,1,'2018-05-07',11),(20,30,6,1,'2018-05-07 12:02:35',NULL,1,'2018-05-07',0),(21,30,7,1,'2018-05-07 12:05:38',NULL,1,'2018-05-07',0),(22,13,4,1,'2018-05-07 12:05:38',NULL,1,'2018-05-07',0),(23,10,4,1,'2018-05-07 12:05:38',NULL,1,'2018-05-07',0),(24,12,3,1,'2018-05-07 12:05:38',NULL,1,'2018-05-07',0),(25,26,1,1,'2018-05-07 13:59:34',NULL,1,'2018-05-07',NULL),(26,29,1,1,'2018-05-07 13:59:01','Production.',1,'2018-05-07',5),(27,26,1,1,'2018-05-07 13:59:34','Released.',1,'2018-05-07',6),(28,1,1,1,'2018-05-07 14:01:00',NULL,1,'2018-05-07',12),(29,30,8,1,'2019-01-21 10:13:06',NULL,2,'2019-01-21',0),(30,13,5,1,'2019-01-21 10:13:06',NULL,2,'2019-01-21',0),(31,10,5,1,'2019-01-21 10:13:06',NULL,2,'2019-01-21',0),(32,12,4,1,'2019-01-21 10:13:06',NULL,2,'2019-01-21',0),(33,18,3,1,'2019-01-21 10:14:14',NULL,2,'2019-01-21',0),(34,25,3,1,'2019-01-21 10:14:14',NULL,2,'2019-01-21',0),(35,20,2,1,'2019-01-21 10:14:14',NULL,2,'2019-01-21',0),(36,0,1,1,'2019-01-21 10:15:35',NULL,1,'2018-12-31',16);
/*!40000 ALTER TABLE `frac_audit_trail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_bank_accounts`
--

LOCK TABLES `frac_bank_accounts` WRITE;
/*!40000 ALTER TABLE `frac_bank_accounts` DISABLE KEYS */;
INSERT INTO `frac_bank_accounts` VALUES ('1060',0,'Current account','N/A','N/A',NULL,'USD',1,1,'5690','0000-00-00 00:00:00',0,0),('1065',3,'Petty Cash account','N/A','N/A',NULL,'USD',0,2,'5690','0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `frac_bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_bank_trans`
--

LOCK TABLES `frac_bank_trans` WRITE;
/*!40000 ALTER TABLE `frac_bank_trans` DISABLE KEYS */;
INSERT INTO `frac_bank_trans` VALUES (1,12,1,'2','001/2018','2018-05-10',6240,0,0,2,'1',NULL),(2,12,2,'2','002/2018','2018-05-07',300,0,0,2,'1',NULL),(3,12,3,'2','003/2018','2018-05-07',0,0,0,2,'1',NULL),(4,1,1,'1','001/2018','2018-05-07',-5,0,0,0,'Goods received',NULL),(5,12,4,'2','001/2019','2019-01-21',1250,0,0,2,'1',NULL);
/*!40000 ALTER TABLE `frac_bank_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_bom`
--

LOCK TABLES `frac_bom` WRITE;
/*!40000 ALTER TABLE `frac_bom` DISABLE KEYS */;
INSERT INTO `frac_bom` VALUES (1,'201','101',1,'DEF',1),(2,'201','102',1,'DEF',1),(3,'201','103',1,'DEF',1),(4,'201','301',1,'DEF',1);
/*!40000 ALTER TABLE `frac_bom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_budget_trans`
--

LOCK TABLES `frac_budget_trans` WRITE;
/*!40000 ALTER TABLE `frac_budget_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_budget_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_chart_class`
--

LOCK TABLES `frac_chart_class` WRITE;
/*!40000 ALTER TABLE `frac_chart_class` DISABLE KEYS */;
INSERT INTO `frac_chart_class` VALUES ('1','Assets',1,0),('2','Liabilities',2,0),('3','Income',4,0),('4','Costs',6,0);
/*!40000 ALTER TABLE `frac_chart_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_chart_master`
--

LOCK TABLES `frac_chart_master` WRITE;
/*!40000 ALTER TABLE `frac_chart_master` DISABLE KEYS */;
INSERT INTO `frac_chart_master` VALUES ('1060','','Checking Account','1',0),('1065','','Petty Cash','1',0),('1200','','Accounts Receivables','1',0),('1205','','Allowance for doubtful accounts','1',0),('1510','','Inventory','2',0),('1520','','Stocks of Raw Materials','2',0),('1530','','Stocks of Work In Progress','2',0),('1540','','Stocks of Finished Goods','2',0),('1550','','Goods Received Clearing account','2',0),('1820','','Office Furniture &amp; Equipment','3',0),('1825','','Accum. Amort. -Furn. &amp; Equip.','3',0),('1840','','Vehicle','3',0),('1845','','Accum. Amort. -Vehicle','3',0),('2100','','Accounts Payable','4',0),('2105','','Deferred Income','4',0),('2110','','Accrued Income Tax - Federal','4',0),('2120','','Accrued Income Tax - State','4',0),('2130','','Accrued Franchise Tax','4',0),('2140','','Accrued Real &amp; Personal Prop Tax','4',0),('2150','','Sales Tax','4',0),('2160','','Accrued Use Tax Payable','4',0),('2210','','Accrued Wages','4',0),('2220','','Accrued Comp Time','4',0),('2230','','Accrued Holiday Pay','4',0),('2240','','Accrued Vacation Pay','4',0),('2310','','Accr. Benefits - 401K','4',0),('2320','','Accr. Benefits - Stock Purchase','4',0),('2330','','Accr. Benefits - Med, Den','4',0),('2340','','Accr. Benefits - Payroll Taxes','4',0),('2350','','Accr. Benefits - Credit Union','4',0),('2360','','Accr. Benefits - Savings Bond','4',0),('2370','','Accr. Benefits - Garnish','4',0),('2380','','Accr. Benefits - Charity Cont.','4',0),('2620','','Bank Loans','5',0),('2680','','Loans from Shareholders','5',0),('3350','','Common Shares','6',0),('3590','','Retained Earnings - prior years','7',0),('4010','','Sales','8',0),('4430','','Shipping &amp; Handling','9',0),('4440','','Interest','9',0),('4450','','Foreign Exchange Gain','9',0),('4500','','Prompt Payment Discounts','9',0),('4510','','Discounts Given','9',0),('5010','','Cost of Goods Sold - Retail','10',0),('5020','','Material Usage Varaiance','10',0),('5030','','Consumable Materials','10',0),('5040','','Purchase price Variance','10',0),('5050','','Purchases of materials','10',0),('5060','','Discounts Received','10',0),('5100','','Freight','10',0),('5410','','Wages &amp; Salaries','11',0),('5420','','Wages - Overtime','11',0),('5430','','Benefits - Comp Time','11',0),('5440','','Benefits - Payroll Taxes','11',0),('5450','','Benefits - Workers Comp','11',0),('5460','','Benefits - Pension','11',0),('5470','','Benefits - General Benefits','11',0),('5510','','Inc Tax Exp - Federal','11',0),('5520','','Inc Tax Exp - State','11',0),('5530','','Taxes - Real Estate','11',0),('5540','','Taxes - Personal Property','11',0),('5550','','Taxes - Franchise','11',0),('5560','','Taxes - Foreign Withholding','11',0),('5610','','Accounting &amp; Legal','12',0),('5615','','Advertising &amp; Promotions','12',0),('5620','','Bad Debts','12',0),('5660','','Amortization Expense','12',0),('5685','','Insurance','12',0),('5690','','Interest &amp; Bank Charges','12',0),('5700','','Office Supplies','12',0),('5760','','Rent','12',0),('5765','','Repair &amp; Maintenance','12',0),('5780','','Telephone','12',0),('5785','','Travel &amp; Entertainment','12',0),('5790','','Utilities','12',0),('5795','','Registrations','12',0),('5800','','Licenses','12',0),('5810','','Foreign Exchange Loss','12',0),('9990','','Year Profit/Loss','12',0);
/*!40000 ALTER TABLE `frac_chart_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_chart_types`
--

LOCK TABLES `frac_chart_types` WRITE;
/*!40000 ALTER TABLE `frac_chart_types` DISABLE KEYS */;
INSERT INTO `frac_chart_types` VALUES ('1','Current Assets','1','',0),('10','Cost of Goods Sold','4','',0),('11','Payroll Expenses','4','',0),('12','General &amp; Administrative expenses','4','',0),('2','Inventory Assets','1','',0),('3','Capital Assets','1','',0),('4','Current Liabilities','2','',0),('5','Long Term Liabilities','2','',0),('6','Share Capital','2','',0),('7','Retained Earnings','2','',0),('8','Sales Revenue','3','',0),('9','Other Revenue','3','',0);
/*!40000 ALTER TABLE `frac_chart_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_comments`
--

LOCK TABLES `frac_comments` WRITE;
/*!40000 ALTER TABLE `frac_comments` DISABLE KEYS */;
INSERT INTO `frac_comments` VALUES (12,1,'2018-05-10','Cash invoice 1'),(12,2,'2018-05-07','Cash invoice 2'),(13,4,'2018-05-07','Recurrent Invoice covers period 04/01/2018 - 04/07/2018.'),(10,4,'2018-05-07','Recurrent Invoice covers period 04/01/2018 - 04/07/2018.'),(12,3,'2018-05-07','Cash invoice 4'),(12,4,'2019-01-21','Default #5'),(0,1,'2018-12-31','Closing Year');
/*!40000 ALTER TABLE `frac_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_credit_status`
--

LOCK TABLES `frac_credit_status` WRITE;
/*!40000 ALTER TABLE `frac_credit_status` DISABLE KEYS */;
INSERT INTO `frac_credit_status` VALUES (1,'Good History',0,0),(3,'No more work until payment received',1,0),(4,'In liquidation',1,0);
/*!40000 ALTER TABLE `frac_credit_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_crm_categories`
--

LOCK TABLES `frac_crm_categories` WRITE;
/*!40000 ALTER TABLE `frac_crm_categories` DISABLE KEYS */;
INSERT INTO `frac_crm_categories` VALUES (1,'cust_branch','general','General','General contact data for customer branch (overrides company setting)',1,0),(2,'cust_branch','invoice','Invoices','Invoice posting (overrides company setting)',1,0),(3,'cust_branch','order','Orders','Order confirmation (overrides company setting)',1,0),(4,'cust_branch','delivery','Deliveries','Delivery coordination (overrides company setting)',1,0),(5,'customer','general','General','General contact data for customer',1,0),(6,'customer','order','Orders','Order confirmation',1,0),(7,'customer','delivery','Deliveries','Delivery coordination',1,0),(8,'customer','invoice','Invoices','Invoice posting',1,0),(9,'supplier','general','General','General contact data for supplier',1,0),(10,'supplier','order','Orders','Order confirmation',1,0),(11,'supplier','delivery','Deliveries','Delivery coordination',1,0),(12,'supplier','invoice','Invoices','Invoice posting',1,0);
/*!40000 ALTER TABLE `frac_crm_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_crm_contacts`
--

LOCK TABLES `frac_crm_contacts` WRITE;
/*!40000 ALTER TABLE `frac_crm_contacts` DISABLE KEYS */;
INSERT INTO `frac_crm_contacts` VALUES (4,2,'supplier','general','2'),(5,3,'cust_branch','general','1'),(7,3,'customer','general','1'),(8,1,'supplier','general','1'),(9,4,'cust_branch','general','2'),(10,4,'customer','general','2');
/*!40000 ALTER TABLE `frac_crm_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_crm_persons`
--

LOCK TABLES `frac_crm_persons` WRITE;
/*!40000 ALTER TABLE `frac_crm_persons` DISABLE KEYS */;
INSERT INTO `frac_crm_persons` VALUES (1,'Dino Saurius','John Doe',NULL,'N/A',NULL,NULL,NULL,NULL,NULL,'',0),(2,'Beefeater','Joe Oversea',NULL,'N/A',NULL,NULL,NULL,NULL,NULL,'',0),(3,'Donald Easter','Donald Easter LLC',NULL,'N/A',NULL,NULL,NULL,NULL,NULL,'',0),(4,'MoneyMaker','MoneyMaker Ltd.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0);
/*!40000 ALTER TABLE `frac_crm_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_currencies`
--

LOCK TABLES `frac_currencies` WRITE;
/*!40000 ALTER TABLE `frac_currencies` DISABLE KEYS */;
INSERT INTO `frac_currencies` VALUES ('CA Dollars','CAD','$','Canada','Cents',1,0),('Euro','EUR','â‚¬','Europe','Cents',1,0),('Pounds','GBP','Â£','England','Pence',1,0),('US Dollars','USD','$','United States','Cents',1,0);
/*!40000 ALTER TABLE `frac_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_cust_allocations`
--

LOCK TABLES `frac_cust_allocations` WRITE;
/*!40000 ALTER TABLE `frac_cust_allocations` DISABLE KEYS */;
INSERT INTO `frac_cust_allocations` VALUES (1,1,6240,'2018-05-10',1,12,1,10),(2,1,300,'2018-05-07',2,12,2,10),(3,1,0,'2018-05-07',3,12,4,10),(4,1,1250,'2019-01-21',4,12,5,10);
/*!40000 ALTER TABLE `frac_cust_allocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_cust_branch`
--

LOCK TABLES `frac_cust_branch` WRITE;
/*!40000 ALTER TABLE `frac_cust_branch` DISABLE KEYS */;
INSERT INTO `frac_cust_branch` VALUES (1,1,'Donald Easter LLC','Donald Easter','N/A',1,1,'DEF',1,'','4510','1200','4500',1,'N/A',0,'',NULL,0),(2,2,'MoneyMaker Ltd.','MoneyMaker','',1,1,'DEF',2,'','4510','1200','4500',1,'',0,'',NULL,0);
/*!40000 ALTER TABLE `frac_cust_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_debtor_trans`
--

LOCK TABLES `frac_debtor_trans` WRITE;
/*!40000 ALTER TABLE `frac_debtor_trans` DISABLE KEYS */;
INSERT INTO `frac_debtor_trans` VALUES (1,10,0,1,1,'2018-05-10','2018-05-05','001/2018',1,1,6240,0,0,0,0,6240,0,1,1,0,0,4,1),(2,10,0,1,1,'2018-05-07','2018-05-07','002/2018',1,2,300,0,0,0,0,300,0,1,1,0,0,4,1),(3,10,0,2,2,'2018-05-07','2018-06-17','003/2018',1,5,267.14,0,0,0,0,0,0,1.123,1,1,0,1,1),(4,10,0,1,1,'2018-05-07','2018-05-07','004/2018',1,7,0,0,0,0,0,0,0,1,1,0,0,4,1),(5,10,0,1,1,'2019-01-21','2019-01-21','001/2019',1,8,1250,0,0,0,0,1250,0,1,1,0,0,4,1),(1,12,0,1,1,'2018-05-10','0000-00-00','001/2018',0,0,6240,0,0,0,0,6240,0,1,0,0,0,NULL,0),(2,12,0,1,1,'2018-05-07','0000-00-00','002/2018',0,0,300,0,0,0,0,300,0,1,0,0,0,NULL,0),(3,12,0,1,1,'2018-05-07','0000-00-00','003/2018',0,0,0,0,0,0,0,0,0,1,0,0,0,NULL,0),(4,12,0,1,1,'2019-01-21','0000-00-00','001/2019',0,0,1250,0,0,0,0,1250,0,1,0,0,0,NULL,0),(1,13,1,1,1,'2018-05-10','2018-05-05','auto',1,1,6240,0,0,0,0,0,0,1,1,0,0,4,1),(2,13,1,1,1,'2018-05-07','2018-05-07','auto',1,2,300,0,0,0,0,0,0,1,1,0,0,4,1),(3,13,1,2,2,'2018-05-07','2018-06-17','auto',1,5,267.14,0,0,0,0,0,0,1.123,1,1,0,1,1),(4,13,1,1,1,'2018-05-07','2018-05-07','auto',1,7,0,0,0,0,0,0,0,1,1,0,0,4,1),(5,13,1,1,1,'2019-01-21','2019-01-21','auto',1,8,1250,0,0,0,0,0,0,1,1,0,0,4,1);
/*!40000 ALTER TABLE `frac_debtor_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_debtor_trans_details`
--

LOCK TABLES `frac_debtor_trans_details` WRITE;
/*!40000 ALTER TABLE `frac_debtor_trans_details` DISABLE KEYS */;
INSERT INTO `frac_debtor_trans_details` VALUES (1,1,13,'101','iPad Air 2 16GB',300,14.29,20,0,200,20,1),(2,1,13,'301','Support',80,3.81,3,0,0,3,2),(3,1,10,'101','iPad Air 2 16GB',300,14.2855,20,0,200,0,1),(4,1,10,'301','Support',80,3.81,3,0,0,0,2),(5,2,13,'101','iPad Air 2 16GB',300,14.29,1,0,200,1,3),(6,2,10,'101','iPad Air 2 16GB',300,14.29,1,0,200,0,5),(7,3,13,'102','iPhone 6 64GB',222.62,0,1,0,150,1,7),(8,3,13,'103','iPhone Cover Case',44.52,0,1,0,10,1,8),(9,3,10,'102','iPhone 6 64GB',222.62,0,1,0,150,0,7),(10,3,10,'103','iPhone Cover Case',44.52,0,1,0,10,0,8),(11,4,13,'202','Maintenance',0,0,5,0,0,5,10),(12,4,10,'202','Maintenance',0,0,5,0,0,0,11),(13,5,13,'102','iPhone 6 64GB',250,11.904,5,0,150,5,11),(14,5,10,'102','iPhone 6 64GB',250,11.904,5,0,150,0,13);
/*!40000 ALTER TABLE `frac_debtor_trans_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_debtors_master`
--

LOCK TABLES `frac_debtors_master` WRITE;
/*!40000 ALTER TABLE `frac_debtors_master` DISABLE KEYS */;
INSERT INTO `frac_debtors_master` VALUES (1,'Donald Easter LLC','Donald Easter','N/A','123456789','USD',1,0,0,1,4,0,0,1000,'',0),(2,'MoneyMaker Ltd.','MoneyMaker','N/A','54354333','EUR',1,1,0,1,1,0,0,1000,'',0);
/*!40000 ALTER TABLE `frac_debtors_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_dimensions`
--

LOCK TABLES `frac_dimensions` WRITE;
/*!40000 ALTER TABLE `frac_dimensions` DISABLE KEYS */;
INSERT INTO `frac_dimensions` VALUES (1,'001/2018','Cost Centre',1,0,'2018-05-05','2018-05-25');
/*!40000 ALTER TABLE `frac_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_exchange_rates`
--

LOCK TABLES `frac_exchange_rates` WRITE;
/*!40000 ALTER TABLE `frac_exchange_rates` DISABLE KEYS */;
INSERT INTO `frac_exchange_rates` VALUES (1,'EUR',1.123,1.123,'2018-05-07');
/*!40000 ALTER TABLE `frac_exchange_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_fiscal_year`
--

LOCK TABLES `frac_fiscal_year` WRITE;
/*!40000 ALTER TABLE `frac_fiscal_year` DISABLE KEYS */;
INSERT INTO `frac_fiscal_year` VALUES (1,'2018-01-01','2018-12-31',1),(2,'2019-01-01','2019-12-31',0);
/*!40000 ALTER TABLE `frac_fiscal_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_gl_trans`
--

LOCK TABLES `frac_gl_trans` WRITE;
/*!40000 ALTER TABLE `frac_gl_trans` DISABLE KEYS */;
INSERT INTO `frac_gl_trans` VALUES (1,25,1,'2018-05-05','1510','101',20000,0,0,NULL,NULL),(2,25,1,'2018-05-05','1510','102',15000,0,0,NULL,NULL),(3,25,1,'2018-05-05','1510','103',1000,0,0,NULL,NULL),(4,25,1,'2018-05-05','1550','',-36000,0,0,NULL,NULL),(5,13,1,'2018-05-10','5010','',4000,0,0,NULL,NULL),(6,13,1,'2018-05-10','1510','',-4000,0,0,NULL,NULL),(7,10,1,'2018-05-10','4010','',-5714.29,0,0,NULL,NULL),(8,10,1,'2018-05-10','4010','',-228.57,0,0,NULL,NULL),(9,10,1,'2018-05-10','1200','',6240,0,0,2,'1'),(10,10,1,'2018-05-10','2150','',-297.14,0,0,NULL,NULL),(11,12,1,'2018-05-10','1065','',6240,0,0,NULL,NULL),(12,12,1,'2018-05-10','1200','',-6240,0,0,2,'1'),(13,29,1,'2018-05-05','1510','1 * iPad Air 2 16GB',-400,0,0,NULL,NULL),(14,29,1,'2018-05-05','1510','1 * iPhone 6 64GB',-300,0,0,NULL,NULL),(15,29,1,'2018-05-05','1510','1 * iPhone Cover Case',-20,0,0,NULL,NULL),(16,29,1,'2018-05-05','1530','1 * Support',720,0,0,NULL,NULL),(17,26,1,'2018-05-05','1530','',-720,0,0,NULL,NULL),(18,26,1,'2018-05-05','1510','',720,0,0,NULL,NULL),(19,25,2,'2018-05-05','1510','101',3000,0,0,NULL,NULL),(20,25,2,'2018-05-05','1550','',-3000,0,0,NULL,NULL),(21,20,1,'2018-05-05','2150','',150,0,0,NULL,NULL),(22,20,1,'2018-05-05','2100','',-3150,0,0,3,'1'),(23,20,1,'2018-05-05','1550','',3000,0,0,NULL,NULL),(24,13,2,'2018-05-07','5010','',200,0,0,NULL,NULL),(25,13,2,'2018-05-07','1510','',-200,0,0,NULL,NULL),(26,10,2,'2018-05-07','4010','',-285.71,0,0,NULL,NULL),(27,10,2,'2018-05-07','1200','',300,0,0,2,'1'),(28,10,2,'2018-05-07','2150','',-14.29,0,0,NULL,NULL),(29,12,2,'2018-05-07','1065','',300,0,0,NULL,NULL),(30,12,2,'2018-05-07','1200','',-300,0,0,2,'1'),(31,13,3,'2018-05-07','5010','',150,1,0,NULL,NULL),(32,13,3,'2018-05-07','1510','',-150,0,0,NULL,NULL),(33,13,3,'2018-05-07','5010','',10,1,0,NULL,NULL),(34,13,3,'2018-05-07','1510','',-10,0,0,NULL,NULL),(35,10,3,'2018-05-07','4010','',-250,1,0,NULL,NULL),(36,10,3,'2018-05-07','4010','',-50,1,0,NULL,NULL),(37,10,3,'2018-05-07','1200','',300,0,0,2,'2'),(38,12,3,'2018-05-07','1065','',0,0,0,NULL,NULL),(39,1,1,'2018-05-07','5010','',5,1,0,NULL,NULL),(40,1,1,'2018-05-07','1060','',-5,0,0,NULL,NULL),(41,13,5,'2019-01-21','5010','',750,0,0,NULL,NULL),(42,13,5,'2019-01-21','1510','',-750,0,0,NULL,NULL),(43,10,5,'2019-01-21','4010','',-1190.48,0,0,NULL,NULL),(44,10,5,'2019-01-21','1200','',1250,0,0,2,'1'),(45,10,5,'2019-01-21','2150','',-59.52,0,0,NULL,NULL),(46,12,4,'2019-01-21','1065','',1250,0,0,NULL,NULL),(47,12,4,'2019-01-21','1200','',-1250,0,0,2,'1'),(48,25,3,'2019-01-21','1510','102',900,0,0,NULL,NULL),(49,25,3,'2019-01-21','1550','',-900,0,0,NULL,NULL),(50,20,2,'2019-01-21','2150','',45,0,0,NULL,NULL),(51,20,2,'2019-01-21','2100','',-945,0,0,3,'1'),(52,20,2,'2019-01-21','1550','',900,0,0,NULL,NULL),(53,0,1,'2018-12-31','3590','Closing Year',-2163.57,0,0,NULL,NULL),(54,0,1,'2018-12-31','9990','Closing Year',2163.57,0,0,NULL,NULL);
/*!40000 ALTER TABLE `frac_gl_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_grn_batch`
--

LOCK TABLES `frac_grn_batch` WRITE;
/*!40000 ALTER TABLE `frac_grn_batch` DISABLE KEYS */;
INSERT INTO `frac_grn_batch` VALUES (1,1,1,'001/2018','2018-05-05','DEF',1),(2,1,2,'auto','2018-05-05','DEF',1),(3,1,3,'auto','2019-01-21','DEF',1);
/*!40000 ALTER TABLE `frac_grn_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_grn_items`
--

LOCK TABLES `frac_grn_items` WRITE;
/*!40000 ALTER TABLE `frac_grn_items` DISABLE KEYS */;
INSERT INTO `frac_grn_items` VALUES (1,1,1,'101','iPad Air 2 16GB',100,0),(2,1,2,'102','iPhone 6 64GB',100,0),(3,1,3,'103','iPhone Cover Case',100,0),(4,2,4,'101','iPad Air 2 16GB',15,15),(5,3,5,'102','iPhone 6 64GB',6,6);
/*!40000 ALTER TABLE `frac_grn_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_groups`
--

LOCK TABLES `frac_groups` WRITE;
/*!40000 ALTER TABLE `frac_groups` DISABLE KEYS */;
INSERT INTO `frac_groups` VALUES (1,'Small',0),(2,'Medium',0),(3,'Large',0);
/*!40000 ALTER TABLE `frac_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_item_codes`
--

LOCK TABLES `frac_item_codes` WRITE;
/*!40000 ALTER TABLE `frac_item_codes` DISABLE KEYS */;
INSERT INTO `frac_item_codes` VALUES (1,'101','101','iPad Air 2 16GB',1,1,0,0),(2,'102','102','iPhone 6 64GB',1,1,0,0),(3,'103','103','iPhone Cover Case',1,1,0,0),(4,'201','201','AP Surf Set',3,1,0,0),(5,'301','301','Support',4,1,0,0),(6,'501','102','iPhone Pack',1,1,0,0),(7,'501','103','iPhone Pack',1,1,0,0),(8,'202','202','Maintenance',4,1,0,0);
/*!40000 ALTER TABLE `frac_item_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_item_tax_type_exemptions`
--

LOCK TABLES `frac_item_tax_type_exemptions` WRITE;
/*!40000 ALTER TABLE `frac_item_tax_type_exemptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_item_tax_type_exemptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_item_tax_types`
--

LOCK TABLES `frac_item_tax_types` WRITE;
/*!40000 ALTER TABLE `frac_item_tax_types` DISABLE KEYS */;
INSERT INTO `frac_item_tax_types` VALUES (1,'Regular',0,0);
/*!40000 ALTER TABLE `frac_item_tax_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_item_units`
--

LOCK TABLES `frac_item_units` WRITE;
/*!40000 ALTER TABLE `frac_item_units` DISABLE KEYS */;
INSERT INTO `frac_item_units` VALUES ('each','Each',0,0),('hr','Hours',0,0);
/*!40000 ALTER TABLE `frac_item_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_journal`
--

LOCK TABLES `frac_journal` WRITE;
/*!40000 ALTER TABLE `frac_journal` DISABLE KEYS */;
INSERT INTO `frac_journal` VALUES (0,1,'2018-12-31','001/2012','','2018-12-31','2018-12-31','USD',2163.57,1);
/*!40000 ALTER TABLE `frac_journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_loc_stock`
--

LOCK TABLES `frac_loc_stock` WRITE;
/*!40000 ALTER TABLE `frac_loc_stock` DISABLE KEYS */;
INSERT INTO `frac_loc_stock` VALUES ('DEF','101',0),('DEF','102',0),('DEF','103',0),('DEF','201',0),('DEF','202',0),('DEF','301',0);
/*!40000 ALTER TABLE `frac_loc_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_locations`
--

LOCK TABLES `frac_locations` WRITE;
/*!40000 ALTER TABLE `frac_locations` DISABLE KEYS */;
INSERT INTO `frac_locations` VALUES ('DEF','Default','N/A','','','','','',0,0);
/*!40000 ALTER TABLE `frac_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_payment_terms`
--

LOCK TABLES `frac_payment_terms` WRITE;
/*!40000 ALTER TABLE `frac_payment_terms` DISABLE KEYS */;
INSERT INTO `frac_payment_terms` VALUES (1,'Due 15th Of the Following Month',0,17,0),(2,'Due By End Of The Following Month',0,30,0),(3,'Payment due within 10 days',10,0,0),(4,'Cash Only',0,0,0),(5,'Prepaid',-1,0,0);
/*!40000 ALTER TABLE `frac_payment_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_prices`
--

LOCK TABLES `frac_prices` WRITE;
/*!40000 ALTER TABLE `frac_prices` DISABLE KEYS */;
INSERT INTO `frac_prices` VALUES (1,'101',1,'USD',300),(2,'102',1,'USD',250),(3,'103',1,'USD',50);
/*!40000 ALTER TABLE `frac_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_print_profiles`
--

LOCK TABLES `frac_print_profiles` WRITE;
/*!40000 ALTER TABLE `frac_print_profiles` DISABLE KEYS */;
INSERT INTO `frac_print_profiles` VALUES (1,'Out of office',NULL,0),(2,'Sales Department',NULL,0),(3,'Central',NULL,2),(4,'Sales Department','104',2),(5,'Sales Department','105',2),(6,'Sales Department','107',2),(7,'Sales Department','109',2),(8,'Sales Department','110',2),(9,'Sales Department','201',2);
/*!40000 ALTER TABLE `frac_print_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_printers`
--

LOCK TABLES `frac_printers` WRITE;
/*!40000 ALTER TABLE `frac_printers` DISABLE KEYS */;
INSERT INTO `frac_printers` VALUES (1,'QL500','Label printer','QL500','server',127,20),(2,'Samsung','Main network printer','scx4521F','server',515,5),(3,'Local','Local print server at user IP','lp','',515,10);
/*!40000 ALTER TABLE `frac_printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_purch_data`
--

LOCK TABLES `frac_purch_data` WRITE;
/*!40000 ALTER TABLE `frac_purch_data` DISABLE KEYS */;
INSERT INTO `frac_purch_data` VALUES (1,'101',200,'',1,'iPad Air 2 16GB'),(1,'102',150,'',1,'iPhone 6 64GB'),(1,'103',10,'',1,'iPhone Cover Case');
/*!40000 ALTER TABLE `frac_purch_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_purch_order_details`
--

LOCK TABLES `frac_purch_order_details` WRITE;
/*!40000 ALTER TABLE `frac_purch_order_details` DISABLE KEYS */;
INSERT INTO `frac_purch_order_details` VALUES (1,1,'101','iPad Air 2 16GB','2018-05-15',0,200,200,200,100,100),(2,1,'102','iPhone 6 64GB','2018-05-15',0,150,150,150,100,100),(3,1,'103','iPhone Cover Case','2018-05-15',0,10,10,10,100,100),(4,2,'101','iPad Air 2 16GB','2018-05-05',15,200,200,200,15,15),(5,3,'102','iPhone 6 64GB','2019-01-21',6,150,150,150,6,6);
/*!40000 ALTER TABLE `frac_purch_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_purch_orders`
--

LOCK TABLES `frac_purch_orders` WRITE;
/*!40000 ALTER TABLE `frac_purch_orders` DISABLE KEYS */;
INSERT INTO `frac_purch_orders` VALUES (1,1,NULL,'2018-05-05','001/2018',NULL,'DEF','N/A',37800,0,0,0),(2,1,NULL,'2018-05-05','auto','rr4','DEF','N/A',3150,0,0,0),(3,1,NULL,'2019-01-21','auto','asd5','DEF','N/A',945,0,0,0);
/*!40000 ALTER TABLE `frac_purch_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_quick_entries`
--

LOCK TABLES `frac_quick_entries` WRITE;
/*!40000 ALTER TABLE `frac_quick_entries` DISABLE KEYS */;
INSERT INTO `frac_quick_entries` VALUES (1,1,'Maintenance',NULL,0,'Amount',0),(2,4,'Phone',NULL,0,'Amount',0),(3,2,'Cash Sales','Retail sales without invoice',0,'Amount',0);
/*!40000 ALTER TABLE `frac_quick_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_quick_entry_lines`
--

LOCK TABLES `frac_quick_entry_lines` WRITE;
/*!40000 ALTER TABLE `frac_quick_entry_lines` DISABLE KEYS */;
INSERT INTO `frac_quick_entry_lines` VALUES (1,1,0,'','t-','1',0,0),(2,2,0,'','t-','1',0,0),(3,3,0,'','t-','1',0,0),(4,3,0,'','=','4010',0,0),(5,1,0,'','=','5765',0,0),(6,2,0,'','=','5780',0,0);
/*!40000 ALTER TABLE `frac_quick_entry_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_recurrent_invoices`
--

LOCK TABLES `frac_recurrent_invoices` WRITE;
/*!40000 ALTER TABLE `frac_recurrent_invoices` DISABLE KEYS */;
INSERT INTO `frac_recurrent_invoices` VALUES (1,'Weekly Maintenance',6,1,1,7,0,'2018-04-01','2020-05-07','2018-04-08');
/*!40000 ALTER TABLE `frac_recurrent_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_reflines`
--

LOCK TABLES `frac_reflines` WRITE;
/*!40000 ALTER TABLE `frac_reflines` DISABLE KEYS */;
INSERT INTO `frac_reflines` VALUES (1,0,'','{001}/{YYYY}','',1,0),(2,1,'','{001}/{YYYY}','',1,0),(3,2,'','{001}/{YYYY}','',1,0),(4,4,'','{001}/{YYYY}','',1,0),(5,10,'','{001}/{YYYY}','',1,0),(6,11,'','{001}/{YYYY}','',1,0),(7,12,'','{001}/{YYYY}','',1,0),(8,13,'','{001}/{YYYY}','',1,0),(9,16,'','{001}/{YYYY}','',1,0),(10,17,'','{001}/{YYYY}','',1,0),(11,18,'','{001}/{YYYY}','',1,0),(12,20,'','{001}/{YYYY}','',1,0),(13,21,'','{001}/{YYYY}','',1,0),(14,22,'','{001}/{YYYY}','',1,0),(15,25,'','{001}/{YYYY}','',1,0),(16,26,'','{001}/{YYYY}','',1,0),(17,28,'','{001}/{YYYY}','',1,0),(18,29,'','{001}/{YYYY}','',1,0),(19,30,'','{001}/{YYYY}','',1,0),(20,32,'','{001}/{YYYY}','',1,0),(21,35,'','{001}/{YYYY}','',1,0),(22,40,'','{001}/{YYYY}','',1,0);
/*!40000 ALTER TABLE `frac_reflines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_refs`
--

LOCK TABLES `frac_refs` WRITE;
/*!40000 ALTER TABLE `frac_refs` DISABLE KEYS */;
INSERT INTO `frac_refs` VALUES (1,1,'001/2018'),(1,10,'001/2018'),(5,10,'001/2019'),(2,10,'002/2018'),(3,10,'003/2018'),(4,10,'004/2018'),(1,12,'001/2018'),(4,12,'001/2019'),(2,12,'002/2018'),(3,12,'003/2018'),(1,18,'001/2018'),(1,20,'001/2018'),(2,20,'001/2019'),(1,25,'001/2018'),(1,26,'001/2018'),(2,26,'002/2018'),(3,26,'003/2018'),(3,30,'001/2018'),(4,30,'002/2018'),(6,30,'003/2018'),(1,40,'001/2018');
/*!40000 ALTER TABLE `frac_refs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_sales_order_details`
--

LOCK TABLES `frac_sales_order_details` WRITE;
/*!40000 ALTER TABLE `frac_sales_order_details` DISABLE KEYS */;
INSERT INTO `frac_sales_order_details` VALUES (1,1,30,'101','iPad Air 2 16GB',20,300,20,0,0),(2,1,30,'301','Support',3,80,3,0,0),(3,2,30,'101','iPad Air 2 16GB',1,300,1,0,0),(4,3,30,'102','iPhone 6 64GB',0,250,1,0,0),(5,3,30,'103','iPhone Cover Case',0,50,1,0,0),(6,4,30,'101','iPad Air 2 16GB',0,267.14,1,0,0),(7,5,30,'102','iPhone 6 64GB',1,222.62,1,0,0),(8,5,30,'103','iPhone Cover Case',1,44.52,1,0,0),(9,6,30,'202','Maintenance',0,90,5,0,0),(10,7,30,'202','Maintenance',5,0,5,0,0),(11,8,30,'102','iPhone 6 64GB',5,250,5,0,0);
/*!40000 ALTER TABLE `frac_sales_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_sales_orders`
--

LOCK TABLES `frac_sales_orders` WRITE;
/*!40000 ALTER TABLE `frac_sales_orders` DISABLE KEYS */;
INSERT INTO `frac_sales_orders` VALUES (1,30,1,0,1,1,'auto','',NULL,'2018-05-10',1,1,'N/A',NULL,NULL,'Donald Easter LLC',0,'DEF','2018-05-05',4,6240,0,0),(2,30,1,0,1,1,'auto','',NULL,'2018-05-07',1,1,'N/A',NULL,NULL,'Donald Easter LLC',0,'DEF','2018-05-07',4,300,0,0),(3,30,0,0,1,1,'001/2018','',NULL,'2018-05-07',1,1,'N/A',NULL,NULL,'Donald Easter LLC',0,'DEF','2018-05-08',4,300,0,0),(4,30,0,0,2,2,'002/2018','',NULL,'2018-05-07',1,1,'N/A',NULL,NULL,'MoneyMaker Ltd.',0,'DEF','2018-05-08',1,267.14,0,0),(5,30,1,0,2,2,'auto','',NULL,'2018-05-07',1,1,'N/A',NULL,NULL,'MoneyMaker Ltd.',0,'DEF','2018-06-17',1,267.14,0,0),(6,30,0,1,1,1,'003/2018','',NULL,'2018-05-07',1,1,'N/A',NULL,NULL,'Donald Easter LLC',0,'DEF','2018-05-08',4,450,0,0),(7,30,1,0,1,1,'auto','','Recurrent Invoice covers period 04/01/2018 - 04/07/2018.','2018-05-07',1,1,'N/A',NULL,NULL,'Donald Easter LLC',0,'DEF','2018-05-07',4,0,0,0),(8,30,1,0,1,1,'auto','',NULL,'2019-01-21',1,1,'N/A',NULL,NULL,'Donald Easter LLC',0,'DEF','2019-01-21',4,1250,0,0);
/*!40000 ALTER TABLE `frac_sales_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_sales_pos`
--

LOCK TABLES `frac_sales_pos` WRITE;
/*!40000 ALTER TABLE `frac_sales_pos` DISABLE KEYS */;
INSERT INTO `frac_sales_pos` VALUES (1,'Default',1,1,'DEF',2,0);
/*!40000 ALTER TABLE `frac_sales_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_sales_types`
--

LOCK TABLES `frac_sales_types` WRITE;
/*!40000 ALTER TABLE `frac_sales_types` DISABLE KEYS */;
INSERT INTO `frac_sales_types` VALUES (1,'Retail',1,1,0),(2,'Wholesale',0,0.7,0);
/*!40000 ALTER TABLE `frac_sales_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_salesman`
--

LOCK TABLES `frac_salesman` WRITE;
/*!40000 ALTER TABLE `frac_salesman` DISABLE KEYS */;
INSERT INTO `frac_salesman` VALUES (1,'Sales Person','','','',5,1000,4,0);
/*!40000 ALTER TABLE `frac_salesman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_security_roles`
--

LOCK TABLES `frac_security_roles` WRITE;
/*!40000 ALTER TABLE `frac_security_roles` DISABLE KEYS */;
INSERT INTO `frac_security_roles` VALUES (1,'Inquiries','Inquiries','768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128','257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;773;774;2822;3073;3075;3076;3077;3329;3330;3331;3332;3333;3334;3335;5377;5633;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8450;8451;10497;10753;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15622;15623;15624;15625;15626;15873;15882;16129;16130;16131;16132;775',0),(2,'System Administrator','System Administrator','256;512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;9472;9728;10496;10752;11008;13056;13312;15616;15872;16128','257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;526;769;770;771;772;773;774;2817;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5636;5637;5641;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8195;8196;8197;8449;8450;8451;9217;9218;9220;9473;9474;9475;9476;9729;10497;10753;10754;10755;10756;10757;11009;11010;11011;11012;13057;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15628;15625;15626;15627;15873;15874;15875;15876;15877;15878;15879;15880;15883;15881;15882;16129;16130;16131;16132;775',0),(3,'Salesman','Salesman','768;3072;5632;8192;15872','773;774;3073;3075;3081;5633;8194;15873;775',0),(4,'Stock Manager','Stock Manager','768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128','2818;2822;3073;3076;3077;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5889;5890;5891;8193;8194;8450;8451;10753;11009;11010;11012;13313;13315;15882;16129;16130;16131;16132;775',0),(5,'Production Manager','Production Manager','512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128','521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5640;5889;5890;5891;8193;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775',0),(6,'Purchase Officer','Purchase Officer','512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128','521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5377;5633;5635;5640;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775',0),(7,'AR Officer','AR Officer','512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128','521;523;524;771;773;774;2818;2819;2820;2821;2822;2823;3073;3073;3074;3075;3076;3077;3078;3079;3080;3081;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5633;5634;5637;5638;5639;5640;5640;5889;5890;5891;8193;8194;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;775',0),(8,'AP Officer','AP Officer','512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128','257;258;259;260;521;523;524;769;770;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5635;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15876;15877;15880;15882;16129;16130;16131;16132;775',0),(9,'Accountant','New Accountant','512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128','257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;775',0),(10,'Sub Admin','Sub Admin','512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128','257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15873;15874;15876;15877;15878;15879;15880;15882;16129;16130;16131;16132;775',0);
/*!40000 ALTER TABLE `frac_security_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_shippers`
--

LOCK TABLES `frac_shippers` WRITE;
/*!40000 ALTER TABLE `frac_shippers` DISABLE KEYS */;
INSERT INTO `frac_shippers` VALUES (1,'Default','','','','',0);
/*!40000 ALTER TABLE `frac_shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_sql_trail`
--

LOCK TABLES `frac_sql_trail` WRITE;
/*!40000 ALTER TABLE `frac_sql_trail` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_sql_trail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_stock_category`
--

LOCK TABLES `frac_stock_category` WRITE;
/*!40000 ALTER TABLE `frac_stock_category` DISABLE KEYS */;
INSERT INTO `frac_stock_category` VALUES (1,'Components',1,'each','B','4010','5010','1510','5040','1530',0,0,0,0,0),(2,'Charges',1,'each','D','4010','5010','1510','5040','1530',0,0,0,0,0),(3,'Systems',1,'each','M','4010','5010','1510','5040','1530',0,0,0,0,0),(4,'Services',1,'hr','D','4010','5010','1510','5040','1530',0,0,0,0,0);
/*!40000 ALTER TABLE `frac_stock_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_stock_fa_class`
--

LOCK TABLES `frac_stock_fa_class` WRITE;
/*!40000 ALTER TABLE `frac_stock_fa_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_stock_fa_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_stock_master`
--

LOCK TABLES `frac_stock_master` WRITE;
/*!40000 ALTER TABLE `frac_stock_master` DISABLE KEYS */;
INSERT INTO `frac_stock_master` VALUES ('101',1,1,'iPad Air 2 16GB','','each','B','4010','5010','1510','5040','1530',0,0,0,200,0,0,0,0,0,0,'S',0,1,'0000-00-00','0000-00-00',''),('102',1,1,'iPhone 6 64GB','','each','B','4010','5010','1510','5040','1530',0,0,150,150,0,0,0,0,0,0,'S',0,1,'0000-00-00','0000-00-00',''),('103',1,1,'iPhone Cover Case','','each','B','4010','5010','1510','5040','1530',0,0,0,10,0,0,0,0,0,0,'S',0,1,'0000-00-00','0000-00-00',''),('201',3,1,'AP Surf Set','','each','M','4010','5010','1510','5040','1530',0,0,0,360,0,0,0,0,0,0,'S',0,1,'0000-00-00','0000-00-00',''),('202',4,1,'Maintenance','','hr','D','4010','5010','1510','5040','1530',0,0,0,0,0,0,0,0,0,1,'S',0,1,'0000-00-00','0000-00-00',''),('301',4,1,'Support','','hr','D','4010','5010','1510','5040','1530',0,0,0,0,0,0,0,0,0,0,'S',0,1,'0000-00-00','0000-00-00','');
/*!40000 ALTER TABLE `frac_stock_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_stock_moves`
--

LOCK TABLES `frac_stock_moves` WRITE;
/*!40000 ALTER TABLE `frac_stock_moves` DISABLE KEYS */;
INSERT INTO `frac_stock_moves` VALUES (1,1,'101',25,'DEF','2018-05-05',200,'',100,200),(2,1,'102',25,'DEF','2018-05-05',150,'',100,150),(3,1,'103',25,'DEF','2018-05-05',10,'',100,10),(4,1,'101',13,'DEF','2018-05-10',300,'auto',-20,200),(5,1,'301',13,'DEF','2018-05-10',80,'auto',-3,0),(6,1,'101',29,'DEF','2018-05-05',200,'001/2018',-2,200),(7,1,'102',29,'DEF','2018-05-05',150,'001/2018',-2,150),(8,1,'103',29,'DEF','2018-05-05',10,'001/2018',-2,10),(9,1,'301',29,'DEF','2018-05-05',0,'001/2018',-2,0),(10,1,'201',26,'DEF','2018-05-05',0,'001/2018',2,360),(11,2,'101',25,'DEF','2018-05-05',200,'',15,200),(12,2,'101',13,'DEF','2018-05-07',300,'auto',-1,200),(13,3,'102',13,'DEF','2018-05-07',222.62,'auto',-1,150),(14,3,'103',13,'DEF','2018-05-07',44.52,'auto',-1,10),(15,4,'202',13,'DEF','2018-05-07',0,'auto',-5,0),(16,5,'102',13,'DEF','2019-01-21',250,'auto',-5,150),(17,3,'102',25,'DEF','2019-01-21',150,'',6,150);
/*!40000 ALTER TABLE `frac_stock_moves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_supp_allocations`
--

LOCK TABLES `frac_supp_allocations` WRITE;
/*!40000 ALTER TABLE `frac_supp_allocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_supp_allocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_supp_invoice_items`
--

LOCK TABLES `frac_supp_invoice_items` WRITE;
/*!40000 ALTER TABLE `frac_supp_invoice_items` DISABLE KEYS */;
INSERT INTO `frac_supp_invoice_items` VALUES (1,1,20,'0',4,4,'101','iPad Air 2 16GB',15,200,10,NULL,0,0),(2,2,20,'0',5,5,'102','iPhone 6 64GB',6,150,7.5,NULL,0,0);
/*!40000 ALTER TABLE `frac_supp_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_supp_trans`
--

LOCK TABLES `frac_supp_trans` WRITE;
/*!40000 ALTER TABLE `frac_supp_trans` DISABLE KEYS */;
INSERT INTO `frac_supp_trans` VALUES (1,20,1,'001/2018','rr4','2018-05-05','2018-05-15',3000,0,150,1,0,0),(2,20,1,'001/2019','asd5','2019-01-21','2019-01-31',900,0,45,1,0,0);
/*!40000 ALTER TABLE `frac_supp_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_suppliers`
--

LOCK TABLES `frac_suppliers` WRITE;
/*!40000 ALTER TABLE `frac_suppliers` DISABLE KEYS */;
INSERT INTO `frac_suppliers` VALUES (1,'Dino Saurius Inc.','Dino Saurius','N/A','','987654321','','','','','USD',3,0,0,0,1,0,'','2100','5060','',0),(2,'Beefeater Ltd.','Beefeater','N/A','','67565590','','','','','GBP',4,0,0,0,1,0,'','2100','5060','',0);
/*!40000 ALTER TABLE `frac_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_sys_prefs`
--

LOCK TABLES `frac_sys_prefs` WRITE;
/*!40000 ALTER TABLE `frac_sys_prefs` DISABLE KEYS */;
INSERT INTO `frac_sys_prefs` VALUES ('accounts_alpha','glsetup.general','tinyint',1,'0'),('accumulate_shipping','glsetup.customer','tinyint',1,'0'),('add_pct','setup.company','int',5,'-1'),('allow_negative_prices','glsetup.inventory','tinyint',1,'1'),('allow_negative_stock','glsetup.inventory','tinyint',1,'0'),('alternative_tax_include_on_docs','setup.company','tinyint',1,'0'),('auto_curr_reval','setup.company','smallint',6,'1'),('bank_charge_act','glsetup.general','varchar',15,'5690'),('barcodes_on_stock','setup.company','tinyint',1,'0'),('base_sales','setup.company','int',11,'1'),('bcc_email','setup.company','varchar',100,''),('company_logo_report','setup.company','tinyint',1,'0'),('coy_logo','setup.company','varchar',100,''),('coy_name','setup.company','varchar',60,'Company name'),('coy_no','setup.company','varchar',25,''),('creditors_act','glsetup.purchase','varchar',15,'2100'),('curr_default','setup.company','char',3,'USD'),('debtors_act','glsetup.sales','varchar',15,'1200'),('default_adj_act','glsetup.items','varchar',15,'5040'),('default_cogs_act','glsetup.items','varchar',15,'5010'),('default_credit_limit','glsetup.customer','int',11,'1000'),('default_delivery_required','glsetup.sales','smallint',6,'1'),('default_dim_required','glsetup.dims','int',11,'20'),('default_inventory_act','glsetup.items','varchar',15,'1510'),('default_inv_sales_act','glsetup.items','varchar',15,'4010'),('default_loss_on_asset_disposal_act','glsetup.items','varchar',15,'5660'),('default_prompt_payment_act','glsetup.sales','varchar',15,'4500'),('default_quote_valid_days','glsetup.sales','smallint',6,'30'),('default_receival_required','glsetup.purchase','smallint',6,'10'),('default_sales_act','glsetup.sales','varchar',15,'4010'),('default_sales_discount_act','glsetup.sales','varchar',15,'4510'),('default_wip_act','glsetup.items','varchar',15,'1530'),('default_workorder_required','glsetup.manuf','int',11,'20'),('deferred_income_act','glsetup.sales','varchar',15,'2105'),('depreciation_period','glsetup.company','tinyint',1,'1'),('domicile','setup.company','varchar',55,''),('email','setup.company','varchar',100,''),('exchange_diff_act','glsetup.general','varchar',15,'4450'),('fax','setup.company','varchar',30,''),('freight_act','glsetup.customer','varchar',15,'4430'),('f_year','setup.company','int',11,'2'),('gl_closing_date','setup.closing_date','date',8,''),('grn_clearing_act','glsetup.purchase','varchar',15,'1550'),('gst_no','setup.company','varchar',25,''),('legal_text','glsetup.customer','tinytext',0,''),('loc_notification','glsetup.inventory','tinyint',1,'0'),('login_tout','setup.company','smallint',6,'600'),('no_customer_list','setup.company','tinyint',1,'0'),('no_item_list','setup.company','tinyint',1,'0'),('no_supplier_list','setup.company','tinyint',1,'0'),('no_zero_lines_amount','glsetup.sales','tinyint',1,'1'),('past_due_days','glsetup.general','int',11,'30'),('phone','setup.company','varchar',30,''),('postal_address','setup.company','tinytext',0,'N/A'),('po_over_charge','glsetup.purchase','int',11,'10'),('po_over_receive','glsetup.purchase','int',11,'10'),('print_dialog_direct','setup.company','tinyint',1,'0'),('print_invoice_no','glsetup.sales','tinyint',1,'0'),('print_item_images_on_quote','glsetup.inventory','tinyint',1,'0'),('profit_loss_year_act','glsetup.general','varchar',15,'9990'),('pyt_discount_act','glsetup.purchase','varchar',15,'5060'),('ref_no_auto_increase','setup.company','tinyint',1,'0'),('retained_earnings_act','glsetup.general','varchar',15,'3590'),('round_to','setup.company','int',5,'1'),('shortname_name_in_list','setup.company','tinyint',1,'0'),('show_po_item_codes','glsetup.purchase','tinyint',1,'0'),('suppress_tax_rates','setup.company','tinyint',1,'0'),('tax_algorithm','glsetup.customer','tinyint',1,'1'),('tax_last','setup.company','int',11,'1'),('tax_prd','setup.company','int',11,'1'),('time_zone','setup.company','tinyint',1,'0'),('use_dimension','setup.company','tinyint',1,'1'),('use_fixed_assets','setup.company','tinyint',1,'1'),('use_manufacturing','setup.company','tinyint',1,'1'),('version_id','system','varchar',11,'2.4.1');
/*!40000 ALTER TABLE `frac_sys_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_tag_associations`
--

LOCK TABLES `frac_tag_associations` WRITE;
/*!40000 ALTER TABLE `frac_tag_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_tag_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_tags`
--

LOCK TABLES `frac_tags` WRITE;
/*!40000 ALTER TABLE `frac_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_tax_group_items`
--

LOCK TABLES `frac_tax_group_items` WRITE;
/*!40000 ALTER TABLE `frac_tax_group_items` DISABLE KEYS */;
INSERT INTO `frac_tax_group_items` VALUES (1,1,1);
/*!40000 ALTER TABLE `frac_tax_group_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_tax_groups`
--

LOCK TABLES `frac_tax_groups` WRITE;
/*!40000 ALTER TABLE `frac_tax_groups` DISABLE KEYS */;
INSERT INTO `frac_tax_groups` VALUES (1,'Tax',0),(2,'Tax Exempt',0);
/*!40000 ALTER TABLE `frac_tax_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_tax_types`
--

LOCK TABLES `frac_tax_types` WRITE;
/*!40000 ALTER TABLE `frac_tax_types` DISABLE KEYS */;
INSERT INTO `frac_tax_types` VALUES (1,5,'2150','2150','Tax',0);
/*!40000 ALTER TABLE `frac_tax_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_trans_tax_details`
--

LOCK TABLES `frac_trans_tax_details` WRITE;
/*!40000 ALTER TABLE `frac_trans_tax_details` DISABLE KEYS */;
INSERT INTO `frac_trans_tax_details` VALUES (1,13,1,'2018-05-10',1,5,1,1,5942.86,297.14,'auto',NULL),(2,10,1,'2018-05-10',1,5,1,1,5942.86,297.14,'001/2018',0),(3,20,1,'2018-05-05',1,5,1,0,3000,150,'rr4',1),(4,13,2,'2018-05-07',1,5,1,1,285.71,14.29,'auto',NULL),(5,10,2,'2018-05-07',1,5,1,1,285.71,14.29,'002/2018',0),(6,13,3,'2018-05-07',0,0,1.123,1,267.14,0,'auto',NULL),(7,10,3,'2018-05-07',0,0,1.123,1,267.14,0,'003/2018',0),(8,13,5,'2019-01-21',1,5,1,1,1190.48,59.52,'auto',NULL),(9,10,5,'2019-01-21',1,5,1,1,1190.48,59.52,'001/2019',0),(10,20,2,'2019-01-21',1,5,1,0,900,45,'asd5',1);
/*!40000 ALTER TABLE `frac_trans_tax_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_useronline`
--

LOCK TABLES `frac_useronline` WRITE;
/*!40000 ALTER TABLE `frac_useronline` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_useronline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_users`
--

LOCK TABLES `frac_users` WRITE;
/*!40000 ALTER TABLE `frac_users` DISABLE KEYS */;
INSERT INTO `frac_users` VALUES (1,'admin','296409b5104724723c460dd8747d348c','Administrator',2,'','piotrowski+ionos.de@prisma.io','en_US',0,0,0,0,'default','Letter',2,2,4,1,1,0,0,'2018-05-07 13:58:33',10,1,1,'1',1,0,'orders',30,0,1,0,0,0);
/*!40000 ALTER TABLE `frac_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_voided`
--

LOCK TABLES `frac_voided` WRITE;
/*!40000 ALTER TABLE `frac_voided` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_voided` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_wo_costing`
--

LOCK TABLES `frac_wo_costing` WRITE;
/*!40000 ALTER TABLE `frac_wo_costing` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_wo_costing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_wo_issue_items`
--

LOCK TABLES `frac_wo_issue_items` WRITE;
/*!40000 ALTER TABLE `frac_wo_issue_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_wo_issue_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_wo_issues`
--

LOCK TABLES `frac_wo_issues` WRITE;
/*!40000 ALTER TABLE `frac_wo_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `frac_wo_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_wo_manufacture`
--

LOCK TABLES `frac_wo_manufacture` WRITE;
/*!40000 ALTER TABLE `frac_wo_manufacture` DISABLE KEYS */;
INSERT INTO `frac_wo_manufacture` VALUES (1,'001/2018',1,2,'2018-05-05');
/*!40000 ALTER TABLE `frac_wo_manufacture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_wo_requirements`
--

LOCK TABLES `frac_wo_requirements` WRITE;
/*!40000 ALTER TABLE `frac_wo_requirements` DISABLE KEYS */;
INSERT INTO `frac_wo_requirements` VALUES (1,1,'101',1,1,200,'DEF',2),(2,1,'102',1,1,150,'DEF',2),(3,1,'103',1,1,10,'DEF',2),(4,1,'301',1,1,0,'DEF',2),(5,2,'101',1,1,200,'DEF',0),(6,2,'102',1,1,150,'DEF',0),(7,2,'103',1,1,10,'DEF',0),(8,2,'301',1,1,0,'DEF',0);
/*!40000 ALTER TABLE `frac_wo_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_workcentres`
--

LOCK TABLES `frac_workcentres` WRITE;
/*!40000 ALTER TABLE `frac_workcentres` DISABLE KEYS */;
INSERT INTO `frac_workcentres` VALUES (1,'Work Centre','',0);
/*!40000 ALTER TABLE `frac_workcentres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `frac_workorders`
--

LOCK TABLES `frac_workorders` WRITE;
/*!40000 ALTER TABLE `frac_workorders` DISABLE KEYS */;
INSERT INTO `frac_workorders` VALUES (1,'001/2018','DEF',2,'201','2018-05-05',0,'2018-05-05','2018-05-05',2,1,1,0),(2,'002/2018','DEF',5,'201','2018-05-07',2,'2018-05-27','2018-05-07',0,0,1,0),(3,'003/2018','DEF',5,'201','2018-05-07',2,'2018-05-27','0000-00-00',0,0,0,0);
/*!40000 ALTER TABLE `frac_workorders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10 19:29:08
