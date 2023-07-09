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
INSERT INTO `fundado_por` VALUES ('Adeodato García Valenzuela','MED18'),('Agustin Edwards Eastman','MED04'),('Benjamín Mansilla','MED22'),('Canal 13','MED44'),('Carmen Mendoza','MED15'),('Chilevisión','MED32'),('Claudio Marquez Maragaño','MED17'),('Compañia Chilena De Comunicaciones','MED09'),('Copesa','MED01'),('Diozel Perez Vergara','MED05'),('Domingo Contreras Quintana','MED39'),('Eduardo Gonzales','MED21'),('Elías Pacheco Méndez','MED50'),('Eliodoro Yáñez Ponce De León','MED20'),('Enrique Contreras','MED11'),('Familia Pico Cañas','MED03'),('Felipe Portales','MED14'),('Froilán Morán Aliaga','MED31'),('Goncalves Flores Udo Joao','MED16'),('Grupo Bethia','MED12'),('Guido Vallejos','MED28'),('José Ángel Cuevas Estivil','MED48'),('José Luis Córdova','MED15'),('Juan Bautista Contardi','MED27'),('Juan Ignacio Montenegro','MED40'),('Juan José Santa Cruz','MED10'),('Juan Rojas Maldonado','MED07'),('Justo Aliaga Cobo','MED23'),('La Plaza S.A.','MED06'),('Lautaro Navarro','MED27'),('Leo Pakarati','MED02'),('Lorenzo Marusic Kusanovic','MED26'),('Luis Erasmo','MED31'),('Luis Villagrán Castellón','MED34'),('Manuel Rafael Ahumada Lagos','MED29'),('Mariana Aylwin','MED10'),('Mario Banic Illanes','MED35'),('Mario Vackflores','MED11'),('Mega','MED43'),('Miguel González Muñoz','MED38'),('Monica Anderson','MED08'),('Municipalidad De La Unión','MED45'),('Municipalidad De Paillaco','MED46'),('Municipalidad De Puerto Montt','MED24'),('Municipalidad De San José De La Mariquina','MED49'),('Municipalidad De Valdivia','MED25'),('Osvaldo Cifuentes','MED11'),('Patricio Mery Bell','MED14'),('Paula Rossetti','MED02'),('Pedro Castillo','MED30'),('Pedro Vega Gutiérrez','MED33'),('Per Anderson','MED08'),('Ramón Morales Moraga','MED19'),('René Jaureguí','MED11'),('Robert Braunerhielm','MED08'),('Roberto Meza','MED11'),('Roberto Silva Bijit','MED47'),('Rodrigo Ruiz','MED13'),('Rosendo Alvarez','MED22'),('Sebastián Sichel','MED10'),('Sociedad De Comunicaciones Brava Limitada','MED37'),('Steve Anderson','MED41'),('Tvn','MED42'),('Universidad De Concepcion','MED01'),('Víctor Herrero','MED14'),('Víctor Manuel Ojeda Méndez','MED36');
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
INSERT INTO `medio_prensa` VALUES ('MED01','Diario Concepcion',2008,'Nacional','UBI08'),('MED02','El Correo Del Moai',2009,'Local','UBI17'),('MED03','La Tercera',1950,'Internacional','UBI01'),('MED04','Emol',1999,'Internacional','UBI01'),('MED05','La Cuarta',1984,'Internacional','UBI01'),('MED06','El Mostrador',2000,'Internacional','UBI01'),('MED07','Puente Alto Al Dia',1962,'Nacional','UBI01'),('MED08','Publimetro',1995,'Nacional','UBI01'),('MED09','Cooperativa',1935,'Internacional','UBI01'),('MED10','El Dinamo',2010,'Internacional','UBI01'),('MED11','Diario Financiero',1988,'Internacional','UBI01'),('MED12','Cnn Chile',2008,'Internacional','UBI01'),('MED13','El Desconcierto',2012,'Internacional','UBI01'),('MED14','El Ciudadano',2007,'Internacional','UBI01'),('MED15','El Siglo',1940,'Internacional','UBI01'),('MED16','Chasquis',2004,'Internacional','UBI03'),('MED17','El Calbucano',2006,'Regional','UBI23'),('MED18','El Condor',1917,'Nacional','UBI24'),('MED19','Diario Vi Región',1952,'Regional','UBI25'),('MED20','La Nacion',1917,'Nacional','UBI01'),('MED21','El Andino',1975,'Local','UBI26'),('MED22','El Heraldo Austral',1951,'Local','UBI12'),('MED23','El Heraldo',1937,'Nacional','UBI05'),('MED24','Verticetv',1998,'Regional','UBI09'),('MED25','Rioenlinea',2006,'Regional','UBI02'),('MED26','Itv Patagonia',1997,'Nacional','UBI16'),('MED27','La Prensa Austral',1894,'Internacional','UBI16'),('MED28','El Pingüino',2008,'Internacional','UBI16'),('MED29','El Divisadero',1994,'Regional','UBI15'),('MED30','Valle Televisión',2005,'Regional','UBI26'),('MED31','La Prensa De Curicó',1886,'Regional','UBI13'),('MED32','Chvnoticias',1996,'Internacional','UBI01'),('MED33','El Día',1944,'Internacional','UBI11'),('MED34','La Región',2004,'Nacional','UBI14'),('MED35','El Ovallino',1989,'Local','UBI10'),('MED36','Diario Estrategia',1978,'Internacional','UBI01'),('MED37','Online Tarapaca',2010,'Internacional','UBI18'),('MED38','Hdn Santa Cruz',2015,'Nacional','UBI24'),('MED39','La Tribuna',1958,'Nacional','UBI07'),('MED40','La Discusión',1870,'Nacional','UBI06'),('MED41','The Santiago Times',1991,'Internacional','UBI01'),('MED42','24 Horas',2009,'Internacional','UBI01'),('MED43','Meganoticias',1990,'Internacional','UBI01'),('MED44','T13',1970,'Internacional','UBI01'),('MED45','El Ranco',2010,'Regional','UBI19'),('MED46','Diario Paillaco',2013,'Nacional','UBI20'),('MED47','El Observador',1970,'Nacional','UBI21'),('MED48','El Insular',2001,'Local','UBI22'),('MED49','Diario San José',2018,'Nacional','UBI27'),('MED50','El Longino',1885,'Internacional','UBI04');
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
INSERT INTO `noticia` VALUES ('http://www.eldivisadero.cl/_noticia/Ley-de-Conciliaci%C3%B3n-de-Vida-Laboral-y-Familiar-Las-acciones-que-tendr%C3%A1n-que-tomar-pymes-y-empresas-/NzEwMDU=','//section[@class=\"enc centro\"]/div[5]/text()','//div[@class=\"titular\"]/text()','//section[@class=\"texto centro\"]//p//text()','http://www.eldivisadero.cl/home'),('http://www.elovallino.cl/social/mas-30-localidades-provincia-limari-sin-electrificacion-publica','//div[@class=\"submitted\"]/small/span/text()[2]','//h1[@class=\"title\"]/text()','//div[@class=\"field-item even\"]//p//text()','http://www.elovallino.cl/'),('https://canalvtv.cl/cultura-y-deportes/clasico-amistoso-entre-trasandino-y-union-san-felipe-se-jugara-el-1-de-febrero/2023/01/31/63d98b0f5214e1000a851c73','//div[@class=\"layerTwo\"]/p/text()[2]','//div[@class=\"layerTwo\"]/p/text()[2]','//*[@id=\"row-component-/cultura-y-deportes/clasico-amistoso-entre-trasandino-y-union-san-felipe-se-jugara-el-1-de-febrero/2023/01/31/63d98b0f5214e1000a851c73\"]/div/div/div//p//text()','https://canalvtv.cl/'),('https://diariocondor.cl/2023/06/09/magallanes-de-nancagua-celebro-105-anos-de-historia-deportiva/','//div[@class=\"article-content clearfix\"]/div[2]/span/a/time[1]/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"entry-content clearfix\"]//p//text()','https://diariocondor.cl/'),('https://diarioelranco.cl/index.php/2023/06/28/dos-adultos-fueron-detenidos-por-receptacion-de-especies-en-rio-bueno/','NO SE PUEDE YA QUE ESTA EN UNA IMAGEN','//h1[@class=\"tdb-title-text\"]/text()','//div[@class=\"tdb-block-inner td-fix-index\"]//p//text()','https://diarioelranco.cl/'),('https://diariolongino.cl/chocolate-las-bondades-de-un-producto-rico-y-saludable-para-consumir-en-invierno/','//div[@class=\"elementor-widget-container\"]/ul/li/a/span[2]/text()','//h1[@class=\"elementor-heading-title elementor-size-default\"]/text()','//div[@class=\"elementor-widget-container\"]//p//text()','https://diariolongino.cl/'),('https://elinsular.cl/entretencion/2023/06/09/banda-femenina-chilena-kiepja-se-suma-al-concierto-de-los-alemanes-haggard-en-chile/','//*[@id=\"single-post-meta\"]/span[3]/text()','//h1[@class=\"post-title entry-title\"]/text()','//*[@id=\"the-post\"]/div[2]/p//text()','https://elinsular.cl/'),('https://elpinguino.com/noticia/2023/06/27/conductor-resulto-con-lesiones-leves-tras-volcar-su-camion-en-la-ruta-ch-257-','/html/body/div[2]/div[2]/div[2]/div[1]/div[2]/text()','//div[@class=\"site3-content site3-single\"]/h1/text()','//div[@class=\"sit3-single-body\"]//p//text()','https://elpinguino.com/'),('https://elsiglo.cl/salvador-allende-el-nacimiento-de-un-lider-y-luchador-social/','//header[@class=\"entry-header\"]//div[@class=\"date\"]/a/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"entry-content\"]//p//text()','https://elsiglo.cl/'),('https://hdn.cl/noticias/politica/2018/10/01/presidente-pinera-valora-triunfo-de-chile-en-la-corte-internacional-de-justicia/','//div[@class=\"td-post-header td-pb-padding-side\"]/header/div/span/time/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"td-post-content td-pb-padding-side\"]//p//text()','https://hdn.cl/'),('https://laprensaaustral.cl/2023/06/28/espanol-gano-las-tres-categorias-femeninas-y-los-clubes-de-rio-gallegos-campeonaron-en-varones/','//div[@class=\"fecha\"]/span/text()','//h1[@class=\"droid\"]/text()','//*[@id=\"HOTWordsTxt\"]//p//text()','https://laprensaaustral.cl/'),('https://new.diariolaprensa.cl/index.php/2023/06/28/manana-se-juega-frente-a-santiago-morning/','//div[@class=\"td-module-meta-info\"]/span/time/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"td-post-content tagdiv-type\"]//p//text()','https://new.diariolaprensa.cl/'),('https://santiagotimes.cl/2022/02/10/puerto-montt-lender-priest-defrocked-for-canonical-offenses/','//header[@class=\"entry-header clearfix\"]/div/span/a/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"entry-content clearfix\"]//p//text()','https://santiagotimes.cl/'),('https://www.24horas.cl/actualidad/nacional/fotos-pelea-concejo-municipal-lo-espejo','//p[@class=\"fecha\"]/text()','//h1[@class=\"tit\"]/text()','//div[@class=\"CUERPO\"]//p//text()','https://www.24horas.cl/'),('https://www.chasquis.cl/diario/page.php?id=20851','//div[@class=\"style10\"]/text()','/html/body/table[2]/tbody/tr[1]/td[1]/table/tbody/tr[1]/td/h1/text()','//span[@class=\"style10\"]//p//text()','https://www.chasquis.cl/diario/'),('https://www.chvnoticias.cl/nacional/fabiola-campillai-emplaza-gobierno-muerte-victima-trauma-ocular-jorge-salvo_20230630/','//time[@class=\"the-single-about__date u-text-capitalize\"]/text()','//h1[@class=\"the-single__title\"]/text()','//div[@class=\"the-single-section__text the-single-section-text\"]//p//text()','https://www.chvnoticias.cl/'),('https://www.cnnchile.com/mundo/tribunal-brasil-prohibe-bolsonaro-elecciones_20230630/','//header[@class=\"main-single-header\"]/div/span/text()','//header[@class=\"main-single-header\"]/h1/text()','//div[@class=\"main-single-body__content\"]//p//text()','https://www.cnnchile.com/'),('https://www.cooperativa.cl/noticias/economia/impuestos/ministro-marcel-se-mostro-optimista-sobre-el-avance-de-un-nuevo-pacto/2023-06-28/143656.html','//div[@class=\"fecha-publicacion\"]/time/text()','//*[@id=\"despliegue-titular\"]/h1/text()','//*[@id=\"cuerpo-ad\"]//p//text()','https://www.cooperativa.cl/'),('https://www.deportes13.cl/futbol-nacional/en-medio-de-varios-conflictos-deportes-temuco-dio-el-batacazo-y-elimino-a','//div[@class=\"meta\"]/time/text()','//div[@class=\"row articulo-detalle-content\"]/article/h1/text()','//div[@class=\"cuerpo-content\"]//p//text()','https://www.t13.cl/'),('https://www.df.cl/empresas/construccion/ministra-lopez-anuncia-366-mil-millones-para-la-reconstruccion-tras','//span[@class=\"fecha-noticia\"]/text()','//*[@id=\"titulo_articulo\"]/text()','//*[@id=\"articleFree\"]//p//text()','https://www.df.cl/'),('https://www.diarioconcepcion.cl/ciudad/2023/06/28/advierten-peak-respiratorio-de-adultos-y-ninos-tras-inundaciones-en-la-region.html','//span[@class=\"the-single__date\"]/text()','//h1[@class=\"the-single__title\"]/text()','//div[@class=\"the-single__text\"]//p//text()','https://www.diarioconcepcion.cl/'),('https://www.diariodepuertomontt.cl/noticia/actualidad/2023/06/comienzan-los-pagos-del-aporte-extraordinario-de-invierno-2023','//*[@id=\"printableArea\"]/small/text()','//*[@id=\"printableArea\"]/h1/text()','//*[@id=\"printableArea\"]/div[2]/div[2]//text()','https://www.diariodepuertomontt.cl/'),('https://www.diarioeldia.cl/deportes/2023/6/28/que-aseguran-que-sergio-jadue-esta-en-quiebra-en-miami-dormiria-con-su-mama-102262.html','//div[@class=\"fecha\"]/text()','//h1[@class=\"titular\"]/text()','//*[@id=\"cuerpo-nota\"]//p//text()','https://www.diarioeldia.cl/'),('https://www.diarioelheraldo.cl/noticia/provincia-de-linares-aun-4-personas-desaparecidas-tras-desborde-de-rios','//div[@class=\"categoria\"]/text()[2]','//div[@class=\"titulo_destacada\"]/text()','//div[@class=\"contenido_not\"]//text()','https://www.diarioelheraldo.cl/'),('https://www.diarioestrategia.cl/texto-diario/mostrar/4362027/tasa-interes-creditos-consumo-aumento-junio','//span[@class=\"article_date\"]/span/text()','//h1[@class=\"article_title\"]/text()','//div[@id=\"article_content\"]/div//p//text()','https://www.diarioestrategia.cl/'),('https://www.diariolaregion.cl/el-puerto-sera-sede-de-torneo-del-deporte-adaptado-impulsado-por-teleton/','//span[@class=\"td-post-date\"]/time/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"td-post-content\"]//p//text()','https://www.diariolaregion.cl/'),('https://www.diariopaillaco.cl/noticia/actualidad/2023/06/autoridades-valoran-recuperacion-del-servicio-de-agua-potable-para-familias-de-la-aguada','//div[@id=\"printableArea\"]/small/text()','//*[@id=\"printableArea\"]/h1/text()','//*[@id=\"printableArea\"]/div[2]/div[2]//p//text()','https://www.diariopaillaco.cl/'),('https://www.diariosanjose.cl/noticia/deportes/2023/06/copa-del-mundo-de-azerbaiyan-el-nuevo-desafio-de-javiera-gomez','//*[@id=\"printableArea\"]/small/text()','//*[@id=\"printableArea\"]/h1/text()','//*[@id=\"printableArea\"]/div[2]/div[2]/p//text()','https://www.diariosanjose.cl/'),('https://www.diarioviregion.cl/index.php/noticias/25735-alcalde-pablo-silva-junto-a-ministros-recorrieron-sector-los-huertos-y-visitaron-a-damnificados','//dd[@class=\"published hasTooltip\"]/time/text()','//h1[@class=\"article-title\"]/text()','//section[@class=\"article-content\"]//p//text()','https://www.diarioviregion.cl/'),('https://www.eha.cl/noticia/deportes/joven-nadador-cristobal-villouta-obtuvo-tres-medallas-de-oro-en-campeonato-nacional-de-invierno-de-natacion','//*[@id=\"container\"]//div[@class=\"entry-meta meta-0 font-small mb-30\"]/span/text()','//h1[@class=\"post-title\"]/a/text()','//div[@class=\"content-desc\"]//p//text()','https://www.eha.cl/'),('https://www.elandino.cl/liceo-mixto-realizo-emotiva-ceremonia-de-despedida-al-profesor-modesto-montenegro-gonzalez/','//div[@class=\"post-date-bd\"]//span/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"post-content-bd\"]//p//text()','http://www.elandino.cl/'),('https://www.elcalbucano.cl/2023/07/brigada-de-robos-puerto-montt-recibe-reconocimiento-a-nivel-nacional/','//*[@id=\"post-79015\"]/div[1]/div[2]/header/div/span/time/text()','//div//h1[@class=\"entry-title\"]/text()','//div[@class=\"td-post-content tagdiv-type\"]//p//text()','https://www.elcalbucano.cl/'),('https://www.elciudadano.com/actualidad/cientificos-de-chile-crean-antibiotico-eficaz-para-el-combate-de-bacterias-multirresistentes/06/28/','//p[@class=\"text-muted\"]/small/span/@data-date','//h1[@class=\"mb-4 the_title\"]/text()','//article/div[2]/div[1]/div[2]//p//text()','https://www.elciudadano.com/'),('https://www.elcorreodelmoai.com/?p=2451','//span[@class=\"meta_date\"]/strong/text()','//h1[@class=\"cat_article_title\"]/text()','//*[@id=\"article_content\"]/p//text()','https://www.elcorreodelmoai.com/'),('https://www.eldesconcierto.cl/nacional/2023/06/28/servel-certifica-fuga-de-mas-de-mil-militantes-del-pdg-en-solo-un-mes-se-iba-a-acabar-luna-de-miel.html','//div[@class=\"the-article__about\"]/text()[3]','//h1[@class=\"the-article__title\"]/text()','//div[@class=\"js_the_content_nacional\"]//p//text()','https://www.eldesconcierto.cl/'),('https://www.eldinamo.cl/deportes/2023/06/28/los-errores-de-santiago-2023-que-reconoce-mayne-nicholls-y-sus-reparos-a-la-comision-investigadora/','//span[@class=\"fecha\"]/text()','//article[@class=\"principal\"]/h1/text()','//div[@class=\"the-content\"]//p//text()','https://www.eldinamo.cl/'),('https://www.elmostrador.cl/noticias/pais/2023/06/28/en-ningun-pais-ha-resultado-academico-uc-cuestiona-comision-contra-la-desinformacion-del-gobierno/','//div[@class=\"d-the-single\"]/time/text()','//div[@class=\"d-the-single\"]/h1/text()','//div[@class=\"d-the-single\"]/div[3]/p//text()','https://www.elmostrador.cl/'),('https://www.emol.com/noticias/Economia/2023/06/28/1099392/cifras-crecimiento-recaudacion-pacto-fiscal.html','//*[@id=\"barra-agencias-info\"]/div[1]/text()','//*[@id=\"cuDetalle_cuTitular_tituloNoticia\"]/text()','//*[@id=\"texto_noticia\"]/text()','https://www.emol.com/'),('https://www.itvpatagonia.com/noticias/regional/10-06-2023/joven-magallanico-de-17-anos-triunfa-en-el-tenis-de-mesa-y-se-convierte-en-un-ejemplo-de-perseverancia/','//h1[@class=\"tdb-title-text\"]/text()','//*[@id=\"tdi_73\"]/div/div[2]/div/div[3]/div/h1/text()','//div[@class=\"tdb-block-inner td-fix-index\"]//p//text()','https://www.itvpatagonia.com/'),('https://www.lacuarta.com/espectaculos/noticia/la-firme-con-priscilla-vargas-creo-que-a-la-sociedad-le-falta-amor-y-tratan-de-proyectarse-en-mi-y-repe/FJBSI3S2CRA7RDAJORJGO3XFSU/','//strong[@class=\"date primary-color\"]/text()','//h1[@class=\"h1 boldbold mb1 col-12 lg-col-9 md-col-8\"]/text()','//div[@class=\"col col-12 pl1 mn0 body\"]//p//text()','https://www.lacuarta.com/'),('https://www.ladiscusion.cl/tomas-barrios-fue-el-chileno-mas-beneficiado-en-el-ranking-atp/','//span[@class=\"posted-on\"]/text()','//h1[@class=\"entry-title single-post-title\"]/text()','//div[@class=\"entry-content article-body\"]//p//text()','https://www.ladiscusion.cl/'),('https://www.lanacion.cl/fiscal-de-antofagasta-informo-que-tras-allanar-domicilio-se-le-incautaron-computador-y-celular-a-daniel-andrade/','//time[@class=\"entry-date updated td-module-date\"]/text()','//h1[@class=\"tdb-title-text\"]/text()','//div[@class=\"tdb-block-inner td-fix-index\"]//p//text()','https://www.lanacion.cl/'),('https://www.latercera.com/la-tercera-pm/noticia/31-millones-para-campana-del-apruebo-consejo-para-la-transparencia-envia-al-ministerio-publico-nuevos-antecedentes-sobre-aportes-a-democracia-viva/A3ISKUCKOREBDL3JXH5Y6ZV6UQ/','//time/small/b/text()','//div[@class=\"hl\"]//div/text()','//div[@class=\"single-content\"]//p//text()','https://www.latercera.com/'),('https://www.latribuna.cl/deportes/2023/06/28/los-titulos-mundiales-de-argentina-y-uruguay-seran-usados-como-gancho-para-la-candidatura-2030.html','//div[@class=\"post-main\"]/div/time/text()','//div[@class=\"post-main\"]/h1/text()','//div[@class=\"post-main\"]//p//text()','https://www.latribuna.cl/'),('https://www.meganoticias.cl/nacional/419196-dos-personas-murieron-impacto-de-bala-pucon-region-de-la-araucania-8-7-2023.html','//div[@class=\"fechaHora\"]/time/text()','//div[@class=\"contenedor-contenido\"]/h1/text()','//div[@class=\"contenido-nota\"]//p//text()','https://www.meganoticias.cl/'),('https://www.observador.cl/anfp-reprogramo-partido-entre-union-la-calera-y-colo-colo-por-copa-chile/','//span[@class=\"entry-date published updated\"]/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"page-content\"]//p//text()','https://www.observador.cl/'),('https://www.publimetro.cl/social/2023/06/28/actualizan-estado-de-salud-del-valiente-gatito-que-se-lanzo-al-rio-cachapoal-en-medio-de-las-inundaciones/','//*[@id=\"skin-branding\"]//time/text()','//*[@id=\"skin-branding\"]//h1/text()','//div[@class=\"row\"]/article/article//p//text()','https://www.publimetro.cl/'),('https://www.puentealtoaldia.com/municipalidad-de-puente-alto-lanza-campana-para-ir-en-apoyo-a-damnificados-por-sistema-frontal/','//header//time/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"td-post-content tagdiv-type\"]//p//text()','https://www.puentealtoaldia.com/'),('https://www.rioenlinea.cl/salud-declara-riesgo-sanitario-en-vertedero-morrompulli-e-inicia-sumario-contra-municipio-y-empresa/','//span[@class=\"main-single-header-bar__text\"]/text()[1]','//h1[@class=\"main-single-header__title\"]/text()','//div[@class=\"main-single__content\"]//p//text()','https://www.rioenlinea.cl/'),('https://www.tarapacaonline.cl/2023/05/02/gobierno-niega-que-chile-este-en-recesion-tecnica-tras-el-mal-imacec-de-marzo/','//span[@class=\"entry-meta-date updated\"]/a/text()','//h1[@class=\"entry-title\"]/text()','//div[@class=\"entry-content clearfix\"]//p//text()','https://www.tarapacaonline.cl/');
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
INSERT INTO `red_social` VALUES ('Facebook','24horas.cl','2023-07-08',7500000,'MED42'),('Facebook','Chasquis Arica','2023-07-06',1200,'MED16'),('Facebook','CHV Noticias','2023-07-08',811000,'MED32'),('Facebook','CNN Chile','2023-07-06',1500000,'MED12'),('Facebook','Cooperativa','2023-07-06',2200000,'MED09'),('Facebook','Diario Concepcion','2023-06-28',67000,'MED01'),('Facebook','Diario El Andino de Los Andes','2023-07-06',30000,'MED21'),('Facebook','Diario El Cóndor','2023-07-06',45000,'MED18'),('Facebook','Diario El Día','2023-07-08',190000,'MED33'),('Facebook','Diario El Divisadero','2023-07-08',36000,'MED29'),('Facebook','Diario El Observador','2023-07-08',166000,'MED47'),('Facebook','Diario El Ovallino','2023-07-08',80000,'MED35'),('Facebook','Diario El Pingüino','2023-07-08',172000,'MED28'),('Facebook','Diario El Ranco','2023-07-08',37000,'MED45'),('Facebook','Diario Financiero','2023-07-06',224000,'MED11'),('Facebook','Diario La Nación','2023-07-06',4337,'MED20'),('Facebook','Diario La Prensa','2023-07-08',20000,'MED31'),('Facebook','Diario La Región','2023-07-08',14000,'MED34'),('Facebook','Diario La Tribuna','2023-07-08',170000,'MED39'),('Facebook','Diario Longino','2023-07-08',3200,'MED50'),('Facebook','Diario Paillaco','2023-07-08',33000,'MED46'),('Facebook','Diario San José','2023-07-08',2200,'MED49'),('Facebook','Diario Sexta Región','2023-07-06',5399,'MED19'),('Facebook','El Calbucano','2023-07-08',22000,'MED17'),('Facebook','El Ciudadano','2023-07-06',4700000,'MED14'),('Facebook','El Correo Del Moai','2023-06-30',2100,'MED02'),('Facebook','El Desconcierto','2023-07-06',423000,'MED13'),('Facebook','El Dinamo','2023-07-06',315000,'MED10'),('Facebook','El Heraldo Austral','2023-07-06',20000,'MED22'),('Facebook','El Heraldo Linares','2023-07-06',16000,'MED23'),('Facebook','El Mostrador','2023-07-06',535000,'MED06'),('Facebook','El Siglo','2023-07-06',14000,'MED15'),('Facebook','elinsularcl','2023-07-08',12200,'MED48'),('Facebook','Emol','2023-06-30',596000,'MED04'),('Facebook','HDN Digital','2023-07-08',56000,'MED38'),('Facebook','ITV Patagonia','2023-07-08',127000,'MED26'),('Facebook','La Cuarta','2023-07-06',820000,'MED05'),('Facebook','La Discusión','2023-07-08',145000,'MED40'),('Facebook','La Prensa Austral','2023-07-08',155000,'MED27'),('Facebook','La Tercera','2023-06-30',4300000,'MED03'),('Facebook','Meganoticias','2023-07-08',5200000,'MED43'),('Facebook','Publimetro Chile','2023-07-06',1000000,'MED08'),('Facebook','Puente Alto Al Dia','2023-07-06',77000,'MED07'),('Facebook','RioenLinea','2023-07-08',132000,'MED25'),('Facebook','T13','2023-07-08',4400000,'MED44'),('Facebook','Vertice TV','2023-07-08',49000,'MED24'),('Facebook','VTV','2023-07-08',19000,'MED30'),('Instagram','@24horascl','2023-07-08',1300000,'MED42'),('Instagram','@canalvtv.cl','2023-07-08',5400,'MED30'),('Instagram','@chvnoticias','2023-07-08',710000,'MED32'),('Instagram','@cnnchile','2023-07-06',1000000,'MED12'),('Instagram','@diarioconcepcion','2023-06-28',65900,'MED01'),('Instagram','@diarioelcondorsantacruz','2023-07-06',2930,'MED18'),('Instagram','@diarioelranco','2023-07-08',7958,'MED45'),('Instagram','@diariofinanciero','2023-07-06',292000,'MED11'),('Instagram','@diariolaprensa.cl','2023-07-08',2420,'MED31'),('Instagram','@diariosurlosrios','2023-07-08',18800,'MED46'),('Instagram','@diario_sexta_region','2023-07-06',3378,'MED19'),('Instagram','@el.ciudadano','2023-07-06',682000,'MED14'),('Instagram','@elcalbucanocl','2023-07-08',2057,'MED17'),('Instagram','@elcorreodelmoai','2023-06-30',1781,'MED02'),('Instagram','@eldesconcierto','2023-07-06',424000,'MED13'),('Instagram','@eldia.cl','2023-07-08',90000,'MED33'),('Instagram','@eldivisadero.cl','2023-07-08',8812,'MED29'),('Instagram','@elheraldoaustral','2023-07-06',12100,'MED22'),('Instagram','@elinsularcl','2023-07-08',1518,'MED48'),('Instagram','@elpinguinomultimedia','2023-07-08',44800,'MED28'),('Instagram','@elsiglochile','2023-07-06',12600,'MED15'),('Instagram','@el_mostrador','2023-07-06',483000,'MED06'),('Instagram','@emolcom','2023-06-30',71300,'MED04'),('Instagram','@eo_enlinea','2023-07-08',23200,'MED47'),('Instagram','@esstrategia.cl','2023-07-08',113,'MED36'),('Instagram','@hdnchile','2023-07-08',6663,'MED38'),('Instagram','@itvpatagonia','2023-07-08',28700,'MED26'),('Instagram','@lacuartacom','2023-07-06',427000,'MED05'),('Instagram','@ladiscusion.cl','2023-07-08',31600,'MED40'),('Instagram','@lanacioncl','2023-07-06',8419,'MED20'),('Instagram','@laterceracom','2023-06-30',465000,'MED03'),('Instagram','@latribuna.cl','2023-07-08',54800,'MED39'),('Instagram','@la_prensa_austral','2023-07-08',7972,'MED27'),('Instagram','@meganoticiascl','2023-07-08',3400000,'MED43'),('Instagram','@publimetrochile','2023-07-06',35200,'MED08'),('Instagram','@puentealtoaldia','2023-07-06',25800,'MED07'),('Instagram','@rioenlinea','2023-07-08',27300,'MED25'),('Instagram','@teletrece','2023-07-08',1700000,'MED44'),('Instagram','@thesantiagotimes','2023-07-08',508,'MED41'),('Instagram','@vertice.tv','2023-07-08',4567,'MED24'),('Instagram','el_dinamo','2023-07-06',72800,'MED10'),('Twitter','24 Horas','2023-07-08',4200000,'MED42'),('Twitter','Canal Vértice TV','2023-07-08',5034,'MED24'),('Twitter','Canal VTV','2023-07-08',12300,'MED30'),('Twitter','Chasquis','2023-07-06',2783,'MED16'),('Twitter','CHVNoticias','2023-07-08',1700000,'MED32'),('Twitter','CNN Chile','2023-07-06',4000000,'MED12'),('Twitter','Cooperativa','2023-07-06',3400000,'MED09'),('Twitter','Diario Concepcion','2023-06-28',66700,'MED01'),('Twitter','Diario Digital El Calbucano','2023-07-08',1993,'MED17'),('Twitter','Diario El Andino','2023-07-06',3160,'MED21'),('Twitter','Diario El Cóndor','2023-07-06',335,'MED18'),('Twitter','Diario El Día','2023-07-08',137100,'MED33'),('Twitter','Diario El Longino','2023-07-08',12800,'MED50'),('Twitter','Diario El Observador','2023-07-08',43000,'MED47'),('Twitter','Diario El Ovallino','2023-07-08',18000,'MED35'),('Twitter','Diario El Ranco','2023-07-08',7028,'MED45'),('Twitter','Diario Financiero','2023-07-06',295800,'MED11'),('Twitter','Diario La Prensa','2023-07-08',20100,'MED31'),('Twitter','Diario La Región','2023-07-08',15800,'MED34'),('Twitter','Diario La Tribuna','2023-07-08',18400,'MED39'),('Twitter','Diario Sexta Región','2023-07-06',4388,'MED19'),('Twitter','diario_eha','2023-07-06',10600,'MED22'),('Twitter','El Ciudadano','2023-07-06',582800,'MED14'),('Twitter','El Correo Del Moai','2023-06-30',506,'MED02'),('Twitter','El Desconcierto','2023-07-06',474600,'MED13'),('Twitter','El Dinamo','2023-07-06',508900,'MED10'),('Twitter','El Divisadero','2023-07-08',13900,'MED29'),('Twitter','El Mostrador','2023-07-06',1900000,'MED06'),('Twitter','El Siglo','2023-07-06',31800,'MED15'),('Twitter','elinsularcl','2023-07-08',1200,'MED48'),('Twitter','Emol.com','2023-06-30',2100000,'MED04'),('Twitter','Grupo DiarioSur Los Ríos | Prensa','2023-07-08',10900,'MED46'),('Twitter','HDN Digital','2023-07-08',3646,'MED38'),('Twitter','ITV Noticias','2023-07-08',18500,'MED26'),('Twitter','La Cuarta','2023-07-06',943300,'MED05'),('Twitter','La Discusión','2023-07-08',56000,'MED40'),('Twitter','La Nación Chile','2023-07-06',345200,'MED20'),('Twitter','La Prensa Austral','2023-07-08',28000,'MED27'),('Twitter','La Tercera','2023-06-30',2100000,'MED03'),('Twitter','Meganoticias','2023-07-08',300000,'MED43'),('Twitter','Pingüino Multimedia','2023-07-08',32800,'MED28'),('Twitter','Publimetro','2023-07-06',1200000,'MED08'),('Twitter','Puente Alto Al Dia','2023-07-06',28600,'MED07'),('Twitter','RioenLinea','2023-07-08',35400,'MED25'),('Twitter','T13','2023-07-08',4000000,'MED44');
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
INSERT INTO `sitio_web` VALUES ('https://www.diarioconcepcion.cl/','MED01'),('https://www.elcorreodelmoai.com/','MED02'),('https://www.latercera.com/','MED03'),('https://www.emol.com/','MED04'),('https://www.lacuarta.com/','MED05'),('https://www.elmostrador.cl/','MED06'),('https://www.puentealtoaldia.com/','MED07'),('https://www.publimetro.cl/','MED08'),('https://www.cooperativa.cl/','MED09'),('https://www.eldinamo.cl/','MED10'),('https://www.df.cl/','MED11'),('https://www.cnnchile.com/','MED12'),('https://www.eldesconcierto.cl/','MED13'),('https://www.elciudadano.com/','MED14'),('https://elsiglo.cl/','MED15'),('https://www.chasquis.cl/diario/','MED16'),('https://www.elcalbucano.cl/','MED17'),('https://diariocondor.cl/','MED18'),('https://www.diarioviregion.cl/','MED19'),('https://www.lanacion.cl/','MED20'),('http://www.elandino.cl/','MED21'),('https://www.eha.cl/','MED22'),('https://www.diarioelheraldo.cl/','MED23'),('https://www.diariodepuertomontt.cl/','MED24'),('https://www.rioenlinea.cl/','MED25'),('https://www.itvpatagonia.com/','MED26'),('https://laprensaaustral.cl/','MED27'),('https://elpinguino.com/','MED28'),('http://www.eldivisadero.cl/home','MED29'),('https://canalvtv.cl/','MED30'),('https://new.diariolaprensa.cl/','MED31'),('https://www.chvnoticias.cl/','MED32'),('https://www.diarioeldia.cl/','MED33'),('https://www.diariolaregion.cl/','MED34'),('http://www.elovallino.cl/','MED35'),('https://www.diarioestrategia.cl/','MED36'),('https://www.tarapacaonline.cl/','MED37'),('https://hdn.cl/','MED38'),('https://www.latribuna.cl/','MED39'),('https://www.ladiscusion.cl/','MED40'),('https://santiagotimes.cl/','MED41'),('https://www.24horas.cl/','MED42'),('https://www.meganoticias.cl/','MED43'),('https://www.t13.cl/','MED44'),('https://diarioelranco.cl/','MED45'),('https://www.diariopaillaco.cl/','MED46'),('https://www.observador.cl/','MED47'),('https://elinsular.cl/','MED48'),('https://www.diariosanjose.cl/','MED49'),('https://diariolongino.cl/','MED50');
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
INSERT INTO `ubicacion` VALUES ('UBI01','Santiago','Metropolitana','Chile','America Del Sur'),('UBI02','Valdivia','Los Rios','Chile','America Del Sur'),('UBI03','Arica','Arica Y Parinacota','Chile','America Del Sur'),('UBI04','Iquique','Tarapaca','Chile','America Del Sur'),('UBI05','Linares','Maule','Chile','America Del Sur'),('UBI06','Chillan','Ñuble','Chile','America Del Sur'),('UBI07','Los Angeles','Bio Bio','Chile','America Del Sur'),('UBI08','Concepcion','Bio Bio','Chile','America Del Sur'),('UBI09','Puerto Montt','Los Lagos','Chile','America Del Sur'),('UBI10','Ovalle','Coquimbo','Chile','America Del Sur'),('UBI11','La Serena','Coquimbo','Chile','America Del Sur'),('UBI12','Puerto Varas','Los Lagos','Chile','America Del Sur'),('UBI13','Curico','Maule','Chile','America Del Sur'),('UBI14','Coquimbo','Coquimbo','Chile','America Del Sur'),('UBI15','Coyhaique','Aysen','Chile','America Del Sur'),('UBI16','Punta Arenas','Magallanes','Chile','America Del Sur'),('UBI17','Rapa Nui','Valparaiso','Chile','America Del Sur'),('UBI18','Tarapaca','Tarapaca','Chile','America Del Sur'),('UBI19','La Union','Los Rios','Chile','America Del Sur'),('UBI20','Paillaco','Los Rios','Chile','America Del Sur'),('UBI21','Quillota','Valparaiso','Chile','America Del Sur'),('UBI22','Chiloe','Los Lagos','Chile','America Del Sur'),('UBI23','Calbuco','Los Lagos','Chile','America Del Sur'),('UBI24','Santa Cruz','O\'Higgins','Chile','America Del Sur'),('UBI25','San Fernando','O\'Higgins','Chile','America Del Sur'),('UBI26','Los Andes','Valparaiso','Chile','America Del Sur'),('UBI27','San Jose De La Mariquina','Los Rios','Chile','America Del Sur');
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

-- Dump completed on 2023-07-09 13:59:00
