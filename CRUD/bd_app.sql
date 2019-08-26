-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2019 a las 06:56:05
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_producto`
--

CREATE TABLE `t_producto` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `DESCRIPCION` text COLLATE utf8_spanish_ci NOT NULL,
  `PRECIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_producto`
--

INSERT INTO `t_producto` (`ID`, `NOMBRE`, `DESCRIPCION`, `PRECIO`) VALUES
(3, 'cafe', 'molido', 1000),
(4, 'pan', 'aasfsd', 20000),
(5, 'leche', 'entera', 1800),
(6, 'canela', 'en polvo', 2000),
(7, 'sal', 'grano', 12333),
(8, 'cafe', 'molido', 1000),
(9, 'panela', 'molida', 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuarios`
--

CREATE TABLE `t_usuarios` (
  `USU_ID` int(11) NOT NULL,
  `USU_NOMBRE` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `USU_APELLIDO` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `USU_CORREO` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `USU_PASSWORD` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `USU_ROL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_usuarios`
--

INSERT INTO `t_usuarios` (`USU_ID`, `USU_NOMBRE`, `USU_APELLIDO`, `USU_CORREO`, `USU_PASSWORD`, `USU_ROL`) VALUES
(1, 'ANDRES', 'ARROYO', 'ADMIN@ADMIN.COM', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1),
(2, 'DANIELA ', 'PEREIRA', 'DANI@PEREIRA', '7b52009b64fd0a2a49e6d8a939753077792b0554', 2),
(3, 'ANDRES', 'JIMENEZ', 'ANDRESJ@GMAIL.COM', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2),
(4, 'ALGUIEN', 'ALGO', 'ALGUIEN@HOTMAIL.COM', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_producto`
--
ALTER TABLE `t_producto`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD PRIMARY KEY (`USU_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `t_producto`
--
ALTER TABLE `t_producto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  MODIFY `USU_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
