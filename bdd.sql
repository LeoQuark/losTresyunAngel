-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bdd
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `abastece`
--

DROP TABLE IF EXISTS `abastece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abastece` (
  `ID_ABASTECE` varchar(30) NOT NULL,
  `FECHA_COMPRA` datetime NOT NULL,
  `RUT_PROVEEDOR` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_ABASTECE`),
  KEY `RUT_PROVEEDOR` (`RUT_PROVEEDOR`),
  CONSTRAINT `abastece_ibfk_1` FOREIGN KEY (`RUT_PROVEEDOR`) REFERENCES `proveedor` (`RUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abastece`
--

LOCK TABLES `abastece` WRITE;
/*!40000 ALTER TABLE `abastece` DISABLE KEYS */;
INSERT INTO `abastece` VALUES ('AB01','2019-11-10 11:29:13','12381630-1'),('AB02','2019-10-26 15:19:53','12381630-1'),('AB03','2019-04-22 15:08:31','12381630-1'),('AB04','2019-03-02 10:37:31','12381630-1'),('AB05','2019-12-20 13:23:20','16328481-7'),('AB06','2019-05-18 07:13:04','16328481-7'),('AB07','2019-07-11 13:02:14','16328481-7'),('AB08','2019-02-25 01:37:16','16328481-7'),('AB09','2019-06-22 16:22:03','16328481-7'),('AB10','2019-12-26 10:55:42','16328481-7'),('AB11','2019-10-14 11:34:10','16328481-7'),('AB12','2019-09-14 11:15:56','16328481-7'),('AB13','2019-02-20 13:58:29','16328481-7'),('AB14','2019-07-24 18:05:29','16328481-7'),('AB15','2019-06-19 19:30:32','16328481-7'),('AB16','2019-11-06 11:03:15','16328481-7'),('AB17','2019-06-04 12:09:54','16328481-7'),('AB18','2019-06-21 08:19:20','16328481-7'),('AB19','2019-05-17 08:43:09','16328481-7'),('AB20','2019-10-16 07:26:17','16328481-7'),('AB21','2019-07-31 05:50:11','16328481-7'),('AB22','2019-09-19 11:21:29','16328481-7'),('AB23','2019-12-09 19:23:51','16328481-7'),('AB24','2019-01-16 08:16:46','16328481-7'),('AB25','2019-04-07 01:19:53','16328481-7'),('AB26','2019-05-30 10:08:58','16328481-7'),('AB27','2019-08-14 17:13:27','16328481-7'),('AB28','2019-07-19 17:45:46','16328481-7'),('AB29','2019-09-19 11:21:29','16328481-7'),('AB30','2019-02-20 12:58:29','16328481-7');
/*!40000 ALTER TABLE `abastece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `ID_CARGO` varchar(30) NOT NULL,
  `DESCRIPCION` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_CARGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES ('C001','AUXILIAR DE ASEO'),('C002','COCINERO'),('C003','CAJERO');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `RUT` varchar(30) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  PRIMARY KEY (`RUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('10351521-0','Pablo Solorza Inostroza'),('10666935-4','Cristobal Cubillos Cubillos'),('10921514-7','Humberto Gonzalez Mejias'),('10942023-9','Paula Zambrano Perez'),('11205596-1','Nicole Jorquera Fernandez'),('11430627-4','Alexis Fernandez Prieto'),('11942830-0','David Uribe Contreras'),('12826729-K','Fernando Cepeda Rincon'),('13271356-9','Matias Gonzales Macaya'),('13304365-3','Dylan Soto Ruiz'),('13522247-4','Jorge Contreras Fernandez'),('16738650-9','Helena Gonzalez Gonzalez'),('16887798-3','Vicente Huenchulaf Gonzalez'),('17077186-2','Carol Zuñiga Jorquera'),('17552104-0','Lucia Soto Soto'),('18193935-1','Nicolas Inostroza Zuñiga'),('18536319-8','Nahuel Salinas Hinojosa'),('19100804-6','Juan Prieto Cepeda'),('19366270-8','Arturo Sanchez Palma'),('19368436-K','Natalia Fernandez Tudela'),('19772265-4','Jona Perez Sosa'),('19865855-K','Luis Sandoval Perez'),('19956465-1','Felipe Saavedra Rosas'),('20449819-6','Margarita Astudillo PIzarro'),('21221124-6','Jose Perez Contreras');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `RUT` varchar(30) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `DIRECCION` varchar(30) NOT NULL,
  `FECHA_CONTRATO` datetime NOT NULL,
  `SUELDO` int NOT NULL,
  `TELEFONO` int NOT NULL,
  `ID_CARGO` varchar(30) NOT NULL,
  `RUT_LOCAL_` varchar(30) NOT NULL,
  PRIMARY KEY (`RUT`),
  KEY `ID_CARGO` (`ID_CARGO`),
  KEY `RUT_LOCAL_` (`RUT_LOCAL_`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`ID_CARGO`) REFERENCES `cargo` (`ID_CARGO`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`RUT_LOCAL_`) REFERENCES `local_` (`RUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('18578266-0','Jaquelyn Cepeda Jorquera','Av.lino#21 Recoleta Stgo','2018-05-08 00:00:00',120000,938746053,'C001','273681-5412'),('18759101-8','Mario Venegas Ortiz','Vivaldi#56 Recoleta Stgo','2018-03-29 00:00:00',130000,982501383,'C002','273681-5412'),('19695283-4','Andres Velasquez Ravanal','Gr.Soto#130 Recoleta Stgo','2019-03-02 00:00:00',100000,987848523,'C003','273681-5412');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumo`
--

DROP TABLE IF EXISTS `insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumo` (
  `ID_INSUMO` varchar(30) NOT NULL,
  `STOCK` int NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `ID_TIPOPRODUCTO` varchar(30) NOT NULL,
  `RUT_LOCAL_` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_INSUMO`),
  KEY `ID_TIPOPRODUCTO` (`ID_TIPOPRODUCTO`),
  KEY `RUT_LOCAL_` (`RUT_LOCAL_`),
  CONSTRAINT `insumo_ibfk_1` FOREIGN KEY (`ID_TIPOPRODUCTO`) REFERENCES `tipo_producto` (`ID_TIPOPRODUCTO`),
  CONSTRAINT `insumo_ibfk_2` FOREIGN KEY (`RUT_LOCAL_`) REFERENCES `local_` (`RUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo`
--

LOCK TABLES `insumo` WRITE;
/*!40000 ALTER TABLE `insumo` DISABLE KEYS */;
INSERT INTO `insumo` VALUES ('001',20,'Carne 1kg5','I001','273681-5412'),('002',15,'Pollo 1kg','I001','273681-5412'),('003',14,'Vienesas 25u','I001','273681-5412'),('004',40,'hamburguesas 100g','I001','273681-5412'),('005',15,'Cebolla Morada 1kg','I002','273681-5412'),('006',10,'Palta 1kg','I004','273681-5412'),('007',8,'Lechuga 1kg','I002','273681-5412'),('008',5,'Sal 1kg','I004','273681-5412'),('009',12,'Camarones 1kg','I004','273681-5412'),('010',20,'Queso 500g','I004','273681-5412'),('011',15,'Queso crema 500g','I004','273681-5412'),('012',6,'Aceite 1lt','I004','273681-5412'),('013',9,'Choclo 1kg','I002','273681-5412'),('014',8,'Crema 500g','I004','273681-5412'),('015',10,'Oregano 100g','I004','273681-5412'),('016',4,'Aceitunas 500g','I004','273681-5412'),('017',18,'Papas 1kg','I002','273681-5412'),('018',7,'Huevos 1kg','I004','273681-5412'),('019',25,'Fajitas 1kg','I004','273681-5412'),('020',8,'Champiñon 500g','I002','273681-5412'),('021',18,'Tomate 1kg','I002','273681-5412'),('022',20,'Pan 1kg','I004','273681-5412'),('023',20,'Pan de completo 1kg','I004','273681-5412'),('024',5,'Mayonesa 1kg','I004','273681-5412'),('025',5,'Ketchup 1kg','I004','273681-5412'),('026',5,'Mostaza 1kg','I004','273681-5412'),('027',10,'Bebida Coca-cola 3lt','I003','273681-5412'),('028',10,'Bebida Sprite 3lt5','I003','273681-5412'),('029',8,'Bebida Fanta 3lt','I003','273681-5412'),('030',8,'Bebida Ken piña 3lt','I003','273681-5412');
/*!40000 ALTER TABLE `insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_`
--

DROP TABLE IF EXISTS `local_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_` (
  `RUT` varchar(30) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `DIRECCION` varchar(30) NOT NULL,
  `TELEFONO` int NOT NULL,
  PRIMARY KEY (`RUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_`
--

LOCK TABLES `local_` WRITE;
/*!40000 ALTER TABLE `local_` DISABLE KEYS */;
INSERT INTO `local_` VALUES ('273681-5412','Los Tres Y Un Angel','Mandarin#38 Puente Alto Stgo',275049043);
/*!40000 ALTER TABLE `local_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_final`
--

DROP TABLE IF EXISTS `producto_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_final` (
  `ID_PRODUCTO_FI` varchar(30) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `PRECIO` int NOT NULL,
  `RUT_LOCAL_` varchar(30) NOT NULL,
  `ID_TIPOPRODUCTO` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_PRODUCTO_FI`),
  KEY `RUT_LOCAL_` (`RUT_LOCAL_`),
  KEY `ID_TIPOPRODUCTO` (`ID_TIPOPRODUCTO`),
  CONSTRAINT `producto_final_ibfk_1` FOREIGN KEY (`RUT_LOCAL_`) REFERENCES `local_` (`RUT`),
  CONSTRAINT `producto_final_ibfk_2` FOREIGN KEY (`ID_TIPOPRODUCTO`) REFERENCES `tipo_producto` (`ID_TIPOPRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_final`
--

LOCK TABLES `producto_final` WRITE;
/*!40000 ALTER TABLE `producto_final` DISABLE KEYS */;
INSERT INTO `producto_final` VALUES ('F001','Napolitana',2300,'273681-5412','A001'),('F002','Camaron',3000,'273681-5412','A001'),('F003','Peruana de los 3',3000,'273681-5412','A001'),('F004','Chorillana',3000,'273681-5412','A001'),('F005','China mandarin',3000,'273681-5412','A001'),('F006','Gourmet',3000,'273681-5412','A001'),('F007','Care malo',3000,'273681-5412','A001'),('F008','Churrasco italiano',2500,'273681-5412','A002'),('F009','Barros luco',2500,'273681-5412','A002'),('F010','Chacarero',2800,'273681-5412','A002'),('F011','Lomito',2500,'273681-5412','A002'),('F012','Hamburguesa',2500,'273681-5412','A002'),('F013','Isra cangreburger',3000,'273681-5412','A002'),('F014','As completo',2000,'273681-5412','A003'),('F015','Completo italiano',2000,'273681-5412','A003'),('F016','As queso',2000,'273681-5412','A003'),('F017','As completo grande',2500,'273681-5412','A003'),('F018','Completo italiano grande',2500,'273681-5412','A003'),('F019','As queso grande',2500,'273681-5412','A003'),('F020','Papas fritas',1500,'273681-5412','A004');
/*!40000 ALTER TABLE `producto_final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `RUT` varchar(30) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `NOMBRE_CONTACTO` varchar(30) NOT NULL,
  `DIRECCION` varchar(30) NOT NULL,
  `CORREO` varchar(30) NOT NULL,
  `TELEFONO` int NOT NULL,
  PRIMARY KEY (`RUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES ('12381630-1','Mayorista 10','Susy Abogado Cifuentes','Tortolas#198 Puente Alto Stgo','mayorista.10@gmail.cL',245570013),('16328481-7','Unimarc','Oliver Meza Sepulveda','Ormazabal#23 Puente Alto Stgo','proveedor.unimarc@gmail.cL',289950435),('16774798-9','La vega','Patricio Norman Fuenzalida','Davila#700 Recoleta Stgo','Lavega@gmail.cL',935783696);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_abastece`
--

DROP TABLE IF EXISTS `registro_abastece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_abastece` (
  `ID_REGISTRO_AB` varchar(30) NOT NULL,
  `FECHA_CADUCIDAD` datetime NOT NULL,
  `CANTIDAD` int NOT NULL,
  `PRECIO` int NOT NULL,
  `ID_ABASTECE` varchar(30) NOT NULL,
  `ID_INSUMO` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_REGISTRO_AB`),
  KEY `ID_ABASTECE` (`ID_ABASTECE`),
  KEY `ID_INSUMO` (`ID_INSUMO`),
  CONSTRAINT `registro_abastece_ibfk_1` FOREIGN KEY (`ID_ABASTECE`) REFERENCES `abastece` (`ID_ABASTECE`),
  CONSTRAINT `registro_abastece_ibfk_2` FOREIGN KEY (`ID_INSUMO`) REFERENCES `insumo` (`ID_INSUMO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_abastece`
--

LOCK TABLES `registro_abastece` WRITE;
/*!40000 ALTER TABLE `registro_abastece` DISABLE KEYS */;
INSERT INTO `registro_abastece` VALUES ('RAB01','2020-11-02 17:05:13',40,8000,'AB01','001'),('RAB02','2020-07-10 19:52:06',36,6000,'AB02','002'),('RAB03','2020-09-04 02:21:42',47,6500,'AB03','003'),('RAB04','2020-02-15 01:31:22',30,4400,'AB04','004'),('RAB05','2020-05-27 20:07:55',23,4000,'AB05','008'),('RAB06','2020-01-16 15:44:28',17,3000,'AB06','009'),('RAB07','2020-12-08 23:28:27',25,3700,'AB07','010'),('RAB08','2020-01-08 11:01:59',21,2900,'AB08','011'),('RAB09','2020-06-21 12:18:31',21,2400,'AB09','012'),('RAB10','2020-08-06 02:47:43',21,3300,'AB10','014'),('RAB11','2020-07-20 18:45:59',21,3000,'AB11','019'),('RAB12','2020-06-26 12:29:43',30,3500,'AB12','022'),('RAB13','2020-06-11 17:58:29',52,4700,'AB13','023'),('RAB14','2020-01-26 13:55:08',28,3200,'AB14','024'),('RAB15','2020-10-12 03:49:25',26,3000,'AB15','025'),('RAB16','2020-03-18 13:54:24',25,2800,'AB16','026'),('RAB17','2020-01-25 15:52:36',25,2600,'AB17','027'),('RAB18','2020-08-21 16:17:02',22,3100,'AB18','028'),('RAB19','2020-11-11 23:23:15',27,4000,'AB19','029'),('RAB20','2020-12-24 02:13:12',27,3900,'AB20','030'),('RAB21','2020-05-28 12:29:15',25,2200,'AB21','005'),('RAB22','2020-07-15 01:21:03',22,2400,'AB22','006'),('RAB23','2020-09-17 05:51:36',23,2000,'AB23','007'),('RAB24','2020-11-11 13:53:39',26,2100,'AB24','013'),('RAB25','2020-03-09 08:09:27',28,3200,'AB25','015'),('RAB26','2020-01-27 22:59:50',27,2500,'AB26','016'),('RAB27','2020-06-16 00:33:19',30,3600,'AB27','017'),('RAB28','2020-02-28 22:07:54',30,2800,'AB28','018'),('RAB29','2020-01-01 20:25:58',30,2800,'AB29','020'),('RAB30','2020-11-13 09:15:28',30,2600,'AB30','021');
/*!40000 ALTER TABLE `registro_abastece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_vende`
--

DROP TABLE IF EXISTS `registro_vende`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_vende` (
  `ID_REGISTRO_VE` varchar(30) NOT NULL,
  `CANTIDAD` int NOT NULL,
  `ID_VENDE` varchar(30) NOT NULL,
  `ID_PRODUCTO_FI` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_REGISTRO_VE`),
  KEY `ID_VENDE` (`ID_VENDE`),
  KEY `ID_PRODUCTO_FI` (`ID_PRODUCTO_FI`),
  CONSTRAINT `registro_vende_ibfk_1` FOREIGN KEY (`ID_VENDE`) REFERENCES `vende` (`ID_VENDE`),
  CONSTRAINT `registro_vende_ibfk_2` FOREIGN KEY (`ID_PRODUCTO_FI`) REFERENCES `producto_final` (`ID_PRODUCTO_FI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_vende`
--

LOCK TABLES `registro_vende` WRITE;
/*!40000 ALTER TABLE `registro_vende` DISABLE KEYS */;
INSERT INTO `registro_vende` VALUES ('RV01',2,'V001','F001'),('RV02',1,'V002','F001'),('RV03',2,'V003','F007'),('RV04',3,'V004','F011'),('RV05',4,'V005','F015'),('RV06',2,'V006','F016'),('RV07',1,'V007','F001'),('RV08',1,'V008','F020'),('RV09',2,'V009','F007'),('RV10',2,'V010','F008'),('RV11',4,'V011','F009'),('RV12',3,'V012','F002'),('RV13',3,'V013','F002'),('RV14',2,'V014','F009'),('RV15',2,'V015','F001'),('RV16',2,'V016','F016'),('RV17',3,'V017','F016'),('RV18',1,'V018','F013'),('RV19',4,'V019','F012'),('RV20',2,'V020','F013'),('RV21',3,'V021','F005'),('RV22',2,'V022','F005'),('RV23',3,'V023','F018'),('RV24',2,'V024','F008'),('RV25',1,'V025','F006');
/*!40000 ALTER TABLE `registro_vende` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pago`
--

DROP TABLE IF EXISTS `tipo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_pago` (
  `ID_PAGO` varchar(30) NOT NULL,
  `TIPO_DE_PAGO` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_PAGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pago`
--

LOCK TABLES `tipo_pago` WRITE;
/*!40000 ALTER TABLE `tipo_pago` DISABLE KEYS */;
INSERT INTO `tipo_pago` VALUES ('P001','efectivo'),('P002','debito'),('P003','credito');
/*!40000 ALTER TABLE `tipo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_producto`
--

DROP TABLE IF EXISTS `tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_producto` (
  `ID_TIPOPRODUCTO` varchar(30) NOT NULL,
  `TIPO_DE_PRODUCTO` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_TIPOPRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_producto`
--

LOCK TABLES `tipo_producto` WRITE;
/*!40000 ALTER TABLE `tipo_producto` DISABLE KEYS */;
INSERT INTO `tipo_producto` VALUES ('A001','Fajita'),('A002','Sandwich'),('A003','Completo'),('A004','Papas fritas'),('A005','Bebestibles'),('I001','Carnes'),('I002','Vegetales'),('I003','Bebestibles'),('I004','Otros');
/*!40000 ALTER TABLE `tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vende`
--

DROP TABLE IF EXISTS `vende`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vende` (
  `ID_VENDE` varchar(30) NOT NULL,
  `FECHA` datetime NOT NULL,
  `RUT_CLIENTE` varchar(30) NOT NULL,
  `ID_PAGO` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_VENDE`),
  KEY `RUT_CLIENTE` (`RUT_CLIENTE`),
  KEY `ID_PAGO` (`ID_PAGO`),
  CONSTRAINT `vende_ibfk_1` FOREIGN KEY (`RUT_CLIENTE`) REFERENCES `cliente` (`RUT`),
  CONSTRAINT `vende_ibfk_2` FOREIGN KEY (`ID_PAGO`) REFERENCES `tipo_pago` (`ID_PAGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vende`
--

LOCK TABLES `vende` WRITE;
/*!40000 ALTER TABLE `vende` DISABLE KEYS */;
INSERT INTO `vende` VALUES ('V001','2019-12-22 10:24:38','19865855-K','P001'),('V002','2019-12-28 10:11:09','17077186-2','P001'),('V003','2019-12-14 12:36:32','17552104-0','P001'),('V004','2019-12-20 14:56:02','10921514-7','P001'),('V005','2019-12-09 12:10:16','19100804-6','P001'),('V006','2019-12-10 18:51:52','13304365-3','P001'),('V007','2019-12-08 13:23:05','19772265-4','P001'),('V008','2019-12-12 12:03:12','19368436-K','P001'),('V009','2019-12-29 19:05:15','13522247-4','P002'),('V010','2019-12-03 16:28:48','18536319-8','P001'),('V011','2019-12-23 03:17:56','13271356-9','P002'),('V012','2019-12-18 13:24:43','12826729-K','P001'),('V013','2019-12-13 14:35:39','10351521-0','P002'),('V014','2019-12-15 19:47:35','10666935-4','P002'),('V015','2019-12-25 18:01:59','19956465-1','P001'),('V016','2019-12-14 19:50:12','10942023-9','P001'),('V017','2019-12-06 11:47:16','20449819-6','P001'),('V018','2019-12-18 19:17:36','16738650-9','P001'),('V019','2019-12-14 10:50:38','21221124-6','P001'),('V020','2019-12-06 10:17:36','11942830-0','P001'),('V021','2019-12-26 17:16:31','16887798-3','P003'),('V022','2019-12-08 20:04:38','11205596-1','P001'),('V023','2019-12-23 11:27:39','11430627-4','P001'),('V024','2019-12-07 16:12:18','19366270-8','P001'),('V025','2019-12-03 17:12:22','18193935-1','P003');
/*!40000 ALTER TABLE `vende` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bdd'
--

--
-- Dumping routines for database 'bdd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-29 17:42:37
