-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2020 a las 22:55:01
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
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `id_editorial` int(4) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`id_editorial`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Paidos', 'Av. Libertador 234', '1234-4542'),
(2, 'Salamandra', 'Medrano 951', '9834-1224'),
(3, 'Alfaguara', 'Av. Directorio 1631', '4523-2484'),
(4, 'De Bolsillo', 'Calle Falsa 123', '4523-1222');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(6) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `precio` int(5) NOT NULL,
  `id_editorial` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `titulo`, `autor`, `precio`, `id_editorial`) VALUES
(1, 'Harry Potter 1', 'Rowling', 3454, 2),
(2, 'Harry Potter 2', 'Rowling', 93431, 2),
(3, 'La Niebla', 'King', 343, 4),
(4, 'La Cúpula', 'King', 938, 4),
(5, 'El túnel', 'Sábato', 1283, 1),
(6, 'Entrevista con el vampiro', 'Rice', 374, 2),
(7, 'Misery', 'King', 2392, 4),
(8, 'Girl, woman, other', 'Evaristo', 8231, 3),
(9, 'The Jane Austen Society ', 'Jenner', 1283, 1),
(10, 'Paris Never Leaves You', 'Feldman', 372, 4),
(11, 'We Came Here to Shine', 'Schnall', 3002, 3),
(12, 'What You Wish For', 'Center', 834, 4),
(13, 'How to Save a Life', 'Fenton', 5912, 3),
(14, 'The Swap', 'Harding', 285, 1),
(15, 'Stranger in the Lake', 'Belle', 2387, 2),
(16, 'The Split', 'Bolton', 2834, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`id_editorial`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  MODIFY `id_editorial` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
