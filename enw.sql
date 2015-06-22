-- MySQL dump 10.13  Distrib 5.6.24, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: enw
-- ------------------------------------------------------
-- Server version	5.6.24-0ubuntu2

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
-- Table structure for table `enw_assets`
--

DROP TABLE IF EXISTS `enw_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_assets`
--

LOCK TABLES `enw_assets` WRITE;
/*!40000 ALTER TABLE `enw_assets` DISABLE KEYS */;
INSERT INTO `enw_assets` VALUES (1,0,0,139,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,54,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,55,56,1,'com_cpanel','com_cpanel','{}'),(10,1,57,58,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,59,60,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,61,62,1,'com_login','com_login','{}'),(13,1,63,64,1,'com_mailto','com_mailto','{}'),(14,1,65,66,1,'com_massmail','com_massmail','{}'),(15,1,67,68,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,69,70,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,71,72,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,73,108,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,109,112,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,113,114,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,115,116,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,117,118,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,119,120,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,121,124,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(26,1,125,126,1,'com_wrapper','com_wrapper','{}'),(27,8,18,19,2,'com_content.category.2','Non catégorisé','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Non catégorisé','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Non catégorisé','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,110,111,2,'com_newsfeeds.category.5','Non catégorisé','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,122,123,1,'com_users.category.7','Non catégorisé','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,127,128,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,129,130,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,131,132,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,133,134,1,'com_contenthistory','com_contenthistory','{}'),(37,1,135,136,1,'com_ajax','com_ajax','{}'),(38,1,137,138,1,'com_postinstall','com_postinstall','{}'),(39,18,74,75,2,'com_modules.module.1','Menu principal','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(40,18,76,77,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,78,79,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,80,81,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,82,83,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,84,85,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,86,87,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,88,89,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,90,91,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,92,93,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,94,95,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,96,97,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,18,98,99,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,100,101,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,102,103,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,8,20,43,2,'com_content.category.8','Equipes','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(55,54,21,30,3,'com_content.category.9','U11A','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(56,18,104,105,2,'com_modules.module.87','Bannière','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),(57,55,22,23,4,'com_content.article.1','Article test U11','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(58,54,31,32,3,'com_content.category.10','U13A','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(59,54,33,34,3,'com_content.category.11','U15','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(60,54,35,36,3,'com_content.category.12','U18A','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(61,55,24,25,4,'com_content.article.2','Objectifs catégories U11','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(62,54,37,38,3,'com_content.category.13','U11B','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(63,54,39,40,3,'com_content.category.14','U13B','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(64,54,41,42,3,'com_content.category.15','U18B','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(65,18,106,107,2,'com_modules.module.88','sigplus',''),(66,8,44,53,2,'com_content.category.16','Club','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(67,71,48,49,4,'com_content.article.3','Infrastructure Niederschaeffolsheim','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(68,66,45,46,3,'com_content.article.4','Bienvenue sur le site de l\'entente ENW','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(69,55,26,27,4,'com_content.article.5','Article test U11 - 2','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(70,55,28,29,4,'com_content.article.6','Article test U11 - 3','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(71,66,47,52,3,'com_content.category.17','Infrastructure','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(72,71,50,51,4,'com_content.article.7','Infrastructure Weitbruch','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}');
/*!40000 ALTER TABLE `enw_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_associations`
--

DROP TABLE IF EXISTS `enw_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_associations`
--

LOCK TABLES `enw_associations` WRITE;
/*!40000 ALTER TABLE `enw_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_banner_clients`
--

DROP TABLE IF EXISTS `enw_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_banner_clients`
--

LOCK TABLES `enw_banner_clients` WRITE;
/*!40000 ALTER TABLE `enw_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_banner_tracks`
--

DROP TABLE IF EXISTS `enw_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_banner_tracks`
--

LOCK TABLES `enw_banner_tracks` WRITE;
/*!40000 ALTER TABLE `enw_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_banners`
--

DROP TABLE IF EXISTS `enw_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_banners`
--

LOCK TABLES `enw_banners` WRITE;
/*!40000 ALTER TABLE `enw_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_categories`
--

DROP TABLE IF EXISTS `enw_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_categories`
--

LOCK TABLES `enw_categories` WRITE;
/*!40000 ALTER TABLE `enw_categories` DISABLE KEYS */;
INSERT INTO `enw_categories` VALUES (1,0,0,0,31,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'non-categorise','com_content','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'non-categorise','com_banners','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'non-categorise','com_contact','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'non-categorise','com_newsfeeds','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'non-categorise','com_users','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(8,54,1,11,26,1,'equipes','com_content','Equipes','equipes','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',697,'2015-06-10 13:03:39',0,'2015-06-10 13:03:39',0,'*',1),(9,55,8,12,13,2,'equipes/u11','com_content','U11A','u11','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',697,'2015-06-10 13:04:00',697,'2015-06-18 12:31:08',0,'*',1),(10,58,8,16,17,2,'equipes/u13','com_content','U13A','u13','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',697,'2015-06-11 14:26:32',697,'2015-06-18 12:33:23',0,'*',1),(11,59,8,20,21,2,'equipes/u15','com_content','U15','u15','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',697,'2015-06-11 14:26:41',0,'2015-06-11 14:26:41',0,'*',1),(12,60,8,22,23,2,'equipes/u18','com_content','U18A','u18','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',697,'2015-06-11 14:26:50',697,'2015-06-18 12:37:45',0,'*',1),(13,62,8,14,15,2,'equipes/u11b','com_content','U11B','u11b','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',697,'2015-06-18 12:33:09',0,'2015-06-18 12:33:09',0,'*',1),(14,63,8,18,19,2,'equipes/u13b','com_content','U13B','u13b','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',697,'2015-06-18 12:37:35',0,'2015-06-18 12:37:35',0,'*',1),(15,64,8,24,25,2,'equipes/u18b','com_content','U18B','u18b','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',697,'2015-06-18 12:37:54',0,'2015-06-18 12:37:54',0,'*',1),(16,66,1,27,30,1,'club','com_content','Club','club','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',697,'2015-06-20 15:14:23',0,'2015-06-20 15:14:23',0,'*',1),(17,71,16,28,29,2,'club/infrastructure','com_content','Infrastructure','infrastructure','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',697,'2015-06-22 11:12:02',0,'2015-06-22 11:12:02',0,'*',1);
/*!40000 ALTER TABLE `enw_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_contact_details`
--

DROP TABLE IF EXISTS `enw_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_contact_details`
--

LOCK TABLES `enw_contact_details` WRITE;
/*!40000 ALTER TABLE `enw_contact_details` DISABLE KEYS */;
INSERT INTO `enw_contact_details` VALUES (1,'Franck Houth','entente','Responsable de l\'entente','','','','','','06 72 00 66 98','','<p>Responsable entente : Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br />Président jeunes FC Nieder : Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br />Président jeunes Weitbruch : Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com</p>\r\n<p>Section U18 :</p>\r\n<ul>\r\n<li>Equipe 1 : Dany Andres (FCN) - 06.24.32.40.78 - andres.daniel7 [at] free.fr</li>\r\n<li>Equipe 2 : Thierry Blanck (FCW) - 06.33.15.85.70 - thierry.blanck [at] wanadoo.fr</li>\r\n</ul>\r\n<p>Section U15 :</p>\r\n<ul>\r\n<li>Responsable : Franck Zipper (FCW) - 06.70.67.43.52 - franck.zipper [at] orange.fr</li>\r\n<li>Dirigeant : Pascal Steinmetz (FCN) - 06.03.37.59.56 - anthony.steinmetz [at] hotmail.fr</li>\r\n<li>Mickael (FCW) - xx.xx.xx.xx.xx xxxxxxxxxxx [at] xxxxxx.fr</li>\r\n</ul>\r\n<p>Section U13 :</p>\r\n<ul>\r\n<li>Equipe 1 (FCN) : Nicolas Wartzolff - 06.33.37.06.77 - nwartzolff [at] gmail.com</li>\r\n<li>Equipe 2 (FCW) : Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com</li>\r\n<li>Dirigeant : Caspar Romain (FCN) - 06.86.25.62.66 - caspar.romain@hotmail.com</li>\r\n</ul>\r\n<p>Section U11 :</p>\r\n<ul>\r\n<li>Equipe  (Batz) : Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com</li>\r\n<li>Equipe (Weit) : Isidro Oliva - 07.87.97.45.68 - isidro.oliva [at] vossloh-cogifer.com</li>\r\n<li>Dirigeant : Jean-Claude Foehr - 06.18.62.01.11 - sylvie.hincker [at] wanadoo.fr</li>\r\n</ul>','','franckhouth@gmail.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":false,\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,4,1,'','http://www.enw-footbal.fr','','','','*','2015-06-22 06:22:45',697,'','2015-06-22 11:39:35',697,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',14,33);
/*!40000 ALTER TABLE `enw_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_content`
--

DROP TABLE IF EXISTS `enw_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_content`
--

LOCK TABLES `enw_content` WRITE;
/*!40000 ALTER TABLE `enw_content` DISABLE KEYS */;
INSERT INTO `enw_content` VALUES (1,57,'Article test U11','article-test-u11','<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.</p>\r\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.</p>\r\n<p> </p>\r\n','\r\n<p> </p>\r\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.</p>',1,9,'2015-06-11 14:24:46',697,'','2015-06-21 06:05:17',697,0,'0000-00-00 00:00:00','2015-06-11 14:24:46','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,3,'','',1,11,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,61,'Objectifs catégories U11','objectifs-categories-u11','<p>Voici les objectifs de la catégorie U11 :</p>\r\n','\r\n<p>Objectif 1 : Développement de la MOTRICITE Globale et Fine</p>\r\n<p>Objectif 2 : Développement des Savoirs Faire Techniques : Apprentissage des gestes. La relation joueur-ballon</p>\r\n<p>Objectif 3 : LE JEU S’ORGANISE : Développement de la Relation joueur - ballon avec partenaires et adversaires.</p>',1,9,'2015-06-12 17:11:58',697,'','2015-06-12 17:19:09',697,0,'0000-00-00 00:00:00','2015-06-12 17:11:58','0000-00-00 00:00:00','{\"image_intro\":\"images\\/cr7.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/cr7.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,2,'','',1,17,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,67,'Infrastructure Niederschaeffolsheim','infrastructure-niederschaeffolsheim','<p>{gallery}infrastructure/niederschaeffolsheim{/gallery}</p>','',1,17,'2015-06-20 15:16:01',697,'','2015-06-22 11:32:28',697,0,'0000-00-00 00:00:00','2015-06-20 15:16:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,1,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,68,'Bienvenue sur le site de l\'entente ENW','bienvenue-au-site-de-l-entente-enw','<p>Nous sommes heureux de lancer ce jour le site de l\'entente Niederschaeffolsheim / Weitbruch.</p>\r\n<p>Cette entente concernent les équipes suivantes :</p>\r\n<ul>\r\n<li>U18, 2 équipes</li>\r\n<li>U15</li>\r\n<li>U13, 2 équipes</li>\r\n<li>U11, 2 équipes</li>\r\n</ul>\r\n<p> </p>\r\n','\r\n<p> </p>\r\n<p>N\'hésitez pas à venir nous rendre visite régulièrement !</p>',1,16,'2015-06-21 05:37:19',697,'','2015-06-21 06:07:31',697,0,'0000-00-00 00:00:00','2015-06-21 05:37:19','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(5,69,'Article test U11 - 2','article-test-u11-2','<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.</p>\r\n','\r\n<p> </p>\r\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.</p>\r\n<p> </p>\r\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.</p>',1,9,'2015-06-11 14:24:46',697,'','2015-06-21 06:05:10',697,0,'0000-00-00 00:00:00','2015-06-11 14:24:46','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,70,'Article test U11 - 3','article-test-u11-3','<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.</p>\r\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.</p>\r\n','\r\n<p> </p>\r\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.</p>',1,9,'2015-06-11 14:24:46',697,'','2015-06-21 06:05:02',697,0,'0000-00-00 00:00:00','2015-06-11 14:24:46','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,72,'Infrastructure Weitbruch','infrastructure-weitbruch','<p>{gallery}infrastructure/weitbruch{/gallery}</p>','',1,17,'2015-06-20 15:16:01',697,'','2015-06-22 11:32:17',697,0,'0000-00-00 00:00:00','2015-06-20 15:16:01','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `enw_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_content_frontpage`
--

DROP TABLE IF EXISTS `enw_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_content_frontpage`
--

LOCK TABLES `enw_content_frontpage` WRITE;
/*!40000 ALTER TABLE `enw_content_frontpage` DISABLE KEYS */;
INSERT INTO `enw_content_frontpage` VALUES (4,1);
/*!40000 ALTER TABLE `enw_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_content_rating`
--

DROP TABLE IF EXISTS `enw_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_content_rating`
--

LOCK TABLES `enw_content_rating` WRITE;
/*!40000 ALTER TABLE `enw_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_content_types`
--

DROP TABLE IF EXISTS `enw_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_content_types`
--

LOCK TABLES `enw_content_types` WRITE;
/*!40000 ALTER TABLE `enw_content_types` DISABLE KEYS */;
INSERT INTO `enw_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `enw_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_contentitem_tag_map`
--

DROP TABLE IF EXISTS `enw_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_contentitem_tag_map`
--

LOCK TABLES `enw_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `enw_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_core_log_searches`
--

DROP TABLE IF EXISTS `enw_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_core_log_searches`
--

LOCK TABLES `enw_core_log_searches` WRITE;
/*!40000 ALTER TABLE `enw_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_extensions`
--

DROP TABLE IF EXISTS `enw_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_extensions`
--

LOCK TABLES `enw_extensions` WRITE;
/*!40000 ALTER TABLE `enw_extensions` DISABLE KEYS */;
INSERT INTO `enw_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"fr-FR\",\"site\":\"fr-FR\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"simplepie\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"15a6c0e56f5853cfac0f2a69a4c6fc23\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-03-11 11:59:00\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.2\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.1\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(602,'French (fr-FR)','language','fr-FR','',0,1,0,0,'{\"name\":\"French (fr-FR)\",\"type\":\"language\",\"creationDate\":\"July 2014\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/www.joomla.fr\",\"version\":\"3.4.1.2\",\"description\":\"French site language for Joomla 3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(603,'French (FR)','language','fr-FR','',1,1,0,0,'{\"name\":\"French (FR)\",\"type\":\"language\",\"creationDate\":\"September 2014\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/www.joomla.fr\",\"version\":\"3.4.1.2\",\"description\":\"French administrator language for Joomla 3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(605,'French_fr-FR','package','pkg_fr-FR','',0,1,1,0,'{\"name\":\"French_fr-FR\",\"type\":\"package\",\"creationDate\":\"03\\/03\\/2015\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2015 Joomla.fr and Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/joomla.fr\",\"version\":\"3.4.1.1\",\"description\":\"<div style=\\\"text-align:left;\\\">\\n<h3>Joomla! 3.4.1 Full French (fr-FR) Language Package - Version 3.4.1v1<\\/h3>\\n<h3>Paquet de langue Joomla! 3.4.1 fran\\u00e7ais (fr-FR) complet - Version 3.4.1v1<\\/h3>\\n<\\/div>\",\"group\":\"\",\"filename\":\"pkg_fr-FR\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"March 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.1\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10001,'Plain Design','template','plaindesign','',0,1,1,0,'{\"name\":\"Plain Design\",\"type\":\"template\",\"creationDate\":\"November 2014\",\"author\":\"JoomlaSaver\",\"copyright\":\"JoomlaSaver 2013\",\"authorEmail\":\"mail@joomlasaver.com\",\"authorUrl\":\"http:\\/\\/www.joomlasaver.com\",\"version\":\"1.6\",\"description\":\"<div style=\\\"border:1px solid #c0c0c0; padding:15px; text-align:center; margin:0 auto;\\\">PLAIN DESIGN<br \\/>Joomla 2.5 & 3.3 Templates<br \\/>GNU\\/GPL License<br \\/><br \\/>Visit <a href=\\\"http:\\/\\/www.joomlasaver.com\\\">JoomlaSaver<\\/a><br \\/>Contact <a href=\\\"mailto:mail@joomlasaver.com\\\">JoomlaSaver<\\/a><\\/div>\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"logo\":\"templates\\/plaindesign\\/images\\/logo.png\",\"responsive\":\"yes\",\"fontfamily\":\"fontfamily1\",\"expand\":\"no\",\"bannerwidth\":\"fix\",\"bannerbg\":\"#FFFFFF\",\"bannercolor\":\"#000000\",\"copyright\":\"\",\"jqueryactive\":\"no\",\"unsetjoomjs\":\"no\",\"unsetmootools\":\"yes\",\"unsetbootstrap\":\"yes\",\"unsetjquerymin\":\"no\"}','','',0,'0000-00-00 00:00:00',0,0),(10002,'Content - Image gallery - sigplus','plugin','sigplus','content',0,1,1,0,'{\"name\":\"Content - Image gallery - sigplus\",\"type\":\"plugin\",\"creationDate\":\"Jan 09, 2015\",\"author\":\"Levente Hunyadi\",\"copyright\":\"\\u00a9 2009-2011 Levente Hunyadi. All rights reserved.\",\"authorEmail\":\"hunyadi@gmail.com\",\"authorUrl\":\"http:\\/\\/hunyadi.info.hu\\/projects\\/sigplus\",\"version\":\"1.4.2.19\",\"description\":\"SIGPLUS_DESCRIPTION\",\"group\":\"\",\"filename\":\"sigplus\"}','{\"base_folder\":\"images\",\"layout\":\"fixed\",\"rows\":\"1\",\"cols\":\"3\",\"thumb_count\":\"0\",\"thumb_width\":\"200\",\"thumb_height\":\"200\",\"thumb_crop\":\"0\",\"alignment\":\"center\",\"lightbox\":\"boxplus\\/lightsquare\",\"lightbox_slideshow\":\"0\",\"slider\":\"boxplus.slider\",\"slider_orientation\":\"horizontal\",\"slider_navigation\":\"bottom\",\"slider_buttons\":\"1\",\"slider_links\":\"1\",\"slider_counter\":\"1\",\"slider_overlay\":\"0\",\"slider_duration\":\"800\",\"slider_animation\":\"0\",\"download\":\"0\",\"metadata\":\"0\",\"margin\":\"\",\"border_style\":\"\",\"border_width\":\"\",\"border_color\":\"\",\"padding\":\"\",\"thumb_cache\":\"1\",\"thumb_folder\":\"thumbs\",\"preview_folder\":\"preview\",\"fullsize_folder\":\"fullsize\",\"base_url\":\"\",\"thumb_quality\":\"85\",\"labels\":\"labels\",\"labels_multilingual\":\"0\",\"sort_criterion\":\"labels-filename\",\"sort_order\":\"0\",\"linkage\":\"inline\",\"ajaxapi\":\"default\",\"library\":\"default\",\"activationtag\":\"gallery\",\"debug\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10003,'sigplus','module','mod_sigplus','',0,1,0,0,'{\"name\":\"sigplus\",\"type\":\"module\",\"creationDate\":\"Jan 09, 2015\",\"author\":\"Levente Hunyadi\",\"copyright\":\"\\u00a9 2009-2011 Levente Hunyadi. All rights reserved.\",\"authorEmail\":\"hunyadi@gmail.com\",\"authorUrl\":\"http:\\/\\/hunyadi.info.hu\\/projects\\/sigplus\",\"version\":\"1.4.2.19\",\"description\":\"SIGPLUS_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sigplus\"}','{\"images_folder\":\"images\\/sampledata\\/fruitshop\",\"layout\":\"fixed\",\"rows\":\"1\",\"cols\":\"1\",\"thumb_count\":\"0\",\"thumb_width\":\"200\",\"thumb_height\":\"200\",\"thumb_crop\":\"0\",\"alignment\":\"center\",\"lightbox\":\"boxplus\\/lightsquare\",\"lightbox_slideshow\":\"0\",\"slider\":\"boxplus.slider\",\"slider_orientation\":\"vertical\",\"slider_navigation\":\"bottom\",\"slider_buttons\":\"0\",\"slider_links\":\"0\",\"slider_counter\":\"0\",\"slider_overlay\":\"1\",\"slider_duration\":\"800\",\"slider_animation\":\"0\",\"download\":\"0\",\"metadata\":\"0\",\"margin\":\"\",\"border_style\":\"\",\"border_width\":\"\",\"border_color\":\"\",\"padding\":\"\",\"thumb_cache\":\"1\",\"thumb_folder\":\"thumbs\",\"preview_folder\":\"preview\",\"fullsize_folder\":\"fullsize\",\"base_url\":\"\",\"thumb_quality\":\"85\",\"labels\":\"labels\",\"labels_multilingual\":\"0\",\"sort_criterion\":\"labels-filename\",\"sort_order\":\"0\",\"linkage\":\"inline\",\"ajaxapi\":\"default\",\"library\":\"default\",\"moduleclass_sfx\":\"\",\"debug\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10004,'sigplus','package','pkg_sigplus','',0,1,1,0,'{\"name\":\"sigplus\",\"type\":\"package\",\"creationDate\":\"Jan 09, 2015\",\"author\":\"Levente Hunyadi\",\"copyright\":\"\\u00a9 2009-2011 Levente Hunyadi. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/hunyadi.info.hu\\/projects\\/sigplus\",\"version\":\"1.4.2.19\",\"description\":\"\",\"group\":\"\",\"filename\":\"pkg_sigplus\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `enw_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_filters`
--

DROP TABLE IF EXISTS `enw_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_filters`
--

LOCK TABLES `enw_finder_filters` WRITE;
/*!40000 ALTER TABLE `enw_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links`
--

DROP TABLE IF EXISTS `enw_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links`
--

LOCK TABLES `enw_finder_links` WRITE;
/*!40000 ALTER TABLE `enw_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_terms0`
--

DROP TABLE IF EXISTS `enw_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_terms0`
--

LOCK TABLES `enw_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_terms1`
--

DROP TABLE IF EXISTS `enw_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_terms1`
--

LOCK TABLES `enw_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_terms2`
--

DROP TABLE IF EXISTS `enw_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_terms2`
--

LOCK TABLES `enw_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_terms3`
--

DROP TABLE IF EXISTS `enw_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_terms3`
--

LOCK TABLES `enw_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_terms4`
--

DROP TABLE IF EXISTS `enw_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_terms4`
--

LOCK TABLES `enw_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_terms5`
--

DROP TABLE IF EXISTS `enw_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_terms5`
--

LOCK TABLES `enw_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_terms6`
--

DROP TABLE IF EXISTS `enw_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_terms6`
--

LOCK TABLES `enw_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_terms7`
--

DROP TABLE IF EXISTS `enw_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_terms7`
--

LOCK TABLES `enw_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_terms8`
--

DROP TABLE IF EXISTS `enw_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_terms8`
--

LOCK TABLES `enw_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_terms9`
--

DROP TABLE IF EXISTS `enw_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_terms9`
--

LOCK TABLES `enw_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_termsa`
--

DROP TABLE IF EXISTS `enw_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_termsa`
--

LOCK TABLES `enw_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_termsb`
--

DROP TABLE IF EXISTS `enw_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_termsb`
--

LOCK TABLES `enw_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_termsc`
--

DROP TABLE IF EXISTS `enw_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_termsc`
--

LOCK TABLES `enw_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_termsd`
--

DROP TABLE IF EXISTS `enw_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_termsd`
--

LOCK TABLES `enw_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_termse`
--

DROP TABLE IF EXISTS `enw_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_termse`
--

LOCK TABLES `enw_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_links_termsf`
--

DROP TABLE IF EXISTS `enw_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_links_termsf`
--

LOCK TABLES `enw_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `enw_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_taxonomy`
--

DROP TABLE IF EXISTS `enw_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_taxonomy`
--

LOCK TABLES `enw_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `enw_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `enw_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `enw_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `enw_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_taxonomy_map`
--

LOCK TABLES `enw_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `enw_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_terms`
--

DROP TABLE IF EXISTS `enw_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_terms`
--

LOCK TABLES `enw_finder_terms` WRITE;
/*!40000 ALTER TABLE `enw_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_terms_common`
--

DROP TABLE IF EXISTS `enw_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_terms_common`
--

LOCK TABLES `enw_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `enw_finder_terms_common` DISABLE KEYS */;
INSERT INTO `enw_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('alors','fr'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('au','fr'),('aucuns','fr'),('aussi','fr'),('autre','fr'),('avant','fr'),('avec','fr'),('avoir','fr'),('be','en'),('bon','fr'),('but','en'),('by','en'),('car','fr'),('ce','fr'),('cela','fr'),('ces','fr'),('ceux','fr'),('chaque','fr'),('ci','fr'),('comme','fr'),('comment','fr'),('dans','fr'),('début','fr'),('dedans','fr'),('dehors','fr'),('depuis','fr'),('des','fr'),('deux','fr'),('devrait','fr'),('doit','fr'),('donc','fr'),('dos','fr'),('droite','fr'),('du','fr'),('elle','fr'),('elles','fr'),('en','fr'),('encore','fr'),('essai','fr'),('est','fr'),('et','fr'),('eu','fr'),('fait','fr'),('faites','fr'),('fois','fr'),('font','fr'),('for','en'),('force','fr'),('from','en'),('get','en'),('go','en'),('haut','fr'),('hors','fr'),('how','en'),('ici','fr'),('if','en'),('il','fr'),('ils','fr'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('je','fr'),('juste','fr'),('la','fr'),('là','fr'),('le','fr'),('les','fr'),('leur','fr'),('ma','fr'),('maintenant','fr'),('mais','fr'),('me','en'),('même','fr'),('mes','fr'),('mine','fr'),('moins','fr'),('mon','fr'),('more','en'),('most','en'),('mot','fr'),('must','en'),('my','en'),('new','en'),('ni','fr'),('no','en'),('nommés','fr'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('notre','fr'),('nous','fr'),('nouveaux','fr'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('ou','fr'),('où','fr'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('par','fr'),('parce','fr'),('parole','fr'),('pas','fr'),('personnes','fr'),('peu','fr'),('peut','fr'),('pièce','fr'),('plupart','fr'),('pour','fr'),('pourquoi','fr'),('quand','fr'),('que','fr'),('quel','fr'),('quelle','fr'),('quelles','fr'),('quels','fr'),('qui','fr'),('sa','fr'),('sans','fr'),('ses','fr'),('seulement','fr'),('she','en'),('should','en'),('si','fr'),('sien','fr'),('small','en'),('so','en'),('some','en'),('son','fr'),('sont','fr'),('sous','fr'),('soyez','fr'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `enw_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_tokens`
--

DROP TABLE IF EXISTS `enw_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_tokens`
--

LOCK TABLES `enw_finder_tokens` WRITE;
/*!40000 ALTER TABLE `enw_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `enw_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_tokens_aggregate`
--

LOCK TABLES `enw_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `enw_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_finder_types`
--

DROP TABLE IF EXISTS `enw_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_finder_types`
--

LOCK TABLES `enw_finder_types` WRITE;
/*!40000 ALTER TABLE `enw_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_languages`
--

DROP TABLE IF EXISTS `enw_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_languages`
--

LOCK TABLES `enw_languages` WRITE;
/*!40000 ALTER TABLE `enw_languages` DISABLE KEYS */;
INSERT INTO `enw_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,2),(2,'fr-FR','Français (FR)','Français (FR)','fr','fr','','','','',1,1,1);
/*!40000 ALTER TABLE `enw_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_menu`
--

DROP TABLE IF EXISTS `enw_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_menu`
--

LOCK TABLES `enw_menu` WRITE;
/*!40000 ALTER TABLE `enw_menu` DISABLE KEYS */;
INSERT INTO `enw_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,65,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',3,12,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',4,5,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',6,7,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',8,9,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',10,11,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',29,34,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',30,31,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',32,33,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',35,40,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',36,37,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',38,39,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',41,46,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',42,43,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',44,45,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',47,48,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',49,50,0,'*',1),(18,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',51,52,0,'*',1),(19,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',53,54,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',55,56,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',57,58,0,'*',1),(101,'mainmenu','Accueil','accueil','','accueil','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',1,2,1,'*',0),(102,'mainmenu','Equipes','equipes','','equipes','index.php?option=com_content&view=category&layout=blog&id=8','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',13,28,0,'*',0),(103,'mainmenu','U11A','u11','','equipes/u11','index.php?option=com_content&view=category&layout=blog&id=9','component',1,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',14,15,0,'*',0),(104,'mainmenu','U13A','u13','','equipes/u13','index.php?option=com_content&view=category&layout=blog&id=10','component',1,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',18,19,0,'*',0),(105,'mainmenu','U15','u15','','equipes/u15','index.php?option=com_content&view=category&layout=blog&id=11','component',1,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',22,23,0,'*',0),(106,'mainmenu','U18A','u18','','equipes/u18','index.php?option=com_content&view=category&layout=blog&id=12','component',1,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',24,25,0,'*',0),(107,'mainmenu','U11B','u11b','','equipes/u11b','index.php?option=com_content&view=category&layout=blog&id=13','component',1,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',16,17,0,'*',0),(108,'mainmenu','U13B','u13b','','equipes/u13b','index.php?option=com_content&view=category&layout=blog&id=14','component',1,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',20,21,0,'*',0),(109,'mainmenu','U18B','u18b','','equipes/u18b','index.php?option=com_content&view=category&layout=blog&id=15','component',1,102,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',26,27,0,'*',0),(110,'mainmenu','Club','club','','club','index.php?option=com_content&view=category&layout=blog&id=16','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',59,64,0,'*',0),(111,'mainmenu','Infrastructure','infrastructure','','club/infrastructure','index.php?option=com_content&view=category&layout=blog&id=17','component',1,110,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',62,63,0,'*',0),(112,'mainmenu','Contactez-nous','contactez-nous','','club/contactez-nous','index.php?option=com_contact&view=contact&id=1','component',1,110,2,8,0,'0000-00-00 00:00:00',0,1,'',0,'{\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',60,61,0,'*',0);
/*!40000 ALTER TABLE `enw_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_menu_types`
--

DROP TABLE IF EXISTS `enw_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_menu_types`
--

LOCK TABLES `enw_menu_types` WRITE;
/*!40000 ALTER TABLE `enw_menu_types` DISABLE KEYS */;
INSERT INTO `enw_menu_types` VALUES (1,'mainmenu','Menu principal','Le menu principal du site');
/*!40000 ALTER TABLE `enw_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_messages`
--

DROP TABLE IF EXISTS `enw_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_messages`
--

LOCK TABLES `enw_messages` WRITE;
/*!40000 ALTER TABLE `enw_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_messages_cfg`
--

DROP TABLE IF EXISTS `enw_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_messages_cfg`
--

LOCK TABLES `enw_messages_cfg` WRITE;
/*!40000 ALTER TABLE `enw_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_modules`
--

DROP TABLE IF EXISTS `enw_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_modules`
--

LOCK TABLES `enw_modules` WRITE;
/*!40000 ALTER TABLE `enw_modules` DISABLE KEYS */;
INSERT INTO `enw_modules` VALUES (1,39,'Menu principal','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,40,'Connexion','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Articles populaires','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,42,'Articles les plus récents','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,43,'Barre d\'outils','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Icônes de raccourcis','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Utilisateurs connectés','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,46,'Menu principal','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Sous-menu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'Statut utilisateur','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Titre','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Connexion','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,51,'Fil de navigation','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,52,'Statut multilangue','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Version de Joomla','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,56,'Bannière','','<div><img src=\"images/banners/banner2.jpg\" alt=\"Bannière\" /></div>',1,'banner',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(88,65,'sigplus','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_sigplus',1,1,'',0,'*');
/*!40000 ALTER TABLE `enw_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_modules_menu`
--

DROP TABLE IF EXISTS `enw_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_modules_menu`
--

LOCK TABLES `enw_modules_menu` WRITE;
/*!40000 ALTER TABLE `enw_modules_menu` DISABLE KEYS */;
INSERT INTO `enw_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,101);
/*!40000 ALTER TABLE `enw_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_newsfeeds`
--

DROP TABLE IF EXISTS `enw_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_newsfeeds`
--

LOCK TABLES `enw_newsfeeds` WRITE;
/*!40000 ALTER TABLE `enw_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_overrider`
--

DROP TABLE IF EXISTS `enw_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_overrider`
--

LOCK TABLES `enw_overrider` WRITE;
/*!40000 ALTER TABLE `enw_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_postinstall_messages`
--

DROP TABLE IF EXISTS `enw_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_postinstall_messages`
--

LOCK TABLES `enw_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `enw_postinstall_messages` DISABLE KEYS */;
INSERT INTO `enw_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1);
/*!40000 ALTER TABLE `enw_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_redirect_links`
--

DROP TABLE IF EXISTS `enw_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_redirect_links`
--

LOCK TABLES `enw_redirect_links` WRITE;
/*!40000 ALTER TABLE `enw_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_schemas`
--

DROP TABLE IF EXISTS `enw_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_schemas`
--

LOCK TABLES `enw_schemas` WRITE;
/*!40000 ALTER TABLE `enw_schemas` DISABLE KEYS */;
INSERT INTO `enw_schemas` VALUES (700,'3.4.0-2015-02-26');
/*!40000 ALTER TABLE `enw_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_session`
--

DROP TABLE IF EXISTS `enw_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_session`
--

LOCK TABLES `enw_session` WRITE;
/*!40000 ALTER TABLE `enw_session` DISABLE KEYS */;
INSERT INTO `enw_session` VALUES ('gr4ptclklh6h5sfa83roapk2b4',0,1,'1434973218','__default|a:8:{s:15:\"session.counter\";i:19;s:19:\"session.timer.start\";i:1434971482;s:18:\"session.timer.last\";i:1434973176;s:17:\"session.timer.now\";i:1434973218;s:22:\"session.client.browser\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}s:9:\"separator\";s:1:\".\";}s:4:\"user\";O:5:\"JUser\":26:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}s:9:\"separator\";s:1:\".\";}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:13:\"\\0\\0\\0userHelper\";O:18:\"JUserWrapperHelper\":0:{}s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"af7717bd89d00d04bd3803540256fd3a\";}',0,''),('ms4hu2rk8cnj98ee7h3qofpen5',1,0,'1434973175','__default|a:8:{s:15:\"session.counter\";i:50;s:19:\"session.timer.start\";i:1434971490;s:18:\"session.timer.last\";i:1434973175;s:17:\"session.timer.now\";i:1434973175;s:22:\"session.client.browser\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":6:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:14:\"com_categories\";O:8:\"stdClass\":2:{s:4:\"edit\";O:8:\"stdClass\":1:{s:8:\"category\";O:8:\"stdClass\":1:{s:4:\"data\";N;}}s:10:\"categories\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:9:\"extension\";s:11:\"com_content\";}}}s:9:\"com_menus\";O:8:\"stdClass\":2:{s:5:\"items\";O:8:\"stdClass\":3:{s:8:\"menutype\";s:8:\"mainmenu\";s:10:\"limitstart\";i:0;s:4:\"list\";a:4:{s:9:\"direction\";s:3:\"asc\";s:5:\"limit\";s:2:\"20\";s:8:\"ordering\";s:5:\"a.lft\";s:5:\"start\";d:0;}}s:4:\"edit\";O:8:\"stdClass\":1:{s:4:\"item\";O:8:\"stdClass\":3:{s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;}}}s:4:\"item\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}}s:11:\"com_content\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"article\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}s:11:\"com_contact\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"contact\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}}s:9:\"separator\";s:1:\".\";}s:4:\"user\";O:5:\"JUser\":28:{s:9:\"\\0\\0\\0isRoot\";b:1;s:2:\"id\";s:3:\"697\";s:4:\"name\";s:17:\"Super Utilisateur\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:20:\"nicofisch5@gmail.com\";s:8:\"password\";s:60:\"$2y$10$rKhZJucFy6cGJUXYmys6IuB8LBIRpB5tVGzTKT/slyl/Kqh/GrrTW\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2015-06-10 11:41:58\";s:13:\"lastvisitDate\";s:19:\"2015-06-22 09:29:09\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:0:\"\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:12:\"requireReset\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}s:9:\"separator\";s:1:\".\";}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\\0\\0\\0_authLevels\";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:13:\"\\0\\0\\0userHelper\";O:18:\"JUserWrapperHelper\":0:{}s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";}s:13:\"session.token\";s:32:\"900d3739eae4df3f3da980a7a716f499\";}',697,'admin');
/*!40000 ALTER TABLE `enw_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_tags`
--

DROP TABLE IF EXISTS `enw_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_tags`
--

LOCK TABLES `enw_tags` WRITE;
/*!40000 ALTER TABLE `enw_tags` DISABLE KEYS */;
INSERT INTO `enw_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `enw_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_template_styles`
--

DROP TABLE IF EXISTS `enw_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_template_styles`
--

LOCK TABLES `enw_template_styles` WRITE;
/*!40000 ALTER TABLE `enw_template_styles` DISABLE KEYS */;
INSERT INTO `enw_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),(10,'plaindesign',0,'1','Plain Design - Par défaut','{\"logo\":\"templates\\/plaindesign\\/images\\/logo.jpg\",\"responsive\":\"yes\",\"fontfamily\":\"fontfamily1\",\"expand\":\"no\",\"bannerwidth\":\"fix\",\"bannerbg\":\"#FFFFFF\",\"bannercolor\":\"#000000\",\"copyright\":\"\",\"jqueryactive\":\"no\",\"unsetjoomjs\":\"no\",\"unsetmootools\":\"yes\",\"unsetbootstrap\":\"yes\",\"unsetjquerymin\":\"no\"}');
/*!40000 ALTER TABLE `enw_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_ucm_base`
--

DROP TABLE IF EXISTS `enw_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_ucm_base`
--

LOCK TABLES `enw_ucm_base` WRITE;
/*!40000 ALTER TABLE `enw_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_ucm_content`
--

DROP TABLE IF EXISTS `enw_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_ucm_content`
--

LOCK TABLES `enw_ucm_content` WRITE;
/*!40000 ALTER TABLE `enw_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_ucm_history`
--

DROP TABLE IF EXISTS `enw_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_ucm_history`
--

LOCK TABLES `enw_ucm_history` WRITE;
/*!40000 ALTER TABLE `enw_ucm_history` DISABLE KEYS */;
INSERT INTO `enw_ucm_history` VALUES (1,8,5,'','2015-06-10 13:03:39',697,551,'94672b597642b3af3a99958a3afc920ffa11f50b','{\"id\":8,\"asset_id\":54,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Equipes\",\"alias\":\"equipes\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-10 13:03:39\",\"modified_user_id\":null,\"modified_time\":\"2015-06-10 13:03:39\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(2,9,5,'','2015-06-10 13:04:00',697,543,'175744e1253a4aa63e26797196c6a6b3e9efe2dc','{\"id\":9,\"asset_id\":55,\"parent_id\":\"8\",\"lft\":\"12\",\"rgt\":13,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"U11\",\"alias\":\"u11\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-10 13:04:00\",\"modified_user_id\":null,\"modified_time\":\"2015-06-10 13:04:00\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(3,1,1,'','2015-06-11 14:24:46',697,3152,'660d11c7df6514280e058816662bcf6c23ee9126','{\"id\":1,\"asset_id\":57,\"title\":\"Article test U11\",\"alias\":\"article-test-u11\",\"introtext\":\"<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.<\\/p>\\r\\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2015-06-11 14:24:46\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-11 14:24:46\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-06-11 14:24:46\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/powered_by.png\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/joomla_black.gif\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(4,10,5,'','2015-06-11 14:26:32',697,544,'1d438ce0abeb2e24dd8fbde01005577b90b3f5c2','{\"id\":10,\"asset_id\":58,\"parent_id\":\"8\",\"lft\":\"14\",\"rgt\":15,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"U13\",\"alias\":\"u13\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-11 14:26:32\",\"modified_user_id\":null,\"modified_time\":\"2015-06-11 14:26:32\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(5,11,5,'','2015-06-11 14:26:41',697,544,'6a895a3e48ce89d7a1f93c5a44250cf52fe63ec5','{\"id\":11,\"asset_id\":59,\"parent_id\":\"8\",\"lft\":\"16\",\"rgt\":17,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"U15\",\"alias\":\"u15\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-11 14:26:41\",\"modified_user_id\":null,\"modified_time\":\"2015-06-11 14:26:41\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(6,12,5,'','2015-06-11 14:26:50',697,544,'91cad707401798fbe932ddf4203955c6945dd88a','{\"id\":12,\"asset_id\":60,\"parent_id\":\"8\",\"lft\":\"18\",\"rgt\":19,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"U18\",\"alias\":\"u18\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-11 14:26:50\",\"modified_user_id\":null,\"modified_time\":\"2015-06-11 14:26:50\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(7,2,1,'','2015-06-12 17:11:58',697,2039,'92d2f0df2efecfc7ea58703b5f9020d2c892b988','{\"id\":2,\"asset_id\":61,\"title\":\"Objectifs cat\\u00e9gories U11\",\"alias\":\"objectifs-categories-u11\",\"introtext\":\"<p>Objectif 1 : D\\u00e9veloppement de la MOTRICITE Globale et Fine<\\/p>\\r\\n<p>Objectif 2 : D\\u00e9veloppement des Savoirs Faire Techniques : Apprentissage des gestes. La relation joueur-ballon<\\/p>\\r\\n<p>Objectif 3 : LE JEU S\\u2019ORGANISE : D\\u00e9veloppement de la Relation joueur - ballon avec partenaires et adversaires.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2015-06-12 17:11:58\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-12 17:11:58\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-06-12 17:11:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/cr7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(8,2,1,'','2015-06-12 17:12:55',697,2138,'168ae58bc22f5c812fb705a0a499db4fb27330f5','{\"id\":2,\"asset_id\":\"61\",\"title\":\"Objectifs cat\\u00e9gories U11\",\"alias\":\"objectifs-categories-u11\",\"introtext\":\"<p>Voici les objectifs de la cat\\u00e9gorie U11 :<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Objectif 1 : D\\u00e9veloppement de la MOTRICITE Globale et Fine<\\/p>\\r\\n<p>Objectif 2 : D\\u00e9veloppement des Savoirs Faire Techniques : Apprentissage des gestes. La relation joueur-ballon<\\/p>\\r\\n<p>Objectif 3 : LE JEU S\\u2019ORGANISE : D\\u00e9veloppement de la Relation joueur - ballon avec partenaires et adversaires.<\\/p>\",\"state\":1,\"catid\":\"9\",\"created\":\"2015-06-12 17:11:58\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-12 17:12:55\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-12 17:12:37\",\"publish_up\":\"2015-06-12 17:11:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/cr7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(9,2,1,'','2015-06-12 17:19:09',697,2138,'a9c3652df1b6e1b93037a546772017a321386069','{\"id\":2,\"asset_id\":\"61\",\"title\":\"Objectifs cat\\u00e9gories U11\",\"alias\":\"objectifs-categories-u11\",\"introtext\":\"<p>Voici les objectifs de la cat\\u00e9gorie U11 :<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>Objectif 1 : D\\u00e9veloppement de la MOTRICITE Globale et Fine<\\/p>\\r\\n<p>Objectif 2 : D\\u00e9veloppement des Savoirs Faire Techniques : Apprentissage des gestes. La relation joueur-ballon<\\/p>\\r\\n<p>Objectif 3 : LE JEU S\\u2019ORGANISE : D\\u00e9veloppement de la Relation joueur - ballon avec partenaires et adversaires.<\\/p>\",\"state\":1,\"catid\":\"9\",\"created\":\"2015-06-12 17:11:58\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-12 17:19:09\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-12 17:18:52\",\"publish_up\":\"2015-06-12 17:11:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/cr7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/cr7.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"12\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(10,9,5,'','2015-06-18 12:31:08',697,578,'b3da480d29ebed6d65e6c0c87264a603ac9452f3','{\"id\":9,\"asset_id\":\"55\",\"parent_id\":\"8\",\"lft\":\"12\",\"rgt\":\"13\",\"level\":\"2\",\"path\":\"equipes\\/u11\",\"extension\":\"com_content\",\"title\":\"U11A\",\"alias\":\"u11\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-18 12:31:00\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-10 13:04:00\",\"modified_user_id\":\"697\",\"modified_time\":\"2015-06-18 12:31:08\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(11,13,5,'','2015-06-18 12:33:09',697,546,'cbd5c47380bc3d6a5ea460696876beaabaa36945','{\"id\":13,\"asset_id\":62,\"parent_id\":\"8\",\"lft\":\"20\",\"rgt\":21,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"U11B\",\"alias\":\"u11b\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-18 12:33:09\",\"modified_user_id\":null,\"modified_time\":\"2015-06-18 12:33:09\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(12,10,5,'','2015-06-18 12:33:23',697,579,'a0be57fcc3bfa2a3cfede5e981a3a56a31fd9c0e','{\"id\":10,\"asset_id\":\"58\",\"parent_id\":\"8\",\"lft\":\"16\",\"rgt\":\"17\",\"level\":\"2\",\"path\":\"equipes\\/u13\",\"extension\":\"com_content\",\"title\":\"U13A\",\"alias\":\"u13\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-18 12:33:19\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-11 14:26:32\",\"modified_user_id\":\"697\",\"modified_time\":\"2015-06-18 12:33:23\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(13,14,5,'','2015-06-18 12:37:35',697,546,'ec243f495f9d7e124dd201fcb20ab7214c3e3dc9','{\"id\":14,\"asset_id\":63,\"parent_id\":\"8\",\"lft\":\"22\",\"rgt\":23,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"U13B\",\"alias\":\"u13b\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-18 12:37:35\",\"modified_user_id\":null,\"modified_time\":\"2015-06-18 12:37:35\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(14,12,5,'','2015-06-18 12:37:45',697,579,'6e6822a394e83dec7045f40942630533cd2a3934','{\"id\":12,\"asset_id\":\"60\",\"parent_id\":\"8\",\"lft\":\"22\",\"rgt\":\"23\",\"level\":\"2\",\"path\":\"equipes\\/u18\",\"extension\":\"com_content\",\"title\":\"U18A\",\"alias\":\"u18\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-18 12:37:40\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-11 14:26:50\",\"modified_user_id\":\"697\",\"modified_time\":\"2015-06-18 12:37:45\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(15,15,5,'','2015-06-18 12:37:54',697,546,'7aae875250310508f183410aecbe500ad0bdc01f','{\"id\":15,\"asset_id\":64,\"parent_id\":\"8\",\"lft\":\"24\",\"rgt\":25,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"U18B\",\"alias\":\"u18b\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-18 12:37:54\",\"modified_user_id\":null,\"modified_time\":\"2015-06-18 12:37:54\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(16,16,5,'','2015-06-20 15:14:23',697,546,'d96249f9fe1fd716c03320d0cc67af319a4046fb','{\"id\":16,\"asset_id\":66,\"parent_id\":\"1\",\"lft\":\"27\",\"rgt\":28,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Club\",\"alias\":\"club\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-20 15:14:23\",\"modified_user_id\":null,\"modified_time\":\"2015-06-20 15:14:23\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(17,3,1,'','2015-06-20 15:16:01',697,1733,'3b900d1971fc8b8510bc0d5fa032f6829aa8bac3','{\"id\":3,\"asset_id\":67,\"title\":\"Infrastructure\",\"alias\":\"infrastructure\",\"introtext\":\"<p>{gallery}infrastructure\\/niederschaeffolsheim{\\/gallery}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"16\",\"created\":\"2015-06-20 15:16:01\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-20 15:16:01\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-06-20 15:16:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(18,4,1,'','2015-06-21 05:37:19',697,2120,'5fb16b898784fbf926006c6f93c99b2ad3550b42','{\"id\":4,\"asset_id\":68,\"title\":\"Bienvenue au site de l\'entente ENW\",\"alias\":\"bienvenue-au-site-de-l-entente-enw\",\"introtext\":\"<p>Nous sommes heureux de lancer ce jour le site de l\'entente\\u00a0Niederschaeffolsheim \\/ Weitbruch.<\\/p>\\r\\n<p>Cette entente concernent les \\u00e9quipes suivantes :<\\/p>\\r\\n<ul>\\r\\n<li>U18, 2 \\u00e9quipes<\\/li>\\r\\n<li>U15<\\/li>\\r\\n<li>U13, 2 \\u00e9quipes<\\/li>\\r\\n<li>U11, 2 \\u00e9quipes<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>N\'h\\u00e9sitez pas \\u00e0 venir nous rendre visite r\\u00e9guli\\u00e8rement !<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"16\",\"created\":\"2015-06-21 05:37:19\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 05:37:19\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-06-21 05:37:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(19,4,1,'','2015-06-21 05:42:21',697,2143,'c4471a6d1eda948b18a2e522000fb7e63404b012','{\"id\":4,\"asset_id\":\"68\",\"title\":\"Bienvenue sur le site de l\'entente ENW\",\"alias\":\"bienvenue-au-site-de-l-entente-enw\",\"introtext\":\"<p>Nous sommes heureux de lancer ce jour le site de l\'entente\\u00a0Niederschaeffolsheim \\/ Weitbruch.<\\/p>\\r\\n<p>Cette entente concernent les \\u00e9quipes suivantes :<\\/p>\\r\\n<ul>\\r\\n<li>U18, 2 \\u00e9quipes<\\/li>\\r\\n<li>U15<\\/li>\\r\\n<li>U13, 2 \\u00e9quipes<\\/li>\\r\\n<li>U11, 2 \\u00e9quipes<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>N\'h\\u00e9sitez pas \\u00e0 venir nous rendre visite r\\u00e9guli\\u00e8rement !<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"16\",\"created\":\"2015-06-21 05:37:19\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 05:42:21\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-21 05:42:15\",\"publish_up\":\"2015-06-21 05:37:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(20,1,1,'','2015-06-21 05:59:16',697,3122,'a280db6d3d46199794eaf3b51eb0a6b7be672f6c','{\"id\":1,\"asset_id\":\"57\",\"title\":\"Article test U11\",\"alias\":\"article-test-u11\",\"introtext\":\"<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.<\\/p>\\r\\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2015-06-11 14:24:46\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 05:59:16\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-21 05:59:06\",\"publish_up\":\"2015-06-11 14:24:46\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(21,5,1,'','2015-06-21 05:59:20',697,3089,'ef3cbf6e6b281d8b9aeaf5c5e258fd8f5311ac90','{\"id\":5,\"asset_id\":69,\"title\":\"Article test U11 (2)\",\"alias\":\"article-test-u11-2\",\"introtext\":\"<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.<\\/p>\\r\\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"9\",\"created\":\"2015-06-11 14:24:46\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 05:59:20\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-06-11 14:24:46\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(22,5,1,'','2015-06-21 05:59:32',697,3127,'64485083d2ba5d5ff1032751f9f5bf23756f43cb','{\"id\":5,\"asset_id\":\"69\",\"title\":\"Article test U11 - 2\",\"alias\":\"article-test-u11-2\",\"introtext\":\"<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.<\\/p>\\r\\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2015-06-11 14:24:46\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 05:59:32\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-21 05:59:20\",\"publish_up\":\"2015-06-11 14:24:46\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(23,6,1,'','2015-06-21 05:59:36',697,3089,'ada04d90dc1b40a6f93c624eb6e648db1c3f7531','{\"id\":6,\"asset_id\":70,\"title\":\"Article test U11 (3)\",\"alias\":\"article-test-u11-3\",\"introtext\":\"<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.<\\/p>\\r\\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"9\",\"created\":\"2015-06-11 14:24:46\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 05:59:36\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-06-11 14:24:46\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(24,6,1,'','2015-06-21 05:59:44',697,3127,'d923757d4f41fa43846237078070d41b9c09f3d6','{\"id\":6,\"asset_id\":\"70\",\"title\":\"Article test U11 - 3\",\"alias\":\"article-test-u11-3\",\"introtext\":\"<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.<\\/p>\\r\\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2015-06-11 14:24:46\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 05:59:44\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-21 05:59:36\",\"publish_up\":\"2015-06-11 14:24:46\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(25,6,1,'','2015-06-21 06:05:02',697,3131,'5810f9418278e70d9899b62eaaef7a70e6669209','{\"id\":6,\"asset_id\":\"70\",\"title\":\"Article test U11 - 3\",\"alias\":\"article-test-u11-3\",\"introtext\":\"<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.<\\/p>\\r\\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.<\\/p>\",\"state\":1,\"catid\":\"9\",\"created\":\"2015-06-11 14:24:46\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 06:05:02\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-21 06:04:56\",\"publish_up\":\"2015-06-11 14:24:46\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(26,5,1,'','2015-06-21 06:05:10',697,3149,'720a68e07e7034595b0ecb59dd4503bfd3d82935','{\"id\":5,\"asset_id\":\"69\",\"title\":\"Article test U11 - 2\",\"alias\":\"article-test-u11-2\",\"introtext\":\"<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.<\\/p>\",\"state\":1,\"catid\":\"9\",\"created\":\"2015-06-11 14:24:46\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 06:05:10\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-21 06:05:04\",\"publish_up\":\"2015-06-11 14:24:46\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(27,1,1,'','2015-06-21 06:05:17',697,3144,'4487ba403a728462fc8115e11fa2e546a6d98743','{\"id\":1,\"asset_id\":\"57\",\"title\":\"Article test U11\",\"alias\":\"article-test-u11\",\"introtext\":\"<p>Lost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.<\\/p>\\r\\n<p>Iam virtutem ex consuetudine vitae sermonisque nostri interpretemur nec eam, ut quidam docti, verborum magnificentia metiamur virosque bonos eos, qui habentur, numeremus, Paulos, Catones, Galos, Scipiones, Philos; his communis vita contenta est; eos autem omittamus, qui omnino nusquam reperiuntur.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Ex his quidam aeternitati se commendari posse per statuas aestimantes eas ardenter adfectant quasi plus praemii de figmentis aereis sensu carentibus adepturi, quam ex conscientia honeste recteque factorum, easque auro curant inbracteari, quod Acilio Glabrioni delatum est primo, cum consiliis armisque regem superasset Antiochum. quam autem sit pulchrum exigua haec spernentem et minima ad ascensus verae gloriae tendere longos et arduos, ut memorat vates Ascraeus, Censorius Cato monstravit. qui interrogatus quam ob rem inter multos... statuam non haberet malo inquit ambigere bonos quam ob rem id non meruerim, quam quod est gravius cur inpetraverim mussitare.<\\/p>\",\"state\":1,\"catid\":\"9\",\"created\":\"2015-06-11 14:24:46\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 06:05:17\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-21 06:05:12\",\"publish_up\":\"2015-06-11 14:24:46\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(28,4,1,'','2015-06-21 06:07:31',697,2165,'5b51182b4d3243bdb8eaf9ee5b69893109d18cde','{\"id\":4,\"asset_id\":\"68\",\"title\":\"Bienvenue sur le site de l\'entente ENW\",\"alias\":\"bienvenue-au-site-de-l-entente-enw\",\"introtext\":\"<p>Nous sommes heureux de lancer ce jour le site de l\'entente\\u00a0Niederschaeffolsheim \\/ Weitbruch.<\\/p>\\r\\n<p>Cette entente concernent les \\u00e9quipes suivantes :<\\/p>\\r\\n<ul>\\r\\n<li>U18, 2 \\u00e9quipes<\\/li>\\r\\n<li>U15<\\/li>\\r\\n<li>U13, 2 \\u00e9quipes<\\/li>\\r\\n<li>U11, 2 \\u00e9quipes<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u00a0<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>N\'h\\u00e9sitez pas \\u00e0 venir nous rendre visite r\\u00e9guli\\u00e8rement !<\\/p>\",\"state\":1,\"catid\":\"16\",\"created\":\"2015-06-21 05:37:19\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-21 06:07:31\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-21 06:07:25\",\"publish_up\":\"2015-06-21 05:37:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(31,1,2,'','2015-06-22 06:25:59',697,6032,'b8baae401ffbf69b3d5e8092e5742bd8eaf9c963','{\"id\":1,\"name\":\"Entente\",\"alias\":\"entente\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"06 72 00 66 98\",\"fax\":\"\",\"misc\":\"<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"center\\\"><span style=\\\"text-decoration: underline;\\\"><b>Fiche de contact\\u00a0: Entente FC Niederschaeffolsheim \\u2013 FC Weitbruch<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><br \\/> <\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Responsable entente\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Pr\\u00e9sident jeunes FC Nieder\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Pr\\u00e9sident jeunes Weitbruch\\u00a0: Raphael Gijon 06.36.50.73.18 <a href=\\\"mailto:raflolmorg14@gmail.com\\\">raflolmorg14@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><br \\/> <\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span style=\\\"text-decoration: underline;\\\">Section U18\\u00a0:<\\/span><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Equipe 1\\u00a0: Dany Andres (FCN) 06.24.32.40.78 <a href=\\\"mailto:andres.daniel7@free.fr\\\">andres.daniel7@free.fr<\\/a><\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe 2\\u00a0: Thierry Blanck (FCW) 06.33.15.85.70 <a href=\\\"mailto:thierry.blanck@wanadoo.fr\\\">thierry.blanck@wanadoo.fr<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p lang=\\\"en-US\\\" style=\\\"margin-left: 1.27cm; margin-bottom: 0.35cm; line-height: 115%;\\\"><br \\/> <\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span style=\\\"text-decoration: underline;\\\">Section U15\\u00a0:<\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Responsable\\u00a0: Franck Zipper (FCW) 06.70.67.43.52 <a href=\\\"mailto:franck.zipper@orange.fr\\\">franck.zipper@orange.fr<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Dirigeant\\u00a0: Pascal Steinmetz (FCN) 06.03.37.59.56 <a href=\\\"mailto:anthony.steinmetz@hotmail.fr\\\">anthony.steinmetz@hotmail.fr<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">Mickael (FCW) xx.xx.xx.xx.xx <a href=\\\"mailto:xxxxxxxxxxx@xxxxxx.fr\\\">xxxxxxxxxxx@xxxxxx.fr<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><a name=\\\"_GoBack\\\"><\\/a> <span lang=\\\"en-US\\\"><span style=\\\"text-decoration: underline;\\\">Section U13\\u00a0:<\\/span><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">-Equipe 1 (FCN): Nicolas Wartzolff 06.33.37.06.77 <a href=\\\"mailto:nwartzolff@gmail.com\\\">nwartzolff@gmail.com<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">-Equipe 2 (FCW): Raphael Gijon 06.36.50.73.18 <a href=\\\"mailto:raflolmorg14@gmail.com\\\">raflolmorg14@gmail.com<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Dirigeant\\u00a0: Caspar Romain (FCN) 06.86.25.62.66 <a href=\\\"mailto:caspar.romain@hotmail.com\\\">caspar.romain@hotmail.com<\\/a><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span style=\\\"text-decoration: underline;\\\">Section U11\\u00a0:<\\/span><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe \\u00a0(Batz)\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe (Weit) : Isidro Oliva 07.87.97.45.68 <a href=\\\"mailto:isidro.oliva@vossloh-cogifer.com\\\">isidro.oliva@vossloh-cogifer.com<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Dirigeant: Jean-Claude Foehr 06.18.62.01.11 <a href=\\\"mailto:sylvie.hincker@wanadoo.fr\\\">sylvie.hincker@wanadoo.fr<\\/a><\\/p>\",\"image\":\"\",\"email_to\":\"franckhouth@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 06:25:19\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":false,\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2015-06-22 06:22:45\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 06:25:59\",\"modified_by\":\"697\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":3,\"hits\":\"2\"}',0),(32,1,2,'','2015-06-22 06:27:04',697,6079,'d9246937372b635f7d01fac9f3c194bd1ec6c490','{\"id\":1,\"name\":\"Franck Houth\",\"alias\":\"entente\",\"con_position\":\"Responsable de l\'entente\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"06 72 00 66 98\",\"fax\":\"\",\"misc\":\"<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"center\\\"><span style=\\\"text-decoration: underline;\\\"><b>Fiche de contact\\u00a0: Entente FC Niederschaeffolsheim \\u2013 FC Weitbruch<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Responsable entente\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Pr\\u00e9sident jeunes FC Nieder\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Pr\\u00e9sident jeunes Weitbruch\\u00a0: Raphael Gijon 06.36.50.73.18 <a href=\\\"mailto:raflolmorg14@gmail.com\\\">raflolmorg14@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span style=\\\"text-decoration: underline;\\\">Section U18\\u00a0:<\\/span><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Equipe 1\\u00a0: Dany Andres (FCN) 06.24.32.40.78 <a href=\\\"mailto:andres.daniel7@free.fr\\\">andres.daniel7@free.fr<\\/a><\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe 2\\u00a0: Thierry Blanck (FCW) 06.33.15.85.70 <a href=\\\"mailto:thierry.blanck@wanadoo.fr\\\">thierry.blanck@wanadoo.fr<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p lang=\\\"en-US\\\" style=\\\"margin-left: 1.27cm; margin-bottom: 0.35cm; line-height: 115%;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span style=\\\"text-decoration: underline;\\\">Section U15\\u00a0:<\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Responsable\\u00a0: Franck Zipper (FCW) 06.70.67.43.52 <a href=\\\"mailto:franck.zipper@orange.fr\\\">franck.zipper@orange.fr<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Dirigeant\\u00a0: Pascal Steinmetz (FCN) 06.03.37.59.56 <a href=\\\"mailto:anthony.steinmetz@hotmail.fr\\\">anthony.steinmetz@hotmail.fr<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">Mickael (FCW) xx.xx.xx.xx.xx <a href=\\\"mailto:xxxxxxxxxxx@xxxxxx.fr\\\">xxxxxxxxxxx@xxxxxx.fr<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><a name=\\\"_GoBack\\\"><\\/a> <span lang=\\\"en-US\\\"><span style=\\\"text-decoration: underline;\\\">Section U13\\u00a0:<\\/span><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">-Equipe 1 (FCN): Nicolas Wartzolff 06.33.37.06.77 <a href=\\\"mailto:nwartzolff@gmail.com\\\">nwartzolff@gmail.com<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">-Equipe 2 (FCW): Raphael Gijon 06.36.50.73.18 <a href=\\\"mailto:raflolmorg14@gmail.com\\\">raflolmorg14@gmail.com<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Dirigeant\\u00a0: Caspar Romain (FCN) 06.86.25.62.66 <a href=\\\"mailto:caspar.romain@hotmail.com\\\">caspar.romain@hotmail.com<\\/a><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span style=\\\"text-decoration: underline;\\\">Section U11\\u00a0:<\\/span><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe \\u00a0(Batz)\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe (Weit) : Isidro Oliva 07.87.97.45.68 <a href=\\\"mailto:isidro.oliva@vossloh-cogifer.com\\\">isidro.oliva@vossloh-cogifer.com<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Dirigeant: Jean-Claude Foehr 06.18.62.01.11 <a href=\\\"mailto:sylvie.hincker@wanadoo.fr\\\">sylvie.hincker@wanadoo.fr<\\/a><\\/p>\",\"image\":\"\",\"email_to\":\"franckhouth@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 06:25:59\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":\"http:\\/\\/www.enw-footbal.fr\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2015-06-22 06:22:45\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 06:27:04\",\"modified_by\":\"697\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":4,\"hits\":\"3\"}',0),(33,1,2,'','2015-06-22 06:27:26',697,6091,'742d0496a5d5c86826e51940fa7208d181064400','{\"id\":1,\"name\":\"Franck Houth\",\"alias\":\"entente\",\"con_position\":\"Responsable de l\'entente\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"06 72 00 66 98\",\"fax\":\"\",\"misc\":\"<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"center\\\"><span style=\\\"text-decoration: underline;\\\"><b>Fiche de contact\\u00a0: Entente FC Niederschaeffolsheim \\u2013 FC Weitbruch<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Responsable entente\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Pr\\u00e9sident jeunes FC Nieder\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Pr\\u00e9sident jeunes Weitbruch\\u00a0: Raphael Gijon 06.36.50.73.18 <a href=\\\"mailto:raflolmorg14@gmail.com\\\">raflolmorg14@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span style=\\\"text-decoration: underline;\\\">Section U18\\u00a0:<\\/span><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Equipe 1\\u00a0: Dany Andres (FCN) 06.24.32.40.78 <a href=\\\"mailto:andres.daniel7@free.fr\\\">andres.daniel7@free.fr<\\/a><\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe 2\\u00a0: Thierry Blanck (FCW) 06.33.15.85.70 <a href=\\\"mailto:thierry.blanck@wanadoo.fr\\\">thierry.blanck@wanadoo.fr<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p lang=\\\"en-US\\\" style=\\\"margin-left: 1.27cm; margin-bottom: 0.35cm; line-height: 115%;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span style=\\\"text-decoration: underline;\\\">Section U15\\u00a0:<\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Responsable\\u00a0: Franck Zipper (FCW) 06.70.67.43.52 <a href=\\\"mailto:franck.zipper@orange.fr\\\">franck.zipper@orange.fr<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Dirigeant\\u00a0: Pascal Steinmetz (FCN) 06.03.37.59.56 <a href=\\\"mailto:anthony.steinmetz@hotmail.fr\\\">anthony.steinmetz@hotmail.fr<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">Mickael (FCW) xx.xx.xx.xx.xx <a href=\\\"mailto:xxxxxxxxxxx@xxxxxx.fr\\\">xxxxxxxxxxx@xxxxxx.fr<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><a name=\\\"_GoBack\\\"><\\/a> <span lang=\\\"en-US\\\"><span style=\\\"text-decoration: underline;\\\">Section U13\\u00a0:<\\/span><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">-Equipe 1 (FCN): Nicolas Wartzolff 06.33.37.06.77 <a href=\\\"mailto:nwartzolff@gmail.com\\\">nwartzolff@gmail.com<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">-Equipe 2 (FCW): Raphael Gijon 06.36.50.73.18 <a href=\\\"mailto:raflolmorg14@gmail.com\\\">raflolmorg14@gmail.com<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Dirigeant\\u00a0: Caspar Romain (FCN) 06.86.25.62.66 <a href=\\\"mailto:caspar.romain@hotmail.com\\\">caspar.romain@hotmail.com<\\/a><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span style=\\\"text-decoration: underline;\\\">Section U11\\u00a0:<\\/span><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe \\u00a0(Batz)\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe (Weit) : Isidro Oliva 07.87.97.45.68 <a href=\\\"mailto:isidro.oliva@vossloh-cogifer.com\\\">isidro.oliva@vossloh-cogifer.com<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Dirigeant: Jean-Claude Foehr 06.18.62.01.11 <a href=\\\"mailto:sylvie.hincker@wanadoo.fr\\\">sylvie.hincker@wanadoo.fr<\\/a><\\/p>\",\"image\":\"\",\"email_to\":\"franckhouth@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 06:27:04\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"show_no_link\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":\"http:\\/\\/www.enw-footbal.fr\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2015-06-22 06:22:45\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 06:27:26\",\"modified_by\":\"697\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":5,\"hits\":\"4\"}',0),(34,1,2,'','2015-06-22 06:27:35',697,6080,'b37413358c5b3307dba53b6d1079794fa7aa98f7','{\"id\":1,\"name\":\"Franck Houth\",\"alias\":\"entente\",\"con_position\":\"Responsable de l\'entente\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"06 72 00 66 98\",\"fax\":\"\",\"misc\":\"<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"center\\\"><span style=\\\"text-decoration: underline;\\\"><b>Fiche de contact\\u00a0: Entente FC Niederschaeffolsheim \\u2013 FC Weitbruch<\\/b><\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Responsable entente\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Pr\\u00e9sident jeunes FC Nieder\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Pr\\u00e9sident jeunes Weitbruch\\u00a0: Raphael Gijon 06.36.50.73.18 <a href=\\\"mailto:raflolmorg14@gmail.com\\\">raflolmorg14@gmail.com<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span style=\\\"text-decoration: underline;\\\">Section U18\\u00a0:<\\/span><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Equipe 1\\u00a0: Dany Andres (FCN) 06.24.32.40.78 <a href=\\\"mailto:andres.daniel7@free.fr\\\">andres.daniel7@free.fr<\\/a><\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe 2\\u00a0: Thierry Blanck (FCW) 06.33.15.85.70 <a href=\\\"mailto:thierry.blanck@wanadoo.fr\\\">thierry.blanck@wanadoo.fr<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p lang=\\\"en-US\\\" style=\\\"margin-left: 1.27cm; margin-bottom: 0.35cm; line-height: 115%;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span style=\\\"text-decoration: underline;\\\">Section U15\\u00a0:<\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Responsable\\u00a0: Franck Zipper (FCW) 06.70.67.43.52 <a href=\\\"mailto:franck.zipper@orange.fr\\\">franck.zipper@orange.fr<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Dirigeant\\u00a0: Pascal Steinmetz (FCN) 06.03.37.59.56 <a href=\\\"mailto:anthony.steinmetz@hotmail.fr\\\">anthony.steinmetz@hotmail.fr<\\/a><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">Mickael (FCW) xx.xx.xx.xx.xx <a href=\\\"mailto:xxxxxxxxxxx@xxxxxx.fr\\\">xxxxxxxxxxx@xxxxxx.fr<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><a name=\\\"_GoBack\\\"><\\/a> <span lang=\\\"en-US\\\"><span style=\\\"text-decoration: underline;\\\">Section U13\\u00a0:<\\/span><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">-Equipe 1 (FCN): Nicolas Wartzolff 06.33.37.06.77 <a href=\\\"mailto:nwartzolff@gmail.com\\\">nwartzolff@gmail.com<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\"><span lang=\\\"en-US\\\">-Equipe 2 (FCW): Raphael Gijon 06.36.50.73.18 <a href=\\\"mailto:raflolmorg14@gmail.com\\\">raflolmorg14@gmail.com<\\/a><\\/span><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">Dirigeant\\u00a0: Caspar Romain (FCN) 06.86.25.62.66 <a href=\\\"mailto:caspar.romain@hotmail.com\\\">caspar.romain@hotmail.com<\\/a><\\/p>\\r\\n<p style=\\\"text-indent: 1.25cm; margin-bottom: 0.35cm; line-height: 115%;\\\" align=\\\"justify\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span style=\\\"text-decoration: underline;\\\">Section U11\\u00a0:<\\/span><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe \\u00a0(Batz)\\u00a0: Franck Houth 06.72.00.66.98 <a href=\\\"mailto:franckhouth@gmail.com\\\">franckhouth@gmail.com<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\"><span lang=\\\"en-US\\\">Equipe (Weit) : Isidro Oliva 07.87.97.45.68 <a href=\\\"mailto:isidro.oliva@vossloh-cogifer.com\\\">isidro.oliva@vossloh-cogifer.com<\\/a><\\/span><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\\"margin-bottom: 0.35cm; line-height: 115%;\\\">Dirigeant: Jean-Claude Foehr 06.18.62.01.11 <a href=\\\"mailto:sylvie.hincker@wanadoo.fr\\\">sylvie.hincker@wanadoo.fr<\\/a><\\/p>\",\"image\":\"\",\"email_to\":\"franckhouth@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 06:27:26\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"1\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":\"http:\\/\\/www.enw-footbal.fr\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2015-06-22 06:22:45\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 06:27:35\",\"modified_by\":\"697\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":6,\"hits\":\"5\"}',0),(35,1,2,'','2015-06-22 06:34:25',697,3087,'0359a0d0b48f0a7e0f56ce9a70ee5d7df9257abc','{\"id\":1,\"name\":\"Franck Houth\",\"alias\":\"entente\",\"con_position\":\"Responsable de l\'entente\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"06 72 00 66 98\",\"fax\":\"\",\"misc\":\"<p>Responsable entente\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes FC Nieder\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes Weitbruch\\u00a0: Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com<\\/p>\\r\\n<p>Section U18\\u00a0:<br \\/> Equipe 1\\u00a0: Dany Andres (FCN) 06.24.32.40.78 andres.daniel7@free.fr <br \\/>Equipe 2\\u00a0: Thierry Blanck (FCW) 06.33.15.85.70 thierry.blanck@wanadoo.fr<\\/p>\\r\\n<p>Section U15\\u00a0: <br \\/>Responsable\\u00a0: Franck Zipper (FCW) 06.70.67.43.52 franck.zipper@orange.fr <br \\/>Dirigeant\\u00a0: Pascal Steinmetz (FCN) 06.03.37.59.56 anthony.steinmetz@hotmail.fr Mickael (FCW) xx.xx.xx.xx.xx xxxxxxxxxxx@xxxxxx.fr<\\/p>\\r\\n<p>Section U13\\u00a0: <br \\/>-Equipe 1 (FCN): Nicolas Wartzolff 06.33.37.06.77 nwartzolff@gmail.com <br \\/>-Equipe 2 (FCW): Raphael Gijon 06.36.50.73.18 raflolmorg14@gmail.com <br \\/>Dirigeant\\u00a0: Caspar Romain (FCN) 06.86.25.62.66 caspar.romain@hotmail.com<\\/p>\\r\\n<p>Section U11\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe \\u00a0(Batz)\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com<\\/li>\\r\\n<li>Equipe (Weit) : Isidro Oliva - 07.87.97.45.68 - isidro.oliva [at] vossloh-cogifer.com<\\/li>\\r\\n<li>Dirigeant : Jean-Claude Foehr - 06.18.62.01.11 - sylvie.hincker [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\",\"image\":\"\",\"email_to\":\"franckhouth@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 06:27:35\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":\"http:\\/\\/www.enw-footbal.fr\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2015-06-22 06:22:45\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 06:34:25\",\"modified_by\":\"697\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":7,\"hits\":\"10\"}',0),(36,1,2,'','2015-06-22 06:36:59',697,3135,'a4b583f866145f4e457bca166c589af62f55cbfa','{\"id\":1,\"name\":\"Franck Houth\",\"alias\":\"entente\",\"con_position\":\"Responsable de l\'entente\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"06 72 00 66 98\",\"fax\":\"\",\"misc\":\"<p>Responsable entente\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes FC Nieder\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes Weitbruch\\u00a0: Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com<\\/p>\\r\\n<p>Section U18\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe 1\\u00a0: Dany Andres (FCN) - 06.24.32.40.78 - andres.daniel7 [at] free.fr<\\/li>\\r\\n<li>Equipe 2\\u00a0: Thierry Blanck (FCW) - 06.33.15.85.70 - thierry.blanck [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U15\\u00a0: <br \\/>Responsable\\u00a0: Franck Zipper (FCW) 06.70.67.43.52 franck.zipper@orange.fr <br \\/>Dirigeant\\u00a0: Pascal Steinmetz (FCN) 06.03.37.59.56 anthony.steinmetz@hotmail.fr Mickael (FCW) xx.xx.xx.xx.xx xxxxxxxxxxx@xxxxxx.fr<\\/p>\\r\\n<p>Section U13\\u00a0: <br \\/>-Equipe 1 (FCN): Nicolas Wartzolff 06.33.37.06.77 nwartzolff@gmail.com <br \\/>-Equipe 2 (FCW): Raphael Gijon 06.36.50.73.18 raflolmorg14@gmail.com <br \\/>Dirigeant\\u00a0: Caspar Romain (FCN) 06.86.25.62.66 caspar.romain@hotmail.com<\\/p>\\r\\n<p>Section U11\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe \\u00a0(Batz)\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com<\\/li>\\r\\n<li>Equipe (Weit) : Isidro Oliva - 07.87.97.45.68 - isidro.oliva [at] vossloh-cogifer.com<\\/li>\\r\\n<li>Dirigeant : Jean-Claude Foehr - 06.18.62.01.11 - sylvie.hincker [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\",\"image\":\"\",\"email_to\":\"franckhouth@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 06:34:25\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":\"http:\\/\\/www.enw-footbal.fr\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2015-06-22 06:22:45\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 06:36:59\",\"modified_by\":\"697\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":8,\"hits\":\"11\"}',0),(37,1,2,'','2015-06-22 06:48:26',697,3261,'399aea99fd09fa0b7e1c531214212d6910348597','{\"id\":1,\"name\":\"Franck Houth\",\"alias\":\"entente\",\"con_position\":\"Responsable de l\'entente\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"06 72 00 66 98\",\"fax\":\"\",\"misc\":\"<p>Responsable entente\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes FC Nieder\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes Weitbruch\\u00a0: Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com<\\/p>\\r\\n<p>Section U18\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe 1\\u00a0: Dany Andres (FCN) - 06.24.32.40.78 - andres.daniel7 [at] free.fr<\\/li>\\r\\n<li>Equipe 2\\u00a0: Thierry Blanck (FCW) - 06.33.15.85.70 - thierry.blanck [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U15\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Responsable\\u00a0: Franck Zipper (FCW) - 06.70.67.43.52 - franck.zipper [at] orange.fr<\\/li>\\r\\n<li>Dirigeant\\u00a0: Pascal Steinmetz (FCN) - 06.03.37.59.56 - anthony.steinmetz [at] hotmail.fr<\\/li>\\r\\n<li>Mickael (FCW) - xx.xx.xx.xx.xx xxxxxxxxxxx [at] xxxxxx.fr<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U13\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe 1 (FCN) : Nicolas Wartzolff - 06.33.37.06.77 - nwartzolff [at] gmail.com<\\/li>\\r\\n<li>Equipe 2 (FCW) : Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com<\\/li>\\r\\n<li>Dirigeant\\u00a0: Caspar Romain (FCN) - 06.86.25.62.66 - caspar.romain@hotmail.com<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U11\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe \\u00a0(Batz)\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com<\\/li>\\r\\n<li>Equipe (Weit) : Isidro Oliva - 07.87.97.45.68 - isidro.oliva [at] vossloh-cogifer.com<\\/li>\\r\\n<li>Dirigeant : Jean-Claude Foehr - 06.18.62.01.11 - sylvie.hincker [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\",\"image\":\"\",\"email_to\":\"franckhouth@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 06:36:59\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":\"http:\\/\\/www.enw-footbal.fr\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2015-06-22 06:22:45\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 06:48:26\",\"modified_by\":\"697\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":9,\"hits\":\"12\"}',0),(38,1,2,'','2015-06-22 09:30:02',697,3267,'61bb8f01349ad9194cacc3c337b6e74db085a5db','{\"id\":1,\"name\":\"Franck Houth\",\"alias\":\"entente\",\"con_position\":\"Responsable de l\'entente\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"06 72 00 66 98\",\"fax\":\"\",\"misc\":\"<p>Responsable entente\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes FC Nieder\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes Weitbruch\\u00a0: Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com<\\/p>\\r\\n<p>Section U18\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe 1\\u00a0: Dany Andres (FCN) - 06.24.32.40.78 - andres.daniel7 [at] free.fr<\\/li>\\r\\n<li>Equipe 2\\u00a0: Thierry Blanck (FCW) - 06.33.15.85.70 - thierry.blanck [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U15\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Responsable\\u00a0: Franck Zipper (FCW) - 06.70.67.43.52 - franck.zipper [at] orange.fr<\\/li>\\r\\n<li>Dirigeant\\u00a0: Pascal Steinmetz (FCN) - 06.03.37.59.56 - anthony.steinmetz [at] hotmail.fr<\\/li>\\r\\n<li>Mickael (FCW) - xx.xx.xx.xx.xx xxxxxxxxxxx [at] xxxxxx.fr<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U13\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe 1 (FCN) : Nicolas Wartzolff - 06.33.37.06.77 - nwartzolff [at] gmail.com<\\/li>\\r\\n<li>Equipe 2 (FCW) : Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com<\\/li>\\r\\n<li>Dirigeant\\u00a0: Caspar Romain (FCN) - 06.86.25.62.66 - caspar.romain@hotmail.com<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U11\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe \\u00a0(Batz)\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com<\\/li>\\r\\n<li>Equipe (Weit) : Isidro Oliva - 07.87.97.45.68 - isidro.oliva [at] vossloh-cogifer.com<\\/li>\\r\\n<li>Dirigeant : Jean-Claude Foehr - 06.18.62.01.11 - sylvie.hincker [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\",\"image\":\"\",\"email_to\":\"franckhouth@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 09:29:22\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"plain\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":\"http:\\/\\/www.enw-footbal.fr\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2015-06-22 06:22:45\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 09:30:02\",\"modified_by\":\"697\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":11,\"hits\":\"23\"}',0),(39,1,2,'','2015-06-22 09:30:21',697,3266,'cebde79b5a5502cf17cbd252fb31c540d165360a','{\"id\":1,\"name\":\"Franck Houth\",\"alias\":\"entente\",\"con_position\":\"Responsable de l\'entente\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"06 72 00 66 98\",\"fax\":\"\",\"misc\":\"<p>Responsable entente\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes FC Nieder\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes Weitbruch\\u00a0: Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com<\\/p>\\r\\n<p>Section U18\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe 1\\u00a0: Dany Andres (FCN) - 06.24.32.40.78 - andres.daniel7 [at] free.fr<\\/li>\\r\\n<li>Equipe 2\\u00a0: Thierry Blanck (FCW) - 06.33.15.85.70 - thierry.blanck [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U15\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Responsable\\u00a0: Franck Zipper (FCW) - 06.70.67.43.52 - franck.zipper [at] orange.fr<\\/li>\\r\\n<li>Dirigeant\\u00a0: Pascal Steinmetz (FCN) - 06.03.37.59.56 - anthony.steinmetz [at] hotmail.fr<\\/li>\\r\\n<li>Mickael (FCW) - xx.xx.xx.xx.xx xxxxxxxxxxx [at] xxxxxx.fr<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U13\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe 1 (FCN) : Nicolas Wartzolff - 06.33.37.06.77 - nwartzolff [at] gmail.com<\\/li>\\r\\n<li>Equipe 2 (FCW) : Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com<\\/li>\\r\\n<li>Dirigeant\\u00a0: Caspar Romain (FCN) - 06.86.25.62.66 - caspar.romain@hotmail.com<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U11\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe \\u00a0(Batz)\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com<\\/li>\\r\\n<li>Equipe (Weit) : Isidro Oliva - 07.87.97.45.68 - isidro.oliva [at] vossloh-cogifer.com<\\/li>\\r\\n<li>Dirigeant : Jean-Claude Foehr - 06.18.62.01.11 - sylvie.hincker [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\",\"image\":\"\",\"email_to\":\"franckhouth@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 09:30:02\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"tabs\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":\"http:\\/\\/www.enw-footbal.fr\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2015-06-22 06:22:45\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 09:30:21\",\"modified_by\":\"697\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":12,\"hits\":\"25\"}',0),(40,1,2,'','2015-06-22 09:30:34',697,3269,'bfb6ada59483c44fa4aa3d684b920fe71ab00e01','{\"id\":1,\"name\":\"Franck Houth\",\"alias\":\"entente\",\"con_position\":\"Responsable de l\'entente\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"06 72 00 66 98\",\"fax\":\"\",\"misc\":\"<p>Responsable entente\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes FC Nieder\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com <br \\/>Pr\\u00e9sident jeunes Weitbruch\\u00a0: Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com<\\/p>\\r\\n<p>Section U18\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe 1\\u00a0: Dany Andres (FCN) - 06.24.32.40.78 - andres.daniel7 [at] free.fr<\\/li>\\r\\n<li>Equipe 2\\u00a0: Thierry Blanck (FCW) - 06.33.15.85.70 - thierry.blanck [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U15\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Responsable\\u00a0: Franck Zipper (FCW) - 06.70.67.43.52 - franck.zipper [at] orange.fr<\\/li>\\r\\n<li>Dirigeant\\u00a0: Pascal Steinmetz (FCN) - 06.03.37.59.56 - anthony.steinmetz [at] hotmail.fr<\\/li>\\r\\n<li>Mickael (FCW) - xx.xx.xx.xx.xx xxxxxxxxxxx [at] xxxxxx.fr<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U13\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe 1 (FCN) : Nicolas Wartzolff - 06.33.37.06.77 - nwartzolff [at] gmail.com<\\/li>\\r\\n<li>Equipe 2 (FCW) : Raphael Gijon - 06.36.50.73.18 - raflolmorg14 [at] gmail.com<\\/li>\\r\\n<li>Dirigeant\\u00a0: Caspar Romain (FCN) - 06.86.25.62.66 - caspar.romain@hotmail.com<\\/li>\\r\\n<\\/ul>\\r\\n<p>Section U11\\u00a0:<\\/p>\\r\\n<ul>\\r\\n<li>Equipe \\u00a0(Batz)\\u00a0: Franck Houth - 06.72.00.66.98 - franckhouth [at] gmail.com<\\/li>\\r\\n<li>Equipe (Weit) : Isidro Oliva - 07.87.97.45.68 - isidro.oliva [at] vossloh-cogifer.com<\\/li>\\r\\n<li>Dirigeant : Jean-Claude Foehr - 06.18.62.01.11 - sylvie.hincker [at] wanadoo.fr<\\/li>\\r\\n<\\/ul>\",\"image\":\"\",\"email_to\":\"franckhouth@gmail.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 09:30:21\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"sliders\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":\"http:\\/\\/www.enw-footbal.fr\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2015-06-22 06:22:45\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 09:30:34\",\"modified_by\":\"697\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":13,\"hits\":\"26\"}',0),(41,17,5,'','2015-06-22 11:12:02',697,567,'838ef95efe6f41d525e14646b7dd18994fd149ed','{\"id\":17,\"asset_id\":71,\"parent_id\":\"16\",\"lft\":\"28\",\"rgt\":29,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Infrastructure\",\"alias\":\"infrastructure\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"697\",\"created_time\":\"2015-06-22 11:12:02\",\"modified_user_id\":null,\"modified_time\":\"2015-06-22 11:12:02\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(42,3,1,'','2015-06-22 11:31:46',697,1773,'2d2a13623f086ef31c7fb3925dd5d8fea7c7cfc0','{\"id\":3,\"asset_id\":\"67\",\"title\":\"Infrastructure Niederschaeffolsheim\",\"alias\":\"infrastructure\",\"introtext\":\"<p>{gallery}infrastructure\\/niederschaeffolsheim{\\/gallery}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"16\",\"created\":\"2015-06-20 15:16:01\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 11:31:46\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 11:12:35\",\"publish_up\":\"2015-06-20 15:16:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(43,3,1,'','2015-06-22 11:31:55',697,1773,'4bca6740a326501bac67ee08f33fb78add0b7bc5','{\"id\":3,\"asset_id\":\"67\",\"title\":\"Infrastructure Niederschaeffolsheim\",\"alias\":\"infrastructure\",\"introtext\":\"<p>{gallery}infrastructure\\/niederschaeffolsheim{\\/gallery}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"17\",\"created\":\"2015-06-20 15:16:01\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 11:31:55\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 11:31:51\",\"publish_up\":\"2015-06-20 15:16:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(44,7,1,'','2015-06-22 11:32:00',697,1741,'c2c0c3cc3f672216694517e2c9c1dc11dca64683','{\"id\":7,\"asset_id\":72,\"title\":\"Infrastructure Niederschaeffolsheim (2)\",\"alias\":\"infrastructure-2\",\"introtext\":\"<p>{gallery}infrastructure\\/niederschaeffolsheim{\\/gallery}<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"17\",\"created\":\"2015-06-20 15:16:01\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 11:32:00\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-06-20 15:16:01\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(45,7,1,'','2015-06-22 11:32:17',697,1761,'7fa45e866207805bd42af0d86a486c62e3f3af3d','{\"id\":7,\"asset_id\":\"72\",\"title\":\"Infrastructure Weitbruch\",\"alias\":\"infrastructure-weitbruch\",\"introtext\":\"<p>{gallery}infrastructure\\/weitbruch{\\/gallery}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"17\",\"created\":\"2015-06-20 15:16:01\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 11:32:17\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 11:32:00\",\"publish_up\":\"2015-06-20 15:16:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(46,3,1,'','2015-06-22 11:32:28',697,1794,'2b970435e7fe7c2fb209a8f38b009cbc43b9373b','{\"id\":3,\"asset_id\":\"67\",\"title\":\"Infrastructure Niederschaeffolsheim\",\"alias\":\"infrastructure-niederschaeffolsheim\",\"introtext\":\"<p>{gallery}infrastructure\\/niederschaeffolsheim{\\/gallery}<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"17\",\"created\":\"2015-06-20 15:16:01\",\"created_by\":\"697\",\"created_by_alias\":\"\",\"modified\":\"2015-06-22 11:32:28\",\"modified_by\":\"697\",\"checked_out\":\"697\",\"checked_out_time\":\"2015-06-22 11:32:19\",\"publish_up\":\"2015-06-20 15:16:01\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `enw_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_update_sites`
--

DROP TABLE IF EXISTS `enw_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_update_sites`
--

LOCK TABLES `enw_update_sites` WRITE;
/*!40000 ALTER TABLE `enw_update_sites` DISABLE KEYS */;
INSERT INTO `enw_update_sites` VALUES (1,'Joomla! Core','collection','http://update.joomla.org/core/list.xml',1,1434965352,''),(2,'Joomla! Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1434965352,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,0,''),(4,'Joomla! Update Component Update Site','extension','http://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,0,'');
/*!40000 ALTER TABLE `enw_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_update_sites_extensions`
--

DROP TABLE IF EXISTS `enw_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_update_sites_extensions`
--

LOCK TABLES `enw_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `enw_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `enw_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(4,28),(5,605);
/*!40000 ALTER TABLE `enw_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_updates`
--

DROP TABLE IF EXISTS `enw_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_updates`
--

LOCK TABLES `enw_updates` WRITE;
/*!40000 ALTER TABLE `enw_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_user_keys`
--

DROP TABLE IF EXISTS `enw_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_user_keys`
--

LOCK TABLES `enw_user_keys` WRITE;
/*!40000 ALTER TABLE `enw_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_user_notes`
--

DROP TABLE IF EXISTS `enw_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_user_notes`
--

LOCK TABLES `enw_user_notes` WRITE;
/*!40000 ALTER TABLE `enw_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_user_profiles`
--

DROP TABLE IF EXISTS `enw_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_user_profiles`
--

LOCK TABLES `enw_user_profiles` WRITE;
/*!40000 ALTER TABLE `enw_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `enw_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_user_usergroup_map`
--

DROP TABLE IF EXISTS `enw_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_user_usergroup_map`
--

LOCK TABLES `enw_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `enw_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `enw_user_usergroup_map` VALUES (697,8);
/*!40000 ALTER TABLE `enw_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_usergroups`
--

DROP TABLE IF EXISTS `enw_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_usergroups`
--

LOCK TABLES `enw_usergroups` WRITE;
/*!40000 ALTER TABLE `enw_usergroups` DISABLE KEYS */;
INSERT INTO `enw_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Enregistré'),(3,2,9,14,'Auteur'),(4,3,10,13,'Rédacteur'),(5,4,11,12,'Validateur'),(6,1,4,7,'Gestionnaire'),(7,6,5,6,'Administrateur'),(8,1,16,17,'Super Utilisateur'),(9,1,2,3,'Invité');
/*!40000 ALTER TABLE `enw_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_users`
--

DROP TABLE IF EXISTS `enw_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_users`
--

LOCK TABLES `enw_users` WRITE;
/*!40000 ALTER TABLE `enw_users` DISABLE KEYS */;
INSERT INTO `enw_users` VALUES (697,'Super Utilisateur','admin','nicofisch5@gmail.com','$2y$10$rKhZJucFy6cGJUXYmys6IuB8LBIRpB5tVGzTKT/slyl/Kqh/GrrTW',0,1,'2015-06-10 11:41:58','2015-06-22 11:11:32','0','','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `enw_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enw_viewlevels`
--

DROP TABLE IF EXISTS `enw_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enw_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enw_viewlevels`
--

LOCK TABLES `enw_viewlevels` WRITE;
/*!40000 ALTER TABLE `enw_viewlevels` DISABLE KEYS */;
INSERT INTO `enw_viewlevels` VALUES (1,'Accès public',0,'[1]'),(2,'Accès enregistré',1,'[6,2,8]'),(3,'Accès spécial',2,'[6,3,8]'),(5,'Accès invité',0,'[9]'),(6,'Accès super utilisateur',0,'[8]');
/*!40000 ALTER TABLE `enw_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-22 13:41:18
