-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: monkeypox
-- ------------------------------------------------------
-- Server version	10.2.44-MariaDB-1:10.2.44+maria~bionic

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
-- Table structure for table `casos`
--

DROP TABLE IF EXISTS `casos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_not` date DEFAULT NULL,
  `e_salud` varchar(10) NOT NULL,
  `clasificacion` int(11) DEFAULT NULL,
  `fecha_dia` date NOT NULL,
  `cerits` varchar(45) DEFAULT NULL,
  `semana` int(11) DEFAULT NULL,
  `tipo_doc` int(11) NOT NULL,
  `documento` varchar(25) NOT NULL,
  `apepat` varchar(45) DEFAULT NULL,
  `apemat` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `tipo_edad` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `sexo` int(11) DEFAULT NULL,
  `etnia` varchar(2) DEFAULT NULL,
  `pueblo_etnico` varchar(2) DEFAULT NULL,
  `genero` int(11) DEFAULT NULL,
  `orientacion` int(11) DEFAULT NULL,
  `trabajo_sexual` int(11) DEFAULT NULL,
  `pais` varchar(3) DEFAULT NULL,
  `ubigeo` varchar(6) DEFAULT NULL,
  `tipo_via` int(11) DEFAULT NULL,
  `nombre_via` varchar(100) DEFAULT NULL,
  `puerta` int(11) DEFAULT NULL,
  `agrupamiento` int(11) DEFAULT NULL,
  `nombre_agru` varchar(100) DEFAULT NULL,
  `manzana` varchar(5) DEFAULT NULL,
  `block` varchar(5) DEFAULT NULL,
  `interior` varchar(5) DEFAULT NULL,
  `kilometro` decimal(5,2) DEFAULT NULL,
  `lote` varchar(5) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `nacionalidad` varchar(3) DEFAULT NULL,
  `embarazo` int(11) DEFAULT NULL,
  `estado_emb` int(11) DEFAULT NULL,
  `inmunodeprimido` int(11) DEFAULT NULL,
  `estado_inm` int(11) DEFAULT NULL,
  `vih` int(11) DEFAULT NULL,
  `estado_ser` int(11) DEFAULT NULL,
  `cd4` int(11) DEFAULT NULL,
  `vacuna` int(11) DEFAULT NULL,
  `infecciones` int(11) DEFAULT NULL,
  `fecha_ini` date DEFAULT NULL,
  `semana_epi` int(11) DEFAULT NULL,
  `fecha_exa` date DEFAULT NULL,
  `severidad` int(11) DEFAULT NULL,
  `hospitalizado` int(11) DEFAULT NULL,
  `ingreso_hos` date DEFAULT NULL,
  `alta_hos` date DEFAULT NULL,
  `hospital_hos` varchar(10) DEFAULT NULL,
  `uci` int(11) DEFAULT NULL,
  `ingreso_uci` date DEFAULT NULL,
  `alta_uci` date DEFAULT NULL,
  `hospital_uci` varchar(10) DEFAULT NULL,
  `defuncion` int(11) DEFAULT NULL,
  `fecha_def` date DEFAULT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `contactos` int(11) DEFAULT NULL,
  `parejas` int(11) DEFAULT NULL,
  `cuantos` int(11) DEFAULT NULL,
  `animales` int(11) DEFAULT NULL,
  `animal` int(11) DEFAULT NULL,
  `animal_otro` varchar(45) DEFAULT NULL,
  `viaje` int(11) DEFAULT NULL,
  `tipo_con` int(11) DEFAULT NULL,
  `observaciones` mediumtext DEFAULT NULL,
  `investigador` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `usuario_reg` varchar(10) DEFAULT NULL,
  `fecha_reg` datetime DEFAULT NULL,
  `usuario_mod` varchar(10) DEFAULT NULL,
  `fecha_mod` datetime DEFAULT NULL,
  `usuario_eli` varchar(10) DEFAULT NULL,
  `fecha_eli` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casos`
--

LOCK TABLES `casos` WRITE;
/*!40000 ALTER TABLE `casos` DISABLE KEYS */;
/*!40000 ALTER TABLE `casos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casos_estadio`
--

DROP TABLE IF EXISTS `casos_estadio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casos_estadio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `macula` int(11) DEFAULT NULL,
  `papula` int(11) DEFAULT NULL,
  `vesicula` int(11) DEFAULT NULL,
  `pustula` int(11) DEFAULT NULL,
  `costra` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_casos_estadio_casos1_idx` (`id_casos`),
  CONSTRAINT `fk_casos_estadio_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casos_estadio`
--

LOCK TABLES `casos_estadio` WRITE;
/*!40000 ALTER TABLE `casos_estadio` DISABLE KEYS */;
/*!40000 ALTER TABLE `casos_estadio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casos_fisico`
--

DROP TABLE IF EXISTS `casos_fisico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casos_fisico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `id_parte` int(11) NOT NULL,
  `enumerar` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_casos_fisico_casos1_idx` (`id_casos`),
  KEY `fk_casos_fisico_cuerpo_humano1_idx` (`id_parte`),
  CONSTRAINT `fk_casos_fisico_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_casos_fisico_cuerpo_humano1` FOREIGN KEY (`id_parte`) REFERENCES `cuerpo_humano` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casos_fisico`
