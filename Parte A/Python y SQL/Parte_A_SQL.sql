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
INSERT INTO `fundado_por` VALUES ('Adeodato García Valenzuela','MED18'),('Agustin Edwards Eastman','MED04'),('Benjamín Mansilla','MED22'),('Carmen Mendoza','MED15'),('Compañia Chilena De Comunicaciones','MED09'),('Copesa','MED01'),('Diozel Perez Vergara','MED05'),('Eduardo Gonzales','MED21'),('Eliodoro Yáñez Ponce De León','MED20'),('Enrique Contreras','MED11'),('Familia Pico Cañas','MED03'),('Felipe Portales','MED14'),('Goncalves Flores Udo Joao','MED16'),('Grupo Bethia','MED12'),('José Luis Córdova','MED15'),('Juan José Santa Cruz','MED10'),('Juan Rojas Maldonado','MED07'),('Justo Aliaga Cobo','MED23'),('La Plaza S.A.','MED06'),('Leo Pakarati','MED02'),('Mariana Aylwin','MED10'),('Mario Vackflores','MED11'),('Miguel González Navarro','MED17'),('Monica Anderson','MED08'),('Osvaldo Cifuentes','MED11'),('Patricio Mery Bell','MED14'),('Paula Rossetti','MED02'),('Per Anderson','MED08'),('Ramón Morales Moraga','MED19'),('René Jaureguí','MED11'),('Robert Braunerhielm','MED08'),('Roberto Meza','MED11'),('Rodrigo Ruiz','MED13'),('Rosendo Alvarez','MED22'),('Sebastián Sichel','MED10'),('Universidad De Concepcion','MED01'),('Víctor Herrero','MED14');
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
INSERT INTO `medio_prensa` VALUES ('MED01','Diario Concepcion',2008,'Nacional','UBI08'),('MED02','El Correo Del Moai',2009,'Local','UBI17'),('MED03','La Tercera',1950,'Internacional','UBI01'),('MED04','Emol',1999,'Internacional','UBI01'),('MED05','La Cuarta',1984,'Internacional','UBI01'),('MED06','El Mostrador',2000,'Internacional','UBI01'),('MED07','Puente Alto Al Dia',1962,'Nacional','UBI01'),('MED08','Publimetro',1995,'Nacional','UBI01'),('MED09','Cooperativa',1935,'Internacional','UBI01'),('MED10','El Dinamo',2010,'Internacional','UBI01'),('MED11','Diario Financiero',1988,'Internacional','UBI01'),('MED12','Cnn Chile',2008,'Internacional','UBI01'),('MED13','El Desconcierto',2012,'Internacional','UBI01'),('MED14','El Ciudadano',2007,'Internacional','UBI01'),('MED15','El Siglo',1940,'Internacional','UBI01'),('MED16','Chasquis',2004,'Internacional','UBI03'),('MED17','El Rancaguino',1915,'Internacional','UBI23'),('MED18','El Condor',1917,'Nacional','UBI24'),('MED19','Diario Vi Región',1952,'Regional','UBI25'),('MED20','La Nacion',1917,'Nacional','UBI01'),('MED21','El Andino',1975,'Local','UBI26'),('MED22','El Heraldo Austral',1951,'Local','UBI12'),('MED23','El Heraldo',1937,'Nacional','UBI05');
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
INSERT INTO `noticia` VALUES ('https://diariocondor.cl/2023/06/09/magallanes-de-nancagua-celebro-105-anos-de-historia-deportiva/','//div[@class=\"article-content clearfix\"]/div[2]/span/a/time[1]/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"entry-content clearfix\"]//p//text()','https://diariocondor.cl/'),('https://elsiglo.cl/salvador-allende-el-nacimiento-de-un-lider-y-luchador-social/','//header[@class=\"entry-header\"]//div[@class=\"date\"]/a/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"entry-content\"]//p//text()','https://elsiglo.cl/'),('https://www.chasquis.cl/diario/page.php?id=20851','//div[@class=\"style10\"]/text()','/html/body/table[2]/tbody/tr[1]/td[1]/table/tbody/tr[1]/td/h1/text()','//span[@class=\"style10\"]//p//text()','https://www.chasquis.cl/diario/'),('https://www.cnnchile.com/mundo/tribunal-brasil-prohibe-bolsonaro-elecciones_20230630/','//header[@class=\"main-single-header\"]/div/span/text()','//header[@class=\"main-single-header\"]/h1/text()','//div[@class=\"main-single-body__content\"]//p//text()','https://www.cnnchile.com/'),('https://www.cooperativa.cl/noticias/economia/impuestos/ministro-marcel-se-mostro-optimista-sobre-el-avance-de-un-nuevo-pacto/2023-06-28/143656.html','//div[@class=\"fecha-publicacion\"]/time/text()','//*[@id=\"despliegue-titular\"]/h1/text()','//*[@id=\"cuerpo-ad\"]//p//text()','https://www.cooperativa.cl/'),('https://www.df.cl/empresas/construccion/ministra-lopez-anuncia-366-mil-millones-para-la-reconstruccion-tras','//span[@class=\"fecha-noticia\"]/text()','//*[@id=\"titulo_articulo\"]/text()','//*[@id=\"articleFree\"]//p//text()','https://www.df.cl/'),('https://www.diarioconcepcion.cl/ciudad/2023/06/28/advierten-peak-respiratorio-de-adultos-y-ninos-tras-inundaciones-en-la-region.html','//span[@class=\"the-single__date\"]/text()','//h1[@class=\"the-single__title\"]/text()','//div[@class=\"the-single__text\"]//p//text()','https://www.diarioconcepcion.cl/'),('https://www.diarioelheraldo.cl/noticia/provincia-de-linares-aun-4-personas-desaparecidas-tras-desborde-de-rios','//div[@class=\"categoria\"]/text()[2]','//div[@class=\"titulo_destacada\"]/text()','//div[@class=\"contenido_not\"]//text()','https://www.diarioelheraldo.cl/'),('https://www.diarioviregion.cl/index.php/noticias/25735-alcalde-pablo-silva-junto-a-ministros-recorrieron-sector-los-huertos-y-visitaron-a-damnificados','//dd[@class=\"published hasTooltip\"]/time/text()','//h1[@class=\"article-title\"]/text()','//section[@class=\"article-content\"]//p//text()','https://www.diarioviregion.cl/'),('https://www.eha.cl/noticia/deportes/joven-nadador-cristobal-villouta-obtuvo-tres-medallas-de-oro-en-campeonato-nacional-de-invierno-de-natacion','//*[@id=\"container\"]//div[@class=\"entry-meta meta-0 font-small mb-30\"]/span/text()','//h1[@class=\"post-title\"]/a/text()','//div[@class=\"content-desc\"]//p//text()','https://www.eha.cl/'),('https://www.elandino.cl/liceo-mixto-realizo-emotiva-ceremonia-de-despedida-al-profesor-modesto-montenegro-gonzalez/','//div[@class=\"post-date-bd\"]//span/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"post-content-bd\"]//p//text()','http://www.elandino.cl/'),('https://www.elciudadano.com/actualidad/cientificos-de-chile-crean-antibiotico-eficaz-para-el-combate-de-bacterias-multirresistentes/06/28/','//p[@class=\"text-muted\"]/small/span/@data-date','//h1[@class=\"mb-4 the_title\"]/text()','//article/div[2]/div[1]/div[2]//p//text()','https://www.elciudadano.com/'),('https://www.elcorreodelmoai.com/?p=2451','//span[@class=\"meta_date\"]/strong/text()','//h1[@class=\"cat_article_title\"]/text()','//*[@id=\"article_content\"]/p//text()','https://www.elcorreodelmoai.com/'),('https://www.eldesconcierto.cl/nacional/2023/06/28/servel-certifica-fuga-de-mas-de-mil-militantes-del-pdg-en-solo-un-mes-se-iba-a-acabar-luna-de-miel.html','//div[@class=\"the-article__about\"]/text()[3]','//h1[@class=\"the-article__title\"]/text()','//div[@class=\"js_the_content_nacional\"]//p//text()','https://www.eldesconcierto.cl/'),('https://www.eldinamo.cl/deportes/2023/06/28/los-errores-de-santiago-2023-que-reconoce-mayne-nicholls-y-sus-reparos-a-la-comision-investigadora/','//span[@class=\"fecha\"]/text()','//article[@class=\"principal\"]/h1/text()','//div[@class=\"the-content\"]//p//text()','https://www.eldinamo.cl/'),('https://www.elmostrador.cl/noticias/pais/2023/06/28/en-ningun-pais-ha-resultado-academico-uc-cuestiona-comision-contra-la-desinformacion-del-gobierno/','//div[@class=\"d-the-single\"]/time/text()','//div[@class=\"d-the-single\"]/h1/text()','//div[@class=\"d-the-single\"]/div[3]/p//text()','https://www.elmostrador.cl/'),('https://www.emol.com/noticias/Economia/2023/06/28/1099392/cifras-crecimiento-recaudacion-pacto-fiscal.html','//*[@id=\"barra-agencias-info\"]/div[1]/text()','//*[@id=\"cuDetalle_cuTitular_tituloNoticia\"]/text()','//*[@id=\"texto_noticia\"]/text()','https://www.emol.com/'),('https://www.lacuarta.com/espectaculos/noticia/la-firme-con-priscilla-vargas-creo-que-a-la-sociedad-le-falta-amor-y-tratan-de-proyectarse-en-mi-y-repe/FJBSI3S2CRA7RDAJORJGO3XFSU/','//strong[@class=\"date primary-color\"]/text()','//h1[@class=\"h1 boldbold mb1 col-12 lg-col-9 md-col-8\"]/text()','//div[@class=\"col col-12 pl1 mn0 body\"]//p//text()','https://www.lacuarta.com/'),('https://www.lanacion.cl/fiscal-de-antofagasta-informo-que-tras-allanar-domicilio-se-le-incautaron-computador-y-celular-a-daniel-andrade/','//time[@class=\"entry-date updated td-module-date\"]/text()','//h1[@class=\"tdb-title-text\"]/text()','//div[@class=\"tdb-block-inner td-fix-index\"]//p//text()','https://www.lanacion.cl/'),('https://www.latercera.com/la-tercera-pm/noticia/31-millones-para-campana-del-apruebo-consejo-para-la-transparencia-envia-al-ministerio-publico-nuevos-antecedentes-sobre-aportes-a-democracia-viva/A3ISKUCKOREBDL3JXH5Y6ZV6UQ/','//time/small/b/text()','//div[@class=\"hl\"]//div/text()','//div[@class=\"single-content\"]//p//text()','https://www.latercera.com/'),('https://www.publimetro.cl/social/2023/06/28/actualizan-estado-de-salud-del-valiente-gatito-que-se-lanzo-al-rio-cachapoal-en-medio-de-las-inundaciones/','//*[@id=\"skin-branding\"]//time/text()','//*[@id=\"skin-branding\"]//h1/text()','//div[@class=\"row\"]/article/article//p//text()','https://www.publimetro.cl/'),('https://www.puentealtoaldia.com/municipalidad-de-puente-alto-lanza-campana-para-ir-en-apoyo-a-damnificados-por-sistema-frontal/','//header//time/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"td-post-content tagdiv-type\"]//p//text()','https://www.puentealtoaldia.com/');
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
INSERT INTO `red_social` VALUES ('Facebook','Chasquis Arica','2023-07-06',1200,'MED16'),('Facebook','CNN Chile','2023-07-06',1500000,'MED12'),('Facebook','Cooperativa','2023-07-06',2200000,'MED09'),('Facebook','Diario Concepcion','2023-06-28',67000,'MED01'),('Facebook','Diario El Andino de Los Andes','2023-07-06',30000,'MED21'),('Facebook','Diario El Cóndor','2023-07-06',45000,'MED18'),('Facebook','Diario Financiero','2023-07-06',224000,'MED11'),('Facebook','Diario La Nación','2023-07-06',4337,'MED20'),('Facebook','Diario Sexta Región','2023-07-06',5399,'MED19'),('Facebook','El Ciudadano','2023-07-06',4700000,'MED14'),('Facebook','El Correo Del Moai','2023-06-30',2100,'MED02'),('Facebook','El Desconcierto','2023-07-06',423000,'MED13'),('Facebook','El Dinamo','2023-07-06',315000,'MED10'),('Facebook','El Heraldo Austral','2023-07-06',20000,'MED22'),('Facebook','El Heraldo Linares','2023-07-06',16000,'MED23'),('Facebook','El Mostrador','2023-07-06',535000,'MED06'),('Facebook','El Rancaguino','2023-07-06',71000,'MED17'),('Facebook','El Siglo','2023-07-06',14000,'MED15'),('Facebook','Emol','2023-06-30',596000,'MED04'),('Facebook','La Cuarta','2023-07-06',820000,'MED05'),('Facebook','La Tercera','2023-06-30',4300000,'MED03'),('Facebook','Publimetro Chile','2023-07-06',1000000,'MED08'),('Facebook','Puente Alto Al Dia','2023-07-06',77000,'MED07'),('Instagram','@cnnchile','2023-07-06',1000000,'MED12'),('Instagram','@diarioconcepcion','2023-06-28',65900,'MED01'),('Instagram','@diarioelcondorsantacruz','2023-07-06',2930,'MED18'),('Instagram','@diariofinanciero','2023-07-06',292000,'MED11'),('Instagram','@diario_sexta_region','2023-07-06',3378,'MED19'),('Instagram','@el.ciudadano','2023-07-06',682000,'MED14'),('Instagram','@elcorreodelmoai','2023-06-30',1781,'MED02'),('Instagram','@eldesconcierto','2023-07-06',424000,'MED13'),('Instagram','@elheraldoaustral','2023-07-06',12100,'MED22'),('Instagram','@elsiglochile','2023-07-06',12600,'MED15'),('Instagram','@el_mostrador','2023-07-06',483000,'MED06'),('Instagram','@emolcom','2023-06-30',71300,'MED04'),('Instagram','@lacuartacom','2023-07-06',427000,'MED05'),('Instagram','@lanacioncl','2023-07-06',8419,'MED20'),('Instagram','@laterceracom','2023-06-30',465000,'MED03'),('Instagram','@publimetrochile','2023-07-06',35200,'MED08'),('Instagram','@puentealtoaldia','2023-07-06',25800,'MED07'),('Instagram','diarioelrancaguino','2023-07-06',38500,'MED17'),('Instagram','el_dinamo','2023-07-06',72800,'MED10'),('Twitter','Chasquis','2023-07-06',2783,'MED16'),('Twitter','CNN Chile','2023-07-06',4000000,'MED12'),('Twitter','Cooperativa','2023-07-06',3400000,'MED09'),('Twitter','Diario Concepcion','2023-06-28',66700,'MED01'),('Twitter','Diario El Andino','2023-07-06',3160,'MED21'),('Twitter','Diario El Cóndor','2023-07-06',335,'MED18'),('Twitter','Diario El Rancaguino','2023-07-06',59800,'MED17'),('Twitter','Diario Financiero','2023-07-06',295800,'MED11'),('Twitter','Diario Sexta Región','2023-07-06',4388,'MED19'),('Twitter','diario_eha','2023-07-06',10600,'MED22'),('Twitter','El Ciudadano','2023-07-06',582800,'MED14'),('Twitter','El Correo Del Moai','2023-06-30',506,'MED02'),('Twitter','El Desconcierto','2023-07-06',474600,'MED13'),('Twitter','El Dinamo','2023-07-06',508900,'MED10'),('Twitter','El Mostrador','2023-07-06',1900000,'MED06'),('Twitter','El Siglo','2023-07-06',31800,'MED15'),('Twitter','Emol.com','2023-06-30',2100000,'MED04'),('Twitter','La Cuarta','2023-07-06',943300,'MED05'),('Twitter','La Nación Chile','2023-07-06',345200,'MED20'),('Twitter','La Tercera','2023-06-30',2100000,'MED03'),('Twitter','Publimetro','2023-07-06',1200000,'MED08'),('Twitter','Puente Alto Al Dia','2023-07-06',28600,'MED07');
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
INSERT INTO `sitio_web` VALUES ('https://www.diarioconcepcion.cl/','MED01'),('https://www.elcorreodelmoai.com/','MED02'),('https://www.latercera.com/','MED03'),('https://www.emol.com/','MED04'),('https://www.lacuarta.com/','MED05'),('https://www.elmostrador.cl/','MED06'),('https://www.puentealtoaldia.com/','MED07'),('https://www.publimetro.cl/','MED08'),('https://www.cooperativa.cl/','MED09'),('https://www.eldinamo.cl/','MED10'),('https://www.df.cl/','MED11'),('https://www.cnnchile.com/','MED12'),('https://www.eldesconcierto.cl/','MED13'),('https://www.elciudadano.com/','MED14'),('https://elsiglo.cl/','MED15'),('https://www.chasquis.cl/diario/','MED16'),('https://www.elrancaguino.cl/','MED17'),('https://diariocondor.cl/','MED18'),('https://www.diarioviregion.cl/','MED19'),('https://www.lanacion.cl/','MED20'),('http://www.elandino.cl/','MED21'),('https://www.eha.cl/','MED22'),('https://www.diarioelheraldo.cl/','MED23');
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

-- Dump completed on 2023-07-07  0:28:56
