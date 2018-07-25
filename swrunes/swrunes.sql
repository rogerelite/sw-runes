/*
SQLyog Professional v12.09 (64 bit)
MySQL - 10.1.25-MariaDB : Database - swrunes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `swrunes`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can use Structure mode',1,'use_structure'),(2,'Can change page',2,'change_page'),(3,'Can add permission',3,'add_permission'),(4,'Can change permission',3,'change_permission'),(5,'Can delete permission',3,'delete_permission'),(6,'Can add group',4,'add_group'),(7,'Can change group',4,'change_group'),(8,'Can delete group',4,'delete_group'),(9,'Can add user',5,'add_user'),(10,'Can change user',5,'change_user'),(11,'Can delete user',5,'delete_user'),(12,'Can add content type',6,'add_contenttype'),(13,'Can change content type',6,'change_contenttype'),(14,'Can delete content type',6,'delete_contenttype'),(15,'Can add session',7,'add_session'),(16,'Can change session',7,'change_session'),(17,'Can delete session',7,'delete_session'),(18,'Can add log entry',8,'add_logentry'),(19,'Can change log entry',8,'change_logentry'),(20,'Can delete log entry',8,'delete_logentry'),(21,'Can add site',9,'add_site'),(22,'Can change site',9,'change_site'),(23,'Can delete site',9,'delete_site'),(24,'Can add cms plugin',10,'add_cmsplugin'),(25,'Can change cms plugin',10,'change_cmsplugin'),(26,'Can delete cms plugin',10,'delete_cmsplugin'),(27,'Can add alias plugin model',11,'add_aliaspluginmodel'),(28,'Can change alias plugin model',11,'change_aliaspluginmodel'),(29,'Can delete alias plugin model',11,'delete_aliaspluginmodel'),(30,'Can add Page global permission',12,'add_globalpagepermission'),(31,'Can change Page global permission',12,'change_globalpagepermission'),(32,'Can delete Page global permission',12,'delete_globalpagepermission'),(33,'Can add page',2,'add_page'),(34,'Can delete page',2,'delete_page'),(35,'Can view page',2,'view_page'),(36,'Can publish page',2,'publish_page'),(37,'Can edit static placeholders',2,'edit_static_placeholder'),(38,'Can add Page permission',13,'add_pagepermission'),(39,'Can change Page permission',13,'change_pagepermission'),(40,'Can delete Page permission',13,'delete_pagepermission'),(41,'Can add User (page)',14,'add_pageuser'),(42,'Can change User (page)',14,'change_pageuser'),(43,'Can delete User (page)',14,'delete_pageuser'),(44,'Can add User group (page)',15,'add_pageusergroup'),(45,'Can change User group (page)',15,'change_pageusergroup'),(46,'Can delete User group (page)',15,'delete_pageusergroup'),(47,'Can add placeholder',1,'add_placeholder'),(48,'Can change placeholder',1,'change_placeholder'),(49,'Can delete placeholder',1,'delete_placeholder'),(50,'Can add placeholder reference',16,'add_placeholderreference'),(51,'Can change placeholder reference',16,'change_placeholderreference'),(52,'Can delete placeholder reference',16,'delete_placeholderreference'),(53,'Can add static placeholder',17,'add_staticplaceholder'),(54,'Can change static placeholder',17,'change_staticplaceholder'),(55,'Can delete static placeholder',17,'delete_staticplaceholder'),(56,'Can add title',18,'add_title'),(57,'Can change title',18,'change_title'),(58,'Can delete title',18,'delete_title'),(59,'Can add user setting',19,'add_usersettings'),(60,'Can change user setting',19,'change_usersettings'),(61,'Can delete user setting',19,'delete_usersettings'),(62,'Can add urlconf revision',20,'add_urlconfrevision'),(63,'Can change urlconf revision',20,'change_urlconfrevision'),(64,'Can delete urlconf revision',20,'delete_urlconfrevision'),(65,'Can add cache key',23,'add_cachekey'),(66,'Can change cache key',23,'change_cachekey'),(67,'Can delete cache key',23,'delete_cachekey'),(68,'Can add text',24,'add_text'),(69,'Can change text',24,'change_text'),(70,'Can delete text',24,'delete_text'),(71,'Can add clipboard',25,'add_clipboard'),(72,'Can change clipboard',25,'change_clipboard'),(73,'Can delete clipboard',25,'delete_clipboard'),(74,'Can add clipboard item',26,'add_clipboarditem'),(75,'Can change clipboard item',26,'change_clipboarditem'),(76,'Can delete clipboard item',26,'delete_clipboarditem'),(77,'Can add file',27,'add_file'),(78,'Can change file',27,'change_file'),(79,'Can delete file',27,'delete_file'),(80,'Can add Folder',28,'add_folder'),(81,'Can change Folder',28,'change_folder'),(82,'Can delete Folder',28,'delete_folder'),(83,'Can use directory listing',28,'can_use_directory_listing'),(84,'Can add folder permission',29,'add_folderpermission'),(85,'Can change folder permission',29,'change_folderpermission'),(86,'Can delete folder permission',29,'delete_folderpermission'),(87,'Can add image',30,'add_image'),(88,'Can change image',30,'change_image'),(89,'Can delete image',30,'delete_image'),(90,'Can add thumbnail option',31,'add_thumbnailoption'),(91,'Can change thumbnail option',31,'change_thumbnailoption'),(92,'Can delete thumbnail option',31,'delete_thumbnailoption'),(93,'Can add source',32,'add_source'),(94,'Can change source',32,'change_source'),(95,'Can delete source',32,'delete_source'),(96,'Can add thumbnail',33,'add_thumbnail'),(97,'Can change thumbnail',33,'change_thumbnail'),(98,'Can delete thumbnail',33,'delete_thumbnail'),(99,'Can add thumbnail dimensions',34,'add_thumbnaildimensions'),(100,'Can change thumbnail dimensions',34,'change_thumbnaildimensions'),(101,'Can delete thumbnail dimensions',34,'delete_thumbnaildimensions'),(102,'Can add column',35,'add_column'),(103,'Can change column',35,'change_column'),(104,'Can delete column',35,'delete_column'),(105,'Can add multi columns',36,'add_multicolumns'),(106,'Can change multi columns',36,'change_multicolumns'),(107,'Can delete multi columns',36,'delete_multicolumns'),(108,'Can add file',37,'add_file'),(109,'Can change file',37,'change_file'),(110,'Can delete file',37,'delete_file'),(111,'Can add folder',38,'add_folder'),(112,'Can change folder',38,'change_folder'),(113,'Can delete folder',38,'delete_folder'),(114,'Can add link',39,'add_link'),(115,'Can change link',39,'change_link'),(116,'Can delete link',39,'delete_link'),(117,'Can add picture',40,'add_picture'),(118,'Can change picture',40,'change_picture'),(119,'Can delete picture',40,'delete_picture'),(120,'Can add style',41,'add_style'),(121,'Can change style',41,'change_style'),(122,'Can delete style',41,'delete_style'),(123,'Can add Snippet',42,'add_snippet'),(124,'Can change Snippet',42,'change_snippet'),(125,'Can delete Snippet',42,'delete_snippet'),(126,'Can add Snippet',43,'add_snippetptr'),(127,'Can change Snippet',43,'change_snippetptr'),(128,'Can delete Snippet',43,'delete_snippetptr'),(129,'Can add google map',44,'add_googlemap'),(130,'Can change google map',44,'change_googlemap'),(131,'Can delete google map',44,'delete_googlemap'),(132,'Can add google map marker',45,'add_googlemapmarker'),(133,'Can change google map marker',45,'change_googlemapmarker'),(134,'Can delete google map marker',45,'delete_googlemapmarker'),(135,'Can add google map route',46,'add_googlemaproute'),(136,'Can change google map route',46,'change_googlemaproute'),(137,'Can delete google map route',46,'delete_googlemaproute'),(138,'Can add video player',47,'add_videoplayer'),(139,'Can change video player',47,'change_videoplayer'),(140,'Can delete video player',47,'delete_videoplayer'),(141,'Can add video source',48,'add_videosource'),(142,'Can change video source',48,'change_videosource'),(143,'Can delete video source',48,'delete_videosource'),(144,'Can add video track',49,'add_videotrack'),(145,'Can change video track',49,'change_videotrack'),(146,'Can delete video track',49,'delete_videotrack'),(147,'Can add atributo runa',50,'add_atributoruna'),(148,'Can change atributo runa',50,'change_atributoruna'),(149,'Can delete atributo runa',50,'delete_atributoruna'),(150,'Can add catalogo monstro',51,'add_catalogomonstro'),(151,'Can change catalogo monstro',51,'change_catalogomonstro'),(152,'Can delete catalogo monstro',51,'delete_catalogomonstro'),(153,'Can add runa',52,'add_runa'),(154,'Can change runa',52,'change_runa'),(155,'Can delete runa',52,'delete_runa');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'pbkdf2_sha256$36000$Jsm4sUWEF8b8$BNYAZwflswN8ur+9Tc3aTXM4z1yNsqBKPdgFx4GOBqM=','2018-07-25 16:51:26.701531',1,'admin','','','admin@admin.com',1,1,'2018-07-25 16:51:15.660903');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `cms_aliaspluginmodel` */