--

LOCK TABLES `casos_fisico` WRITE;
/*!40000 ALTER TABLE `casos_fisico` DISABLE KEYS */;
/*!40000 ALTER TABLE `casos_fisico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casos_infecciones`
--

DROP TABLE IF EXISTS `casos_infecciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casos_infecciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `chlamidya` int(11) DEFAULT NULL,
  `gonorrea` int(11) DEFAULT NULL,
  `herpes` int(11) DEFAULT NULL,
  `sifilis` int(11) DEFAULT NULL,
  `mycoplasma` int(11) DEFAULT NULL,
  `trichonomas` int(11) DEFAULT NULL,
  `verrugas` int(11) DEFAULT NULL,
  `otro` int(11) DEFAULT NULL,
  `infeccion_otro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_casos_infecciones_casos_idx` (`id_casos`),
  CONSTRAINT `fk_casos_infecciones_casos` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casos_infecciones`
--

LOCK TABLES `casos_infecciones` WRITE;
/*!40000 ALTER TABLE `casos_infecciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `casos_infecciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casos_signos`
--

DROP TABLE IF EXISTS `casos_signos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casos_signos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `cefalea` int(11) DEFAULT NULL,
  `mialgias` int(11) DEFAULT NULL,
  `espalda` int(11) DEFAULT NULL,
  `astenia` int(11) DEFAULT NULL,
  `fiebre` int(11) DEFAULT NULL,
  `linfadenopatia` int(11) DEFAULT NULL,
  `cutanea` int(11) DEFAULT NULL,
  `genital` int(11) DEFAULT NULL,
  `oral` int(11) DEFAULT NULL,
  `garganta` int(11) DEFAULT NULL,
  `conjuntivitis` int(11) DEFAULT NULL,
  `nauseas` int(11) DEFAULT NULL,
  `tos` int(11) DEFAULT NULL,
  `otros` int(11) DEFAULT NULL,
  `otro_signo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_casos_signos_casos1_idx` (`id_casos`),
  CONSTRAINT `fk_casos_signos_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casos_signos`
--

LOCK TABLES `casos_signos` WRITE;
/*!40000 ALTER TABLE `casos_signos` DISABLE KEYS */;
/*!40000 ALTER TABLE `casos_signos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casos_viajes`
--

DROP TABLE IF EXISTS `casos_viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casos_viajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `pais` varchar(3) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `fecha_ini` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_casos_viajes_casos1_idx` (`id_casos`),
  CONSTRAINT `fk_casos_viajes_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casos_viajes`
--

LOCK TABLES `casos_viajes` WRITE;
/*!40000 ALTER TABLE `casos_viajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `casos_viajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `apenom` varchar(70) DEFAULT NULL,
  `parentesco` int(11) DEFAULT NULL,
  `tipo_edad` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `sintomas` int(11) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `otro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_contactos_casos1_idx` (`id_casos`),
  CONSTRAINT `fk_contactos_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuerpo_humano`
--

DROP TABLE IF EXISTS `cuerpo_humano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuerpo_humano` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parte` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerpo_humano`
--

LOCK TABLES `cuerpo_humano` WRITE;
/*!40000 ALTER TABLE `cuerpo_humano` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuerpo_humano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `tipo_mue` int(11) DEFAULT NULL,
  `fecha_tom` date DEFAULT NULL,
  `fecha_res` date DEFAULT NULL,
  `resultado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_laboratorio_casos1_idx` (`id_casos`),
  CONSTRAINT `fk_laboratorio_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones`
--

DROP TABLE IF EXISTS `opciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pregunta` int(11) NOT NULL,
  `denominacion` varchar(45) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_opciones_pregunta1_idx` (`id_pregunta`),
  CONSTRAINT `fk_opciones_pregunta1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones`
--

LOCK TABLES `opciones` WRITE;
/*!40000 ALTER TABLE `opciones` DISABLE KEYS */;
INSERT INTO `opciones` VALUES (1,1,'PROBABLE',1),(2,1,'CONFIRMADO',1),(3,1,'DESCARTADO',1),(4,2,'AÑOS',1),(5,2,'MESES',1),(6,2,'DIAS',1),(9,3,'HOMBRE',1),(10,3,'MUJER',1),(11,4,'MASCULINO',1),(12,4,'FEMENINO',1),(13,4,'TRANSGENERO',1),(14,4,'DESCONOCIDO',1),(15,4,'OTRO',1),(16,5,'HETEROSEXUAL',1),(17,5,'HOMOSEXUAL',1),(18,5,'BISEXUAL',1),(19,5,'NO DETERMINADO',1),(20,6,'SI',1),(21,6,'NO',1),(22,7,'SI',1),(23,7,'NO',1),(24,7,'DESCONOCIDO',1),(25,8,'1er TRIMESTRE',1),(26,8,'2do TRIMESTRE',1),(27,8,'3er TRIMESTRE',1),(28,8,'PUERPERA',1),(29,9,'SI',1),(30,9,'NO',1),(31,9,'DESCONOCIDO',1),(32,10,'POR ENFERMEDAD',1),(33,10,'POR MEDICACION',1),(34,10,'RAZON DESCONOCIDA',1),(35,11,'POSITIVO',1),(36,11,'NEGATIVO',1),(37,11,'DESCONOCIDO',1),(38,12,'TAMIZAJE REACTIVO',1),(39,12,'CONFIRMADO POSITIVO',1),(40,13,'SI',1),(41,13,'NO',1),(42,13,'DESCONOCIDO',1),(43,14,'SI',1),(44,14,'NO',1),(45,14,'DESCONOCIDO',1),(46,15,'CASO LEVE',1),(47,15,'CASO MODERADO',1),(48,15,'CASO SEVERO',1),(49,16,'SI',1),(50,16,'NO',1),(51,17,'SI',1),(52,17,'NO',1),(53,18,'SI',1),(54,18,'NO',1),(55,19,'SI',1),(56,19,'NO',1),(57,20,'SI',1),(58,20,'NO',1),(59,21,'1',1),(60,21,'3',1),(61,21,'MAS DE 5',1),(62,22,'SI',1),(63,22,'NO',1),(64,23,'PERRO',1),(65,23,'GATO',1),(66,23,'ROEDOR',1),(67,23,'OTROS',1),(68,24,'SI',1),(69,24,'NO',1),(71,25,'RELACIONES SEXUALES CON SU PAREJA',1),(72,25,'RELACIONES C/DESCONOCIDOS O P/MULTIPLES',1),(73,25,'PERSONAS CON EXANTEMA',1),(74,25,'MATERIAL POTENCIALMENTE CONTAMINADO',1);
/*!40000 ALTER TABLE `opciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'CLASIFICACION DEL CASO',1),(2,'TIPO DE EDAD',1),(3,'SEXO AL NACER',1),(4,'IDENTIDAD DE GENERO',1),(5,'ORIENTACION SEXUAL',1),(6,'REALIZA TRABAJO SEXUAL',1),(7,'EMBARAZO',1),(8,'ESTADO DE EMBARAZO',1),(9,'INMUNODEPRIMIDO',1),(10,'ESTADO INMUNODEPRIMIDO',1),(11,'ESTADO SEROLOGICO',1),(12,'ESTADO SEROLOGICO POSITIVO',1),(13,'RECIBIO VACUNA CONTRA VIRUELA',1),(14,'INFECCIONES PREVIAS',1),(15,'SEVERIDAD DEL CUADRO CLINICO',1),(16,'HOSPITALIZADO',1),(17,'UCI',1),(18,'DEFUNCION',1),(19,'CONTACTO CON CASOS',1),(20,'PAREJAS SEXUALES MULTIPLES',1),(21,'CUANTOS',1),(22,'ANIMALES DOMESTICOS O DE CRIANZA',1),(23,'ANIMAL',1),(24,'ANTECEDENTES DE VIAJE',1),(25,'TIPO DE CONTACTO',1),(26,'HISOPADO DE LESION DERMICA',1),(27,'PIEL ESFACELADA O COSTRA',1),(28,'HISOPADO NASOFARINGEO/OROFARINGEO',1),(29,'SANGRE',1);
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-25  8:19:01
