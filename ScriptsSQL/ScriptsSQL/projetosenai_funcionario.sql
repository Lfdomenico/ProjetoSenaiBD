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
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) NOT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `Genero` varchar(30) DEFAULT NULL,
  `Setor_Id` int NOT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CPF` (`CPF`),
  KEY `fk_setor_id` (`Setor_Id`),
  CONSTRAINT `fk_setor_id` FOREIGN KEY (`Setor_Id`) REFERENCES `setor` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (10,'Amanda','54678904567','M',2,4750.00),(11,'Rodrigo','34536756789','H',4,3500.00),(12,'Monica','76589403945','M',6,8500.00),(13,'Fernando','40611757850','H',3,10000.00),(14,'Ronaldo','64534857681','H',1,3720.00),(15,'Larissa','65894034512','M',6,9500.00),(16,'Marcio','33456756781','H',3,14500.00),(17,'Marco Antonio','45465768123','H',5,5750.00),(18,'Wagner','25464367860','H',2,2500.00),(19,'Raimundo','46782311056','H',4,17500.00),(50,'Carla Mendes','34567890122','M',3,3800.00),(51,'Daniel Rocha','45678901233','M',4,5000.00),(52,'Eduardo Lima','56789012344','H',5,4600.00),(53,'Fernanda Santos','67890123455','M',6,4000.00),(54,'Gabriela Oliveira','78901234566','M',1,3500.00),(55,'Henrique Barbosa','89012345677','O',2,4200.00),(56,'Isabela Castro','90123456788','M',3,3800.00),(57,'João Almeida','01234567899','H',4,5000.00),(58,'Alberto','67543323456','H',6,5750.00);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-16 15:56:46
