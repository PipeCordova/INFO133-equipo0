-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: TareaParteB
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
-- Table structure for table `Pais`
--

DROP TABLE IF EXISTS `Pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pais` (
  `nombre_pais` varchar(50) NOT NULL,
  PRIMARY KEY (`nombre_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pais`
--

LOCK TABLES `Pais` WRITE;
/*!40000 ALTER TABLE `Pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comuna`
--

DROP TABLE IF EXISTS `comuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comuna` (
  `ID_COM` varchar(50) NOT NULL,
  `nombre_com` varchar(50) DEFAULT NULL,
  `cant_poblacion` int(11) DEFAULT NULL,
  `densidad_hab` float DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `id_region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_COM`),
  KEY `id_region` (`id_region`),
  CONSTRAINT `comuna_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comuna`
--

LOCK TABLES `comuna` WRITE;
/*!40000 ALTER TABLE `comuna` DISABLE KEYS */;
/*!40000 ALTER TABLE `comuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ed`
--

DROP TABLE IF EXISTS `detalle_ed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_ed` (
  `ID_DET` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `categoria` varchar(15) DEFAULT NULL,
  `ID_ED` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_DET`),
  KEY `ID_ED` (`ID_ED`),
  CONSTRAINT `detalle_ed_ibfk_1` FOREIGN KEY (`ID_ED`) REFERENCES `educacion` (`ID_ED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ed`
--

LOCK TABLES `detalle_ed` WRITE;
/*!40000 ALTER TABLE `detalle_ed` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_ed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ent`
--

DROP TABLE IF EXISTS `detalle_ent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_ent` (
  `ID_DET` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `aforo` int(11) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ID_EN` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_DET`),
  KEY `ID_EN` (`ID_EN`),
  CONSTRAINT `detalle_ent_ibfk_1` FOREIGN KEY (`ID_EN`) REFERENCES `entretencion` (`ID_EN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ent`
--

LOCK TABLES `detalle_ent` WRITE;
/*!40000 ALTER TABLE `detalle_ent` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_ent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_sal`
--

DROP TABLE IF EXISTS `detalle_sal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_sal` (
  `ID_DET` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ID_S` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_DET`),
  KEY `ID_S` (`ID_S`),
  CONSTRAINT `detalle_sal_ibfk_1` FOREIGN KEY (`ID_S`) REFERENCES `salud` (`ID_S`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_sal`
--

LOCK TABLES `detalle_sal` WRITE;
/*!40000 ALTER TABLE `detalle_sal` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_sal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_seg`
--

DROP TABLE IF EXISTS `detalle_seg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_seg` (
  `ID_DET` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ID_SEG` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_DET`),
  KEY `ID_SEG` (`ID_SEG`),
  CONSTRAINT `detalle_seg_ibfk_1` FOREIGN KEY (`ID_SEG`) REFERENCES `seguridad` (`ID_SEG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_seg`
--

LOCK TABLES `detalle_seg` WRITE;
/*!40000 ALTER TABLE `detalle_seg` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_seg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educacion`
--

DROP TABLE IF EXISTS `educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educacion` (
  `ID_ED` varchar(50) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_ED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion`
--

LOCK TABLES `educacion` WRITE;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entretencion`
--

DROP TABLE IF EXISTS `entretencion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entretencion` (
  `ID_EN` varchar(50) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_EN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entretencion`
--

LOCK TABLES `entretencion` WRITE;
/*!40000 ALTER TABLE `entretencion` DISABLE KEYS */;
/*!40000 ALTER TABLE `entretencion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id_region` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `nombre_pais` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_region`),
  KEY `nombre_pais` (`nombre_pais`),
  CONSTRAINT `region_ibfk_1` FOREIGN KEY (`nombre_pais`) REFERENCES `Pais` (`nombre_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salud`
--

DROP TABLE IF EXISTS `salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salud` (
  `ID_S` varchar(50) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_S`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salud`
--

LOCK TABLES `salud` WRITE;
/*!40000 ALTER TABLE `salud` DISABLE KEYS */;
/*!40000 ALTER TABLE `salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguridad`
--

DROP TABLE IF EXISTS `seguridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguridad` (
  `ID_SEG` varchar(50) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_SEG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguridad`
--

LOCK TABLES `seguridad` WRITE;
/*!40000 ALTER TABLE `seguridad` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiene_ed`
--

DROP TABLE IF EXISTS `tiene_ed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiene_ed` (
  `ID_ED` varchar(50) NOT NULL,
  `ID_COM` varchar(50) NOT NULL,
  `n_edificios` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_ED`,`ID_COM`),
  KEY `ID_COM` (`ID_COM`),
  CONSTRAINT `tiene_ed_ibfk_1` FOREIGN KEY (`ID_ED`) REFERENCES `educacion` (`ID_ED`),
  CONSTRAINT `tiene_ed_ibfk_2` FOREIGN KEY (`ID_COM`) REFERENCES `comuna` (`ID_COM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiene_ed`
--

LOCK TABLES `tiene_ed` WRITE;
/*!40000 ALTER TABLE `tiene_ed` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiene_ed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiene_ent`
--

DROP TABLE IF EXISTS `tiene_ent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiene_ent` (
  `ID_EN` varchar(50) NOT NULL,
  `ID_COM` varchar(50) NOT NULL,
  `n_edificios` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_EN`,`ID_COM`),
  KEY `ID_COM` (`ID_COM`),
  CONSTRAINT `tiene_ent_ibfk_1` FOREIGN KEY (`ID_EN`) REFERENCES `entretencion` (`ID_EN`),
  CONSTRAINT `tiene_ent_ibfk_2` FOREIGN KEY (`ID_COM`) REFERENCES `comuna` (`ID_COM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiene_ent`
--

LOCK TABLES `tiene_ent` WRITE;
/*!40000 ALTER TABLE `tiene_ent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiene_ent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiene_sal`
--

DROP TABLE IF EXISTS `tiene_sal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiene_sal` (
  `ID_S` varchar(50) NOT NULL,
  `ID_COM` varchar(50) NOT NULL,
  `n_edificios` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_S`,`ID_COM`),
  KEY `ID_COM` (`ID_COM`),
  CONSTRAINT `tiene_sal_ibfk_1` FOREIGN KEY (`ID_S`) REFERENCES `salud` (`ID_S`),
  CONSTRAINT `tiene_sal_ibfk_2` FOREIGN KEY (`ID_COM`) REFERENCES `comuna` (`ID_COM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiene_sal`
--

LOCK TABLES `tiene_sal` WRITE;
/*!40000 ALTER TABLE `tiene_sal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiene_sal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiene_seg`
--

DROP TABLE IF EXISTS `tiene_seg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiene_seg` (
  `ID_SEG` varchar(50) NOT NULL,
  `ID_COM` varchar(50) NOT NULL,
  `n_edificios` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_SEG`,`ID_COM`),
  KEY `ID_COM` (`ID_COM`),
  CONSTRAINT `tiene_seg_ibfk_1` FOREIGN KEY (`ID_SEG`) REFERENCES `seguridad` (`ID_SEG`),
  CONSTRAINT `tiene_seg_ibfk_2` FOREIGN KEY (`ID_COM`) REFERENCES `comuna` (`ID_COM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiene_seg`
--

LOCK TABLES `tiene_seg` WRITE;
/*!40000 ALTER TABLE `tiene_seg` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiene_seg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 22:02:48
