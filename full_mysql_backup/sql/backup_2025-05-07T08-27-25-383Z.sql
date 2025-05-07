-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: DatabaseMigration
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connections` (
  `id` int DEFAULT NULL,
  `connection_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` int DEFAULT NULL,
  `database_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `url` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_changelog_log`
--

DROP TABLE IF EXISTS `custom_changelog_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_changelog_log` (
  `id` int DEFAULT NULL,
  `user_id` varchar(500) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userType` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `changelog_file` varchar(500) DEFAULT NULL,
  `changelog_label` varchar(255) DEFAULT NULL,
  `git_repo` varchar(500) DEFAULT NULL,
  `commit_message` text,
  `git_commit_id` varchar(100) DEFAULT NULL,
  `migration_status` varchar(50) DEFAULT NULL,
  `git_status` varchar(50) DEFAULT NULL,
  `migration_output` text,
  `git_output` text,
  `target_db_url` varchar(500) DEFAULT NULL,
  `target_Connection_Name` varchar(500) DEFAULT NULL,
  `source_db_url` varchar(500) DEFAULT NULL,
  `source_Connection_Name` varchar(500) DEFAULT NULL,
  `migration_Dtails` varchar(500) DEFAULT NULL,
  `executed_at` datetime DEFAULT NULL,
  `itemAdded` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_changelog_log`
--

LOCK TABLES `custom_changelog_log` WRITE;
/*!40000 ALTER TABLE `custom_changelog_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_changelog_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_connections`
--

DROP TABLE IF EXISTS `database_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_connections` (
  `id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `db_type` varchar(50) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `port` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_connections`
--

LOCK TABLES `database_connections` WRITE;
/*!40000 ALTER TABLE `database_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `database_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangelog`
--

