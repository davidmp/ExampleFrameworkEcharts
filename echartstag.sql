-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-03-2021 a las 16:33:24
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `echartstag`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data1`
--

CREATE TABLE `data1` (
  `id_data` int(11) NOT NULL,
  `mes` varchar(30) DEFAULT NULL,
  `tipo` varchar(60) DEFAULT NULL,
  `anho` varchar(12) DEFAULT NULL,
  `cantidad` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `data1`
--

INSERT INTO `data1` (`id_data`, `mes`, `tipo`, `anho`, `cantidad`) VALUES
(1, 'Ene', 'Internacional', '2019', 70689),
(2, 'Feb', 'Internacional', '2019', 58008),
(3, 'Mar', 'Internacional', '2019', 84036),
(4, 'Abr', 'Internacional', '2019', 111433),
(5, 'May', 'Internacional', '2019', 110076),
(6, 'Jun', 'Internacional', '2019', 100417),
(7, 'Jul', 'Internacional', '2019', 122501),
(8, 'Ago', 'Internacional', '2019', 113765),
(9, 'Set', 'Internacional', '2019', 107881),
(10, 'Oct', 'Internacional', '2019', 103156),
(11, 'Nov', 'Internacional', '2019', 85076),
(12, 'Dic', 'Internacional', '2019', 70185),
(13, 'Ene', 'Nacional', '2019', 44092),
(14, 'Feb', 'Nacional', '2019', 24673),
(15, 'Mar', 'Nacional', '2019', 17092),
(16, 'Abr', 'Nacional', '2019', 18538),
(17, 'May', 'Nacional', '2019', 23229),
(18, 'Jun', 'Nacional', '2019', 24211),
(19, 'Jul', 'Nacional', '2019', 36365),
(20, 'Ago', 'Nacional', '2019', 50104),
(21, 'Set', 'Nacional', '2019', 32961),
(22, 'Oct', 'Nacional', '2019', 38630),
(23, 'Nov', 'Nacional', '2019', 35701),
(24, 'Dic', 'Nacional', '2019', 22612);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data2`
--

