CREATE DATABASE  IF NOT EXISTS `studentsperformance` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `studentsperformance`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: studentsperformance
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `id_exam` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `room_number` int NOT NULL,
  `subject` varchar(45) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_exam`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,'2023-06-11',201,'Линейная алгебра','Бортаковский А. С.'),(2,'2023-06-18',202,'Математический анализ','Битюков Ю. И.'),(3,'2023-06-25',203,'Дискретный анализ','Зайцев В. Е.'),(4,'2023-06-30',204,'Системы программирования','Семенов А. С.');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `id_grade` int NOT NULL AUTO_INCREMENT,
  `grade` int NOT NULL,
  `id_student` int NOT NULL,
  `id_exam` int NOT NULL,
  PRIMARY KEY (`id_grade`),
  KEY `student_idx` (`id_student`),
  KEY `exam_idx` (`id_exam`),
  CONSTRAINT `exam` FOREIGN KEY (`id_exam`) REFERENCES `exams` (`id_exam`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student` FOREIGN KEY (`id_student`) REFERENCES `students` (`id_student`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,4,1,1),(2,5,1,2),(3,3,1,3),(4,4,1,4),(5,2,2,1),(6,3,2,2),(7,4,2,3),(8,3,2,4),(9,5,3,1),(10,3,3,2),(11,3,3,3),(12,4,3,4),(13,3,4,1),(14,4,4,2),(15,4,4,3),(16,3,4,4),(17,4,5,1),(18,5,5,2),(19,2,5,3),(20,4,5,4),(21,3,6,1),(22,5,6,2),(23,3,6,3),(24,3,6,4),(25,4,7,1),(26,4,7,2),(27,3,7,3),(28,4,7,4),(29,2,8,1),(30,3,8,2),(31,4,8,3),(32,3,8,4),(33,5,9,1),(34,2,9,2),(35,4,9,3),(36,3,9,4),(37,3,10,1),(38,3,10,2),(39,4,10,3),(40,4,10,4),(41,5,11,1),(42,2,11,2),(43,4,11,3),(44,3,11,4),(45,3,12,1),(46,4,12,2),(47,5,12,3),(48,2,12,4),(49,3,13,1),(50,4,13,2),(51,4,13,3),(52,3,13,4),(53,3,14,1),(54,3,14,2),(55,3,14,3),(56,5,14,4),(57,4,15,1),(58,4,15,2),(59,3,15,3),(60,3,15,4),(61,3,16,1),(62,2,16,2),(63,3,16,3),(64,5,16,4),(65,4,17,1),(66,3,17,2),(67,4,17,3),(68,4,17,4),(69,4,18,1),(70,3,18,2),(71,2,18,3),(72,5,18,4),(73,4,19,1),(74,3,19,2),(75,4,19,3),(76,3,19,4),(77,5,20,1),(78,3,20,2),(79,4,20,3),(80,4,20,4);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id_student` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`id_student`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Юрий','Евсеев','Антонович','М','2002-01-01'),(2,'Алексей','Соколов','Германович','М','2002-02-02'),(3,'Марк','Морозов','Владиславович','М','2002-03-03'),(4,'Егор','Коршунов','Артёмович','М','2002-04-04'),(5,'Андрей','Ларин','Дмитриевич','М','2002-05-05'),(6,'Даниил','Синицын','Тимурович','М','2002-06-06'),(7,'Лев','Воробьев','Алексеевич','М','2002-07-07'),(8,'Михаил','Бородин','Никитич','М','2002-08-08'),(9,'Александр','Агафонов','Дмитриевич','М','2002-09-09'),(10,'Алексей','Горшков','Глебович','М','2002-10-10'),(11,'Малика','Герасимова','Ивановна','Ж','2002-01-01'),(12,'Василиса','Крылова','Мирославовна','Ж','2002-02-02'),(13,'Виктория','Наумова','Данииловна','Ж','2002-03-03'),(14,'Евгения','Родина','Егоровна','Ж','2002-04-04'),(15,'Виктория','Кузнецова','Андреевна','Ж','2002-05-05'),(16,'Милана','Елизарова','Матвеевна','Ж','2002-06-06'),(17,'Анна','Парамонова','Романовна','Ж','2002-07-07'),(18,'Василиса','Фомина','Алексеевна','Ж','2002-08-08'),(19,'Вероника','Васильева','Марковна','Ж','2002-09-09'),(20,'Варвара','Пономарева','Григорьевна','Ж','2002-10-10');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-21 16:56:31
