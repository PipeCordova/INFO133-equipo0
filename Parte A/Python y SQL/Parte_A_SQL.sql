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
INSERT INTO `fundado_por` VALUES ('Agustin Edwards Eastman','MED04'),('Copesa','MED01'),('Familia Pico Cañas','MED03'),('Leo Pakarati','MED02'),('Paula Rossetti','MED02'),('Universidad De Concepcion','MED01');
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
  `ano_fundacion` int(11) DEFAULT NULL,
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
INSERT INTO `medio_prensa` VALUES ('MED01','Diario Concepcion',2008,'Nacional','UBI08'),('MED02','El Correo Del Moai',2009,'Local','UBI17'),('MED03','La Tercera',1950,'Internacional','UBI01'),('MED04','Emol',1999,'Internacional','UBI01');
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
  `xp_fecha` varchar(255) DEFAULT NULL,
  `xp_titulo` varchar(255) DEFAULT NULL,
  `xp_contenido` varchar(255) DEFAULT NULL,
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
INSERT INTO `noticia` VALUES ('https://www.diarioconcepcion.cl/ciudad/2023/06/28/advierten-peak-respiratorio-de-adultos-y-ninos-tras-inundaciones-en-la-region.html','//span[@class=\"the-single__date\"]/text()','//h1[@class=\"the-single__title\"]/text()','//div[@class=\"the-single__text\"]//p//text()','https://www.diarioconcepcion.cl/'),('https://www.elcorreodelmoai.com/?p=2451','//span[@class=\"meta_date\"]/strong/text()','//h1[@class=\"cat_article_title\"]/text()','//*[@id=\"article_content\"]/p//text()','https://www.elcorreodelmoai.com/'),('https://www.emol.com/noticias/Economia/2023/06/28/1099392/cifras-crecimiento-recaudacion-pacto-fiscal.html','//*[@id=\"barra-agencias-info\"]/div[1]/text()','//*[@id=\"cuDetalle_cuTitular_tituloNoticia\"]/text()','//*[@id=\"texto_noticia\"]/text()','https://www.emol.com/'),('https://www.latercera.com/la-tercera-pm/noticia/31-millones-para-campana-del-apruebo-consejo-para-la-transparencia-envia-al-ministerio-publico-nuevos-antecedentes-sobre-aportes-a-democracia-viva/A3ISKUCKOREBDL3JXH5Y6ZV6UQ/','//time/small/b/text()','//div[@class=\"hl\"]//div/text()','//div[@class=\"single-content\"]//p//text()','https://www.latercera.com/');
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
INSERT INTO `red_social` VALUES ('Facebook','Diario Concepcion','2023-06-28',67000,'MED01'),('Facebook','El Correo Del Moai','2023-06-30',2100,'MED02'),('Facebook','Emol','2023-06-30',596000,'MED04'),('Facebook','La Tercera','2023-06-30',4300000,'MED03'),('Instagram','@diarioconcepcion','2023-06-28',65900,'MED01'),('Instagram','@elcorreodelmoai','2023-06-30',1781,'MED02'),('Instagram','@emolcom','2023-06-30',71300,'MED04'),('Instagram','@laterceracom','2023-06-30',465000,'MED03'),('Twitter','Diario Concepcion','2023-06-28',66700,'MED01'),('Twitter','El Correo Del Moai','2023-06-30',506,'MED02'),('Twitter','Emol.com','2023-06-30',2100000,'MED04'),('Twitter','La Tercera','2023-06-30',2100000,'MED03');
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
INSERT INTO `sitio_web` VALUES ('https://www.diarioconcepcion.cl/','MED01'),('https://www.elcorreodelmoai.com/','MED02'),('https://www.latercera.com/','MED03'),('https://www.emol.com/','MED04');
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
INSERT INTO `ubicacion` VALUES ('UBI01','Santiago','Metropolitana','Chile','America Del Sur'),('UBI02','Valdivia','Los Rios','Chile','America Del Sur'),('UBI03','Arica','Arica Y Parinacota','Chile','America Del Sur'),('UBI04','Iquique','Tarapaca','Chile','America Del Sur'),('UBI05','Linares','Maule','Chile','America Del Sur'),('UBI06','Chillan','Ñuble','Chile','America Del Sur'),('UBI07','Los Angeles','Bio Bio','Chile','America Del Sur'),('UBI08','Concepcion','Bio Bio','Chile','America Del Sur'),('UBI09','Puerto Montt','Los Lagos','Chile','America Del Sur'),('UBI10','Ovalle','Coquimbo','Chile','America Del Sur'),('UBI11','La Serena','Coquimbo','Chile','America Del Sur'),('UBI12','Puerto Varas','Los Lagos','Chile','America Del Sur'),('UBI13','Curico','Maule','Chile','America Del Sur'),('UBI14','Coquimbo','Coquimbo','Chile','America Del Sur'),('UBI15','Coyhaique','Aysen','Chile','America Del Sur'),('UBI16','Punta Arenas','Magallanes','Chile','America Del Sur'),('UBI17','Rapa Nui','Valparaiso','Chile','America Del Sur'),('UBI18','Tarapaca','Tarapaca','Chile','America Del Sur'),('UBI19','La Union','Los Rios','Chile','America Del Sur'),('UBI20','Paillaco','Los Rios','Chile','America Del Sur'),('UBI21','Quillota','Valparaiso','Chile','America Del Sur'),('UBI22','Chiloe','Los Lagos','Chile','America Del Sur'),('UBI23','Rancagua','O\'Higgins','Chile','America Del Sur'),('UBI24','Santa Cruz','O\'Higgins','Chile','America Del Sur'),('UBI25','San Fernando','O\'Higgins','Chile','America Del Sur'),('UBI26','Los Andes','Valparaiso','Chile','America Del Sur'),('UBI27','San Jose De La Mariquina','Los Rios','Chile','America Del Sur');
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

-- Dump completed on 2023-07-03 14:59:20
