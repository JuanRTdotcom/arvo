-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-08-2022 a las 23:56:16
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `monkeypox`
--
CREATE DATABASE IF NOT EXISTS `monkeypox` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `monkeypox`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales_contacto`
--

DROP TABLE IF EXISTS `animales_contacto`;
CREATE TABLE IF NOT EXISTS `animales_contacto` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `id_caso` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL,
  `otros` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `animales_contacto`
--

INSERT INTO `animales_contacto` (`id`, `id_caso`, `id_opcion`, `otros`) VALUES
(4, 43, 64, ''),
(5, 43, 66, ''),
(6, 43, 67, 'AMIGO RATAMANCHE'),
(7, 44, 64, ''),
(8, 44, 111, ''),
(9, 44, 66, ''),
(10, 45, 64, ''),
(11, 46, 64, ''),
(12, 46, 66, ''),
(13, 47, 64, ''),
(14, 47, 66, ''),
(17, 48, 64, ''),
(18, 48, 66, ''),
(21, 49, 111, ''),
(22, 49, 65, ''),
(26, 56, 64, ''),
(27, 56, 65, ''),
(28, 56, 67, 'OTROS'),
(29, 61, 64, ''),
(30, 61, 65, ''),
(31, 62, 64, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos`
--

DROP TABLE IF EXISTS `casos`;
CREATE TABLE IF NOT EXISTS `casos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_not` date DEFAULT NULL,
  `e_salud` varchar(10) NOT NULL,
  `clasificacion` int(11) DEFAULT NULL,
  `fecha_dia` date NOT NULL,
  `cerits` varchar(45) DEFAULT NULL,
  `semana` int(11) DEFAULT NULL,
  `tipo_doc` int(11) NOT NULL,
  `documento` varchar(25) NOT NULL,
  `ocupacion` varchar(100) DEFAULT NULL,
  `apepat` varchar(45) DEFAULT NULL,
  `apemat` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `tipo_edad` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `sexo` int(11) DEFAULT NULL,
  `etnia` varchar(2) DEFAULT NULL,
  `pueblo_etnico` varchar(2) DEFAULT NULL,
  `otro_etnia` varchar(80) DEFAULT NULL,
  `pob_especifica` int(11) DEFAULT NULL,
  `otro_pob_especifica` varchar(50) NOT NULL,
  `orientacion` int(11) DEFAULT NULL,
  `otro_orientacion` varchar(45) DEFAULT NULL,
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
  `tiempo_residencia` varchar(100) DEFAULT NULL,
  `tipo_tiempo_residencia` int(11) DEFAULT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `nacionalidad` varchar(3) DEFAULT NULL,
  `embarazo` int(11) DEFAULT NULL,
  `nro_semanas_embarazo` int(11) DEFAULT NULL,
  `inmunodeprimido` int(11) DEFAULT NULL,
  `estado_inm` int(11) DEFAULT NULL,
  `detalle_inmunodeprimido` varchar(50) DEFAULT NULL,
  `vih` int(11) DEFAULT NULL,
  `tar` int(11) DEFAULT NULL,
  `ultima_fecha_vih` date DEFAULT NULL,
  `estado_ser` int(11) DEFAULT NULL,
  `cd4` int(11) DEFAULT NULL,
  `vacuna` int(11) DEFAULT NULL,
  `infecciones` int(11) DEFAULT NULL,
  `fecha_ini` date DEFAULT NULL,
  `semana_epi` int(11) DEFAULT NULL,
  `fecha_exa` date DEFAULT NULL,
  `distribucion_exantema` int(11) DEFAULT NULL,
  `cara` varchar(2) DEFAULT NULL,
  `genital` varchar(2) DEFAULT NULL,
  `oral` varchar(2) DEFAULT NULL,
  `torax` varchar(2) DEFAULT NULL,
  `extremidades` varchar(2) DEFAULT NULL,
  `severidad` int(11) DEFAULT NULL,
  `severidad_exantema` int(11) DEFAULT NULL,
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
  `observaciones` mediumtext,
  `investigador` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `parejas_sexuales` int(11) DEFAULT NULL,
  `domiciliarios` int(11) DEFAULT NULL,
  `extradomiciliarios` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `usuario_reg` varchar(10) DEFAULT NULL,
  `fecha_reg` datetime DEFAULT NULL,
  `usuario_mod` varchar(10) DEFAULT NULL,
  `fecha_mod` datetime DEFAULT NULL,
  `usuario_eli` varchar(10) DEFAULT NULL,
  `fecha_eli` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `casos`
--

