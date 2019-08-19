-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clinica
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consulta` (
  `no_paciente` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(10) NOT NULL,
  `residencia` varchar(50) NOT NULL,
  `edad` int(4) NOT NULL,
  `telefono` int(8) NOT NULL,
  `fecha_consulta` varchar(10) NOT NULL,
  `hora_consulta` varchar(10) NOT NULL,
  `sintomas` varchar(255) NOT NULL,
  `receta` varchar(255) NOT NULL,
  PRIMARY KEY (`no_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (12,'Juan Lopez','01-01-2000','Los Pinos',19,12345432,'15-09-2019','4:30 pm','Dolor estomacal','Lanzoprasol 1 cada 2 horas');
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_pacientes`
--

DROP TABLE IF EXISTS `historial_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial_pacientes` (
  `no_paciente` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(10) NOT NULL,
  `residencia` varchar(50) NOT NULL,
  `edad` int(4) NOT NULL,
  `telefono` int(8) NOT NULL,
  PRIMARY KEY (`no_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_pacientes`
--

LOCK TABLES `historial_pacientes` WRITE;
/*!40000 ALTER TABLE `historial_pacientes` DISABLE KEYS */;
INSERT INTO `historial_pacientes` VALUES (1,'Carlos','01-03-2001','Salamá',18,12344321),(2,'Luis','02-09-2000','San Jerónimo',19,12323222),(18,'Raquel','01-09-2000','San JerÃ³nimo',19,564327),(19,'Carlos Marroquin ','21212','nm',55,123456);
/*!40000 ALTER TABLE `historial_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `no_paciente` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(10) NOT NULL,
  `residencia` varchar(50) NOT NULL,
  `edad` int(4) NOT NULL,
  `telefono` int(8) NOT NULL,
  PRIMARY KEY (`no_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Carlos','01-03-2001','Salamá',18,12344321),(2,'Luis','02-09-2000','San Jerónimo',19,12323222);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger historial after insert on paciente for each row
insert historial_pacientes(no_paciente,nombre,fecha_nacimiento,residencia,edad,telefono)
values(new.no_paciente,new.nombre,new.fecha_nacimiento,new.residencia,new.edad,new.telefono) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `programa_cita`
--

DROP TABLE IF EXISTS `programa_cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programa_cita` (
  `nombre` varchar(45) NOT NULL,
  `sexo` varchar(9) NOT NULL,
  `residencia` varchar(45) NOT NULL,
  `edad` int(4) NOT NULL,
  `telefono` int(8) NOT NULL,
  `fecha_cita` varchar(10) NOT NULL,
  `hora_cita` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa_cita`
--

LOCK TABLES `programa_cita` WRITE;
/*!40000 ALTER TABLE `programa_cita` DISABLE KEYS */;
INSERT INTO `programa_cita` VALUES ('Laura','femenino','SalamÃ¡',17,12345432,'12-10-2019','8:00 am'),('Carlos Marroquin','masculino','SalamÃ¡',17,12345432,'12-10-2019','4:30 pm');
/*!40000 ALTER TABLE `programa_cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(4) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'user','12345');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clinica'
--

--
-- Dumping routines for database 'clinica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-18 18:40:01
