-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projetosenai
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Valor` decimal(10,2) NOT NULL,
  `Data` date NOT NULL,
  `Funcionario_Id` int DEFAULT NULL,
  `Status` varchar(50) NOT NULL,
  `Transportadora_Id` int NOT NULL,
  `transacao_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `transacao_id` (`transacao_id`),
  KEY `Funcionario_Id` (`Funcionario_Id`),
  KEY `Transportadora_Id` (`Transportadora_Id`),
  CONSTRAINT `fk_venda_funcionario` FOREIGN KEY (`Funcionario_Id`) REFERENCES `funcionario` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_venda_transacao` FOREIGN KEY (`transacao_id`) REFERENCES `transacoes` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`Transportadora_Id`) REFERENCES `transportadora` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (4,45.65,'2025-06-16',NULL,'FECHADO',3,5),(5,106.00,'2025-06-16',13,'FECHADO',4,7),(6,684.75,'2025-06-16',13,'FECHADO',3,9),(7,435.75,'2025-06-16',12,'FECHADO',3,10),(8,373.50,'2025-06-16',12,'FECHADO',3,11),(9,373.50,'2025-06-16',12,'FECHADO',3,12),(10,1016.39,'2025-06-16',11,'FECHADO',3,13),(11,53.00,'2025-06-16',54,'FECHADO',4,14);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-16 15:56:45
