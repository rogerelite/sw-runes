


DROP DATABASE IF EXISTS `swrunes`;
CREATE DATABASE `swrunes`
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

USE 'mysql';
GRANT ALL PRIVILEGES ON swrunes.* TO 'root'@'localhost' IDENTIFIED BY ''

WITH GRANT OPTION;
FLUSH PRIVILEGES;





DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





LOCK TABLES `auth_group` WRITE;
UNLOCK TABLES;





DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





LOCK TABLES `auth_group_permissions` WRITE;
UNLOCK TABLES;





DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `codename` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





LOCK TABLES `auth_permission` WRITE;
INSERT INTO `auth_permission` VALUES (1,1,'use_structure','Can use Structure mode'),(2,2,'change_page','Can change page'),(3,3,'add_permission','Can add permission'),(4,3,'change_permission','Can change permission'),(5,3,'delete_permission','Can delete permission'),(6,4,'add_group','Can add group'),(7,4,'change_group','Can change group'),(8,4,'delete_group','Can delete group'),(9,5,'add_user','Can add user'),(10,5,'change_user','Can change user'),(11,5,'delete_user','Can delete user'),(12,6,'add_contenttype','Can add content type'),(13,6,'change_contenttype','Can change content type'),(14,6,'delete_contenttype','Can delete content type'),(15,7,'add_session','Can add session'),(16,7,'change_session','Can change session'),(17,7,'delete_session','Can delete session'),(18,8,'add_logentry','Can add log entry'),(19,8,'change_logentry','Can change log entry'),(20,8,'delete_logentry','Can delete log entry'),(21,9,'add_site','Can add site'),(22,9,'change_site','Can change site'),(23,9,'delete_site','Can delete site'),(24,10,'add_cmsplugin','Can add cms plugin'),(25,10,'change_cmsplugin','Can change cms plugin'),(26,10,'delete_cmsplugin','Can delete cms plugin'),(27,11,'add_aliaspluginmodel','Can add alias plugin model'),(28,11,'change_aliaspluginmodel','Can change alias plugin model'),(29,11,'delete_aliaspluginmodel','Can delete alias plugin model'),(30,12,'add_globalpagepermission','Can add Page global permission'),(31,12,'change_globalpagepermission','Can change Page global permission'),(32,12,'delete_globalpagepermission','Can delete Page global permission'),(33,2,'add_page','Can add page'),(34,2,'delete_page','Can delete page'),(35,2,'view_page','Can view page'),(36,2,'publish_page','Can publish page'),(37,2,'edit_static_placeholder','Can edit static placeholders'),(38,13,'add_pagepermission','Can add Page permission'),(39,13,'change_pagepermission','Can change Page permission'),(40,13,'delete_pagepermission','Can delete Page permission'),(41,14,'add_pageuser','Can add User (page)'),(42,14,'change_pageuser','Can change User (page)'),(43,14,'delete_pageuser','Can delete User (page)'),(44,15,'add_pageusergroup','Can add User group (page)'),(45,15,'change_pageusergroup','Can change User group (page)'),(46,15,'delete_pageusergroup','Can delete User group (page)'),(47,1,'add_placeholder','Can add placeholder'),(48,1,'change_placeholder','Can change placeholder'),(49,1,'delete_placeholder','Can delete placeholder'),(50,16,'add_placeholderreference','Can add placeholder reference'),(51,16,'change_placeholderreference','Can change placeholder reference'),(52,16,'delete_placeholderreference','Can delete placeholder reference'),(53,17,'add_staticplaceholder','Can add static placeholder'),(54,17,'change_staticplaceholder','Can change static placeholder'),(55,17,'delete_staticplaceholder','Can delete static placeholder'),(56,18,'add_title','Can add title'),(57,18,'change_title','Can change title'),(58,18,'delete_title','Can delete title'),(59,19,'add_usersettings','Can add user setting'),(60,19,'change_usersettings','Can change user setting'),(61,19,'delete_usersettings','Can delete user setting'),(62,20,'add_urlconfrevision','Can add urlconf revision'),(63,20,'change_urlconfrevision','Can change urlconf revision'),(64,20,'delete_urlconfrevision','Can delete urlconf revision'),(65,23,'add_cachekey','Can add cache key'),(66,23,'change_cachekey','Can change cache key'),(67,23,'delete_cachekey','Can delete cache key'),(68,24,'add_text','Can add text'),(69,24,'change_text','Can change text'),(70,24,'delete_text','Can delete text'),(71,25,'add_clipboard','Can add clipboard'),(72,25,'change_clipboard','Can change clipboard'),(73,25,'delete_clipboard','Can delete clipboard'),(74,26,'add_clipboarditem','Can add clipboard item'),(75,26,'change_clipboarditem','Can change clipboard item'),(76,26,'delete_clipboarditem','Can delete clipboard item'),(77,27,'add_file','Can add file'),(78,27,'change_file','Can change file'),(79,27,'delete_file','Can delete file'),(80,28,'add_folder','Can add Folder'),(81,28,'change_folder','Can change Folder'),(82,28,'delete_folder','Can delete Folder'),(83,28,'can_use_directory_listing','Can use directory listing'),(84,29,'add_folderpermission','Can add folder permission'),(85,29,'change_folderpermission','Can change folder permission'),(86,29,'delete_folderpermission','Can delete folder permission'),(87,30,'add_image','Can add image'),(88,30,'change_image','Can change image'),(89,30,'delete_image','Can delete image'),(90,31,'add_thumbnailoption','Can add thumbnail option'),(91,31,'change_thumbnailoption','Can change thumbnail option'),(92,31,'delete_thumbnailoption','Can delete thumbnail option'),(93,32,'add_source','Can add source'),(94,32,'change_source','Can change source'),(95,32,'delete_source','Can delete source'),(96,33,'add_thumbnail','Can add thumbnail'),(97,33,'change_thumbnail','Can change thumbnail'),(98,33,'delete_thumbnail','Can delete thumbnail'),(99,34,'add_thumbnaildimensions','Can add thumbnail dimensions'),(100,34,'change_thumbnaildimensions','Can change thumbnail dimensions'),(101,34,'delete_thumbnaildimensions','Can delete thumbnail dimensions'),(102,35,'add_column','Can add column'),(103,35,'change_column','Can change column'),(104,35,'delete_column','Can delete column'),(105,36,'add_multicolumns','Can add multi columns'),(106,36,'change_multicolumns','Can change multi columns'),(107,36,'delete_multicolumns','Can delete multi columns'),(108,37,'add_file','Can add file'),(109,37,'change_file','Can change file'),(110,37,'delete_file','Can delete file'),(111,38,'add_folder','Can add folder'),(112,38,'change_folder','Can change folder'),(113,38,'delete_folder','Can delete folder'),(114,39,'add_link','Can add link'),(115,39,'change_link','Can change link'),(116,39,'delete_link','Can delete link'),(117,40,'add_picture','Can add picture'),(118,40,'change_picture','Can change picture'),(119,40,'delete_picture','Can delete picture'),(120,41,'add_style','Can add style'),(121,41,'change_style','Can change style'),(122,41,'delete_style','Can delete style'),(123,42,'add_snippet','Can add Snippet'),(124,42,'change_snippet','Can change Snippet'),(125,42,'delete_snippet','Can delete Snippet'),(126,43,'add_snippetptr','Can add Snippet'),(127,43,'change_snippetptr','Can change Snippet'),(128,43,'delete_snippetptr','Can delete Snippet'),(129,44,'add_googlemap','Can add google map'),(130,44,'change_googlemap','Can change google map'),(131,44,'delete_googlemap','Can delete google map'),(132,45,'add_googlemapmarker','Can add google map marker'),(133,45,'change_googlemapmarker','Can change google map marker'),(134,45,'delete_googlemapmarker','Can delete google map marker'),(135,46,'add_googlemaproute','Can add google map route'),(136,46,'change_googlemaproute','Can change google map route'),(137,46,'delete_googlemaproute','Can delete google map route'),(138,47,'add_videoplayer','Can add video player'),(139,47,'change_videoplayer','Can change video player'),(140,47,'delete_videoplayer','Can delete video player'),(141,48,'add_videosource','Can add video source'),(142,48,'change_videosource','Can change video source'),(143,48,'delete_videosource','Can delete video source'),(144,49,'add_videotrack','Can add video track'),(145,49,'change_videotrack','Can change video track'),(146,49,'delete_videotrack','Can delete video track');
UNLOCK TABLES;





DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` text,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