DROP TABLE IF EXISTS `cms_aliaspluginmodel`;

CREATE TABLE `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `alias_placeholder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` (`alias_placeholder_id`),
  KEY `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` (`plugin_id`),
  CONSTRAINT `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_aliaspluginmodel` */

/*Table structure for table `cms_cmsplugin` */

DROP TABLE IF EXISTS `cms_cmsplugin`;

CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` smallint(5) unsigned NOT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `placeholder_id` int(11) DEFAULT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_cmsplugin_path_4917bb44_uniq` (`path`),
  KEY `cms_cmsplugin_language_bbea8a48` (`language`),
  KEY `cms_cmsplugin_plugin_type_94e96ebf` (`plugin_type`),
  KEY `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` (`placeholder_id`),
  KEY `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` (`parent_id`),
  CONSTRAINT `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_cmsplugin` */

/*Table structure for table `cms_globalpagepermission` */

DROP TABLE IF EXISTS `cms_globalpagepermission`;

CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` (`group_id`),
  KEY `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_globalpagepermission` */

/*Table structure for table `cms_globalpagepermission_sites` */

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;

CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_globalpagepermission_globalpagepermission_id__db684f41_uniq` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermis_site_id_00460b53_fk_django_si` (`site_id`),
  CONSTRAINT `cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  CONSTRAINT `cms_globalpagepermis_site_id_00460b53_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_globalpagepermission_sites` */

/*Table structure for table `cms_page` */

DROP TABLE IF EXISTS `cms_page`;

CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) NOT NULL,
  `changed_by` varchar(255) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `publication_date` datetime(6) DEFAULT NULL,
  `publication_end_date` datetime(6) DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `xframe_options` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `is_page_type` tinyint(1) NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_node_id_publisher_is_draft_c1293d6a_uniq` (`node_id`,`publisher_is_draft`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_page_publication_date_684fabf7` (`publication_date`),
  KEY `cms_page_publication_end_date_12a0c46a` (`publication_end_date`),
  KEY `cms_page_in_navigation_01c24279` (`in_navigation`),
  KEY `cms_page_soft_root_51efccbe` (`soft_root`),
  KEY `cms_page_reverse_id_ffc9ede2` (`reverse_id`),
  KEY `cms_page_navigation_extenders_c24af8dd` (`navigation_extenders`),
  KEY `cms_page_limit_visibility_in_menu_30db6aa6` (`limit_visibility_in_menu`),
  KEY `cms_page_is_home_edadca07` (`is_home`),
  KEY `cms_page_application_urls_9ef47497` (`application_urls`),
  KEY `cms_page_publisher_is_draft_141cba60` (`publisher_is_draft`),
  CONSTRAINT `cms_page_node_id_c87b85a9_fk_cms_treenode_id` FOREIGN KEY (`node_id`) REFERENCES `cms_treenode` (`id`),
  CONSTRAINT `cms_page_publisher_public_id_d619fca0_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `cms_page` */

insert  into `cms_page`(`id`,`created_by`,`changed_by`,`creation_date`,`changed_date`,`publication_date`,`publication_end_date`,`in_navigation`,`soft_root`,`reverse_id`,`navigation_extenders`,`template`,`login_required`,`limit_visibility_in_menu`,`is_home`,`application_urls`,`application_namespace`,`publisher_is_draft`,`languages`,`xframe_options`,`publisher_public_id`,`is_page_type`,`node_id`) values (1,'admin','admin','2018-07-25 16:51:39.780651','2018-07-25 16:51:39.876030','2018-07-25 16:51:39.805674',NULL,1,0,NULL,NULL,'INHERIT',0,NULL,1,NULL,NULL,1,'pt',0,2,0,1),(2,'admin','admin','2018-07-25 16:51:39.805674','2018-07-25 16:51:39.876030','2018-07-25 16:51:39.805674',NULL,1,0,NULL,NULL,'INHERIT',0,NULL,1,NULL,NULL,0,'pt',0,1,0,1),(3,'admin','admin','2018-07-25 16:51:55.101660','2018-07-25 16:51:55.120677','2018-07-25 16:51:57.866658',NULL,1,0,NULL,NULL,'INHERIT',0,NULL,0,NULL,NULL,1,'pt',0,4,0,2),(4,'admin','admin','2018-07-25 16:51:57.866658','2018-07-25 16:51:57.866658','2018-07-25 16:51:57.866658',NULL,1,0,NULL,NULL,'INHERIT',0,NULL,0,NULL,NULL,0,'pt',0,3,0,2);

/*Table structure for table `cms_page_placeholders` */

DROP TABLE IF EXISTS `cms_page_placeholders`;

CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq` (`page_id`,`placeholder_id`),
  KEY `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` (`placeholder_id`),
  CONSTRAINT `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `cms_page_placeholders` */

insert  into `cms_page_placeholders`(`id`,`page_id`,`placeholder_id`) values (1,1,2),(2,2,3),(3,3,4),(4,4,5);

/*Table structure for table `cms_pagepermission` */

DROP TABLE IF EXISTS `cms_pagepermission`;

CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_group_id_af5af193_fk_auth_group_id` (`group_id`),
  KEY `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` (`page_id`),
  KEY `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_pagepermission_group_id_af5af193_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_pagepermission` */

/*Table structure for table `cms_pageuser` */

DROP TABLE IF EXISTS `cms_pageuser`;

CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_pageuser` */

/*Table structure for table `cms_pageusergroup` */

DROP TABLE IF EXISTS `cms_pageusergroup`;

CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_pageusergroup` */

/*Table structure for table `cms_placeholder` */

DROP TABLE IF EXISTS `cms_placeholder`;

CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(255) NOT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_slot_0bc04d21` (`slot`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `cms_placeholder` */

insert  into `cms_placeholder`(`id`,`slot`,`default_width`) values (1,'clipboard',NULL),(2,'content',NULL),(3,'content',NULL),(4,'content',NULL),(5,'content',NULL);

/*Table structure for table `cms_placeholderreference` */

DROP TABLE IF EXISTS `cms_placeholderreference`;

CREATE TABLE `cms_placeholderreference` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_placeholderreference_placeholder_ref_id_244759b1` (`placeholder_ref_id`),
  CONSTRAINT `cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_placeholderreference` */

/*Table structure for table `cms_staticplaceholder` */

DROP TABLE IF EXISTS `cms_staticplaceholder`;

CREATE TABLE `cms_staticplaceholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_staticplaceholder_code_site_id_21ba079c_uniq` (`code`,`site_id`),
  KEY `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` (`site_id`),
  KEY `cms_staticplaceholder_draft_id_5aee407b` (`draft_id`),
  KEY `cms_staticplaceholder_public_id_876aaa66` (`public_id`),
  CONSTRAINT `cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_staticplaceholder` */

/*Table structure for table `cms_title` */

DROP TABLE IF EXISTS `cms_title`;

CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(2048) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_title_language_page_id_61aaf084_uniq` (`language`,`page_id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_title_page_id_5fade2a3_fk_cms_page_id` (`page_id`),
  KEY `cms_title_language_50a0dfa1` (`language`),
  KEY `cms_title_slug_4947d146` (`slug`),
  KEY `cms_title_path_c484314c` (`path`),
  KEY `cms_title_has_url_overwrite_ecf27bb9` (`has_url_overwrite`),
  KEY `cms_title_publisher_is_draft_95874c88` (`publisher_is_draft`),
  KEY `cms_title_publisher_state_9a952b0f` (`publisher_state`),
  CONSTRAINT `cms_title_page_id_5fade2a3_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_title_publisher_public_id_003a2702_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `cms_title` */

insert  into `cms_title`(`id`,`language`,`title`,`page_title`,`menu_title`,`meta_description`,`slug`,`path`,`has_url_overwrite`,`redirect`,`creation_date`,`published`,`publisher_is_draft`,`publisher_state`,`page_id`,`publisher_public_id`) values (1,'pt','Home',NULL,NULL,NULL,'home','',0,NULL,'2018-07-25 16:51:39.786616',1,1,0,1,2),(2,'pt','Home',NULL,NULL,NULL,'home','',0,NULL,'2018-07-25 16:51:39.786616',1,0,0,2,1),(3,'pt','Administração','','','','administracao','administracao',0,NULL,'2018-07-25 16:51:55.102701',1,1,0,3,4),(4,'pt','Administração','','','','administracao','administracao',0,NULL,'2018-07-25 16:51:55.102701',1,0,0,4,3);

/*Table structure for table `cms_treenode` */

DROP TABLE IF EXISTS `cms_treenode`;

CREATE TABLE `cms_treenode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` (`parent_id`),
  KEY `cms_treenode_site_id_d3f46985_fk_django_site_id` (`site_id`),
  CONSTRAINT `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_treenode` (`id`),
  CONSTRAINT `cms_treenode_site_id_d3f46985_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cms_treenode` */

insert  into `cms_treenode`(`id`,`path`,`depth`,`numchild`,`parent_id`,`site_id`) values (1,'0001',1,0,NULL,1),(2,'0002',1,0,NULL,1);

/*Table structure for table `cms_urlconfrevision` */

DROP TABLE IF EXISTS `cms_urlconfrevision`;

CREATE TABLE `cms_urlconfrevision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cms_urlconfrevision` */

insert  into `cms_urlconfrevision`(`id`,`revision`) values (1,'0a8ec860-c686-4796-9664-5fef36b96734');

/*Table structure for table `cms_usersettings` */

DROP TABLE IF EXISTS `cms_usersettings`;

CREATE TABLE `cms_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` (`clipboard_id`),
  CONSTRAINT `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_usersettings_user_id_09633b2d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cms_usersettings` */

insert  into `cms_usersettings`(`id`,`language`,`clipboard_id`,`user_id`) values (1,'pt',1,1);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (1,'2018-07-25 16:51:55.122661','3','Administração',1,'[{\"added\": {}}]',2,1),(2,'2018-07-25 16:51:57.894639','3','Administração',2,'',2,1);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (8,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(11,'cms','aliaspluginmodel'),(10,'cms','cmsplugin'),(12,'cms','globalpagepermission'),(2,'cms','page'),(13,'cms','pagepermission'),(22,'cms','pagetype'),(14,'cms','pageuser'),(15,'cms','pageusergroup'),(1,'cms','placeholder'),(16,'cms','placeholderreference'),(17,'cms','staticplaceholder'),(18,'cms','title'),(21,'cms','treenode'),(20,'cms','urlconfrevision'),(19,'cms','usersettings'),(6,'contenttypes','contenttype'),(35,'djangocms_column','column'),(36,'djangocms_column','multicolumns'),(37,'djangocms_file','file'),(38,'djangocms_file','folder'),(44,'djangocms_googlemap','googlemap'),(45,'djangocms_googlemap','googlemapmarker'),(46,'djangocms_googlemap','googlemaproute'),(39,'djangocms_link','link'),(40,'djangocms_picture','picture'),(42,'djangocms_snippet','snippet'),(43,'djangocms_snippet','snippetptr'),(41,'djangocms_style','style'),(24,'djangocms_text_ckeditor','text'),(47,'djangocms_video','videoplayer'),(48,'djangocms_video','videosource'),(49,'djangocms_video','videotrack'),(32,'easy_thumbnails','source'),(33,'easy_thumbnails','thumbnail'),(34,'easy_thumbnails','thumbnaildimensions'),(25,'filer','clipboard'),(26,'filer','clipboarditem'),(27,'filer','file'),(28,'filer','folder'),(29,'filer','folderpermission'),(30,'filer','image'),(31,'filer','thumbnailoption'),(23,'menus','cachekey'),(7,'sessions','session'),(9,'sites','site'),(50,'swrunesadmin','atributoruna'),(51,'swrunesadmin','catalogomonstro'),(52,'swrunesadmin','runa');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2018-07-25 16:38:12.674254'),(2,'auth','0001_initial','2018-07-25 16:38:13.356506'),(3,'admin','0001_initial','2018-07-25 16:38:13.571989'),(4,'admin','0002_logentry_remove_auto_add','2018-07-25 16:38:13.584004'),(5,'contenttypes','0002_remove_content_type_name','2018-07-25 16:38:13.675984'),(6,'auth','0002_alter_permission_name_max_length','2018-07-25 16:38:13.750021'),(7,'auth','0003_alter_user_email_max_length','2018-07-25 16:38:13.869020'),(8,'auth','0004_alter_user_username_opts','2018-07-25 16:38:13.879021'),(9,'auth','0005_alter_user_last_login_null','2018-07-25 16:38:13.927023'),(10,'auth','0006_require_contenttypes_0002','2018-07-25 16:38:13.931022'),(11,'auth','0007_alter_validators_add_error_messages','2018-07-25 16:38:13.943024'),(12,'auth','0008_alter_user_username_max_length','2018-07-25 16:38:14.023025'),(13,'sites','0001_initial','2018-07-25 16:38:14.051019'),(14,'cms','0001_initial','2018-07-25 16:38:15.864059'),(15,'cms','0002_auto_20140816_1918','2018-07-25 16:38:17.912677'),(16,'cms','0003_auto_20140926_2347','2018-07-25 16:38:17.989700'),(17,'cms','0004_auto_20140924_1038','2018-07-25 16:38:18.369200'),(18,'cms','0005_auto_20140924_1039','2018-07-25 16:38:18.394184'),(19,'cms','0006_auto_20140924_1110','2018-07-25 16:38:18.985398'),(20,'cms','0007_auto_20141028_1559','2018-07-25 16:38:19.019462'),(21,'cms','0008_auto_20150208_2149','2018-07-25 16:38:19.087388'),(22,'cms','0008_auto_20150121_0059','2018-07-25 16:38:19.128398'),(23,'cms','0009_merge','2018-07-25 16:38:19.132399'),(24,'cms','0010_migrate_use_structure','2018-07-25 16:38:19.179398'),(25,'cms','0011_auto_20150419_1006','2018-07-25 16:38:19.327401'),(26,'cms','0012_auto_20150607_2207','2018-07-25 16:38:19.780843'),(27,'cms','0013_urlconfrevision','2018-07-25 16:38:19.811850'),(28,'cms','0014_auto_20160404_1908','2018-07-25 16:38:19.841834'),(29,'cms','0015_auto_20160421_0000','2018-07-25 16:38:19.930848'),(30,'cms','0016_auto_20160608_1535','2018-07-25 16:38:20.110377'),(31,'cms','0017_pagetype','2018-07-25 16:38:20.219583'),(32,'cms','0018_pagenode','2018-07-25 16:38:20.788754'),(33,'cms','0019_set_pagenode','2018-07-25 16:38:20.854795'),(34,'cms','0020_old_tree_cleanup','2018-07-25 16:38:21.758820'),(35,'djangocms_column','0001_initial','2018-07-25 16:38:21.994822'),(36,'djangocms_column','0002_auto_20160915_0818','2018-07-25 16:38:22.182838'),(37,'filer','0001_initial','2018-07-25 16:38:23.923975'),(38,'filer','0002_auto_20150606_2003','2018-07-25 16:38:24.019955'),(39,'filer','0003_thumbnailoption','2018-07-25 16:38:24.053969'),(40,'filer','0004_auto_20160328_1434','2018-07-25 16:38:24.127954'),(41,'filer','0005_auto_20160623_1425','2018-07-25 16:38:24.392929'),(42,'filer','0006_auto_20160623_1627','2018-07-25 16:38:24.596431'),(43,'djangocms_file','0001_initial','2018-07-25 16:38:24.720610'),(44,'djangocms_file','0002_auto_20151202_1551','2018-07-25 16:38:24.790625'),(45,'djangocms_file','0003_remove_related_name_for_cmsplugin_ptr','2018-07-25 16:38:24.864834'),(46,'djangocms_file','0004_set_related_name_for_cmsplugin_ptr','2018-07-25 16:38:24.938834'),(47,'djangocms_file','0005_auto_20160119_1534','2018-07-25 16:38:24.949835'),(48,'djangocms_file','0006_migrate_to_filer','2018-07-25 16:38:25.235503'),(49,'djangocms_file','0007_adapted_fields','2018-07-25 16:38:25.718966'),(50,'djangocms_file','0008_add_folder','2018-07-25 16:38:25.906068'),(51,'djangocms_file','0009_fixed_null_fields','2018-07-25 16:38:25.940064'),(52,'djangocms_file','0010_removed_null_fields','2018-07-25 16:38:26.025064'),(53,'filer','0007_auto_20161016_1055','2018-07-25 16:38:26.040053'),(54,'djangocms_googlemap','0001_initial','2018-07-25 16:38:26.163065'),(55,'djangocms_googlemap','0002_auto_20160622_1031','2018-07-25 16:38:26.314065'),(56,'djangocms_googlemap','0003_auto_20160825_1829','2018-07-25 16:38:26.329942'),(57,'djangocms_googlemap','0004_adapted_fields','2018-07-25 16:38:27.663211'),(58,'djangocms_googlemap','0005_create_nested_plugins','2018-07-25 16:38:27.700213'),(59,'djangocms_googlemap','0006_remove_fields','2018-07-25 16:38:28.070036'),(60,'djangocms_googlemap','0007_reset_null_values','2018-07-25 16:38:28.111052'),(61,'djangocms_googlemap','0008_removed_null_fields','2018-07-25 16:38:28.199048'),(62,'djangocms_googlemap','0009_googlemapmarker_icon','2018-07-25 16:38:28.327042'),(63,'djangocms_link','0001_initial','2018-07-25 16:38:28.620837'),(64,'djangocms_link','0002_auto_20140929_1705','2018-07-25 16:38:28.645835'),(65,'djangocms_link','0003_auto_20150212_1310','2018-07-25 16:38:28.670852'),(66,'djangocms_link','0004_auto_20150708_1133','2018-07-25 16:38:28.778848'),(67,'djangocms_link','0005_auto_20151003_1710','2018-07-25 16:38:28.882853'),(68,'djangocms_link','0006_remove_related_name_for_cmsplugin_ptr','2018-07-25 16:38:29.005362'),(69,'djangocms_link','0007_set_related_name_for_cmsplugin_ptr','2018-07-25 16:38:29.156376'),(70,'djangocms_link','0008_link_attributes','2018-07-25 16:38:29.226426'),(71,'djangocms_link','0009_auto_20160705_1344','2018-07-25 16:38:29.246413'),(72,'djangocms_link','0010_adapted_fields','2018-07-25 16:38:29.901951'),(73,'djangocms_link','0011_fixed_null_values','2018-07-25 16:38:29.943967'),(74,'djangocms_link','0012_removed_null','2018-07-25 16:38:30.489742'),(75,'djangocms_link','0013_fix_hostname','2018-07-25 16:38:30.529747'),(76,'djangocms_picture','0001_initial','2018-07-25 16:38:30.748757'),(77,'djangocms_picture','0002_auto_20151018_1927','2018-07-25 16:38:30.879952'),(78,'djangocms_picture','0003_migrate_to_filer','2018-07-25 16:38:31.397623'),(79,'djangocms_picture','0004_adapt_fields','2018-07-25 16:38:33.166854'),(80,'djangocms_picture','0005_reset_null_values','2018-07-25 16:38:33.228852'),(81,'djangocms_picture','0006_remove_null_values','2018-07-25 16:38:33.676636'),(82,'djangocms_picture','0007_fix_alignment','2018-07-25 16:38:33.706635'),(83,'djangocms_snippet','0001_initial','2018-07-25 16:38:33.987476'),(84,'djangocms_snippet','0002_snippet_slug','2018-07-25 16:38:34.079519'),(85,'djangocms_snippet','0003_auto_data_fill_slug','2018-07-25 16:38:34.121528'),(86,'djangocms_snippet','0004_auto_alter_slug_unique','2018-07-25 16:38:34.159508'),(87,'djangocms_snippet','0005_set_related_name_for_cmsplugin_ptr','2018-07-25 16:38:34.270513'),(88,'djangocms_snippet','0006_auto_20160831_0729','2018-07-25 16:38:34.529511'),(89,'djangocms_snippet','0007_auto_alter_template_helptext','2018-07-25 16:38:34.541527'),(90,'djangocms_style','0001_initial','2018-07-25 16:38:34.690525'),(91,'djangocms_style','0002_set_related_name_for_cmsplugin_ptr','2018-07-25 16:38:34.784263'),(92,'djangocms_style','0003_adapted_fields','2018-07-25 16:38:35.275785'),(93,'djangocms_style','0004_use_positive_small_integer_field','2018-07-25 16:38:36.122545'),(94,'djangocms_style','0005_reset_null_values','2018-07-25 16:38:36.198546'),(95,'djangocms_style','0006_removed_null_fields','2018-07-25 16:38:36.348048'),(96,'djangocms_style','0007_style_template','2018-07-25 16:38:36.408044'),(97,'djangocms_text_ckeditor','0001_initial','2018-07-25 16:38:36.559058'),(98,'djangocms_text_ckeditor','0002_remove_related_name_for_cmsplugin_ptr','2018-07-25 16:38:36.670208'),(99,'djangocms_text_ckeditor','0003_set_related_name_for_cmsplugin_ptr','2018-07-25 16:38:36.788046'),(100,'djangocms_text_ckeditor','0004_auto_20160706_1339','2018-07-25 16:38:36.847933'),(101,'djangocms_video','0001_initial','2018-07-25 16:38:37.044064'),(102,'djangocms_video','0002_set_related_name_for_cmsplugin_ptr','2018-07-25 16:38:37.162089'),(103,'djangocms_video','0003_field_adaptions','2018-07-25 16:38:37.805164'),(104,'djangocms_video','0004_move_to_attributes','2018-07-25 16:38:39.050598'),(105,'djangocms_video','0005_migrate_to_filer','2018-07-25 16:38:39.115598'),(106,'djangocms_video','0006_field_adaptions','2018-07-25 16:38:39.810649'),(107,'djangocms_video','0007_create_nested_plugin','2018-07-25 16:38:39.924631'),(108,'djangocms_video','0008_reset_null_values','2018-07-25 16:38:39.972629'),(109,'djangocms_video','0009_removed_null_values','2018-07-25 16:38:40.069625'),(110,'easy_thumbnails','0001_initial','2018-07-25 16:38:40.387831'),(111,'easy_thumbnails','0002_thumbnaildimensions','2018-07-25 16:38:40.549705'),(112,'filer','0008_auto_20171117_1313','2018-07-25 16:38:40.639766'),(113,'filer','0009_auto_20171220_1635','2018-07-25 16:38:40.725777'),(114,'filer','0010_auto_20180414_2058','2018-07-25 16:38:40.865345'),(115,'menus','0001_initial','2018-07-25 16:38:40.912357'),(116,'sessions','0001_initial','2018-07-25 16:38:40.964349'),(117,'sites','0002_alter_domain_unique','2018-07-25 16:38:40.996360'),(118,'cms','0018_create_pagenode','2018-07-25 16:38:41.007345'),(119,'swrunesadmin','0001_initial','2018-07-25 16:50:25.486275');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('ntmhoy94zcnw72fugnxiv3eum37qcbrz','MmRjMzcxMWUxNzNkNTkyNmQ0MzdkOGRjNWE1ZTlkOGI5MTk0YTE5NTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZSwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFlOGEwYWY4ODM0YWJlZWJmMzhkNzU1M2ExNWJkNTQ2NTcyYjE1OGIiLCJ3aXphcmRfd2l6YXJkX2NyZWF0ZV92aWV3Ijp7InN0ZXAiOm51bGwsInN0ZXBfZGF0YSI6e30sInN0ZXBfZmlsZXMiOnt9LCJleHRyYV9kYXRhIjp7fX19','2018-08-08 16:51:58.234106');

/*Table structure for table `django_site` */

DROP TABLE IF EXISTS `django_site`;

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `django_site` */

insert  into `django_site`(`id`,`domain`,`name`) values (1,'example.com','example.com');

/*Table structure for table `djangocms_column_column` */

DROP TABLE IF EXISTS `djangocms_column_column`;

CREATE TABLE `djangocms_column_column` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `width` varchar(50) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_column_column` */

/*Table structure for table `djangocms_column_multicolumns` */

DROP TABLE IF EXISTS `djangocms_column_multicolumns`;

CREATE TABLE `djangocms_column_multicolumns` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_column_multicolumns` */

/*Table structure for table `djangocms_file_file` */

DROP TABLE IF EXISTS `djangocms_file_file`;

CREATE TABLE `djangocms_file_file` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `file_src_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_file_file_src_id_74ac14a5` (`file_src_id`),
  CONSTRAINT `djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id` FOREIGN KEY (`file_src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_file_file` */

/*Table structure for table `djangocms_file_folder` */

DROP TABLE IF EXISTS `djangocms_file_folder`;

CREATE TABLE `djangocms_file_folder` (
  `template` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `folder_src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_folder_folder_src_id_9558406a` (`folder_src_id`),
  CONSTRAINT `djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id` FOREIGN KEY (`folder_src_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_file_folder` */

/*Table structure for table `djangocms_googlemap_googlemap` */

DROP TABLE IF EXISTS `djangocms_googlemap_googlemap`;

CREATE TABLE `djangocms_googlemap_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `zoom` smallint(5) unsigned NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  `scrollwheel` tinyint(1) NOT NULL,
  `double_click_zoom` tinyint(1) NOT NULL,
  `draggable` tinyint(1) NOT NULL,
  `keyboard_shortcuts` tinyint(1) NOT NULL,
  `pan_control` tinyint(1) NOT NULL,
  `zoom_control` tinyint(1) NOT NULL,
  `street_view_control` tinyint(1) NOT NULL,
  `style` longtext NOT NULL,
  `fullscreen_control` tinyint(1) NOT NULL,
  `map_type_control` varchar(255) NOT NULL,
  `rotate_control` tinyint(1) NOT NULL,
  `scale_control` tinyint(1) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_googlemap_googlemap` */

/*Table structure for table `djangocms_googlemap_googlemapmarker` */

DROP TABLE IF EXISTS `djangocms_googlemap_googlemapmarker`;

CREATE TABLE `djangocms_googlemap_googlemapmarker` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `show_content` tinyint(1) NOT NULL,
  `info_content` longtext NOT NULL,
  `icon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_googlemap_googlemapmarker_icon_id_3b103213` (`icon_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_googlemap__icon_id_3b103213_fk_filer_ima` FOREIGN KEY (`icon_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_googlemap_googlemapmarker` */

/*Table structure for table `djangocms_googlemap_googlemaproute` */

DROP TABLE IF EXISTS `djangocms_googlemap_googlemaproute`;

CREATE TABLE `djangocms_googlemap_googlemaproute` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_mode` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_googlemap_googlemaproute` */

/*Table structure for table `djangocms_link_link` */

DROP TABLE IF EXISTS `djangocms_link_link`;

CREATE TABLE `djangocms_link_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` (`internal_link_id`),
  CONSTRAINT `djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_link_link` */

/*Table structure for table `djangocms_picture_picture` */

DROP TABLE IF EXISTS `djangocms_picture_picture`;

CREATE TABLE `djangocms_picture_picture` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_url` varchar(2040) NOT NULL,
  `alignment` varchar(255) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `caption_text` longtext NOT NULL,
  `link_attributes` longtext NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `external_picture` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_picture_picture_picture_id_f7d6711b` (`picture_id`),
  KEY `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` (`link_page_id`),
  KEY `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` (`thumbnail_options_id`),
  CONSTRAINT `djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`),
  CONSTRAINT `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_picture_picture` */

/*Table structure for table `djangocms_snippet_snippet` */

DROP TABLE IF EXISTS `djangocms_snippet_snippet`;

CREATE TABLE `djangocms_snippet_snippet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `djangocms_snippet_snippet_slug_bd43cd96_uniq` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_snippet_snippet` */

/*Table structure for table `djangocms_snippet_snippetptr` */

DROP TABLE IF EXISTS `djangocms_snippet_snippetptr`;

CREATE TABLE `djangocms_snippet_snippetptr` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `snippet_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms` (`snippet_id`),
  CONSTRAINT `djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms` FOREIGN KEY (`snippet_id`) REFERENCES `djangocms_snippet_snippet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_snippet_snippetptr` */

/*Table structure for table `djangocms_style_style` */

DROP TABLE IF EXISTS `djangocms_style_style`;

CREATE TABLE `djangocms_style_style` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `padding_left` smallint(5) unsigned DEFAULT NULL,
  `padding_right` smallint(5) unsigned DEFAULT NULL,
  `padding_top` smallint(5) unsigned DEFAULT NULL,
  `padding_bottom` smallint(5) unsigned DEFAULT NULL,
  `margin_left` smallint(5) unsigned DEFAULT NULL,
  `margin_right` smallint(5) unsigned DEFAULT NULL,
  `margin_top` smallint(5) unsigned DEFAULT NULL,
  `margin_bottom` smallint(5) unsigned DEFAULT NULL,
  `additional_classes` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `id_name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_style_style` */

/*Table structure for table `djangocms_text_ckeditor_text` */

DROP TABLE IF EXISTS `djangocms_text_ckeditor_text`;

CREATE TABLE `djangocms_text_ckeditor_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_text_ckeditor_text` */

/*Table structure for table `djangocms_video_videoplayer` */

DROP TABLE IF EXISTS `djangocms_video_videoplayer`;

CREATE TABLE `djangocms_video_videoplayer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `embed_link` varchar(255) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videoplayer_poster_id_07790e24` (`poster_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_vide_poster_id_07790e24_fk_filer_ima` FOREIGN KEY (`poster_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_video_videoplayer` */

/*Table structure for table `djangocms_video_videosource` */

DROP TABLE IF EXISTS `djangocms_video_videosource`;

CREATE TABLE `djangocms_video_videosource` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `text_title` varchar(255) NOT NULL,
  `text_description` longtext NOT NULL,
  `attributes` longtext NOT NULL,
  `source_file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videosource_source_file_id_16f11167` (`source_file_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_vide_source_file_id_16f11167_fk_filer_fil` FOREIGN KEY (`source_file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_video_videosource` */

/*Table structure for table `djangocms_video_videotrack` */

DROP TABLE IF EXISTS `djangocms_video_videotrack`;

CREATE TABLE `djangocms_video_videotrack` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `srclang` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videotrack_src_id_e5a015d8` (`src_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id` FOREIGN KEY (`src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `djangocms_video_videotrack` */

/*Table structure for table `easy_thumbnails_source` */

DROP TABLE IF EXISTS `easy_thumbnails_source`;

CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  KEY `easy_thumbnails_source_name_5fe0edc6` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `easy_thumbnails_source` */

/*Table structure for table `easy_thumbnails_thumbnail` */

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;

CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`),
  CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `easy_thumbnails_thumbnail` */

/*Table structure for table `easy_thumbnails_thumbnaildimensions` */

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;

CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `easy_thumbnails_thumbnaildimensions` */

/*Table structure for table `filer_clipboard` */

DROP TABLE IF EXISTS `filer_clipboard`;

CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `filer_clipboard` */

/*Table structure for table `filer_clipboarditem` */

DROP TABLE IF EXISTS `filer_clipboarditem`;

CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`),
  KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `filer_clipboarditem` */

/*Table structure for table `filer_file` */

DROP TABLE IF EXISTS `filer_file`;

CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` bigint(20) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`),
  KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `filer_file` */

/*Table structure for table `filer_folder` */

DROP TABLE IF EXISTS `filer_folder`;

CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  KEY `filer_folder_lft_2c2b69f1` (`lft`),
  KEY `filer_folder_rght_34946267` (`rght`),
  KEY `filer_folder_tree_id_b016223c` (`tree_id`),
  KEY `filer_folder_level_b631d28a` (`level`),
  KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `filer_folder` */

/*Table structure for table `filer_folderpermission` */

DROP TABLE IF EXISTS `filer_folderpermission`;

CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `filer_folderpermission` */

/*Table structure for table `filer_image` */

DROP TABLE IF EXISTS `filer_image`;

CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` int(11) DEFAULT NULL,
  `_width` int(11) DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  PRIMARY KEY (`file_ptr_id`),
  CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `filer_image` */

/*Table structure for table `filer_thumbnailoption` */

DROP TABLE IF EXISTS `filer_thumbnailoption`;

CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `filer_thumbnailoption` */

/*Table structure for table `menus_cachekey` */

DROP TABLE IF EXISTS `menus_cachekey`;

CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `menus_cachekey` */

insert  into `menus_cachekey`(`id`,`language`,`site`,`key`) values (2,'pt',1,'cms_3.5.2_menu_nodes_pt_1_1_user:draft');

/*Table structure for table `swrunesadmin_atributoruna` */

DROP TABLE IF EXISTS `swrunesadmin_atributoruna`;

CREATE TABLE `swrunesadmin_atributoruna` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `atribute` varchar(5) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `swrunesadmin_atribut_cmsplugin_ptr_id_45676758_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `swrunesadmin_atributoruna` */

/*Table structure for table `swrunesadmin_catalogomonstro` */

DROP TABLE IF EXISTS `swrunesadmin_catalogomonstro`;

CREATE TABLE `swrunesadmin_catalogomonstro` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `swrunesadmin_catalog_cmsplugin_ptr_id_6c29b615_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `swrunesadmin_catalogomonstro` */

/*Table structure for table `swrunesadmin_runa` */

DROP TABLE IF EXISTS `swrunesadmin_runa`;

CREATE TABLE `swrunesadmin_runa` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `typerune` varchar(5) DEFAULT NULL,
  `pos` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `swrunesadmin_runa_cmsplugin_ptr_id_b3135a17_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `swrunesadmin_runa` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
