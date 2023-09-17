show databases;

drop database if exists library;
create database library;
use library;

-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: library
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
    `bid`         int          NOT NULL AUTO_INCREMENT,
    `book_num`    char(8)      NOT NULL,
    `book_name`   varchar(100) NOT NULL,
    `book_author` varchar(10)  NOT NULL,
    `book_price`  float        NOT NULL,
    `book_desc`   varchar(100) DEFAULT NULL,
    `book_stock`  int          DEFAULT NULL,
    PRIMARY KEY (`bid`),
    UNIQUE KEY `book_num` (`book_num`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 17
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books`
    DISABLE KEYS */;
INSERT INTO `books`
VALUES (1, '20110307', 'Java编程思想', 'Bruce', 108, '神书', 2),
       (2, '20120101', '2012', 'ABC', 68.8, NULL, 10);
/*!40000 ALTER TABLE `books`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
    `cid`        int         NOT NULL AUTO_INCREMENT,
    `class_num`  char(4)     NOT NULL,
    `class_name` varchar(20) NOT NULL,
    `class_desc` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`cid`),
    UNIQUE KEY `class_num` (`class_num`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes`
    DISABLE KEYS */;
INSERT INTO `classes`
VALUES (1, '1001', 'Java', NULL),
       (2, '1002', 'C++', NULL),
       (3, '1003', 'Python', NULL),
       (4, '1004', 'ABC', NULL);
/*!40000 ALTER TABLE `classes`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records` (
    `rid`          int     NOT NULL AUTO_INCREMENT,
    `stu_num`      char(8) NOT NULL,
    `book_num`     char(8) NOT NULL,
    `record_stock` int     NOT NULL,
    `record_date`  date DEFAULT NULL,
    PRIMARY KEY (`rid`),
    KEY `FK_RecordStudent` (`stu_num`),
    KEY `FK_RecordBook` (`book_num`),
    CONSTRAINT `records_ibfk_1` FOREIGN KEY (`stu_num`) REFERENCES `students` (`stu_num`),
    CONSTRAINT `records_ibfk_2` FOREIGN KEY (`book_num`) REFERENCES `books` (`book_num`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 22
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records`
    DISABLE KEYS */;
INSERT INTO `records`
VALUES (1, '20220101', '20110307', 2, '2023-09-01'),
       (7, '20220102', '20120101', 2, '2023-09-02'),
       (8, '20220101', '20110307', 3, '2023-09-02'),
       (9, '20220101', '20110307', 3, '2023-09-02'),
       (10, '20220102', '20110307', 2, '2023-08-30'),
       (11, '20220102', '20110307', 2, '2023-09-02'),
       (12, '20220102', '20110307', 2, '2023-09-02'),
       (13, '20220102', '20110307', 2, '2023-09-02'),
       (14, '20220102', '20110307', 2, '2023-09-02'),
       (16, '20220102', '20110307', 2, '2023-09-02'),
       (17, '20220102', '20110307', 2, '2023-09-02'),
       (18, '20220102', '20110307', 2, '2023-09-02'),
       (19, '20220102', '20110307', 2, '2023-09-02'),
       (20, '20220102', '20110307', 2, '2023-09-02'),
       (21, '20220102', '20110307', 2, '2023-09-02');
/*!40000 ALTER TABLE `records`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
    `sid`        int         NOT NULL AUTO_INCREMENT,
    `stu_num`    char(8)     NOT NULL,
    `stu_name`   varchar(10) NOT NULL,
    `stu_gender` char(1)     NOT NULL,
    `stu_age`    int          DEFAULT NULL,
    `stu_class`  int          DEFAULT NULL,
    `stu_desc`   varchar(100) DEFAULT NULL,
    PRIMARY KEY (`sid`),
    UNIQUE KEY `stu_num` (`stu_num`),
    KEY `FK_StudentClass` (`stu_class`),
    CONSTRAINT `FK_StudentClass` FOREIGN KEY (`stu_class`) REFERENCES `classes` (`cid`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 12
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students`
    DISABLE KEYS */;
INSERT INTO `students`
VALUES (1, '20220101', '赵A', 'M', 18, 1, NULL),
       (2, '20220102', '钱B', 'M', 19, 1, NULL),
       (3, '20220103', '孙C', 'F', 19, 2, NULL),
       (4, '20220104', '李D', 'M', 18, 2, NULL),
       (5, '20220105', '周E', 'F', 20, 3, NULL),
       (6, '20220106', '吴F', 'M', 20, 3, NULL),
       (7, '20230101', '郑G', 'M', 19, 4, NULL),
       (8, '20230102', '王H', 'F', 19, 4, 'ABC');
/*!40000 ALTER TABLE `students`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2023-09-06 23:06:42
