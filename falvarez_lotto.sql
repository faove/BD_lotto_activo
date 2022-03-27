-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-07-2018 a las 13:49:39
-- Versión del servidor: 5.5.57-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `falvarez_lotto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadas`
--

CREATE TABLE IF NOT EXISTS `jugadas` (
  `Num_ticket` bigint(20) NOT NULL AUTO_INCREMENT,
  `Serial` varchar(255) DEFAULT NULL,
  `Ticket` varchar(255) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Sorteo` varchar(10) NOT NULL,
  `Animalito` varchar(100) NOT NULL,
  `Num_animalito` varchar(2) NOT NULL,
  `Monto` int(11) NOT NULL,
  `Total` bigint(20) NOT NULL,
  `Pagar` bigint(20) NOT NULL,
  `Cant_jugadas` int(11) NOT NULL,
  `Imprimir` int(11) NOT NULL,
  `Usuario` varchar(256) NOT NULL,
  `Fecha_cobro` datetime NOT NULL,
  `Flag_imprimir` tinyint(1) NOT NULL,
  `Pagado` varchar(1) NOT NULL,
  PRIMARY KEY (`Num_ticket`),
  UNIQUE KEY `Num_ticket` (`Num_ticket`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Volcado de datos para la tabla `jugadas`
--

INSERT INTO `jugadas` (`Num_ticket`, `Serial`, `Ticket`, `Fecha`, `Sorteo`, `Animalito`, `Num_animalito`, `Monto`, `Total`, `Pagar`, `Cant_jugadas`, `Imprimir`, `Usuario`, `Fecha_cobro`, `Flag_imprimir`, `Pagado`) VALUES
(115, '2', '5b3c914514a48', '2018-07-04 07:35:07', '9', 'Zebra', '23', 2000, 0, 60000, 0, 1, '', '0000-00-00 00:00:00', 1, 'N'),
(116, '2', '5b3c914514a48', '2018-07-04 07:35:19', '9', 'Pescado', '33', 2000, 2000, 60000, 0, 1, '', '0000-00-00 00:00:00', 1, 'N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nuevo_serial`
--

CREATE TABLE IF NOT EXISTS `nuevo_serial` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `serial` bigint(100) NOT NULL,
  `Ticket` varchar(255) NOT NULL,
  `agencia` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nuevo_serial`
--

INSERT INTO `nuevo_serial` (`id`, `fecha`, `serial`, `Ticket`, `agencia`) VALUES
(1, '2018-11-11', 3, '5b3cb10e0a7a0', 'Los chaimas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruleta_activa`
--

CREATE TABLE IF NOT EXISTS `ruleta_activa` (
  `numero` int(11) NOT NULL,
  `num_animalito` varchar(3) NOT NULL,
  `animalito` varchar(100) NOT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `flag` int(11) NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de animalitos ruleta activa';

--
-- Volcado de datos para la tabla `ruleta_activa`
--

INSERT INTO `ruleta_activa` (`numero`, `num_animalito`, `animalito`, `archivo`, `flag`) VALUES
(1, '0', 'Delfin', NULL, 0),
(2, '00', 'Ballena', NULL, 0),
(3, '01', 'Carnero', NULL, 0),
(4, '02', 'Toro', NULL, 0),
(5, '03', 'Ciempies', NULL, 0),
(6, '04', 'Alacran', NULL, 0),
(7, '05', 'Leon', NULL, 0),
(8, '06', 'Rana', NULL, 0),
(9, '07', 'Perico', NULL, 0),
(10, '08', 'Raton', NULL, 0),
(11, '09', 'Aguila', NULL, 0),
(12, '10', 'Tigre', NULL, 0),
(13, '11', 'Gato', NULL, 0),
(14, '12', 'Caballo', NULL, 0),
(15, '13', 'Mono', NULL, 0),
(16, '14', 'Paloma', NULL, 0),
(17, '15', 'Zorro', NULL, 0),
(18, '16', 'Oso', NULL, 0),
(19, '17', 'Pavo', NULL, 0),
(20, '18', 'Burro', NULL, 0),
(21, '19', 'Chivo', NULL, 0),
(22, '20', 'Cochino', NULL, 0),
(23, '21', 'Gallo', NULL, 0),
(24, '22', 'Camello', NULL, 0),
(25, '23', 'Zebra', NULL, 0),
(26, '24', 'Iguana', NULL, 0),
(27, '25', 'Gallina', NULL, 0),
(28, '26', 'Vaca', NULL, 0),
(29, '27', 'Perro', NULL, 0),
(30, '28', 'Zamuro', NULL, 0),
(31, '29', 'Elefante', NULL, 0),
(32, '30', 'Caiman', NULL, 0),
(33, '31', 'Lapa', NULL, 0),
(34, '32', 'Ardilla', NULL, 0),
(35, '33', 'Pescado', NULL, 0),
(36, '34', 'Venado', NULL, 0),
(37, '35', 'Jirafa', NULL, 0),
(38, '36', 'Culebra', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruleta_activa_horas`
--

CREATE TABLE IF NOT EXISTS `ruleta_activa_horas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  `Hora` time NOT NULL,
  `Hora_num` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `ruleta_activa_horas`
--

INSERT INTO `ruleta_activa_horas` (`id`, `Descripcion`, `Hora`, `Hora_num`) VALUES
(1, '01 LotoActivo 9:00 am', '09:00:00', '9'),
(2, '02 LotoActivo 10:00 am', '10:00:00', '10'),
(3, '03 LotoActivo 11:00 pm', '11:00:00', '11'),
(4, '04 LotoActivo 12:00 pm', '12:00:00', '12'),
(5, '05 LotoActivo 1:00 pm', '13:00:00', '1'),
(6, '06 LotoActivo 3:00 pm', '15:00:00', '3'),
(7, '07 LotoActivo 4:00 pm', '16:00:00', '4'),
(8, '08 LotoActivo 5:00 pm', '17:00:00', '5'),
(9, '09 LotoActivo 6:00 pm', '18:00:00', '6'),
(10, '10 LotoActivo 7:00 pm', '19:00:00', '7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruleta_activa_resultado`
--

CREATE TABLE IF NOT EXISTS `ruleta_activa_resultado` (
  `id_result` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_ruleta_activa` int(11) NOT NULL,
  `fecha_result` datetime NOT NULL,
  `resultado` varchar(2) NOT NULL,
  PRIMARY KEY (`id_result`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ruleta_activa_resultado`
--

INSERT INTO `ruleta_activa_resultado` (`id_result`, `id_ruleta_activa`, `fecha_result`, `resultado`) VALUES
(1, 1, '2017-10-15 00:00:00', '23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `totales_jugadas`
--

CREATE TABLE IF NOT EXISTS `totales_jugadas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Num_ticket` varchar(200) NOT NULL,
  `Serial` varchar(100) NOT NULL,
  `Fecha` varchar(100) NOT NULL COMMENT 'Fecha de impresion del ticket',
  `Total` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=308 ;

--
-- Volcado de datos para la tabla `totales_jugadas`
--

INSERT INTO `totales_jugadas` (`id`, `Num_ticket`, `Serial`, `Fecha`, `Total`) VALUES
(301, '16', '', '2018-07-01 17:22:38', 0),
(302, '1', '', '2018-07-01 17:23:05', 1000),
(303, '2', '5b394641606d1', '2018-07-01 17:23:23', 1000),
(304, '6', '5b3956a882e28', '2018-07-01 18:33:38', 1000),
(305, '7', '5b3956c7e8e99', '2018-07-01 08:34:15', 2000),
(306, '15', '5b3b365771615', '2018-07-03 04:41:08', 4000),
(307, '2', '5b3c914514a48', '2018-07-04 07:35:28', 4000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_lotto`
--

CREATE TABLE IF NOT EXISTS `usuarios_lotto` (
  `nombre_usuario` varchar(255) NOT NULL,
  `clave_usuario` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `sexo` varchar(2) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  PRIMARY KEY (`nombre_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_lotto`
--

INSERT INTO `usuarios_lotto` (`nombre_usuario`, `clave_usuario`, `nombre`, `apellido`, `sexo`, `id_usuarios`) VALUES
('dede', 'ded', 'de', 'de', 'M', 0),
('eee', 'ee', 'ee', 'ee', 'M', 0),
('falvarez', 'rootbill', '', '', '', 2),
('liangel', '12660798', '', '', '', 1),
('root', 'rootbill', '', '', '', 1),
('rrrr', 'rrr', 'rr', 'rr', 'M', 1),
('rrt', 'ttt', 'tt', 't', 'M', 0),
('zzz', 'zzz', 'zzz', 'zz', 'M', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
