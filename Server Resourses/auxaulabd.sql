-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2019 a las 21:26:53
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `auxaulabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `alumno` varchar(50) COLLATE utf8_bin NOT NULL,
  `asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `grupo` varchar(10) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `aplicacion` varchar(100) COLLATE utf8_bin NOT NULL,
  `tiempo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`alumno`, `asignatura`, `grupo`, `curso`, `fecha_inicio`, `fecha_fin`, `aplicacion`, `tiempo`) VALUES
('alu1', 'BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00', 'com.example.auxaula', 2880000),
('alu1', 'BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00', 'com.google.android.gm', 540000),
('alu1', 'BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00', 'com.android.chrome', 2160000),
('alu1', 'BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00', 'com.example.auxaula', 3240000),
('alu1', 'BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00', 'com.google.android.gm', 1080000),
('alu1', 'BD', 'I', '2018/2019', '2019-05-15 09:00:00', '2019-05-15 10:00:00', 'com.example.auxaula', 2268000),
('alu1', 'BD', 'I', '2018/2019', '2019-05-17 12:00:00', '2019-05-17 13:00:00', 'com.example.auxaula', 3528000),
('alu1', 'BD', 'I', '2018/2019', '2019-05-27 23:50:00', '2019-05-27 23:55:00', 'com.android.camera2', 14044),
('alu1', 'BD', 'I', '2018/2019', '2019-05-27 23:50:00', '2019-05-27 23:55:00', 'com.android.launcher3', 13129),
('alu1', 'BD', 'I', '2018/2019', '2019-05-27 23:50:00', '2019-05-27 23:55:00', 'com.android.vending', 9215),
('alu1', 'BD', 'I', '2018/2019', '2019-05-27 23:50:00', '2019-05-27 23:55:00', 'com.example.auxaula', 23804),
('alu1', 'BD', 'I', '2018/2019', '2019-05-27 23:50:00', '2019-05-27 23:55:00', 'com.google.android.gm', 12297),
('alu2', 'BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00', 'com.android.chrome', 2160000),
('alu2', 'BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00', 'com.example.auxaula', 1368000),
('alu2', 'BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00', 'com.android.chrome', 3600000),
('alu2', 'BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00', 'com.example.auxaula', 1440000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` varchar(50) COLLATE utf8_bin NOT NULL,
  `pass` varchar(16) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `pass`, `nombre`) VALUES
