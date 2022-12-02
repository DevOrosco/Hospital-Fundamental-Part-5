CREATE DATABASE  IF NOT EXISTS `Hospital_Fundamental` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Hospital_Fundamental`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: Hospital_Fundamental
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `Consultas`
--

DROP TABLE IF EXISTS `COnsultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Consultas` (
  `ID_Consulta` int NOT NULL AUTO_INCREMENT,
  `Data_Consulta` date NOT NULL,
  `Hora_Consulta` int NOT NULL,
  `Valor_Consulta` float NOT NULL,
  `QuantidadeRemedios_Receitados` int DEFAULT NULL,
  `Paciente` int DEFAULT NULL,
  `Medico` int DEFAULT NULL,
  PRIMARY KEY (`ID_Consulta`),
  UNIQUE KEY `ID_Consulta` (`ID_Consulta`),
  KEY `Paciente` (`Paciente`),
  KEY `Medico` (`Medico`),
  CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`Medico`) REFERENCES `Medicos` (`ID_Medico`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Consultas`
--

LOCK TABLES `Consultas` WRITE;
/*!40000 ALTER TABLE `Consultas` DISABLE KEYS */;
INSERT INTO `Consultas` VALUES (1,'2004-01-18',10,100,2,10,1),(2,'2004-01-18',10,100,1,13,2),(3,'2005-02-28',11,150.5,3,14,3),(4,'2006-09-14',11,130.4,2,16,4),(5,'2005-11-11',16,120.4,5,18,7),(6,'1990-11-01',16,100.4,2,22,9),(7,'1990-11-01',16,95.4,7,23,10),(8,'1990-11-01',16,80.4,6,25,12),(9,'1990-11-01',16,44.4,2,27,14),(10,'1990-11-01',15,20.4,1,29,15),(11,'1990-11-01',17,200.4,NULL,35,10),(12,'1989-11-01',17,100.4,9,36,12),(13,'1989-11-01',17,100.4,8,37,14),(14,'1989-11-01',17,100.4,5,38,14),(15,'1989-11-01',17,100.4,4,40,15),(16,'1989-11-01',17,100.4,NULL,NULL,NULL),(17,'1989-11-01',17,100.4,NULL,NULL,NULL),(18,'1989-11-01',17,100.4,NULL,NULL,NULL),(19,'1989-11-01',17,100.4,NULL,NULL,NULL),(20,'1989-11-01',17,100.4,NULL,NULL,NULL),(21,'1989-11-01',17,100.4,NULL,NULL,NULL),(22,'1989-11-01',17,100.4,NULL,NULL,NULL),(23,'1989-11-01',17,100.4,NULL,NULL,NULL),(24,'1989-11-01',17,100.4,NULL,NULL,NULL),(25,'2015-11-01',17,100.4,NULL,NULL,NULL),(26,'2015-11-01',17,100.4,NULL,NULL,NULL),(27,'2015-11-01',17,100.4,NULL,NULL,NULL),(28,'2016-11-01',17,92.4,NULL,NULL,NULL),(29,'2016-11-01',17,92.4,NULL,NULL,NULL),(30,'2016-11-01',17,92.4,NULL,NULL,NULL),(31,'2017-11-01',13,100.4,NULL,NULL,NULL),(32,'2017-11-01',13,100.4,NULL,NULL,NULL),(33,'2017-11-01',13,100.4,NULL,NULL,NULL),(34,'2018-11-01',13,100.4,NULL,NULL,NULL),(35,'2018-11-01',13,100.4,NULL,NULL,NULL),(36,'2018-11-01',13,100.4,NULL,NULL,NULL),(37,'2018-11-01',13,100.4,NULL,NULL,NULL),(38,'2018-11-01',13,100.4,NULL,NULL,NULL),(39,'2018-11-01',13,100.4,NULL,NULL,NULL),(40,'2019-11-01',13,60.4,NULL,NULL,NULL),(41,'2019-11-01',13,60.4,NULL,NULL,NULL),(42,'2019-11-01',13,60.4,NULL,NULL,NULL),(43,'2020-11-01',13,300.4,NULL,NULL,NULL),(44,'2020-11-01',13,300.4,1,NULL,NULL),(45,'2020-11-01',13,300.4,5,NULL,NULL),(46,'2020-11-01',13,300.4,3,NULL,NULL),(47,'2020-11-01',13,300.4,2,NULL,NULL),(48,'2020-11-01',13,300.4,9,NULL,NULL),(49,'2018-01-18',10,100,2,NULL,NULL),(50,'2018-02-18',10,100,2,NULL,NULL),(51,'2018-02-18',10,100,2,NULL,NULL),(52,'2018-02-18',10,100,2,NULL,NULL),(53,'2018-02-18',10,100,2,NULL,NULL),(54,'2018-02-18',10,100,2,NULL,NULL),(55,'2018-02-18',10,100,2,NULL,NULL),(56,'2018-02-18',10,100,2,NULL,NULL),(57,'2018-02-18',10,120,2,NULL,NULL),(58,'2018-02-18',10,120,2,NULL,NULL),(59,'2018-02-18',10,120,2,NULL,NULL),(60,'2019-11-14',10,120,2,NULL,NULL),(61,'2019-11-14',10,120,2,NULL,NULL),(62,'2019-11-14',10,120,2,NULL,NULL),(63,'2019-11-14',10,120,2,NULL,NULL),(64,'2019-11-14',10,120,2,NULL,NULL),(65,'2019-11-14',10,120,2,NULL,NULL),(66,'2019-11-14',10,120,2,NULL,NULL),(67,'2019-11-14',10,120,2,NULL,NULL),(68,'2019-11-14',10,120,2,NULL,NULL),(69,'2019-11-14',10,120,3,NULL,NULL),(70,'2019-11-14',10,120,3,NULL,NULL),(71,'2019-11-14',10,120,3,NULL,NULL),(72,'2019-11-14',10,120,3,NULL,NULL),(73,'2019-11-14',10,120,3,NULL,NULL),(74,'2019-11-14',10,120,3,NULL,NULL),(75,'2019-11-14',10,120,3,NULL,NULL),(76,'2019-11-14',10,120,5,NULL,NULL),(77,'2019-11-14',10,120,5,NULL,NULL),(78,'2019-11-14',10,120,5,NULL,NULL),(79,'2019-11-14',10,120,5,NULL,NULL),(80,'2019-11-14',10,120,5,NULL,NULL),(81,'2019-11-14',10,120,5,NULL,NULL),(82,'2019-11-14',10,120,5,NULL,NULL),(83,'2020-12-05',5,120,5,NULL,NULL),(84,'2020-12-05',5,120,5,NULL,NULL),(85,'2020-12-05',5,120,5,NULL,NULL),(86,'2020-12-05',5,120,5,NULL,NULL),(87,'2020-12-05',5,120,5,NULL,NULL),(88,'2020-12-05',5,120,5,NULL,NULL),(89,'2020-12-05',5,120,5,NULL,NULL),(90,'2020-12-05',5,120,5,NULL,NULL);
/*!40000 ALTER TABLE `Consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Convenios`
--

DROP TABLE IF EXISTS `Convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Convenios` (
  `ID_Convenio` int NOT NULL AUTO_INCREMENT,
  `Nome_Convenio` varchar(200) NOT NULL,
  `CNPJ_Convenio` int NOT NULL,
  `Tempo_Carencia` int NOT NULL,
  `Paciente` int NOT NULL,
  `Consulta` int DEFAULT NULL,
  PRIMARY KEY (`ID_Convenio`,`CNPJ_Convenio`),
  UNIQUE KEY `ID_Convenio` (`ID_Convenio`),
  UNIQUE KEY `CNPJ_Convenio` (`CNPJ_Convenio`),
  KEY `Paciente` (`Paciente`),
  KEY `Consulta` (`Consulta`),
  CONSTRAINT `convenios_ibfk_1` FOREIGN KEY (`Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `convenios_ibfk_2` FOREIGN KEY (`Consulta`) REFERENCES `Consultas` (`ID_Consulta`),
  CONSTRAINT `convenios_ibfk_3` FOREIGN KEY (`Consulta`) REFERENCES `Consultas` (`ID_Consulta`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Convenios`
--

LOCK TABLES `Convenios` WRITE;
/*!40000 ALTER TABLE `Convenios` DISABLE KEYS */;
INSERT INTO `Convenios` VALUES (2,'Bradesco Saúde',15474963,10,10,NULL),(4,'Bradesco Saúde',15484963,10,10,NULL),(5,'NotreDame Intermédica Sistema de Saúde',15484543,10,13,NULL),(7,'SulAmérica',15444543,5,13,85),(8,'HapVida Assistência Médica',15442543,2,16,90),(10,'Amil Assistência Médica Internacional',25442543,2,18,1),(11,'porto seguro',23442543,2,22,2),(12,'BioSaúde',23442523,2,23,6),(13,'Biovida Saúde',23542523,2,27,19),(14,'Garantia de Saúde',23522523,2,35,43);
/*!40000 ALTER TABLE `Convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enfermeiro`
--

DROP TABLE IF EXISTS `Enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Enfermeiro` (
  `CPF_Enfermeiro` int NOT NULL,
  `CRE_Enfermeiro` int NOT NULL,
  `ID_Enfermeiro` int NOT NULL AUTO_INCREMENT,
  `Nome_Enfermeiro` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Enfermeiro`),
  UNIQUE KEY `CPF_Enfermeiro` (`CPF_Enfermeiro`),
  UNIQUE KEY `CRE_Enfermeiro` (`CRE_Enfermeiro`),
  UNIQUE KEY `ID_Enfermeiro` (`ID_Enfermeiro`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enfermeiro`
--

LOCK TABLES `Enfermeiro` WRITE;
/*!40000 ALTER TABLE `Enfermeiro` DISABLE KEYS */;
INSERT INTO `Enfermeiro` VALUES (411474148,2547,1,'zidane'),(411474121,2535,2,'ronaldo'),(411474101,2515,3,'vinicius'),(411474100,2115,4,'alicia'),(411414100,2118,5,'eliza'),(411414170,2114,6,'jeff'),(311414170,3114,7,'suzi'),(311424170,3124,8,'allanys'),(317424170,3014,10,'tony'),(317524170,3054,11,'carmela');
/*!40000 ALTER TABLE `Enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Especialidades`
--

DROP TABLE IF EXISTS `Especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Especialidades` (
  `Especialidade` varchar(200) DEFAULT NULL,
  `Medico` int DEFAULT NULL,
  `ID_Especialidades` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_Especialidades`),
  UNIQUE KEY `ID_Especialidades` (`ID_Especialidades`),
  KEY `Medico` (`Medico`),
  CONSTRAINT `especialidades_ibfk_1` FOREIGN KEY (`Medico`) REFERENCES `Medicos` (`ID_Medico`),
  CONSTRAINT `especialidades_ibfk_2` FOREIGN KEY (`Medico`) REFERENCES `Medicos` (`ID_Medico`),
  CONSTRAINT `especialidades_ibfk_3` FOREIGN KEY (`Medico`) REFERENCES `Medicos` (`ID_Medico`),
  CONSTRAINT `especialidades_ibfk_4` FOREIGN KEY (`Medico`) REFERENCES `Medicos` (`ID_Medico`),
  CONSTRAINT `especialidades_ibfk_5` FOREIGN KEY (`Medico`) REFERENCES `Medicos` (`ID_Medico`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Especialidades`
--

LOCK TABLES `Especialidades` WRITE;
/*!40000 ALTER TABLE `Especialidades` DISABLE KEYS */;
INSERT INTO `Especialidades` VALUES ('gastroenterologia',3,5),('clinico geral',2,6),('dermatologista',1,7),('Endocrinologista',4,8),('Geriatra',4,9),('Geriatra',4,10),('Infectologista',7,11),('Nefrologista',9,12),('Nefrologista',9,13);
/*!40000 ALTER TABLE `Especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Internaçao`
--

DROP TABLE IF EXISTS `Internaçao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Internaçao` (
  `ID_Internacao` int NOT NULL AUTO_INCREMENT,
  `Data_Efetivada` date NOT NULL,
  `Data_Entrada` date NOT NULL,
  `Data_Alta` date NOT NULL,
  `Procedimento` varchar(100) NOT NULL,
  `Enfermeiro` int NOT NULL,
  `Medico` int NOT NULL,
  `Paciente` int NOT NULL,
  `Quarto` int DEFAULT NULL,
  PRIMARY KEY (`ID_Internacao`),
  UNIQUE KEY `ID_Internacao` (`ID_Internacao`),
  KEY `Enfermeiro` (`Enfermeiro`),
  KEY `Medico` (`Medico`),
  KEY `Paciente` (`Paciente`),
  KEY `Quarto` (`Quarto`),
  CONSTRAINT `internaçao_ibfk_1` FOREIGN KEY (`Enfermeiro`) REFERENCES `Enfermeiro` (`ID_Enfermeiro`),
  CONSTRAINT `internaçao_ibfk_2` FOREIGN KEY (`Medico`) REFERENCES `Medicos` (`ID_Medico`),
  CONSTRAINT `internaçao_ibfk_3` FOREIGN KEY (`Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_4` FOREIGN KEY (`Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_5` FOREIGN KEY (`Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_6` FOREIGN KEY (`Quarto`) REFERENCES `Quarto` (`ID_Quarto`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Internaçao`
--

LOCK TABLES `Internaçao` WRITE;
/*!40000 ALTER TABLE `Internaçao` DISABLE KEYS */;
INSERT INTO `Internaçao` VALUES (1,'2004-01-15','2003-12-15','2005-12-20','involuntaria',2,4,10,2),(2,'2004-01-15','2003-12-15','2005-12-20','involuntaria',2,4,10,2),(3,'2004-01-15','2003-12-15','2005-12-20','involuntaria',1,3,13,2),(4,'2015-01-15','2003-12-15','2005-12-20','involuntaria',1,3,13,4),(5,'2015-01-15','2003-12-15','2005-12-20','involuntaria',1,3,13,4),(6,'2016-01-15','2003-12-15','2005-12-20','involuntaria',3,3,16,5),(8,'2020-01-15','2003-12-15','2005-12-20','involuntaria',5,7,16,5),(9,'2019-01-15','2003-12-15','2005-12-20','involuntaria',5,7,22,5),(10,'2020-03-15','2019-03-14','2021-05-20','voluntaria',5,7,35,7),(11,'2005-02-10','2008-02-07','2022-08-20','involuntaria',1,3,27,6),(12,'2020-05-10','2022-02-01','2055-05-10','voluntaria',1,4,40,8),(17,'2018-02-10','2019-08-07','2020-04-01','involuntario',5,1,23,9),(18,'2017-03-05','2018-05-02','2020-08-20','voluntario',1,2,25,10);
/*!40000 ALTER TABLE `Internaçao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medicos`
--

DROP TABLE IF EXISTS `Medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medicos` (
  `ID_Medico` int NOT NULL AUTO_INCREMENT,
  `Nome_Medico` varchar(200) NOT NULL,
  `CRM_Medico` int NOT NULL,
  `Receita_Medico` int NOT NULL,
  `Em_Atividade` varchar(100) DEFAULT NULL,
  `Especialidades` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_Medico`),
  UNIQUE KEY `ID_Medico` (`ID_Medico`),
  UNIQUE KEY `CRM_Medico` (`CRM_Medico`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicos`
--

LOCK TABLES `Medicos` WRITE;
/*!40000 ALTER TABLE `Medicos` DISABLE KEYS */;
INSERT INTO `Medicos` VALUES (1,'murilo',2558,1,'sim','gastroenterologia'),(2,'wesley',4417,1,'sim','gastroenterologia'),(3,'bianca',4217,1,'sim','clinico geral'),(4,'julia',4277,3,'sim','clinico geral'),(7,'filipa',4271,3,'sim','Geriatra'),(9,'janaina',4211,3,'sim','Infectologista'),(10,'erminia',4411,4,'sim','Nefrologista'),(12,'ana',4431,7,'sim','Nefrologista'),(14,'gustavo',4481,8,'nao','Pediatra'),(15,'michael',4480,11,'nao','Pediatra');
/*!40000 ALTER TABLE `Medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pacientes`
--

DROP TABLE IF EXISTS `Pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pacientes` (
  `ID_Paciente` int NOT NULL AUTO_INCREMENT,
  `Nome_Paciente` varchar(200) NOT NULL,
  `Endereço_Paciente` varchar(200) NOT NULL,
  `DataNascimento_Paciente` date NOT NULL,
  `CPF_Paciente` int NOT NULL,
  `Email_Paciente` varchar(200) NOT NULL,
  `Quarto_Paciente` int NOT NULL,
  PRIMARY KEY (`ID_Paciente`),
  UNIQUE KEY `ID_Paciente` (`ID_Paciente`),
  UNIQUE KEY `CPF_Paciente` (`CPF_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pacientes`
--

LOCK TABLES `Pacientes` WRITE;
/*!40000 ALTER TABLE `Pacientes` DISABLE KEYS */;
INSERT INTO `Pacientes` VALUES (10,'ryan','rua golpeadpr','1995-04-10',324377287,'rya@gmail.com',2),(13,'gustavo','rua comendador 100','1985-11-10',324387287,'gust@gmail.com',2),(14,'derek','rua lago 225','1975-11-10',324317287,'deee@gmail.com',2),(16,'lebron','rua backer 100','1982-10-09',324317207,'lele@gmail.com',2),(18,'vanessa','rua niteroi 55','2002-09-09',314317207,'vane@gmail.com',2),(22,'junior','rua paris 22','2006-02-07',314317217,'juner@gmail.com',1),(23,'cleusa','rua alemanha 17','2002-09-29',314317200,'cle@gmail.com',1),(25,'rosani','rua francisco jose 5','2006-05-29',314317210,'cle@gmail.com',1),(27,'curtis','rua jamaica beatles 006','2009-09-30',314217210,'cle@gmail.com',1),(29,'meadow','rua becos 55','2010-05-30',314117210,'firts@gmail.com',1),(35,'diego','rua kratos 99','2011-03-22',319117210,'firts@gmail.com',1),(36,'lamar','rua blocos de ael 11','2002-09-15',319115210,'plhss@gmail.com',1),(37,'lamar','rua blocos de papel 01','2005-10-12',319115211,'lamas@gmail.com',1),(38,'cris','rua blocos de telha','2005-10-12',379115211,'lamas@gmail.com',1),(40,'kevin','rua vida 115','2005-04-11',479115211,'kevyt@gmail.com',1);
/*!40000 ALTER TABLE `Pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quarto`
--

DROP TABLE IF EXISTS `Quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Quarto` (
  `ID_Quarto` int NOT NULL AUTO_INCREMENT,
  `Numero_Quarto` int NOT NULL,
  `Tipo_Quarto` varchar(100) NOT NULL,
  `Paciente` int NOT NULL,
  `Valor` int DEFAULT NULL,
  PRIMARY KEY (`ID_Quarto`,`Numero_Quarto`),
  UNIQUE KEY `ID_Quarto` (`ID_Quarto`),
  KEY `Paciente` (`Paciente`),
  CONSTRAINT `quarto_ibfk_1` FOREIGN KEY (`Paciente`) REFERENCES `Pacientes` (`ID_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quarto`
--

LOCK TABLES `Quarto` WRITE;
/*!40000 ALTER TABLE `Quarto` DISABLE KEYS */;
INSERT INTO `Quarto` VALUES (1,20,'classe a',10,1000),(2,32,'classe a',10,1000),(3,22,'classe b',13,800),(4,25,'classe c',16,500),(5,30,'classe d',18,300),(6,55,'apartnto  ',27,9000),(7,60,'apartnto ',35,8000),(8,100,'apartnto ',40,10000),(9,250,'enfermaria',23,60),(10,340,'enfermaria',25,40);
/*!40000 ALTER TABLE `Quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quartos_Duplos`
--

DROP TABLE IF EXISTS `Quartos_Duplos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Quartos_Duplos` (
  `ID_QuartosDuplos` int NOT NULL AUTO_INCREMENT,
  `Numero_QuartosDuplos` int NOT NULL,
  `Paciente` int NOT NULL,
  PRIMARY KEY (`ID_QuartosDuplos`),
  UNIQUE KEY `ID_QuartosDuplos` (`ID_QuartosDuplos`),
  UNIQUE KEY `Numero_QuartosDuplos` (`Numero_QuartosDuplos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quartos_Duplos`
--

LOCK TABLES `Quartos_Duplos` WRITE;
/*!40000 ALTER TABLE `Quartos_Duplos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Quartos_Duplos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Receitas`
--

DROP TABLE IF EXISTS `Receitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Receitas` (
  `ID_Receita` int NOT NULL AUTO_INCREMENT,
  `Nome_Remedio` varchar(200) NOT NULL,
  `Quantidade_Remedio` int NOT NULL,
  `Hora_Remedio` int NOT NULL,
  `Tipo_Remedio` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_Receita`),
  UNIQUE KEY `ID_Receita` (`ID_Receita`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Receitas`
--

LOCK TABLES `Receitas` WRITE;
/*!40000 ALTER TABLE `Receitas` DISABLE KEYS */;
INSERT INTO `Receitas` VALUES (1,'dipirona',10,10,'tarja branca'),(2,'dipirona',10,10,'tarja branca'),(3,'Neosaldina',5,2,'tarja branca'),(4,'Sonrisa',5,2,'tarja branca'),(5,'Doril',5,2,'tarja branca'),(6,'Tylenol ',7,3,'tarja branca'),(7,'SALONPAS EMPLASTRO ',8,2,'tarja branca'),(8,'sorimax',9,1,'tarja branca'),(9,'expec',9,1,'tarja branca'),(10,'Doralgina ',9,1,'tarja branca');
/*!40000 ALTER TABLE `Receitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Hospital_Fundamental'
--

--
-- Dumping routines for database 'Hospital_Fundamental'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26  0:18:22
