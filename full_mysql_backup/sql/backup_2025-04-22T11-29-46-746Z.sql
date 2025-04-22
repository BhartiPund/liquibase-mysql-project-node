-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: liquibase_db
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
  `id` int NOT NULL AUTO_INCREMENT,
  `connection_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` int DEFAULT NULL,
  `database_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `url` text,
  `password` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
INSERT INTO `connections` VALUES (16,'connection_liqubase21','mysql','localhost',3306,'liquibase2','root','2025-04-07 07:50:10','','root'),(18,'connection_liqubaseDB','mysql','localhost',3306,'liquibase_db','root','2025-04-07 12:11:27','','root'),(19,'connectionNew','mysql',NULL,NULL,NULL,'root','2025-04-07 14:34:15','jdbc:mysql://localhost:3306/liquibase_db','root'),(20,'CON','mysql','localhost',3306,'liquibase_db','root','2025-04-10 11:18:14',NULL,'root'),(22,'DatabaseMigration','mysql','localhost',3306,'DatabaseMigration','root','2025-04-21 11:25:10',NULL,'root');
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_connections`
--

DROP TABLE IF EXISTS `database_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_connections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `db_type` varchar(50) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `port` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_connections`
--

LOCK TABLES `database_connections` WRITE;
/*!40000 ALTER TABLE `database_connections` DISABLE KEYS */;
INSERT INTO `database_connections` VALUES (1,'conection1','postgres','localhost','root','root',3306,'2025-04-02 05:48:43'),(2,'conection11','mysql','localhost','root','root',3306,'2025-04-02 05:49:04'),(3,'Bharti Pund','MySQL','localhost','root','root',3306,'2025-04-02 06:24:09'),(4,'M','MySQL','localhost','root','root',3306,'2025-04-02 06:25:15'),(5,'M','MySQL','localhost','root','root',3306,'2025-04-02 06:26:25'),(6,'M','MySQL','localhost','root','1234',3306,'2025-04-02 06:27:40'),(7,'M','MySQL','localhost','root','1234',3306,'2025-04-02 06:30:32'),(8,'M','MySQL','localhost','root','1234',3306,'2025-04-02 06:30:33'),(9,'M','MySQL','localhost','root','1234',3306,'2025-04-02 06:30:33'),(10,'M','MySQL','localhost','root','1234',3306,'2025-04-02 06:30:33'),(11,'M','MySQL','localhost','root','1234',3306,'2025-04-02 06:30:33'),(12,'M','MySQL','localhost','root','1234',3306,'2025-04-02 06:31:14'),(13,'M','MySQL','localhost','root','1234',3306,'2025-04-02 06:31:14'),(14,'app pass','MySQL','localhost','root','root',3306,'2025-04-02 06:31:59'),(15,'plan','MySQL','LOCALHOST','ROOT','ROOT',3306,'2025-04-02 06:46:18'),(16,'Tanvi Sharma','MySQL','LOCALHOST','root','1234',3306,'2025-04-02 06:48:43'),(17,'Tanvi Sharma','MySQL','LOCALHOST','tanvi@123.com','tanvi',3306,'2025-04-02 06:51:01'),(18,'app pass','MySQL','3306','1','1',3006,'2025-04-02 06:55:20'),(19,'plan','MySQL','localhost','3','2',3306,'2025-04-02 07:00:53'),(20,'M','MySQL','localhost','tanvi@123.com','tanvi',3306,'2025-04-02 07:04:59'),(21,'M','MySQL','localhost','tanvi@123.com','tanvi',3306,'2025-04-02 07:05:34'),(22,'M','MySQL','localhost','tanvi@123.com','tanvi',3306,'2025-04-02 07:06:56'),(23,'Bharti Pund','MySQL','localhost','tanvi@123.com','tanvi',3306,'2025-04-02 07:09:02'),(24,'app pass','MySQL','localhost','tanvi@123.com','tanvi',3306,'2025-04-02 08:37:38'),(25,'app pass','MySQL','localhost','tanvi@123.com','tanvi',3306,'2025-04-02 08:38:18'),(26,'app pass','MySQL','localhost','tanvi@123.com','tanvi',3306,'2025-04-02 08:39:57'),(27,'plan','MySQL','localhost','tanvi@123.com','tanvi',3306,'2025-04-02 08:45:27');
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
INSERT INTO `databasechangelog` VALUES ('table-example_table2-0','auto','changelog.xml','2025-04-18 15:41:29',1,'EXECUTED','9:e7a388f597182344e25560367b467762','createTable tableName=example_table2','',NULL,'4.31.0',NULL,NULL,'4971085711'),('table-table2-0','auto','changelog.xml','2025-04-18 16:01:35',2,'EXECUTED','9:73ba4c26ab690a0828fae7af0989ab08','createTable tableName=table2','',NULL,'4.31.0',NULL,NULL,'4972291881'),('table-example_table-0','auto','changelog.xml','2025-04-18 16:07:20',3,'EXECUTED','9:dcb2596b1ea53d3b8066c1cc318d8cab','createTable tableName=example_table','',NULL,'4.31.0',NULL,NULL,'4972636893'),('view-view_all_names-0','auto','changelog.xml','2025-04-18 16:13:23',4,'EXECUTED','9:4433419a6d9a4fd9fc499a82f1cb22f6','createView viewName=view_all_names','',NULL,'4.31.0',NULL,NULL,'4972999977'),('table-flyway_schema_history-0','auto','changelog.xml','2025-04-18 17:06:13',5,'EXECUTED','9:5fc63a116e7534b60646a1694c327e13','createTable tableName=flyway_schema_history','',NULL,'4.31.0',NULL,NULL,'4976170331'),('table-flywayusers11-0','auto','changelog.xml','2025-04-18 19:37:24',6,'EXECUTED','9:c30c4f3fda2c389f6814bca788f771ea','createTable tableName=flywayusers11','',NULL,'4.31.0',NULL,NULL,'4985240980'),('table-table3-1','auto','changelog.xml','2025-04-18 20:23:23',7,'EXECUTED','9:31075efccc80a889fc9cf60bb2bfd15d','createTable tableName=table3','',NULL,'4.31.0',NULL,NULL,'4987998912'),('table-flywayusers11-1','auto','changelog.xml','2025-04-18 20:37:49',8,'EXECUTED','9:c30c4f3fda2c389f6814bca788f771ea','createTable tableName=flywayusers11','',NULL,'4.31.0',NULL,NULL,'4988865667');
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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `url` text,
  `username` varchar(100) DEFAULT NULL,
  `password` text,
  `privateKey` text,
  `provider` text,
  `authType` varchar(50) DEFAULT NULL,
  `savePassword` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `git_connections`
