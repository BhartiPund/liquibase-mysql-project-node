-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: liquibase2
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
INSERT INTO `databasechangelog` VALUES ('1738921090136-1','SOMESH (generated)','full-changelog.xml','2025-02-07 15:10:52',1,'EXECUTED','9:1495e48cce3c31362a397c5abd6b7306','createTable tableName=example_table','',NULL,'4.31.0',NULL,NULL,'8921249297'),('1738921090136-2','SOMESH (generated)','full-changelog.xml','2025-02-07 15:10:52',2,'EXECUTED','9:1033d23de57b8c0ef3a0aaef9394bed8','createTable tableName=example_table2','',NULL,'4.31.0',NULL,NULL,'8921249297'),('1738921090136-3','SOMESH (generated)','full-changelog.xml','2025-02-07 15:10:52',3,'EXECUTED','9:757be97a696fefef8b7e063fc92387b5','createTable tableName=table2','',NULL,'4.31.0',NULL,NULL,'8921249297'),('1738921090136-4','SOMESH (generated)','full-changelog.xml','2025-02-07 15:10:52',4,'EXECUTED','9:a38b0a9b4b182b5246507c8c13f6705d','createTable tableName=table3','',NULL,'4.31.0',NULL,NULL,'8921249297'),('1738921090136-5','SOMESH (generated)','full-changelog.xml','2025-02-07 15:10:52',5,'EXECUTED','9:88a46dfc48a6b52266bf4a991300df4f','createTable tableName=tbl_user','',NULL,'4.31.0',NULL,NULL,'8921249297'),('1739777424805-1','SOMESH (generated)','changelog.xml','2025-02-17 14:01:39',6,'EXECUTED','9:1495e48cce3c31362a397c5abd6b7306','createTable tableName=example_table','',NULL,'4.31.0',NULL,NULL,'9781096108'),('1739777424805-2','SOMESH (generated)','changelog.xml','2025-02-17 14:01:39',7,'EXECUTED','9:1033d23de57b8c0ef3a0aaef9394bed8','createTable tableName=example_table2','',NULL,'4.31.0',NULL,NULL,'9781096108'),('1739777424805-3','SOMESH (generated)','changelog.xml','2025-02-17 14:01:39',8,'EXECUTED','9:ec8c0fe312d7a190f4d5b919e4696882','createTable tableName=flyway_schema_history','',NULL,'4.31.0',NULL,NULL,'9781096108'),('1739777424805-4','SOMESH (generated)','changelog.xml','2025-02-17 14:01:39',9,'EXECUTED','9:f37387000b2aa450663a1a52d69e1ac8','createTable tableName=flywayusers11','',NULL,'4.31.0',NULL,NULL,'9781096108');
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
-- Table structure for table `example_table2`
--

DROP TABLE IF EXISTS `example_table2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `example_table2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
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
-- Table structure for table `flywayusers11`
--

DROP TABLE IF EXISTS `flywayusers11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flywayusers11` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
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
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `url` text,
  `username` varchar(100) DEFAULT NULL,
  `password` text,
  `privateKey` text,
  `provider` text,
  `authType` varchar(50) DEFAULT NULL,
  `savePassword` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `git_connections`
--

LOCK TABLES `git_connections` WRITE;
/*!40000 ALTER TABLE `git_connections` DISABLE KEYS */;
INSERT INTO `git_connections` VALUES (2,'My Git Repo1','main','https://github.com/BhartiPund/liquibase-mysql-project-node','bharti.pund@devotrend.com',NULL,NULL,'github','basic',NULL,'2025-04-08 09:07:49'),(3,'liqibase app','main','https://github.com/BhartiPund/liquibase-mysql-project.git','Bharti Pund1',NULL,NULL,'github','basic',NULL,'2025-04-08 10:00:01'),(5,'My Git Repo','main','https://github.com/BhartiPund/liquibase-mysql-project.git','bharti.pund@devotrend.com',NULL,NULL,'github','basic',NULL,'2025-04-08 15:33:47');
/*!40000 ALTER TABLE `git_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table2`
--

DROP TABLE IF EXISTS `table2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Field1` varchar(500) DEFAULT NULL,
  `Field2` varchar(500) DEFAULT NULL,
  `Field3` varchar(500) DEFAULT NULL,
  `Field4` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `id` int NOT NULL AUTO_INCREMENT,
  `Field1` varchar(500) DEFAULT NULL,
  `Field2` varchar(500) DEFAULT NULL,
  `Field3` varchar(500) DEFAULT NULL,
  `Field4` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
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

-- Dump completed on 2025-04-22 16:10:46
