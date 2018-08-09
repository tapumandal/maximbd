-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: maxpro_erp
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `mxp_menu`
--

DROP TABLE IF EXISTS `mxp_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mxp_menu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `is_active` int(11) NOT NULL,
  `order_id` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mxp_menu`
--

LOCK TABLES `mxp_menu` WRITE;
/*!40000 ALTER TABLE `mxp_menu` DISABLE KEYS */;
INSERT INTO `mxp_menu` VALUES (3,'LANGUAGE','language-chooser_view','Change Language',0,1,0,NULL,NULL),(4,'DASHBOARD','dashboard_view','Super admin Dashboard',0,1,1,NULL,NULL),(5,'SETTINGS','','Settings',0,1,2,NULL,NULL),(6,'ROLE','','Role Management ',0,1,2,NULL,NULL),(7,'ADD ROLE ACTION','add_role_action','Add new Role',0,1,0,NULL,NULL),(8,'Role List','role_list_view','Role List and manage option',6,1,2,NULL,NULL),(9,'ROLE UPDATE FORM','role_update_view','Show role update Form',0,1,2,NULL,NULL),(10,'ROLE DELETE ACTION','role_delete_action','Delete role',0,1,0,NULL,NULL),(11,'UPDATE ROLE ACTION','role_update_action','Update Role',0,1,0,NULL,NULL),(12,'Role Permission ','role_permission_view','Set Route Access to Role',6,1,3,NULL,NULL),(13,'PERMISSION ROLE ACTION','role_permission_action','Set Route Access to Role',0,1,0,NULL,NULL),(16,'ROLE PERMISSION FORM','role_permission_update_view','0',0,1,0,NULL,NULL),(18,'Create User','create_user_view','User Create Form',5,1,1,NULL,NULL),(19,'CREATE USER ACTION','create_user_action','',0,1,0,NULL,NULL),(20,'User List','user_list_view','',5,1,2,NULL,NULL),(21,'USER UPDATE FORM','company_user_update_view','',0,1,0,NULL,NULL),(22,'UPDATE USER ACTION','company_user_update_action','',0,1,0,NULL,NULL),(23,'DELETE USER ACTION','company_user_delete_action','',0,1,0,NULL,NULL),(24,'Manage Langulage','manage_language','language add and view',3,1,0,NULL,NULL),(25,'ADD LANGUAGE ACTION','create_locale_action','add language',0,1,0,NULL,NULL),(26,'UPDATE LOCALE ACTION','update_locale_action','update language',0,1,0,NULL,NULL),(27,'Manage Translation','manage_translation','manage transaltion',3,1,2,NULL,NULL),(28,'CREATE TRANSLATION ACTION','create_translation_action','create translation',0,1,0,NULL,NULL),(29,'UPDATE TRANSLATION ACTION','update_translation_action','update translation',0,1,0,NULL,NULL),(30,'POST UPDATE TRANSLATION ACTION','update_translation_key_action','post update translaion',0,1,0,NULL,NULL),(31,'DELETE TRANSLATION ACTION','delete_translation_action','delete translation',0,1,0,NULL,NULL),(32,'Upload Language File','update_language','upload language file',3,1,3,NULL,NULL),(33,'USER','','User Management',0,1,1,NULL,NULL),(34,'Add New Role','add_role_view','New role adding form',6,1,1,NULL,NULL),(35,'Open Company Acc','create_company_acc_view','Company Account Opening Form',5,1,3,NULL,NULL),(36,'OPEN COMPANY ACCOUNT','create_company_acc_action','Company Acc opening Action',5,1,2,NULL,NULL),(37,'Company List','company_list_view','Company List View',5,1,4,NULL,NULL),(38,'PRODUCT','','Product management',0,1,0,NULL,NULL),(39,'Unit','unit_list_view','Product List view form',38,1,1,NULL,NULL),(40,'Add Unit Form','add_unit_view','Create Product view',0,1,1,NULL,NULL),(41,'Add Unit Action','add_unit_action','Add Product Action',0,1,1,NULL,NULL),(42,'Product Group','group_product_list_view','Product group List',38,1,1,NULL,NULL),(43,' Add Product Group Form','add_product_group_view','Add product group',0,1,1,NULL,NULL),(44,'Add Product Group Action','add_product_group_action','Add product group action',0,1,1,NULL,NULL),(52,'Product Entry','entry_product_list_view','This is product entry list view',38,1,3,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(53,'Add Product Entry Form','add_product_entry_view','This is product entry view form',0,1,0,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(54,'Add Product Action','add_product_action','this is product entry action',0,1,0,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(55,'Product Packing','packet_list_view','',38,1,3,NULL,NULL),(56,'Add Packet','add_packet_view','',0,1,0,NULL,NULL),(57,'ADD PACKET ACTION','add_packet_action','',0,1,0,NULL,NULL),(58,'DELETE PACKET','delete_packet_action','',0,1,0,NULL,NULL),(59,'Uudate Packet','update_packet_view','',0,1,0,NULL,NULL),(60,'UPDATE PACKET','update_packet_action','',0,1,0,NULL,NULL),(61,'Update Unit','edit_unit_view','',0,1,0,NULL,NULL),(62,'UPDATE UNIT ACTION','edit_unit_action','',0,1,0,NULL,NULL),(63,'DELETE UNIT ACTION','delete_unit','',0,1,0,NULL,NULL),(64,'Update Product Group','edit_productGroup_view','',0,1,0,NULL,NULL),(65,'UPDATE PRODUCT ACTION','edit_productGroup_action','',0,1,0,NULL,NULL),(66,'DELETE PRODUCT ACTION','delet_productGroup','',0,1,0,NULL,NULL);
/*!40000 ALTER TABLE `mxp_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mxp_user_role_menu`
--

DROP TABLE IF EXISTS `mxp_user_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mxp_user_role_menu` (
  `role_menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mxp_user_role_menu`
--

LOCK TABLES `mxp_user_role_menu` WRITE;
/*!40000 ALTER TABLE `mxp_user_role_menu` DISABLE KEYS */;
INSERT INTO `mxp_user_role_menu` VALUES (185,1,25,0,1,'2018-01-27 00:24:42','2018-01-27 00:24:42'),(186,1,7,0,1,'2018-01-27 00:24:42','2018-01-27 00:24:42'),(187,1,34,0,1,'2018-01-27 00:24:42','2018-01-27 00:24:42'),(188,1,28,0,1,'2018-01-27 00:24:42','2018-01-27 00:24:42'),(189,1,19,0,1,'2018-01-27 00:24:42','2018-01-27 00:24:42'),(190,1,37,0,1,'2018-01-27 00:24:42','2018-01-27 00:24:42'),(191,1,18,0,1,'2018-01-27 00:24:42','2018-01-27 00:24:42'),(192,1,4,0,1,'2018-01-27 00:24:42','2018-01-27 00:24:42'),(193,1,31,0,1,'2018-01-27 00:24:42','2018-01-27 00:24:42'),(194,1,23,0,1,'2018-01-27 00:24:42','2018-01-27 00:24:42'),(195,1,3,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(196,1,24,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(197,1,27,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(198,1,36,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(199,1,35,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(200,1,13,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(201,1,30,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(202,1,6,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(203,1,10,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(204,1,16,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(205,1,9,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(206,1,8,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(207,1,12,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(208,1,5,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(209,1,26,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(210,1,11,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(211,1,29,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(212,1,22,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(213,1,33,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(214,1,21,0,1,'2018-01-27 00:24:43','2018-01-27 00:24:43'),(313,21,4,0,1,'2018-01-29 00:42:45','2018-01-29 00:42:45'),(314,21,31,0,1,'2018-01-29 00:42:46','2018-01-29 00:42:46'),(315,21,3,0,1,'2018-01-29 00:42:46','2018-01-29 00:42:46'),(316,21,24,0,1,'2018-01-29 00:42:46','2018-01-29 00:42:46'),(317,21,27,0,1,'2018-01-29 00:42:46','2018-01-29 00:42:46'),(318,21,5,0,1,'2018-01-29 00:42:46','2018-01-29 00:42:46'),(319,21,32,0,1,'2018-01-29 00:42:46','2018-01-29 00:42:46'),(334,24,28,12,1,'2018-01-30 20:55:21','2018-01-30 20:55:21'),(335,24,31,12,1,'2018-01-30 20:55:21','2018-01-30 20:55:21'),(336,24,3,12,1,'2018-01-30 20:55:21','2018-01-30 20:55:21'),(337,24,24,12,1,'2018-01-30 20:55:21','2018-01-30 20:55:21'),(338,24,27,12,1,'2018-01-30 20:55:21','2018-01-30 20:55:21'),(339,24,30,12,1,'2018-01-30 20:55:21','2018-01-30 20:55:21'),(340,24,29,12,1,'2018-01-30 20:55:21','2018-01-30 20:55:21'),(341,24,32,12,1,'2018-01-30 20:55:21','2018-01-30 20:55:21'),(349,26,34,14,1,'2018-01-30 21:00:07','2018-01-30 21:00:07'),(350,26,13,14,1,'2018-01-30 21:00:07','2018-01-30 21:00:07'),(351,26,6,14,1,'2018-01-30 21:00:07','2018-01-30 21:00:07'),(352,26,10,14,1,'2018-01-30 21:00:07','2018-01-30 21:00:07'),(353,26,16,14,1,'2018-01-30 21:00:08','2018-01-30 21:00:08'),(354,26,9,14,1,'2018-01-30 21:00:08','2018-01-30 21:00:08'),(355,26,8,14,1,'2018-01-30 21:00:08','2018-01-30 21:00:08'),(356,26,12,14,1,'2018-01-30 21:00:08','2018-01-30 21:00:08'),(357,26,11,14,1,'2018-01-30 21:00:08','2018-01-30 21:00:08'),(358,25,19,13,1,'2018-01-30 22:23:24','2018-01-30 22:23:24'),(359,25,37,13,1,'2018-01-30 22:23:24','2018-01-30 22:23:24'),(360,25,18,13,1,'2018-01-30 22:23:24','2018-01-30 22:23:24'),(361,25,5,13,1,'2018-01-30 22:23:24','2018-01-30 22:23:24'),(362,25,22,13,1,'2018-01-30 22:23:24','2018-01-30 22:23:24'),(363,25,33,13,1,'2018-01-30 22:23:25','2018-01-30 22:23:25'),(364,25,21,13,1,'2018-01-30 22:23:25','2018-01-30 22:23:25'),(365,25,20,13,1,'2018-01-30 22:23:25','2018-01-30 22:23:25'),(366,1,32,0,1,NULL,NULL),(367,1,20,0,1,'2018-01-30 22:23:25','2018-01-30 22:23:25'),(401,1,38,0,1,NULL,NULL),(402,1,39,0,1,NULL,NULL),(403,1,40,0,1,NULL,NULL),(404,1,41,0,1,NULL,NULL),(405,1,42,0,1,NULL,NULL),(406,1,43,0,1,NULL,NULL),(407,1,44,0,1,NULL,NULL),(414,1,52,0,1,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(415,1,53,0,1,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(416,1,54,0,1,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(417,1,55,0,1,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(418,1,56,0,1,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(419,1,54,0,1,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(420,1,57,0,1,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(421,1,58,0,1,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(422,1,59,0,1,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(423,1,60,0,1,'2018-01-31 18:00:00','2018-01-31 18:00:00'),(424,1,61,0,1,NULL,NULL),(425,1,62,0,1,NULL,NULL),(426,1,63,0,1,NULL,NULL),(427,1,64,0,1,NULL,NULL),(428,1,65,0,1,NULL,NULL),(429,1,66,0,1,NULL,NULL);
/*!40000 ALTER TABLE `mxp_user_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'maxpro_erp'
--

--
-- Dumping routines for database 'maxpro_erp'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_all_role_list_by_group_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_role_list_by_group_id`(IN `grp_id` INT(11))
SELECT GROUP_CONCAT(DISTINCT(c.name)) as c_name,r.* FROM mxp_role r join mxp_companies c on(c.id=r.company_id)
where c.group_id=grp_id GROUP BY r.cm_group_id ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_translation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_translation`()
SELECT tr.*,tk.translation_key FROM mxp_translation_keys tk INNER JOIN mxp_translations tr ON(tr.translation_key_id=tk.translation_key_id) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_translation_with_limit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_translation_with_limit`(IN `startedAt` INT(11), IN `limits` INT(11))
SELECT tr.*,tk.translation_key, ml.lan_name FROM mxp_translation_keys tk INNER JOIN
 mxp_translations tr ON(tr.translation_key_id=tk.translation_key_id) 
 INNER JOIN mxp_languages ml ON(ml.lan_code=tr.lan_code)order by tk.translation_key limit startedAt,limits ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_child_menu_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_child_menu_list`(IN `p_parent_menu_id` INT(11), IN `role_id` INT(11), IN `comp_id` INT(11))
if(comp_id !='') then
SELECT m.* FROM mxp_user_role_menu rm inner JOIN mxp_menu m ON(m.menu_id=rm.menu_id) WHERE rm.role_id=role_id AND rm.company_id=comp_id AND m.parent_id=p_parent_menu_id order by m.order_id ASC;
else
SELECT m.* FROM mxp_user_role_menu rm inner JOIN mxp_menu m ON(m.menu_id=rm.menu_id) WHERE rm.role_id=role_id AND m.parent_id=p_parent_menu_id order by m.order_id ASC;
end if ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_companies_by_group_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_companies_by_group_id`(IN `grp_id` INT(11))
select * from mxp_companies where group_id=grp_id and is_active = 1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_permission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_permission`(IN `role_id` INT(11), IN `route` VARCHAR(120), IN `comp_id` INT(11))
if(comp_id !='')then
SELECT COUNT(*) as cnt FROM mxp_user_role_menu rm inner JOIN mxp_menu m ON(m.menu_id=rm.menu_id) WHERE m.route_name=route AND rm.role_id=role_id AND rm.company_id=comp_id;
else
SELECT COUNT(*) as cnt FROM mxp_user_role_menu rm inner JOIN mxp_menu m ON(m.menu_id=rm.menu_id) WHERE m.route_name=route AND rm.role_id=role_id ;
end if ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_roles_by_company_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_roles_by_company_id`(IN `cmpny_id` INT(11), IN `cm_grp_id` INT(11))
SELECT rl.name as roleName, cm.name as companyName, cm.id as company_id, rl.cm_group_id, rl.is_active FROM mxp_role rl INNER JOIN mxp_companies cm ON(rl.company_id=cm.id) where cm.group_id = `cmpny_id` and rl.cm_group_id = `cm_grp_id` ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_searched_trans_key` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_searched_trans_key`(IN `_key` VARCHAR(255))
SELECT distinct(tk.translation_key),tk.translation_key_id, tk.is_active FROM mxp_translation_keys tk
 inner join mxp_translations tr on(tk.translation_key_id = tr.translation_key_id)
 WHERE tk.translation_key LIKE CONCAT('%', _key , '%') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_translations_by_key_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_translations_by_key_id`(IN `key_id` INT)
select translation_id, translation, lan_code from mxp_translations
 where translation_key_id= `key_id` and is_active = 1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_translations_by_locale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_translations_by_locale`(IN `locale_code` VARCHAR(255))
SELECT tr.translation,tk.translation_key FROM mxp_translation_keys tk INNER JOIN mxp_translations tr ON(tr.translation_key_id=tk.translation_key_id)
WHERE tr.lan_code=locale_code ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_translation_by_key_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_translation_by_key_id`(IN `tr_key_id` INT(11))
SELECT tr.translation,tk.translation_key,tk.translation_key_id,tk.is_active,ln.lan_name FROM mxp_translation_keys tk INNER JOIN mxp_translations tr ON(tr.translation_key_id=tk.translation_key_id)
INNER JOIN mxp_languages ln ON(ln.lan_code=tr.lan_code)
WHERE tr.translation_key_id=tr_key_id ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user_menu_by_role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_user_menu_by_role`(IN `role_id` INT(11), IN `comp_id` INT(11))
if(comp_id !='') then
SELECT m.* FROM mxp_user_role_menu rm inner JOIN mxp_menu m ON(m.menu_id=rm.menu_id) WHERE rm.role_id=role_id AND rm.company_id=comp_id;
else
SELECT m.* FROM mxp_user_role_menu rm inner JOIN mxp_menu m ON(m.menu_id=rm.menu_id) WHERE rm.role_id=role_id;
end if ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-02 13:25:53
