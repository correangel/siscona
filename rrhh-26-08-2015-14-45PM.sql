-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-08-2015 a las 14:45:13
-- Versión del servidor: 5.5.44-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `rrhh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ausencias`
--

CREATE TABLE IF NOT EXISTS `ausencias` (
  `id_ausencia` int(2) NOT NULL,
  `ausencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_ausencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla Maestra de Ausencias';

--
-- Volcado de datos para la tabla `ausencias`
--

INSERT INTO `ausencias` (`id_ausencia`, `ausencia`) VALUES
(0, 'RETARDO'),
(1, 'SALIDA ANTES DE LA HORA'),
(2, 'FALTA SIN AVISO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE IF NOT EXISTS `cargos` (
  `id_cargo` int(3) NOT NULL DEFAULT '0',
  `id_tipo` int(1) DEFAULT NULL,
  `id_unidad` int(2) DEFAULT NULL,
  `cargo` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id_cargo`, `id_tipo`, `id_unidad`, `cargo`) VALUES
(0, 1, 1, 'SECRETARIA EJECUTIVA'),
(1, 1, 1, 'SECRETARIA'),
(2, 1, 1, 'ABOGADO'),
(3, 1, 1, 'CAPELLAN'),
(4, 1, 2, 'COORD. SECTORIAL DE CULTURA'),
(5, 1, 2, 'DISEÑADOR GRAFICO'),
(6, 1, 2, 'ASIST.ORGANIZACION CULTURAL'),
(7, 1, 2, 'AUX. SERVICIOS PARA EL ARTE'),
(8, 1, 2, 'SECRETARIA'),
(9, 1, 2, 'CORALISTA LIDER DE CUERDAS'),
(10, 1, 2, 'DIRECTOR DE CORAL'),
(11, 1, 2, 'DIRECTOR DE BALLET O DANZA'),
(12, 1, 2, 'DIRECTOR DE TEATRO'),
(13, 1, 2, 'DOCENTE EN ARTES AUDITIVAS'),
(14, 1, 2, 'FACILITADOR DE DES. EN ARTES AUDITIVAS'),
(15, 1, 2, 'ACTOR'),
(16, 1, 2, 'ASISTENTE DE ASUNTOS LITERARIOS'),
(17, 1, 2, 'FACILITADOR DE DES. EN ARTES PLASTICA'),
(18, 1, 2, 'FACILITADOR DE DES. EN ARTES ESCENICAS'),
(19, 1, 2, 'COORDINADOR DE CINE CLUB'),
(20, 2, 2, 'MENSAJERO INTERNO'),
(21, 1, 3, 'COORDINADOR DE DEPORTE'),
(22, 1, 3, 'ENTRENADOR DEPORTIVO'),
(23, 1, 3, 'OFICINISTA'),
(24, 1, 4, 'SECRETARIA'),
(25, 1, 4, 'MEDICO ESPECIALISTA'),
(26, 1, 4, 'MEDICO GENERAL'),
(27, 1, 4, 'ENFERMERA'),
(28, 1, 4, 'ODONTOLOGO'),
(29, 1, 4, 'HIGIENISTA DENTAL'),
(30, 1, 4, 'BIOANALISTA'),
(31, 2, 4, 'AUXILIAR DE LABORATORIO'),
(32, 2, 4, 'MENSAJERO INTERNO'),
(33, 1, 5, 'JEFE DE TRAFICO'),
(34, 1, 5, 'OFICINISTA'),
(35, 1, 5, 'SECRETARIA'),
(36, 2, 5, 'SUPERVISOR DE TRANSPORTE Y MECANICA AUTOMOTOR'),
(37, 2, 5, 'CHOFER'),
(38, 2, 5, 'DESPACHADOR DE VEHICULO'),
(39, 2, 5, 'MECANICO'),
(40, 2, 5, 'AYUDANTE DE MECANICO'),
(41, 2, 5, 'ELECTROMECANICO'),
(42, 1, 6, 'COORDINADORA ADMINISTRATIVA'),
(43, 1, 6, 'ADMINISTRADOR'),
(44, 1, 6, 'CONTADOR'),
(45, 1, 6, 'JEFE DE ANALISIS Y PROCED. DE COMPRAS'),
(46, 1, 6, 'COMPRADOR'),
(47, 1, 6, 'ASISTENTE ADMIISTRATIVO'),
(48, 1, 6, 'REGISTRADOR DE BIENES'),
(49, 1, 6, 'SECRETARIA'),
(50, 1, 6, 'CAJERO JEFE'),
(51, 1, 6, 'CAJERO'),
(52, 1, 6, 'ALMACENISTA JEFE'),
(53, 2, 6, 'ALMACENISTA'),
(54, 2, 6, 'MENSAJERO EXTERNO'),
(55, 1, 7, 'JEFE DE MANTENIMIENTO Y REPARACIONES'),
(56, 1, 7, 'SUPERVISOR DE SERVICIOS DE MTTO.'),
(57, 1, 7, 'SECRETARIA'),
(58, 2, 7, 'ASEADORA'),
(59, 2, 7, 'AYUDANTE DE MANTENIMIENTO'),
(60, 2, 7, 'AUXILIAR DE MANTENIMIENTO'),
(61, 2, 7, 'AYUDANTE DE SERVICIO'),
(62, 2, 7, 'ELECTRICISTA'),
(63, 2, 7, 'PINTOR'),
(64, 2, 7, 'PLOMERO'),
(65, 2, 7, 'ALBAÑIL'),
(66, 2, 7, 'HERRERO-SOLDADOR'),
(67, 2, 7, 'MECÁNICO EN REFRIGERACIÓN'),
(68, 1, 8, 'ANALISTA PROGRAMADOR DE SISTEMA'),
(69, 1, 8, 'TEC. DE RECURSOS DE INFORMATICA'),
(70, 1, 8, 'ASIST. LABORATORIO DE INFORMATICA'),
(71, 1, 9, 'ESPECIALISTA EN CULTURA Y/O AUTODESARROLO Y/O EXTENSION'),
(72, 1, 9, 'PROMOTOR CULTURAL'),
(73, 1, 9, 'PROMOTOR SOCIAL'),
(74, 1, 9, 'SECRETARIA'),
(75, 1, 10, 'ASIST. EJECUTIVO RELACIONES INSTERIST.'),
(76, 1, 10, 'FOTOGRAFO'),
(77, 1, 10, 'PERIODISTA'),
(78, 1, 10, 'SECRETARIA'),
(79, 1, 11, 'COORD. DE SERVICIOS ESTUDIANTILES'),
(80, 1, 11, 'COORDINADOR DE SERVICIOS GENERALES'),
(81, 1, 11, 'COORD. DE PROGRAMA MEDICO ASISTENCIAL'),
(82, 1, 11, 'JEFE DE ASITENCIA SOCIOECONOMICA'),
(83, 1, 11, 'JEFE DE MANTENIMIENTO Y REPARACIONES'),
(84, 1, 11, 'JEFE DE ASESORIA APOY. Y ORIENTACION'),
(85, 1, 11, 'JEFE DE SALUD INTEGRAL'),
(86, 1, 11, 'ABOGADO JEFE'),
(87, 1, 11, 'ADMINISTRADOR JEFE'),
(88, 1, 11, 'ASISTENTE ADMINISTRATIVO'),
(89, 1, 11, 'CAJERO'),
(90, 1, 11, 'SECRETARIA'),
(91, 1, 11, 'OFICINISTA'),
(92, 1, 11, 'ASISTENTE EN RECURSO DE APOYO INFORMATICO'),
(93, 1, 11, 'TRABAJADORA SOCIAL'),
(94, 1, 11, 'ASIST.PREV.DESARR.SOCIAL'),
(95, 1, 11, 'ASISTENTE DE NOMINA'),
(96, 1, 11, 'AUXILIAR DE BIBLIOTECA'),
(97, 1, 11, 'ABOGADO'),
(98, 1, 11, 'ORIENTADOR'),
(99, 1, 11, 'PSICOLOGO'),
(100, 1, 11, 'AUXILIAR DE REGISTRO Y ESTADISTICAS DE SERVICIOS ASISTENCIALES'),
(101, 1, 11, 'BIOANALISTA'),
(102, 1, 11, 'MEDICO ESPECIALISTA'),
(103, 1, 11, 'MEDICO GENERAL'),
(104, 1, 11, 'ENFERMERA'),
(105, 1, 11, 'ODONTOLOGO '),
(106, 1, 11, 'HIGIENISTA DENTAL'),
(107, 1, 11, 'DIETISTA'),
(108, 1, 11, 'INSPECTOR DE HIGIENE ALIMENT. CONTROL PRECIOS'),
(109, 2, 11, 'AYUDANTE DE SERVICIO'),
(110, 2, 11, 'AYUDANTE DE MANTENIMIENTO'),
(111, 2, 11, 'MENSAJERO EXTERNO'),
(112, 2, 11, 'MENSAJERO INTERNA'),
(113, 2, 11, 'PELUQUERA'),
(114, 2, 11, 'AUXILIAR DE LABORATORIO'),
(115, 1, 12, 'JEFE SECTORIAL DE PRESUPUESTO'),
(116, 1, 12, 'ANALISTA DE PRESUPUESTO'),
(117, 1, 12, 'PLANIFICADOR'),
(118, 1, 13, 'JEFE DE RECURSOS HUMANOS'),
(119, 1, 13, 'ANALISTA ESPECILISTA DE RECURSOS HUMANOS'),
(120, 1, 13, 'ANALISTA DE RECURSOS HUMANOS'),
(121, 1, 13, 'ASISTENTE DE RECURSOS HUMANOS'),
(122, 1, 13, 'ASIS. RECURSOS APOYO INFORMATICO'),
(123, 2, 13, 'MENSAJERO INTERNO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id_personal` int(3) DEFAULT NULL,
  `cedula` varchar(9) DEFAULT NULL,
  `nombre` varchar(24) DEFAULT NULL,
  `id_tipo` int(1) DEFAULT NULL,
  `id_unidad` int(1) DEFAULT NULL,
  `id_horario` int(1) DEFAULT NULL,
  `id_cargo` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_personal`, `cedula`, `nombre`, `id_tipo`, `id_unidad`, `id_horario`, `id_cargo`) VALUES
(1, '12334237', 'DAGNI SEQUERA', 1, 1, 1, 1),
(2, '9652938', 'NERIO LEAL', 1, 1, 1, 1),
(3, '9698558', 'HENRY SANCHEZ', 1, 1, 1, 1),
(4, '9673197', 'MIGUEL MORENO', 1, 1, 1, 1),
(5, '15054962', 'LUIS LUCERO', 1, 1, 1, 1),
(6, '10274285', 'GUILLERMO HERNANDEZ', 1, 1, 1, 1),
(7, '7995720', 'GERMÁN ZERPA', 1, 1, 1, 1),
(8, '24445398', 'LUZVENIA PACHECO', 1, 1, 1, 1),
(9, 'J29417994', 'RES. IND. DEL CENTRO', 1, 1, 1, 1),
(10, '17613464', 'NOGUERA JOSÉ', 1, 1, 1, 1),
(11, '12569618', 'ARAUJO WILFREDO', 1, 1, 1, 1),
(12, '14786531', 'GONZÁLEZ CARLOS', 1, 1, 1, 1),
(13, '14469785', 'AULAR ALBERTO', 1, 1, 1, 1),
(14, '7959280', 'CASIQUE LEONIDAS', 1, 1, 1, 1),
(15, '7212942', 'DÍAZ EUSTAQUIA', 1, 1, 1, 1),
(16, '13986938', 'ICIARTE JOSMERY', 1, 1, 1, 1),
(17, '5623178', 'GONZÁLEZ BLANCA', 1, 1, 1, 1),
(18, '4400447', 'LEÓN ELIA', 1, 1, 1, 1),
(19, '4566829', 'RIVERA GLADYS', 1, 1, 1, 1),
(20, '5853152', 'LOZADA YOLANDA', 1, 1, 1, 1),
(21, '10758304', 'MARTÍNEZ REINALDO', 1, 1, 1, 1),
(22, '4364704', 'RAMÍREZ FREDDY', 1, 1, 1, 1),
(23, '12138719', 'PARPACÉN LUIS', 1, 1, 1, 1),
(24, '17575961', 'OBERTO ANGEL', 1, 1, 1, 1),
(25, '8737825', 'MARCHENA YANETH', 1, 1, 1, 1),
(26, '45533532', 'TELLO JULIO', 1, 1, 1, 1),
(27, '7268294', 'ACOSTA CARMEN', 1, 1, 1, 1),
(28, '11981494', 'GÓMEZ ELVIA', 1, 1, 1, 1),
(29, '13134521', 'ROJAS LUIS', 1, 1, 1, 1),
(30, '9691201', 'QUIROZ DANIEL', 1, 1, 1, 1),
(31, '7177674', 'URANGA MARILÚ', 1, 1, 1, 1),
(32, '10750378', 'SALAS DAMELIS', 1, 1, 1, 1),
(33, '11985955', 'PITRE DULCE', 1, 1, 1, 1),
(34, '19004156', 'CONTRERAS YINEXY', 1, 1, 1, 1),
(35, '10455943', 'NARANJO ALEXI', 1, 1, 1, 1),
(36, '8801895', 'MARTÍNEZ MARÍA', 1, 1, 1, 1),
(37, '13722761', 'CORRALES YEASIRY', 1, 1, 1, 1),
(38, '10859399', 'GIL ANNY', 1, 1, 1, 1),
(39, '13770395', 'ALVAREZ YUSMEDI', 1, 1, 1, 1),
(40, '11984015', 'SIMOSA MERCEDES', 1, 1, 1, 1),
(41, '2849508', 'BENÍTEZ GARDENIA', 1, 1, 1, 1),
(42, '13071546', 'DIMAS YIDRY', 1, 1, 1, 1),
(43, '12572008', 'ALFONZO GLENDA', 1, 1, 1, 1),
(44, '16692983', 'VERA KARLA', 1, 1, 1, 1),
(45, '11979541', 'SIMOZA AGMERVY', 1, 1, 1, 1),
(46, '9673847', 'COLMENARES YANETTE', 1, 1, 1, 1),
(47, '13722188', 'APONTE ROSIBEL', 1, 1, 1, 1),
(48, '12410300', 'PELÁEZ YASARDÉ', 1, 1, 1, 1),
(49, '10754327', 'MANZANO JOHEBETH', 1, 1, 1, 1),
(50, '9654187', 'ROMERO IRMA', 1, 1, 1, 1),
(51, '9686438', 'MEDINA YVONNE', 1, 1, 1, 1),
(52, '7259826', 'DELGADO YASMÍN', 1, 1, 1, 1),
(53, '13132577', 'RAMÍREZ MARÍA C.', 1, 1, 1, 1),
(54, '16013028', 'LEAL NOREIBI', 1, 1, 1, 1),
(55, '11982902', 'ORDOÑEZ MARIBEL', 1, 1, 1, 1),
(56, '15993595', 'YUSTI GIMBERLY', 1, 1, 1, 1),
(57, '10745286', 'CORTÉZ JOSÉ A.', 1, 1, 1, 1),
(58, '9695687', 'GARÓFFALO YEIRÉ', 1, 1, 1, 1),
(59, '13952942', 'ROMERO Y., MERY C.', 1, 1, 1, 1),
(60, '7274495', 'BRAVO YANIRET', 1, 1, 1, 1),
(61, '9661697', 'RODRÍGUEZ GISELA', 1, 1, 1, 1),
(62, '9695452', 'VALENCIA MIGUEL', 1, 1, 1, 1),
(63, '3725089', 'ARAUJO BORIS', 1, 1, 1, 1),
(64, '12028859', 'SÁNCHEZ SOL', 1, 1, 1, 1),
(65, '16207324', 'AMBROSIO LUISA', 1, 1, 1, 1),
(66, '12854077', 'ALVIAREZ YENNY', 1, 1, 1, 1),
(67, '15532964', 'OROPEZA TERESA', 1, 1, 1, 1),
(68, '12737863', 'CLARKE RICHARD', 1, 1, 1, 1),
(69, '12610708', 'CISNEROS DARWIN', 1, 1, 1, 1),
(70, '9661810', 'BAETA MARÍA', 1, 1, 1, 1),
(71, '14741065', 'PULIDO NARVIZ', 1, 1, 1, 1),
(72, '18553456', 'VILLEGAS CECILIA', 1, 1, 1, 1),
(73, '14052558', 'CARROZZA MARIFEL', 1, 1, 1, 1),
(74, '11850685', 'TORRELLAS ANNHYMARIET', 1, 1, 1, 1),
(75, '14577222', 'VILLEGAS PATRICIA', 1, 1, 1, 1),
(76, '9673574', 'URDANETA JOYCE', 1, 1, 1, 1),
(77, '8524180', 'TOVAR EDGAR', 1, 1, 1, 1),
(78, '7189389', 'BANDEIRA EDUARDO', 1, 1, 1, 1),
(79, '7284330', 'FERRERAS ANA', 1, 1, 1, 1),
(80, '7210392', 'RAMÍREZ NINOSKA', 1, 1, 1, 1),
(81, '8732423', 'FERNÁNDEZ MAGOLA', 1, 1, 1, 1),
(82, '9376249', 'GONZÁLEZ MAXIMIANO', 1, 1, 1, 1),
(83, '5274262', 'RIVERO JOSÉ', 1, 1, 1, 1),
(84, '15963776', 'RODRÍGUEZ LINMAR', 1, 1, 1, 1),
(85, '12573272', 'MARIANO MICHELANGELO', 1, 1, 1, 1),
(86, '7278171', 'HERNÁNDEZ MIRIAM', 1, 1, 1, 1),
(87, '15738708', 'GABAZUTT JOHANNA', 1, 1, 1, 1),
(88, '12111201', 'GUTIÉRREZ LAURY', 1, 1, 1, 1),
(89, '13623999', 'BRAVO LIZ', 1, 1, 1, 1),
(90, '17000300', 'GOLINDANO ROBERTT', 1, 1, 1, 1),
(91, '9678592', 'MACÍAS MARIELA', 1, 1, 1, 1),
(92, '15000360', 'VILLANI SERGIO', 1, 1, 1, 1),
(93, '12608732', 'ROMÁN ADRIANA', 1, 1, 1, 1),
(94, '12569132', 'DÍAZ FRANCESCA', 1, 1, 1, 1),
(95, '12122591', 'ROJAS VALENTINA', 1, 1, 1, 1),
(96, '10756644', 'VÉLIZ NORKIS', 1, 1, 1, 1),
(97, '13134548', 'REQUENA GLENDA', 1, 1, 1, 1),
(98, '14958899', 'GUÉDEZ ROXANA', 1, 1, 1, 1),
(99, '13843509', 'TRUJILLO MARÍA A.', 1, 1, 1, 1),
(100, '9686618', 'BELLORÍN MAGLIN', 1, 1, 1, 1),
(101, '15123831', 'ROJAS MARYORIE', 1, 1, 1, 1),
(102, '9937150', 'BERMÚDEZ MAIRA', 1, 1, 1, 1),
(103, '7225428', 'ARCHILA LINA', 1, 1, 1, 1),
(104, '7262246', 'MORALES MILENA', 1, 1, 1, 1),
(105, '13579443', 'CORDERO YULEIMA', 1, 1, 1, 1),
(106, '9676921', 'CORDERO MARIELA', 1, 1, 1, 1),
(107, '10751960', 'RIVAS JANETTE', 1, 1, 1, 1),
(108, '9662897', 'MONTOYA LAURA', 1, 1, 1, 1),
(109, '9669583', 'MENDOZA DERWIN', 1, 1, 1, 1),
(110, '11568145', 'RAMÍREZ CARMEN', 1, 1, 1, 1),
(111, '7221703', 'BARRETO JULY', 1, 1, 1, 1),
(112, '14429032', 'CAMACHO YESENIA', 1, 1, 1, 1),
(113, '9667974', 'ACEVEDO NICOLASA', 1, 1, 1, 1),
(114, '11988426', 'CABRERA ELIMAR', 1, 1, 1, 1),
(115, '15274662', 'BORGES ARIYURI', 1, 1, 1, 1),
(116, '15122069', 'HENRÍQUEZ DULCE', 1, 1, 1, 1),
(117, '5965333', 'MARRERO SONIA', 1, 1, 1, 1),
(118, '17470155', 'CORREDOR EDGYMIR', 1, 1, 1, 1),
(119, '12143773', 'ZERPA LIZ', 1, 1, 1, 1),
(120, '14061847', 'RODRÍGUEZ ADRIANA', 1, 1, 1, 1),
(121, '4130999', 'RIVERO MARÍA', 1, 1, 1, 1),
(122, '8741680', 'AMADOR ELSY', 1, 1, 1, 1),
(123, '7210510', 'ALVAREZ TERESA', 1, 1, 1, 1),
(124, '10583180', 'VELÁSQUEZ LIZBETH', 1, 1, 1, 1),
(125, '7069037', 'FARÍAS TULIO', 1, 1, 1, 1),
(126, '9651894', 'SEVILLA PAVEL', 1, 1, 1, 1),
(127, '10697977', 'FERNÁNDEZ AYDEÉ', 1, 1, 1, 1),
(128, '10340499', 'MARTÍNEZ CARMEN', 1, 1, 1, 1),
(129, '11147762', 'FERNÁNDEZ LUIS', 1, 1, 1, 1),
(130, '15611477', 'SOSA JENNIE', 1, 1, 1, 1),
(131, '4504131', 'CARNEIRO JESÚS', 1, 1, 1, 1),
(132, '14087191', 'JONES RICARDO', 1, 1, 1, 1),
(133, '18265644', 'ZÁRATE ATAHUALPA', 1, 1, 1, 1),
(134, '15818441', 'SÁNCHEZ RONY', 1, 1, 1, 1),
(135, '9650844', 'GARCÍA ALEJANDRINA', 1, 1, 1, 1),
(136, '9693515', 'RODRÍGUEZ CARMEN', 1, 1, 1, 1),
(137, '10270587', 'PÉREZ YULIMAR', 1, 1, 1, 1),
(138, '9695615', 'FAJARDO FAINET', 1, 1, 1, 1),
(139, '15610180', 'FUGUET NORMA', 1, 1, 1, 1),
(140, '13357896', 'ORDOÑEZ MARTIÑA', 1, 1, 1, 1),
(141, '13883924', 'ISAYA MARY', 1, 1, 1, 1),
(142, '6517246', 'OCHOA YAMILETH', 1, 1, 1, 1),
(143, '15472166', 'ACOSTA LISNEY', 1, 1, 1, 1),
(144, '13454699', 'RAMÍREZ OSWALDO', 1, 1, 1, 1),
(145, '14664755', 'GUARDIA MARÍA', 1, 1, 1, 1),
(146, '5389138', 'MANOSALVA ARMANDO', 1, 1, 1, 1),
(147, '4874472', 'HERNÁNDEZ JULIO', 1, 1, 1, 1),
(148, '17063583', 'CRESPO ROBERTO', 1, 1, 1, 1),
(149, '7136348', 'LEÓN OSWAIDA', 1, 1, 1, 1),
(150, '12568853', 'CABEZA MARÍA', 1, 1, 1, 1),
(151, '9685949', 'MARTÍNEZ EDGAR', 1, 1, 1, 1),
(152, '12855779', 'ORTÍZ JORGE', 1, 1, 1, 1),
(153, '8634109', 'PÉREZ ELPIDIO', 1, 1, 1, 1),
(154, '15003793', 'BRITO YNDIRA', 1, 1, 1, 1),
(155, '12995730', 'VALENCIA DALILA', 1, 1, 1, 1),
(156, '15549745', 'VIVAS DANIEL', 1, 1, 1, 1),
(157, '12930202', 'GÓMEZ WIDMAR', 1, 1, 1, 1),
(158, '10433077', 'DÍAZ MARÍA', 1, 1, 1, 1),
(159, '9644519', 'ARENAS LUIS', 1, 1, 1, 1),
(160, '7235341', 'BARRIOS DELIA', 1, 1, 1, 1),
(161, '13779038', 'BOLIVAR YURAIMA', 1, 1, 1, 1),
(162, '7175279', 'URBINA RUPERTA', 1, 1, 1, 1),
(163, '11525289', 'CARRIZALES MANUEL', 1, 1, 1, 1),
(164, '11735636', 'ORTEGA HÉCTOR', 1, 1, 1, 1),
(165, '9673966', 'BORGES WILMER', 1, 1, 1, 1),
(166, '9655371', 'SOTO YENNYS', 1, 1, 1, 1),
(167, '14355082', 'MARTÍNEZ JUANCARLOS', 1, 1, 1, 1),
(168, '15993387', 'BORGES EDGARLEESS', 1, 1, 1, 1),
(169, '13356933', 'ACOSTA CINDY', 1, 1, 1, 1),
(170, '9642341', 'AMADOR ROSA', 1, 1, 1, 1),
(171, '14233147', 'ROMERO MARIALCIRA', 1, 1, 1, 1),
(172, '14214302', 'DÌAZ MARÌA', 1, 1, 1, 1),
(173, '13870258', 'BÁEZ ANABEL', 1, 1, 1, 1),
(174, '16205057', 'AGUILARTE ZOBEIDA', 1, 1, 1, 1),
(175, '14103278', 'BOLÍVAR YESENIA', 1, 1, 1, 1),
(176, '13954751', 'GUARATE LENNIS', 1, 1, 1, 1),
(177, '9647127', 'SÁNCHEZ NORAYMA', 1, 1, 1, 1),
(178, '8582418', 'LUÍS ESTRADA', 1, 1, 1, 1),
(179, '4925161', 'IRIS BRACHO', 1, 1, 1, 1),
(180, '9691952', 'YUBIRY RONDÓN', 1, 1, 1, 1),
(181, '4551811', 'BERASTEGUI MIRIAN', 1, 1, 1, 1),
(182, '4392078', 'ZULEYMA RAMÍREZ', 1, 1, 1, 1),
(183, '12137557', 'GUSTAVO OVALLES', 1, 1, 1, 1),
(184, '9697859', 'HERLY ALVAREZ', 1, 1, 1, 1),
(185, '11815730', 'LUZ RUBIO CONTRERAS', 1, 1, 1, 1),
(186, '7293543', 'ELIZABETH BOLÍVAR', 1, 1, 1, 1),
(187, '17273805', 'SEQUERA IVETH', 1, 1, 1, 1),
(188, '4547206', 'WILLIAN CARPIO', 1, 1, 1, 1),
(189, '4449301', 'REYES ARIEL', 1, 1, 1, 1),
(190, '5272692', 'ROMERO AHENDER', 1, 1, 1, 1),
(191, '11095980', 'APONTE KIRA', 1, 1, 1, 1),
(192, '5554964', 'FERNÁNDEZ IRAIMA', 1, 1, 1, 1),
(193, '4873578', 'FLORES KATTY', 1, 1, 1, 1),
(194, '14882571', 'BOLÍVAR YULIMAR', 1, 1, 1, 1),
(195, '6310815', 'JEREZ YANIRA', 1, 1, 1, 1),
(196, '7046955', 'PINTO EUNICE', 1, 1, 1, 1),
(197, '4966121', 'TOVAR INGRID', 1, 1, 1, 1),
(198, '4568911', 'GALAN OLGA', 1, 1, 1, 1),
(199, '4595390', 'LARA DAVID', 1, 1, 1, 1),
(200, '4836684', 'JIMÉNEZ JOSÉ GREGORIO', 1, 1, 1, 1),
(201, '5271007', 'BRAVO FRAMMAR', 1, 1, 1, 1),
(202, '8225914', 'BRICEÑO JOSÉ GREGORIO', 1, 1, 1, 1),
(203, '4367511', 'CASTRO MARÍA', 1, 1, 1, 1),
(204, '4399548', 'COLMENARES MILDRED', 1, 1, 1, 1),
(205, '4365923', 'HURTADO DELIA', 1, 1, 1, 1),
(206, '4448320', 'MENDOZA MARITZA', 1, 1, 1, 1),
(207, '6469191', 'NÚÑEZ YANIRE', 1, 1, 1, 1),
(208, '7212003', 'ROJAS MARÍA', 1, 1, 1, 1),
(209, '13111848', 'ROSAS FRANCIS', 1, 1, 1, 1),
(210, '7607108', 'REYES YOLINDA', 1, 1, 1, 1),
(211, '8313669', 'BASTIDAS JOSÉ ALE.', 1, 1, 1, 1),
(212, '15859595', 'CASTILLEJO NESTOR', 1, 1, 1, 1),
(213, '4866855', 'HIDALGO BETTY', 1, 1, 1, 1),
(214, '15737598', 'MEJIAS IMANAIDA', 1, 1, 1, 1),
(215, '6904829', 'QUILARQUE ALEJANDRO', 1, 1, 1, 1),
(216, '4834309', 'QUINTERO ELOISA', 1, 1, 1, 1),
(217, '9965548', 'SUBERO JOSÉ LUÍS', 1, 1, 1, 1),
(218, '8739311', 'VELASQUEZ HANS', 1, 1, 1, 1),
(219, '15532431', 'LIC. MONASTERIOS ANA M.', 1, 1, 1, 1),
(220, '13171221', 'LIC. PALACIOS NILSÓN', 1, 1, 1, 1),
(221, '13760048', 'VALDESPINO ARMANDO', 1, 1, 1, 1),
(222, '7209307', 'LUNA MARISOL', 1, 1, 1, 1),
(223, '4131239', 'ACUÑA WALTER', 1, 1, 1, 1),
(224, '8735432', 'LISBETH PÁEZ', 1, 1, 1, 1),
(225, '9682108', 'TORRELLAS LUÍS', 1, 1, 1, 1),
(226, '8570483', 'CABEZA VIVIAN', 1, 1, 1, 1),
(227, '14628416', 'LEÓN ALFREDO', 1, 1, 1, 1),
(228, '8149529', 'SOTO AILENE', 1, 1, 1, 1),
(229, '4551403', 'MONTERO GERMAN', 1, 1, 1, 1),
(230, '7251628', 'VARGAS EDITH', 1, 1, 1, 1),
(231, '3842965', 'HENRÍQUEZ DE SOTO JUANA', 1, 1, 1, 1),
(232, '4399647', 'PLAZA JULIO', 1, 1, 1, 1),
(233, '15418354', 'ACOSTA ANGEL', 1, 1, 1, 1),
(234, '16872160', 'ACOSTA DUCGLAS', 1, 1, 1, 1),
(235, '4130876', 'BLANCO CARLOS', 1, 1, 1, 1),
(236, '13272430', 'CARPIO GUSTAVO', 1, 1, 1, 1),
(237, '3937316', 'ESCALONA JESÚS', 1, 1, 1, 1),
(238, '9697021', 'ESTEVES MARCO', 1, 1, 1, 1),
(239, '9685849', 'GARCÍA JUAN', 1, 1, 1, 1),
(240, '12518879', 'GRANCE ANGEL', 1, 1, 1, 1),
(241, '10756177', 'MARTÍNEZ ROGER', 1, 1, 1, 1),
(242, '12144314', 'MARTÍNEZ LUÍS', 1, 1, 1, 1),
(243, '9516755', 'MORILLO IRVING', 1, 1, 1, 1),
(244, '9690368', 'PACHECO CARLOS', 1, 1, 1, 1),
(245, '11984955', 'PADRÓN PEDRO', 1, 1, 1, 1),
(246, '7272512', 'PERDOMO ADELFER', 1, 1, 1, 1),
(247, '4552540', 'PÉREZ ANGEL', 1, 1, 1, 1),
(248, '6689592', 'SILVA YOBANNY', 1, 1, 1, 1),
(249, '9597717', 'VALERA RAMÓN', 1, 1, 1, 1),
(250, '7182219', 'ZURITA RAFAEL', 1, 1, 1, 1),
(251, '2813796', 'ARIAS PABLO', 1, 1, 1, 1),
(252, '9656023', 'CASTELLANOS EDUARDO', 1, 1, 1, 1),
(253, '14080037', 'GARCES HENRY', 1, 1, 1, 1),
(254, '7186058', 'GONZÁLEZ SIMÓN', 1, 1, 1, 1),
(255, '7241438', 'GUZMÁN OSWALDO', 1, 1, 1, 1),
(256, '10228253', 'MÉNDEZ NELSÓN', 1, 1, 1, 1),
(257, '9687083', 'OCHOA JESÚS', 1, 1, 1, 1),
(258, '8788734', 'TABLANTE ALI', 1, 1, 1, 1),
(259, '689473', 'TORO GOLFREDO', 1, 1, 1, 1),
(260, '16268866', 'ALBARRACIN PEDRO', 1, 1, 1, 1),
(261, '5347437', 'ALDANA LUÍS', 1, 1, 1, 1),
(262, '3848552', 'APONTE DARIO', 1, 1, 1, 1),
(263, '8730168', 'BANDEZ FLORENCIO', 1, 1, 1, 1),
(264, '13356948', 'BERASTEGUI OMAR', 1, 1, 1, 1),
(265, '13701411', 'CALVETTE ROBIN', 1, 1, 1, 1),
(266, '10755728', 'GARCÍA JIMMY', 1, 1, 1, 1),
(267, '4228330', 'MEDINA FREDDY', 1, 1, 1, 1),
(268, '3847471', 'MEZA ELBA', 1, 1, 1, 1),
(269, '5457869', 'MILAN CARMEN', 1, 1, 1, 1),
(270, '3743915', 'MORENO JOSEFINA', 1, 1, 1, 1),
(271, '4369362', 'PALENCIA RAMONA', 1, 1, 1, 1),
(272, '5644587', 'PARRA MARÍA', 1, 1, 1, 1),
(273, '23516811', 'PÉREZ ALEXANDER', 1, 1, 1, 1),
(274, '5297175', 'RIERA JOSÉ', 1, 1, 1, 1),
(275, '5281675', 'RODRÍGUEZ DOUGLAS', 1, 1, 1, 1),
(276, '7000778', 'RODRÍGUEZ MARIO', 1, 1, 1, 1),
(277, '3574849', 'SEGOVIA FREDDY', 1, 1, 1, 1),
(278, '3582341', 'SUMOZA ESTEBAN', 1, 1, 1, 1),
(279, '7204210', 'GONZALO MARE', 1, 1, 1, 1),
(280, '3744353', 'ISMAEL UMBRÍA', 1, 1, 1, 1),
(281, '24591248', 'ACOSTA H GABRIEL A', 1, 1, 1, 1),
(282, '20496529', 'AGUILERA H YULEIKA M', 1, 1, 1, 1),
(283, '20449233', 'ALFONZO G MIGUEL A', 1, 1, 1, 1),
(284, '22615461', 'ALVAREZ R ALBA M', 1, 1, 1, 1),
(285, '20695690', 'ANDRADE O CARLOS A', 1, 1, 1, 1),
(286, '19894676', 'ANGEL S JESUS A', 1, 1, 1, 1),
(287, '21423270', 'ARANGUREN V JOESNER A', 1, 1, 1, 1),
(288, '20893904', 'ARAUJO P VANESSA A', 1, 1, 1, 1),
(289, '20893122', 'ARAUJO S NELSON D', 1, 1, 1, 1),
(290, '22952540', 'ARCILA V MARIA A', 1, 1, 1, 1),
(291, '20895213', 'ARIAS T BILLY J', 1, 1, 1, 1),
(292, '19516505', 'ARMAS E ESTIVALE A', 1, 1, 1, 1),
(293, '21271131', 'AVILA G ZULEIDY C', 1, 1, 1, 1),
(294, '20766154', 'AVILA T ROBERSI C', 1, 1, 1, 1),
(295, '24685977', 'AYALA O PATRICIA R', 1, 1, 1, 1),
(296, '22952942', 'BALAZS R ARLEANA V', 1, 1, 1, 1),
(297, '21252918', 'BALDOVINO B FRETSYBETH B', 1, 1, 1, 1),
(298, '21253042', 'BARRIOS G WILFREDO A', 1, 1, 1, 1),
(299, '22298290', 'BARROSO T JULIO G', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE IF NOT EXISTS `eventos` (
  `id_marcaje` int(8) NOT NULL,
  `tipo_evento` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `clausula` int(3) NOT NULL,
  `dia` int(1) NOT NULL,
  `horas` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla de Detalles de los Eventos durante el Marcaje';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `excepciones`
--

CREATE TABLE IF NOT EXISTS `excepciones` (
  `id_excepcion` int(2) NOT NULL,
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  `motivo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_excepcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Maestra de excepciónes para calculo de inasistencias';

--
-- Volcado de datos para la tabla `excepciones`
--

INSERT INTO `excepciones` (`id_excepcion`, `desde`, `hasta`, `motivo`) VALUES
(0, '2015-01-01', '2015-01-12', 'RECESO DE FIN DE AÑO'),
(6, '2015-12-21', '2015-12-31', 'RECESO DE FIN DE AÑO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE IF NOT EXISTS `horarios` (
  `id_horario` int(2) NOT NULL,
  `h_entrada` time NOT NULL,
  `h_salida` time NOT NULL,
  PRIMARY KEY (`id_horario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla Maestra de Horarios';

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_horario`, `h_entrada`, `h_salida`) VALUES
(0, '08:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcajes`
--

CREATE TABLE IF NOT EXISTS `marcajes` (
  `id_marcaje` int(8) NOT NULL,
  `id_personal` int(4) NOT NULL,
  `fecha` date NOT NULL,
  `h_entrada` time NOT NULL,
  `h_salida` time NOT NULL,
  PRIMARY KEY (`id_marcaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla Maestra de Marcajes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
  `id_pemiso` int(2) NOT NULL,
  `permiso` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_pemiso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla Maestra de Permisos';

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_pemiso`, `permiso`) VALUES
(0, 'ACCIDENTE DE TRABAJO/MALESTAR PERSONAL'),
(1, 'CITA MEDICA'),
(2, 'AVALADO POR CONTRATACIÓN COLECTIVA'),
(3, 'ASUNTOS PERSONALES'),
(4, 'CURSOS NO PROGRAMADOS'),
(5, 'CUIDADO DE UN FAMILIAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `id_personal` int(4) NOT NULL,
  `cedula` int(8) NOT NULL,
  `nombres` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `id_tipo` int(2) NOT NULL,
  `id_unidad` int(2) NOT NULL,
  `id_horario` int(2) NOT NULL,
  `id_cargo` int(4) NOT NULL,
  PRIMARY KEY (`id_personal`),
  UNIQUE KEY `cedula` (`cedula`),
  KEY `nombres` (`nombres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla Maestra de Personal';

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id_personal`, `cedula`, `nombres`, `id_tipo`, `id_unidad`, `id_horario`, `id_cargo`) VALUES
(10, 12137557, 'gustavo', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reposos`
--

CREATE TABLE IF NOT EXISTS `reposos` (
  `id_reposo` int(2) NOT NULL,
  `reposo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_reposo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla Maestra de Reposos';

--
-- Volcado de datos para la tabla `reposos`
--

INSERT INTO `reposos` (`id_reposo`, `reposo`) VALUES
(0, 'S.S.O.'),
(1, 'CGSANA/UAMI'),
(2, 'PRIVADO AVALADO POR CGSANA'),
(3, 'PRE-NATAL'),
(4, 'POST-NATAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporal`
--

CREATE TABLE IF NOT EXISTS `temporal` (
  `id_personal` int(4) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla Temporal del Marcajes';

--
-- Volcado de datos para la tabla `temporal`
--

INSERT INTO `temporal` (`id_personal`, `fecha`, `hora`) VALUES
(1, '2014-11-12', '10:50:20'),
(1, '2015-02-02', '19:58:14'),
(1, '2015-02-02', '20:01:44'),
(2, '2015-05-05', '08:28:07'),
(2, '2015-05-05', '08:38:58'),
(3, '2015-05-05', '08:40:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE IF NOT EXISTS `tipos` (
  `id_tipo` int(2) NOT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla Maestra de Tipos';

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id_tipo`, `tipo`) VALUES
(0, 'ADMINISTRATIVO'),
(1, 'OBRERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE IF NOT EXISTS `unidades` (
  `id_unidad` int(2) NOT NULL DEFAULT '0',
  `unidad` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla Maestra de Unidades Organizacionales';

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id_unidad`, `unidad`) VALUES
(1, 'COMISIONADURIA DE LA RECTORA, N.A.'),
(2, 'COORDINACION GENERAL DE CULTURA'),
(3, 'COORDINACION GENERAL DE DEPORTE'),
(4, 'COORDINACION GENERAL DE SALUD'),
(5, 'COORDINACION GENERAL TRANSPORTE'),
(6, 'COORDINACION GENERAL DE ADMINISTRACION'),
(7, 'COORDINACION GENERAL DE MANTENIMIENTO Y REPARACIONES'),
(8, 'COORDINACION GENERAL TIC'),
(9, 'COORD. GENERAL DE EXTENSION Y SERVICIOS A LA COMUNIDAD'),
(10, 'COORD. GENERAL DE RELACIONES INSTERISTITUCIONALES'),
(11, 'COORD. GENERAL DE DESARROLLO ESTUDIANTIL'),
(12, 'OFICINA SECTORIAL DE PLANIFICACION Y PRESUPUESTO'),
(13, 'OFICINA SECTORIAL DE RRHH');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
