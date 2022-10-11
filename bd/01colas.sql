-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2022 a las 21:41:26
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colas`
--
CREATE DATABASE IF NOT EXISTS `colas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `colas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colas_querys_monkey`
--

DROP TABLE IF EXISTS `colas_querys_monkey`;
CREATE TABLE IF NOT EXISTS `colas_querys_monkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vCodUsu` varchar(100) DEFAULT NULL,
  `vQry` text,
  `cEstado` char(1) DEFAULT NULL,
  `fecReg` datetime DEFAULT NULL,
  `vProgreso` varchar(4) DEFAULT NULL,
  `vRuta` varchar(100) DEFAULT NULL,
  `vFiltros` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