INSERT INTO `casos` (`id`, `fecha_not`, `e_salud`, `clasificacion`, `fecha_dia`, `cerits`, `semana`, `tipo_doc`, `documento`, `ocupacion`, `apepat`, `apemat`, `nombres`, `fecha_nac`, `tipo_edad`, `edad`, `sexo`, `etnia`, `pueblo_etnico`, `otro_etnia`, `pob_especifica`, `otro_pob_especifica`, `orientacion`, `otro_orientacion`, `trabajo_sexual`, `pais`, `ubigeo`, `tipo_via`, `nombre_via`, `puerta`, `agrupamiento`, `nombre_agru`, `manzana`, `block`, `interior`, `kilometro`, `lote`, `referencia`, `tiempo_residencia`, `tipo_tiempo_residencia`, `celular`, `nacionalidad`, `embarazo`, `nro_semanas_embarazo`, `inmunodeprimido`, `estado_inm`, `detalle_inmunodeprimido`, `vih`, `tar`, `ultima_fecha_vih`, `estado_ser`, `cd4`, `vacuna`, `infecciones`, `fecha_ini`, `semana_epi`, `fecha_exa`, `distribucion_exantema`, `cara`, `genital`, `oral`, `torax`, `extremidades`, `severidad`, `severidad_exantema`, `hospitalizado`, `ingreso_hos`, `alta_hos`, `hospital_hos`, `uci`, `ingreso_uci`, `alta_uci`, `hospital_uci`, `defuncion`, `fecha_def`, `lugar`, `contactos`, `parejas`, `cuantos`, `animales`, `animal`, `animal_otro`, `viaje`, `tipo_con`, `observaciones`, `investigador`, `cargo`, `telefono`, `parejas_sexuales`, `domiciliarios`, `extradomiciliarios`, `estado`, `usuario_reg`, `fecha_reg`, `usuario_mod`, `fecha_mod`, `usuario_eli`, `fecha_eli`) VALUES
(1, '2022-08-02', '', NULL, '0000-00-00', NULL, 23, 0, '', NULL, 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', NULL, 4, 25, 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2022-08-02', '', NULL, '0000-00-00', NULL, 23, 0, '', NULL, 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', NULL, 4, 25, 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2022-08-02', '', NULL, '0000-00-00', NULL, 23, 0, '', NULL, 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', NULL, 4, 24, 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2022-08-02', '', NULL, '0000-00-00', NULL, 12, 0, '', NULL, 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', NULL, 4, 13, 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2022-08-02', '', NULL, '0000-00-00', NULL, 12, 0, '', NULL, 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', NULL, 4, 25, 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2022-08-02', '', NULL, '0000-00-00', NULL, 1, 77, '', NULL, 'CABRERA', 'MANDARIN', 'ALBERTO LUIS', NULL, 4, 25, 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2022-08-02', '', NULL, '0000-00-00', NULL, 12, 0, '', NULL, 'LOPES', 'MENU', 'ALICIA MELISSA', NULL, 4, 25, 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2022-08-02', '', NULL, '0000-00-00', NULL, 5, 81, '77878787', NULL, 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', NULL, 4, 25, 10, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2022-08-04', '', NULL, '0000-00-00', NULL, 12, 82, '77271360', NULL, 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', NULL, 5, 24, 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2022-08-11', '010306A303', NULL, '0000-00-00', 'CERITIS', 12, 78, '77271360', NULL, 'ruiz', 'trujillo', 'JUAN VICTOR', '2022-08-03', 4, 23, 9, '5', '', '', 86, '', 17, '', NULL, '171', '130704', 9, 'adada', 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdas', '', 4, '1212', '171', 21, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2022-08-04', '010203A301', NULL, '0000-00-00', 'asdas', 12, 83, '1221331', NULL, 'RUIZ', 'TRUJILLO', 'luis', '2022-08-05', 4, 12, 9, '3', '4', '', 87, '', 17, '', NULL, '171', '130503', 1, 'asasda', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdadas', '', 4, '1212312312', '171', 21, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '0000-00-00', '010306A303', NULL, '0000-00-00', 'mi certis', 12, 77, '77271360', NULL, 'ruiz', 'trujillo', 'juan ruiz', '2022-08-11', 4, 12, 9, '5', '', 'NULL', 87, 'NULL', 17, '', NULL, '171', '', 3, 'alfonso ugarte', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cerca de año', '', 4, '960655272', '171', 21, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1039', '2022-08-04 15:05:21', NULL, NULL, NULL, NULL),
(13, '0000-00-00', '010205A201', NULL, '0000-00-00', 'ada', 12, 77, '77271260', NULL, 'ruiz', 'tujillo', 'juan', '2022-08-11', 4, 23, 9, '', '', '', 86, '', 19, 'otro', NULL, '171', '', 2, 'av  mansiche', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'frente a polleria', '', 4, '960655272', '171', 21, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1039', '2022-08-04 15:58:22', NULL, NULL, NULL, NULL),
(14, '2022-08-04', '010702A208', NULL, '2022-08-12', 'adada', 12, 77, '2311', NULL, 'asda', 'asda', 'adas', '2022-08-12', 4, 12, 9, '6', '', 'dada', 88, '', 18, '', NULL, '171', '', 2, 'ada', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdas', '', 4, '1231', '171', 21, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '1039', '2022-08-04 16:36:05', NULL, NULL, NULL, NULL),
(15, '2022-08-04', '010701A205', NULL, '2022-08-04', 'micertis', 1, 79, '77271360', NULL, 'ruiz', 'trujillo', 'JUAN VICTOR', '2022-08-04', 4, 23, 10, '6', '', 'curso', 88, '', 19, 'normal', NULL, '171', '', 1, 'aasd', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fssdfs', '2', 4, '992025652', '168', 20, 2, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '1039', '2022-08-04 19:13:24', NULL, NULL, NULL, NULL),
(16, '2022-08-04', '010206A303', NULL, '2022-08-04', 'dasdas', 5, 79, '1216546489', NULL, 'rui', 'trujillo', 'jaun', '2022-08-04', 4, 12, 9, '2', '', '', 89, 'dsa', 19, 'sda', NULL, '171', '100506', 2, 'dads', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dasssa', '22', 90, '54445', '160', 21, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0', '0', '0', '0', '0', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '1039', '2022-08-04 20:39:59', NULL, NULL, NULL, NULL),
(17, '2022-08-04', '010203A301', 1, '2022-08-04', 'cea', 1, 81, '1221', NULL, 'ada', 'asda', 'asdsa', '2022-08-04', 4, 12, 9, '3', '2', '', 86, '', 17, '', NULL, '171', '040305', 11, 'asdad', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12asda', NULL, NULL, '12312', '171', 20, 12, 29, 32, 'adas', 29, 98, '2022-08-04', NULL, 0, 29, NULL, '2022-08-04', NULL, '2022-08-04', 96, '1', '2', '4', '5', '6', NULL, 101, 49, '2022-08-04', '2022-08-04', 'asda', 51, '2022-08-04', '2022-08-04', 'ada', 53, '2022-08-04', 'ada', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'adas', 'adas', 'asda', 'ada', 12, 21, 21, 1, '1039', '2022-08-04 23:02:36', NULL, NULL, NULL, NULL),
(18, '2022-08-04', '010203A302', 1, '2022-08-04', 'MI CERIS', 12, 77, '77271360', NULL, 'RUIZ', 'TRUJILLO', 'JUAN CITOR', '2022-08-04', 4, 25, 9, '4', '23', '', 89, 'NORMAL', 19, 'NORMAL ORIENTACION', NULL, '171', '130608', 11, 'ALFONSO UGARTE 353', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CERC DEL COLEGIO RAÑE', '8', 95, '960655272', '168', 20, 24, 30, 32, '', 30, 98, '2022-08-04', NULL, 0, 40, NULL, '2022-08-04', NULL, '2022-08-04', 97, '1', '', '', '2', '', NULL, 101, 50, '0000-00-00', '2022-08-04', '', 52, '2022-08-04', '2022-08-04', '', 53, '2022-08-04', 'HOSPITAL DEL NIÑO', 55, NULL, NULL, NULL, 91, NULL, 91, NULL, 'EL PACIENTE MURIO MIENTRAS VENIA DE CAMINO AL CENTRO MEDICO', 'JUAN VICTOR RUIZ TRUJILLO', 'DEV SOFTWARE', '960655272', 1, 4, 0, 1, '1039', '2022-08-04 23:16:56', NULL, NULL, NULL, NULL),
(19, '2022-08-04', '010206A201', 2, '2022-08-04', 'asda', 1, 78, '2131', NULL, 'asd', 'as', 'asd', '2022-08-04', 4, 12, 9, '3', '2', '', 86, '', 17, '', NULL, '171', '', 1, 'adas', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ada', NULL, NULL, '21312', '171', 21, NULL, 30, 32, '', 30, 98, '2022-08-04', NULL, 0, 41, NULL, '2022-08-04', NULL, '2022-08-04', 96, '', '1', '2', '', '', NULL, 100, 49, '0000-00-00', '2022-08-04', '', 51, '2022-08-04', '2022-08-04', '', 53, '2022-08-04', '', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'adsa', 'asdsa', 'asda', 'asda', 1, 2, 1, 0, '1039', '2022-08-04 23:50:53', NULL, NULL, NULL, NULL),
(20, '2022-08-04', '010301A201', 1, '2022-08-04', 'asdas', 1, 79, '545', NULL, 'asd', 'asds', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2022-08-04', 4, 21, 9, '3', '3', '', 87, '', 18, '', NULL, '171', '', 1, 'asds', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asd', NULL, NULL, '65', '171', 21, NULL, 29, 33, 'adasda', 31, 98, '2022-08-04', NULL, 0, 42, NULL, '2022-08-04', NULL, '2022-08-04', 97, '1', '', '2', '', '', NULL, 101, 50, '2022-08-04', '2022-08-04', '', 52, '2022-08-04', '2022-08-04', '', 53, '2022-08-04', '', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'asdads', 'aaaaaaaaaaaaaaaaaaaaa', 'asdsa', 'asda', 12, 123, 123, 0, '1039', '2022-08-04 23:55:28', NULL, NULL, NULL, NULL),
(21, '2022-08-04', '010101A201', 1, '2022-08-04', 'asd', 1, 79, '1123', NULL, 'asd', 'as', 'wwwwwwwwwwwwwwwww', '2022-08-04', 4, 123, 9, '2', '', '', 86, '', 17, '', NULL, '171', '050301', 11, 'ad', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asada', NULL, NULL, '213', '171', 21, NULL, 30, 33, 'asdasd', 30, 98, '2022-08-04', NULL, 0, 42, NULL, '2022-08-04', NULL, '2022-08-04', 97, '1', '', '', '2', '', NULL, 101, 50, '2022-08-04', '2022-08-04', 'asda', 51, '2022-08-04', '2022-08-04', 'adas', 53, '2022-08-04', 'asda', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'adada', 'asdsa', 'adsa', 'ads', 213, 12, 123, 0, '1039', '2022-08-05 00:00:10', NULL, NULL, NULL, NULL),
(22, '2022-08-05', '010205A308', 1, '2022-08-05', 'dssad', 1, 78, '2131', NULL, 'asd', 'asd', 'uuuuuuuuuuuuuuuuuuuu', '2022-08-05', 4, 123, 9, '3', '3', '', 88, '', 18, '', NULL, '171', '040304', 2, 'asdas', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adas', NULL, NULL, '21312', '171', 21, NULL, 30, 32, 'asdas', 30, 98, '2022-08-05', NULL, 0, 41, NULL, '2022-08-05', NULL, '2022-08-05', 97, '1', '', '', '2', '', NULL, 100, 49, '2022-08-04', '2022-08-05', '', 51, '2022-08-05', '2022-08-05', '', 53, '2022-08-05', '', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'adasdas', 'asdas', 'adsa', 'adsas', 11, 1, 11, 1, '1039', '2022-08-05 00:03:19', NULL, NULL, NULL, NULL),
(24, '2022-08-05', '010305A301', 2, '2022-08-05', 'adada', 53, 80, '123', NULL, 'CABRERA', 'as', 'zzzzzzzz', '2022-08-05', 4, 12, 9, '1', '', '', 88, '', 17, '', NULL, '171', '', 10, 'adas', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdas', NULL, NULL, '123', '171', 21, NULL, 30, 33, 'asdasd', 30, 98, '2022-08-05', NULL, 0, 41, NULL, '2022-08-05', NULL, '2022-08-05', 97, '1', '2', '', '', '', NULL, 101, 49, '2022-08-04', '2022-08-05', '', 51, '2022-08-05', '2022-08-05', 'asdas', 53, '2022-08-05', 'asdasd', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'asdasd', 'sadas', 'dasas', 'adsasd', 12, 12, 12, 0, '1039', '2022-08-05 00:11:45', NULL, NULL, NULL, NULL),
(25, '2022-08-05', '010701A204', 2, '2022-08-05', 'asdas', 1, 78, '21312', NULL, 'ada', 'asd', 'sada', '2022-08-05', 4, 12, 9, '1', '', '', 86, '', 16, '', NULL, '171', '', 11, 'dsad', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asda', NULL, NULL, '213213', '171', 20, 21, 30, 32, 'asdsa', 30, 98, '2022-08-05', NULL, 0, 41, NULL, '2022-08-05', NULL, '2022-08-05', 97, '1', '2', '', '', '', NULL, 101, 49, '2022-08-04', '2022-08-05', 'asd', 51, '2022-08-05', '2022-08-05', 'asd', 53, '2022-08-05', 'asd', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'asdsaasdasdsa', 'asdsa', 'asdas', 'asdas', 123, 12, 12, 0, '1039', '2022-08-05 00:19:46', NULL, NULL, NULL, NULL),
(29, '2022-08-05', '010305A301', 2, '2022-08-05', 'asdad', 12, 77, '123', NULL, 'asdasds', 'asdas', 'adas', '2022-08-05', 4, 12, 9, '1', '', '', 88, '', 16, '', NULL, '171', '', 1, 'adas', 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdas', NULL, NULL, '213', '171', 21, NULL, 30, 32, 'asd', 30, 98, '2022-08-05', NULL, 0, 42, NULL, '2022-08-05', NULL, '2022-08-05', 96, '1', '2', '', '', '', NULL, 101, 49, '2022-08-04', '2022-08-05', 'asda', 51, '2022-08-05', '2022-08-05', 'asd', 53, '2022-08-05', 'asd', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'asdasdadasd', 'adas', 'ads', 'ad', 12, 12, 13, 0, '1039', '2022-08-05 00:59:45', NULL, NULL, NULL, NULL),
(30, '2022-08-05', '010202A301', 2, '2022-08-05', 'asda', 1, 80, '1231', NULL, 'asd', 'asd', 'asda', '2022-08-05', 4, 123, 9, '2', '', '', 88, '', 16, '', NULL, '171', '', 11, 'asda', 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asd', NULL, NULL, '213', '171', 21, NULL, 30, 32, 'asd', 30, 98, '2022-08-05', NULL, 0, 41, NULL, '2022-08-05', NULL, '2022-08-05', 97, '1', '', '2', '', '', NULL, 100, 49, '2022-08-04', '2022-08-05', '', 51, '2022-08-05', '2022-08-05', '', 53, '2022-08-05', '', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'asda', 'ada', 'ada', 'adas', 1, 1, 1, 0, '1039', '2022-08-05 01:09:13', NULL, NULL, NULL, NULL),
(31, '2022-08-05', '010202A301', 2, '2022-08-05', 'asda', 1, 80, '1231', NULL, 'asd', 'asd', 'asda', '2022-08-05', 4, 123, 9, '2', '', '', 88, '', 16, '', NULL, '171', '', 11, 'asda', 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asd', NULL, NULL, '213', '171', 21, NULL, 30, 32, 'asd', 30, 98, '2022-08-05', NULL, 0, 41, NULL, '2022-08-05', NULL, '2022-08-05', 97, '1', '', '2', '', '', NULL, 100, 49, '2022-08-04', '2022-08-05', '', 51, '2022-08-05', '2022-08-05', '', 53, '2022-08-05', '', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'asda', 'ada', 'ada', 'adas', 1, 1, 1, 0, '1039', '2022-08-05 01:09:58', NULL, NULL, NULL, NULL),
(32, '2022-08-05', '010202A301', 2, '2022-08-05', 'asda', 1, 80, '1231', NULL, 'asd', 'asd', 'asda', '2022-08-05', 4, 123, 9, '2', '', '', 88, '', 16, '', NULL, '171', '', 11, 'asda', 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asd', NULL, NULL, '213', '171', 21, NULL, 30, 32, 'asd', 30, 98, '2022-08-05', NULL, 0, 41, NULL, '2022-08-05', NULL, '2022-08-05', 97, '1', '', '2', '', '', NULL, 100, 49, '2022-08-04', '2022-08-05', '', 51, '2022-08-05', '2022-08-05', '', 53, '2022-08-05', '', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'asda', 'ada', 'ada', 'adas', 1, 1, 1, 0, '1039', '2022-08-05 01:13:32', NULL, NULL, NULL, NULL),
(38, '2022-08-05', '010306A301', 1, '2022-08-05', 'asdsad', 12, 78, '12313', NULL, 'asd', 'asda', 'adas', '2022-08-05', 4, 12, 9, '5', '', '', 86, '', 16, '', NULL, '171', '', 1, 'asda', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aasd', NULL, NULL, '213121', '171', 21, NULL, 29, 33, 'SOY LOCO', 29, 98, '2022-08-05', NULL, 0, 40, 43, '2022-08-05', NULL, '2022-08-05', 97, '1', '2', '', '', '3', NULL, 101, 49, '2022-08-04', '2022-08-05', '', 51, '2022-08-05', '2022-08-05', '', 53, '2022-08-05', '', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'DSADA', 'AADA', 'AA', 'ADA', 12, 1, 2, 1, '1039', '2022-08-05 02:17:57', NULL, NULL, NULL, NULL),
(39, '2022-08-05', '010306A301', 1, '2022-08-05', 'asdsad', 12, 78, '12313', NULL, 'asd', 'asda', 'adas', '2022-08-05', 4, 12, 9, '5', '', '', 86, '', 16, '', NULL, '171', '', 1, 'asda', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aasd', NULL, NULL, '213121', '171', 21, NULL, 29, 33, 'SOY LOCO', 29, 98, '2022-08-05', NULL, 0, 40, 43, '2022-08-05', NULL, '2022-08-05', 97, '1', '2', '', '', '3', NULL, 101, 49, '2022-08-04', '2022-08-05', '', 51, '2022-08-05', '2022-08-05', '', 53, '2022-08-05', '', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'DSADA', 'AADA', 'AA', 'ADA', 12, 1, 2, 1, '1039', '2022-08-05 02:18:19', NULL, NULL, NULL, NULL),
(40, '2022-08-05', '010306A301', 1, '2022-08-05', 'asdsad', 12, 78, '12313', NULL, 'asd', 'asda', 'adas', '2022-08-05', 4, 12, 9, '5', '', '', 86, '', 16, '', NULL, '171', '', 1, 'asda', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aasd', NULL, NULL, '213121', '171', 21, NULL, 29, 33, 'SOY LOCO', 29, 98, '2022-08-05', NULL, 0, 40, 43, '2022-08-05', NULL, '2022-08-05', 97, '1', '2', '', '', '3', NULL, 101, 49, '2022-08-04', '2022-08-05', '', 51, '2022-08-05', '2022-08-05', '', 53, '2022-08-05', '', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'DSADA', 'AADA', 'AA', 'ADA', 12, 1, 2, 1, '1039', '2022-08-05 02:19:28', NULL, NULL, NULL, NULL),
(43, '2022-08-05', '010206A301', 2, '2022-08-05', 'CERITIS', 12, 77, '12784578', NULL, 'CAMILO', 'CAMELO', 'CAMILOOOO', '2022-08-05', 4, 12, 9, '2', '', '', 86, '', 17, '', NULL, '171', '040204', 1, 'PATAZ', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PATAZ 12 15', '12', 94, '960655272', '154', 21, NULL, 29, 33, 'TENGO ASMA', 29, 99, '2022-08-03', NULL, 0, 42, 43, '2022-08-05', NULL, '2022-08-05', 96, '', '3', '', '2', '1', NULL, 101, 49, '2022-08-04', '2022-08-05', 'HOSPITAL B', 51, '2022-08-05', '2022-08-05', 'ADASDA', 53, '2022-08-05', 'ADASDSADA', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'TODO CONFORME , PUEDE MORIR', 'YO PE CAUSIA', 'ING DE SISTEMAS', '960655272', 2, 12, 24, 0, '1039', '2022-08-05 03:10:43', NULL, NULL, NULL, NULL),
(44, '2022-08-05', '010202A308', 3, '2022-08-05', 'adasd', 9, 79, '12321313', NULL, 'siuuu', 'siuuu', 'vuuuuuuuuuuuuuuuuuuu', '2022-08-05', 5, 23, 10, '2', '', '', 86, '', 17, '', NULL, '171', '030302', 11, 'asdadasd', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dfdfasdsa', NULL, NULL, '12313123', '171', 21, NULL, 29, 33, 'TOY MALAITO', 30, 98, '2022-08-05', NULL, 0, 40, 43, '2022-08-05', NULL, '2022-08-05', 96, '1', '', '2', '', '3', NULL, 100, 49, '2022-08-04', '2022-08-05', 'HOSPITAL B', 51, '2022-08-05', '2022-08-05', 'HOSPITAL L', 53, '2022-08-16', 'MI CASA', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'TODO UN TESORILLO', 'JULIA', 'DOCTORA', '999999999', 1, 3, 12, 1, '1039', '2022-08-05 03:38:11', NULL, NULL, NULL, NULL),
(45, '2022-08-02', '010114A303', 3, '2022-08-04', 'MI CERITS', 12, 77, '77271360', 'DESARROLLADOR DE SOFTWARE', 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', '1996-08-24', 4, 25, 9, '1', '', '', 89, '', 16, '', NULL, '171', '130107', 1, 'ALFONSO UGARTE', 353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A TRES CUADRAS DE LA PLAZA DE MOCHE', '2', 93, '960655272', '230', 21, NULL, 29, 33, 'DEPRESION', 29, 98, '2022-08-02', NULL, 0, 40, 43, '2022-08-02', NULL, '2022-08-04', 97, '1', '2', '', '', '3', NULL, 101, 49, '2022-08-04', '2022-08-05', 'HOSPITAL B', 51, '2022-08-05', '2022-08-05', 'HOSPITAL R', 53, '2022-08-05', 'CEMENTERIO LA PAZ', 55, NULL, NULL, NULL, 62, NULL, 90, NULL, 'ESTA PERSONA ESTA MUY SANA Y PUEDE VOLVER A TRABAJAR', 'ALFREDO VAZQUEZ ZAVALETA', 'DIRECTOR GENERAL DE LA NASA', '945874585', 1, 3, 1, 1, '1039', '2022-08-05 04:51:06', NULL, NULL, NULL, NULL),
(46, '2022-08-02', '010312A301', 2, '2022-08-05', 'CERITIS', 12, 77, '123123123', 'DEVELOPER OF SOFTWARE', 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', '1996-08-24', 4, 23, 10, '6', '', 'RUBIO', 89, 'PERSONA NORMAL', 16, '', NULL, '171', '130101', 1, 'ALFONSO UGARTE', 353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CERCA A LAPLA ZA DE MOCHE', '1', 93, '333222111', '167', 21, NULL, 29, 33, 'TOY SOLITO', 29, 98, '2022-08-03', NULL, 0, 41, 43, '2022-08-05', NULL, '2022-08-05', 96, '1', '2', '', '', '', NULL, 101, 49, '2022-08-04', '2022-08-05', 'HOSPITAL B', 51, '2022-08-02', '2022-08-05', 'DEL NIÑO', 53, '2022-08-27', 'HOSPITAL DEL NIÑO', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'TODO BIEN', 'JUAN RUIZ DOCTOR', 'DOCTOR DE TRAPEO DE SUELO', '044925727', 1, 2, 23, 1, '1039', '2022-08-05 05:01:10', NULL, NULL, NULL, NULL),
(47, '2022-08-02', '010312A301', 2, '2022-08-05', 'CERITIS', 12, 77, '123123123', 'DEVELOPER OF SOFTWARE', 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', '1996-08-24', 4, 23, 10, '6', '', 'RUBIO', 89, 'PERSONA NORMAL', 16, '', NULL, '171', '130101', 1, 'ALFONSO UGARTE', 353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CERCA A LAPLA ZA DE MOCHE', '1', 93, '333222111', '167', 21, NULL, 29, 33, 'TOY SOLITO', 29, 98, '2022-08-03', NULL, 0, 41, 43, '2022-08-05', NULL, '2022-08-05', 96, '1', '2', '', '', '', NULL, 101, 49, '2022-08-04', '2022-08-05', 'HOSPITAL B', 51, '2022-08-02', '2022-08-05', 'DEL NIÑO', 53, '2022-08-27', 'HOSPITAL DEL NIÑO', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'TODO BIEN', 'JUAN RUIZ DOCTOR', 'DOCTOR DE TRAPEO DE SUELO', '044925727', 1, 2, 23, 1, '1039', '2022-08-05 05:01:33', NULL, NULL, NULL, NULL),
(48, '2022-08-02', '010312A301', 2, '2022-08-05', 'CERITIS', 12, 77, '77271360', 'DEVELOPER OF SOFTWARE', 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', '1996-08-24', 4, 23, 9, '6', '', 'RUBIO', 89, 'PERSONA NORMAL', 16, '', NULL, '171', '', 1, 'ALFONSO UGARTE', 353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CERCA A LAPLA ZA DE MOCHE', '1', 93, '333222111', '167', 21, NULL, 29, 33, 'TOY SOLITO', 140, 98, '2022-08-03', NULL, 0, 41, 43, '2022-08-05', NULL, '2022-08-05', 96, '1', '2', '', '', '', NULL, 101, 49, '2022-08-04', '2022-08-05', 'HOSPITAL B', 51, '2022-08-02', '2022-08-05', 'DEL NIÑO', 53, '2022-08-27', 'HOSPITAL DEL NIÑO', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'TODO BIEN', 'JUAN RUIZ DOCTOR', 'DOCTOR DE TRAPEO DE SUELO', '044925727', 1, 2, 23, 0, '1039', '2022-08-05 12:49:51', NULL, NULL, NULL, NULL),
(49, '2022-08-13', '010306A302', 2, '2022-08-13', 'CERITIS', 2, 77, '13213312', 'DEVELOPER', 'ruiz', 'trujilo', 'JUAN VICTOR', '2022-08-14', 4, 22, 10, '5', '', '', 86, '', 16, '', NULL, '171', '', 1, 'avenida calle', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avenida calle', NULL, NULL, '987654987', '171', 21, NULL, 30, 32, 'sadada', 142, 98, '0000-00-00', NULL, 0, 41, 43, '2022-08-07', NULL, '2022-08-06', 96, '', '', '', '2', '1', NULL, 101, 49, '2022-08-25', '2022-08-02', 'HOSPITAL B', 51, '2022-08-03', '2022-08-03', 'DEL NIÑO', 53, '2022-08-12', '2022-08-13', 55, NULL, NULL, NULL, 90, NULL, 90, NULL, 'toot su culpa', 'nombre de investigador', 'cargo de invetigador', 'telefono i', 2, 1, 2, 1, '1039', '2022-08-05 13:27:31', NULL, NULL, NULL, NULL),
(50, '2022-08-09', '010101C101', 1, '2022-08-09', 'asdad', 32, 77, '231', 'adda', 'asda', 'asa', 'ada', '0000-00-00', 4, 21, 10, '2', '', '', 86, '', 16, '', NULL, '171', '', 1, '12', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2131', NULL, NULL, '2121', '171', 20, 1, 31, 32, 'asdaada', 140, 98, '2022-08-25', NULL, 0, 40, 44, '2022-08-09', NULL, '2022-08-04', 96, '', '', '', '', '', NULL, 100, 49, '2022-08-04', '2022-08-11', 'HOSPITAL B', 52, '0000-00-00', '0000-00-00', '', 54, '0000-00-00', '', 56, NULL, NULL, NULL, 62, NULL, 91, NULL, '', '', '', '', NULL, NULL, NULL, 1, '1039', '2022-08-09 03:53:52', NULL, NULL, NULL, NULL),
(51, '2022-08-09', '010101C101', 1, '2022-08-09', 'asdad', 32, 77, '231', 'adda', 'asda', 'asa', 'ada', '0000-00-00', 4, 21, 10, '2', '', '', 86, '', 16, '', NULL, '171', '', 1, '12', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2131', NULL, NULL, '2121', '171', 20, 1, 31, 32, 'asdaada', 140, 98, '2022-08-25', NULL, 0, 40, 44, '2022-08-09', NULL, '2022-08-04', 96, '', '', '', '', '', NULL, 100, 49, '2022-08-04', '2022-08-11', 'HOSPITAL B', 52, '0000-00-00', '0000-00-00', '', 54, '0000-00-00', '', 56, NULL, NULL, NULL, 62, NULL, 91, NULL, '', '', '', '', NULL, NULL, NULL, 1, '1039', '2022-08-09 03:55:27', NULL, NULL, NULL, NULL),
(52, '2022-08-09', '010101C101', 1, '2022-08-09', 'asdad', 32, 77, '231', 'adda', 'asda', 'asa', 'ada', '0000-00-00', 4, 21, 10, '2', '', '', 86, '', 16, '', NULL, '171', '', 1, '12', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2131', NULL, NULL, '2121', '171', 20, 1, 31, 32, 'asdaada', 140, 98, '2022-08-25', NULL, 0, 40, 44, '2022-08-09', NULL, '2022-08-04', 96, '', '', '', '', '', NULL, 100, 49, '2022-08-04', '2022-08-11', 'HOSPITAL B', 52, '0000-00-00', '0000-00-00', '', 54, '0000-00-00', '', 56, NULL, NULL, NULL, 62, NULL, 91, NULL, '', '', '', '', NULL, NULL, NULL, 1, '1039', '2022-08-09 03:56:49', NULL, NULL, NULL, NULL),
(53, '2022-08-09', '010101C101', 1, '2022-08-09', 'asdad', 32, 77, '231', 'adda', 'asda', 'asa', 'ada', '0000-00-00', 4, 21, 10, '2', '', '', 86, '', 16, '', NULL, '171', '', 1, '12', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2131', NULL, NULL, '2121', '171', 20, 1, 31, 32, 'asdaada', 140, 98, '2022-08-25', NULL, 0, 40, 44, '2022-08-09', NULL, '2022-08-04', 96, '', '', '', '', '', NULL, 100, 49, '2022-08-04', '2022-08-11', 'HOSPITAL B', 52, '0000-00-00', '0000-00-00', '', 54, '0000-00-00', '', 56, NULL, NULL, NULL, 62, NULL, 91, NULL, '', '', '', '', NULL, NULL, NULL, 1, '1039', '2022-08-09 03:57:33', NULL, NULL, NULL, NULL),
(54, '2022-08-09', '010101C101', 1, '2022-08-09', 'asaasa', 32, 77, '1212', 'adsadada', 'ada', 'asa', '123wa', '0000-00-00', 4, 12, 9, '3', '2', '', 87, '', 16, '', NULL, '171', '020201', 10, 'asadada', 213131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asddas', NULL, NULL, '213121', '171', 21, NULL, 30, 32, '', 141, 98, '0000-00-00', NULL, 0, 40, 44, '2022-08-09', NULL, '2022-08-09', 96, '', '', '', '', '', NULL, 100, 49, '2022-08-04', '2022-08-04', 'HOSPITAL B', 52, '0000-00-00', '0000-00-00', '', 54, '0000-00-00', '', 56, NULL, NULL, NULL, 62, NULL, 91, NULL, '', '', '', '', NULL, NULL, NULL, 1, '1039', '2022-08-09 04:07:36', NULL, NULL, NULL, NULL),
(55, '2022-08-09', '010101C101', 1, '2022-08-09', 'asaasa', 32, 77, '1212', 'adsadada', 'ada', 'asa', '123wa', '0000-00-00', 4, 12, 9, '3', '2', '', 87, '', 16, '', NULL, '171', '020201', 10, 'asadada', 213131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asddas', NULL, NULL, '213121', '171', 21, NULL, 30, 32, '', 141, 98, '0000-00-00', NULL, 0, 40, 44, '2022-08-09', NULL, '2022-08-09', 96, '', '', '', '', '', NULL, 100, 49, '2022-08-04', '2022-08-04', 'HOSPITAL B', 52, '0000-00-00', '0000-00-00', '', 54, '0000-00-00', '', 56, NULL, NULL, NULL, 62, NULL, 91, NULL, '', '', '', '', NULL, NULL, NULL, 1, '1039', '2022-08-09 04:22:00', NULL, NULL, NULL, NULL),
(56, '2022-08-09', '010101C101', 1, '2022-08-09', 'MI CERITS', 33, 77, '77271360', 'PROGRAMADOR', 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', '2022-08-09', 6, 25, 9, '1', '', '', 89, 'PERSONA NORMAL', 16, '', NULL, '171', '', 3, 'ALFONSO UGARTE', 353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A TRES CUADRAS DE LA PLAZA DE ARMAS', NULL, NULL, '960655272', '171', 21, NULL, 30, 32, '', 141, 98, NULL, NULL, 0, 41, 43, '2022-08-11', NULL, '2022-08-16', 97, '2', '', '1', '', '3', NULL, 101, 50, '0000-00-00', '0000-00-00', '', 52, '0000-00-00', '0000-00-00', '', 54, '0000-00-00', '', 56, NULL, NULL, NULL, 91, NULL, 91, NULL, 'EL CABALLERO SE ENCUENTRA ESTABLE Y ES PROBABLE QUE CONTENGA UN SARAMPIÓN COMÚN', 'ALICIA CAJAMARCA MENDOZA TELLO', 'ADM DE REDES Y COMUNICACIONES', '992025652', 1, 2, 1, 1, '1039', '2022-08-09 04:50:42', NULL, NULL, NULL, NULL),
(57, '2022-08-09', '010101C101', 1, '2022-08-09', 'SDA', 32, 80, '1231', 'ADASDA', 'ASD', 'ASD', 'AD', '0000-00-00', 6, 5, 9, '', '', '', 86, '', 16, '', NULL, '171', '', 2, 'ASDAD', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASDA', NULL, NULL, '6435', '171', 21, NULL, 30, 32, '', 141, 98, NULL, NULL, 0, 41, 44, '2022-08-09', NULL, '2022-08-13', 96, '', '', '', '', '', NULL, 100, 50, '0000-00-00', '0000-00-00', '', 52, '0000-00-00', '0000-00-00', '', 54, '0000-00-00', '', 56, NULL, NULL, NULL, 63, NULL, 91, NULL, '', '', '', '', NULL, NULL, NULL, 0, '1039', '2022-08-09 04:54:09', NULL, NULL, NULL, NULL),
(58, '2022-08-09', '010101D201', 1, '2022-08-09', '312312', 32, 78, '1212', 'dsasdsada', 'asdas', 'asdsa', 'asdas', '1990-12-18', 4, 121, 9, '2', '', '', 87, '', 16, '', NULL, '171', '', 10, 'sdasd', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdsas', NULL, NULL, '684684', '171', 21, NULL, 30, 32, '', 141, NULL, NULL, NULL, 0, 41, 44, '2022-08-09', NULL, '2022-08-18', 97, '1', '', '', '2', '', NULL, 100, 50, '0000-00-00', '0000-00-00', '', 52, '0000-00-00', '0000-00-00', '', 54, '0000-00-00', '', 56, NULL, NULL, NULL, 63, NULL, 91, NULL, 'ninguna', 'esta es la persona asignada', 'admi', '12312', 2, 2, 2, 1, '1039', '2022-08-09 05:28:50', NULL, NULL, NULL, NULL),
(59, '2022-08-09', '010101D201', 1, '2022-08-09', 'certira', 32, 77, '77271360', 'DEVELOPER', 'ruiz', 'trujillo', 'juan', '1996-08-24', 4, 25, 9, '2', '', '', 86, '', 18, '', NULL, '171', '', 10, '123asdaa', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfsfs', NULL, NULL, '960655272', '171', 21, NULL, 30, 32, '', 141, NULL, NULL, NULL, NULL, 41, 44, '2022-08-09', NULL, '2022-08-05', 97, '1', '', '', '2', '', NULL, 100, 50, NULL, NULL, NULL, 52, NULL, NULL, NULL, 54, NULL, '', 56, NULL, NULL, NULL, 90, NULL, 90, NULL, 'ninguna', 'persona', 'cargos de persona ', '956532', 1, 1, 1, 1, '1039', '2022-08-09 07:48:36', NULL, NULL, NULL, NULL),
(60, '2022-08-09', '010101C101', 1, '2022-08-09', 'asdada', 32, 77, '1231', 'DEVELOPER', 'asdas', 'asdsas', 'asdas', '2022-08-09', 4, 21, 9, '2', '', '', 86, '', 17, '', NULL, '171', '', 11, 'dsadad', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adas', NULL, NULL, '2321312', '171', 21, NULL, 30, 32, '', 141, NULL, NULL, NULL, NULL, 41, 44, '2022-08-09', NULL, '2022-08-05', 97, '1', '', '', '', '', NULL, 100, 50, NULL, NULL, NULL, 52, NULL, NULL, NULL, 54, NULL, '', 56, NULL, NULL, NULL, 91, NULL, 91, NULL, 'nada', 'asdadas', 'asdasd', 'ada', 1, 1, 1, 1, '1039', '2022-08-09 08:00:18', NULL, NULL, NULL, NULL),
(61, '2022-08-09', '130107A301', 1, '2022-08-09', 'mi certir', 32, 77, '77271361', 'DEVELOPER', 'RUIZ', 'TRUJILLO', 'JUAN VICTOR', '1996-08-24', 5, 24, 9, '1', '', '', 89, 'NORMAL', 16, '', NULL, '171', '130107', 3, 'ALFONSO UGARTE', 353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FRENTE A UN PARQUE', NULL, NULL, '960655272', '171', 21, NULL, 29, 33, 'PASTILLAS ANTIDEPRESIVAS', 142, 98, '0000-00-00', NULL, 0, 42, 43, '2022-08-09', NULL, '2022-08-09', 97, '', '2', '1', '', '', NULL, 101, 50, NULL, NULL, NULL, 51, '2022-08-23', '2022-08-17', 'HOSPITAL D', 54, NULL, '', 56, NULL, NULL, NULL, 62, NULL, 90, NULL, 'LAS EVALUACIONES LLEGAN LA OTRA SEMANA', 'ALICIA GABRIELA TORRES PEÑA', 'ADMINISTRADORA CASUAL', '44384559', 1, 3, 3, 1, '5122', '2022-08-09 11:36:52', NULL, NULL, NULL, NULL),
(62, '2022-08-09', '130602A201', 2, '2022-08-09', 'MICERTIS', 32, 77, '77271360', 'developer', 'RUIZ', 'OTUZCO', 'JUAN VICTOR', '1996-08-24', 4, 25, 10, '3', '2', '', 89, 'NORMAL', 16, '', NULL, '171', '130107', 10, 'VIA', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DOMICILIO', NULL, NULL, '960655252', '171', 21, NULL, 31, 32, '', 141, NULL, NULL, NULL, 0, 41, 44, '2022-08-09', NULL, '2022-08-09', 97, '1', '', '', '', '', NULL, 101, 50, NULL, NULL, NULL, 52, NULL, NULL, NULL, 54, NULL, '', 56, NULL, NULL, NULL, 62, NULL, 91, NULL, 'NINGUNA', 'TODO BIEN', 'TODO CORRECT', '987987987', 2, 1, 2, 1, '5122', '2022-08-09 12:09:52', NULL, NULL, NULL, NULL),
(63, '2022-08-09', '130101A304', 3, '2022-08-09', 'certis', 32, 77, '77271361', 'DEVELOPER', 'RUIZ', 'ESTABLECIMIENTO', 'JUAN VICTOR', '2022-08-09', 5, 12, 10, '4', '', '', 86, '', 18, '', NULL, '171', '', 2, 'SDSAKLJDLKAS', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSALÑ 12ASL', NULL, NULL, '960655272', '171', 21, NULL, 30, 32, '', 141, NULL, NULL, NULL, NULL, 41, 44, '2022-08-09', NULL, '2022-08-26', 96, '1', '', '', '2', '', NULL, 101, 50, NULL, NULL, NULL, 52, NULL, NULL, NULL, 54, NULL, '', 56, NULL, NULL, NULL, 91, NULL, 91, NULL, 'NINGUNA OBSERVACION', 'PERSONA ENGARGADA', 'EL CARGO DE LA PERSONA ENCARGADA', '964055484', 2, 2, 2, 1, '5122', '2022-08-09 15:15:49', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos_estadio`
--

DROP TABLE IF EXISTS `casos_estadio`;
CREATE TABLE IF NOT EXISTS `casos_estadio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `macula` int(11) DEFAULT NULL,
  `papula` int(11) DEFAULT NULL,
  `vesicula` int(11) DEFAULT NULL,
  `pustula` int(11) DEFAULT NULL,
  `costra` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_casos_estadio_casos1_idx` (`id_casos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos_fisico`
--

DROP TABLE IF EXISTS `casos_fisico`;
CREATE TABLE IF NOT EXISTS `casos_fisico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `id_parte` int(11) NOT NULL,
  `enumerar` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_casos_fisico_casos1_idx` (`id_casos`),
  KEY `fk_casos_fisico_cuerpo_humano1_idx` (`id_parte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos_infecciones`
--

DROP TABLE IF EXISTS `casos_infecciones`;
CREATE TABLE IF NOT EXISTS `casos_infecciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_caso` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL,
  `otro` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_casos_infecciones_casos_idx` (`id_caso`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `casos_infecciones`
--

INSERT INTO `casos_infecciones` (`id`, `id_caso`, `id_opcion`, `otro`) VALUES
(1, 38, 113, '0'),
(2, 38, 116, '0'),
(3, 38, 118, '0'),
(4, 38, 119, '0'),
(5, 38, 120, '0'),
(6, 39, 113, '0'),
(7, 39, 116, '0'),
(8, 39, 118, '0'),
(9, 39, 119, '0'),
(10, 39, 120, '0'),
(11, 40, 113, '0'),
(12, 40, 116, '0'),
(13, 40, 118, '0'),
(14, 40, 119, '0'),
(15, 40, 120, '0'),
(19, 43, 116, ''),
(20, 43, 119, ''),
(21, 43, 120, 'CANCER'),
(22, 44, 115, ''),
(23, 44, 118, ''),
(24, 44, 117, ''),
(25, 45, 115, ''),
(26, 45, 119, ''),
(27, 46, 115, ''),
(28, 46, 114, ''),
(29, 46, 118, ''),
(30, 47, 115, ''),
(31, 47, 114, ''),
(32, 47, 118, ''),
(36, 48, 115, ''),
(37, 48, 114, ''),
(38, 48, 118, ''),
(41, 49, 115, ''),
(42, 49, 117, ''),
(45, 56, 119, ''),
(46, 56, 120, 'TOS'),
(47, 61, 116, ''),
(48, 61, 118, ''),
(49, 61, 120, 'FIEBRE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos_previos`
--

DROP TABLE IF EXISTS `casos_previos`;
CREATE TABLE IF NOT EXISTS `casos_previos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_exantema` int(11) NOT NULL,
  `id_caso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos_signos`
--

DROP TABLE IF EXISTS `casos_signos`;
CREATE TABLE IF NOT EXISTS `casos_signos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_caso` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL,
  `otros` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_casos_signos_casos1_idx` (`id_caso`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `casos_signos`
--

INSERT INTO `casos_signos` (`id`, `id_caso`, `id_opcion`, `otros`) VALUES
(1, 43, 122, ''),
(2, 43, 130, ''),
(3, 44, 122, ''),
(4, 44, 121, ''),
(5, 44, 128, ''),
(6, 44, 130, ''),
(7, 45, 121, ''),
(8, 45, 126, ''),
(9, 45, 122, ''),
(10, 45, 131, 'DOLOR DE CABEZA'),
(11, 46, 122, ''),
(12, 46, 121, ''),
(13, 46, 126, ''),
(14, 47, 122, ''),
(15, 47, 121, ''),
(16, 47, 126, ''),
(20, 48, 122, ''),
(21, 48, 121, ''),
(22, 48, 126, ''),
(26, 49, 123, ''),
(27, 49, 128, ''),
(28, 49, 129, ''),
(29, 50, 122, ''),
(30, 50, 127, ''),
(31, 51, 122, ''),
(32, 51, 127, ''),
(33, 52, 122, ''),
(34, 52, 127, ''),
(35, 53, 122, ''),
(36, 53, 127, ''),
(37, 54, 124, ''),
(38, 54, 126, ''),
(39, 55, 124, ''),
(40, 55, 126, ''),
(42, 56, 121, ''),
(43, 57, 121, ''),
(44, 58, 125, ''),
(48, 59, 121, ''),
(50, 60, 121, ''),
(51, 61, 121, ''),
(52, 61, 123, ''),
(53, 61, 126, ''),
(54, 61, 129, ''),
(55, 62, 121, ''),
(60, 63, 121, ''),
(61, 63, 130, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casos_viajes`
--

DROP TABLE IF EXISTS `casos_viajes`;
CREATE TABLE IF NOT EXISTS `casos_viajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `id_departamento` int(11) DEFAULT '0',
  `fecha_ini` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_casos_viajes_casos1_idx` (`id_casos`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `casos_viajes`
--

INSERT INTO `casos_viajes` (`id`, `id_casos`, `id_pais`, `id_departamento`, `fecha_ini`, `fecha_fin`) VALUES
(2, 24, 171, 4, '2022-08-05', '2022-08-05'),
(3, 24, 171, 11, '2022-08-05', '2022-08-05'),
(4, 24, 171, 18, '2022-08-05', '2022-08-05'),
(5, 24, 171, 4, '2022-08-05', '2022-08-05'),
(6, 24, 171, 10, '2022-08-05', '2022-08-05'),
(7, 24, 171, 17, '2022-08-05', '2022-08-05'),
(8, 25, 171, 3, '2022-08-05', '2022-08-05'),
(9, 25, 171, 12, '2022-08-05', '2022-08-05'),
(10, 25, 171, 18, '2022-08-05', '2022-08-05'),
(17, 29, 171, 6, '2022-08-05', '2022-08-05'),
(18, 29, 171, 12, '2022-08-05', '2022-08-05'),
(19, 30, 171, 3, '2022-08-05', '2022-08-05'),
(20, 30, 171, 8, '2022-08-05', '2022-08-05'),
(21, 30, 171, 13, '2022-08-05', '2022-08-05'),
(22, 31, 171, 3, '2022-08-05', '2022-08-05'),
(23, 31, 171, 8, '2022-08-05', '2022-08-05'),
(24, 31, 171, 13, '2022-08-05', '2022-08-05'),
(25, 32, 171, 3, '2022-08-05', '2022-08-05'),
(26, 32, 171, 8, '2022-08-05', '2022-08-05'),
(27, 32, 171, 13, '2022-08-05', '2022-08-05'),
(31, 38, 171, 2, '2022-08-05', '2022-08-05'),
(32, 38, 159, 0, '2022-08-05', '2022-08-05'),
(33, 39, 171, 2, '2022-08-05', '2022-08-05'),
(34, 39, 159, 0, '2022-08-05', '2022-08-05'),
(35, 40, 171, 2, '2022-08-05', '2022-08-05'),
(36, 40, 159, 0, '2022-08-05', '2022-08-05'),
(41, 43, 171, 4, '2022-07-21', '2022-08-04'),
(42, 43, 171, 11, '2022-07-05', '2022-08-13'),
(43, 44, 171, 1, '2022-08-05', '2022-08-05'),
(44, 44, 171, 12, '2022-08-05', '2022-08-05'),
(45, 45, 171, 13, '2022-08-01', '2022-08-02'),
(46, 45, 171, 6, '2022-08-02', '2022-08-04'),
(47, 46, 171, 6, '2022-08-03', '2022-08-05'),
(48, 46, 171, 8, '2022-08-01', '2022-08-03'),
(49, 47, 171, 6, '2022-08-03', '2022-08-05'),
(50, 47, 171, 8, '2022-08-01', '2022-08-03'),
(53, 48, 171, 6, '2022-08-03', '2022-08-05'),
(54, 48, 171, 8, '2022-08-01', '2022-08-03'),
(57, 49, 171, 5, '2022-08-06', '2022-08-06'),
(58, 49, 171, 6, '2022-08-06', '2022-08-06'),
(60, 59, 171, 4, '2022-08-05', '2022-08-25'),
(61, 61, 171, 2, '2022-08-02', '2022-08-05'),
(62, 61, 156, 0, '2022-08-02', '2022-08-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

DROP TABLE IF EXISTS `contactos`;
CREATE TABLE IF NOT EXISTS `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `apenom` varchar(70) DEFAULT NULL,
  `parentesco` varchar(45) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `dni` varchar(25) NOT NULL,
  `tipo_doc` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_contactos_casos1_idx` (`id_casos`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `id_casos`, `apenom`, `parentesco`, `telefono`, `dni`, `tipo_doc`) VALUES
(1, 29, 'awdasd', 'asdas', '1231', '1231', 79),
(2, 30, 'assadasd', 'asdasd', '123', '1231', 79),
(3, 30, 'dddddddddddddddd', 'asdasddd', '12312331', '1231122', 83),
(4, 31, 'assadasd', 'asdasd', '123', '1231', 79),
(5, 31, 'dddddddddddddddd', 'asdasddd', '12312331', '1231122', 83),
(6, 32, 'assadasd', 'asdasd', '123', '1231', 79),
(7, 32, 'dddddddddddddddd', 'asdasddd', '12312331', '1231122', 83),
(8, 38, 'juan ruiz', 'Padre', '1121231213', '2131313', 79),
(9, 38, 'luis ruiz', 'Padre', '1121231213', '2131313', 82),
(10, 39, 'juan ruiz', 'Padre', '1121231213', '2131313', 79),
(11, 39, 'luis ruiz', 'Padre', '1121231213', '2131313', 82),
(12, 40, 'juan ruiz', 'Padre', '1121231213', '2131313', 79),
(13, 40, 'luis ruiz', 'Padre', '1121231213', '2131313', 82),
(16, 43, 'HABEL HEBELIO HUEBARA HERMIS', 'PRIMO', '123112312', '12312312', 77),
(17, 44, 'ALONSO RUI ZTRUJILLO', 'Hijo', '1232312312', '2321321312', 78),
(18, 45, 'SILVIA LILIANA TRUJILLO LECA', 'MADRE', '944304741', '18012351', 77),
(19, 45, 'LEITZER ALI RUIZ TRUJILLO', 'HERMANO', '980553641', '77271361', 79),
(20, 46, 'juan ruiz', 'Padre', '333222111', '12121212', 80),
(21, 47, 'juan ruiz', 'Padre', '333222111', '12121212', 80),
(23, 48, 'juan ruiz', 'Padre', '333222111', '12121212', 80),
(25, 49, 'juan ruiz', 'Padre', '2321123123', '213', 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpo_humano`
--

DROP TABLE IF EXISTS `cuerpo_humano`;
CREATE TABLE IF NOT EXISTS `cuerpo_humano` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parte` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuerpo_humano`
--

INSERT INTO `cuerpo_humano` (`id`, `parte`, `estado`) VALUES
(1, 'Cabeza', 0),
(2, 'Cara', 1),
(3, 'Cuello', 0),
(4, 'Hombro derecho', 0),
(5, 'Hombro izquierdo', 0),
(6, 'Pecho derecho', 0),
(7, 'Pecho izquierdo', 0),
(8, 'Brazo derecho', 0),
(9, 'Brazo izquierdo', 0),
(10, 'Antebrazo derecho', 0),
(11, 'Antebrazo izquierdo', 0),
(12, 'Mano derecha', 0),
(13, 'Mano izquierda', 0),
(14, 'Pierna derecha', 0),
(15, 'Pierna izquierda', 0),
(16, 'Pantorrilla derecha', 0),
(17, 'Pantorrilla izquierda', 0),
(18, 'Pie derecho', 0),
(19, 'Pie izquierda', 0),
(20, 'Abdomen', 0),
(21, 'Genital/perianal', 1),
(22, 'Glúteos', 0),
(23, 'Espalda', 0),
(24, 'Oral ( boca,labios)', 1),
(25, 'Tórax, espalda', 1),
(26, 'Extremidades', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadia_exantema`
--

DROP TABLE IF EXISTS `estadia_exantema`;
CREATE TABLE IF NOT EXISTS `estadia_exantema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_caso` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadia_exantema`
--

INSERT INTO `estadia_exantema` (`id`, `id_caso`, `id_opcion`) VALUES
(1, 43, 133),
(2, 43, 133),
(3, 44, 134),
(4, 44, 137),
(5, 45, 133),
(6, 45, 137),
(7, 46, 133),
(8, 46, 137),
(9, 47, 133),
(10, 47, 137),
(13, 48, 133),
(14, 48, 137),
(18, 49, 133),
(19, 49, 135),
(20, 49, 136),
(22, 56, 136),
(23, 58, 137),
(27, 59, 137),
(29, 60, 134),
(30, 61, 137),
(31, 61, 134),
(32, 61, 135),
(33, 62, 134),
(38, 63, 133),
(39, 63, 136);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
CREATE TABLE IF NOT EXISTS `laboratorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_casos` int(11) NOT NULL,
  `tipo_mue` int(11) DEFAULT NULL,
  `fecha_tom` date DEFAULT NULL,
  `fecha_res` date DEFAULT NULL,
  `resultado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_laboratorio_casos1_idx` (`id_casos`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`id`, `id_casos`, `tipo_mue`, `fecha_tom`, `fecha_res`, `resultado`) VALUES
(1, 44, 26, '2022-08-04', '2022-08-04', 1),
(2, 44, 27, '2022-08-04', '2022-08-04', 2),
(3, 44, 28, '2022-08-04', '2022-08-05', 1),
(4, 44, 29, '2022-08-04', '2022-08-05', 2),
(5, 45, 26, '2022-08-04', '2022-08-05', 138),
(6, 45, 29, '2022-08-04', '2022-08-05', 139),
(7, 46, 26, '2022-08-04', '2022-08-04', 139),
(8, 47, 26, '2022-08-04', '2022-08-04', 139),
(10, 48, 26, '2022-08-04', '2022-08-04', 139),
(13, 49, 26, '2022-08-20', '2022-08-19', 139),
(16, 56, 26, '2022-08-09', '0000-00-00', 139),
(17, 58, 26, '2022-08-25', '0000-00-00', 138),
(21, 59, 26, '2022-08-04', '0000-00-00', 139),
(23, 60, 26, '2022-08-20', '2022-08-05', 138),
(24, 61, 29, '2022-08-10', '0000-00-00', 138),
(25, 62, 26, '2022-08-24', '0000-00-00', 138);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar_contacto`
--

DROP TABLE IF EXISTS `lugar_contacto`;
CREATE TABLE IF NOT EXISTS `lugar_contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_caso` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL,
  `Otro` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lugar_contacto`
--

INSERT INTO `lugar_contacto` (`id`, `id_caso`, `id_opcion`, `Otro`) VALUES
(1, 38, 108, ''),
(2, 38, 103, ''),
(3, 38, 110, 'casa de luisito comunica'),
(4, 38, 64, ''),
(5, 38, 66, ''),
(6, 38, 67, 'toro'),
(7, 38, 67, 'VACA'),
(8, 39, 108, ''),
(9, 39, 103, ''),
(10, 39, 110, 'casa de luisito comunica'),
(11, 39, 64, ''),
(12, 39, 66, ''),
(13, 39, 67, 'toro'),
(14, 39, 67, 'VACA'),
(15, 40, 108, ''),
(16, 40, 103, ''),
(17, 40, 110, 'casa de luisito comunica'),
(18, 40, 64, ''),
(19, 40, 66, ''),
(20, 40, 67, 'toro'),
(21, 40, 67, 'VACA'),
(30, 43, 103, ''),
(31, 43, 105, ''),
(32, 43, 107, ''),
(33, 43, 110, 'CASA DE UN AMIGO'),
(34, 44, 108, ''),
(35, 44, 104, ''),
(36, 44, 109, ''),
(37, 44, 110, 'PICHANGUITA'),
(38, 45, 104, ''),
(39, 45, 110, 'SOMOS FAMILIA'),
(40, 46, 103, ''),
(41, 46, 104, ''),
(42, 46, 105, ''),
(43, 47, 103, ''),
(44, 47, 104, ''),
(45, 47, 105, ''),
(49, 48, 103, ''),
(50, 48, 104, ''),
(51, 48, 105, ''),
(54, 49, 106, ''),
(55, 49, 108, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

DROP TABLE IF EXISTS `opciones`;
CREATE TABLE IF NOT EXISTS `opciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pregunta` int(11) NOT NULL,
  `denominacion` varchar(80) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_opciones_pregunta1_idx` (`id_pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `id_pregunta`, `denominacion`, `estado`) VALUES
(1, 1, 'PROBABLE', 1),
(2, 1, 'CONFIRMADO', 1),
(3, 1, 'DESCARTADO', 1),
(4, 2, 'AÑOS', 1),
(5, 2, 'MESES', 1),
(6, 2, 'DIAS', 1),
(9, 3, 'HOMBRE', 1),
(10, 3, 'MUJER', 1),
(11, 4, 'MASCULINO', 1),
(12, 4, 'FEMENINO', 1),
(13, 4, 'TRANSGENERO', 1),
(14, 4, 'DESCONOCIDO', 1),
(15, 4, 'OTRO', 1),
(16, 5, 'HETEROSEXUAL', 1),
(17, 5, 'HOMOSEXUAL', 1),
(18, 5, 'BISEXUAL', 1),
(19, 5, 'OTRO', 1),
(20, 6, 'SI', 1),
(21, 6, 'NO', 1),
(22, 7, 'SI', 1),
(23, 7, 'NO', 1),
(24, 7, 'DESCONOCIDO', 1),
(25, 8, '1er TRIMESTRE', 1),
(26, 8, '2do TRIMESTRE', 1),
(27, 8, '3er TRIMESTRE', 1),
(28, 8, 'PUERPERA', 1),
(29, 9, 'SI', 1),
(30, 9, 'NO', 1),
(31, 9, 'DESCONOCIDO', 1),
(32, 10, 'POR ENFERMEDAD', 1),
(33, 10, 'POR MEDICACION', 1),
(34, 10, 'RAZON DESCONOCIDA', 1),
(35, 11, 'POSITIVO', 1),
(36, 11, 'NEGATIVO', 1),
(37, 11, 'DESCONOCIDO', 1),
(38, 12, 'TAMIZAJE REACTIVO', 1),
(39, 12, 'CONFIRMADO POSITIVO', 1),
(40, 13, 'SI', 1),
(41, 13, 'NO', 1),
(42, 13, 'DESCONOCIDO', 1),
(43, 14, 'SI', 1),
(44, 14, 'NO', 1),
(45, 14, 'DESCONOCIDO', 1),
(46, 15, 'CASO LEVE', 1),
(47, 15, 'CASO MODERADO', 1),
(48, 15, 'CASO SEVERO', 1),
(49, 16, 'SI', 1),
(50, 16, 'NO', 1),
(51, 17, 'SI', 1),
(52, 17, 'NO', 1),
(53, 18, 'SI', 1),
(54, 18, 'NO', 1),
(55, 19, 'SI', 1),
(56, 19, 'NO', 1),
(57, 20, 'SI', 1),
(58, 20, 'NO', 1),
(59, 21, '1', 1),
(60, 21, '3', 1),
(61, 21, 'MAS DE 5', 1),
(62, 22, 'SI', 1),
(63, 22, 'NO', 1),
(64, 23, 'PERRO', 1),
(65, 23, 'GATO', 1),
(66, 23, 'ROEDOR', 1),
(67, 23, 'OTROS', 1),
(68, 24, 'SI', 1),
(69, 24, 'NO', 1),
(71, 25, 'RELACIONES SEXUALES CON SU PAREJA', 1),
(72, 25, 'RELACIONES C/DESCONOCIDOS O P/MULTIPLES', 1),
(73, 25, 'TUVO CONTACTO CON PERSONAS CON EXANTEMA', 1),
(74, 25, 'MANIPULA MATERIAL POTENCIALMENTE CONTAMINADO', 1),
(77, 30, 'DNI', 1),
(78, 30, 'CARNET DE EXTRANJERIA', 1),
(79, 30, 'PASAPORTE', 1),
(80, 30, 'SIN DOCUMENTO', 1),
(81, 30, 'CARNET DE REFUGIADO', 1),
(82, 30, 'CEDULA DE IDENTIDAD', 1),
(83, 30, 'PERMISO TEMPORAL DE RESIDENCIA', 1),
(86, 31, 'HSH', 1),
(87, 31, 'MUJER TRANSGENERO', 1),
(88, 31, 'TRABAJADOR(A) SEXUAL', 1),
(89, 31, 'OTRO', 1),
(90, 32, 'SI', 1),
(91, 32, 'NO', 1),
(92, 25, 'ATENDER CASOS DE VM SIN ADECUADO EPP', 1),
(93, 33, 'AÑO', 1),
(94, 33, 'MES', 1),
(95, 33, 'DIA', 1),
(96, 34, 'LOCALIZADO', 1),
(97, 34, 'GENERALIZADO', 1),
(98, 35, 'SI', 1),
(99, 35, 'NO', 1),
(100, 36, 'MONOMÓFICO', 1),
(101, 36, 'POLIMÓRFICO', 1),
(102, 25, 'OTRO', 1),
(103, 37, 'FIESTA', 1),
(104, 37, 'CASA', 1),
(105, 37, 'BAR', 1),
(106, 37, 'TRABAJO', 1),
(107, 37, 'SAUNA', 1),
(108, 37, 'CLUB SEXUAL', 1),
(109, 37, 'EESS', 1),
(110, 37, 'OTRO', 1),
(111, 23, 'MONO', 1),
(112, 23, 'AVE', 1),
(113, 38, 'CHLAMYDIA', 1),
(114, 38, 'GONORREA', 1),
(115, 38, 'HERPES GENITAL', 1),
(116, 38, 'SIFILIS', 1),
(117, 38, 'MYCOPLASMA GENITALIUM', 1),
(118, 38, 'TRICHOMONAS VAGINALIS', 1),
(119, 38, 'VERRUGAS GENITALES', 1),
(120, 38, 'OTRO', 1),
(121, 39, 'FIEBRE(>38.5°C)', 1),
(122, 39, 'ESCALOFRIOS', 1),
(123, 39, 'CEFALEA', 1),
(124, 39, 'ASTENIA', 1),
(125, 39, 'MIALGIA', 1),
(126, 39, 'DOLOR DE ESPALDA', 1),
(127, 39, 'DOLOR DE GARGANTA', 1),
(128, 39, 'EXANTEMA', 1),
(129, 39, 'LINFADENOPATIA LOCALIZADA', 1),
(130, 39, 'PROCTITIS(DOLOR O SANGRADO ANAL)', 1),
(131, 39, 'OTRO', 1),
(132, 39, 'LINFADENOPATIA GENERALIZADA', 1),
(133, 40, 'MACULA(RONCHAS ROJAS DE BASE PLANA)', 1),
(134, 40, 'PAPULA(RONCHAS ROJAS ELEVADAS)', 1),
(135, 40, 'VESICULA(AMPOLLA LLENA DE LIQUIDOS)', 1),
(136, 40, 'PUSTULA(AMPOLLA CON PUS)', 1),
(137, 40, 'COSTRA', 1),
(138, 41, 'POSITIVO', 1),
(139, 41, 'NEGATIVO', 1),
(140, 42, 'SI', 1),
(141, 42, 'NO', 1),
(142, 42, 'DESCONOCIDO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
CREATE TABLE IF NOT EXISTS `pregunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `denominacion`, `estado`) VALUES
(1, 'CLASIFICACION DEL CASO', 1),
(2, 'TIPO DE EDAD', 1),
(3, 'SEXO AL NACER', 1),
(4, 'IDENTIDAD DE GENERO', 1),
(5, 'ORIENTACION SEXUAL', 1),
(6, 'GESTANTE', 1),
(7, 'EMBARAZO', 1),
(8, 'ESTADO DE EMBARAZO', 1),
(9, 'INMUNODEPRIMIDO', 1),
(10, 'ESTADO INMUNODEPRIMIDO', 1),
(11, 'ESTADO SEROLOGICO', 1),
(12, 'ESTADO SEROLOGICO POSITIVO', 1),
(13, 'RECIBIO VACUNA CONTRA VIRUELA', 1),
(14, 'INFECCIONES PREVIAS', 1),
(15, 'SEVERIDAD DEL CUADRO CLINICO', 1),
(16, 'HOSPITALIZADO', 1),
(17, 'UCI', 1),
(18, 'DEFUNCION', 1),
(19, 'CONTACTO CON CASOS', 1),
(20, 'PAREJAS SEXUALES MULTIPLES', 1),
(21, 'CUANTOS', 1),
(22, 'ANIMALES DOMESTICOS O DE CRIANZA', 1),
(23, 'ANIMAL', 1),
(24, 'ANTECEDENTES DE VIAJE', 1),
(25, 'TIPO DE CONTACTO', 1),
(26, 'HISOPADO DE LESION DERMICA', 1),
(27, 'PIEL ESFACELADA O COSTRA', 1),
(28, 'HISOPADO NASOFARINGEO/OROFARINGEO', 1),
(29, 'SANGRE', 1),
(30, 'TIPO DE DOCUMENTO', 1),
(31, 'POBLACION ESPECIFICA', 1),
(32, 'VIAJO', 1),
(33, 'TIPO TIEMPO DE RESIDENCIA', 1),
(34, 'DISTRIBUCION EXANTEMA', 1),
(35, 'RECIBE TAR', 1),
(36, 'PRESENTACION EXANTEMA', 1),
(37, 'LUGAR DE CONTACTO', 1),
(38, 'INFECCIONES', 1),
(39, 'SIGNOS Y SINTOMAS', 1),
(40, 'ESTADIO DE EXANTEMAS', 1),
(41, 'RESULTADO DE LABORATORIO', 1),
(42, 'VIH', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `previo_exantema`
--

DROP TABLE IF EXISTS `previo_exantema`;
CREATE TABLE IF NOT EXISTS `previo_exantema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_caso` int(11) NOT NULL,
  `id_opcion` int(11) NOT NULL,
  `otro_detalle` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `previo_exantema`
--

INSERT INTO `previo_exantema` (`id`, `id_caso`, `id_opcion`, `otro_detalle`) VALUES
(8, 29, 102, 'Tuvo relaciones sexuales con su pareja'),
(9, 29, 102, 'Tuvo contacto con personas con exantemas'),
(10, 29, 102, 'Atendió casos de VM sin adecuado EPP'),
(11, 29, 102, 'Tuvo relaciones sexuales con desconocido(a) o parejas múltiples'),
(12, 29, 102, 'otro'),
(13, 29, 102, 'contifo'),
(14, 29, 102, 'y yo'),
(15, 32, 71, ''),
(16, 32, 73, ''),
(17, 32, 92, ''),
(18, 40, 71, ''),
(19, 40, 92, ''),
(20, 40, 74, ''),
(21, 40, 102, 'MANOLO CONTRERAS'),
(26, 43, 71, ''),
(27, 43, 102, 'SEXO HOMOSEXUAL CON VARIOS HOMBRES'),
(28, 44, 71, ''),
(29, 44, 74, ''),
(30, 44, 102, 'picor en la cola'),
(31, 45, 71, ''),
(34, 48, 71, ''),
(35, 48, 92, ''),
(38, 49, 71, ''),
(39, 49, 92, ''),
(40, 50, 71, ''),
(41, 50, 92, ''),
(42, 50, 74, ''),
(43, 51, 71, ''),
(44, 51, 92, ''),
(45, 51, 74, ''),
(46, 52, 71, ''),
(47, 52, 92, ''),
(48, 52, 74, ''),
(49, 53, 71, ''),
(50, 53, 92, ''),
(51, 53, 74, ''),
(52, 54, 73, ''),
(53, 54, 92, ''),
(54, 55, 73, ''),
(55, 55, 92, ''),
(57, 56, 71, ''),
(58, 57, 102, 'NINGUNA'),
(59, 58, 73, ''),
(63, 59, 73, ''),
(65, 60, 71, ''),
(66, 61, 71, ''),
(67, 61, 92, ''),
(68, 62, 71, ''),
(71, 63, 73, '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `casos_estadio`
--
ALTER TABLE `casos_estadio`
  ADD CONSTRAINT `fk_casos_estadio_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `casos_fisico`
--
ALTER TABLE `casos_fisico`
  ADD CONSTRAINT `fk_casos_fisico_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_casos_fisico_cuerpo_humano1` FOREIGN KEY (`id_parte`) REFERENCES `cuerpo_humano` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `casos_infecciones`
--
ALTER TABLE `casos_infecciones`
  ADD CONSTRAINT `fk_casos_infecciones_casos` FOREIGN KEY (`id_caso`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `casos_signos`
--
ALTER TABLE `casos_signos`
  ADD CONSTRAINT `fk_casos_signos_casos1` FOREIGN KEY (`id_caso`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `casos_viajes`
--
ALTER TABLE `casos_viajes`
  ADD CONSTRAINT `fk_casos_viajes_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD CONSTRAINT `fk_contactos_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD CONSTRAINT `fk_laboratorio_casos1` FOREIGN KEY (`id_casos`) REFERENCES `casos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `fk_opciones_pregunta1` FOREIGN KEY (`id_pregunta`) REFERENCES `pregunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
