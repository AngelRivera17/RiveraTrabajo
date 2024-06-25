-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2024 a las 03:58:12
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registros`
--
CREATE DATABASE IF NOT EXISTS `registros` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registros`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formu`
--

DROP TABLE IF EXISTS `formu`;
CREATE TABLE `formu` (
  `id` int(10) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formu`
--

INSERT INTO `formu` (`id`, `nombre`, `descripcion`, `img`, `color`) VALUES
(1, 'Angel', 'Estudiante', 'https://i.pinimg.com/564x/75/a5/5d/75a55d6c79018ddcc6a617f10fb98aa5.jpg', '#2E2EFE'),
(2, 'Eduardo', 'Comerciante', 'https://w7.pngwing.com/pngs/496/201/png-transparent-electric-guitar-electric-guitar-guitar-accessory-desktop-wallpaper-string-instrument.png', '#64FE2E'),
(3, 'Net', 'Empleado', 'https://w7.pngwing.com/pngs/488/280/png-transparent-black-electric-guitar-product-kind-guitar-musical-instruments.png', '#FFBF00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formu`
--
ALTER TABLE `formu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formu`
--
ALTER TABLE `formu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
