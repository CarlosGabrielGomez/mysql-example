-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2020 a las 22:31:10
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `edad` int(3) NOT NULL,
  `ocupacion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `mail`, `edad`, `ocupacion`) VALUES
(1, 'Jose', 'Martinez', 'jose@martinez.com.ar', 56, 'diseñador'),
(2, 'María', 'Gutierrez', 'maria@hotmail.com', 25, 'estudiante'),
(3, 'Silvia', 'Suarez', 'si_suarez@hotmail.com', 35, 'profesor'),
(4, 'Paola', 'Krum', 'pao@krum.com', 20, 'estudiante'),
(5, 'Neville', 'Longbottom', 'longbottom@gryffindor.com', 17, NULL),
(6, 'Draco', 'Malfoy', 'malfoy@slytherin.com', 17, 'programador'),
(7, 'Fenrir', 'Greyback', 'lobo@gmail.com', 59, 'diseñador'),
(8, 'Tom', 'Riddle', 'tommy@sangrepura.com', 60, NULL),
(9, 'Bellatrix', 'Lestrange', 'bellatrix@sangrepura.com', 45, 'programador'),
(10, 'Harry', 'Potter', 'potter@gryffindor.com', 17, 'estudiante'),
(11, 'Lucius', 'Malfoy', 'malfoy_padre@slytherin.com', 52, 'diseñador'),
(12, 'Rodolphus', 'Lestrange', 'roddy@slytherin.com', 56, NULL),
(13, 'Albus', 'Dumbledore', 'albus@hogwarts.com', 105, 'profesor'),
(14, 'Ginny', 'Weasley', 'ginny@gryffindor.com', 15, 'estudiante'),
(15, 'Peter', 'Pettigrew', 'peter@traidor.com', 53, NULL),
(16, 'Gilderoy', 'Lockhart', 'gildy@soybonito.com', 49, 'Sonreir'),
(17, 'Ron', 'Weasley', 'ron@griffyndor.com', 17, 'estudiante'),
(18, 'Colin', 'Creevy', 'colin@gryffindor.com', 14, 'programador'),
(19, 'Sirius', 'Black', 'sirius@gryffindor.com', 36, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
