-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: railwaymanagement
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `travels`
--

DROP TABLE IF EXISTS `travels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travels` (
  `travel_id` int NOT NULL,
  `id` int DEFAULT NULL,
  `dest_id` int DEFAULT NULL,
  `departure` time DEFAULT NULL,
  `arrival` time DEFAULT NULL,
  `distance` char(255) DEFAULT NULL,
  `fare` int DEFAULT NULL,
  PRIMARY KEY (`travel_id`),
  KEY `id` (`id`),
  KEY `dest_id` (`dest_id`),
  CONSTRAINT `travels_ibfk_1` FOREIGN KEY (`id`) REFERENCES `source_station` (`id`),
  CONSTRAINT `travels_ibfk_2` FOREIGN KEY (`dest_id`) REFERENCES `destination_stations` (`dest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travels`
--

LOCK TABLES `travels` WRITE;
/*!40000 ALTER TABLE `travels` DISABLE KEYS */;
INSERT INTO `travels` VALUES (1,1,2,'09:15:00','12:45:00','400 miles',83),(2,2,3,'08:00:00','11:30:00','255 miles',50),(3,3,5,'11:45:00','16:30:00','520 miles',76),(4,4,1,'10:30:00','15:00:00','580 miles',90),(5,5,6,'13:15:00','18:00:00','620 miles',95),(6,6,3,'11:45:00','16:30:00','550 miles',86);
/*!40000 ALTER TABLE `travels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-16 22:55:09
