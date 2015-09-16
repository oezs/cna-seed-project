-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: zurmo
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `__role_children_cache`
--

DROP TABLE IF EXISTS `__role_children_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__role_children_cache` (
  `permitable_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permitable_id`,`role_id`),
  UNIQUE KEY `permitable_id` (`permitable_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__role_children_cache`
--

LOCK TABLES `__role_children_cache` WRITE;
/*!40000 ALTER TABLE `__role_children_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `__role_children_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_group`
--

DROP TABLE IF EXISTS `_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permitable_id` int(11) unsigned DEFAULT NULL,
  `_group_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_eman` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_group`
--

LOCK TABLES `_group` WRITE;
/*!40000 ALTER TABLE `_group` DISABLE KEYS */;
INSERT INTO `_group` VALUES (1,'Super Administrators',2,NULL),(2,'Everyone',3,NULL);
/*!40000 ALTER TABLE `_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_group__user`
--

DROP TABLE IF EXISTS `_group__user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_group__user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_group_id` int(11) unsigned DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_resu__di_puorg_` (`_group_id`,`_user_id`),
  KEY `di_puorg_` (`_group_id`),
  KEY `di_resu_` (`_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_group__user`
--

LOCK TABLES `_group__user` WRITE;
/*!40000 ALTER TABLE `_group__user` DISABLE KEYS */;
INSERT INTO `_group__user` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `_group__user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_right`
--

DROP TABLE IF EXISTS `_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_right` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `modulename` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(11) DEFAULT NULL,
  `permitable_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_right`
--

LOCK TABLES `_right` WRITE;
/*!40000 ALTER TABLE `_right` DISABLE KEYS */;
INSERT INTO `_right` VALUES (1,'UsersModule','Login Via Web',1,3),(2,'UsersModule','Login Via Mobile',1,3),(3,'UsersModule','Login Via Web API',1,3),(4,'AccountsModule','Access Accounts Tab',1,3),(5,'AccountsModule','Create Accounts',1,3),(6,'AccountsModule','Delete Accounts',1,3),(7,'CampaignsModule','Access Campaigns Tab',1,3),(8,'CampaignsModule','Create Campaigns',1,3),(9,'CampaignsModule','Delete Campaigns',1,3),(10,'ContactsModule','Access Contacts Tab',1,3),(11,'ContactsModule','Create Contacts',1,3),(12,'ContactsModule','Delete Contacts',1,3),(13,'ConversationsModule','Access Conversations Tab',1,3),(14,'ConversationsModule','Create Conversations',1,3),(15,'ConversationsModule','Delete Conversations',1,3),(16,'EmailMessagesModule','Access Emails Tab',1,3),(17,'EmailMessagesModule','Create Emails',1,3),(18,'EmailMessagesModule','Delete Emails',1,3),(19,'EmailTemplatesModule','Access Email Templates',1,3),(20,'EmailTemplatesModule','Create Email Templates',1,3),(21,'EmailTemplatesModule','Delete Email Templates',1,3),(22,'LeadsModule','Access Leads Tab',1,3),(23,'LeadsModule','Create Leads',1,3),(24,'LeadsModule','Delete Leads',1,3),(25,'LeadsModule','Convert Leads',1,3),(26,'OpportunitiesModule','Access Opportunities Tab',1,3),(27,'OpportunitiesModule','Create Opportunities',1,3),(28,'OpportunitiesModule','Delete Opportunities',1,3),(29,'MarketingModule','Access Marketing Tab',1,3),(30,'MarketingListsModule','Access Marketing Lists Tab',1,3),(31,'MarketingListsModule','Create Marketing Lists',1,3),(32,'MarketingListsModule','Delete Marketing Lists',1,3),(33,'MeetingsModule','Access Meetings',1,3),(34,'MeetingsModule','Create Meetings',1,3),(35,'MeetingsModule','Delete Meetings',1,3),(36,'MissionsModule','Access Missions Tab',1,3),(37,'MissionsModule','Create Missions',1,3),(38,'MissionsModule','Delete Missions',1,3),(39,'NotesModule','Access Notes',1,3),(40,'NotesModule','Create Notes',1,3),(41,'NotesModule','Delete Notes',1,3),(42,'ReportsModule','Access Reports Tab',1,3),(43,'ReportsModule','Create Reports',1,3),(44,'ReportsModule','Delete Reports',1,3),(45,'TasksModule','Access Tasks',1,3),(46,'TasksModule','Create Tasks',1,3),(47,'TasksModule','Delete Tasks',1,3),(48,'HomeModule','Access Dashboards',1,3),(49,'HomeModule','Create Dashboards',1,3),(50,'HomeModule','Delete Dashboards',1,3),(51,'ExportModule','Access Export Tool',1,3),(52,'SocialItemsModule','Access Social Items',1,3),(53,'ProductsModule','Access Products Tab',1,3),(54,'ProductsModule','Create Products',1,3),(55,'ProductsModule','Delete Products',1,3),(56,'ProductTemplatesModule','Access Catalog Items Tab',1,3),(57,'ProductTemplatesModule','Create Catalog Items',1,3),(58,'ProductTemplatesModule','Delete Catalog Items',1,3),(59,'ProjectsModule','Access Projects Tab',1,3),(60,'ProjectsModule','Create Projects',1,3),(61,'ProjectsModule','Delete Projects',1,3),(62,'CalendarsModule','Access Calandar Tab',1,3),(63,'CalendarsModule','Create Calendar',1,3),(64,'CalendarsModule','Delete Calendar',1,3),(65,'UsersModule','Login Via Mobile',2,4),(66,'UsersModule','Login Via Web',2,4),(67,'UsersModule','Login Via Web API',2,4);
/*!40000 ALTER TABLE `_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_user`
--

DROP TABLE IF EXISTS `_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializedavatardata` text COLLATE utf8_unicode_ci,
  `isactive` tinyint(1) unsigned DEFAULT NULL,
  `isrootuser` tinyint(1) unsigned DEFAULT NULL,
  `hidefromselecting` tinyint(1) unsigned DEFAULT NULL,
  `issystemuser` tinyint(1) unsigned DEFAULT NULL,
  `hidefromleaderboard` tinyint(1) unsigned DEFAULT NULL,
  `lastlogindatetime` datetime DEFAULT NULL,
  `permitable_id` int(11) unsigned DEFAULT NULL,
  `person_id` int(11) unsigned DEFAULT NULL,
  `currency_id` int(11) unsigned DEFAULT NULL,
  `manager__user_id` int(11) unsigned DEFAULT NULL,
  `role_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_emanresu` (`username`),
  KEY `permitable_id` (`permitable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_user`
--

LOCK TABLES `_user` WRITE;
/*!40000 ALTER TABLE `_user` DISABLE KEYS */;
INSERT INTO `_user` VALUES (1,'$2y$12$.OlWd15wc5xIagBoSzg.EOvK8vf6k2vKUvcqrPtw5D4rGbwzQVwFy',NULL,NULL,'America/Chicago','super',NULL,1,1,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL),(2,'$2y$12$NSqDrVVbXkrGUOBGS.t.I.TMuimuotMu36IFdaXJCyirTurorGT7K',NULL,NULL,'America/Chicago','backendjoboractionuser',NULL,0,NULL,1,1,1,NULL,4,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_user_meeting`
--

DROP TABLE IF EXISTS `_user_meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_user_meeting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) unsigned DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_resu__di_gniteem` (`meeting_id`,`_user_id`),
  KEY `di_gniteem` (`meeting_id`),
  KEY `di_resu_` (`_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_user_meeting`
--

LOCK TABLES `_user_meeting` WRITE;
/*!40000 ALTER TABLE `_user_meeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `_user_meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `annualrevenue` double DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `employees` int(11) DEFAULT NULL,
  `latestactivitydatetime` datetime DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officephone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officefax` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `billingaddress_address_id` int(11) unsigned DEFAULT NULL,
  `industry_customfield_id` int(11) unsigned DEFAULT NULL,
  `primaryemail_email_id` int(11) unsigned DEFAULT NULL,
  `secondaryemail_email_id` int(11) unsigned DEFAULT NULL,
  `shippingaddress_address_id` int(11) unsigned DEFAULT NULL,
  `type_customfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_project`
--

DROP TABLE IF EXISTS `account_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned DEFAULT NULL,
  `project_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_tcejorp_di_tnuocca` (`account_id`,`project_id`),
  KEY `di_tnuocca` (`account_id`),
  KEY `di_tcejorp` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_project`
--

LOCK TABLES `account_project` WRITE;
/*!40000 ALTER TABLE `account_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_read`
--

DROP TABLE IF EXISTS `account_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `account_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_read`
--

LOCK TABLES `account_read` WRITE;
/*!40000 ALTER TABLE `account_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_read_subscription`
--

DROP TABLE IF EXISTS `account_read_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_read_subscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `modelid` int(11) unsigned NOT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `subscriptiontype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_modelid` (`userid`,`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_read_subscription`
--

LOCK TABLES `account_read_subscription` WRITE;
/*!40000 ALTER TABLE `account_read_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_read_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_read_subscription_temp_build`
--

DROP TABLE IF EXISTS `account_read_subscription_temp_build`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_read_subscription_temp_build` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_read_subscription_temp_build`
--

LOCK TABLES `account_read_subscription_temp_build` WRITE;
/*!40000 ALTER TABLE `account_read_subscription_temp_build` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_read_subscription_temp_build` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountaccountaffiliation`
--

DROP TABLE IF EXISTS `accountaccountaffiliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountaccountaffiliation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned DEFAULT NULL,
  `primaryaccountaffiliation_account_id` int(11) unsigned DEFAULT NULL,
  `secondaryaccountaffiliation_account_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountaccountaffiliation`
--

LOCK TABLES `accountaccountaffiliation` WRITE;
/*!40000 ALTER TABLE `accountaccountaffiliation` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountaccountaffiliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountcontactaffiliation`
--

DROP TABLE IF EXISTS `accountcontactaffiliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountcontactaffiliation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `primary` tinyint(1) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `role_customfield_id` int(11) unsigned DEFAULT NULL,
  `accountaffiliation_account_id` int(11) unsigned DEFAULT NULL,
  `contactaffiliation_contact_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountcontactaffiliation`
--

LOCK TABLES `accountcontactaffiliation` WRITE;
/*!40000 ALTER TABLE `accountcontactaffiliation` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountcontactaffiliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountstarred`
--

DROP TABLE IF EXISTS `accountstarred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountstarred` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `basestarredmodel_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `basestarredmodel_id_account_id` (`basestarredmodel_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountstarred`
--

LOCK TABLES `accountstarred` WRITE;
/*!40000 ALTER TABLE `accountstarred` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountstarred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activelanguage`
--

DROP TABLE IF EXISTS `activelanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activelanguage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nativename` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activationdatetime` datetime DEFAULT NULL,
  `lastupdatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activelanguage`
--

LOCK TABLES `activelanguage` WRITE;
/*!40000 ALTER TABLE `activelanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `activelanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `latestdatetime` datetime DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_item`
--

DROP TABLE IF EXISTS `activity_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_meti_di_ytivitca` (`activity_id`,`item_id`),
  KEY `di_ytivitca` (`activity_id`),
  KEY `di_meti` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_item`
--

LOCK TABLES `activity_item` WRITE;
/*!40000 ALTER TABLE `activity_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actual_permissions_cache`
--

DROP TABLE IF EXISTS `actual_permissions_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actual_permissions_cache` (
  `securableitem_id` int(11) unsigned NOT NULL,
  `permitable_id` int(11) unsigned NOT NULL,
  `allow_permissions` tinyint(3) unsigned NOT NULL,
  `deny_permissions` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`securableitem_id`,`permitable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actual_permissions_cache`
--

LOCK TABLES `actual_permissions_cache` WRITE;
/*!40000 ALTER TABLE `actual_permissions_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `actual_permissions_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actual_rights_cache`
--

DROP TABLE IF EXISTS `actual_rights_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actual_rights_cache` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry` int(11) unsigned NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actual_rights_cache`
--

LOCK TABLES `actual_rights_cache` WRITE;
/*!40000 ALTER TABLE `actual_rights_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `actual_rights_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) unsigned DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `postalcode` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditevent`
--

DROP TABLE IF EXISTS `auditevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditevent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL,
  `eventname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modulename` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modelclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modelid` int(11) DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditevent`
--

LOCK TABLES `auditevent` WRITE;
/*!40000 ALTER TABLE `auditevent` DISABLE KEYS */;
INSERT INTO `auditevent` VALUES (1,'2015-03-04 10:32:47','Item Created','ZurmoModule','User',1,'s:10:\"Super User\";',1),(2,'2015-03-04 10:32:47','User Password Changed','UsersModule','User',1,'s:5:\"super\";',1),(3,'2015-03-04 10:32:47','Item Modified','ZurmoModule','User',1,'a:4:{i:0;s:10:\"Super User\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(4,'2015-03-04 10:32:47','Item Created','ZurmoModule','Group',1,'s:20:\"Super Administrators\";',1),(5,'2015-03-04 10:32:47','Item Created','ZurmoModule','ImageFileModel',1,'s:10:\"200x50.gif\";',1),(6,'2015-03-04 10:32:47','Item Created','ZurmoModule','ImageFileModel',2,'s:11:\"200x200.gif\";',1),(7,'2015-03-04 10:32:47','Item Created','ZurmoModule','ImageFileModel',3,'s:11:\"580x180.gif\";',1),(8,'2015-03-04 10:32:47','Item Created','ZurmoModule','ImageFileModel',4,'s:14:\"googleMaps.png\";',1),(9,'2015-03-04 10:32:48','Item Created','ZurmoModule','Group',2,'s:8:\"Everyone\";',1),(10,'2015-03-04 10:32:48','Item Created','ZurmoModule','EmailTemplate',1,'s:5:\"Blank\";',1),(11,'2015-03-04 10:32:48','Item Created','ZurmoModule','EmailTemplate',2,'s:8:\"1 Column\";',1),(12,'2015-03-04 10:32:48','Item Created','ZurmoModule','EmailTemplate',3,'s:9:\"2 Columns\";',1),(13,'2015-03-04 10:32:48','Item Created','ZurmoModule','EmailTemplate',4,'s:27:\"2 Columns with strong right\";',1),(14,'2015-03-04 10:32:49','Item Created','ZurmoModule','EmailTemplate',5,'s:9:\"3 Columns\";',1),(15,'2015-03-04 10:32:49','Item Created','ZurmoModule','EmailTemplate',6,'s:19:\"3 Columns with Hero\";',1),(16,'2015-03-04 10:32:52','Item Created','ZurmoModule','User',2,'s:11:\"System User\";',1),(17,'2015-03-04 10:32:52','User Password Changed','UsersModule','User',2,'s:22:\"backendjoboractionuser\";',1),(18,'2015-03-04 10:32:52','Item Modified','ZurmoModule','User',2,'a:4:{i:0;s:11:\"System User\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(19,'2015-03-04 10:32:52','Item Modified','ZurmoModule','User',2,'a:4:{i:0;s:11:\"System User\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:4:\"true\";i:3;s:5:\"false\";}',1),(20,'2015-03-04 10:32:52','Item Created','ZurmoModule','NotificationMessage',1,'s:6:\"(None)\";',1),(21,'2015-03-04 10:32:52','Item Created','ZurmoModule','Notification',1,'s:52:\"Remove the api test entry script for production use.\";',1);
/*!40000 ALTER TABLE `auditevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoresponder`
--

DROP TABLE IF EXISTS `autoresponder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoresponder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `textcontent` text COLLATE utf8_unicode_ci,
  `fromoperationdurationinterval` int(11) DEFAULT NULL,
  `fromoperationdurationtype` text COLLATE utf8_unicode_ci,
  `operationtype` int(11) DEFAULT NULL,
  `enabletracking` tinyint(1) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `marketinglist_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoresponder`
--

LOCK TABLES `autoresponder` WRITE;
/*!40000 ALTER TABLE `autoresponder` DISABLE KEYS */;
/*!40000 ALTER TABLE `autoresponder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoresponderitem`
--

DROP TABLE IF EXISTS `autoresponderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoresponderitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `processdatetime` datetime DEFAULT NULL,
  `processed` tinyint(1) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `emailmessage_id` int(11) unsigned DEFAULT NULL,
  `autoresponder_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoresponderitem`
--

LOCK TABLES `autoresponderitem` WRITE;
/*!40000 ALTER TABLE `autoresponderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `autoresponderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoresponderitemactivity`
--

DROP TABLE IF EXISTS `autoresponderitemactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoresponderitemactivity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emailmessageactivity_id` int(11) unsigned DEFAULT NULL,
  `autoresponderitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emailmessageactivity_id_autoresponderitem_id` (`emailmessageactivity_id`,`autoresponderitem_id`),
  KEY `emailmessageactivity_id` (`emailmessageactivity_id`),
  KEY `autoresponderitem_id` (`autoresponderitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoresponderitemactivity`
--

LOCK TABLES `autoresponderitemactivity` WRITE;
/*!40000 ALTER TABLE `autoresponderitemactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `autoresponderitemactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basecustomfield`
--

DROP TABLE IF EXISTS `basecustomfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basecustomfield` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data_customfielddata_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basecustomfield`
--

LOCK TABLES `basecustomfield` WRITE;
/*!40000 ALTER TABLE `basecustomfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `basecustomfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basestarredmodel`
--

DROP TABLE IF EXISTS `basestarredmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basestarredmodel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basestarredmodel`
--

LOCK TABLES `basestarredmodel` WRITE;
/*!40000 ALTER TABLE `basestarredmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `basestarredmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bytimeworkflowinqueue`
--

DROP TABLE IF EXISTS `bytimeworkflowinqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bytimeworkflowinqueue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `modelclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processdatetime` datetime DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `modelitem_item_id` int(11) unsigned DEFAULT NULL,
  `savedworkflow_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bytimeworkflowinqueue`
--

LOCK TABLES `bytimeworkflowinqueue` WRITE;
/*!40000 ALTER TABLE `bytimeworkflowinqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `bytimeworkflowinqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calculatedderivedattributemetadata`
--

DROP TABLE IF EXISTS `calculatedderivedattributemetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calculatedderivedattributemetadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `derivedattributemetadata_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calculatedderivedattributemetadata`
--

LOCK TABLES `calculatedderivedattributemetadata` WRITE;
/*!40000 ALTER TABLE `calculatedderivedattributemetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `calculatedderivedattributemetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `supportsrichtext` tinyint(1) unsigned DEFAULT NULL,
  `sendondatetime` datetime DEFAULT NULL,
  `fromname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromaddress` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `textcontent` text COLLATE utf8_unicode_ci,
  `enabletracking` tinyint(1) unsigned DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `marketinglist_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_read`
--

DROP TABLE IF EXISTS `campaign_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `campaign_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_read`
--

LOCK TABLES `campaign_read` WRITE;
/*!40000 ALTER TABLE `campaign_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaignitem`
--

DROP TABLE IF EXISTS `campaignitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaignitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `processed` tinyint(1) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `emailmessage_id` int(11) unsigned DEFAULT NULL,
  `campaign_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`),
  KEY `contact_id` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaignitem`
--

LOCK TABLES `campaignitem` WRITE;
/*!40000 ALTER TABLE `campaignitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaignitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaignitemactivity`
--

DROP TABLE IF EXISTS `campaignitemactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaignitemactivity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emailmessageactivity_id` int(11) unsigned DEFAULT NULL,
  `campaignitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emailmessageactivity_id_campaignitem_id` (`emailmessageactivity_id`,`campaignitem_id`),
  KEY `emailmessageactivity_id` (`emailmessageactivity_id`),
  KEY `campaignitem_id` (`campaignitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaignitemactivity`
--

LOCK TABLES `campaignitemactivity` WRITE;
/*!40000 ALTER TABLE `campaignitemactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaignitemactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  `relatedmodel_id` int(11) unsigned DEFAULT NULL,
  `relatedmodel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `companyname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `latestactivitydatetime` datetime DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googlewebtrackingid` text COLLATE utf8_unicode_ci,
  `person_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `industry_customfield_id` int(11) unsigned DEFAULT NULL,
  `secondaryaddress_address_id` int(11) unsigned DEFAULT NULL,
  `secondaryemail_email_id` int(11) unsigned DEFAULT NULL,
  `source_customfield_id` int(11) unsigned DEFAULT NULL,
  `state_contactstate_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_opportunity`
--

DROP TABLE IF EXISTS `contact_opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_opportunity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `opportunity_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_ytinutroppo_di_tcatnoc` (`contact_id`,`opportunity_id`),
  KEY `di_tcatnoc` (`contact_id`),
  KEY `di_ytinutroppo` (`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_opportunity`
--

LOCK TABLES `contact_opportunity` WRITE;
/*!40000 ALTER TABLE `contact_opportunity` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_opportunity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_project`
--

DROP TABLE IF EXISTS `contact_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `project_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_tcejorp_di_tcatnoc` (`contact_id`,`project_id`),
  KEY `di_tcatnoc` (`contact_id`),
  KEY `di_tcejorp` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_project`
--

LOCK TABLES `contact_project` WRITE;
/*!40000 ALTER TABLE `contact_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_read`
--

DROP TABLE IF EXISTS `contact_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `contact_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_read`
--

LOCK TABLES `contact_read` WRITE;
/*!40000 ALTER TABLE `contact_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_read_subscription`
--

DROP TABLE IF EXISTS `contact_read_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_read_subscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `modelid` int(11) unsigned NOT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `subscriptiontype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_modelid` (`userid`,`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_read_subscription`
--

LOCK TABLES `contact_read_subscription` WRITE;
/*!40000 ALTER TABLE `contact_read_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_read_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactstarred`
--

DROP TABLE IF EXISTS `contactstarred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactstarred` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `basestarredmodel_id` int(11) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `basestarredmodel_id_contact_id` (`basestarredmodel_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactstarred`
--

LOCK TABLES `contactstarred` WRITE;
/*!40000 ALTER TABLE `contactstarred` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactstarred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactstate`
--

DROP TABLE IF EXISTS `contactstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactstate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `serializedlabels` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactstate`
--

LOCK TABLES `contactstate` WRITE;
/*!40000 ALTER TABLE `contactstate` DISABLE KEYS */;
INSERT INTO `contactstate` VALUES (1,'New',0,NULL),(2,'In Progress',1,NULL),(3,'Recycled',2,NULL),(4,'Dead',3,NULL),(5,'Qualified',4,NULL),(6,'Customer',5,NULL);
/*!40000 ALTER TABLE `contactstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactwebform`
--

DROP TABLE IF EXISTS `contactwebform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactwebform` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `redirecturl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitbuttonlabel` text COLLATE utf8_unicode_ci,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `excludestyles` tinyint(1) unsigned DEFAULT NULL,
  `enablecaptcha` tinyint(1) unsigned DEFAULT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defaultpermissionsetting` tinyint(11) DEFAULT NULL,
  `defaultpermissiongroupsetting` int(11) DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `defaultstate_contactstate_id` int(11) unsigned DEFAULT NULL,
  `defaultowner__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactwebform`
--

LOCK TABLES `contactwebform` WRITE;
/*!40000 ALTER TABLE `contactwebform` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactwebform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactwebform_read`
--

DROP TABLE IF EXISTS `contactwebform_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactwebform_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `contactwebform_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactwebform_read`
--

LOCK TABLES `contactwebform_read` WRITE;
/*!40000 ALTER TABLE `contactwebform_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactwebform_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactwebformentry`
--

DROP TABLE IF EXISTS `contactwebformentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactwebformentry` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `hashindex` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `entries_contactwebform_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactwebformentry`
--

LOCK TABLES `contactwebformentry` WRITE;
/*!40000 ALTER TABLE `contactwebformentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactwebformentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `latestdatetime` datetime DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerhasreadlatest` tinyint(1) unsigned DEFAULT NULL,
  `isclosed` tinyint(1) unsigned DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation`
--

LOCK TABLES `conversation` WRITE;
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_item`
--

DROP TABLE IF EXISTS `conversation_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_meti_di_noitasrevnoc` (`conversation_id`,`item_id`),
  KEY `di_noitasrevnoc` (`conversation_id`),
  KEY `di_meti` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_item`
--

LOCK TABLES `conversation_item` WRITE;
/*!40000 ALTER TABLE `conversation_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_read`
--

DROP TABLE IF EXISTS `conversation_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `conversation_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_read`
--

LOCK TABLES `conversation_read` WRITE;
/*!40000 ALTER TABLE `conversation_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationparticipant`
--

DROP TABLE IF EXISTS `conversationparticipant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationparticipant` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hasreadlatest` tinyint(1) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  `conversation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationparticipant`
--

LOCK TABLES `conversationparticipant` WRITE;
/*!40000 ALTER TABLE `conversationparticipant` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationparticipant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationstarred`
--

DROP TABLE IF EXISTS `conversationstarred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationstarred` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `basestarredmodel_id` int(11) unsigned DEFAULT NULL,
  `conversation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `basestarredmodel_id_conversation_id` (`basestarredmodel_id`,`conversation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationstarred`
--

LOCK TABLES `conversationstarred` WRITE;
/*!40000 ALTER TABLE `conversationstarred` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationstarred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ratetobase` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_edoc` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,1,'USD',1);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencyvalue`
--

DROP TABLE IF EXISTS `currencyvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencyvalue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ratetobase` double DEFAULT NULL,
  `value` double DEFAULT NULL,
  `currency_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencyvalue`
--

LOCK TABLES `currencyvalue` WRITE;
/*!40000 ALTER TABLE `currencyvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencyvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfield`
--

DROP TABLE IF EXISTS `customfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfield` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8_unicode_ci,
  `basecustomfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfield`
--

LOCK TABLES `customfield` WRITE;
/*!40000 ALTER TABLE `customfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfielddata`
--

DROP TABLE IF EXISTS `customfielddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfielddata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defaultvalue` text COLLATE utf8_unicode_ci,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `serializedlabels` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_eman` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfielddata`
--

LOCK TABLES `customfielddata` WRITE;
/*!40000 ALTER TABLE `customfielddata` DISABLE KEYS */;
INSERT INTO `customfielddata` VALUES (1,'AccountContactAffiliationRoles',NULL,'a:6:{i:0;s:7:\"Billing\";i:1;s:8:\"Shipping\";i:2;s:7:\"Support\";i:3;s:9:\"Technical\";i:4;s:14:\"Administrative\";i:5;s:15:\"Project Manager\";}',NULL),(2,'Industries',NULL,'a:9:{i:0;s:10:\"Automotive\";i:1;s:7:\"Banking\";i:2;s:17:\"Business Services\";i:3;s:6:\"Energy\";i:4;s:18:\"Financial Services\";i:5;s:9:\"Insurance\";i:6;s:13:\"Manufacturing\";i:7;s:6:\"Retail\";i:8;s:10:\"Technology\";}',NULL),(3,'AccountTypes',NULL,'a:3:{i:0;s:8:\"Prospect\";i:1;s:8:\"Customer\";i:2;s:6:\"Vendor\";}',NULL),(4,'LeadSources',NULL,'a:4:{i:0;s:14:\"Self-Generated\";i:1;s:12:\"Inbound Call\";i:2;s:9:\"Tradeshow\";i:3;s:13:\"Word of Mouth\";}',NULL),(5,'MeetingCategories','Meeting','a:2:{i:0;s:7:\"Meeting\";i:1;s:4:\"Call\";}',NULL),(6,'SalesStages','Prospecting','a:6:{i:0;s:11:\"Prospecting\";i:1;s:13:\"Qualification\";i:2;s:11:\"Negotiating\";i:3;s:6:\"Verbal\";i:4;s:10:\"Closed Won\";i:5;s:11:\"Closed Lost\";}',NULL),(7,'ProductStages',NULL,'a:3:{i:0;s:4:\"Open\";i:1;s:4:\"Lost\";i:2;s:3:\"Won\";}',NULL),(8,'Titles',NULL,'a:4:{i:0;s:3:\"Mr.\";i:1;s:4:\"Mrs.\";i:2;s:3:\"Ms.\";i:3;s:3:\"Dr.\";}',NULL);
/*!40000 ALTER TABLE `customfielddata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfieldvalue`
--

DROP TABLE IF EXISTS `customfieldvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfieldvalue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multiplevaluescustomfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `multiplevaluescustomfield_id` (`multiplevaluescustomfield_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfieldvalue`
--

LOCK TABLES `customfieldvalue` WRITE;
/*!40000 ALTER TABLE `customfieldvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfieldvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isdefault` tinyint(1) unsigned DEFAULT NULL,
  `layoutid` int(11) DEFAULT NULL,
  `layouttype` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `derivedattributemetadata`
--

DROP TABLE IF EXISTS `derivedattributemetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `derivedattributemetadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modelclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializedmetadata` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `derivedattributemetadata`
--

LOCK TABLES `derivedattributemetadata` WRITE;
/*!40000 ALTER TABLE `derivedattributemetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `derivedattributemetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropdowndependencyderivedattributemetadata`
--

DROP TABLE IF EXISTS `dropdowndependencyderivedattributemetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dropdowndependencyderivedattributemetadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `derivedattributemetadata_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropdowndependencyderivedattributemetadata`
--

LOCK TABLES `dropdowndependencyderivedattributemetadata` WRITE;
/*!40000 ALTER TABLE `dropdowndependencyderivedattributemetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `dropdowndependencyderivedattributemetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emailaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isinvalid` tinyint(1) unsigned DEFAULT NULL,
  `optout` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailaccount`
--

DROP TABLE IF EXISTS `emailaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailaccount` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `replytoname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundhost` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundusername` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundpassword` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundsecurity` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundtype` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundport` int(11) DEFAULT NULL,
  `usecustomoutboundsettings` tinyint(1) unsigned DEFAULT NULL,
  `replytoaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailaccount`
--

LOCK TABLES `emailaccount` WRITE;
/*!40000 ALTER TABLE `emailaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailbox`
--

DROP TABLE IF EXISTS `emailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailbox`
--

LOCK TABLES `emailbox` WRITE;
/*!40000 ALTER TABLE `emailbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailfolder`
--

DROP TABLE IF EXISTS `emailfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailfolder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `emailbox_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailfolder`
--

LOCK TABLES `emailfolder` WRITE;
/*!40000 ALTER TABLE `emailfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessage`
--

DROP TABLE IF EXISTS `emailmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendattempts` int(11) DEFAULT NULL,
  `sentdatetime` datetime DEFAULT NULL,
  `sendondatetime` datetime DEFAULT NULL,
  `headers` text COLLATE utf8_unicode_ci,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `folder_emailfolder_id` int(11) unsigned DEFAULT NULL,
  `content_emailmessagecontent_id` int(11) unsigned DEFAULT NULL,
  `sender_emailmessagesender_id` int(11) unsigned DEFAULT NULL,
  `error_emailmessagesenderror_id` int(11) unsigned DEFAULT NULL,
  `account_emailaccount_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessage`
--

LOCK TABLES `emailmessage` WRITE;
/*!40000 ALTER TABLE `emailmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessage_read`
--

DROP TABLE IF EXISTS `emailmessage_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessage_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `emailmessage_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessage_read`
--

LOCK TABLES `emailmessage_read` WRITE;
/*!40000 ALTER TABLE `emailmessage_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessage_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessageactivity`
--

DROP TABLE IF EXISTS `emailmessageactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessageactivity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `latestdatetime` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `latestsourceip` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_id` int(11) unsigned DEFAULT NULL,
  `emailmessageurl_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessageactivity`
--

LOCK TABLES `emailmessageactivity` WRITE;
/*!40000 ALTER TABLE `emailmessageactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessageactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagecontent`
--

DROP TABLE IF EXISTS `emailmessagecontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagecontent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `textcontent` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagecontent`
--

LOCK TABLES `emailmessagecontent` WRITE;
/*!40000 ALTER TABLE `emailmessagecontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessagecontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagerecipient`
--

DROP TABLE IF EXISTS `emailmessagerecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagerecipient` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `toaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `toname` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `emailmessage_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `remailmessage` (`emailmessage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagerecipient`
--

LOCK TABLES `emailmessagerecipient` WRITE;
/*!40000 ALTER TABLE `emailmessagerecipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessagerecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagerecipient_item`
--

DROP TABLE IF EXISTS `emailmessagerecipient_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagerecipient_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emailmessagerecipient_id` int(11) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_meti_di_tneipiceregassemliame` (`emailmessagerecipient_id`,`item_id`),
  KEY `di_tneipiceregassemliame` (`emailmessagerecipient_id`),
  KEY `di_meti` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagerecipient_item`
--

LOCK TABLES `emailmessagerecipient_item` WRITE;
/*!40000 ALTER TABLE `emailmessagerecipient_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessagerecipient_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagesender`
--

DROP TABLE IF EXISTS `emailmessagesender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagesender` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromname` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagesender`
--

LOCK TABLES `emailmessagesender` WRITE;
/*!40000 ALTER TABLE `emailmessagesender` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessagesender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagesender_item`
--

DROP TABLE IF EXISTS `emailmessagesender_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagesender_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emailmessagesender_id` int(11) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_meti_di_rednesegassemliame` (`emailmessagesender_id`,`item_id`),
  KEY `di_rednesegassemliame` (`emailmessagesender_id`),
  KEY `di_meti` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagesender_item`
--

LOCK TABLES `emailmessagesender_item` WRITE;
/*!40000 ALTER TABLE `emailmessagesender_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessagesender_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagesenderror`
--

DROP TABLE IF EXISTS `emailmessagesenderror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagesenderror` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `createddatetime` datetime DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagesenderror`
--

LOCK TABLES `emailmessagesenderror` WRITE;
/*!40000 ALTER TABLE `emailmessagesenderror` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessagesenderror` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessageurl`
--

DROP TABLE IF EXISTS `emailmessageurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessageurl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailmessageactivity_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessageurl`
--

LOCK TABLES `emailmessageurl` WRITE;
/*!40000 ALTER TABLE `emailmessageurl` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessageurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailsignature`
--

DROP TABLE IF EXISTS `emailsignature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailsignature` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `textcontent` text COLLATE utf8_unicode_ci,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailsignature`
--

LOCK TABLES `emailsignature` WRITE;
/*!40000 ALTER TABLE `emailsignature` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailsignature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailtemplate`
--

DROP TABLE IF EXISTS `emailtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailtemplate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `isdraft` tinyint(1) unsigned DEFAULT NULL,
  `builttype` int(11) DEFAULT NULL,
  `modelclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `textcontent` text COLLATE utf8_unicode_ci,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `isfeatured` tinyint(1) unsigned DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailtemplate`
--

LOCK TABLES `emailtemplate` WRITE;
/*!40000 ALTER TABLE `emailtemplate` DISABLE KEYS */;
INSERT INTO `emailtemplate` VALUES (1,NULL,0,3,NULL,'Blank','Blank','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-0\",\"dom\":{\"canvas1\":{\"content\":{\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":[],\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1\"}},\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#ffffff\",\"color\":\"#545454\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,1),(2,NULL,0,3,NULL,'1 Column','1 Column','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-5\",\"dom\":{\"canvas1\":{\"content\":{\"builderheaderimagetextelement_1393965594_53163a1a0eb53\":{\"content\":{\"buildercolumnelement_1393965594_53163a1a0ef48\":{\"content\":{\"builderimageelement_1393965594_53163a1a0ee52\":{\"content\":{\"image\":1},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1393965594_53163a1a145cc\":{\"content\":{\"builderheadertextelement_1393965594_53163a1a14515\":{\"content\":{\"text\":\"Acme Inc. Newsletter\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"right\"}}},\"class\":\"BuilderHeaderTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\",\"header\":\"1\"},\"frontend\":{\"inlineStyles\":{\"background-color\":\"#282a76\"}}},\"class\":\"BuilderHeaderImageTextElement\"},\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":{\"buildertitleelement_1393965668_53163a6447762\":{\"content\":{\"text\":\"Hello there William S...\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#666666\",\"font-size\":\"24\",\"font-weight\":\"bold\",\"text-align\":\"center\"}}},\"class\":\"BuilderTitleElement\"},\"builderimageelement_1393970522_53164d5a3787a\":{\"content\":{\"image\":3},\"properties\":[],\"class\":\"BuilderImageElement\"},\"builderexpanderelement_1393970557_53164d7d2881e\":{\"content\":[],\"properties\":{\"frontend\":{\"height\":\"10\"}},\"class\":\"BuilderExpanderElement\"},\"buildertextelement_1393965781_53163ad53b77c\":{\"content\":{\"text\":\"\\n<p>\\n    Orsino, the <i>Duke of Illyria<\\/i>, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that <b>Olivia<\\/b> plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\\n<\\/p>\\n\"},\"properties\":[],\"class\":\"BuilderTextElement\"},\"builderbuttonelement_1393965942_53163b76e666c\":{\"content\":[],\"properties\":{\"backend\":{\"text\":\"Call Me\",\"sizeClass\":\"medium-button\",\"align\":\"left\"},\"frontend\":{\"href\":\"http:\\/\\/localhost\\/Zurmo\\/app\\/index.php\",\"target\":\"_blank\",\"inlineStyles\":{\"background-color\":\"#97c43d\",\"border-color\":\"#7cb830\"}}},\"class\":\"BuilderButtonElement\"},\"builderdividerelement_1393965948_53163b7cb98ae\":{\"content\":[],\"properties\":{\"frontend\":{\"inlineStyles\":{\"border-top-width\":\"1\",\"border-top-style\":\"solid\",\"border-top-color\":\"#cccccc\"}},\"backend\":{\"divider-padding\":\"10\"}},\"class\":\"BuilderDividerElement\"},\"buildersocialelement_1394060039_5317ab07cf03d\":{\"content\":[],\"properties\":{\"backend\":{\"layout\":\"vertical\",\"services\":{\"Twitter\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.twitter.com\\/\"},\"Facebook\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.facebook.com\\/\"},\"GooglePlus\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/gplus.com\"}}}},\"class\":\"BuilderSocialElement\"},\"builderexpanderelement_1393970592_53164da0bd137\":{\"content\":[],\"properties\":{\"frontend\":{\"height\":\"10\"}},\"class\":\"BuilderExpanderElement\"},\"builderfooterelement_1393966090_53163c0ac51bd\":{\"content\":{\"text\":\"[[GLOBAL^MARKETING^FOOTER^HTML]]\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#efefef\",\"font-size\":\"10\"}}},\"class\":\"BuilderFooterElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#ffffff\",\"color\":\"#545454\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,2),(3,NULL,0,3,NULL,'2 Columns','2 Columns','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-2\",\"dom\":{\"canvas1\":{\"content\":{\"builderheaderimagetextelement_1393965594_53163a1a0eb53\":{\"content\":{\"buildercolumnelement_1393965594_53163a1a0ef48\":{\"content\":{\"builderimageelement_1393965594_53163a1a0ee52\":{\"content\":{\"image\":1},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1393965594_53163a1a145cc\":{\"content\":{\"builderheadertextelement_1393965594_53163a1a14515\":{\"content\":{\"text\":\"Acme Inc. Newsletter\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"right\"}}},\"class\":\"BuilderHeaderTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\",\"header\":\"1\"},\"frontend\":{\"inlineStyles\":{\"background-color\":\"#282a76\"}}},\"class\":\"BuilderHeaderImageTextElement\"},\"builderrowelement_1394062546_5317b4d264a62\":{\"content\":{\"buildercolumnelement_1394062546_5317b4d26488b\":{\"content\":{\"buildertitleelement_1394062546_5317b4d263942\":{\"content\":{\"text\":\"Hello there William S...\"},\"properties\":{\"backend\":{\"headingLevel\":\"h1\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#666666\",\"font-size\":\"28\",\"font-weight\":\"bold\",\"line-height\":\"200\"}}},\"class\":\"BuilderTitleElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":{\"buildertextelement_1393965781_53163ad53b77c\":{\"content\":{\"text\":\"\\n<p>\\n    Orsino, the <i>Duke of Illyria<\\/i>, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that <b>Olivia<\\/b> plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\\n<\\/p>\\n\"},\"properties\":[],\"class\":\"BuilderTextElement\"},\"builderbuttonelement_1393965942_53163b76e666c\":{\"content\":[],\"properties\":{\"backend\":{\"text\":\"Contact Us Now\",\"sizeClass\":\"medium-button\",\"align\":\"left\"},\"frontend\":{\"href\":\"http:\\/\\/localhost\\/Zurmo\\/app\\/index.php\",\"target\":\"_blank\",\"inlineStyles\":{\"background-color\":\"#97c43d\",\"border-color\":\"#7cb830\"}}},\"class\":\"BuilderButtonElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394061698_5317b182c1f19\":{\"content\":{\"buildertextelement_1394061967_5317b28fc8088\":{\"content\":{\"text\":\"\\n<b>New Articles<\\/b>\\n<ul>\\n    <li>Article Name about something<\\/li>\\n    <li>10 ways to create email templates<\\/li>\\n    <li>Great new marketing tools from Acme<\\/li>\\n    <li>Best blog post of the year<\\/li>\\n    <li>Meet our new chef<\\/li>\\n<\\/ul>\\n\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#f6f6f7\",\"color\":\"#323232\",\"font-size\":\"16\"}}},\"class\":\"BuilderTextElement\"},\"builderexpanderelement_1394062193_5317b37137abc\":{\"content\":[],\"properties\":{\"frontend\":{\"height\":\"10\"}},\"class\":\"BuilderExpanderElement\"},\"buildertitleelement_1394062361_5317b419e1c51\":{\"content\":{\"text\":\"Acme Elsewhere\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#6c1d1d\",\"font-weight\":\"bold\",\"line-height\":\"200\"}}},\"class\":\"BuilderTitleElement\"},\"buildersocialelement_1394060039_5317ab07cf03d\":{\"content\":[],\"properties\":{\"backend\":{\"layout\":\"vertical\",\"services\":{\"Twitter\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.twitter.com\\/\"},\"Facebook\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.facebook.com\\/\"},\"GooglePlus\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/gplus.com\"}}}},\"class\":\"BuilderSocialElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"2\"}},\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062652_5317b53c906f9\":{\"content\":{\"buildercolumnelement_1394062652_5317b53c90615\":{\"content\":{\"builderdividerelement_1394062652_5317b53c901fc\":{\"content\":[],\"properties\":{\"frontend\":{\"inlineStyles\":{\"border-top-width\":\"1\",\"border-top-style\":\"dotted\",\"border-top-color\":\"#efefef\"}},\"backend\":{\"divider-padding\":\"10\"}},\"class\":\"BuilderDividerElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062641_5317b53112a36\":{\"content\":{\"buildercolumnelement_1394062641_5317b5311291a\":{\"content\":{\"builderfooterelement_1394062641_5317b5311226e\":{\"content\":{\"text\":\"[[GLOBAL^MARKETING^FOOTER^HTML]]\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"font-size\":\"11\",\"background-color\":\"#ebebeb\"}}},\"class\":\"BuilderFooterElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#ffffff\",\"color\":\"#545454\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,3),(4,NULL,0,3,NULL,'2 Columns with strong right','2 Columns with strong right','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-3\",\"dom\":{\"canvas1\":{\"content\":{\"builderheaderimagetextelement_1393965594_53163a1a0eb53\":{\"content\":{\"buildercolumnelement_1393965594_53163a1a0ef48\":{\"content\":{\"builderimageelement_1393965594_53163a1a0ee52\":{\"content\":{\"image\":1},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1393965594_53163a1a145cc\":{\"content\":{\"builderheadertextelement_1393965594_53163a1a14515\":{\"content\":{\"text\":\"Acme Inc. Newsletter\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"right\"}}},\"class\":\"BuilderHeaderTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\",\"header\":\"1\"},\"frontend\":{\"inlineStyles\":{\"background-color\":\"#282a76\"}}},\"class\":\"BuilderHeaderImageTextElement\"},\"builderrowelement_1394062546_5317b4d264a62\":{\"content\":{\"buildercolumnelement_1394062546_5317b4d26488b\":{\"content\":{\"buildertitleelement_1394062546_5317b4d263942\":{\"content\":{\"text\":\"Hello there William S...\"},\"properties\":{\"backend\":{\"headingLevel\":\"h1\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#666666\",\"font-size\":\"28\",\"font-weight\":\"bold\",\"line-height\":\"200\"}}},\"class\":\"BuilderTitleElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":{\"buildertextelement_1394061967_5317b28fc8088\":{\"content\":{\"text\":\"\\n <b>New Products<\\/b>\\n<ul>\\n    <li><a href=\\\"#\\\" target=\\\"_blank\\\">AcmeMaster 10,000<\\/a><\\/li>\\n    <li><a href=\\\"#\\\">ProAcme 5,000<\\/a><\\/li>\\n    <li><a href=\\\"#\\\">AcmeMaster++<\\/a><\\/li>\\n    <li><a href=\\\"#\\\" target=\\\"_blank\\\">The Acme Beginner pro<\\/a><\\/li>\\n<\\/ul>\\n\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#f6f6f7\",\"color\":\"#323232\",\"font-size\":\"16\"}}},\"class\":\"BuilderTextElement\"},\"buildertitleelement_1394062361_5317b419e1c51\":{\"content\":{\"text\":\"Follow Us!\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#6c1d1d\",\"font-weight\":\"bold\",\"line-height\":\"200\"}}},\"class\":\"BuilderTitleElement\"},\"buildersocialelement_1394060039_5317ab07cf03d\":{\"content\":[],\"properties\":{\"backend\":{\"layout\":\"vertical\",\"services\":{\"Twitter\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.twitter.com\\/\"},\"Facebook\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.facebook.com\\/\"},\"GooglePlus\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/gplus.com\"}}}},\"class\":\"BuilderSocialElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394061698_5317b182c1f19\":{\"content\":{\"buildertextelement_1393965781_53163ad53b77c\":{\"content\":{\"text\":\"\\n<p>\\n    Orsino, the <i>Duke of Illyria<\\/i>, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that <b>Olivia<\\/b> plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\\n<\\/p>\\n\"},\"properties\":[],\"class\":\"BuilderTextElement\"},\"builderbuttonelement_1393965942_53163b76e666c\":{\"content\":[],\"properties\":{\"backend\":{\"text\":\"Contact Us Now\",\"sizeClass\":\"medium-button\",\"align\":\"left\"},\"frontend\":{\"href\":\"http:\\/\\/localhost\\/Zurmo\\/app\\/index.php\",\"target\":\"_blank\",\"inlineStyles\":{\"background-color\":\"#97c43d\",\"border-color\":\"#7cb830\"}}},\"class\":\"BuilderButtonElement\"},\"builderexpanderelement_1394062193_5317b37137abc\":{\"content\":[],\"properties\":{\"frontend\":{\"height\":\"10\"}},\"class\":\"BuilderExpanderElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\"}},\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062652_5317b53c906f9\":{\"content\":{\"buildercolumnelement_1394062652_5317b53c90615\":{\"content\":{\"builderdividerelement_1394062652_5317b53c901fc\":{\"content\":[],\"properties\":{\"frontend\":{\"inlineStyles\":{\"border-top-width\":\"1\",\"border-top-style\":\"dotted\",\"border-top-color\":\"#efefef\"}},\"backend\":{\"divider-padding\":\"10\"}},\"class\":\"BuilderDividerElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062641_5317b53112a36\":{\"content\":{\"buildercolumnelement_1394062641_5317b5311291a\":{\"content\":{\"builderfooterelement_1394062641_5317b5311226e\":{\"content\":{\"text\":\"[[GLOBAL^MARKETING^FOOTER^HTML]]\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"font-size\":\"11\",\"background-color\":\"#ebebeb\"}}},\"class\":\"BuilderFooterElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#ffffff\",\"color\":\"#545454\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,4),(5,NULL,0,3,NULL,'3 Columns','3 Columns','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-4\",\"dom\":{\"canvas1\":{\"content\":{\"builderheaderimagetextelement_1393965594_53163a1a0eb53\":{\"content\":{\"buildercolumnelement_1393965594_53163a1a0ef48\":{\"content\":{\"builderimageelement_1393965594_53163a1a0ee52\":{\"content\":{\"image\":1},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1393965594_53163a1a145cc\":{\"content\":{\"builderheadertextelement_1393965594_53163a1a14515\":{\"content\":{\"text\":\"Acme Inc. Newsletter\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"right\"}}},\"class\":\"BuilderHeaderTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\"},\"frontend\":{\"inlineStyles\":{\"background-color\":\"#282a76\"}}},\"class\":\"BuilderHeaderImageTextElement\"},\"builderrowelement_1394062546_5317b4d264a62\":{\"content\":{\"buildercolumnelement_1394062546_5317b4d26488b\":{\"content\":{\"buildertitleelement_1394062546_5317b4d263942\":{\"content\":{\"text\":\"Latest entries on our database\"},\"properties\":{\"backend\":{\"headingLevel\":\"h1\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#666666\",\"font-size\":\"28\",\"font-weight\":\"bold\",\"line-height\":\"200\"}}},\"class\":\"BuilderTitleElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":{\"builderimageelement_1394063801_5317b9b9eedc5\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063416_5317b838c6ce1\":{\"content\":{\"text\":\"Property at NYC\"},\"properties\":{\"backend\":{\"headingLevel\":\"h2\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063772_5317b99cab31e\":{\"content\":{\"text\":\"Orsino, the Duke of Illyria, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that Olivia plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\"},\"properties\":[],\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394061698_5317b182c1f19\":{\"content\":{\"builderimageelement_1394063806_5317b9be406a3\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063420_5317b83cb81a3\":{\"content\":{\"text\":\"Chalet in Bs. As.\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063737_5317b979ce2a3\":{\"content\":{\"text\":\"Orsino, the Duke of Illyria, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that Olivia plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\"},\"properties\":[],\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394063404_5317b82c72b5c\":{\"content\":{\"builderimageelement_1394063809_5317b9c1da156\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063425_5317b8410f24b\":{\"content\":{\"text\":\"Tiny Island\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063741_5317b97d68d8d\":{\"content\":{\"text\":\"Orsino, the Duke of Illyria, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that Olivia plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\"},\"properties\":[],\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"3\"}},\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062652_5317b53c906f9\":{\"content\":{\"buildercolumnelement_1394062652_5317b53c90615\":{\"content\":{\"builderbuttonelement_1394063832_5317b9d8a797c\":{\"content\":[],\"properties\":{\"backend\":{\"text\":\"Click for more details\",\"sizeClass\":\"large-button\",\"width\":\"100%\",\"align\":\"center\"},\"frontend\":{\"href\":\"http:\\/\\/google.com\",\"target\":\"_blank\",\"inlineStyles\":{\"background-color\":\"#8224e3\",\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"center\",\"border-color\":\"#8224e3\",\"border-width\":\"1\",\"border-style\":\"solid\"}}},\"class\":\"BuilderButtonElement\"},\"builderdividerelement_1394062652_5317b53c901fc\":{\"content\":[],\"properties\":{\"frontend\":{\"inlineStyles\":{\"border-top-width\":\"1\",\"border-top-style\":\"dotted\",\"border-top-color\":\"#efefef\"}},\"backend\":{\"divider-padding\":\"10\"}},\"class\":\"BuilderDividerElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062641_5317b53112a36\":{\"content\":{\"buildercolumnelement_1394062641_5317b5311291a\":{\"content\":{\"builderfooterelement_1394062641_5317b5311226e\":{\"content\":{\"text\":\"[[GLOBAL^MARKETING^FOOTER^HTML]]\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"font-size\":\"11\",\"background-color\":\"#ebebeb\"}}},\"class\":\"BuilderFooterElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#ffffff\",\"color\":\"#545454\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,5),(6,NULL,0,3,NULL,'3 Columns with Hero','3 Columns with Hero','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-1\",\"dom\":{\"canvas1\":{\"content\":{\"builderheaderimagetextelement_1393965594_53163a1a0eb53\":{\"content\":{\"buildercolumnelement_1393965594_53163a1a0ef48\":{\"content\":{\"builderimageelement_1393965594_53163a1a0ee52\":{\"content\":{\"image\":1},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1393965594_53163a1a145cc\":{\"content\":{\"builderheadertextelement_1393965594_53163a1a14515\":{\"content\":{\"text\":\"Acme Real Estate\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"right\"}}},\"class\":\"BuilderHeaderTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\",\"header\":\"1\",\"border-negation\":{\"border-top\":\"none\",\"border-right\":\"none\",\"border-bottom\":\"none\",\"border-left\":\"none\"}},\"frontend\":{\"inlineStyles\":{\"background-color\":\"#282a76\"}}},\"class\":\"BuilderHeaderImageTextElement\"},\"builderrowelement_1394062546_5317b4d264a62\":{\"content\":{\"buildercolumnelement_1394062546_5317b4d26488b\":{\"content\":{\"buildertitleelement_1394062546_5317b4d263942\":{\"content\":{\"text\":\"New on our Downtown NYC locations\"},\"properties\":{\"backend\":{\"headingLevel\":\"h1\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"28\",\"font-weight\":\"bold\",\"line-height\":\"100\"}}},\"class\":\"BuilderTitleElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1394122137_53189d999cade\":{\"content\":{\"buildercolumnelement_1394122137_53189d999c769\":{\"content\":{\"builderimageelement_1394122137_53189d999b21b\":{\"content\":{\"image\":4},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":{\"builderimageelement_1394063801_5317b9b9eedc5\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063416_5317b838c6ce1\":{\"content\":{\"text\":\"Property at NYC\"},\"properties\":{\"backend\":{\"headingLevel\":\"h2\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063772_5317b99cab31e\":{\"content\":{\"text\":\"With its welcoming fireplace, wood-paneled ceiling, limestone floor, and luminous\\nview into a stunning courtyard, The Sterling Mason lobby imparts the intimate warmth of home.\"},\"properties\":{\"backend\":{\"border-negation\":{\"border-top\":\"none\",\"border-right\":\"none\",\"border-bottom\":\"none\",\"border-left\":\"none\"}}},\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394061698_5317b182c1f19\":{\"content\":{\"builderimageelement_1394063806_5317b9be406a3\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063420_5317b83cb81a3\":{\"content\":{\"text\":\"Chalet in Bs. As.\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063737_5317b979ce2a3\":{\"content\":{\"text\":\"With its welcoming fireplace, wood-paneled ceiling, limestone floor, and luminous\\nview into a stunning courtyard, The Sterling Mason lobby imparts the intimate warmth of home.\"},\"properties\":{\"backend\":{\"border-negation\":{\"border-top\":\"none\",\"border-right\":\"none\",\"border-bottom\":\"none\",\"border-left\":\"none\"}}},\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394063404_5317b82c72b5c\":{\"content\":{\"builderimageelement_1394063809_5317b9c1da156\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063425_5317b8410f24b\":{\"content\":{\"text\":\"Luminus Loft\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063741_5317b97d68d8d\":{\"content\":{\"text\":\"With its welcoming fireplace, wood-paneled ceiling, limestone floor, and luminous\\nview into a stunning courtyard, The Sterling Mason lobby imparts the intimate warmth of home.\"},\"properties\":{\"backend\":{\"border-negation\":{\"border-top\":\"none\",\"border-right\":\"none\",\"border-bottom\":\"none\",\"border-left\":\"none\"}}},\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"3\"}},\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062641_5317b53112a36\":{\"content\":{\"buildercolumnelement_1394062641_5317b5311291a\":{\"content\":{\"buildersocialelement_1394121396_53189ab49a77c\":{\"content\":[],\"properties\":{\"backend\":{\"layout\":\"horizontal\",\"services\":{\"Facebook\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.facebook.com\\/\"},\"GooglePlus\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/gplus.con\"},\"Instagram\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.instagram.com\\/\"}}}},\"class\":\"BuilderSocialElement\"},\"builderfooterelement_1394062641_5317b5311226e\":{\"content\":{\"text\":\"[[GLOBAL^MARKETING^FOOTER^HTML]]\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"font-size\":\"11\",\"background-color\":\"#ebebeb\"}}},\"class\":\"BuilderFooterElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#fefefe\",\"color\":\"#545454\",\"border-color\":\"#284b7d\",\"border-width\":\"10\",\"border-style\":\"solid\"}},\"backend\":{\"border-negation\":{\"border-top\":\"none\",\"border-right\":\"none\",\"border-bottom\":\"none\",\"border-left\":\"none\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,6);
/*!40000 ALTER TABLE `emailtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailtemplate_read`
--

DROP TABLE IF EXISTS `emailtemplate_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailtemplate_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `emailtemplate_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailtemplate_read`
--

LOCK TABLES `emailtemplate_read` WRITE;
/*!40000 ALTER TABLE `emailtemplate_read` DISABLE KEYS */;
INSERT INTO `emailtemplate_read` VALUES (1,1,'G2',1),(2,2,'G2',1),(3,3,'G2',1),(4,4,'G2',1),(5,5,'G2',1),(6,6,'G2',1);
/*!40000 ALTER TABLE `emailtemplate_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exportfilemodel`
--

DROP TABLE IF EXISTS `exportfilemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exportfilemodel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filemodel_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exportfilemodel`
--

LOCK TABLES `exportfilemodel` WRITE;
/*!40000 ALTER TABLE `exportfilemodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `exportfilemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exportitem`
--

DROP TABLE IF EXISTS `exportitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exportitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `iscompleted` tinyint(1) unsigned DEFAULT NULL,
  `exportfiletype` text COLLATE utf8_unicode_ci,
  `exportfilename` text COLLATE utf8_unicode_ci,
  `modelclassname` text COLLATE utf8_unicode_ci,
  `processoffset` int(11) DEFAULT NULL,
  `serializeddata` longtext COLLATE utf8_unicode_ci,
  `isjobrunning` tinyint(1) unsigned DEFAULT NULL,
  `cancelexport` tinyint(1) unsigned DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `exportfilemodel_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exportitem`
--

LOCK TABLES `exportitem` WRITE;
/*!40000 ALTER TABLE `exportitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `exportitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exportitem_read`
--

DROP TABLE IF EXISTS `exportitem_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exportitem_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `exportitem_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exportitem_read`
--

LOCK TABLES `exportitem_read` WRITE;
/*!40000 ALTER TABLE `exportitem_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `exportitem_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filecontent`
--

DROP TABLE IF EXISTS `filecontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filecontent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filecontent`
--

LOCK TABLES `filecontent` WRITE;
/*!40000 ALTER TABLE `filecontent` DISABLE KEYS */;
INSERT INTO `filecontent` VALUES (1,'GIF87a�\02\0�\0\0��̖����������������Ū�����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\0\0�\02\0\0��I��8�ͻ�`(�di�h��l�p,�tm�x��|����pH,\Z�Ȥr�l:�ШtJ�Z�جv��z��xL.���tT0\nv``��餀^���jCz}�m�sny����C\0��\0�}���#�����B��mu��\0������D��\0��sǞ�z�n������@�׫\0������{���>���������t�����4!`8{�q�W���ԙ��6d�\Z陨aY�fws8�3:��X��t��2�!u��*����\r(�r�ś�lƼ�h�$K��]\"W�п))�1�(�á4��q\'@G]^�e�c��\"�~�b]˶�۷p�ʝK��ݻx���˷�߿�L��a�\0\0;'),(2,'GIF87a�\0�\0�\0\0��̖�����������������������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\0\0�\0�\0\0��I��8�ͻ�`(�di�h��l�p,�tm�x��|����pH,\Z�Ȥr�l:�ШtJ�Z�جv��z��xL.���z�n���|N�����~�������������������������������������������������������������������������������������љ�����*������������\0���%��������X��\0X��`\Z�\0[A��A��0�B������޺	%롬xB��o*%�<)�塎����SBO�v^`W3\0�@���siPD�$V�p����b`g���\rQ�z��\0V���Y��׶1/,,0��ڗ�h¥)p�U�b��z�#H\r��\'ئ�B�J\\����rj�lm2��zAT-�A\ng?�M]EJ���:�ٱ�	Ճ]�)ӧI5�V|a����+�q�;�3	��To͋C�w��z�\'d߈Q��պڶ\0������*o4@�n�m%�y4��|�7�}��A_<��M��d��>��\nX�4f��v�� �(�$�h�(���,���0�(�4�h�8��<���@)�Di�H&��L6��PF)�TVi�Xf��\\v��`�)�d:\0;'),(3,'GIF87aD�\0�\0\0��̖�����������������������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,\0\0\0\0D�\0\0��I��8�ͻ�`(�di�h��l�p,�tm�x��|����pH,\Z�Ȥr�l:�ШtJ�Z�جv��z��xL.���z�n���|N�����~������������������������������������������������������������������������������������������������������������������������������������\0\nH����*\\Ȱ�Ç#J�H��ŋ3j�ȱ�Ǐ� C�I��ɓ(S�\\ɲe�\00cʜ)S�0@\0$\n�9�@/j��9��ϠCy\ZuI��U�: 8p5�\0 \nt\043mz���kرe�~�J7�;�����^X��T��޽��,��a�v3x�/�z�R1l���ɔ-_�LWs�-�gF�� ��`3�M;�૞1�N\r[�lʵOc�J�����M�����U8�:fn&��r \r�\'Z��uW\':}�W�Z�@`��o��)ܶ>!�L�I�k����{��M���y�~�E�^	�7w�Y0^o���u]\rV\0!g!}	Z� 	��WAV�LN�bL\Z1bL�H`3��$�HS��@�%:q�^Ф���rI`��K:���2�� MR��$Y�P&\0F^p&\0k\Z�ӕ��eZ�i��r��D�`ťL\0	#=z��T�I�~JHS�C���\n.��wZ:����)��P��)�iger��LHR�Ă�P\0�(j�҄���fp��py�*�LD0஺����`�w@��5Z�yF��� t\\W�jʚ�\0dx$��^���K�S�(\0P�,��^pc\0��y�W��b��ko��Z�o���������;��o�+��c��2a��W��c&O02���S��\n�Sq���1\0���+�|�)�����j\04�₰0\0�v�4�)]��S=�U�Ŗ�\Z �+�gZv=ڔ6;��4r����h��\Z���Y�y�Ӻ6���zmv�d#>�@~�b��O��w����3ۘK0�tVY��܋a,�3ŵ�L�g���jyʮ:��w�(�#as�F޺9KS@��]�,��2����._�;��CQ��\Z_�BO��>� \'��N���^�K�~�LDr_��$ Ͱ\nr�O���_���{�y,�=�)�T\n�	V�3ȩ��;`�*�\0B��д�/�\0T![��*�A�q0�3����AE1o����6�QA�v��$���D�+<��ڄA\Z+]&0�ėC�у8a{��hQki%�R���F�	�038d����A�٬_-�\"�Ưݕ��3�U��Ļ\r�G?���x��ם��bT�l��3�����G�\n2hK=��	�H�)�����%y��(oY(���D�H!q���^��}e���ܤ9y�%+Cyc�|H�uID�[��\\� O汌�r�`֑�-�]�β�X�pu*�۵*��ar�!/U&l\"�R�\"4e����w�;�f��\'��,�(5����\0�!Nr�y�y2���|�:[���|�a���U�\Z�Kr}��sVG�����u�����r3��Q���3Θ�25�I�Jy�Ґ�`����cf�ͮHr�}	曝f�j6�A���z�e�-%\nH�Ӟ��2w��W��?�$�U��Tx�/���\0SuQT�B�\r�\n?�!\Z\n���DA+T��֯����\r�`K��\Z���M�b���:�����d\'K��Z���ͬf7���z���\r�hGK�Қ���M�jW��ֺ�����lgK������ͭnw�������\r�p�K��\Z���M�r�&���:��Ѝ�t�K��Z���ͮv����z���\r�x�K^�D\0\0;'),(4,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0D\0\0\0�\0\0\0B3�X\0\0\0PLTE\"\Z! 0=\0&&&05)<74,<X\"I8F9]87Ihx;DB=XQ?cvGDBOWCPNNYVL[YZEXyPqTa\\J`_\\keUjuYlBeefljhnotzufyws8x�Ke�Wq�_}�_}�vy�b|�j�p�s�x�k� r�*v�\0]�yr�Bm��d��w��u��~��{��T��k��j��r��u��{���ځF�W�s8�uM�}X�kL�aa����)��2��\n������\"��1��)��>��2��:��C��w��u��`��n��D��B��W��H��V��N��8��H��T��Y��`ޠ4��	���\Z��)��$�=ƾAҴAԡfٷ{�M�X�r��X��u��b��h��������������������������������������������������������������Ƌ�ˊ�Ә�Ɣ�җ�و�狵���䙷画����������ױ�ͣ��đ�����װ�ں�Ӹ�ڻ�ʤ������������������������������������������������Ÿ�ߪ�Ѳ�ܲ�ɽ�ּ�޼���ʃ�ϒ�ѧ�ݽ�ڪ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������\n\0\0\0bKGD����\0\0 \0IDATxڼ�[lIz���dYۂ �!�h�[R����Ѭ\0���ѭ�b����e[^{�[�n{����Ep�^\\�&����|��C�%��KՒ���܌D�D�\0|�FUREf.�ىL�����U,^�3ޘi�XU$+#����Ǿ)^.[L���a\Z/���R�\\ް���u���;aښQơ�\Z��4�,F��\0�a1�>M\'�31Fj�Gi�H����O��{2A#��������ܽ_�嗿���W_�\'4�2z��X�ū>�.+��X!c\\�6G�°�+�gXaX�t�S���9��{��l7�\0������AQ�޼y#g��+GI\\�=\\��de~��͛W���є�k1A0��r�«287�3�Y�%�9~`�^)G���V��)���V|��6݄q�F��W���[@nuHL�[�nJ�h:i?L0�6u���pQ.�	�0D���7�5�)e�\n\r��55�3�>;M-g!L�����e~���/��\r۟���`���\Z+�����m<K�Y\0�ij̋���a���,�r�wٌ�k�|����7��KjN�n���tY��`�xU�a,�D\rg��\0�sK�UR<�[�Y|`%?�e�8��\rb���_-N�\Z�\\�A��o��-|�!咣q&nc�ՁJ��{�(�#Dr�I9��_�%�d�3`���g\0����e.d\rM�V���sILI̲��v�%�&-�4�쐃4��Xh����FY�,�\\	\'�đ�x�?�_�m��2�V� �V�kz��x�;h�_!��t���*,�������-��)\\^#|K��`�DOȗ�O�N\0�Q!�bq%�ï�V\'��aI�J֋א��w�}�/�\",�t�B�9�8Bt���=���C@Q�>�׉#�7-�W��\\��g;@4�����&��Z����_|N��������e���w��I$�W\n�\n�k$�HPqI�d�$H�� H��W�K�� �\ZL��{@\Zg$�L��ai�&đηB\nǐkP�;M�	�|���s|*�Gm6�D������\"H\\�=��bB�K�L^�_1N3;~�H�k�����7]�ɧ7�_�Coا89y %,u:�|�#�(�>���+<y2����@�g�y��f<)KK�LfmV��� �S4D��$d*�o��8�<j�/g�8�+��e�	��T�g�K6���(T/���1�Q(�WZ�:R�꺥n*\'�K�� ����5���O�\Z��0b8�0\"cqĪ���͢EM���h�m:�7A�Q�>��0�ş��R\\xE+�A����R�^8\\�O~��ϟ��	�۷o�?כ��D�I�G\'��Xx0�%�������j�u,�(��0%0L�4$	T��4Ç[Z,d�{�����(���x�����_�r^��,�!D�����TI�!g��I��B(�,0�Ĵ�$`���h6�|�=���\Z�BA��� �Bn�khd@X¬��LᯀߔG�^���K����A���~���	\"�\0��m`�3?�dE�5P$\"���%z��P���j<g�8��89�2��!�8�0�&	�\r��ߌ�E��Z��*���e���_����Wgc��G�\rU@Ts��D����d^{*��غ��� �w��-O�o�8e�c9S�!\r�)	�|é㢈�U��k3�\n\nx�P7�j���V�f���8h7\'Ќ��\nq�(�,Sj)��0�]H�#߆e�ڍ�\Z́]�D\Zc��Z�v4yXď�9@m)6��U���J\n�H(�{����\Z��J��D���y��8�z4�l��a�.�B��2��i�y��**i%�׳���2S}��Dj���/���t��֯����u���kkk�\\�N4x� Ҁ\n�E�n].?��ЬF�NS�n2�U\0�AOD�}`EڌL 0����đA ����,�$+đ��	�X�+%��w�)t�\r,K��H�JӅ�lgC��`;\n\Z|��DOd_+��A���ߧ8A�Nv���G猼�C\'��}\'Ov�c�D���3�+ʣh�Pg��=;����`�<�ܫ$����!JHeB����[/z����Tc�g��큛J�\\���R6��,_���Z��f.t�6�\\���u�ˑ����z$AP�i]q�x��M�2�-V%��,Gj)��s�!��6�A/�w�f���㨈�\0��*�{[�Б�l�J�d��P�υ������<����G\'��P�8�|CB�w���y�t�1R`��!$Z�fn>8K&����`>?88��`�D�v�H�є$K�꼎���no]��{��x�o4�o��::˝��\n��ܜD�� �5t�)�(��%�8�)#�\0��Q.�!�{�sA��з�%d�˄��0C��uonl�6���\rAy�EYU�G���4����7��gw�ł��2#�L���MRiJ;�*Q�-6�TPR�v��a��,?�]\\\\\r?\n6W�!\n)\n�B���,\'�V�1\n�%$PB�ZL�ٯV77W�:���Di0�C���� B�E9\\��v�(\0����qB<�y^�w�\ZS�r襲��H1l?3�́ir\rd�[�/��(!4�����nL1��Vi/b�\nt�F.G#�Pf5��P�h���Ъ�׉oo�ov�>��M�\r��j)��_�JF9�Ҹ��D�=+����K*|�����ޡ9�%x��P@Dw���6\'\"]W;��`�o!��IItveuu���-���M��� br��v��������Ajܱ���R��0:-����ں�b��\0\"��;�w5�)�e���\ZW�B�Ϥ�VP[�B1��R`11^t�,�f�F�������*q$�	�&o~���������D� z\n�Nx;cK�4�)���Y)�X�\nK�&\\9�_A/����}�f�[	�\0fa����E�#ǌ���G�Y�J��:{��lo�I�V�(�Ҏ=�5I��OQ.�j�V��\\�(�mm:Z���֨��c)�50pV�(�$FY��(�����B�jMu8�]�a��X$������1#����AL�@�xcB?�d#���m��\n|�/�#>9�G��%�ki���L���J���*���()/�J8���p\"��o,�q*��|���/+}�`�/8<���o\\g�������kyQJ.vĬ7M����x�Eb#�ÃO��92��e2;��-D�$��1��K��9ϟ�����N{���1���;���z�u�9��%��4���q#�4�1�K|����w3��΅/~�M�{� �����+���%�2���\Z�\0K�A��;:qbr;qd(�nD�l7_14 =�b��n�%����(��̱�Q���xV$�\"�\0���A�?8���?���>46��չ�)��{�g����q\\�Q��2	���T;J��4aG�˔��LLm�V�,F)���Vk�D�hz\"�J�Zy3��˙����0~�K�s\r�9_`=�t7</i��:��c �1*BaFc s��\0M�w����g� ՙjt���KcA�Ŏ���Q.���W�� �q]4�O3�R�\Z�o�m�((V�*��DH�R1�Q�4��_��;�D� �Q\"ݷ\r!�T$�r=�JS����LFN7�\'�J*������C�2���/J{c��杮	���kr<�q���q)�\0����\r�aKQa�ɮ%Q���!�����\Z������������W�����?�Wd����@u�\n3�����ЎJ�B�Њ�f������ၖ�Zk�Ѹ�>t��xz*�/���إN�58�x��ژ{�<?N<�_��j�q�$u�0x��	9*�Q1J��� ��f�i����`��HQ*͐��|H�\'�}p�zQ9k����=9���q,b�U�p�JZ����:�e�m���t�r�x>��n����qǶ�^x+�RhMH�2O��˾���2]�I�� B�<|4l����ޯ�⣿�9������[\Z֜���T`\"\"-���\"�F�c�F�D�5`fm-�\"����S��>@����)���v�v��=/��`�*H��0eD�_�\nq�*Y\0BUFU8k�2ko��6�3�\\��$�0���ڱA�Gj\re0|�0��)ٸ�d�v��d��A<Yt��\\MU\Z�Ki���1�.\0፥|����B)H1����kk��k0��.��a�{<�s]�!\n����C$r�ewgj�4�r�]P��g�ѯ�s4~��/-{c�\\�U�&��\"y/f\0)[3L��\Zn��W)�ȑ���P��p�3t\Z\'��5�,�ȅ����(I�\Z+��HH��:�HV�PD�B��Κ-3khV_�A!�=j��DA1\"\'71�+���q�Q�ehV��Q����P��S1C�,���$J�X�!Ar,�N�=\r�&��ܘJ�ZC�<|�5�u\0�kl�X�k��6һՁ�\0��f�L%IOcZ����\"s�壿�ω���B;�N+W`�Y{Q�&��\r@�b��LuTBT��u\01�x���	\Z���k��9�9�r���$�ڛ\\.\'����u�p$J��Q��Jq�Qa���.�?�{r�Y��̐M!�̲�5�<p�\\cfd�*��T�*Cse�!�<m\"R��^�<��+�(����D����\Zt:~Qy��әu\0�֎��TШ�c�E�O�,k�ݭ4�v�qk_�����ß�D����h���/���ַ~����?�k\\G�k���W����DSwٶ4/tI�ٞ;�>�x�k�m��c����a�yav,���� 0u�g}��q�,����jP�I�TZS�#���lE��%��Z�.�7�\n�7���6�|*K�ua�SJ��6��`}Eq�r��)Y����+��k��4}\"+�$!*ɧ�A\n}xG���1��m�\Z\"ޘ�t֦�T��u��㾯�X���]��ufw�jņ�,�\"iH�𥭗��O�����������kx���i�<:����YY�;�����Y��F r��Wkke�\Z�Y\\�^�.H60Z,z�UT�4f\'��cY�c�)�P�Xq|D����8ױ�]�/����)i��=j�Ȭ��\0#(�r�%&�����Y�($4J[�~��EEG�C�F�:^�z��@�G�!u曗�J\"�,��#u�_t�lk jg��V�Ml�nvbh\'H�B�T�:�4���o�����w�����Ɉ��ӼDI%���}�*��&T�@\"V����kZ�X�&�բZM�4�I%G�t6�����wJ\"��8�ɦ �\" �gmF4\Z��V���7�\n�c�=����@�Bb������ċ��%�W�}\\^\0���+h�y��\"\0EkE�ʗ���T��8�,;ҰnoodAc��% Ke��n��v��+�-D(��A�ɕVQ��S�课�g���~.�O����\\�AQ�Kd�q���\\\n\Z�1Cd(���a�è�M �ѩ����V�P���Q�n	�9Vl<�Ӆ��)H�\Z㓥��f&�{:n�\0��L�P��T����+�3q�<TE�q��`7�R�fQ���|>��@A��6*�JF�<,��`c�X��;��\0��A�{c�낹��u��tv\Z>��wz#�[h�BU�؟�M��t@p� ��?�C\"��k\\��U�N��^�Yf���ID��>#>��sF�̼��)-EEQI#x2��,�OV2T��f\Zq�Q���Plf�f�| $�.���<ѵ���fX�\Z۸���\nS�	7��$G�a0�J���RTtĨ$�ڍC%��0w!��>�dX�\n#��ȣ����H\Z�`}}GD�e�%-�k�7����N�HNS���\ZV(0#��B	��:���4���Vu�q���J\nq�O�&�1�]Dbا,��9�y,o$	����|3��g�=Y�P�:3BY|��mJ�v��o.���(gmpp�WK	�l�Ӌ\rJFT%� �X��p׎�H3�(�(J�U5�-��dI�� xby# ��Xɒ��y$R�\"��ɷV5D�����v���6���S�k�L�g~&!�.|���D�Q5�`p7\"X�L�i��(�0M�\r\'\'-�+<`��e���A~$r�h֠�\'=�1iV�:���i\"$kWB�`4����qO� #����P����t�֭�q��1�(�za<��7��2��6\\�]�Eȫ0��h�r�\'~��]o��b�����U�(�^$K�&c���k9�H�q�sXV	�»�D{�h�����Y��%�����������������.<���Y.Eӡ�ª&?-K��\",�B#i �T��U�L��6�8êؤ7�`�K&�Bj���A@[�/O�z嬭ykA�a�֦� �j1�h(�PX��������#��O�ߚ�yoY#��{z��=��;�f$d�7K�b�͹RfVT���k4�*!��p�<�L�0����x%Dr�8.yR	[���GX�Bi}�vQ��C��*j5S��g���G}�[��}|����߄�����\'�i���Aj�A��䤓�w��Sb�^Yc�(�LLI�l(STe�m�a�Ys���c����.�qX1�C֔���Y$q$6Ƣ�:�$¼��77nޝ}��I�?��Y���3\\\"��O�fF�F)2�0��4�������31CW�LNNj,14]��AZ��aM�H��<�D�4@�%��!*I明fU@���9|9OKB���R��>��/?����q�㴖0V��#̈6{��ë�}{�	��H��rI87�k��$s�A�i\r%��,���.�oY[���ߟ����dA:�1(	1+������=�U�f;�����->�\ZX���/ff��o��N$��h���ޭ~Fn��~Dn7���#y�\"�!��bH��J��7ݳ�J��|v�זD��\0f-��^�&���(695����3��<�qΆ*���_*�]t4�<�$����_�Eb�⻦\nh�(�B\"��차�4���\0?�6ˉ7����}�K�W�dL]V@����,3��@�_���DE=����랝�C�1u/hi1�oi��s?��=���7����\0��n3K���sgf��{y���z��\"K�eR,����IC��%���#EOt%j7>��n�k�\'���k��ߢ\'�J�C������(2�Tx���h��v\\e	���۬���R�2�WD��!\"{�2����a+�������k)�p���4cX�8�:\r^�70�\r�?)�\ZUH�tPb�qگ���|���\0�{�K%X�or���{-\rA]���4�����A]]��도���������uG����k\Z�ꏴ�y��q�CA���c��.��4���d]]]�(�>��<��F���ك�G+Q�Cҥ�a���J_9��)@t��l�M�3��CT+ ����\"Qr�ٱ4]|th&q�8��;g�05��[Z|[�Fv��~u1��dY������	�~Ns\"&\n+@,�5��kd��q*�ҭP�x������W�����6\0�Ud�A\0N��5��Ҏ����wD�& ʣ�����Y�-�	Z\Z<�H^Ad��57;�F���j�� ����w{������[=�tde�H��݈!2;ev:�̈́�-斥���ѺgQ��2�BY�e2E�;f)@t��|\"�a$��j��KK��ά	�bQ��H�!�����b��ZY�TZ�r�PXZ|����vu%D%31��/��b�O?\Z�w`�֒�CQ�+��I�iŬE��H�%UZYg৑-�U�ؑ\r@N�Y��d����o;䵵fI���(���<�.�7i6A�4-\n\"/�G�fz��p�H7�����̸���o�.�r$��b�Cd�AQ��fe���@[(.ﶌJFF�&B�-Q��L�sF���O�i^\"T��Y�������q�^k�ݶf\r|W�<��+wu�42��G����\n��>D��4�YDtՠ~ ���ˏce��-�����h�%c�SR��ֳ��Y�	�Ȉu�0��)26�6@(�<�ex��Q��V�������p��O@�MDB�C�uչ.<Wv@��a[�Vg����ݙ��\rQ��+0z��\r�����s\\q��`�F�pc���H���f,�,�ê��I�9���@B�dԂ�������6olxN�x���v\Z�|C��屈��ƛam�|*G>@D���6�ٞvՆ�Yz8�~��TC������T\n��rښH�3��\0\0 \0IDATנ�\\+�%%�N��8ԇ^�UQ\rb,�s��;�K��i*�Ƃh�{��.�9���DB�YA���:@tX��\\�V�\"��������9�H�V:����/Z-���#��C����+]���z�R/����P��[o�Oʼ=�A:��E�L���|TΥD�<���[�\"\0�ҋ����{�xmI���\"���;</`&�g����V�9hv�$�j���xd�D�\"�v�hh����=���D3h}�iϿ�?���?La���\"�\Z�C6���B+Z�q��\"��}`L��r�+�CMۭ3=������,q���5t7ͺ�7{N3���f��+	���.x�G��	\"ܪ��i��z���,��.�[����o�_ײ��&QD�03Qx��j\Z-����D�l;��m��6�d�H�FOR�X�.-�]�����1�a��G�\"�S\"�L=��4�e�5���>�p��Y}sCs0V?�9\0���y}��\Zy��5��fV\'�D;@400�����DhW�z\\ß����g{\rCj+��#S�����H=�f&�DO�\"愺�qW���M��OT���A��F�hDɰG�kv�a���H�U�t<�󀝲�B��<3;;;�J�7VP���N��{�\0�xԕ�����@�\"{���5B9T__�\r�;!h�σ��\"iGe����=�VΨ-�X�M�=*bϵ 2-у/���X��ں�܉�}l�b��7��A����!�U�Ņ �C4@=($�τ6+���D���u��\\��Q]�2��J��\n_Cr�h�!3����a��O����r�bc	����qJ\"w�Í?g�nB|Τ���bx͇7{�z�y�t����;�;r�p��hZ��po���`oOo:3�WĲyvP_�e��5��y��-�΅��:�l��x�`��`��\Zx��&�4�L��xm��H�%�Q[<�*15?�77����k9ݶ���5�ף_�� ڵ���~� J�[M\"?���-��Xn!���hBp���J���`ׄ��C\'�Ӄ�_\np�slވ�$� 1nY��n4B�o���G�-DS�)��;��,�Ą�����@�`�{	���*G��\\����a��C�q�\'Z4F�t��v%�gW�����ʫ�(�+ՀH8g8�h�+��᪃������:׺���\r��>��N�lh/���-}Fm�۾�\'��ӣΪ�B��@����l:�к�!�F-��1�t���U��\\����1;���!�cU���62�a�L�\"�������ȶ�h�AY��Z��Ѹ���sml4�_�q#�~Dڰ˥d1c��z=}ۑ`��@6c�	��{�kJXH�d\r�J�9{�0zF���8�#Լ�9�\rmnPob�KY���u�ѣ�!����`./W��f>���@�m*����*\ZqnX�J24o̨�1D��vf��n�\r��\r�Z�b�*dJ�pQU�\' �K\"���z���%�Ҷ]��Fb�H�\\�l�l�ރ���k���y1����,,��Tg+���&� BA�.���~�#\n\"�G����Հ�[ODO+��/\n;M(���5�ײ��/���[Co���$ʤ������	#iW�3M������?��h#�@��)�*TH�7/��^�|9Wy#������\r��rj��嗘N/���yR�Մȁ�U�u�V~O��3��n��b�ڭ���4�Ʊ�IC�{Z�8��<J19���¨�����`\r]�~��=%i��\n�3$T;O\\A\r��s� S1u�Ù�����������k��5�\nQ������.-��>A�v��g��W���_���X)dUS��v�?�D���/_���+�-�	x���9�	8q�1��}-9^��al�(�����������-�����e�m���<�i�Jo�����p;�Yw�����O�f\\�웉���,#DW�n^o�F�:�~�%\n��xmI$!\ZN�\0ǯ*�{xhh�ɫ��\\z\'�b��\0�����d�ޮ�]��|���WO���`G����dS� �T��:(�n��|�!m�%�0x�����2��[mI�-4Ѵ�E��㐃�e��[$@�*��tr�ܔ��7\"�:�f�1kzGV�\r���k�7�����x�<�\"���.%�U����k�q���c\\���L)�L{��Z\Z�̇9�)妞\r\r������h.\"#����Q� ��`-ўwZ�D�9+|��q�i~�;	\ZB�yCn\Z��������� \\G��_�Wj�xS�&E����1�MLV�khiڌ���(1�5\0��\\B�NP=�4���� R9��Q��*��2\n3p���߳®�V/�@n$r`	�߰�E��\"�\\CA${˩��U�ei��D��� t�5��\'Ēr��.y�hQ�%ʽ-�H���$�L�_=1͟�<��	��\rA��&\'�\"���rs��a����u`�`�b��Ll�����F��B�\Z�-O�o�� �g�$JB�Y�Mեq�Hv1l�p>?����v��n�yo#�o�o�(DU,�S%a�8#T�W��aYD��d��*E�=��D	Z��2j7,�,�ji\'�v/��\"��<=m�%2���f00\0��_�0�A�{T�w;�qڧC��������}�9�Z�bB���ғ���g�i\r��i�Rj�V�+�DšY��r\"C��ro��(����d����(��xm~��)�.�]�Iĭ%F���[`Q� �.	��Hb�(��H��e2��j@d%��Ć����	�G����	��@�pK&CQ���D��6��o�OhaV7o�-�) (��g5�taI�Z��4���\r��Xv�(�ra,~��(¿m�S�j�I���*ڸU��J�n^���x�����T�{�i�I\ZG�Ry���ԏ��{~�{���-�+70�)���rWbA�n���<�ϑ7�l��O���t����2j]y��5?y�A��%�� ڡ\"-��d:����žQ�]��\\�^�\r���b�XC�\"�(z�Rgh]ω���&���CN�\\�����a�r�#WY�&���B�p�\"{H��K��ڍ��IT ^)f�.[�*�;��\r������^[G�{��nոn��5a��p�\\2�\r��N���bՀ�D\r�����GF3eIK}6 ��%���d\r� �dv�h4)\Z4�12���[bB����ҁ\'�0��i(��C�3���뺄hnjb2Q � ,�H��d�-d�! sC��\n���y#��~$�௕�m��d��ޫ �M�`C3���̵�#��\\�b�s̶�aؐw��@Â��\"�[cMׅ z�\ni�xf�� x�&J��A������\r������eUH��$CCO�L�X��� ��r�5EvRL�IDU�hW���P�C��AdL�]ૃˡ��rXvV��E�/�怡��k�妌�@D�	,�*U� a	��+�gDx�Z$�T}CA�!k�5MQ��\\���ݠm1C���xۢCuEG�^�\n!V��\\x�q�����ϺN�{��.��)�@#�T!�U�`F���\"���l�і!\ZH�9їN��pd��~�ύ���Ȧ�\r�-KJ��\\���q��ͺ�\0Ql���U�x<�j(���f��0u�]��;=,��! �5��Q�y�h�\"-iqS��WY�B�O�k�^�IM�;�s,fC�6�c�DퟪB�/�߽u�*�y=bhiW��l�e�5t���Ɛ+��%�\Z�18*{mݞu������Tĩ���w\r�jFwB.�]��O�x¬F����\\��%{�>�f\'���{O���I�G��Ϟ�NU����h\Z���happ��\0|?3��2�D{p�7���\n���z�` 2ju�ӕ�����3�c��06J�Y=�yF��k.�����x�hUI��h\n�|;��ao�����Hm�d��x��Ž{wo5]i�v�:��Ƌ�`(ѩܭ����k�[h\r!Ye�,:{��n��z-<f�6x�EU���7��6�(z��(zB�����rO�ʌ}��N����:�;t�����鞡��ё�Q�i` �w�̉��g}�GӸ\r|���J�`� J����č�zj��=p�3���)n-j���YQ��E��ݑ��6�炢o�B��I�(�U��҈Ɇa��9X��Ķ��Z�<��|��+W����+zBWo�S?U�ͻOW���54[�6���Qx��\"A�!8g�Aws(��J��\ngXG����F�9v�\Z�W�P�\Z<��%@�0\r���;1r���~<����=C#==��<��3r��D��������> �ĳ�[	� ���ה��č!m&�3,&*	�(�:���@���v��$:hL�E��&�Y1i�T5r��LH\"@[�%w�GgF���/s/��Er\0;ItԸv��L�C�{`(�ы�/�Ǻ������57��il̬�j��2?8Ԑ�-?��)kh�:�D��y0��c��	@���<#1A���}h�����D��t�t����3��\'FA<�N?M�@]6��w�����ǽ �F�N?�C{����Uo���*����S)&�kѝG�<�<����&�\Z�1{�%`כ�}��r�Geι���B���B�va���ܻ�镫���m0u���ݹX����d4\"v��x=s,:!�\"J�\n֌^ݤ0�0��^)J#�F��,m��o�y�Q(��\"n���o�V��E�K� �d��ޞS#\'FF����\0Q_@t\nX�E�p:�fӉ�3=��N�\0Qe�&D	�Lh3� �L�ݕI$Oτ+�\n$�]sɨ�-�����[�ǳi���X�w��9Gk;_�L��5�q�Q�-P\\��nlC�u9�55]��魻�fb����R-n�]?@�j���˖h�d[�W�g����8B����)��&����ׯ�=���?Zԉ�\"P�M�\Z��>@}��|���g�г�F��\r��&FI�w�T���g���=�O���mi��G�w�h)��\r������� �ʨ&m:��o�>Jh���(����q���Ɂ�a���M��щk\"27������2x��!h@�}�駷��\0���\"g�P(d2r��!\Z�ˎo6�7�N4�%\0�0Ȓ	<\'�@V6.�ļ��/�����߀�O}C#�N�$��)a�E�\n4�Q;1P�1��S��R����~L �G��N�^gzzO\r���i�������>ݓQ�l`x���DC�C�d�p�Ml��b�>�)W�x��Qo*٭�ܛ��Wt�`D�[���Qh�i��\\�4�޼���ۋ����s����\r������{KK��ո�9�����ˏu׏�`��c{�G�X*z!�T��E��7��\Z�@b�f���wM�0�d4�����Z\"�W�K�����$�������a\Z�np�_�z5=�������(�v�(�+DO��(��@\"!��A�i �D�QW\'?�|ܸ�1���RU�z�q�9�S�:/}n�����*|�^}�b�\\{,���I� �*�ՙ����\rf����O�Zw1���u\r ϋ)��a!*kT��t7�(\Z)�i�T% ���*n|7� ���������3T{���{Ec[�,iW�KL:g��1��sd�a��1�D�OA��R��z�(��M����e=55==�\0�}� ����������;��\r���V\r����,qY���\\��$#�=�j�<��Q~��1Ͱ�~\rK���r�,Z�Կ|�+�H�����\' ں�l+DI��C�؞<|80�Vў!�C{Kz�k����E�4Je%O�g��|q\n�hM�j��Ħ�k�A�W�%-��5�q�O�*@͟+U�3��`-ߛyQ��-���1�A4\\.�Aw�uY�ߋ2nq\Z���Z���j5��X�@�\\nJ�+�Vw�� uډh��W��.\'�6�UnQ\\/$X)�\'XΘHz�ѻ�]��M�Ձ|�Y��Kt�k�I�y\"ӈ���|�,�F�l�(���\\�~|�$�6�y�>m���؋�{7����n��q�yu��O.F3��	�� \"!�`�q˕H�)}�Hq�a�H�=nb4��h\nܸ�ɟ�U���F��Wl�P��v�(fIؕSC�\r���ڛ]-:�K�x��ٯ��yK��4٠OV�?��푝�h�\ZG�Q�\r0n��E�cW<<~�d��n{�;�;�/��3{s+?��bNjUg��,2�\ZJlϚ�J���vY}}}C=\'��2EsV�G��]~4��1NY���_�6+F�pP7*��v���丑��qpo%��pMQ��=��\r\":ǋM���.!h\'>#�fTCf�z�;�dN�2َY\nf�z\\���*���*�(��R�7��ڎP\\��:�ܙ�}a�����foI~����=D��g2���F()�p}Q\'����B�(��8�4�`\0b����\Zi��8EO�����z�ES�dm#��\"\"���Dbh_.��m`����@�����kj3��阊�Z-�&D��<|�M䛙z���9�ɺ2:	.>\n{}��k�`��_��%�%��|�x�������o�߾0{����ϟ�p{��?3���@�X��<<��#	�B��l¢v	NР�Ix����#\Z���(�%jׅ������p�J�k�2��`\Z��E�(v�@��oZ�����R<\r�@��)ԕ�\"��-`�sS� -������&�@���Y��ɢ3������h���ۜ�!�\"��d�-67{�̽��py����/��߾|�����������@�}T���\n��9�P� �L���\0F��UH S����YRqL��i��^�O��⊂�R�@����e��\r�fA)\'z\'���~258��^�� ��9S��3�� ����P�\nmF�2��9���8덕���x\"��<�jC�G̓��.�3s�۳_��>�~��������_��~�����WF�\rAn�(�n�E���$!\Z�.�?\nX3u�:=J��A�F�θҝ��h8����� ��6%38�2Jl�S����9�I���&(���{���]\Z�Dq�Z��^�6��8�v�qi�t�tZF@p���Ѧ(�`Ȣ���a�+��� �Υ^�k�;{��_̒\"��|@������IjPB4L�>���!�NL3F�H���,�jfH�)��l�N����\rJ��~.0{���9z����E\Z9ٍ_m�����\rkI�[���]!�!����,\\�������G��MW\Zb.\ZO�P�Հ\"�2�y�Y_e�W��w�X����;<�ɋ��n�޼;�@4�܋7��WV?Y]��/�\\cȆ=���T�!C�*7\"�t\r��c��k����R��J����6�`w�}V��	.9g8{7\"ADC��iQ���^�����r\Zn/�#DU�j@Dv5^FI�)k�A4�R0x��b��a}��b;D9x8�Sv�s�\\��OҲ֝�P\r�^P��[��Ǿ�bf����/n�63s���������\n��\"��\0Q���B*�-!³�f��ݞgG���ۼLU�&:�X:�Ժ�>�8Oc�n��u�#����{cc���K�HbdT�=J{��m��w����	��P�y���?��`-�Fv���	[4�󱣛纾��<���JqC`��M�X$:�Y�����`G��;�]\0�=u~pu�{�O��\Z��������XDHQ�yܒe��2<b�N����,n���7Y���y�;�?����ʆ�#�\n��/`̄Nцu�сGI�X�DG��w �r�\\ax������t��T��wUg�[=*���UNyY�D��c��K㡝J5ZA���5����w�)�.�����ȸ�	�6l&�k������o�ϟC����V�f�gdaea+?4�,�AIĿ9B0+�B��R���!��˸%E~̱�D���<�x��.\"�l��eEe~����\\�s�������y��5O�:wJ�^�+N��8�`�j3$IY���Ҵx�6K������̮)����)����i�Q�[��,,���5�q��Tp<����K3>�R��C\\\'��v�7.��ua�ι{3��@aû�N �a��O��z�pV\"�� ;����!ˊ �W��/z�ǽ�� �)$Qg*�^j��\rS����_c�4��Z��FX~����O��dc�˹������\0\0 \0IDATT�4��}5����Q=�Q����;B�� \Z�;LѮ1LD���s�9�pl� v@u��7�:;<p{�>9\"�!6e�h�9��PQ�^(�/���Μ��~�2_y=����IВ����#��R�ڻ1��ZQ!j�o��Q����,\'\Z�i�{Y�d�h4j)-5V�捥����;g�F�58Ag��4jQGp�����w8T�5�.�A�\ZM)����#W��C���8�=Ι9�xڱ�x�Z;W�an<���uy�O9���i1��!<a��\r[F��!��؉����9w{�.�^�˿^XX؋���[��x�heEƠd!k�gmطZ9g�ll���\"�VS����q�%!� sR~�����0�{��V��S{��D0��>��<U�� ��S�2d�&j�\'�v\r=�dnl�2\\�9��b:�\Z;��\'�K���Q�x��H��Ga��a�-t5���o��~~�[�}nf��s��/w�����2��`M��[c�,$�3�E,# z�&��V��y�ԍ2�,�^Q\r�a�Ng*���n�K�6��	S�ͬ�e�^+@�\n�����D�`��)eV�����o����!�-�����QBGf�+?f[c����c�x\0W?V�xǘ�S�q��\"��*.�76�d�)kܔ�w\Z?)����2(�s��gg\n{\0���)��\nDh% ��!������c\ry��+�.H<�ղ�����ݎ{1��I�ƌ��7�Q�ϸ�5�蒡_�=x�%�Ⱥ�[`��]�����r�����Κ�P-ֆ9�\rD��[@��uň�D;B��U�T��=��GO\r�	]�p?j ��9�mj^�Fi0���\rl̬��1?:�{ڹ�33���\'�|a��[7��� T�������o\r\"A�4�P�$D��|ñN�{��H�w�г���6!�@��(x�i�)N4��Uk]o�7{�=��9H�Z06֚��~6��	L#<j���ԝ$D%n��G5Dd��O�֝\'a���F9}�3��hzq޺T��t��h������h���D�0�aR��\r�D/_2���r�\\��[������೒�r\"�oӆr�Lq!����)YJbހW������ff�N(\Z�Fһd�0�8��k�%u&(�uThC���:4?�-�j�����&�\n}��G�#[7�Im~�+У�l�Y�;��ZK;>v�q����`)|�\Z���I��L��h�-MM�O�k��H����Ά��4���I�jm-j0��m��S(F�GWVWF$D�W���#nFFV�Z�����ʐ��}������ByT �\\ײ<ܬ�ЁΘ�����1�a�\r�Hl�f<t&�����=��/fΝ����b�1����؎�?��]o���^��R�ֲ����+��U�~8���P�Oe����`�Ǜ��Z�!G�d?�0�m�{��[����C:�L�k�ˡؿcs��ҥv<<CɝD�&D���\'��OL��GY�77 D&������4n���֜���F\'^9��l�\\�������녕B����$V�޿���\nH��l޿�\n�	ɉ�\\�	�A�z�L�[߻��t�s���XԗJ��6�_�	Mǳ,6�60<ͥ2\"�aA��t��E\"G�����MM�fѨ~���~��r�����A�h�;�aa辵(z��*4V�*��ǚ�;M��(� $��q�.�p=�^��e��i5��<K��\n��!���i6L�#�`�N=��\Zk9����a]w+(���f�r|�	�y����ܽ�8ݯr��m�8~���j���J��f����Օ��͕�������Օё�GGA|��:XX�,7�>Z-�0z��2O2SQ�=����^�n�n6e���x�ȣ\0|� �P�b*$@_\r�:�#��\r�c���0q�h�[W��/f.\\X�m�W����wε}2(��N�h�����#3�z\n��\Z�\n^����t]<��;�\0�����tIټ3n|�M�qkZ�y\\�K��s,p:�����a�G!�l�r���-7��5 ��a\"�{0@7vwDG��&�h�:P_`�k;�p��8��v��<0��\\�.���o�<ز�2)���Ѯ��GO]}=�\n� Zz/�l�=�tpp� A�𷅨�*s�l�\"k��5�D���}1��;���K㝭��wAB���S�4��dI����H4&0K/���Ng��UDݝ�w��J�����np2�3C�H~�*(\Z\0��X� \Z��;돁���\\\0DC���hZʥ٨�^�>h�l�Mਸt,�\n��VF�QyLL��Q����ȅ!2��;a��X^;8�jb�=�f��N=p�j��m���gp��krk���\'�W7���n�,��lل��7�GA��<������ծ��\0��Ń��#�f�A��>m�O�3�W_PgV����bԝ�q�i���V��\"�!�X@U������\\�s���g@�F��~d\\��O�BD^~-QT��S�!\"%�=\0�L0q��#�e����a�8:V���bopܝ`O��9x�2F��Zv!�*d�,E�6�N>D�De�!D�ѫ0��\0���\Z=���zg�����ѣG�A��u]s\Z��@M�]��u�;`=\n���o�QXYX=z��}@��p�@as�������<�m \Z��	DN;�{XM~�L݃���_�B�8\0C�V������)\r�i;N�=�q%M�Z�I�kI����Ŧف���H_]�s����˗�-��z1�X����D�.��Z@�h�<��\"@d(����ԛe���An(譨�:71�O�j��&r�W\Z����#�ɈM�),���P�C�ξj�&:Ǆ6���°�s�U���W�kcG��浵����u\r;-���y�`ΙX^�y�������Pl�7�#�b��\n��&j��-V��.0��9{�D�Yt�\\��q�\0�_�\\ϥ�!��wv:���D����\0�,؁�q:���[QD��9掖�C5Dׯ�-YÕ����.ς0��|sut/�(�8�P%H{���0Q$!*�M$!�NwCw���,�rF%C�	�H0D�,Ň�1��N�l$L\'��\'Z��؃��9W JgRQ.ʺN������kG���z���嶃N���r����e7w\0@t�~a�`���G\'OZl���tq�ude�\0�Pe����<(<�����:��ѓ���������̙��G��̭�W�fc6�8�wv������x�i�j.J�����S�\"c�H���~!�~^���<�����;��ߞ_o���(7Ĩ%�vCh�Hf��ሢ���q�ީG��fmQ����,\"�0uU2��v�N���t6b	���a�RԘN!��L��$D��E	��n���Q���Rj��.�~�h}�]k;zt�Z�<��E41��J�m�%0��nA� �N\0������ɣ��?Ƀ��ҵ�� �=w�dc�CF@���?�濦�������/�;::;dZ`ut:��	���u������9�����5!�-Ʀ&�мC�|ӧ���JW�8A�._��~�ۍ{pШ��\Z�=s�3C��2Hm\"I@d:]]Nñn�(�u����GF�ON��Ҹƕ��C�4.[$�ʪ�=�Fe͘g%)J@4�dhb���&�X���>++����X~�_�54��<-\",���.���R	Ϊ\Z+#�E|z���܌^�D\"�9-��?��S/������\\�²>q��.�K�ϳ�YGD��#⇌���\'&J�]��o^��m������])�ޞK��w\'��+Ep�ޕ��023������\"�Y�B�T7��-�E-��sZۺ05���b�Y��d������5\roQR�)ʗ%a=gz{� C���j&Sx251===5�jӯ�@íQ���3� �����Q�:��}g����Q����^ �(��$�ǯ��w0THG�������@��{c��\'�>%s�hrd���Z\Z]��.��Y_�[�M�	/�]�����	axHP�q\"q�ʐ��7��ե���<��0C��+1)��E��,�\Z��4KQ�#�ܢZ�RY/≨��y&4rDUM<y�UoOO�8�*ٲZ�?R�Q(��x�n]�G��w��L��pY��/�7����w�Dׂ����j�U*A��0+�%D��!s��\r՞ƪզ�u������s���<K�8����D�ң;`�\r�p�.\"��IPX��M����	Dq ��0Sh�(w�ԑ��@�!�^O,�CW�Ĺ_^h3�kB��l:	Ѡj\'S!�^�JO���	����AԿ#Dt;���k�$=�G��;DZ�~d�#^�0d����\\��\Z��2��;�ʚ~Ft����yc���{��?�Q���>Fkp/��,f\n��v�Ƴ儌�^\Z=}Z0��0fɻ� DCD��vbDi	�ǭ+���*P\0�I$�{�wP�CJ�$�r��Z~�	�\\���dv���G\Zܓ�蹥��R�m!z�;D	�E�Ǉ4�/�!=�A?����C�0�!Bd�)&B��bD��]�����y�.�.�^:]���m�AeE��\r����m�ۊ�ӧT�/�j!�(푀�Ԃb�U�~��Ɗ�\rY���&M��`�QgY�[`!2?��H�� �z�J}����4�4���]!�F�����������)z���~V[\Z�겧SCg`��|X��uZq߯�6gi/�� ��py�Z�b]W�@;l��w/.+\Z�Ù�GVY�ᧅL-�ğ($ 1�A\"]�hU5��E�ƓFZ��@�f��.�Eo�Mj3�[,rӌ\"TSS�rZn\ZJJ\"�h�^V5������+�D����#щ�;�����ʬF7)�pܩ�G���؈!jV$�C��r9�4n�X����J�������9߸����G<�j�>{6��؎c�\"J{��ئh�m��/$���HJ!�G��$D̐E�}��=N��.)`mS��+c��cU������X2]!$�	�|c�WV�LL\r��dU����DM�^�Z�5 \"�\0l��m z����~��~�ĿУ�eVC�$�-؋\0mk���2���I0�=�2x�ب<�{)]�rV������y�dYH�؊1��WU�/�\\sD{�e4(���\"N��^,��48�Ϣ?U���W���������R{�e�\Z&\n�(wM\'�>VX`m�C���u�4Ts��?S\'ZD\ne��	x�X4�)�o�&����� �c��D���++��QuZ��at�PX���n9��|V������$m����&��B�Ԏ���P�\"}D*ON�J�>��%�����u��>?3;{�{u��k��v.�[���ak�&C��QU��`ۖ����4H�g��,�Uңg���B,=}:Z��S�ϣ���/�`�a��劰a�tWҨ����Qʖ��t�5K���p���M�ED�D��d[�v/c�)�V�����׭ba\ZH�׋Opw��������x�m- �^�Z~E������͉��������K�ML�*�T�6eՇ��Ԑ!\'��i�\'��~�X^�(1:�oq���+�˳�3�^�]�W�m��5ꁧD�׆(�\rT��yr����>����׳pj��j\'d̍�j�i���t��Ap�Y��>[�c�P%�\"f���M�B�\'��Ֆ�U-���H�q[����eȑ�}hm��cph[��;�g�Ath!�\n����K��$�FV�+���������.�n������t��yN���p|�{|�{T`��G�$E?�`��a��֋��b\\��@ec�ۏ����>��Gw�@��}a����뷁���\Z\Z�㫰�9��\nɓm�)�\"��S֙�gFϜ�]��}|z��ԙхgN-���GgFFzz?<e��y����?u���7�ۓ~�@R���^�mu�]=�h1]��:6 \n,n��X2���Ҙ�������Ķ�I\r�һ�g�B��>@��r��ᖍ��K���u��6�:y�ku�������<��z�d��͖�-���O\Z��k����w�Ak��0N�O��7=��\rQp�GS���Ԕ,�@S�kTOb� ���NH٧��;^��J�ϥ��;Xt���%\r �������kmv�b#�A�����TK�T��/��B���=@͙����3�S���鑾��F��֩��S�>c�t�O���{\Z�E��L���P%R4?>����qo״ʷ�z�B,��,K�Xjk1D�U�ٶ��e���\0���~��������u����\\=.���#�խn�=Z}��珬��l��7�<ZyT���y�G6�N��a������r����y-�\nE�UE�61�\rw�ˤ���\nE�^�y�v�x��4�~�ۗ/_n\\�y9�Ɍ.�E4�=MZ����,�5G|���҇]���N/��>ub�T��D҉��=#}�zz�<��Y81��X��g[N�xd�ȟI��9��82�U�\nي))Z \\4r�o��}�4\0�y�Ꙓ���_��?qb-04\r��Ğ�{	޶����\0Qݑ���͖���Y]Y)Z]=T\0�P٭��7��_X����w��ܿ�67��5�7���~������ Y��<�ۮ5\',�b���M�#�������F_�^8����w6عg��n�\'*�!Ձ�d�$�U}z����:�N���y\"�����yd�~�������W�f�S`mgNY���tqPk�N������H���ȚI�-�u����^�Ef%3�l��vQ��e����������Gh����I���*R�;��������Ֆ�uu��b��\n��\0*�D�WVV��kX.��|�I�~�G!1DgF�\'jx*�qg��~H���%2�>�{��5Zi��}~v~���N��DDC��I,+�0� �\Zg��J���b��~�@d�\'zN�k�ٙ3-\'FϜ�91��Tϩ��gN=:��,�w��넉/���3உh�נdta\'G�/Z��\"n��0zt��k�V������-y��D�SM�`v-M�\r�����m	3D���6),����S����Kiyqe�����c�[�rK��[�M	��8-�B/��UH� 肹�n�h]��a�!yʄ�\0C�\'�s�ӝ�N6{C���q�4j4��[��������<� %׶FÀ����|��{{�^���Bm��q�V��걱1�(��~j->��揮��x����W�&�@��y]�\r�j(cb��UW�:X��!��Q����泽1Ղh�%3n[_cYѬd���`INQK0�zN�B�$iU���1P�`K\'�V�#���`0\Z�����������a9���\\Z9�a!۞���Q�Y�aۤ���Of�X�i�gc���\\,�t��~]U\Z�/Ds�Gh_�\0\"3[C�{[CU���u��֪�6A�����ܪz�>�5־�������ڃ?������\'CU����(������I�[t �<�z�<�/X+Z�L�C�!�ݝJv7�m�[۷�$�Ah��Y��%��qo�pл�֝�\"�/I����v�~pJھ?��3��d�X\ZΎK�h�wv���&8��ޤ5)E����b��h��o\"�=OT>�Z�JyX�%�R,+(\"�Ě�M�_��f ��J`�\Z�Y��z�Ԧ���)X�j��l)�}��un��������?��lhG3$%���;p`�3�:aV��l��2��r*!<6ח���K;N�����m��T�N\n�m��UeU4;��tHcƾ@��zҁ/\n���*o�\'�7ʉ�e?_�Z%,͓�p�ߓzO�͐ �Ų�X��I��K+����ڟ���D\"�J�<c�i��MᏄBA�CJܦ�¯����[�������7f��p�VE\"1�0�Ɗ|�A��Y�#���!�ne�Ӳ�Rۼ0�CG�˨�ml�����y~�4I�&ʁ���T;r�S���M�.Nfh��oݚ���EJC�_���2��x��g����Q5��\\���a5Dv�R��!��D]��L�D/he3D:$YI,��&�r�4���\'���a0�L����;+�?;C!������x7D|�fdt\Z+@E��ԗ�Z�RAU}��|��.h�����q*SK<B�|�0.׀��esծ2�$\"\Z4��bobAߊ��\"c�\n�q<+���4��?;|(�Y�!�7�H#���^�! i5�ɍ92�x�mf����F�_\0\0 \0IDAT�Y���34U���\0���ݿEү��ٔ&���ȬMv	cU{���g��_Q�Wo����\n��@Df�p8��Qa�Z��ԍ�G�7�?COTu���셥�����AD�E/�z$K�\"�\\6����fn�ư�,>Z�!����qG�ѿ\'	D�\"�i�Y��K�X��\\��{��l �q(��D�sr��l_`�̡�w@-��Ý��\n������Z-ߢ6�X|���=�~SX�_�5��~̟Dy�\0Ll�\r�uV�U�-T}���Gz�| c֪���!�Q\ZSԤnl-��\Z�L���S{aqw���aݕ�gK��9���� ri�^�x�̌�D��D^�r��%��a�-��=^�)B�\"Z�j�!H�}�ɚz&��\\�t�#�������hO��@ľ�R!uv{��A�F���[��\0���pD��8�q~GŇ��ȗ�3�aQg2?��\0nc��Z|�BԹ۲pDѷ��vO� V�V�S LBk����vr��J�z&�ؒ%��Jf��$c�����ŷj��F���q�.�\0^~�9`��3��]I��ﲫ\'P�䦿��뢕�Ϧ��6>N��_���T�v7|�X����) <�I�vk\Z����bE;e��a�T�q{c�ahj�@�D흫�4k�WչW~��Q?�d��ڏ��/�����zՆh�|o�7�wt-�y\n�-��<<�MD�C/�z�@H�(�E�j\0��X,m��k��eR�����2��yt(�,�.վ��!]\ZX8Ĵ����%�MQ�	]�5TCŭ�f)���Od�&EIVU5�x��e�_�9G�aD���/۬�(��X��ߓWCJ�\r��O���d^D�:�dyn �� \Z=�ǵ���ᡣq\0�e�\0��-�(x�/��m�����S�ç^�\ZNU��\'��]�������z���Rq�@��*�V��3ff����g�E�1Ӂ��`���*q{d���,�I�!F��\ZU�\rdQx8�<4;��9�\'EH�h��[\nЁM\"�@��$Uͨ|���I���^�[��,���\"E,L�����@c��\0��}\'Ĵ��\\�+k�]����H�ȝ�61Z� ��*�!ju����Y�!��\Z�6���r�\nQڢUuv�A�\n?�7�j���0�H-w�����W��;;�Ud`�\"FVW#1N�L#�P-�o��]<D��:�*y���U)s{.&4���,\0CW�u�C2D�n ^��3;Q�{M�|�*�(�d9-Ii\\t �۲�-��|��Qe�G�z2>�?�y�4���9�\Z߇\"�ϡ�����q,�x��r�)�;��i�p͛;��K��qE���L��-\'Nt{���D��@�Y�*F�V(/�� :\Z� �$1�c�Ix�j�e�:��pש��v/B��ظ3E���_`C�6����v�ْ����`�b�DvNcfV#�S���M����Z��r��-Y%6놨�G�9�a�0.]�t{.)� S�MZ�|\0���h\0Q�B4a�FCg�G	n��6��\\]\")���mv._�����F�`�r���x@�k��ּy�@$[��e3t�������5˂(>|܂�ԩ�N\"��9揿Z���8�h�@���o~�\"@!2E�Q�3f\Z��(\"x�2K�7�L8U���\Zs�g�-a�YXhjZy�ƾ�j�	(���)��zN׻\"F���㫓����p��2|}=���8!RU�ʍ�6\'n� \Z�i��y1È\0�ȵ�Kp�5�T4^�Vj�QU������,�T�1	řQ�l�\0L�G�JKvCt�8J�ќB4V�G�b{�C{��X;�D~�\\�˽�SU��\0\"���ǪN\r�Jn�៪=�^�_���m��?k~�V��̞7L\"�9\rU*�7���4:t�j��)�C24ٴ�)����tmq�������&�t��[�G�}Q��J ң]F����p��e�<rS/�$���� JNܺ5*Ƴ��b�(ƀbe,��ԩ��HW��v.�t�+�\'N��9=˶��EID����A�bMNݿ�D$Tmg����t��{ę��lY)�c\"0��L�m%����haa����ep���(S��qS����y��\r�N�KMc�������J���6���mp����ڷ�ζ,�F�O��DK�s��\'�zI��]�.���׋j����8�B�w�QӢ��J�zQ�D�5��P��(r,\Z�e���N�U����q��tgTW���ub�Q�����s�d1Tz@�t��l�;Ƈ���3��Ϧ�,����c��]��N>x\0Fa{��i)�����*�%U�֣ik��}�x韋�9&W9pXpI*z`f�[��m/�v�\0�R㈗��p��B������!D\ZB��ZW�f�I�SE>�Rg\0$���?̗�G�mZ�Y�r���	�lk�&?���y1�Q!�.;��,��ҭ��͹ӵ��ch�<GI�{�}ؿ��%e�ҵ���Mօ�uf����4�JK��&���yF�A43k��\"��l�\'mDӻ��N2D��r�l)���:���-*�z��.<>_�.&�H\"�.�>.Nf��̲r��C�0�����2	4.�/��R���Jz:��U�7�UW\"�t���e�x���{Ƨ��)\"1^���ayM��D2\\%C�Z�˦Z��.���D��|UV:B��\",8��~Lȁ�W�v�����z����ļ���@�|�\'1��(��尡�{c��\r�2۽\')aUU)�e9�	+2<���Y�d)eQ�d���^汢�J���f�:0:N�;h<�Η�1���V_,��@���z\"�ܢvGr�2twjs3A�6W�\"��A4T��E��\\�.k%��|iݯ̷45����[�����f(d�.��j�Zjk���^�P�>~KѰ\r9�ȠD\\�+[i���L�\"�EÜ�����H�P��3�1\0N?�0����.�H��~Y��[�H�{L�K���Y����\"ިw۫��R�c�D� D����m�c�=�<�$�hs������ǲ�1q�^L���L�8B����ʲD��K�- �AW.7�.�W��v�-��������|K�Նօ�ݥ�͋���Ņ���ږ�	GXm����kS�������{�zZ��{|,�&���x�\"���C$��o���﮺��D\"�΅ѾX�#z�[������������ ��bm�DO���ۇHjao,�%�)�h�*� ���:ɲZ�&6i��� �\Z�P��`1�\"����y@ĭ�f��7��o=C���<�l�-�5-�\0C�Tfe�׮�6]���Ժ���Z��A�Н��yjz��C|.CVy�������!�*�D����.m_%�B���r�(��^N��*�u\n�0��	3��)8����Y�7�D{ɵ�dr\n!_W)Tu�%��k[[���8���p��!*���A\r�G������F�� $��o��G���`萪�~��`~� I`˃ģ�v�J�B����w\0�プ�6-<þ,r%%�A�@d�\ng!#I�y�\"K�oUh��)b\n�X4ˤc�=���+�*D�)(:�\nZi3޶���G&��\0D��S����ީ�S����ر�c$Č��xN�=����@�6LNC���1��(�V���;Q���q�I��=\\�B���֖�g���R�K�mo5/^�_IcCk�R\n���E��!��V9���{�%q�E�d\Zg�\"V��(�<���8�(�&I�Ů�)f( �m�L�v�P5�T,+����X�P�����I���r�bO�����d�BO���`�=/\'��/\0�P�o��^\\0��4\\����+�\rMqWκ�=Q��1��!rcD�{�g]�t�eI��>d��.��^v��+�/]E��6�gI\"�9\n�{5�6�x���\n�Q�!C�-BQ>D��l�$���gم�Xt�lk�g5����с�-�c@\0�n���Ŏ\0�(B�3\0���pr�@�VUչ���l{2I����BT��/M�5c�B��Ɯ��:\r�)�n���uEY�ڏ��Y���lE��{�Zb5��[AL7��֒�!���(��t�Mv+�.^�&�~�]����3�A�5�D4n��!rS���\"�,�hj��]s������V�\ZjV?�DÒ\"ɞ�Jދg܆�Rg[c��cCɻ	Tgk�����z�X�ӂ�h܂���z�>���s�3�/5]v����6v�풭���=��|��!\Z�E��l:3;��`!$��#�x�����^X�3�b���-�b����*� teѳj|$�e|�V���̎Sk\Z�!���!�2 1��I�d~�\n\\��Y|tF1{A�Ά�{;�4��Z�6�!DNs?���!����ѡx��B��j��@D��\"�m��Qa��Qtq�vlv���bK���,�&d���੃�ch��-�(bnϒl��U�XH5�����K��t����8Fl������+���66�H\"�I�M\"�e��6\n�����]��Y�\"����EbY��I��]�8���#��kj^st��#N�]\02I�)��¹	V���:A�%��Yj�����d�ʶ�!�����K��k\r���|lb������ݽR�d�8D�!���{}qޖ��<\n������r���|��p�8c�������3E!�D�!G�}�XD��$�i�i� �E\"�OD����E�f���93�٘:w�ю�7��5lh��E�/�7���~\"�\0��)ڄ��\"�4w��H�-�����Y�Ɏ��j�~!ڇ\"��h50�5oA$ˡ���Dv|�np}� ����3�0Z4����ƦǤ���P��(�f����6�i}�/�����X&�H}����\0\"b	D���(��eg�:�\Z��t�$A�E@({||�\\_\n�����;3Q���=/�wŉ���<�&���}V��=��wq��\Z�i`����b[j��ݳ.H	`dmb������R�F��f����ue2�vwr-���P	��h���[C�������#���ĸ~��mD���@j�fZh�I���FqI$�nID��)ǐ=����/\"�X�<R�>&E *�D�k��$e��J\"��F��eUv3��x��S:3�%�31��r����\'�hT�Ҫ��%)��D\"�����φ��QC���聏D�P<��O�M�=B�Q0_��k�g7,�2����\Z׻+Wl��Ƙ@�D�͗�F���!�F�d٦\'��ق���.�{��)��Ŵi���^Ӗ��5:�933\'gz_9�e�*�@�a�����7�4{�a���U(�UMU�*zQ�(1Y=�@4|\0D�SČ��ۓ����:ܮ���D1��+2�!�-��u�f��i�jhG�,�?���_-F͵o���j:�p����P�dC$�A$Y\"ȖC�\";>��?n�ｗ.���0D��=?�$�DV�(�-��h󢢫�ֵS��%{@�#���$�%���y�!D\"-�!QV�\"J��j��U9��DM\rH��o��`�$FQ��	D����@ӓI�=E����?i-� z�Y���\'�jQٙȋa80~��^��ڗ.4�>3]��2��%҂ku&�3Ir,j�\"�����e���I=��{��Q1�P��gt$�����R,�e�`q���W�깃�E�2��q^��w�s0C��F�����CE.��ʬ�z2\rLqT$�_\"E}�d4ۯ�I�(NP����7փD�wI=)m���g��n��7U��tezj�jj�1����n��6V�o�q[8Q�\0s���4�.7m���\Z`������~o�t��C�AW:�{�0�YC�x���h�z���ZD��Mü�&o[��X�SX��u3$�~?�)�j���)A���J�P�6�/A�h�MU{7��\rw8�\n��Q\ZS�6�S�����`�2�i-C�t5/\\�=�q+��F#8k�Tv�=3L�`����\'�q�<�e1�ȡ\"b��1h���C@�GLmc�N���5�`~�|D4ɫ�\':T\"&|d����K�F9��!xJ`�`eV�t�P�Ks�2�>9\0���D}�L\"��}(�.b�cպ�%͵��*\r\"W��qr�6DW.��53E�i	�$3��6�@�|ge᭶�66\"�3e�LG�qs��/@=�����G���g4�щ� ���������	�\0���X>\n��:;ըI���G���Q����^�Ą��Fd�5�䳃S&]���H�Ɂ3\'��D(44II����f�E�qL��#�(F��	\Z��p�kHN��[��\'l{��Y�]\\\\lmX~L�o������2P�b�\n.bW�hU\Z�f�lFsS�Ԋ��8XD| Q(��2���t�fd(�����宍�m�iSv,K�p|�Q���\\c�2�cp�Ö���G��W�\0A4^\rb(1RS=������\ZOxx�4Q�{�i����/�fm���XO�JYO)�J�L?�\0\nGZP5m���\Z���e��(x��� ue���j�_y�k�n\'��8D�hG$9�b�-����#���˱���[�CN���HX��E��\'�\'��^�G�� bs�\"�;jz2�� �ΜF��Yq\Z�	��!|x_IT#��(B��㷳 �X �^֌��m�����e%���aߪ�&t���&�c�i>[A.痿O]�y\"&\r�1����o���*����$_[TS�L�Ùւ�;�H�|X��1Ӗ�c�A��<�q����\0�h�Q�^%�w�fsx��ę�3(:��`��/8u�_��|mF��,�0�(��հ���=���p�d3=�����L���X�a���/=�^#�s!ҹ�~!ː���Ŋ�3��} �RJ���lT@����:T9�o�D3��K�_�&{�w�e�qZ��H���B�CDR���q*�F�Cɚ������fhd��H���S\'�*ژ4J�����= �D��T���(ž�5K��A �\"e��b�<�=���i[|��!�+�϶��H�.��B�u?O���k��\"�C������C#�hڐ��.:���R���Y�<���h`؁�3/TT��O����\0Dg�2\n��ǫkjjHF$�8#�Y\'���ͽ�=� ������l�RV�\ZN�1�h��\rQLJ�I{�7׮}o���<�GW.�Y�Dy�,�,��Sc;�l�VD��6#mml;��杁��c�L�>��c�Y��t��5�\0Dy���\Z)\Z��\"j�ԣ���E4N:S=�<�Q�����3�R2t���%)O$����{!�\n��YY����s\n\\�+�ӕĬv�c�A����d́��\0�.�\'Pt8#\ZL�����<\\a�EX�)�\\9B�q�Z3�\n�\\UX���Gc�غ\"	1�d�\'�n���+�̚�el:�QI�w�\"��\0)\Z��\"�f�N%@��Q���3��ՀL���́��x(^���P�I��#�\n^���\ZESy�;��O:�{�6	]ne�6�\n��$��g�����!(!D\r�\\�ʘ�!>\\|�����%���&��z[��b�\ZX�Z����rx*�@Z�/�\n�8��(.�7\rM�Ay�>�3̈́�\nX�#�dɓ�C�yv8���t��j���\"!����U�\'&O�\'\'�O�\'�kD \rT����l?=�b���إ���	*P2\'X}� \Z�t6j�KKV�1��sȆ>�L��B�����\r�1�iY�ۈq�B�D��j!�lF�k1�sCDC�\r8��/ܝ֚.����� �g�C�n�D�*��Ds� \nR��KϢh���W�����x��U*D�C�C���k�A�m��x��V3��9\r����L��P\"DR��O��Ct�������*z �Ks�*��V4)����a�} ��kvx�������@�$U壑H4ʰ��(��sh�8�8j��? Ή:�Q��\r:�(E����,%a\nѕ��g�E����P 2v����̝9��SV!������G����e#ɂ��L���؜<C��<$0h})ptDO�IJ?Y�S$ςD�UBȑE�Ȳ\0DmY���&�a֕Jj\\��٩�2��)�a�@E����@�GwQt����\"?.�Bmh՞&�\Z^�<�x�⛂Q{�n�&&��	�CBĚɂ8���G6Q ��r#1$�JD��wubs���i4���ٙ�����Y��q�F�`�n�\0\0?IDAT;A\"fV[�{�]D�Wr ��YF�Y�+p���e2�A�x^ULĢdr�2,A%#w$�os�ޛ>*\"p��|\ZS���:O����(e�D�$�z�L�h9�}בkY�C��E���S���\"��DP:]}�s]����c�>3���$7������\0q�/�`��ѓ�����4HD7a����c--\n��8�=�|��h�\Z3+xY��K\\�pt�a����� B~8���¿���g��J�R_L1s?��ᬌ<�D�I����D�M��:$Dk�)J�����������\'�O�	%�����\"$ƞ�\\m\\�>S(�qwu�h��K����u��@�=y�V�g5k�4��d!vc�����ϭ~�y0�yB������d��\"\\1E#u\ZU�r��Ƈ�-Lz�=x�Ԇv!&8�)\"�ُ��2�^�&ʥh�J���T\":g��T3BQ�XGɑ������l�)1h��W28��E�,A�U�.�O�+:A\"v�E�g�4�d ��:s �o�.\Z�\"�>8�0�\'?d\'R�u�3�*�y�v���Q�U�$��7\rm;��bN�J��d]���mC�V�9��u`Ҙ��Y%鑴�s���x>E�E*v�~?�@�(���ҙM0��:\ne�!�)��_�\\���a�@�:�6�&A\"��$f���f�=Mբ@@�Z�J�\r��Iw�	ֶ�������\Z6D�o�!�!��H�Y�ɕ+P_:�V1ZS\"���J���_�A��_ɉY_0Z�E�`?���w3�ህ����_~��O�M�Q����2����蠃�ϛ�G�Lm�ђ5���%l$�Q��,��ta�n���ySN��&�j9\"�+ךZU2ۇ������<���V9��L���e	kόlu���3��O]m\'j�Pr��s�b���]T��G*�y�\'��Ř��=[A��*��jJM�\'F�D-�,�����Y :Mm��Ӈ��3��F��M��+��=5������D��������&q�pTM�l�@\"N~�`�7�{ D8�Wf�h���\'��V�u��RJմX.D?X\\\"�hjsh� �𳮪��]���K>�����4��D\\̤\\��\Zmo?\"�=2Q9X���\'@D��WV\\B�*�H��5\"��\r|������*>1�.]�><=A�r!����w�o�����A�,ļ)QO��7�*��C��\r$�it�Jb�����䀓�\r���(W-g�p�\\�>���,M��i��:���ʫ�y���|a��|��t�03ۀ�\"�(���BS+���0D�9\\-��0�a�m��	�����Y�TDt���,�F�\"C���wTP��$���i���Ǵ���Lp��Ks��}u�����;w���A[���rN9@��G�C��*6b�0E���h���5!����HM��ɚ�D4��\0Q^�+	5� �&�|�^=��?�Qe���}\\��76�Z���t�d2���A�pc�i=cp>��	wt���������@5��(�J#�NVؖ��b��k�\Z�:3�L��D+���@�n� D^�萴�^�+��L��f����{��[����;�� ��6��I�a2��~�6y�|o*�i(�Bt/�]�!��X�9H2��k�C�������O���ۦ�(�0�:f�.ʢ�^������Ӆ�v�Tb �������:��9\\�ᓔz=Z�s]b��.lԟ�1z��9�NQ+�����L)�����܎�BQ2�̧���ZF��i�Jr�!���9R&~�Q�C@T�����༺.�.-�����#��z��*>|&���o`֙牺� �3�_a��L��O�jʟ��������|:��_���I���f~6�	\"G a�\r�l�I�v��>�.��]3�!:����D=���O0xC���R�J=����f�7���#}~\"Y��=}F�˨K��I�a�ސ�1\n#���D�[�v+����q��V����~�e����x4OO��sLm˥�S`EY�5��j�7���]��H��#��\nݬH{��WVҪ\"O��z@�\Z|.�L�/��C��9pc�o����`����w�����杽/�y���7n\"D[{7n|n~@(��\"&�\Z���GFHL��-�~v�9 �_�]\'V5����W4��W��)����Q�{�F�\\���.�+<_������\Z�D�O!�S����{�|���T+��^\0�z��]=-�����-mߛ���+(�ܦ�K�)�\'�hvz\\J�#[��\\%:0o��;��5@�qF7H�WԊ�T��ۭG�{u�\'wX�\nAĬ�|����?�go�38��i��Ҽ�?x��Ї�?�߄;?B�n�_���/���,\"��]�EIJ���PC��0�̥鳒5��T��A\"�D������pCG%�^V	�\'��3�2uڼo�q ��sF�?��g}]@ �33�0@T��|�z�oi�@�ˍ��\Z\Z\Z\Z/�v��K��Pb��,t0+ɍ�l1t��>\0�US+�P{%�}>P�G��	���%Q>߱\Z����L���\0�����7��+�G٧5a��	��S�w@�����̟��h�>0W���7n�$*�2�<� �)��ș3�5��2�����	*��g��\0������:dN�˨�ի ����.`J�+�\"�qQ=��z�ף�T�����Y�iV\Zr���Ez}��K��i��\"{�#;\0��F���j8cy\Z��J\rE|��!��b?9�Fjl�B=������z\"D��>p4u`���6��N���L��Sf��Ss�m��ɧO��}l~��4���������濁����(D��1p��ȽRzA����#L�և�(x\0D��,mv�*���%R=(�t������ �z{@4\\�d��	D=}����|oXN+}�����i���\r�7׈����g��V�l��|�.^ljmkkEf�|���|��&��UN�\"������C�XU��G4@�utg^���n�6�~^�чԉ��d?�)�~����_���C�Bl�&G@s\r�v$h}k��t��9�Ə�\'���u4��\'~4��G��f�-�\\q�PVy\Z|�� |A���:6?G�D��S���ްf\0*��q���1z5�W�(�v�ij��C�̆+M��a��AZ�ABy\Z�-?�����3�|������ؘ5�{߃Q�kƛkk[�����B4=�\"kN��K�[�B�D�V2�#�(i`G��\Z��u���p�Λ���Vf-��4�ѝ�̯>@��� ���ߚ�%v��ɷ>03���O��[7��7���7�!D�5�~p�����s������>��Λ����$�X�ذ���*���}���Ґ.n|1R]}��;\\UL|����Z)@:@E�B���z����������.^���p��4�^}`��� n��7M���+b^Q�^���f:�d��GM�\\�������5\r���.Rfmp�DwY�lY7�ߌ�#���n���������o�~��ӏ��O�}�潑�����L큁4?��_L~|N	�\0��WJ�z�p�������p��x�c(�u�O3���ۼ��=#^�qJ)�Ӕ$��C�$�x���v>|����o򴏃p����ʈ\"H5^���7\0�\Z��\0��^}�؋×5�\"˺װ`�!}�`j���6\'qP�|	�drn�u���hC�h�ݯfCd����ͯ�~����l�/޹3��O�1�����F�����oܸy\'���� �>���w��9��_����� ����q�N�w�����b�sI�s�LZ&����TǮ�C�ьlW\r�\rn���T\\���Ec~�R5��4=�$�ĉ\"oJ�]K昰X#��&P��6��\\1�|\0��$�$����񗯿�+��.5�ʘ����G����e�VT�UfM�e �7<���]�!I��9��7���ݛ7n���6pc`�&*�o������{I3����>0rs���F�o~���[:BS�2��ؾ���s� �������l��&���#�A�Χj��\Z\\A��7��,DE�_F�N�������0T\"���!RM��1�lʅ R$Q̩RI��p���$���7_�K��נ����M��B��ۖ$:�ܓ��ʣG)&M���ѩ��h�џ)�񔃹)#O�����?����A�o����xr�@���1;�q��;�\0������w��;,�H���������>�|�G~x/X\ZCC���@	���ZȌ��~.A4w{ܝ5#��tC��t�b�Z�}1j�hZ�f4�\r\rn\rS�yd���p?��ۗ�q�An\\]ޕ1+U\Z���.��Wր��)�jZ]��Z�;;6hn���^�$���������7ĕk�غ��1ֹ�a��G��s\0�tz�.�૎*_��Ϫ�����!��Qjo{:3��2fgff�������+��3R�������3�zl��9�5��u�;������\0e��z�Ui�\\a)��؄����<0<G��1Y��xL|IFeFŝ��Q����KQ dg�\r�c�V2��3=�*ו!An�R����6_�����4g)�B$����)5Ƽ{����\0��S��3}�#�=e�燞r2o����g垯u�\\��owЁ������C��2��?)S^���C�^*�<~-����|z��\"<>��U�b�����v)����xO�m�+sh$x�w{���L���|B(x�1՘]i}h��P��1[��@4Hd�ilg=\\�X�Qi�{�@�{�\'�hv=z�\rH��/S�JOU+3$�mV��e2��9���}�VI!r�����<�\\%!`��d\ZG��{�����I�G9�.v�)���GQ���\'�=<�/<ʃ#���D\n�\"q�<�xd���H���ޓ�T�G;���ZQ�=��ת*�����;�yt���۝(�JP���y������͏����RF4t�tƌ�=� b�L�ՠ�ӲU.����}u �\0\"��o{{�p}Od\'��3\0�Ugf%��q]朮G��J��{|]��Oc�n��} ���]��h�9R�?���(�kGˀ��+?CG*�(?�H�Aɣl����߅w��].��O_敲@��#���y�i�UO�+^�^ѲO�1���D���쓊���{�QV�\"W�7p��\r��������f�d���!��v{��D4H$Y5�4����z����R���>d�3�:���F�$Y��0���\0Q����\Z=]���Qi�� �P�e8�Li�n�H��\0�T�9b;R���HQ�_��9�(�9U�s�o=<�\0�?��F<DW�:;\0u��O$������O����\n\Zܞ�UPj�ޘ�u���*��2�H����[��ޯD�?��+�!�?����>�{����P���y��ds+�K��8�+��6K�c�Ebd�b,��D�p� \";�$���}�X����5I%�&���D�L/(�j��׵>3ӫ�C��t)�i�\"�tA䊿�gb�n]�/�f>�g���ly�2�8@t4r�8��c�~�#�e/����q�(Ek0���oy��k�#�tx�H�W���O�~��b��i�}��:~T��8*����@��U��~4%��!:�8C�	��B(�f���^���({W0D-\\�A\"rmI��0@W_��S3���7²�Ōt�����I=탍(�KiK ���������1ʹ�rW���j���e3&�{��k��@\\��PF��2��<�eG���~���/{�����.~��RG<G~�wN�Q�q\"�۝�o��-�8^vD�ė�7��Hg��Q>�(;���4�<�C�>Bt����`Nu)l�A�9Y-���$A�0>H�kX��;�1��RL��m��ֲ�\Z%)ndA���ے�s}��v�l�\Z(�v���S>ywu�3�\"Z!��B��]@bME#���2kY\"�@\\��4�x��\Z�ci���Ų�̪W�t����[UU>}�\\���C\"TR1�� �1sեu]�2��b��*�Dt^�����:ODv�c徽\"U�#��!/͆�1��0\rN´��\rD�K���/*��C��*�g��yOo�Q�-�llX���VD�T+ĎH���HE��]�gt@�3X���d��VU�)���Bg�Z�e[�9\0\0\0\0IEND�B`�');
/*!40000 ALTER TABLE `filecontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filemodel`
--

DROP TABLE IF EXISTS `filemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filemodel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `type` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `filecontent_id` int(11) unsigned DEFAULT NULL,
  `relatedmodel_id` int(11) unsigned DEFAULT NULL,
  `relatedmodel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filemodel`
--

LOCK TABLES `filemodel` WRITE;
/*!40000 ALTER TABLE `filemodel` DISABLE KEYS */;
INSERT INTO `filemodel` VALUES (1,'200x50.gif',449,'image/gif',3,1,NULL,NULL),(2,'200x200.gif',712,'image/gif',4,2,NULL,NULL),(3,'580x180.gif',1898,'image/gif',5,3,NULL,NULL),(4,'googleMaps.png',39873,'image/png',6,4,NULL,NULL);
/*!40000 ALTER TABLE `filemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamebadge`
--

DROP TABLE IF EXISTS `gamebadge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamebadge` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamebadge`
--

LOCK TABLES `gamebadge` WRITE;
/*!40000 ALTER TABLE `gamebadge` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamebadge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamecoin`
--

DROP TABLE IF EXISTS `gamecoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamecoin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamecoin`
--

LOCK TABLES `gamecoin` WRITE;
/*!40000 ALTER TABLE `gamecoin` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamecoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamecollection`
--

DROP TABLE IF EXISTS `gamecollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamecollection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamecollection`
--

LOCK TABLES `gamecollection` WRITE;
/*!40000 ALTER TABLE `gamecollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamecollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamelevel`
--

DROP TABLE IF EXISTS `gamelevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamelevel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamelevel`
--

LOCK TABLES `gamelevel` WRITE;
/*!40000 ALTER TABLE `gamelevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamelevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamenotification`
--

DROP TABLE IF EXISTS `gamenotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamenotification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamenotification`
--

LOCK TABLES `gamenotification` WRITE;
/*!40000 ALTER TABLE `gamenotification` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamenotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamepoint`
--

DROP TABLE IF EXISTS `gamepoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamepoint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamepoint`
--

LOCK TABLES `gamepoint` WRITE;
/*!40000 ALTER TABLE `gamepoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamepoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamepointtransaction`
--

DROP TABLE IF EXISTS `gamepointtransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamepointtransaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  `createddatetime` datetime DEFAULT NULL,
  `gamepoint_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gamepoint_id` (`gamepoint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamepointtransaction`
--

LOCK TABLES `gamepointtransaction` WRITE;
/*!40000 ALTER TABLE `gamepointtransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamepointtransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamereward`
--

DROP TABLE IF EXISTS `gamereward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamereward` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cost` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `expirationdatetime` datetime DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamereward`
--

LOCK TABLES `gamereward` WRITE;
/*!40000 ALTER TABLE `gamereward` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamereward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamereward_read`
--

DROP TABLE IF EXISTS `gamereward_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamereward_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `gamereward_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamereward_read`
--

LOCK TABLES `gamereward_read` WRITE;
/*!40000 ALTER TABLE `gamereward_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamereward_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamerewardtransaction`
--

DROP TABLE IF EXISTS `gamerewardtransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamerewardtransaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `redemptiondatetime` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  `transactions_gamereward_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamerewardtransaction`
--

LOCK TABLES `gamerewardtransaction` WRITE;
/*!40000 ALTER TABLE `gamerewardtransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamerewardtransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamescore`
--

DROP TABLE IF EXISTS `gamescore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamescore` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamescore`
--

LOCK TABLES `gamescore` WRITE;
/*!40000 ALTER TABLE `gamescore` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamescore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globalmetadata`
--

DROP TABLE IF EXISTS `globalmetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalmetadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializedmetadata` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_emaNssalc` (`classname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globalmetadata`
--

LOCK TABLES `globalmetadata` WRITE;
/*!40000 ALTER TABLE `globalmetadata` DISABLE KEYS */;
INSERT INTO `globalmetadata` VALUES (1,'ContactsModule','a:10:{s:17:\"designerMenuItems\";a:4:{s:14:\"showFieldsLink\";b:1;s:15:\"showGeneralLink\";b:1;s:15:\"showLayoutsLink\";b:1;s:13:\"showMenusLink\";b:1;}s:26:\"globalSearchAttributeNames\";a:4:{i:0;s:8:\"fullName\";i:1;s:8:\"anyEmail\";i:2;s:11:\"officePhone\";i:3;s:11:\"mobilePhone\";}s:13:\"startingState\";i:1;s:12:\"tabMenuItems\";a:1:{i:0;a:4:{s:5:\"label\";s:80:\"eval:Zurmo::t(\'ContactsModule\', \'ContactsModulePluralLabel\', $translationParams)\";s:3:\"url\";a:1:{i:0;s:17:\"/contacts/default\";}s:5:\"right\";s:19:\"Access Contacts Tab\";s:6:\"mobile\";b:1;}}s:24:\"shortcutsCreateMenuItems\";a:1:{i:0;a:4:{s:5:\"label\";s:82:\"eval:Zurmo::t(\'ContactsModule\', \'ContactsModuleSingularLabel\', $translationParams)\";s:3:\"url\";a:1:{i:0;s:24:\"/contacts/default/create\";}s:5:\"right\";s:15:\"Create Contacts\";s:6:\"mobile\";b:1;}}s:48:\"updateLatestActivityDateTimeWhenATaskIsCompleted\";b:1;s:46:\"updateLatestActivityDateTimeWhenANoteIsCreated\";b:1;s:55:\"updateLatestActivityDateTimeWhenAnEmailIsSentOrArchived\";b:1;s:51:\"updateLatestActivityDateTimeWhenAMeetingIsInThePast\";b:1;s:15:\"startingStateId\";i:5;}'),(2,'Currency','a:4:{s:7:\"members\";a:3:{i:0;s:6:\"active\";i:1;s:4:\"code\";i:2;s:10:\"rateToBase\";}s:5:\"rules\";a:9:{i:0;a:2:{i:0;s:6:\"active\";i:1;s:7:\"boolean\";}i:1;a:3:{i:0;s:6:\"active\";i:1;s:7:\"default\";s:5:\"value\";b:1;}i:2;a:2:{i:0;s:4:\"code\";i:1;s:8:\"required\";}i:3;a:2:{i:0;s:4:\"code\";i:1;s:6:\"unique\";}i:4;a:3:{i:0;s:4:\"code\";i:1;s:4:\"type\";s:4:\"type\";s:6:\"string\";}i:5;a:4:{i:0;s:4:\"code\";i:1;s:6:\"length\";s:3:\"min\";i:3;s:3:\"max\";i:3;}i:6;a:4:{i:0;s:4:\"code\";i:1;s:5:\"match\";s:7:\"pattern\";s:19:\"/^[A-Z][A-Z][A-Z]$/\";s:7:\"message\";s:35:\"Code must be a valid currency code.\";}i:7;a:2:{i:0;s:10:\"rateToBase\";i:1;s:8:\"required\";}i:8;a:3:{i:0;s:10:\"rateToBase\";i:1;s:4:\"type\";s:4:\"type\";s:5:\"float\";}}s:20:\"defaultSortAttribute\";s:4:\"code\";s:32:\"lastAttemptedRateUpdateTimeStamp\";i:1425465175;}');
/*!40000 ALTER TABLE `globalmetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagefilemodel`
--

DROP TABLE IF EXISTS `imagefilemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagefilemodel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isshared` tinyint(1) unsigned DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `inactive` tinyint(1) unsigned DEFAULT NULL,
  `filemodel_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagefilemodel`
--

LOCK TABLES `imagefilemodel` WRITE;
/*!40000 ALTER TABLE `imagefilemodel` DISABLE KEYS */;
INSERT INTO `imagefilemodel` VALUES (1,0,200,50,0,1),(2,0,200,200,0,2),(3,0,580,180,0,3),(4,0,580,180,0,4);
/*!40000 ALTER TABLE `imagefilemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import`
--

LOCK TABLES `import` WRITE;
/*!40000 ALTER TABLE `import` DISABLE KEYS */;
/*!40000 ALTER TABLE `import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `createddatetime` datetime DEFAULT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `createdbyuser__user_id` int(11) unsigned DEFAULT NULL,
  `modifiedbyuser__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'2015-03-04 10:32:46','2015-03-04 10:32:47',NULL,NULL),(2,'2015-03-04 10:32:47','2015-03-04 10:32:52',1,1),(3,'2015-03-04 10:32:47','2015-03-04 10:32:47',1,1),(4,'2015-03-04 10:32:47','2015-03-04 10:32:47',1,1),(5,'2015-03-04 10:32:47','2015-03-04 10:32:47',1,1),(6,'2015-03-04 10:32:47','2015-03-04 10:32:47',1,1),(7,'2015-03-04 10:32:47','2015-03-04 10:32:48',1,1),(8,'2015-03-04 10:32:48','2015-03-04 10:32:49',1,1),(9,'2015-03-04 10:32:48','2015-03-04 10:32:48',1,1),(10,'2015-03-04 10:32:48','2015-03-04 10:32:48',1,1),(11,'2015-03-04 10:32:48','2015-03-04 10:32:48',1,1),(12,'2015-03-04 10:32:49','2015-03-04 10:32:49',1,1),(13,'2015-03-04 10:32:49','2015-03-04 10:32:49',1,1),(14,'2015-03-04 10:32:51','2015-03-04 10:32:52',1,1),(15,'2015-03-04 10:32:52','2015-03-04 10:32:52',1,1),(16,'2015-03-04 10:32:52','2015-03-04 10:32:52',1,1);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobinprocess`
--

DROP TABLE IF EXISTS `jobinprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobinprocess` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobinprocess`
--

LOCK TABLES `jobinprocess` WRITE;
/*!40000 ALTER TABLE `jobinprocess` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobinprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joblog`
--

DROP TABLE IF EXISTS `joblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joblog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enddatetime` datetime DEFAULT NULL,
  `isprocessed` tinyint(1) unsigned DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `startdatetime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joblog`
--

LOCK TABLES `joblog` WRITE;
/*!40000 ALTER TABLE `joblog` DISABLE KEYS */;
/*!40000 ALTER TABLE `joblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kanbanitem`
--

DROP TABLE IF EXISTS `kanbanitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kanbanitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `kanbanrelateditem_item_id` int(11) unsigned DEFAULT NULL,
  `task_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kanbanitem`
--

LOCK TABLES `kanbanitem` WRITE;
/*!40000 ALTER TABLE `kanbanitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `kanbanitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketinglist`
--

DROP TABLE IF EXISTS `marketinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketinglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `fromname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromaddress` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anyonecansubscribe` tinyint(1) unsigned DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinglist`
--

LOCK TABLES `marketinglist` WRITE;
/*!40000 ALTER TABLE `marketinglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketinglist_read`
--

DROP TABLE IF EXISTS `marketinglist_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketinglist_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `marketinglist_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinglist_read`
--

LOCK TABLES `marketinglist_read` WRITE;
/*!40000 ALTER TABLE `marketinglist_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketinglist_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketinglistmember`
--

DROP TABLE IF EXISTS `marketinglistmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketinglistmember` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `createddatetime` datetime DEFAULT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `unsubscribed` tinyint(1) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `marketinglist_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinglistmember`
--

LOCK TABLES `marketinglistmember` WRITE;
/*!40000 ALTER TABLE `marketinglistmember` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketinglistmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `enddatetime` datetime DEFAULT NULL,
  `processedforlatestactivity` tinyint(1) unsigned DEFAULT NULL,
  `location` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logged` tinyint(1) unsigned DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startdatetime` datetime DEFAULT NULL,
  `activity_id` int(11) unsigned DEFAULT NULL,
  `category_customfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_read`
--

DROP TABLE IF EXISTS `meeting_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `meeting_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_read`
--

LOCK TABLES `meeting_read` WRITE;
/*!40000 ALTER TABLE `meeting_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_read_subscription`
--

DROP TABLE IF EXISTS `meeting_read_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_read_subscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `modelid` int(11) unsigned NOT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `subscriptiontype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_modelid` (`userid`,`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_read_subscription`
--

LOCK TABLES `meeting_read_subscription` WRITE;
/*!40000 ALTER TABLE `meeting_read_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_read_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messagesource`
--

DROP TABLE IF EXISTS `messagesource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagesource` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sourceCategory` (`category`,`source`(767))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagesource`
--

LOCK TABLES `messagesource` WRITE;
/*!40000 ALTER TABLE `messagesource` DISABLE KEYS */;
/*!40000 ALTER TABLE `messagesource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messagetranslation`
--

DROP TABLE IF EXISTS `messagetranslation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagetranslation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `translation` blob,
  `language` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `messagesource_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sourceLanguageTranslation` (`messagesource_id`,`language`,`translation`(767))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagetranslation`
--

LOCK TABLES `messagetranslation` WRITE;
/*!40000 ALTER TABLE `messagetranslation` DISABLE KEYS */;
/*!40000 ALTER TABLE `messagetranslation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `duedatetime` datetime DEFAULT NULL,
  `latestdatetime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `reward` text COLLATE utf8_unicode_ci,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `takenbyuser__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission_read`
--

DROP TABLE IF EXISTS `mission_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mission_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `mission_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission_read`
--

LOCK TABLES `mission_read` WRITE;
/*!40000 ALTER TABLE `mission_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mission_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelcreationapisync`
--

DROP TABLE IF EXISTS `modelcreationapisync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelcreationapisync` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `servicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modelid` int(11) unsigned NOT NULL,
  `modelclassname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createddatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelcreationapisync`
--

LOCK TABLES `modelcreationapisync` WRITE;
/*!40000 ALTER TABLE `modelcreationapisync` DISABLE KEYS */;
/*!40000 ALTER TABLE `modelcreationapisync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiplevaluescustomfield`
--

DROP TABLE IF EXISTS `multiplevaluescustomfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multiplevaluescustomfield` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `basecustomfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basecustomfield_id` (`basecustomfield_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiplevaluescustomfield`
--

LOCK TABLES `multiplevaluescustomfield` WRITE;
/*!40000 ALTER TABLE `multiplevaluescustomfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `multiplevaluescustomfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `named_securable_actual_permissions_cache`
--

DROP TABLE IF EXISTS `named_securable_actual_permissions_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `named_securable_actual_permissions_cache` (
  `securableitem_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `permitable_id` int(11) unsigned NOT NULL,
  `allow_permissions` tinyint(3) unsigned NOT NULL,
  `deny_permissions` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`securableitem_name`,`permitable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `named_securable_actual_permissions_cache`
--

LOCK TABLES `named_securable_actual_permissions_cache` WRITE;
/*!40000 ALTER TABLE `named_securable_actual_permissions_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `named_securable_actual_permissions_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `namedsecurableitem`
--

DROP TABLE IF EXISTS `namedsecurableitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `namedsecurableitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `securableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_eman` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `namedsecurableitem`
--

LOCK TABLES `namedsecurableitem` WRITE;
/*!40000 ALTER TABLE `namedsecurableitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `namedsecurableitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `occurredondatetime` datetime DEFAULT NULL,
  `activity_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_read`
--

DROP TABLE IF EXISTS `note_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `note_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_read`
--

LOCK TABLES `note_read` WRITE;
/*!40000 ALTER TABLE `note_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerhasreadlatest` tinyint(1) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `notificationmessage_id` int(11) unsigned DEFAULT NULL,
  `owner__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'RemoveApiTestEntryScriptFile',NULL,15,1,1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationmessage`
--

DROP TABLE IF EXISTS `notificationmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationmessage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `textcontent` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationmessage`
--

LOCK TABLES `notificationmessage` WRITE;
/*!40000 ALTER TABLE `notificationmessage` DISABLE KEYS */;
INSERT INTO `notificationmessage` VALUES (1,NULL,'If this website is in production mode, please remove the app/test.php file.',16);
/*!40000 ALTER TABLE `notificationmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationsubscriber`
--

DROP TABLE IF EXISTS `notificationsubscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationsubscriber` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hasreadlatest` tinyint(1) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  `task_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationsubscriber`
--

LOCK TABLES `notificationsubscriber` WRITE;
/*!40000 ALTER TABLE `notificationsubscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificationsubscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunity`
--

DROP TABLE IF EXISTS `opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `closedate` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `probability` tinyint(11) DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `amount_currencyvalue_id` int(11) unsigned DEFAULT NULL,
  `stage_customfield_id` int(11) unsigned DEFAULT NULL,
  `source_customfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunity`
--

LOCK TABLES `opportunity` WRITE;
/*!40000 ALTER TABLE `opportunity` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunity_project`
--

DROP TABLE IF EXISTS `opportunity_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunity_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `opportunity_id` int(11) unsigned DEFAULT NULL,
  `project_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_tcejorp_di_ytinutroppo` (`opportunity_id`,`project_id`),
  KEY `di_ytinutroppo` (`opportunity_id`),
  KEY `di_tcejorp` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunity_project`
--

LOCK TABLES `opportunity_project` WRITE;
/*!40000 ALTER TABLE `opportunity_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunity_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunity_read`
--

DROP TABLE IF EXISTS `opportunity_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunity_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `opportunity_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunity_read`
--

LOCK TABLES `opportunity_read` WRITE;
/*!40000 ALTER TABLE `opportunity_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunity_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunitystarred`
--

DROP TABLE IF EXISTS `opportunitystarred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunitystarred` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `basestarredmodel_id` int(11) unsigned DEFAULT NULL,
  `opportunity_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `basestarredmodel_id_opportunity_id` (`basestarredmodel_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunitystarred`
--

LOCK TABLES `opportunitystarred` WRITE;
/*!40000 ALTER TABLE `opportunitystarred` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunitystarred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ownedsecurableitem`
--

DROP TABLE IF EXISTS `ownedsecurableitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ownedsecurableitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned DEFAULT NULL,
  `owner__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner__user_id` (`owner__user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownedsecurableitem`
--

LOCK TABLES `ownedsecurableitem` WRITE;
/*!40000 ALTER TABLE `ownedsecurableitem` DISABLE KEYS */;
INSERT INTO `ownedsecurableitem` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1);
/*!40000 ALTER TABLE `ownedsecurableitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permissions` tinyint(11) DEFAULT NULL,
  `type` tinyint(11) DEFAULT NULL,
  `permitable_id` int(11) unsigned DEFAULT NULL,
  `securableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,27,1,3,1),(2,27,1,3,2),(3,27,1,3,3),(4,27,1,3,4),(5,27,1,3,5),(6,27,1,3,6);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permitable`
--

DROP TABLE IF EXISTS `permitable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permitable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permitable`
--

LOCK TABLES `permitable` WRITE;
/*!40000 ALTER TABLE `permitable` DISABLE KEYS */;
INSERT INTO `permitable` VALUES (1,1),(2,2),(3,8),(4,14);
/*!40000 ALTER TABLE `permitable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobtitle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilephone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officephone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officefax` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `primaryaddress_address_id` int(11) unsigned DEFAULT NULL,
  `primaryemail_email_id` int(11) unsigned DEFAULT NULL,
  `title_customfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ownedsecurableitem_id` (`ownedsecurableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,NULL,'Super',NULL,'User',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'System',NULL,'User',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personwhohavenotreadlatest`
--

DROP TABLE IF EXISTS `personwhohavenotreadlatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personwhohavenotreadlatest` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  `mission_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personwhohavenotreadlatest`
--

LOCK TABLES `personwhohavenotreadlatest` WRITE;
/*!40000 ALTER TABLE `personwhohavenotreadlatest` DISABLE KEYS */;
/*!40000 ALTER TABLE `personwhohavenotreadlatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perusermetadata`
--

DROP TABLE IF EXISTS `perusermetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perusermetadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializedmetadata` text COLLATE utf8_unicode_ci,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perusermetadata`
--

LOCK TABLES `perusermetadata` WRITE;
/*!40000 ALTER TABLE `perusermetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `perusermetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `modulename` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permitable_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlet`
--

DROP TABLE IF EXISTS `portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portlet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `column` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `layoutid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewtype` text COLLATE utf8_unicode_ci,
  `serializedviewdata` text COLLATE utf8_unicode_ci,
  `collapsed` tinyint(1) unsigned DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portlet`
--

LOCK TABLES `portlet` WRITE;
/*!40000 ALTER TABLE `portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `pricefrequency` int(11) DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `opportunity_id` int(11) unsigned DEFAULT NULL,
  `producttemplate_id` int(11) unsigned DEFAULT NULL,
  `stage_customfield_id` int(11) unsigned DEFAULT NULL,
  `sellprice_currencyvalue_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_productcategory`
--

DROP TABLE IF EXISTS `product_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_productcategory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned DEFAULT NULL,
  `productcategory_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_yrogetactcudorp_di_tcudorp` (`product_id`,`productcategory_id`),
  KEY `di_tcudorp` (`product_id`),
  KEY `di_yrogetactcudorp` (`productcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_productcategory`
--

LOCK TABLES `product_productcategory` WRITE;
/*!40000 ALTER TABLE `product_productcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_read`
--

DROP TABLE IF EXISTS `product_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `product_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_read`
--

LOCK TABLES `product_read` WRITE;
/*!40000 ALTER TABLE `product_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcatalog`
--

DROP TABLE IF EXISTS `productcatalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcatalog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcatalog`
--

LOCK TABLES `productcatalog` WRITE;
/*!40000 ALTER TABLE `productcatalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `productcatalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcatalog_productcategory`
--

DROP TABLE IF EXISTS `productcatalog_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcatalog_productcategory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productcatalog_id` int(11) unsigned DEFAULT NULL,
  `productcategory_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_yrogetactcudorp_di_golatactcudorp` (`productcatalog_id`,`productcategory_id`),
  KEY `di_golatactcudorp` (`productcatalog_id`),
  KEY `di_yrogetactcudorp` (`productcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcatalog_productcategory`
--

LOCK TABLES `productcatalog_productcategory` WRITE;
/*!40000 ALTER TABLE `productcatalog_productcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `productcatalog_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategory`
--

DROP TABLE IF EXISTS `productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcategory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `productcategory_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategory`
--

LOCK TABLES `productcategory` WRITE;
/*!40000 ALTER TABLE `productcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategory_producttemplate`
--

DROP TABLE IF EXISTS `productcategory_producttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcategory_producttemplate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productcategory_id` int(11) unsigned DEFAULT NULL,
  `producttemplate_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_etalpmettcudorp_di_yrogetactcudorp` (`productcategory_id`,`producttemplate_id`),
  KEY `di_yrogetactcudorp` (`productcategory_id`),
  KEY `di_etalpmettcudorp` (`producttemplate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategory_producttemplate`
--

LOCK TABLES `productcategory_producttemplate` WRITE;
/*!40000 ALTER TABLE `productcategory_producttemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `productcategory_producttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttemplate`
--

DROP TABLE IF EXISTS `producttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producttemplate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `pricefrequency` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `sellpriceformula_id` int(11) unsigned DEFAULT NULL,
  `cost_currencyvalue_id` int(11) unsigned DEFAULT NULL,
  `listprice_currencyvalue_id` int(11) unsigned DEFAULT NULL,
  `sellprice_currencyvalue_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttemplate`
--

LOCK TABLES `producttemplate` WRITE;
/*!40000 ALTER TABLE `producttemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `producttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_read`
--

DROP TABLE IF EXISTS `project_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `project_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_read`
--

LOCK TABLES `project_read` WRITE;
/*!40000 ALTER TABLE `project_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectauditevent`
--

DROP TABLE IF EXISTS `projectauditevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectauditevent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL,
  `eventname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `_user_id` int(11) unsigned DEFAULT NULL,
  `project_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectauditevent`
--

LOCK TABLES `projectauditevent` WRITE;
/*!40000 ALTER TABLE `projectauditevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectauditevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `role_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_eman` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedcalendar`
--

DROP TABLE IF EXISTS `savedcalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedcalendar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `location` text COLLATE utf8_unicode_ci,
  `moduleclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startattributename` text COLLATE utf8_unicode_ci,
  `endattributename` text COLLATE utf8_unicode_ci,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedcalendar`
--

LOCK TABLES `savedcalendar` WRITE;
/*!40000 ALTER TABLE `savedcalendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedcalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedcalendar_read`
--

DROP TABLE IF EXISTS `savedcalendar_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedcalendar_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `savedcalendar_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedcalendar_read`
--

LOCK TABLES `savedcalendar_read` WRITE;
/*!40000 ALTER TABLE `savedcalendar_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedcalendar_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedcalendarsubscription`
--

DROP TABLE IF EXISTS `savedcalendarsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedcalendarsubscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  `savedcalendar_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedcalendarsubscription`
--

LOCK TABLES `savedcalendarsubscription` WRITE;
/*!40000 ALTER TABLE `savedcalendarsubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedcalendarsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedreport`
--

DROP TABLE IF EXISTS `savedreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedreport` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `moduleclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedreport`
--

LOCK TABLES `savedreport` WRITE;
/*!40000 ALTER TABLE `savedreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedreport_read`
--

DROP TABLE IF EXISTS `savedreport_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedreport_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `savedreport_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedreport_read`
--

LOCK TABLES `savedreport_read` WRITE;
/*!40000 ALTER TABLE `savedreport_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedreport_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedsearch`
--

DROP TABLE IF EXISTS `savedsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedsearch` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `viewclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedsearch`
--

LOCK TABLES `savedsearch` WRITE;
/*!40000 ALTER TABLE `savedsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedworkflow`
--

DROP TABLE IF EXISTS `savedworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedworkflow` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `isactive` tinyint(1) unsigned DEFAULT NULL,
  `moduleclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `triggeron` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedworkflow`
--

LOCK TABLES `savedworkflow` WRITE;
/*!40000 ALTER TABLE `savedworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securableitem`
--

DROP TABLE IF EXISTS `securableitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securableitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securableitem`
--

LOCK TABLES `securableitem` WRITE;
/*!40000 ALTER TABLE `securableitem` DISABLE KEYS */;
INSERT INTO `securableitem` VALUES (1,7),(2,9),(3,10),(4,11),(5,12),(6,13);
/*!40000 ALTER TABLE `securableitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellpriceformula`
--

DROP TABLE IF EXISTS `sellpriceformula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellpriceformula` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `discountormarkuppercentage` double DEFAULT NULL,
  `producttemplate_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellpriceformula`
--

LOCK TABLES `sellpriceformula` WRITE;
/*!40000 ALTER TABLE `sellpriceformula` DISABLE KEYS */;
/*!40000 ALTER TABLE `sellpriceformula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shorturl`
--

DROP TABLE IF EXISTS `shorturl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shorturl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `createddatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shorturl`
--

LOCK TABLES `shorturl` WRITE;
/*!40000 ALTER TABLE `shorturl` DISABLE KEYS */;
/*!40000 ALTER TABLE `shorturl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialitem`
--

DROP TABLE IF EXISTS `socialitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `latestdatetime` datetime DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `note_id` int(11) unsigned DEFAULT NULL,
  `touser__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialitem`
--

LOCK TABLES `socialitem` WRITE;
/*!40000 ALTER TABLE `socialitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialitem_read`
--

DROP TABLE IF EXISTS `socialitem_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialitem_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `socialitem_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialitem_read`
--

LOCK TABLES `socialitem_read` WRITE;
/*!40000 ALTER TABLE `socialitem_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialitem_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuckjob`
--

DROP TABLE IF EXISTS `stuckjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuckjob` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuckjob`
--

LOCK TABLES `stuckjob` WRITE;
/*!40000 ALTER TABLE `stuckjob` DISABLE KEYS */;
/*!40000 ALTER TABLE `stuckjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `completeddatetime` datetime DEFAULT NULL,
  `completed` tinyint(1) unsigned DEFAULT NULL,
  `duedatetime` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `activity_id` int(11) unsigned DEFAULT NULL,
  `requestedbyuser__user_id` int(11) unsigned DEFAULT NULL,
  `project_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_read`
--

DROP TABLE IF EXISTS `task_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `task_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_read`
--

LOCK TABLES `task_read` WRITE;
/*!40000 ALTER TABLE `task_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_read_subscription`
--

DROP TABLE IF EXISTS `task_read_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_read_subscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `modelid` int(11) unsigned NOT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `subscriptiontype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_modelid` (`userid`,`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_read_subscription`
--

LOCK TABLES `task_read_subscription` WRITE;
/*!40000 ALTER TABLE `task_read_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_read_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskchecklistitem`
--

DROP TABLE IF EXISTS `taskchecklistitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskchecklistitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) DEFAULT NULL,
  `completed` tinyint(1) unsigned DEFAULT NULL,
  `task_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskchecklistitem`
--

LOCK TABLES `taskchecklistitem` WRITE;
/*!40000 ALTER TABLE `taskchecklistitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `taskchecklistitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowmessageinqueue`
--

DROP TABLE IF EXISTS `workflowmessageinqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowmessageinqueue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `modelclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processdatetime` datetime DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  `modelitem_item_id` int(11) unsigned DEFAULT NULL,
  `savedworkflow_id` int(11) unsigned DEFAULT NULL,
  `triggeredbyuser__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowmessageinqueue`
--

LOCK TABLES `workflowmessageinqueue` WRITE;
/*!40000 ALTER TABLE `workflowmessageinqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowmessageinqueue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-04 10:34:56
