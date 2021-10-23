-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2021 a las 04:09:09
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
-- Base de datos: `pixel_brant`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GESTIONAR_CLIENTE` (IN `P_TIPO_MOVIMIENTO` INT, IN `P_ID_CLIENTE` INT, IN `P_NIT` INT, IN `P_ESTADO` INT, `P_TELEFONO` INT)  BEGIN 




    

   
    


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GESTIONAR_CLIENTE_f` (IN `P_TIPO_MOVIMIENTO` INT, IN `P_ID_CLIENTE` INT, IN `P_NIT` INT, IN `P_NOMBRE` VARCHAR(50), IN `P_RAZON_SOCIAL` VARCHAR(50), IN `P_ESTADO_S` VARCHAR(50), IN `P_ESTADO` INT, `P_TELEFONO` INT)  BEGIN 



END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activi`
--

CREATE TABLE `activi` (
  `ID_ACTIVI` int(11) NOT NULL,
  `NOMBRE_ACTIVIDAD` varchar(50) DEFAULT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL,
  `ID_ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `activi`
--

INSERT INTO `activi` (`ID_ACTIVI`, `NOMBRE_ACTIVIDAD`, `DESCRIPCION`, `ID_ESTADO`) VALUES
(1, 'Crear pauta', 'Descripcionnueva', 1),
(12346, 'Registro Tiempos', 'Registrar tiempo empleados', 1),
(12347, 'Creacion de Terceros', 'Creacion de clientes terceros de la empresa\r\n', 1),
(12348, 'Auditoria', 'Realizar auditoria a los datos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `ID_CARGO` int(11) NOT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`ID_CARGO`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'DISEÑADOR', 'CREADOR DE LAS INTERFACES GRAFICAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_CLIEN` int(11) NOT NULL,
  `NIT` int(11) DEFAULT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `RAZON_SOCIAL` varchar(50) DEFAULT NULL,
  `ID_ESTADO` int(11) DEFAULT NULL,
  `TELEFONO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_CLIEN`, `NIT`, `NOMBRE`, `RAZON_SOCIAL`, `ID_ESTADO`, `TELEFONO`) VALUES
(1, 2589645, 'Arkix SA', 'Julius 2 Grow SAS', 1, 444889),
(2, 12345, 'Ada Sa', 'Software', 1, 4356723),
(3, 647783992, 'EPM', 'Servicios Publicos', 1, 4448899),
(4, 15267238, 'Exito SA', 'Almacen de Cadena', 1, 4444746);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clien_servi`
--

CREATE TABLE `clien_servi` (
  `ID_CLIEN_SERVI` int(11) NOT NULL,
  `ID_CLIEN` int(11) DEFAULT NULL,
  `ID_SERVICIO` int(11) DEFAULT NULL,
  `VALOR_HORA` float DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clien_servi`
--

INSERT INTO `clien_servi` (`ID_CLIEN_SERVI`, `ID_CLIEN`, `ID_SERVICIO`, `VALOR_HORA`, `id_estado`) VALUES
(1, 1, 1, 2000, 1),
(2, 1, 2, 7000, 1),
(3, 3, 2, 90000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clieser_acti`
--

CREATE TABLE `clieser_acti` (
  `ID_CSA` int(11) NOT NULL,
  `ID_CLIEN_SERVI` int(11) DEFAULT NULL,
  `ID_ACTIVI` int(11) DEFAULT NULL,
  `FECHA_INICIO` date DEFAULT NULL,
  `FECHA_FIN` date DEFAULT NULL,
  `NUMERO_HORAS` float DEFAULT NULL,
  `EMPLE_NUM_IDE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `ID_DOCU` int(11) NOT NULL,
  `RUTA` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emple`
--

CREATE TABLE `emple` (
  `ID_EMPLE` int(11) NOT NULL,
  `NUM_IDE` int(11) DEFAULT NULL,
  `TIPO_IDEN_ID_TIPO_ID` int(11) DEFAULT NULL,
  `NOMBRES` varchar(50) DEFAULT NULL,
  `APELLIDO_1` varchar(50) DEFAULT NULL,
  `APELLIDO_2` varchar(50) DEFAULT NULL,
  `DIRECCION` varchar(50) DEFAULT NULL,
  `TELEFONO` varchar(20) DEFAULT NULL,
  `ID_TIPO_EMPLE` int(11) DEFAULT NULL,
  `ID_ESTADO` int(11) DEFAULT NULL,
  `VIGENCIA_CONTRATO` varchar(50) DEFAULT NULL,
  `ID_CARGO` int(11) DEFAULT NULL,
  `ID_CONTRA` int(11) DEFAULT NULL,
  `SALARIO` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `emple`
--

INSERT INTO `emple` (`ID_EMPLE`, `NUM_IDE`, `TIPO_IDEN_ID_TIPO_ID`, `NOMBRES`, `APELLIDO_1`, `APELLIDO_2`, `DIRECCION`, `TELEFONO`, `ID_TIPO_EMPLE`, `ID_ESTADO`, `VIGENCIA_CONTRATO`, `ID_CARGO`, `ID_CONTRA`, `SALARIO`) VALUES
(1, 22222, 1, 'Jupiter', 'Posada', 'Ma', 'calle 22 6044', '3507591312', 1, 1, '2020', 1, 1, 1800000),
(2, 1152634783, 1, 'Luisa', 'Perez', 'Gonzalez', 'calle 22 6044', '4448899', 1, 1, '2020', 1, 1, 1800000),
(3, 71432645, 1, 'Manuel Salvador', 'Posada', 'Visbal', 'calle 111 #45-76', '3507591412', 1, 1, '2020', 1, 1, 1800000),
(4, 645366278, 1, 'Maria Euguenia', 'Marin', 'Garzon', 'carrera 85 #50100', '3456758', 1, 1, '2021', 1, 1, 1800000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `ID_ESTADO` int(11) NOT NULL,
  `SIGLA` varchar(1) DEFAULT NULL,
  `SIGNIFICADO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`ID_ESTADO`, `SIGLA`, `SIGNIFICADO`) VALUES
(1, 'A', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `title`, `color`, `start`, `end`) VALUES
(1, 'Evento Azul', '#0071c5', '2021-08-01 00:00:00', '2021-08-02 00:00:00'),
(2, 'Eventos 2', '#40E0D0', '2021-08-02 00:00:00', '2021-08-03 00:00:00'),
(3, 'Doble click para editar evento', '#008000', '2021-08-03 00:00:00', '2021-08-07 00:00:00'),
(4, 'Prueba1', '#0071c5', '2021-07-02 00:00:00', '2021-07-03 00:00:00'),
(5, 'Cumple', '#40E0D0', '2021-07-02 00:00:00', '2021-07-03 00:00:00'),
(6, 'Cumple', '#FFD700', '2021-07-02 00:00:00', '2021-07-03 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID_FACTURA` int(11) NOT NULL,
  `ID_CSA` int(11) NOT NULL,
  `VALOR` float DEFAULT NULL,
  `CLIEN_SERVI_ID_CLIEN_SERVI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `ID_PERMISO` int(11) NOT NULL,
  `ID_TIPO_EMPLE` int(11) DEFAULT NULL,
  `DESCRIPCION` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_sal`
--

CREATE TABLE `reserva_sal` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Volcado de datos para la tabla `reserva_sal`
--

INSERT INTO `reserva_sal` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(143, 1, 9223372036854775806, 143, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_sala`
--

CREATE TABLE `reserva_sala` (
  `ID_RESERVA` int(11) NOT NULL,
  `ID_EMPLE` int(11) DEFAULT NULL,
  `FECHA_INICIO` varchar(20) DEFAULT NULL,
  `ID_SALA` int(11) DEFAULT NULL,
  `FECHA_FIN` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva_sala`
--

INSERT INTO `reserva_sala` (`ID_RESERVA`, `ID_EMPLE`, `FECHA_INICIO`, `ID_SALA`, `FECHA_FIN`) VALUES
(1, 2222, '2021/08/16', 1, '021/08/16'),
(2, 22222, '2021-08-16', 1, '2021-08-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `ID_SALA` int(11) NOT NULL,
  `NOMBRE_SALA` varchar(40) DEFAULT NULL,
  `UBICACION` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`ID_SALA`, `NOMBRE_SALA`, `UBICACION`) VALUES
(1, 'Sala1', 'Derecha'),
(2, 'Sala', 'Sala1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `ID_SERVICIO` int(11) NOT NULL,
  `NOMBRE_SERVICIO` varchar(50) DEFAULT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`ID_SERVICIO`, `NOMBRE_SERVICIO`, `DESCRIPCION`) VALUES
(1, 'FEE', 'Administracion de servicios mensual'),
(2, 'DiseÃ±o campaÃ±a Pauta', 'DiseÃ±o de la pauta para las redes sociales'),
(3, 'Creacion Usuarios', 'Se crean los usuarios de la empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cont`
--

CREATE TABLE `tipo_cont` (
  `ID_CONTRA` int(11) NOT NULL,
  `TIPO_CONTRATO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_cont`
--

INSERT INTO `tipo_cont` (`ID_CONTRA`, `TIPO_CONTRATO`) VALUES
(1, 'INDEFINIDO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_emple`
--

CREATE TABLE `tipo_emple` (
  `ID_TIPO_EMPLE` int(11) NOT NULL,
  `TIPO_EMPLE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_emple`
--

INSERT INTO `tipo_emple` (`ID_TIPO_EMPLE`, `TIPO_EMPLE`) VALUES
(1, 'LIDER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_iden`
--

CREATE TABLE `tipo_iden` (
  `ID_TIPO_ID` int(11) NOT NULL,
  `TIPO_IDEN` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_iden`
--

INSERT INTO `tipo_iden` (`ID_TIPO_ID`, `TIPO_IDEN`) VALUES
(1, 'CEDULA DE CIUDADANIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_USUARIO` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PASSWOR` varchar(50) DEFAULT NULL,
  `ID_EMPLEADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_USUARIO`, `NAME`, `PASSWOR`, `ID_EMPLEADO`) VALUES
(0, 'natiposadabj', '123456', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activi`
--
ALTER TABLE `activi`
  ADD PRIMARY KEY (`ID_ACTIVI`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`ID_CARGO`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_CLIEN`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`);

--
-- Indices de la tabla `clien_servi`
--
ALTER TABLE `clien_servi`
  ADD PRIMARY KEY (`ID_CLIEN_SERVI`),
  ADD KEY `ID_CLIEN` (`ID_CLIEN`),
  ADD KEY `ID_SERVICIO` (`ID_SERVICIO`);

--
-- Indices de la tabla `clieser_acti`
--
ALTER TABLE `clieser_acti`
  ADD PRIMARY KEY (`ID_CSA`),
  ADD KEY `ID_CLIEN_SERVI` (`ID_CLIEN_SERVI`),
  ADD KEY `ID_ACTIVI` (`ID_ACTIVI`),
  ADD KEY `EMPLE_NUM_IDE` (`EMPLE_NUM_IDE`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`ID_DOCU`);

--
-- Indices de la tabla `emple`
--
ALTER TABLE `emple`
  ADD PRIMARY KEY (`ID_EMPLE`),
  ADD KEY `ID_TIPO_EMPLE` (`ID_TIPO_EMPLE`),
  ADD KEY `ID_ESTADO` (`ID_ESTADO`),
  ADD KEY `ID_CARGO` (`ID_CARGO`),
  ADD KEY `ID_CONTRA` (`ID_CONTRA`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID_ESTADO`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_FACTURA`),
  ADD KEY `ID_CSA` (`ID_CSA`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`ID_PERMISO`),
  ADD KEY `ID_TIPO_EMPLE` (`ID_TIPO_EMPLE`);

--
-- Indices de la tabla `reserva_sala`
--
ALTER TABLE `reserva_sala`
  ADD PRIMARY KEY (`ID_RESERVA`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`ID_SALA`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`ID_SERVICIO`);

--
-- Indices de la tabla `tipo_cont`
--
ALTER TABLE `tipo_cont`
  ADD PRIMARY KEY (`ID_CONTRA`);

--
-- Indices de la tabla `tipo_emple`
--
ALTER TABLE `tipo_emple`
  ADD PRIMARY KEY (`ID_TIPO_EMPLE`);

--
-- Indices de la tabla `tipo_iden`
--
ALTER TABLE `tipo_iden`
  ADD PRIMARY KEY (`ID_TIPO_ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `ID_EMPLEADO` (`ID_EMPLEADO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activi`
--
ALTER TABLE `activi`
  MODIFY `ID_ACTIVI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12349;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `ID_CARGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_CLIEN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clien_servi`
--
ALTER TABLE `clien_servi`
  MODIFY `ID_CLIEN_SERVI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clieser_acti`
--
ALTER TABLE `clieser_acti`
  MODIFY `ID_CSA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `ID_DOCU` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `emple`
--
ALTER TABLE `emple`
  MODIFY `ID_EMPLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `ID_ESTADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `ID_PERMISO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva_sala`
--
ALTER TABLE `reserva_sala`
  MODIFY `ID_RESERVA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `ID_SALA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `ID_SERVICIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_cont`
--
ALTER TABLE `tipo_cont`
  MODIFY `ID_CONTRA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_emple`
--
ALTER TABLE `tipo_emple`
  MODIFY `ID_TIPO_EMPLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_iden`
--
ALTER TABLE `tipo_iden`
  MODIFY `ID_TIPO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activi`
--
ALTER TABLE `activi`
  ADD CONSTRAINT `activi_ibfk_1` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`);

--
-- Filtros para la tabla `clien_servi`
--
ALTER TABLE `clien_servi`
  ADD CONSTRAINT `clien_servi_ibfk_1` FOREIGN KEY (`ID_CLIEN`) REFERENCES `cliente` (`ID_CLIEN`),
  ADD CONSTRAINT `clien_servi_ibfk_2` FOREIGN KEY (`ID_SERVICIO`) REFERENCES `servicios` (`ID_SERVICIO`);

--
-- Filtros para la tabla `clieser_acti`
--
ALTER TABLE `clieser_acti`
  ADD CONSTRAINT `clieser_acti_ibfk_1` FOREIGN KEY (`ID_CLIEN_SERVI`) REFERENCES `clien_servi` (`ID_CLIEN_SERVI`),
  ADD CONSTRAINT `clieser_acti_ibfk_2` FOREIGN KEY (`ID_ACTIVI`) REFERENCES `activi` (`ID_ACTIVI`),
  ADD CONSTRAINT `clieser_acti_ibfk_3` FOREIGN KEY (`EMPLE_NUM_IDE`) REFERENCES `emple` (`ID_EMPLE`);

--
-- Filtros para la tabla `emple`
--
ALTER TABLE `emple`
  ADD CONSTRAINT `emple_ibfk_1` FOREIGN KEY (`ID_TIPO_EMPLE`) REFERENCES `tipo_emple` (`ID_TIPO_EMPLE`),
  ADD CONSTRAINT `emple_ibfk_2` FOREIGN KEY (`ID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`),
  ADD CONSTRAINT `emple_ibfk_3` FOREIGN KEY (`ID_CARGO`) REFERENCES `cargo` (`ID_CARGO`),
  ADD CONSTRAINT `emple_ibfk_4` FOREIGN KEY (`ID_CONTRA`) REFERENCES `tipo_cont` (`ID_CONTRA`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_CSA`) REFERENCES `clieser_acti` (`ID_CSA`);

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`ID_TIPO_EMPLE`) REFERENCES `tipo_emple` (`ID_TIPO_EMPLE`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ID_EMPLEADO`) REFERENCES `emple` (`ID_EMPLE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