--

LOCK TABLES `git_connections` WRITE;
/*!40000 ALTER TABLE `git_connections` DISABLE KEYS */;
INSERT INTO `git_connections` VALUES (2,'My Git Repo1','main','https://github.com/BhartiPund/liquibase-mysql-project-node','bharti.pund@devotrend.com','Tanvi@123',NULL,'github','token',NULL,'2025-04-08 09:07:49'),(5,'My Git Backup','main','https://github.com/BhartiPund/Git_backup.git','bharti.pund@devotrend.com','Tanvi@123',NULL,'github','basic',NULL,'2025-04-08 15:33:47'),(8,'Bharti Pund','main','https://github.com/BhartiPund/liquibase-mysql-project','bharti.pund@devotrend.com','Tanvi@123',NULL,'github','basic',NULL,'2025-04-18 12:22:49');
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
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `company_id` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `nature_of_business` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `plan_id` varchar(100) DEFAULT NULL,
  `expiry_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email_varification` enum('Verified','Pending','Not Verified') NOT NULL DEFAULT 'Verified',
  `mobile_varification` enum('Verified','Pending','Not Verified') NOT NULL DEFAULT 'Verified',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Plan_expiry_notification` enum('Y','N') NOT NULL DEFAULT 'Y',
  `userType` enum('superadmin','admin','user') NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
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
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `company_id` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `nature_of_business` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `userType` enum('superadmin','admin','user') NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` enum('active','inactive') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'tanvi@123.com','tanvi','Tanvi','Sharma','tanvi@123.com','9986525629','Devotrend IT','102','Female','nature','India','2025-02-25','admin','2025-02-25 15:07:22','active'),(2,'bharti@123.com','123','bharti','LAST','bharti@123.com','1234567898','Devotrend IT','102','Male','nature','Andorra','2025-04-04','admin','2025-04-04 13:18:22','active');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_all_user`
--

DROP TABLE IF EXISTS `view_all_user`;
/*!50001 DROP VIEW IF EXISTS `view_all_user`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_all_user` AS SELECT 
 1 AS `id`,
 1 AS `username`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_all_user`
--

/*!50001 DROP VIEW IF EXISTS `view_all_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_all_user` AS select `tbl_user`.`id` AS `id`,`tbl_user`.`username` AS `username` from `tbl_user` */;
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

-- Dump completed on 2025-04-22 16:59:47