CREATE TABLE `data2` (
  `id_data` int(11) NOT NULL,
  `zona` varchar(60) DEFAULT NULL,
  `anho` varchar(12) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `data2`
--

INSERT INTO `data2` (`id_data`, `zona`, `anho`, `cantidad`, `tipo`) VALUES
(1, 'Norteamérica', '2015', 692140, 'Ingreso'),
(2, 'Centroamérica', '2015', 68490, 'Ingreso'),
(3, 'Sudamérica', '2015', 1919239, 'Ingreso'),
(4, 'Europa', '2015', 579063, 'Ingreso'),
(5, 'Asia', '2015', 141986, 'Ingreso'),
(6, 'África', '2015', 5727, 'Ingreso'),
(7, 'Oceanía ', '2015', 48183, 'Ingreso'),
(8, 'Otros 1', '2015', 881, 'Ingreso'),
(9, 'Norteamérica', '2016', 745755, 'Ingreso'),
(10, 'Centroamérica', '2016', 78271, 'Ingreso'),
(11, 'Sudamérica', '2016', 2110452, 'Ingreso'),
(12, 'Europa', '2016', 610371, 'Ingreso'),
(13, 'Asia', '2016', 142167, 'Ingreso'),
(14, 'África', '2016', 5075, 'Ingreso'),
(15, 'Oceanía ', '2016', 51222, 'Ingreso'),
(16, 'Otros 1', '2016', 1148, 'Ingreso'),
(17, 'Norteamérica', '2017', 770011, 'Ingreso'),
(18, 'Centroamérica', '2017', 70980, 'Ingreso'),
(19, 'Sudamérica', '2017', 2345158, 'Ingreso'),
(20, 'Europa', '2017', 632048, 'Ingreso'),
(21, 'Asia', '2017', 158439, 'Ingreso'),
(22, 'África', '2017', 4311, 'Ingreso'),
(23, 'Oceanía ', '2017', 50190, 'Ingreso'),
(24, 'Otros 1', '2017', 1202, 'Ingreso'),
(25, 'Norteamérica', '2018', 831534, 'Ingreso'),
(26, 'Centroamérica', '2018', 79189, 'Ingreso'),
(27, 'Sudamérica', '2018', 2627253, 'Ingreso'),
(28, 'Europa', '2018', 653020, 'Ingreso'),
(29, 'Asia', '2018', 174609, 'Ingreso'),
(30, 'África', '2018', 5048, 'Ingreso'),
(31, 'Oceanía ', '2018', 47368, 'Ingreso'),
(32, 'Otros 1', '2018', 1409, 'Ingreso'),
(33, 'Norteamérica', '2019', 880295, 'Ingreso'),
(34, 'Centroamérica', '2019', 89612, 'Ingreso'),
(35, 'Sudamérica', '2019', 2491299, 'Ingreso'),
(36, 'Europa', '2019', 680777, 'Ingreso'),
(37, 'Asia', '2019', 173956, 'Ingreso'),
(38, 'África', '2019', 5305, 'Ingreso'),
(39, 'Oceanía ', '2019', 48970, 'Ingreso'),
(40, 'Otros 1', '2019', 1573, 'Ingreso'),
(41, 'Norteamérica', '2015', 382330, 'Salida'),
(42, 'Centroamérica', '2015', 154361, 'Salida'),
(43, 'Sudamérica', '2015', 1928884, 'Salida'),
(44, 'Europa', '2015', 126750, 'Salida'),
(45, 'Asia', '2015', 1368, 'Salida'),
(46, 'África', '2015', 128, 'Salida'),
(47, 'Oceanía', '2015', 190, 'Salida'),
(48, 'Otros 1', '2015', 870, 'Salida'),
(49, 'Norteamérica', '2016', 413212, 'Salida'),
(50, 'Centroamérica', '2016', 166585, 'Salida'),
(51, 'Sudamérica', '2016', 1999102, 'Salida'),
(52, 'Europa', '2016', 169652, 'Salida'),
(53, 'Asia', '2016', 1025, 'Salida'),
(54, 'África', '2016', 235, 'Salida'),
(55, 'Oceanía', '2016', 135, 'Salida'),
(56, 'Otros 1', '2016', 1411, 'Salida'),
(57, 'Norteamérica', '2017', 413367, 'Salida'),
(58, 'Centroamérica', '2017', 179363, 'Salida'),
(59, 'Sudamérica', '2017', 2070884, 'Salida'),
(60, 'Europa', '2017', 208399, 'Salida'),
(61, 'Asia', '2017', 1207, 'Salida'),
(62, 'África', '2017', 451, 'Salida'),
(63, 'Oceanía', '2017', 257, 'Salida'),
(64, 'Otros 1', '2017', 1384, 'Salida'),
(65, 'Norteamérica', '2018', 465187, 'Salida'),
(66, 'Centroamérica', '2018', 202902, 'Salida'),
(67, 'Sudamérica', '2018', 2177456, 'Salida'),
(68, 'Europa', '2018', 230776, 'Salida'),
(69, 'Asia', '2018', 531, 'Salida'),
(70, 'África', '2018', 360, 'Salida'),
(71, 'Oceanía', '2018', 47, 'Salida'),
(72, 'Otros 1', '2018', 1118, 'Salida'),
(73, 'Norteamérica', '2019', 517666, 'Salida'),
(74, 'Centroamérica', '2019', 221966, 'Salida'),
(75, 'Sudamérica', '2019', 2272338, 'Salida'),
(76, 'Europa', '2019', 260353, 'Salida'),
(77, 'Asia', '2019', 465, 'Salida'),
(78, 'África', '2019', 241, 'Salida'),
(79, 'Oceanía', '2019', 45, 'Salida'),
(80, 'Otros 1', '2019', 2014, 'Salida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data3`
--

CREATE TABLE `data3` (
  `id_data` int(11) NOT NULL,
  `hora` int(11) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `diastext` varchar(180) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `data3`
--

INSERT INTO `data3` (`id_data`, `hora`, `dias`, `cantidad`, `diastext`) VALUES
(1, 0, 0, 5, 'Domingo'),
(2, 1, 0, 1, 'Domingo'),
(3, 2, 0, 0, 'Domingo'),
(4, 3, 0, 0, 'Domingo'),
(5, 4, 0, 0, 'Domingo'),
(6, 5, 0, 0, 'Domingo'),
(7, 6, 0, 0, 'Domingo'),
(8, 7, 0, 0, 'Domingo'),
(9, 8, 0, 0, 'Domingo'),
(10, 9, 0, 0, 'Domingo'),
(11, 10, 0, 0, 'Domingo'),
(12, 11, 0, 2, 'Domingo'),
(13, 12, 0, 4, 'Domingo'),
(14, 13, 0, 1, 'Domingo'),
(15, 14, 0, 1, 'Domingo'),
(16, 15, 0, 3, 'Domingo'),
(17, 16, 0, 4, 'Domingo'),
(18, 17, 0, 6, 'Domingo'),
(19, 18, 0, 4, 'Domingo'),
(20, 19, 0, 4, 'Domingo'),
(21, 20, 0, 3, 'Domingo'),
(22, 21, 0, 3, 'Domingo'),
(23, 22, 0, 2, 'Domingo'),
(24, 23, 0, 5, 'Domingo'),
(25, 0, 1, 7, 'Lunes'),
(26, 1, 1, 0, 'Lunes'),
(27, 2, 1, 0, 'Lunes'),
(28, 3, 1, 0, 'Lunes'),
(29, 4, 1, 0, 'Lunes'),
(30, 5, 1, 0, 'Lunes'),
(31, 6, 1, 0, 'Lunes'),
(32, 7, 1, 0, 'Lunes'),
(33, 8, 1, 0, 'Lunes'),
(34, 9, 1, 0, 'Lunes'),
(35, 10, 1, 5, 'Lunes'),
(36, 11, 1, 2, 'Lunes'),
(37, 12, 1, 2, 'Lunes'),
(38, 13, 1, 6, 'Lunes'),
(39, 14, 1, 9, 'Lunes'),
(40, 15, 1, 11, 'Lunes'),
(41, 16, 1, 6, 'Lunes'),
(42, 17, 1, 7, 'Lunes'),
(43, 18, 1, 8, 'Lunes'),
(44, 19, 1, 12, 'Lunes'),
(45, 20, 1, 5, 'Lunes'),
(46, 21, 1, 5, 'Lunes'),
(47, 22, 1, 7, 'Lunes'),
(48, 23, 1, 2, 'Lunes'),
(49, 0, 2, 1, 'Martes'),
(50, 1, 2, 1, 'Martes'),
(51, 2, 2, 0, 'Martes'),
(52, 3, 2, 0, 'Martes'),
(53, 4, 2, 0, 'Martes'),
(54, 5, 2, 0, 'Martes'),
(55, 6, 2, 0, 'Martes'),
(56, 7, 2, 0, 'Martes'),
(57, 8, 2, 0, 'Martes'),
(58, 9, 2, 0, 'Martes'),
(59, 10, 2, 3, 'Martes'),
(60, 11, 2, 2, 'Martes'),
(61, 12, 2, 1, 'Martes'),
(62, 13, 2, 9, 'Martes'),
(63, 14, 2, 8, 'Martes'),
(64, 15, 2, 10, 'Martes'),
(65, 16, 2, 6, 'Martes'),
(66, 17, 2, 5, 'Martes'),
(67, 18, 2, 5, 'Martes'),
(68, 19, 2, 5, 'Martes'),
(69, 20, 2, 7, 'Martes'),
(70, 21, 2, 4, 'Martes'),
(71, 22, 2, 2, 'Martes'),
(72, 23, 2, 4, 'Martes'),
(73, 0, 3, 7, 'Miercoles'),
(74, 1, 3, 3, 'Miercoles'),
(75, 2, 3, 0, 'Miercoles'),
(76, 3, 3, 0, 'Miercoles'),
(77, 4, 3, 0, 'Miercoles'),
(78, 5, 3, 0, 'Miercoles'),
(79, 6, 3, 0, 'Miercoles'),
(80, 7, 3, 0, 'Miercoles'),
(81, 8, 3, 1, 'Miercoles'),
(82, 9, 3, 0, 'Miercoles'),
(83, 10, 3, 5, 'Miercoles'),
(84, 11, 3, 4, 'Miercoles'),
(85, 12, 3, 7, 'Miercoles'),
(86, 13, 3, 14, 'Miercoles'),
(87, 14, 3, 13, 'Miercoles'),
(88, 15, 3, 12, 'Miercoles'),
(89, 16, 3, 9, 'Miercoles'),
(90, 17, 3, 5, 'Miercoles'),
(91, 18, 3, 5, 'Miercoles'),
(92, 19, 3, 10, 'Miercoles'),
(93, 20, 3, 6, 'Miercoles'),
(94, 21, 3, 4, 'Miercoles'),
(95, 22, 3, 4, 'Miercoles'),
(96, 23, 3, 1, 'Miercoles'),
(97, 0, 4, 1, 'Jueves'),
(98, 1, 4, 3, 'Jueves'),
(99, 2, 4, 0, 'Jueves'),
(100, 3, 4, 0, 'Jueves'),
(101, 4, 4, 0, 'Jueves'),
(102, 5, 4, 1, 'Jueves'),
(103, 6, 4, 0, 'Jueves'),
(104, 7, 4, 0, 'Jueves'),
(105, 8, 4, 0, 'Jueves'),
(106, 9, 4, 2, 'Jueves'),
(107, 10, 4, 4, 'Jueves'),
(108, 11, 4, 4, 'Jueves'),
(109, 12, 4, 2, 'Jueves'),
(110, 13, 4, 4, 'Jueves'),
(111, 14, 4, 4, 'Jueves'),
(112, 15, 4, 14, 'Jueves'),
(113, 16, 4, 12, 'Jueves'),
(114, 17, 4, 1, 'Jueves'),
(115, 18, 4, 8, 'Jueves'),
(116, 19, 4, 5, 'Jueves'),
(117, 20, 4, 3, 'Jueves'),
(118, 21, 4, 7, 'Jueves'),
(119, 22, 4, 3, 'Jueves'),
(120, 23, 4, 0, 'Jueves'),
(121, 0, 5, 2, 'Viernes'),
(122, 1, 5, 1, 'Viernes'),
(123, 2, 5, 0, 'Viernes'),
(124, 3, 5, 3, 'Viernes'),
(125, 4, 5, 0, 'Viernes'),
(126, 5, 5, 0, 'Viernes'),
(127, 6, 5, 0, 'Viernes'),
(128, 7, 5, 0, 'Viernes'),
(129, 8, 5, 2, 'Viernes'),
(130, 9, 5, 0, 'Viernes'),
(131, 10, 5, 4, 'Viernes'),
(132, 11, 5, 1, 'Viernes'),
(133, 12, 5, 5, 'Viernes'),
(134, 13, 5, 10, 'Viernes'),
(135, 14, 5, 5, 'Viernes'),
(136, 15, 5, 7, 'Viernes'),
(137, 16, 5, 11, 'Viernes'),
(138, 17, 5, 6, 'Viernes'),
(139, 18, 5, 0, 'Viernes'),
(140, 19, 5, 5, 'Viernes'),
(141, 20, 5, 3, 'Viernes'),
(142, 21, 5, 4, 'Viernes'),
(143, 22, 5, 2, 'Viernes'),
(144, 23, 5, 0, 'Viernes'),
(145, 0, 6, 1, 'Sabado'),
(146, 1, 6, 0, 'Sabado'),
(147, 2, 6, 0, 'Sabado'),
(148, 3, 6, 0, 'Sabado'),
(149, 4, 6, 0, 'Sabado'),
(150, 5, 6, 0, 'Sabado'),
(151, 6, 6, 0, 'Sabado'),
(152, 7, 6, 0, 'Sabado'),
(153, 8, 6, 0, 'Sabado'),
(154, 9, 6, 0, 'Sabado'),
(155, 10, 6, 1, 'Sabado'),
(156, 11, 6, 0, 'Sabado'),
(157, 12, 6, 2, 'Sabado'),
(158, 13, 6, 1, 'Sabado'),
(159, 14, 6, 3, 'Sabado'),
(160, 15, 6, 4, 'Sabado'),
(161, 16, 6, 0, 'Sabado'),
(162, 17, 6, 0, 'Sabado'),
(163, 18, 6, 0, 'Sabado'),
(164, 19, 6, 0, 'Sabado'),
(165, 20, 6, 1, 'Sabado'),
(166, 21, 6, 2, 'Sabado'),
(167, 22, 6, 2, 'Sabado'),
(168, 23, 6, 6, 'Sabado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `id_encuesta` int(11) NOT NULL,
  `descripcion` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `opcion1` int(11) DEFAULT NULL,
  `opcion2` int(11) DEFAULT NULL,
  `opcion3` int(11) DEFAULT NULL,
  `opcion4` int(11) DEFAULT NULL,
  `opcion5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id_encuesta`, `descripcion`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `opcion5`) VALUES
(1, 'Pregunta 1', 0, 0, 0, 3, 3),
(2, 'Pregunta 2', 0, 0, 0, 3, 3),
(3, 'Pregunta 3', 0, 0, 0, 1, 5),
(4, 'Pregunta 4', 0, 0, 0, 3, 3),
(5, 'Pregunta 5', 0, 0, 0, 3, 3),
(6, 'Pregunta 6', 0, 0, 0, 2, 4),
(7, 'Pregunta 7', 0, 0, 0, 4, 2),
(8, 'Pregunta 8', 0, 0, 0, 3, 3),
(9, 'Pregunta 9', 0, 0, 0, 3, 3),
(10, 'Pregunta 10', 0, 0, 0, 2, 4),
(11, 'Pregunta 11', 0, 0, 0, 2, 4),
(12, 'Pregunta 12', 0, 0, 1, 1, 4),
(13, 'Pregunta 13', 0, 0, 0, 2, 4),
(14, 'Pregunta 14', 0, 0, 0, 5, 1),
(15, 'Pregunta 15', 0, 0, 0, 3, 3),
(16, 'Pregunta 16', 0, 0, 0, 3, 3),
(17, 'Pregunta 17', 0, 0, 0, 1, 5),
(18, 'Pregunta 18', 0, 0, 0, 3, 3),
(19, 'Pregunta 19', 0, 0, 0, 2, 4),
(20, 'Pregunta 20', 0, 0, 0, 2, 4),
(21, 'Pregunta 21', 0, 0, 0, 4, 2),
(22, 'Pregunta 22', 0, 0, 0, 2, 4),
(23, 'ADECUACIÓN FUNCIONAL', 0, 0, 0, 1, 5),
(24, 'EFICIENCIA DE DESEMPEÑO', 0, 0, 0, 1, 5),
(25, 'COMPATIBILIDAD', 0, 0, 0, 2, 4),
(26, 'USABILIDAD', 0, 0, 0, 2, 4),
(27, 'PORTABILIDAD', 0, 0, 0, 1, 5),
(28, 'PRODUCTIVIDAD', 0, 0, 0, 1, 5),
(29, 'SATISFACCIÓN', 0, 0, 0, 2, 4),
(30, 'Evaluación de Atributos de Calidad de Software - EchartsTag', 0, 0, 0, 1, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `data1`
--
ALTER TABLE `data1`
  ADD PRIMARY KEY (`id_data`);

--
-- Indices de la tabla `data2`
--
ALTER TABLE `data2`
  ADD PRIMARY KEY (`id_data`);

--
-- Indices de la tabla `data3`
--
ALTER TABLE `data3`
  ADD PRIMARY KEY (`id_data`);

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`id_encuesta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `data1`
--
ALTER TABLE `data1`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `data2`
--
ALTER TABLE `data2`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `data3`
--
ALTER TABLE `data3`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `id_encuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