LOCK TABLES `databasechangelog` WRITE;
/*!40000 ALTER TABLE `databasechangelog` DISABLE KEYS */;
INSERT INTO `databasechangelog` VALUES ('table-table2-0','auto','changelog.xml','2025-04-25 19:57:57',1,'EXECUTED','9:73ba4c26ab690a0828fae7af0989ab08','createTable tableName=table2','',NULL,'4.31.0',NULL,NULL,'5591274245'),('table-flywayusers11-0','auto','changelog.xml','2025-04-25 20:01:49',2,'EXECUTED','9:c30c4f3fda2c389f6814bca788f771ea','createTable tableName=flywayusers11','',NULL,'4.31.0',NULL,NULL,'5591505443'),('table-example_table2-0','auto','changelog.xml','2025-05-05 16:27:51',3,'EXECUTED','9:e7a388f597182344e25560367b467762','createTable tableName=example_table2','',NULL,'4.31.0',NULL,NULL,'6442667876'),('table-git_connections-1','auto','changelog.xml','2025-05-05 16:27:51',4,'EXECUTED','9:1e5b47222c3f55b8037516c8d5964482','createTable tableName=git_connections','',NULL,'4.31.0',NULL,NULL,'6442667876'),('table-table3-0','auto','changelog.xml','2025-05-06 11:56:38',5,'EXECUTED','9:31075efccc80a889fc9cf60bb2bfd15d','createTable tableName=table3','',NULL,'4.31.0',NULL,NULL,'6512795186'),('table-tbl_register-0','auto','changelog.xml','2025-05-06 12:02:48',6,'EXECUTED','9:284002c8724e721465a4c338fe5fb277','createTable tableName=tbl_register','',NULL,'4.31.0',NULL,NULL,'6513164698'),('view-view_all_names-0','auto','changelog.xml','2025-05-06 12:17:34',7,'EXECUTED','9:4433419a6d9a4fd9fc499a82f1cb22f6','createView viewName=view_all_names','',NULL,'4.31.0',NULL,NULL,'6514051085'),('table-flyway_schema_history-0','auto','changelog.xml','2025-05-06 12:22:40',8,'EXECUTED','9:5fc63a116e7534b60646a1694c327e13','createTable tableName=flyway_schema_history','',NULL,'4.31.0',NULL,NULL,'6514357095'),('table-flyway_schema_old-0','auto','changelog.xml','2025-05-06 12:26:20',9,'EXECUTED','9:fd8fc44457b3edf9249462a99457095f','createTable tableName=flyway_schema_old','',NULL,'4.31.0',NULL,NULL,'6514577157'),('table-database_connections-0','auto','changelog.xml','2025-05-06 14:38:49',10,'EXECUTED','9:1b6ab163925c05835c6ec11ac7c046a9','createTable tableName=database_connections','',NULL,'4.31.0',NULL,NULL,'6522526333'),('table-tbl_user-0','auto','changelog.xml','2025-05-06 14:40:59',11,'EXECUTED','9:ac8fa139359aaf1549a65aa854803819','createTable tableName=tbl_user','',NULL,'4.31.0',NULL,NULL,'6522656365'),('table-connections-0','auto','changelog.xml','2025-05-06 15:07:12',12,'EXECUTED','9:7ea73d14ea6ec506d74b7069aa0dea20','createTable tableName=connections','',NULL,'4.31.0',NULL,NULL,'6524228979'),('table-custom_changelog_log-0','auto','changelog.xml','2025-05-06 16:19:40',13,'EXECUTED','9:7862579f909605f456b2e7b04dc96718','createTable tableName=custom_changelog_log','',NULL,'4.31.0',NULL,NULL,'6528575467'),('table-example_table-0','auto','changelog.xml','2025-05-06 16:24:20',14,'EXECUTED','9:dcb2596b1ea53d3b8066c1cc318d8cab','createTable tableName=example_table','',NULL,'4.31.0',NULL,NULL,'6528855298');
/*!40000 ALTER TABLE `databasechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasechangeloglock` (
  `ID` int NOT NULL,
  `LOCKED` tinyint NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangeloglock`
--

LOCK TABLES `databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `databasechangeloglock` DISABLE KEYS */;
INSERT INTO `databasechangeloglock` VALUES (1,0,NULL,NULL);
/*!40000 ALTER TABLE `databasechangeloglock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example_table`
--

DROP TABLE IF EXISTS `example_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `example_table` (
  `id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example_table`
--

LOCK TABLES `example_table` WRITE;
/*!40000 ALTER TABLE `example_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `example_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example_table2`
--

DROP TABLE IF EXISTS `example_table2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `example_table2` (
  `id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example_table2`
--

LOCK TABLES `example_table2` WRITE;
/*!40000 ALTER TABLE `example_table2` DISABLE KEYS */;
/*!40000 ALTER TABLE `example_table2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `script` varchar(1000) DEFAULT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) DEFAULT NULL,
  `installed_on` timestamp NULL DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  `success` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_old`
--

DROP TABLE IF EXISTS `flyway_schema_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_old` (
  `installed_rank` int DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `script` varchar(1000) DEFAULT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) DEFAULT NULL,
  `installed_on` timestamp NULL DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  `success` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_old`
--

LOCK TABLES `flyway_schema_old` WRITE;
/*!40000 ALTER TABLE `flyway_schema_old` DISABLE KEYS */;
/*!40000 ALTER TABLE `flyway_schema_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flywayusers11`
--

DROP TABLE IF EXISTS `flywayusers11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flywayusers11` (
  `id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flywayusers11`
--

LOCK TABLES `flywayusers11` WRITE;
/*!40000 ALTER TABLE `flywayusers11` DISABLE KEYS */;
/*!40000 ALTER TABLE `flywayusers11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `git_connections`
--

DROP TABLE IF EXISTS `git_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `git_connections` (
  `id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `url` text,
  `username` varchar(100) DEFAULT NULL,
  `password` text,
  `privateKey` text,
  `provider` text,
  `authType` varchar(50) DEFAULT NULL,
  `savePassword` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `git_connections`
--

LOCK TABLES `git_connections` WRITE;
/*!40000 ALTER TABLE `git_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `git_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table2`
--

DROP TABLE IF EXISTS `table2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table2` (
  `id` int DEFAULT NULL,
  `Field1` varchar(500) DEFAULT NULL,
  `Field2` varchar(500) DEFAULT NULL,
  `Field3` varchar(500) DEFAULT NULL,
  `Field4` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table2`
--

LOCK TABLES `table2` WRITE;
/*!40000 ALTER TABLE `table2` DISABLE KEYS */;
/*!40000 ALTER TABLE `table2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table3`
--

DROP TABLE IF EXISTS `table3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table3` (
  `id` int DEFAULT NULL,
  `Field1` varchar(500) DEFAULT NULL,
  `Field2` varchar(500) DEFAULT NULL,
  `Field3` varchar(500) DEFAULT NULL,
  `Field4` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table3`
--

LOCK TABLES `table3` WRITE;
/*!40000 ALTER TABLE `table3` DISABLE KEYS */;
/*!40000 ALTER TABLE `table3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_register`
--

DROP TABLE IF EXISTS `tbl_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_register` (
  `id` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `company_id` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `nature_of_business` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `plan_id` varchar(100) DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `email_varification` enum('Verified','Pending','Not Verified') DEFAULT NULL,
  `mobile_varification` enum('Verified','Pending','Not Verified') DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `Plan_expiry_notification` enum('Y','N') DEFAULT NULL,
  `userType` enum('superadmin','admin','user') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_register`
--

LOCK TABLES `tbl_register` WRITE;
/*!40000 ALTER TABLE `tbl_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `company_id` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `nature_of_business` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `userType` enum('superadmin','admin','user') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `userStatus` enum('active','inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_all_names`
--

DROP TABLE IF EXISTS `view_all_names`;
/*!50001 DROP VIEW IF EXISTS `view_all_names`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_all_names` AS SELECT 
 1 AS `id`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_all_names`
--

/*!50001 DROP VIEW IF EXISTS `view_all_names`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_all_names` AS select `example_table2`.`id` AS `id`,`example_table2`.`name` AS `name` from `example_table2` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-07 13:57:25
