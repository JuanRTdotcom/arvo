-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-08-2022 a las 23:25:39
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
-- Base de datos: `notiweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicaciones`
--

DROP TABLE IF EXISTS `aplicaciones`;
CREATE TABLE `aplicaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `aplicacion` int(11) DEFAULT NULL,
  `nombre` int(10) UNSIGNED NOT NULL,
  `enlace` varchar(100) DEFAULT NULL,
  `estado` int(10) UNSIGNED NOT NULL,
  `grabar` varchar(1) NOT NULL,
  `modificar` varchar(1) NOT NULL,
  `ver` varchar(1) NOT NULL,
  `eliminar` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `aplicaciones`
--

TRUNCATE TABLE `aplicaciones`;
--
-- Volcado de datos para la tabla `aplicaciones`
--

INSERT INTO `aplicaciones` (`id`, `aplicacion`, `nombre`, `enlace`, `estado`, `grabar`, `modificar`, `ver`, `eliminar`) VALUES
(1, 30, 0, NULL, 0, '', '', '', ''),
(2, 6, 0, '#', 1, '1', '1', '1', '1'),
(3, 31, 0, '#', 1, '1', '1', '1', '1'),
(4, 25, 0, '#', 1, '1', '1', '1', '1'),
(5, 32, 0, '#', 1, '1', '1', '1', '1'),
(6, 36, 0, '#', 1, '1', '1', '1', '1'),
(7, 40, 0, '#', 1, '1', '1', '1', '1'),
(8, 98, 0, '#', 1, '1', '1', '1', '1'),
(9, 44, 0, '3', 1, '1', '1', '1', '1'),
(10, 88, 0, '#', 1, '1', '1', '1', '1'),
(11, 51, 0, '3', 1, '1', '1', '1', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicaciones`
--
ALTER TABLE `aplicaciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicaciones`
--
ALTER TABLE `aplicaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
