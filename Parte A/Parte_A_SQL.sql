-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: TareaParteA
-- ------------------------------------------------------
-- Server version	10.3.38-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `nombre` varchar(50) NOT NULL,
  `XPATH` varchar(50) DEFAULT NULL,
  `url_prin` varchar(255) DEFAULT NULL,
  `url_ej` varchar(255) DEFAULT NULL,
  `url_sw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nombre`),
  KEY `url_sw` (`url_sw`),
  CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`url_sw`) REFERENCES `sitio_web` (`url_sw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundado_por`
--

DROP TABLE IF EXISTS `fundado_por`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fundado_por` (
  `nombre` varchar(50) NOT NULL,
  `ID_MEDIO` varchar(50) NOT NULL,
  PRIMARY KEY (`nombre`,`ID_MEDIO`),
  KEY `ID_MEDIO` (`ID_MEDIO`),
  CONSTRAINT `fundado_por_ibfk_1` FOREIGN KEY (`ID_MEDIO`) REFERENCES `medio_prensa` (`ID_MEDIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundado_por`
--

LOCK TABLES `fundado_por` WRITE;
/*!40000 ALTER TABLE `fundado_por` DISABLE KEYS */;
/*!40000 ALTER TABLE `fundado_por` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medio_prensa`
--

DROP TABLE IF EXISTS `medio_prensa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medio_prensa` (
  `ID_MEDIO` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `fundacion` date DEFAULT NULL,
  `cobertura` varchar(50) DEFAULT NULL,
  `ID_UBI` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_MEDIO`),
  KEY `ID_UBI` (`ID_UBI`),
  CONSTRAINT `medio_prensa_ibfk_1` FOREIGN KEY (`ID_UBI`) REFERENCES `ubicacion` (`ID_UBI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medio_prensa`
--

LOCK TABLES `medio_prensa` WRITE;
/*!40000 ALTER TABLE `medio_prensa` DISABLE KEYS */;
/*!40000 ALTER TABLE `medio_prensa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticia`
--

DROP TABLE IF EXISTS `noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticia` (
  `url_noti` varchar(255) NOT NULL,
  `xp_fecha` varchar(50) DEFAULT NULL,
  `xp_titulo` varchar(50) DEFAULT NULL,
  `xp_contenido` varchar(50) DEFAULT NULL,
  `url_sw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`url_noti`),
  KEY `url_sw` (`url_sw`),
  CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`url_sw`) REFERENCES `sitio_web` (`url_sw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticia`
--

LOCK TABLES `noticia` WRITE;
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `red_social`
--

DROP TABLE IF EXISTS `red_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `red_social` (
  `nombre` varchar(50) NOT NULL,
  `cuenta` varchar(50) NOT NULL,
  `act_seguidores` date DEFAULT NULL,
  `seguidores` int(11) DEFAULT NULL,
  `ID_MEDIO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nombre`,`cuenta`),
  KEY `ID_MEDIO` (`ID_MEDIO`),
  CONSTRAINT `red_social_ibfk_1` FOREIGN KEY (`ID_MEDIO`) REFERENCES `medio_prensa` (`ID_MEDIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `red_social`
--

LOCK TABLES `red_social` WRITE;
/*!40000 ALTER TABLE `red_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `red_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitio_web`
--

DROP TABLE IF EXISTS `sitio_web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitio_web` (
  `url_sw` varchar(255) NOT NULL,
  `ID_MEDIO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`url_sw`),
  KEY `ID_MEDIO` (`ID_MEDIO`),
  CONSTRAINT `sitio_web_ibfk_1` FOREIGN KEY (`ID_MEDIO`) REFERENCES `medio_prensa` (`ID_MEDIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitio_web`
--

LOCK TABLES `sitio_web` WRITE;
/*!40000 ALTER TABLE `sitio_web` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitio_web` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubicacion` (
  `ID_UBI` varchar(50) NOT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `continente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_UBI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 21:59:10
