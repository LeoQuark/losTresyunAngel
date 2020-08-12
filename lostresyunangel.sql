-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-08-2020 a las 10:56:04
-- Versión del servidor: 8.0.20
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lostresyunangel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abastece`
--

CREATE TABLE `abastece` (
  `ID_ABASTECE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `FECHA_COMPRA` datetime NOT NULL,
  `RUT_PROVEEDOR` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `abastece`
--

INSERT INTO `abastece` (`ID_ABASTECE`, `FECHA_COMPRA`, `RUT_PROVEEDOR`) VALUES
('AB01', '2019-11-10 11:29:13', '12381630-1'),
('AB02', '2019-10-26 15:19:53', '12381630-1'),
('AB03', '2019-04-22 15:08:31', '12381630-1'),
('AB04', '2019-03-02 10:37:31', '12381630-1'),
('AB05', '2019-12-20 13:23:20', '16328481-7'),
('AB06', '2019-05-18 07:13:04', '16328481-7'),
('AB07', '2019-07-11 13:02:14', '16328481-7'),
('AB08', '2019-02-25 01:37:16', '16328481-7'),
('AB09', '2019-06-22 16:22:03', '16328481-7'),
('AB10', '2019-12-26 10:55:42', '16328481-7'),
('AB11', '2019-10-14 11:34:10', '16328481-7'),
('AB12', '2019-09-14 11:15:56', '16328481-7'),
('AB13', '2019-02-20 13:58:29', '16328481-7'),
('AB14', '2019-07-24 18:05:29', '16328481-7'),
('AB15', '2019-06-19 19:30:32', '16328481-7'),
('AB16', '2019-11-06 11:03:15', '16328481-7'),
('AB17', '2019-06-04 12:09:54', '16328481-7'),
('AB18', '2019-06-21 08:19:20', '16328481-7'),
('AB19', '2019-05-17 08:43:09', '16328481-7'),
('AB20', '2019-10-16 07:26:17', '16328481-7'),
('AB21', '2019-07-31 05:50:11', '16328481-7'),
('AB22', '2019-09-19 11:21:29', '16328481-7'),
('AB23', '2019-12-09 19:23:51', '16328481-7'),
('AB24', '2019-01-16 08:16:46', '16328481-7'),
('AB25', '2019-04-07 01:19:53', '16328481-7'),
('AB26', '2019-05-30 10:08:58', '16328481-7'),
('AB27', '2019-08-14 17:13:27', '16328481-7'),
('AB28', '2019-07-19 17:45:46', '16328481-7'),
('AB29', '2019-09-19 11:21:29', '16328481-7'),
('AB30', '2019-02-20 12:58:29', '16328481-7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `ID_CARGO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `DESCRIPCION` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`ID_CARGO`, `DESCRIPCION`) VALUES
('C001', 'AUXILIAR DE ASEO'),
('C002', 'COCINERO'),
('C003', 'CAJERO'),
('C004', 'usuario no verificado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `RUT` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `NOMBRE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`RUT`, `NOMBRE`) VALUES
('10351521-0', 'Pablo Solorza Inostroza'),
('10666935-4', 'Cristobal Cubillos Cubillos'),
('10921514-7', 'Humberto Gonzalez Mejias'),
('10942023-9', 'Paula Zambrano Perez'),
('11205596-1', 'Nicole Jorquera Fernandez'),
('11430627-4', 'Alexis Fernandez Prieto'),
('11942830-0', 'David Uribe Contreras'),
('12826729-K', 'Fernando Cepeda Rincon'),
('13271356-9', 'Matias Gonzales Macaya'),
('13304365-3', 'Dylan Soto Ruiz'),
('13522247-4', 'Jorge Contreras Fernandez'),
('16738650-9', 'Helena Gonzalez Gonzalez'),
('16887798-3', 'Vicente Huenchulaf Gonzalez'),
('17077186-2', 'Carol Zuñiga Jorquera'),
('17552104-0', 'Lucia Soto Soto'),
('18193935-1', 'Nicolas Inostroza Zuñiga'),
('18536319-8', 'Nahuel Salinas Hinojosa'),
('19100804-6', 'Juan Prieto Cepeda'),
('19366270-8', 'Arturo Sanchez Palma'),
('19368436-K', 'Natalia Fernandez Tudela'),
('19772265-4', 'Jona Perez Sosa'),
('19865855-K', 'Luis Sandoval Perez'),
('19956465-1', 'Felipe Saavedra Rosas'),
('20449819-6', 'Margarita Astudillo PIzarro'),
('21221124-6', 'Jose Perez Contreras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `RUT` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `NOMBRE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DIRECCION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FECHA_CONTRATO` datetime DEFAULT NULL,
  `SUELDO` int DEFAULT NULL,
  `TELEFONO` int DEFAULT NULL,
  `ID_CARGO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RUT_LOCAL_` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`RUT`, `NOMBRE`, `DIRECCION`, `FECHA_CONTRATO`, `SUELDO`, `TELEFONO`, `ID_CARGO`, `RUT_LOCAL_`, `password`) VALUES
('19844422-7', 'Andres Velasquez Ravanal', 'Gr.Soto#130 Recoleta Stgo', '2019-03-02 00:00:00', 100000, 999237917, 'C003', '273681-5412', 'admin123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo`
--

CREATE TABLE `insumo` (
  `ID_INSUMO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `STOCK` int NOT NULL,
  `NOMBRE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_TIPOPRODUCTO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RUT_LOCAL_` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `insumo`
--

INSERT INTO `insumo` (`ID_INSUMO`, `STOCK`, `NOMBRE`, `ID_TIPOPRODUCTO`, `RUT_LOCAL_`) VALUES
('001', 20, 'Carne 1kg5', 'I001', '273681-5412'),
('002', 15, 'Pollo 1kg', 'I001', '273681-5412'),
('003', 14, 'Vienesas 25u', 'I001', '273681-5412'),
('004', 40, 'hamburguesas 100g', 'I001', '273681-5412'),
('005', 15, 'Cebolla Morada 1kg', 'I002', '273681-5412'),
('006', 10, 'Palta 1kg', 'I004', '273681-5412'),
('007', 8, 'Lechuga 1kg', 'I002', '273681-5412'),
('008', 5, 'Sal 1kg', 'I004', '273681-5412'),
('009', 12, 'Camarones 1kg', 'I004', '273681-5412'),
('010', 20, 'Queso 500g', 'I004', '273681-5412'),
('011', 15, 'Queso crema 500g', 'I004', '273681-5412'),
('012', 6, 'Aceite 1lt', 'I004', '273681-5412'),
('013', 9, 'Choclo 1kg', 'I002', '273681-5412'),
('014', 8, 'Crema 500g', 'I004', '273681-5412'),
('015', 10, 'Oregano 100g', 'I004', '273681-5412'),
('016', 4, 'Aceitunas 500g', 'I004', '273681-5412'),
('017', 18, 'Papas 1kg', 'I002', '273681-5412'),
('018', 7, 'Huevos 1kg', 'I004', '273681-5412'),
('019', 25, 'Fajitas 1kg', 'I004', '273681-5412'),
('020', 8, 'Champiñon 500g', 'I002', '273681-5412'),
('021', 18, 'Tomate 1kg', 'I002', '273681-5412'),
('022', 20, 'Pan 1kg', 'I004', '273681-5412'),
('023', 20, 'Pan de completo 1kg', 'I004', '273681-5412'),
('024', 5, 'Mayonesa 1kg', 'I004', '273681-5412'),
('025', 5, 'Ketchup 1kg', 'I004', '273681-5412'),
('026', 5, 'Mostaza 1kg', 'I004', '273681-5412'),
('027', 10, 'Bebida Coca-cola 3lt', 'I003', '273681-5412'),
('028', 10, 'Bebida Sprite 3lt5', 'I003', '273681-5412'),
('029', 8, 'Bebida Fanta 3lt', 'I003', '273681-5412'),
('030', 8, 'Bebida Ken piña 3lt', 'I003', '273681-5412');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `local_`
--

CREATE TABLE `local_` (
  `RUT` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `NOMBRE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `DIRECCION` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `TELEFONO` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `local_`
--

INSERT INTO `local_` (`RUT`, `NOMBRE`, `DIRECCION`, `TELEFONO`) VALUES
('273681-5412', 'Los Tres Y Un Angel', 'Mandarin#38 Puente Alto Stgo', 275049043);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_final`
--

CREATE TABLE `producto_final` (
  `ID_PRODUCTO_FI` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `NOMBRE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `PRECIO` int NOT NULL,
  `RUT_LOCAL_` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_TIPOPRODUCTO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_final`
--

INSERT INTO `producto_final` (`ID_PRODUCTO_FI`, `NOMBRE`, `PRECIO`, `RUT_LOCAL_`, `ID_TIPOPRODUCTO`) VALUES
('F001', 'Napolitana', 2300, '273681-5412', 'A001'),
('F002', 'Camaron', 3000, '273681-5412', 'A001'),
('F003', 'Peruana de los 3', 3000, '273681-5412', 'A001'),
('F004', 'Chorillana', 3000, '273681-5412', 'A001'),
('F005', 'China mandarin', 3000, '273681-5412', 'A001'),
('F006', 'Gourmet', 3000, '273681-5412', 'A001'),
('F007', 'Care malo', 3000, '273681-5412', 'A001'),
('F008', 'Churrasco italiano', 2500, '273681-5412', 'A002'),
('F009', 'Barros luco', 2500, '273681-5412', 'A002'),
('F010', 'Chacarero', 2800, '273681-5412', 'A002'),
('F011', 'Lomito', 2500, '273681-5412', 'A002'),
('F012', 'Hamburguesa', 2500, '273681-5412', 'A002'),
('F013', 'Isra cangreburger', 3000, '273681-5412', 'A002'),
('F014', 'As completo', 2000, '273681-5412', 'A003'),
('F015', 'Completo italiano', 2000, '273681-5412', 'A003'),
('F016', 'As queso', 2000, '273681-5412', 'A003'),
('F017', 'As completo grande', 2500, '273681-5412', 'A003'),
('F018', 'Completo italiano grande', 2500, '273681-5412', 'A003'),
('F019', 'As queso grande', 2500, '273681-5412', 'A003'),
('F020', 'Papas fritas', 1500, '273681-5412', 'A004');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `RUT` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `NOMBRE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `NOMBRE_CONTACTO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `DIRECCION` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `CORREO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `TELEFONO` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`RUT`, `NOMBRE`, `NOMBRE_CONTACTO`, `DIRECCION`, `CORREO`, `TELEFONO`) VALUES
('12381630-1', 'Mayorista 10', 'Susy Abogado Cifuentes', 'Tortolas#198 Puente Alto Stgo', 'mayorista.10@gmail.cL', 245570013),
('16328481-7', 'Unimarc', 'Oliver Meza Sepulveda', 'Ormazabal#23 Puente Alto Stgo', 'proveedor.unimarc@gmail.cL', 289950435),
('16774798-9', 'La vega', 'Patricio Norman Fuenzalida', 'Davila#700 Recoleta Stgo', 'Lavega@gmail.cL', 935783696);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_abastece`
--

CREATE TABLE `registro_abastece` (
  `ID_REGISTRO_AB` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `FECHA_CADUCIDAD` date NOT NULL,
  `CANTIDAD` int NOT NULL,
  `PRECIO` int NOT NULL,
  `ID_ABASTECE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_INSUMO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_abastece`
--

INSERT INTO `registro_abastece` (`ID_REGISTRO_AB`, `FECHA_CADUCIDAD`, `CANTIDAD`, `PRECIO`, `ID_ABASTECE`, `ID_INSUMO`) VALUES
('RAB01', '2020-11-02', 40, 8000, 'AB01', '001'),
('RAB02', '2020-07-10', 36, 6000, 'AB02', '002'),
('RAB03', '2020-09-04', 47, 6500, 'AB03', '003'),
('RAB04', '2020-02-15', 30, 4400, 'AB04', '004'),
('RAB05', '2020-05-27', 23, 4000, 'AB05', '008'),
('RAB06', '2020-01-16', 17, 3000, 'AB06', '009'),
('RAB07', '2020-12-08', 25, 3700, 'AB07', '010'),
('RAB08', '2020-01-08', 21, 2900, 'AB08', '011'),
('RAB09', '2020-06-21', 21, 2400, 'AB09', '012'),
('RAB10', '2020-08-06', 21, 3300, 'AB10', '014'),
('RAB11', '2020-07-20', 21, 3000, 'AB11', '019'),
('RAB12', '2020-06-26', 30, 3500, 'AB12', '022'),
('RAB13', '2020-06-11', 52, 4700, 'AB13', '023'),
('RAB14', '2020-01-26', 28, 3200, 'AB14', '024'),
('RAB15', '2020-10-12', 26, 3000, 'AB15', '025'),
('RAB16', '2020-03-18', 25, 2800, 'AB16', '026'),
('RAB17', '2020-01-25', 25, 2600, 'AB17', '027'),
('RAB18', '2020-08-21', 22, 3100, 'AB18', '028'),
('RAB19', '2020-11-11', 27, 4000, 'AB19', '029'),
('RAB20', '2020-12-24', 27, 3900, 'AB20', '030'),
('RAB21', '2020-05-28', 25, 2200, 'AB21', '005'),
('RAB22', '2020-07-15', 22, 2400, 'AB22', '006'),
('RAB23', '2020-09-17', 23, 2000, 'AB23', '007'),
('RAB24', '2020-11-11', 26, 2100, 'AB24', '013'),
('RAB25', '2020-03-09', 28, 3200, 'AB25', '015'),
('RAB26', '2020-01-27', 27, 2500, 'AB26', '016'),
('RAB27', '2020-06-16', 30, 3600, 'AB27', '017'),
('RAB28', '2020-02-28', 30, 2800, 'AB28', '018'),
('RAB29', '2020-01-01', 30, 2800, 'AB29', '020'),
('RAB30', '2020-11-13', 30, 2600, 'AB30', '021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_vende`
--

CREATE TABLE `registro_vende` (
  `ID_REGISTRO_VE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `CANTIDAD` int NOT NULL,
  `ID_VENDE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_PRODUCTO_FI` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_vende`
--

INSERT INTO `registro_vende` (`ID_REGISTRO_VE`, `CANTIDAD`, `ID_VENDE`, `ID_PRODUCTO_FI`) VALUES
('RV01', 2, 'V001', 'F001'),
('RV02', 1, 'V002', 'F001'),
('RV03', 2, 'V003', 'F007'),
('RV04', 3, 'V004', 'F011'),
('RV05', 4, 'V005', 'F015'),
('RV06', 2, 'V006', 'F016'),
('RV07', 1, 'V007', 'F001'),
('RV08', 1, 'V008', 'F020'),
('RV09', 2, 'V009', 'F007'),
('RV10', 2, 'V010', 'F008'),
('RV11', 4, 'V011', 'F009'),
('RV12', 3, 'V012', 'F002'),
('RV13', 3, 'V013', 'F002'),
('RV14', 2, 'V014', 'F009'),
('RV15', 2, 'V015', 'F001'),
('RV16', 2, 'V016', 'F016'),
('RV17', 3, 'V017', 'F016'),
('RV18', 1, 'V018', 'F013'),
('RV19', 4, 'V019', 'F012'),
('RV20', 2, 'V020', 'F013'),
('RV21', 3, 'V021', 'F005'),
('RV22', 2, 'V022', 'F005'),
('RV23', 3, 'V023', 'F018'),
('RV24', 2, 'V024', 'F008'),
('RV25', 1, 'V025', 'F006');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE `tipo_pago` (
  `ID_PAGO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `TIPO_DE_PAGO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_pago`
--

INSERT INTO `tipo_pago` (`ID_PAGO`, `TIPO_DE_PAGO`) VALUES
('P001', 'efectivo'),
('P002', 'debito'),
('P003', 'credito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_producto`
--

CREATE TABLE `tipo_producto` (
  `ID_TIPOPRODUCTO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `TIPO_DE_PRODUCTO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_producto`
--

INSERT INTO `tipo_producto` (`ID_TIPOPRODUCTO`, `TIPO_DE_PRODUCTO`) VALUES
('A001', 'Fajita'),
('A002', 'Sandwich'),
('A003', 'Completo'),
('A004', 'Papas fritas'),
('A005', 'Bebestibles'),
('I001', 'Carnes'),
('I002', 'Vegetales'),
('I003', 'Bebestibles'),
('I004', 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vende`
--

CREATE TABLE `vende` (
  `ID_VENDE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `FECHA` date NOT NULL,
  `RUT_CLIENTE` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ID_PAGO` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vende`
--

INSERT INTO `vende` (`ID_VENDE`, `FECHA`, `RUT_CLIENTE`, `ID_PAGO`) VALUES
('V001', '2019-12-22', '19865855-K', 'P001'),
('V002', '2019-12-28', '17077186-2', 'P001'),
('V003', '2019-12-14', '17552104-0', 'P001'),
('V004', '2019-12-20', '10921514-7', 'P001'),
('V005', '2019-12-09', '19100804-6', 'P001'),
('V006', '2019-12-10', '13304365-3', 'P001'),
('V007', '2019-12-08', '19772265-4', 'P001'),
('V008', '2019-12-12', '19368436-K', 'P001'),
('V009', '2019-12-29', '13522247-4', 'P002'),
('V010', '2019-12-03', '18536319-8', 'P001'),
('V011', '2019-12-23', '13271356-9', 'P002'),
('V012', '2019-12-18', '12826729-K', 'P001'),
('V013', '2019-12-13', '10351521-0', 'P002'),
('V014', '2019-12-15', '10666935-4', 'P002'),
('V015', '2019-12-25', '19956465-1', 'P001'),
('V016', '2019-12-14', '10942023-9', 'P001'),
('V017', '2019-12-06', '20449819-6', 'P001'),
('V018', '2019-12-18', '16738650-9', 'P001'),
('V019', '2019-12-14', '21221124-6', 'P001'),
('V020', '2019-12-06', '11942830-0', 'P001'),
('V021', '2019-12-26', '16887798-3', 'P003'),
('V022', '2019-12-08', '11205596-1', 'P001'),
('V023', '2019-12-23', '11430627-4', 'P001'),
('V024', '2019-12-07', '19366270-8', 'P001'),
('V025', '2019-12-03', '18193935-1', 'P003');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abastece`
--
ALTER TABLE `abastece`
  ADD PRIMARY KEY (`ID_ABASTECE`),
  ADD KEY `RUT_PROVEEDOR` (`RUT_PROVEEDOR`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`ID_CARGO`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`RUT`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`RUT`),
  ADD KEY `ID_CARGO` (`ID_CARGO`),
  ADD KEY `RUT_LOCAL_` (`RUT_LOCAL_`);

--
-- Indices de la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD PRIMARY KEY (`ID_INSUMO`),
  ADD KEY `ID_TIPOPRODUCTO` (`ID_TIPOPRODUCTO`),
  ADD KEY `RUT_LOCAL_` (`RUT_LOCAL_`);

--
-- Indices de la tabla `local_`
--
ALTER TABLE `local_`
  ADD PRIMARY KEY (`RUT`);

--
-- Indices de la tabla `producto_final`
--
ALTER TABLE `producto_final`
  ADD PRIMARY KEY (`ID_PRODUCTO_FI`),
  ADD KEY `RUT_LOCAL_` (`RUT_LOCAL_`),
  ADD KEY `ID_TIPOPRODUCTO` (`ID_TIPOPRODUCTO`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`RUT`);

--
-- Indices de la tabla `registro_abastece`
--
ALTER TABLE `registro_abastece`
  ADD PRIMARY KEY (`ID_REGISTRO_AB`),
  ADD KEY `ID_ABASTECE` (`ID_ABASTECE`),
  ADD KEY `ID_INSUMO` (`ID_INSUMO`);

--
-- Indices de la tabla `registro_vende`
--
ALTER TABLE `registro_vende`
  ADD PRIMARY KEY (`ID_REGISTRO_VE`),
  ADD KEY `ID_VENDE` (`ID_VENDE`),
  ADD KEY `ID_PRODUCTO_FI` (`ID_PRODUCTO_FI`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`ID_PAGO`);

--
-- Indices de la tabla `tipo_producto`
--
ALTER TABLE `tipo_producto`
  ADD PRIMARY KEY (`ID_TIPOPRODUCTO`);

--
-- Indices de la tabla `vende`
--
ALTER TABLE `vende`
  ADD PRIMARY KEY (`ID_VENDE`),
  ADD KEY `RUT_CLIENTE` (`RUT_CLIENTE`),
  ADD KEY `ID_PAGO` (`ID_PAGO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abastece`
--
ALTER TABLE `abastece`
  ADD CONSTRAINT `abastece_ibfk_1` FOREIGN KEY (`RUT_PROVEEDOR`) REFERENCES `proveedor` (`RUT`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`ID_CARGO`) REFERENCES `cargo` (`ID_CARGO`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`RUT_LOCAL_`) REFERENCES `local_` (`RUT`);

--
-- Filtros para la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD CONSTRAINT `insumo_ibfk_1` FOREIGN KEY (`ID_TIPOPRODUCTO`) REFERENCES `tipo_producto` (`ID_TIPOPRODUCTO`),
  ADD CONSTRAINT `insumo_ibfk_2` FOREIGN KEY (`RUT_LOCAL_`) REFERENCES `local_` (`RUT`);

--
-- Filtros para la tabla `producto_final`
--
ALTER TABLE `producto_final`
  ADD CONSTRAINT `producto_final_ibfk_1` FOREIGN KEY (`RUT_LOCAL_`) REFERENCES `local_` (`RUT`),
  ADD CONSTRAINT `producto_final_ibfk_2` FOREIGN KEY (`ID_TIPOPRODUCTO`) REFERENCES `tipo_producto` (`ID_TIPOPRODUCTO`);

--
-- Filtros para la tabla `registro_abastece`
--
ALTER TABLE `registro_abastece`
  ADD CONSTRAINT `registro_abastece_ibfk_1` FOREIGN KEY (`ID_ABASTECE`) REFERENCES `abastece` (`ID_ABASTECE`),
  ADD CONSTRAINT `registro_abastece_ibfk_2` FOREIGN KEY (`ID_INSUMO`) REFERENCES `insumo` (`ID_INSUMO`);

--
-- Filtros para la tabla `registro_vende`
--
ALTER TABLE `registro_vende`
  ADD CONSTRAINT `registro_vende_ibfk_1` FOREIGN KEY (`ID_VENDE`) REFERENCES `vende` (`ID_VENDE`),
  ADD CONSTRAINT `registro_vende_ibfk_2` FOREIGN KEY (`ID_PRODUCTO_FI`) REFERENCES `producto_final` (`ID_PRODUCTO_FI`);

--
-- Filtros para la tabla `vende`
--
ALTER TABLE `vende`
  ADD CONSTRAINT `vende_ibfk_1` FOREIGN KEY (`RUT_CLIENTE`) REFERENCES `cliente` (`RUT`),
  ADD CONSTRAINT `vende_ibfk_2` FOREIGN KEY (`ID_PAGO`) REFERENCES `tipo_pago` (`ID_PAGO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
