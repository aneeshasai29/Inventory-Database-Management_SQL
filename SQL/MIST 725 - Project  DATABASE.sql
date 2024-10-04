CREATE DATABASE  IF NOT EXISTS `mist 725 project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mist 725 project`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mist 725 project
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assigned_employee_inventory`
--

DROP TABLE IF EXISTS `assigned_employee_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigned_employee_inventory` (
  `Employee_ID` int DEFAULT NULL,
  `Inventory_Tag_Num` int DEFAULT NULL,
  `Location` varchar(75) DEFAULT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  KEY `Inventory_Tag_Num` (`Inventory_Tag_Num`),
  CONSTRAINT `assigned_employee_inventory_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`),
  CONSTRAINT `assigned_employee_inventory_ibfk_2` FOREIGN KEY (`Inventory_Tag_Num`) REFERENCES `inventory_laptop` (`Inventory_Tag_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned_employee_inventory`
--

LOCK TABLES `assigned_employee_inventory` WRITE;
/*!40000 ALTER TABLE `assigned_employee_inventory` DISABLE KEYS */;
INSERT INTO `assigned_employee_inventory` VALUES (1,101,'Headquarters - Floor 1'),(2,102,'Headquarters - Floor 2'),(3,103,'Branch Office - Office 105'),(4,104,'Branch Office - Office 204'),(5,105,'Remote - Home Office'),(6,106,'Headquarters - Floor 3'),(7,107,'Headquarters - Floor 1'),(8,108,'Branch Office - Office 101'),(9,109,'Branch Office - Office 202'),(10,110,'Remote - Home Office'),(11,111,'Headquarters - Floor 2'),(12,112,'Branch Office - Office 103'),(13,113,'Branch Office - Office 201'),(14,114,'Remote - Home Office'),(15,115,'Headquarters - Floor 3'),(16,116,'Headquarters - Floor 1'),(17,117,'Branch Office - Office 104'),(18,118,'Branch Office - Office 203'),(19,119,'Remote - Home Office'),(20,120,'Headquarters - Floor 2'),(21,121,'Branch Office - Office 102'),(22,122,'Branch Office - Office 202'),(23,123,'Remote - Home Office'),(24,124,'Headquarters - Floor 3'),(25,125,'Headquarters - Floor 1'),(26,126,'Branch Office - Office 105'),(27,127,'Branch Office - Office 204'),(28,128,'Remote - Home Office'),(29,129,'Headquarters - Floor 2'),(30,130,'Branch Office - Office 101');
/*!40000 ALTER TABLE `assigned_employee_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` int NOT NULL,
  `Employee_Name` varchar(50) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL,
  `Department` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John Doe','123-456-7890','IT'),(2,'Jane Smith','234-567-8901','HR'),(3,'Alice Johnson','345-678-9012','Finance'),(4,'Bob Brown','456-789-0123','Marketing'),(5,'Claire Davis','567-890-1234','IT'),(6,'David Wilson','678-901-2345','HR'),(7,'Emma Thomas','789-012-3456','Operations'),(8,'Fiona White','890-123-4567','Marketing'),(9,'George Moore','901-234-5678','IT'),(10,'Hannah Miller','012-345-6789','Finance'),(11,'Ian Murphy','123-456-7890','HR'),(12,'Julia Clark','234-567-8901','Operations'),(13,'Kyle Lewis','345-678-9012','Marketing'),(14,'Laura Allen','456-789-0123','Finance'),(15,'Mason Young','567-890-1234','IT'),(16,'Natalie Hall','678-901-2345','HR'),(17,'Oscar Adams','789-012-3456','Operations'),(18,'Patricia Scott','890-123-4567','Marketing'),(19,'Quentin Nelson','901-234-5678','Finance'),(20,'Rachel King','012-345-6789','HR'),(21,'Samuel Wright','123-456-7890','Operations'),(22,'Tina Harris','234-567-8901','Marketing'),(23,'Ursula Mitchell','345-678-9012','Finance'),(24,'Victor Perez','456-789-0123','IT'),(25,'Wendy Lopez','567-890-1234','HR'),(26,'Xavier Lee','678-901-2345','Operations'),(27,'Yolanda Walker','789-012-3456','Marketing'),(28,'Zachary Taylor','890-123-4567','Finance'),(29,'Amanda Evans','901-234-5678','IT'),(30,'Brian Carter','012-345-6789','HR');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_laptop`
