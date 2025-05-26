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
INSERT INTO `databasechangelog` VALUES ('table-flywayusers11-0','auto','changelog.xml','2025-05-07 19:05:32',1,'EXECUTED','9:c30c4f3fda2c389f6814bca788f771ea','createTable tableName=flywayusers11','',NULL,'4.31.0',NULL,NULL,'6624928678'),('table-table2-0','auto','changelog.xml','2025-05-07 19:07:18',2,'EXECUTED','9:73ba4c26ab690a0828fae7af0989ab08','createTable tableName=table2','',NULL,'4.31.0',NULL,NULL,'6625035305'),('table-flyway_schema_old-0','auto','changelog.xml','2025-05-08 13:07:21',3,'EXECUTED','9:fd8fc44457b3edf9249462a99457095f','createTable tableName=flyway_schema_old','',NULL,'4.31.0',NULL,NULL,'6689838171'),('table-tbl_user-0','auto','changelog.xml','2025-05-08 13:12:29',4,'EXECUTED','9:ac8fa139359aaf1549a65aa854803819','createTable tableName=tbl_user','',NULL,'4.31.0',NULL,NULL,'6690146373'),('table-table3-0','auto','changelog.xml','2025-05-08 14:16:20',5,'EXECUTED','9:31075efccc80a889fc9cf60bb2bfd15d','createTable tableName=table3','',NULL,'4.31.0',NULL,NULL,'6693976956'),('table-example_table-0','auto','changelog.xml','2025-05-09 13:47:00',6,'EXECUTED','9:dcb2596b1ea53d3b8066c1cc318d8cab','createTable tableName=example_table','',NULL,'4.31.0',NULL,NULL,'6778617341'),('table-example_table2-0','auto','changelog.xml','2025-05-09 13:48:36',7,'EXECUTED','9:e7a388f597182344e25560367b467762','createTable tableName=example_table2','',NULL,'4.31.0',NULL,NULL,'6778713264'),('table-git_connections-0','auto','changelog.xml','2025-05-23 12:23:04',8,'EXECUTED','9:1e5b47222c3f55b8037516c8d5964482','createTable tableName=git_connections','',NULL,'4.31.0',NULL,NULL,'7983180054'),('table-migration_approval_requests-0','auto','changelog.xml','2025-05-26 11:39:45',9,'EXECUTED','9:ed839cd399ef4a89d8859f65886e0859','createTable tableName=migration_approval_requests','',NULL,'4.31.0',NULL,NULL,'8239781326'),('table-role_permissions-1','auto','changelog.xml','2025-05-26 11:39:45',10,'EXECUTED','9:5622a0b3b4359252c091312d88a79ed1','createTable tableName=role_permissions','',NULL,'4.31.0',NULL,NULL,'8239781326');
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
-- Table structure for table `migration_approval_requests`
--

DROP TABLE IF EXISTS `migration_approval_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migration_approval_requests` (
  `id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `company_id` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `target_connection` varchar(255) DEFAULT NULL,
  `git_repo_url` varchar(255) DEFAULT NULL,
  `git_branch` varchar(100) DEFAULT NULL,
  `selected_items` text,
  `status` enum('PENDING','APPROVED','REJECTED') DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `source_connection` varchar(255) DEFAULT NULL,
  `source_db_url` text,
  `source_username` varchar(255) DEFAULT NULL,
  `source_password` text,
  `sourceschema` varchar(255) DEFAULT NULL,
  `target_db_url` text,
  `target_username` varchar(255) DEFAULT NULL,
  `target_password` text,
  `targetschema` varchar(255) DEFAULT NULL,
  `git_username` varchar(255) DEFAULT NULL,
  `changelog_file` text,
  `commit_message` text,
  `migration_details` text,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_approval_requests`
--

LOCK TABLES `migration_approval_requests` WRITE;
/*!40000 ALTER TABLE `migration_approval_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `migration_approval_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permissions` (
  `id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `action` enum('create','read','edit','delete') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-26 11:49:15
