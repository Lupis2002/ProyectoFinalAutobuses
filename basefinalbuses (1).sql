-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2023 a las 07:19:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basefinalbuses`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos`
--

CREATE TABLE `asientos` (
  `asiento_id` int(11) NOT NULL,
  `num_asiento` varchar(2) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asientos`
--

INSERT INTO `asientos` (`asiento_id`, `num_asiento`, `estado`) VALUES
(1, '1A', 'L'),
(2, '1B', 'O'),
(3, '1C', 'L'),
(4, '1D', 'L'),
(5, '2A', 'O'),
(6, '2B', 'L'),
(7, '2C', 'L'),
(8, '2D', 'L'),
(9, '3A', 'L'),
(10, '3B', 'L'),
(11, '3C', 'L'),
(12, '3D', 'L'),
(13, '4A', 'O'),
(14, '4B', 'L'),
(15, '4C', 'L'),
(16, '4D', 'L'),
(17, '5A', 'L'),
(18, '5B', 'O'),
(19, '5C', 'L'),
(20, '5D', 'L'),
(21, '6A', 'L'),
(22, '6B', 'L'),
(23, '6C', 'L'),
(24, '6D', 'L'),
(28, '1A', 'L'),
(29, '1B', 'O'),
(30, '1C', 'L'),
(31, '1D', 'L'),
(32, '2A', 'O'),
(33, '2B', 'L'),
(34, '2C', 'L'),
(35, '2D', 'L'),
(36, '3A', 'L'),
(37, '3B', 'L'),
(38, '3C', 'L'),
(39, '3D', 'L'),
(40, '4A', 'O'),
(41, '4B', 'L'),
(42, '4C', 'L'),
(43, '4D', 'L'),
(44, '5A', 'L'),
(45, '5B', 'O'),
(46, '5C', 'L'),
(47, '5D', 'L'),
(48, '6A', 'L'),
(49, '6B', 'L'),
(50, '6C', 'L'),
(51, '6D', 'L');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientoscabos`
--

CREATE TABLE `asientoscabos` (
  `asiento_id` int(11) NOT NULL,
  `num_asiento` varchar(2) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asientoscabos`
--

INSERT INTO `asientoscabos` (`asiento_id`, `num_asiento`, `estado`) VALUES
(1, '1A', 'L'),
(2, '1B', 'O'),
(3, '1C', 'L'),
(4, '1D', 'L'),
(5, '2A', 'L'),
(6, '2B', 'L'),
(7, '2C', 'L'),
(8, '2D', 'L'),
(9, '3A', 'L'),
(10, '3B', 'L'),
(11, '3C', 'L'),
(12, '3D', 'L'),
(13, '4A', 'L'),
(14, '4B', 'L'),
(15, '4C', 'L'),
(16, '4D', 'L'),
(17, '5A', 'L'),
(18, '5B', 'L'),
(19, '5C', 'L'),
(20, '5D', 'L'),
(21, '6A', 'L'),
(22, '6B', 'L'),
(23, '6C', 'L'),
(24, '6D', 'L');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientoscdmx`
--

CREATE TABLE `asientoscdmx` (
  `asiento_id` int(11) NOT NULL,
  `num_asiento` varchar(2) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asientoscdmx`
--

INSERT INTO `asientoscdmx` (`asiento_id`, `num_asiento`, `estado`) VALUES
(1, '1A', 'L'),
(2, '1B', 'L'),
(3, '1C', 'L'),
(4, '1D', 'L'),
(5, '2A', 'L'),
(6, '2B', 'L'),
(7, '2C', 'L'),
(8, '2D', 'L'),
(9, '3A', 'L'),
(10, '3B', 'O'),
(11, '3C', 'L'),
(12, '3D', 'L'),
(13, '4A', 'L'),
(14, '4B', 'L'),
(15, '4C', 'L'),
(16, '4D', 'L'),
(17, '5A', 'L'),
(18, '5B', 'L'),
(19, '5C', 'L'),
(20, '5D', 'L'),
(21, '6A', 'L'),
(22, '6B', 'L'),
(23, '6C', 'L'),
(24, '6D', 'L');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `destino_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`destino_id`, `nombre`) VALUES
(1, 'CHICHEN ITZA'),
(2, 'LOS CABOS'),
(3, 'CIUDAD DE MEXICO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

CREATE TABLE `pasajeros` (
  `pasajero_id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `salida` date NOT NULL,
  `regreso` date NOT NULL,
  `precio` varchar(8) NOT NULL,
  `asiento` varchar(2) NOT NULL,
  `asiento_id` int(11) NOT NULL,
  `destino_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`pasajero_id`, `nombre`, `categoria`, `salida`, `regreso`, `precio`, `asiento`, `asiento_id`, `destino_id`) VALUES
(56, 'Jorge Fraire', 'ADULTO', '2023-12-12', '2023-12-16', '55', '1A', 1, 1),
(57, 'Jorge Fraire', 'ADULTO', '2023-12-15', '2023-12-17', '55', '3A', 1, 1),
(58, 'Jorge Fraire', 'ADULTO', '2023-12-14', '2023-12-17', '55', '5B', 1, 1),
(59, 'Jorge Sepulveda', 'ADULTO', '2023-12-14', '2023-12-17', '55', '1B', 1, 1),
(60, 'Jorge Fraire', 'ADULTO', '2023-12-07', '2023-12-13', '55', '1C', 1, 1),
(61, 'Jorge Fraire', 'ADULTO', '2023-12-13', '2023-12-17', '55', '2A', 1, 1),
(62, 'Jorge Sepulveda', 'ADULTO', '2023-12-25', '2023-12-29', '55', '1B', 1, 1),
(63, 'Jorge Fraire', 'ADULTO', '2023-12-14', '2023-12-17', '55', '5B', 1, 1),
(64, 'Jorge Fraire', 'ADULTO', '2023-12-25', '2023-12-30', '55', '4A', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeroscabos`
--

CREATE TABLE `pasajeroscabos` (
  `pasajero_id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `salida` date NOT NULL,
  `regreso` date NOT NULL,
  `precio` varchar(8) NOT NULL,
  `asiento` varchar(2) NOT NULL,
  `asiento_id` int(11) NOT NULL,
  `destino_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pasajeroscabos`
--

INSERT INTO `pasajeroscabos` (`pasajero_id`, `nombre`, `categoria`, `salida`, `regreso`, `precio`, `asiento`, `asiento_id`, `destino_id`) VALUES
(1, 'Carlos Trujillo', 'ADULTO', '2023-12-20', '2023-12-25', '55', '1B', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeroscdmx`
--

CREATE TABLE `pasajeroscdmx` (
  `pasajero_id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `salida` date NOT NULL,
  `regreso` date NOT NULL,
  `precio` varchar(8) NOT NULL,
  `asiento` varchar(2) NOT NULL,
  `asiento_id` int(11) NOT NULL,
  `destino_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pasajeroscdmx`
--

INSERT INTO `pasajeroscdmx` (`pasajero_id`, `nombre`, `categoria`, `salida`, `regreso`, `precio`, `asiento`, `asiento_id`, `destino_id`) VALUES
(1, 'Jorge Fraire', 'ADULTO', '2023-12-14', '2023-12-16', '55', '3B', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `persona_id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contra` varchar(50) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`persona_id`, `usuario`, `correo`, `contra`, `Telefono`, `rol_id`) VALUES
(1, 'jorgesepfra', 'correo@gmail.com', 'Jorge2023', '8717681712', 1),
(2, 'lupitacasjim', 'correoLupita@gmail.com', 'Lupita123', '8715781213', 2),
(3, 'jorge123', 'jorge@gmail.com', 'Jorge2023', '8712671829', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD PRIMARY KEY (`asiento_id`);

--
-- Indices de la tabla `asientoscabos`
--
ALTER TABLE `asientoscabos`
  ADD PRIMARY KEY (`asiento_id`);

--
-- Indices de la tabla `asientoscdmx`
--
ALTER TABLE `asientoscdmx`
  ADD PRIMARY KEY (`asiento_id`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`destino_id`);

--
-- Indices de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD PRIMARY KEY (`pasajero_id`),
  ADD KEY `asiento_id` (`asiento_id`),
  ADD KEY `destino_id` (`destino_id`);

--
-- Indices de la tabla `pasajeroscabos`
--
ALTER TABLE `pasajeroscabos`
  ADD PRIMARY KEY (`pasajero_id`),
  ADD KEY `asiento_id` (`asiento_id`);

--
-- Indices de la tabla `pasajeroscdmx`
--
ALTER TABLE `pasajeroscdmx`
  ADD PRIMARY KEY (`pasajero_id`),
  ADD KEY `asiento_id` (`asiento_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`persona_id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asientos`
--
ALTER TABLE `asientos`
  MODIFY `asiento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `asientoscabos`
--
ALTER TABLE `asientoscabos`
  MODIFY `asiento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `asientoscdmx`
--
ALTER TABLE `asientoscdmx`
  MODIFY `asiento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `destino_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  MODIFY `pasajero_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `pasajeroscabos`
--
ALTER TABLE `pasajeroscabos`
  MODIFY `pasajero_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pasajeroscdmx`
--
ALTER TABLE `pasajeroscdmx`
  MODIFY `pasajero_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `persona_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD CONSTRAINT `pasajeros_ibfk_2` FOREIGN KEY (`destino_id`) REFERENCES `destinos` (`destino_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pasajeros_ibfk_3` FOREIGN KEY (`asiento_id`) REFERENCES `asientos` (`asiento_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pasajeroscabos`
--
ALTER TABLE `pasajeroscabos`
  ADD CONSTRAINT `pasajeroscabos_ibfk_1` FOREIGN KEY (`asiento_id`) REFERENCES `asientoscabos` (`asiento_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pasajeroscdmx`
--
ALTER TABLE `pasajeroscdmx`
  ADD CONSTRAINT `pasajeroscdmx_ibfk_1` FOREIGN KEY (`asiento_id`) REFERENCES `asientoscdmx` (`asiento_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`rol_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