--

DROP TABLE IF EXISTS `inventory_laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_laptop` (
  `Inventory_Tag_Num` int NOT NULL,
  `Serial_Number` varchar(45) DEFAULT NULL,
  `Manufacturer` varchar(75) DEFAULT NULL,
  `Model` varchar(75) DEFAULT NULL,
  `OS_Version` varchar(50) DEFAULT NULL,
  `Hardware_Procurement_Date` datetime DEFAULT NULL,
  `Memory_Size` int DEFAULT NULL,
  `Hard_Drive` int DEFAULT NULL,
  `Display` int DEFAULT NULL,
  PRIMARY KEY (`Inventory_Tag_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_laptop`
--

LOCK TABLES `inventory_laptop` WRITE;
/*!40000 ALTER TABLE `inventory_laptop` DISABLE KEYS */;
INSERT INTO `inventory_laptop` VALUES (101,'SN001','Dell','XPS 15','Windows 10','2023-01-15 00:00:00',16,512,15),(102,'SN002','Apple','MacBook Pro 16\"','macOS Monterey','2023-01-16 00:00:00',16,256,16),(103,'SN003','HP','Envy 13','Windows 11','2023-01-17 00:00:00',8,256,13),(104,'SN004','Lenovo','ThinkPad X1 Carbon','Windows 10','2023-01-18 00:00:00',16,512,14),(105,'SN005','Asus','ZenBook 14','Windows 11','2023-01-19 00:00:00',16,512,14),(106,'SN006','Dell','Latitude 5510','Windows 10','2023-01-20 00:00:00',8,256,15),(107,'SN007','Apple','MacBook Air 13\"','macOS Big Sur','2023-01-21 00:00:00',8,256,13),(108,'SN008','HP','Spectre x360','Windows 11','2023-01-22 00:00:00',16,512,13),(109,'SN009','Lenovo','Yoga 9i','Windows 11','2023-01-23 00:00:00',16,512,14),(110,'SN010','Asus','ROG Zephyrus G14','Windows 10','2023-01-24 00:00:00',32,1000,14),(111,'SN011','Dell','Alienware m15','Windows 11','2023-01-25 00:00:00',32,1000,15),(112,'SN012','Apple','MacBook Pro 14\"','macOS Monterey','2023-01-26 00:00:00',16,512,14),(113,'SN013','HP','Pavilion 15','Windows 10','2023-01-27 00:00:00',8,512,15),(114,'SN014','Lenovo','IdeaPad 5','Windows 11','2023-01-28 00:00:00',8,256,15),(115,'SN015','Asus','VivoBook 15','Windows 10','2023-01-29 00:00:00',8,256,15),(116,'SN016','Dell','Precision 3560','Windows 10','2023-01-30 00:00:00',16,512,15),(117,'SN017','Apple','MacBook Air M1','macOS Big Sur','2023-01-31 00:00:00',8,256,13),(118,'SN018','HP','EliteBook 850','Windows 11','2023-02-01 00:00:00',16,512,15),(119,'SN019','Lenovo','Legion 5','Windows 10','2023-02-02 00:00:00',16,1000,15),(120,'SN020','Asus','TUF Dash F15','Windows 11','2023-02-03 00:00:00',16,512,15),(121,'SN021','Dell','G15 Gaming Laptop','Windows 11','2023-02-04 00:00:00',16,1000,15),(122,'SN022','Apple','MacBook Pro 13\"','macOS Catalina','2023-02-05 00:00:00',8,256,13),(123,'SN023','HP','OMEN 15','Windows 10','2023-02-06 00:00:00',32,512,15),(124,'SN024','Lenovo','Flex 5','Windows 11','2023-02-07 00:00:00',8,256,14),(125,'SN025','Asus','ExpertBook B9','Windows 10','2023-02-08 00:00:00',16,512,14),(126,'SN026','Dell','Vostro 15','Windows 11','2023-02-09 00:00:00',8,256,15),(127,'SN027','Apple','iMac 24\"','macOS Monterey','2023-02-10 00:00:00',8,256,24),(128,'SN028','HP','ZBook Firefly','Windows 11','2023-02-11 00:00:00',16,512,14),(129,'SN029','Lenovo','ThinkBook 14s','Windows 10','2023-02-12 00:00:00',8,256,14),(130,'SN030','Asus','Chromebook Flip','Chrome OS','2023-02-13 00:00:00',4,64,12),(131,'SN031','Dell','Latitude 7410','Windows 10','2023-03-01 00:00:00',16,512,14),(132,'SN032','Apple','MacBook Pro 13\"','macOS Big Sur','2023-03-02 00:00:00',16,512,13),(133,'SN033','Lenovo','ThinkPad T14','Windows 11','2023-03-03 00:00:00',16,256,14),(134,'SN034','HP','Elite Dragonfly','Windows 10','2023-03-04 00:00:00',16,512,13),(135,'SN035','Asus','ZenBook Duo','Windows 11','2023-03-05 00:00:00',16,512,14),(136,'SN036','Dell','XPS 13','Windows 10','2023-03-06 00:00:00',16,256,13),(137,'SN037','Apple','MacBook Air','macOS Monterey','2023-03-07 00:00:00',8,256,13),(138,'SN038','Lenovo','IdeaPad Flex 5','Windows 11','2023-03-08 00:00:00',16,512,14),(139,'SN039','HP','Spectre x360','Windows 11','2023-03-09 00:00:00',16,1000,13),(140,'SN040','Asus','ROG Strix G15','Windows 10','2023-03-10 00:00:00',32,1000,15),(141,'SN041','Dell','G5 15','Windows 11','2023-03-11 00:00:00',16,1000,15),(142,'SN042','Apple','MacBook Pro 16\"','macOS Catalina','2023-03-12 00:00:00',16,512,16),(143,'SN043','Lenovo','Legion 5 Pro','Windows 10','2023-03-13 00:00:00',32,512,16),(144,'SN044','HP','Pavilion 15','Windows 11','2023-03-14 00:00:00',8,256,15),(145,'SN045','Asus','TUF Dash F15','Windows 11','2023-03-15 00:00:00',16,512,15);
/*!40000 ALTER TABLE `inventory_laptop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `software` (
  `Software_Inventory_Number` int NOT NULL,
  `Software_Name` varchar(75) DEFAULT NULL,
  `Version` varchar(50) DEFAULT NULL,
  `Vendor` varchar(75) DEFAULT NULL,
  `Software_Procurement_Date` datetime DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Software_Inventory_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software`
--

LOCK TABLES `software` WRITE;
/*!40000 ALTER TABLE `software` DISABLE KEYS */;
INSERT INTO `software` VALUES (1,'Microsoft Office 365','2023','Microsoft','2023-01-10 00:00:00',99.99),(2,'Adobe Photoshop','2022','Adobe','2023-01-11 00:00:00',239.88),(3,'AutoCAD','2023','Autodesk','2023-01-12 00:00:00',1690.00),(4,'VMware Workstation','16','VMware','2023-01-13 00:00:00',249.99),(5,'Norton Security','2023','NortonLifeLock','2023-01-14 00:00:00',79.99),(6,'Final Cut Pro','10.6','Apple','2023-01-15 00:00:00',299.99),(7,'QuickBooks','2023','Intuit','2023-01-16 00:00:00',299.99),(8,'Salesforce CRM','2023','Salesforce','2023-01-17 00:00:00',300.00),(9,'Zoom','5.9','Zoom Video Communications','2023-01-18 00:00:00',199.50),(10,'Slack','2023','Slack Technologies','2023-01-19 00:00:00',75.00),(11,'Atlassian Jira','8.22','Atlassian','2023-01-20 00:00:00',7.00),(12,'Atlassian Confluence','7.18','Atlassian','2023-01-21 00:00:00',5.50),(13,'Tableau Desktop','2023.1','Tableau Software','2023-01-22 00:00:00',70.00),(14,'MySQL Server','8.0','Oracle','2023-01-23 00:00:00',2000.00),(15,'Microsoft SQL Server','2019','Microsoft','2023-01-24 00:00:00',899.00),(16,'Oracle Database','19c','Oracle','2023-01-25 00:00:00',4750.00),(17,'Adobe Illustrator','2022','Adobe','2023-01-26 00:00:00',239.88),(18,'Visual Studio','2022','Microsoft','2023-01-27 00:00:00',499.00),(19,'MATLAB','R2023a','MathWorks','2023-01-28 00:00:00',860.00),(20,'SAP ERP','6.0','SAP','2023-01-29 00:00:00',3000.00),(21,'CorelDRAW','2023','Corel Corporation','2023-01-30 00:00:00',669.00),(22,'SketchUp Pro','2023','Trimble Inc.','2023-01-31 00:00:00',299.00),(23,'Kaspersky Internet Security','2023','Kaspersky Lab','2023-02-01 00:00:00',59.99),(24,'McAfee Total Protection','2023','McAfee','2023-02-02 00:00:00',89.99),(25,'ANSYS','2023','ANSYS, Inc.','2023-02-03 00:00:00',3500.00),(26,'Avast Premium Security','2023','Avast Software','2023-02-04 00:00:00',69.99),(27,'Unity Pro','2023','Unity Technologies','2023-02-05 00:00:00',150.00),(28,'SolidWorks','2023','Dassault Systèmes','2023-02-06 00:00:00',3995.00),(29,'Cinema 4D','S26','Maxon','2023-02-07 00:00:00',720.00),(30,'TurboCAD','2023','IMSI/Design','2023-02-08 00:00:00',1499.99);
/*!40000 ALTER TABLE `software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_tracker`
--

DROP TABLE IF EXISTS `software_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `software_tracker` (
  `Inventory_Tag_Num` int DEFAULT NULL,
  `Software_Inventory_Number` int DEFAULT NULL,
  KEY `Inventory_Tag_Num` (`Inventory_Tag_Num`),
  KEY `Software_Inventory_Number` (`Software_Inventory_Number`),
  CONSTRAINT `software_tracker_ibfk_1` FOREIGN KEY (`Inventory_Tag_Num`) REFERENCES `inventory_laptop` (`Inventory_Tag_Num`),
  CONSTRAINT `software_tracker_ibfk_2` FOREIGN KEY (`Software_Inventory_Number`) REFERENCES `software` (`Software_Inventory_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_tracker`
--

LOCK TABLES `software_tracker` WRITE;
/*!40000 ALTER TABLE `software_tracker` DISABLE KEYS */;
INSERT INTO `software_tracker` VALUES (101,1),(102,2),(103,3),(104,4),(105,5),(106,6),(107,7),(108,8),(109,9),(110,10),(111,11),(112,12),(113,13),(114,14),(115,15),(116,16),(117,17),(118,18),(119,19),(120,20),(121,21),(122,22),(123,23),(124,24),(125,25),(126,26),(127,27),(128,28),(129,29),(130,30),(101,5),(102,17),(103,11),(104,25),(105,2),(106,8),(107,22),(108,30),(109,14),(110,4),(111,12),(112,20),(113,7),(114,1),(115,10),(116,27),(117,18),(118,24),(119,16),(120,9),(121,13),(122,3),(123,6),(124,19),(125,28),(126,15),(127,29),(128,26),(129,23),(130,21),(101,13),(102,25),(103,18),(104,5),(105,12),(106,22),(107,8),(108,2),(109,28),(110,14),(111,19),(112,9),(113,21),(114,30),(115,4),(116,16),(117,23),(118,6),(119,1),(120,11),(121,15),(122,20),(123,7),(124,10),(125,3),(126,29),(127,17),(128,26),(129,27),(130,24);
/*!40000 ALTER TABLE `software_tracker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-11 18:53:39