('alu1', '123', 'Alumno Uno'),
('alu2', '123', 'Alumno Dos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id` varchar(5) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id`, `curso`, `nombre`) VALUES
('ADBD', '2018/2019', 'Administracion BD'),
('BD', '2018/2019', 'Databases');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_grupo`
--

CREATE TABLE `calendario_grupo` (
  `asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `grupo` varchar(10) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `calendario_grupo`
--

INSERT INTO `calendario_grupo` (`asignatura`, `grupo`, `curso`, `fecha_inicio`, `fecha_fin`) VALUES
('ADBD', 'A', '2018/2019', '2019-05-10 11:00:00', '2019-05-10 13:00:00'),
('ADBD', 'A', '2018/2019', '2019-05-13 09:00:00', '2019-05-13 10:00:00'),
('BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00'),
('BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00'),
('BD', 'I', '2018/2019', '2019-05-15 09:00:00', '2019-05-15 10:00:00'),
('BD', 'I', '2018/2019', '2019-05-17 12:00:00', '2019-05-17 13:00:00'),
('BD', 'I', '2018/2019', '2019-05-21 19:50:00', '2019-05-21 19:55:00'),
('BD', 'I', '2018/2019', '2019-05-27 23:50:00', '2019-05-27 23:55:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `path` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `enlace` varchar(1000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id`, `nombre`, `path`, `enlace`) VALUES
(1, 'Course Info', '', 'http://192.168.0.15/documents/BD/00courseInfo.pdf'),
(3, 'Introduction', '', 'http://192.168.0.15/documents/BD/01intro.pdf'),
(4, 'ER Exercises', '', 'http://192.168.0.15/documents/BD/02erClassExercises.pdf'),
(5, 'ER Model', '', 'http://192.168.0.15/documents/BD/02er.pdf'),
(6, 'Relational Model', '', 'http://192.168.0.15/documents/BD/03rm.pdf'),
(7, 'RM Exercises', '', 'http://192.168.0.15/documents/BD/04raExercises.pdf'),
(8, 'Relational Algebra', '', 'http://192.168.0.15/documents/BD/04ra.pdf'),
(9, 'SQL(1) Exercises', '', 'http://192.168.0.15/documents/\r\nBD/05sql1Exercises.pdf'),
(10, 'SQL(1)', '', 'http://192.168.0.15/documents/BD/05sql1.pdf'),
(11, 'SQL(2) Class Exercises', '', 'http://192.168.0.15/documents/\r\nBD/05sql2ClassExercises.pdf'),
(12, 'SQL(2) Class Exercises', '', 'http://192.168.0.15/documents/\r\nBD/05sql2Exercises.pdf'),
(13, 'SQL(2)', '', 'http://192.168.0.15/documents/BD/05sql2.pdf'),
(14, 'PLSQL Exercises', '', 'http://192.168.0.15/documents/\r\nBD/06plsqlExercises.pdf'),
(15, 'PLSQL', '', 'http://192.168.0.15/documents/BD/06plsql.pdf'),
(16, 'Transactions', '', 'http://192.168.0.15/documents/BD/07transactions.pdf'),
(17, 'Transactions Exercises', '', 'http://192.168.0.15/documents/\r\nBD/07trnExercises.pdf'),
(18, 'Ejercicios arranque Oracle', '', 'http://192.168.0.15/documents/ADBD/00-\r\nEJERCICIOS-arranque-Oracle-VB.pdf'),
(19, 'Arquitectura de Oracle', '', 'http://192.168.0.15/documents/ADBD/06-\r\narquitectura.pdf'),
(20, 'Ejercicios de Arquitectura', '', 'http://192.168.0.15/documents/ADBD/06-\r\nEJERCICIOS-Arquitectura.pdf'),
(21, 'Objetos de la BD', '', 'http://192.168.0.15/documents/ADBD/07-objetos.pdf'),
(22, 'Backup y Recuperacion (1)', '', 'http://192.168.0.15/documents/ADBD/08-\r\nbackup-and-recovery1.pdf'),
(23, 'Backup y Recuperacion (2)', '', 'http://192.168.0.15/documents/ADBD/08-\r\nbackup-and-recovery2.pdf'),
(24, 'Ejercicios de Transacciones y Backup (2)', '', 'http://192.168.0.15/\r\ndocuments/ADBD/08-EJERCICIOS-transacciones-backup2.pdf'),
(25, 'Ejercicios de Transacciones y Backup (1)', '', 'http://192.168.0.15/\r\ndocuments/ADBD/08-EJERCICIOS-transacciones-backup.pdf'),
(26, 'Monitorizacion y Rendimiento', '', 'http://192.168.0.15/documents/ADBD/09-\r\nEJERCICIOS-maintenance-and-performance.pdf'),
(27, 'Ejercicios de Monitorizacion y Rendimiento', '', 'http://147.96.81.96/\r\ndocuments/ADBD/09-maintenance-and-performance.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio`
--

CREATE TABLE `ejercicio` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `enlace` varchar(1000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ejercicio`
--

INSERT INTO `ejercicio` (`id`, `nombre`, `enlace`) VALUES
(1, 'Ejercicio SQL', 'https://livesql.oracle.com'),
(2, 'Google Test', 'https://docs.google.com/forms/d/e/1FAIpQLSdyKs_Wk1el4A3zXeFfrWZygmNp8E-UM7-P2hKMAeZp8a4vcQ/viewform');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id` varchar(10) COLLATE utf8_bin NOT NULL,
  `id_asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id`, `id_asignatura`, `curso`, `nombre`) VALUES
('A', 'ADBD', '2018/2019', 'ADBD Grupo A'),
('I', 'BD', '2018/2019', 'BD Grupo I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` varchar(150) COLLATE utf8_bin NOT NULL,
  `alumno` varchar(50) COLLATE utf8_bin NOT NULL,
  `asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `grupo` varchar(10) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `documento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` varchar(50) COLLATE utf8_bin NOT NULL,
  `pass` varchar(16) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `pass`, `nombre`) VALUES
('pro1', '123', 'Profesor Uno'),
('pro2', '123', 'Profesor Dos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_alumno_grupo`
--

CREATE TABLE `relacion_alumno_grupo` (
  `alumno` varchar(50) COLLATE utf8_bin NOT NULL,
  `asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `grupo` varchar(10) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relacion_alumno_grupo`
--

INSERT INTO `relacion_alumno_grupo` (`alumno`, `asignatura`, `grupo`, `curso`) VALUES
('alu1', 'ADBD', 'A', '2018/2019'),
('alu1', 'BD', 'I', '2018/2019'),
('alu2', 'BD', 'I', '2018/2019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_documento_dia`
--

CREATE TABLE `relacion_documento_dia` (
  `documento` int(10) NOT NULL,
  `asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `grupo` varchar(10) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relacion_documento_dia`
--

INSERT INTO `relacion_documento_dia` (`documento`, `asignatura`, `grupo`, `curso`, `fecha_inicio`, `fecha_fin`) VALUES
(8, 'BD', 'I', '2018/2019', '2019-05-21 19:50:00', '2019-05-21 19:55:00'),
(11, 'BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00'),
(12, 'BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00'),
(13, 'BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00'),
(14, 'BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00'),
(15, 'BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00'),
(22, 'ADBD', 'A', '2018/2019', '2019-05-10 11:00:00', '2019-05-10 13:00:00'),
(22, 'ADBD', 'A', '2018/2019', '2019-05-13 09:00:00', '2019-05-13 10:00:00'),
(23, 'ADBD', 'A', '2018/2019', '2019-05-10 11:00:00', '2019-05-10 13:00:00'),
(23, 'ADBD', 'A', '2018/2019', '2019-05-13 09:00:00', '2019-05-13 10:00:00'),
(24, 'ADBD', 'A', '2018/2019', '2019-05-10 11:00:00', '2019-05-10 13:00:00'),
(24, 'ADBD', 'A', '2018/2019', '2019-05-13 09:00:00', '2019-05-13 10:00:00'),
(25, 'ADBD', 'A', '2018/2019', '2019-05-10 11:00:00', '2019-05-10 13:00:00'),
(25, 'ADBD', 'A', '2018/2019', '2019-05-13 09:00:00', '2019-05-13 10:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_documento_grupo`
--

CREATE TABLE `relacion_documento_grupo` (
  `documento` int(10) NOT NULL,
  `asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `grupo` varchar(10) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relacion_documento_grupo`
--

INSERT INTO `relacion_documento_grupo` (`documento`, `asignatura`, `grupo`, `curso`) VALUES
(1, 'BD', 'I', '2018/2019'),
(3, 'BD', 'I', '2018/2019'),
(4, 'BD', 'I', '2018/2019'),
(5, 'BD', 'I', '2018/2019'),
(6, 'BD', 'I', '2018/2019'),
(7, 'BD', 'I', '2018/2019'),
(8, 'BD', 'I', '2018/2019'),
(9, 'BD', 'I', '2018/2019'),
(10, 'BD', 'I', '2018/2019'),
(11, 'BD', 'I', '2018/2019'),
(12, 'BD', 'I', '2018/2019'),
(13, 'BD', 'I', '2018/2019'),
(14, 'BD', 'I', '2018/2019'),
(15, 'BD', 'I', '2018/2019'),
(16, 'BD', 'I', '2018/2019'),
(17, 'BD', 'I', '2018/2019'),
(18, 'ADBD', 'A', '2018/2019'),
(19, 'ADBD', 'A', '2018/2019'),
(20, 'ADBD', 'A', '2018/2019'),
(21, 'ADBD', 'A', '2018/2019'),
(22, 'ADBD', 'A', '2018/2019'),
(23, 'ADBD', 'A', '2018/2019'),
(24, 'ADBD', 'A', '2018/2019'),
(25, 'ADBD', 'A', '2018/2019'),
(26, 'ADBD', 'A', '2018/2019'),
(27, 'ADBD', 'A', '2018/2019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_ejercicio_dia`
--

CREATE TABLE `relacion_ejercicio_dia` (
  `ejercicio` int(10) NOT NULL,
  `asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `grupo` varchar(10) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relacion_ejercicio_dia`
--

INSERT INTO `relacion_ejercicio_dia` (`ejercicio`, `asignatura`, `grupo`, `curso`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 'BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00'),
(2, 'BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00'),
(2, 'BD', 'I', '2018/2019', '2019-05-15 09:00:00', '2019-05-15 10:00:00'),
(2, 'BD', 'I', '2018/2019', '2019-05-17 12:00:00', '2019-05-17 13:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_ejercicio_grupo`
--

CREATE TABLE `relacion_ejercicio_grupo` (
  `ejercicio` int(10) NOT NULL,
  `asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `grupo` varchar(10) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relacion_ejercicio_grupo`
--

INSERT INTO `relacion_ejercicio_grupo` (`ejercicio`, `asignatura`, `grupo`, `curso`) VALUES
(1, 'BD', 'I', '2018/2019'),
(2, 'BD', 'I', '2018/2019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_profesor_grupo`
--

CREATE TABLE `relacion_profesor_grupo` (
  `profesor` varchar(50) COLLATE utf8_bin NOT NULL,
  `asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `grupo` varchar(10) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `relacion_profesor_grupo`
--

INSERT INTO `relacion_profesor_grupo` (`profesor`, `asignatura`, `grupo`, `curso`) VALUES
('pro1', 'ADBD', 'A', '2018/2019'),
('pro1', 'BD', 'I', '2018/2019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `asignatura` varchar(5) COLLATE utf8_bin NOT NULL,
  `grupo` varchar(10) COLLATE utf8_bin NOT NULL,
  `curso` varchar(9) COLLATE utf8_bin NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `alumno` varchar(50) COLLATE utf8_bin NOT NULL,
  `ejercicio` int(10) NOT NULL,
  `nota` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`asignatura`, `grupo`, `curso`, `fecha_inicio`, `fecha_fin`, `alumno`, `ejercicio`, `nota`) VALUES
('BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00', 'alu1', 1, 87),
('BD', 'I', '2018/2019', '2019-05-10 09:00:00', '2019-05-10 10:00:00', 'alu2', 1, 47),
('BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00', 'alu1', 2, 33),
('BD', 'I', '2018/2019', '2019-05-13 11:00:00', '2019-05-13 13:00:00', 'alu2', 2, 10),
('BD', 'I', '2018/2019', '2019-05-15 09:00:00', '2019-05-15 10:00:00', 'alu1', 2, 55),
('BD', 'I', '2018/2019', '2019-05-17 12:00:00', '2019-05-17 13:00:00', 'alu1', 2, 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_notes`
--

CREATE TABLE `student_notes` (
  `student` varchar(50) COLLATE utf8_bin NOT NULL,
  `document` int(10) NOT NULL,
  `notes` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_notes`
--

CREATE TABLE `teacher_notes` (
  `id` varchar(50) COLLATE utf8_bin NOT NULL,
  `document` int(10) NOT NULL,
  `notes` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`alumno`,`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`,`aplicacion`),
  ADD KEY `asignatura` (`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id`,`curso`);

--
-- Indices de la tabla `calendario_grupo`
--
ALTER TABLE `calendario_grupo`
  ADD PRIMARY KEY (`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`),
  ADD KEY `grupo` (`grupo`),
  ADD KEY `calendario_grupo_ibfk_1` (`asignatura`,`curso`,`grupo`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`,`id_asignatura`,`curso`),
  ADD KEY `id_asignatura` (`id_asignatura`,`curso`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`,`alumno`,`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`,`documento`),
  ADD KEY `alumno` (`alumno`),
  ADD KEY `grupo` (`grupo`),
  ADD KEY `notas_ibfk_3` (`asignatura`,`curso`,`grupo`),
  ADD KEY `documento` (`documento`,`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `relacion_alumno_grupo`
--
ALTER TABLE `relacion_alumno_grupo`
  ADD PRIMARY KEY (`alumno`,`asignatura`,`grupo`,`curso`),
  ADD KEY `asignatura` (`asignatura`,`curso`,`grupo`);

--
-- Indices de la tabla `relacion_documento_dia`
--
ALTER TABLE `relacion_documento_dia`
  ADD PRIMARY KEY (`documento`,`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`),
  ADD KEY `asignatura` (`asignatura`,`curso`,`grupo`),
  ADD KEY `asignatura_2` (`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`);

--
-- Indices de la tabla `relacion_documento_grupo`
--
ALTER TABLE `relacion_documento_grupo`
  ADD PRIMARY KEY (`documento`,`asignatura`,`grupo`,`curso`),
  ADD KEY `relacion_documento_grupo_ibfk_1` (`asignatura`,`curso`,`grupo`);

--
-- Indices de la tabla `relacion_ejercicio_dia`
--
ALTER TABLE `relacion_ejercicio_dia`
  ADD PRIMARY KEY (`ejercicio`,`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`),
  ADD KEY `asignatura` (`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`);

--
-- Indices de la tabla `relacion_ejercicio_grupo`
--
ALTER TABLE `relacion_ejercicio_grupo`
  ADD PRIMARY KEY (`ejercicio`,`asignatura`,`grupo`,`curso`),
  ADD KEY `asignatura` (`asignatura`,`curso`,`grupo`);

--
-- Indices de la tabla `relacion_profesor_grupo`
--
ALTER TABLE `relacion_profesor_grupo`
  ADD PRIMARY KEY (`profesor`,`asignatura`,`grupo`,`curso`),
  ADD KEY `asignatura` (`asignatura`,`curso`,`grupo`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`,`alumno`,`ejercicio`),
  ADD KEY `alumno` (`alumno`),
  ADD KEY `resultados_ibfk_2` (`asignatura`,`curso`,`grupo`),
  ADD KEY `ejercicio` (`ejercicio`,`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`);

--
-- Indices de la tabla `student_notes`
--
ALTER TABLE `student_notes`
  ADD PRIMARY KEY (`student`,`document`),
  ADD KEY `document` (`document`);

--
-- Indices de la tabla `teacher_notes`
--
ALTER TABLE `teacher_notes`
  ADD PRIMARY KEY (`id`,`document`),
  ADD KEY `document` (`document`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `actividad_ibfk_2` FOREIGN KEY (`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`) REFERENCES `calendario_grupo` (`asignatura`, `grupo`, `curso`, `fecha_inicio`, `fecha_fin`);

--
-- Filtros para la tabla `calendario_grupo`
--
ALTER TABLE `calendario_grupo`
  ADD CONSTRAINT `calendario_grupo_ibfk_1` FOREIGN KEY (`asignatura`,`curso`,`grupo`) REFERENCES `grupo` (`id_asignatura`, `curso`, `id`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`id_asignatura`,`curso`) REFERENCES `asignatura` (`id`, `curso`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`documento`,`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`) REFERENCES `relacion_documento_dia` (`documento`, `asignatura`, `grupo`, `curso`, `fecha_inicio`, `fecha_fin`);

--
-- Filtros para la tabla `relacion_alumno_grupo`
--
ALTER TABLE `relacion_alumno_grupo`
  ADD CONSTRAINT `relacion_alumno_grupo_ibfk_1` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `relacion_alumno_grupo_ibfk_2` FOREIGN KEY (`asignatura`,`curso`,`grupo`) REFERENCES `grupo` (`id_asignatura`, `curso`, `id`);

--
-- Filtros para la tabla `relacion_documento_dia`
--
ALTER TABLE `relacion_documento_dia`
  ADD CONSTRAINT `relacion_documento_dia_ibfk_1` FOREIGN KEY (`documento`) REFERENCES `documento` (`id`),
  ADD CONSTRAINT `relacion_documento_dia_ibfk_2` FOREIGN KEY (`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`) REFERENCES `calendario_grupo` (`asignatura`, `grupo`, `curso`, `fecha_inicio`, `fecha_fin`);

--
-- Filtros para la tabla `relacion_documento_grupo`
--
ALTER TABLE `relacion_documento_grupo`
  ADD CONSTRAINT `relacion_documento_grupo_ibfk_1` FOREIGN KEY (`asignatura`,`curso`,`grupo`) REFERENCES `grupo` (`id_asignatura`, `curso`, `id`),
  ADD CONSTRAINT `relacion_documento_grupo_ibfk_2` FOREIGN KEY (`documento`) REFERENCES `documento` (`id`);

--
-- Filtros para la tabla `relacion_ejercicio_dia`
--
ALTER TABLE `relacion_ejercicio_dia`
  ADD CONSTRAINT `relacion_ejercicio_dia_ibfk_1` FOREIGN KEY (`ejercicio`) REFERENCES `ejercicio` (`id`),
  ADD CONSTRAINT `relacion_ejercicio_dia_ibfk_2` FOREIGN KEY (`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`) REFERENCES `calendario_grupo` (`asignatura`, `grupo`, `curso`, `fecha_inicio`, `fecha_fin`);

--
-- Filtros para la tabla `relacion_ejercicio_grupo`
--
ALTER TABLE `relacion_ejercicio_grupo`
  ADD CONSTRAINT `relacion_ejercicio_grupo_ibfk_1` FOREIGN KEY (`ejercicio`) REFERENCES `ejercicio` (`id`),
  ADD CONSTRAINT `relacion_ejercicio_grupo_ibfk_2` FOREIGN KEY (`asignatura`,`curso`,`grupo`) REFERENCES `grupo` (`id_asignatura`, `curso`, `id`);

--
-- Filtros para la tabla `relacion_profesor_grupo`
--
ALTER TABLE `relacion_profesor_grupo`
  ADD CONSTRAINT `relacion_profesor_grupo_ibfk_1` FOREIGN KEY (`profesor`) REFERENCES `profesor` (`id`),
  ADD CONSTRAINT `relacion_profesor_grupo_ibfk_2` FOREIGN KEY (`asignatura`,`curso`,`grupo`) REFERENCES `grupo` (`id_asignatura`, `curso`, `id`);

--
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `resultados_ibfk_1` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `resultados_ibfk_2` FOREIGN KEY (`ejercicio`,`asignatura`,`grupo`,`curso`,`fecha_inicio`,`fecha_fin`) REFERENCES `relacion_ejercicio_dia` (`ejercicio`, `asignatura`, `grupo`, `curso`, `fecha_inicio`, `fecha_fin`);

--
-- Filtros para la tabla `student_notes`
--
ALTER TABLE `student_notes`
  ADD CONSTRAINT `student_notes_ibfk_1` FOREIGN KEY (`student`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `student_notes_ibfk_2` FOREIGN KEY (`document`) REFERENCES `documento` (`id`);

--
-- Filtros para la tabla `teacher_notes`
--
ALTER TABLE `teacher_notes`
  ADD CONSTRAINT `teacher_notes_ibfk_1` FOREIGN KEY (`document`) REFERENCES `documento` (`id`),
  ADD CONSTRAINT `teacher_notes_ibfk_2` FOREIGN KEY (`id`) REFERENCES `profesor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
