-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: resto
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `MAlmacen`
--

DROP TABLE IF EXISTS `MAlmacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAlmacen` (
  `ID_Almacen` int(11) NOT NULL AUTO_INCREMENT,
  `Almacen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Almacen`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAlmacen`
--

LOCK TABLES `MAlmacen` WRITE;
/*!40000 ALTER TABLE `MAlmacen` DISABLE KEYS */;
INSERT INTO `MAlmacen` VALUES (1,'Almacen 1'),(2,'Almacen 2'),(3,'Almacen 3');
/*!40000 ALTER TABLE `MAlmacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDistrito`
--

DROP TABLE IF EXISTS `MDistrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDistrito` (
  `ID_Distrito` int(11) NOT NULL AUTO_INCREMENT,
  `Distrito` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_Distrito`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDistrito`
--

LOCK TABLES `MDistrito` WRITE;
/*!40000 ALTER TABLE `MDistrito` DISABLE KEYS */;
INSERT INTO `MDistrito` VALUES (1,'ANCON'),(2,'ATE'),(3,'BARRANCO'),(4,'BRENA'),(5,'CARABAYLLO'),(6,'CHACLACAYO CHOSICA'),(7,'CHORRILLOS'),(8,'CIENEGUILLA'),(9,'COMAS'),(10,'EL AGUSTINO'),(11,'INDEPENDENCIA'),(12,'LA MOLINA'),(13,'LA VICTORIA'),(14,'LIMA'),(15,'LINCE'),(16,'LOS OLIVOS'),(17,'LURIGANCHO'),(18,'LURIN'),(19,'MAGDALENA DEL MAR'),(20,'MIRAFLORES'),(21,'PACHACAMAC'),(22,'PUCUSANA'),(23,'PUEBLO LIBRE'),(24,'PUENTE PIEDRA'),(25,'PUNTA HERMOSA'),(26,'PUNTA NEGRA'),(27,'RIMAC'),(28,'SAN BARTOLO'),(29,'SAN BORJA'),(30,'SAN ISIDRO'),(31,'SAN JUAN DE LURIGANCHO'),(32,'SAN JUAN DE MIRAFLORES'),(33,'SAN LUIS'),(34,'SAN MARTIN DE PORRES'),(35,'SAN MIGUEL'),(36,'SANTA ANITA'),(37,'SANTA MARIA DEL MAR'),(38,'SANTIAGO DE SURCO'),(39,'SURQUILLO'),(40,'VILLA EL SALVADOR'),(41,'VILLA MARIA DEL TRIUNFO');
/*!40000 ALTER TABLE `MDistrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEdificio`
--

DROP TABLE IF EXISTS `MEdificio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEdificio` (
  `ID_Edificio` int(11) NOT NULL AUTO_INCREMENT,
  `Edificio` varchar(200) DEFAULT NULL,
  `AñoConstruccion` int(11) DEFAULT NULL,
  `M2` double DEFAULT NULL,
  `UsuarioAlta` varchar(200) DEFAULT NULL,
  `UsuarioMod` varchar(200) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaMod` datetime DEFAULT NULL,
  `Baja` date DEFAULT NULL,
  `Direccion` varchar(500) DEFAULT NULL,
  `NroMaxDpto` int(11) DEFAULT NULL,
  `NroMaxReserva` int(11) DEFAULT NULL,
  `Imagen` text,
  `ImagenThumbnail` text,
  `NroReservaSum` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Edificio`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEdificio`
--

LOCK TABLES `MEdificio` WRITE;
/*!40000 ALTER TABLE `MEdificio` DISABLE KEYS */;
INSERT INTO `MEdificio` VALUES (1,'Zentia',2017,30000,'demo@demo','superadmin@superadmin','2018-11-13 21:57:34','2019-04-03 06:57:20',NULL,'Av. La Mar 123',12,1,'assets/img/edificio/sentia.jpg','assets/img/edificio/thumbnails/sentia.jpg',0),(2,'Allegro',2018,20000,'demo@demo','superadmin@superadmin','2018-11-21 22:51:51','2019-04-03 06:56:56',NULL,'Avenida Sucre 1521',45,4,'assets/img/edificio/des.jpg','assets/img/edificio/thumbnails/des.jpg',2),(7,'Tower',2014,40000,'admin@admin','superadmin@superadmin','2019-03-16 02:07:33','2019-04-03 06:57:11',NULL,'Av. Real 102',12,1,'assets/img/edificio/descarga.jpg','assets/img/edificio/thumbnails/descarga.jpg',0),(9,NULL,NULL,NULL,'superadmin@superadmin','superadmin@superadmin','2019-04-23 18:02:00','2019-04-23 18:02:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `MEdificio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEspecialidad`
--

DROP TABLE IF EXISTS `MEspecialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEspecialidad` (
  `ID_Especialidad` int(11) NOT NULL AUTO_INCREMENT,
  `Especialidad` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID_Especialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEspecialidad`
--

LOCK TABLES `MEspecialidad` WRITE;
/*!40000 ALTER TABLE `MEspecialidad` DISABLE KEYS */;
INSERT INTO `MEspecialidad` VALUES (1,' MANTENIMIENTO PREVENTIVO A ASCENSORES'),(2,'SUM'),(3,'BOMBAS DE AGUA Y SUMIDERO'),(35,'POZO A TIERRA'),(36,'LUCES DE EMERGENCIA'),(37,'SUB ESTACIONES'),(38,'MANTENIMIENTO PREVENTIVO A LOS EQUIPOS DE AIRE ACONDICIONADO'),(39,'MANTENIMIENTO PREVENTIVO A LA FACHADA LED - LUMINARIA'),(40,'MANTENIMIENTO PREVENTIVO DE GRUPOS ELECTRÓGENOS'),(41,'RECARGA DE PETRÓLEO'),(42,'SALES Y QUÍMICOS'),(43,'MANTENIMIENTO PREVENTIVO A EQUIPOSDE EXTRACCIÓN, INYECCIÓN Y PRESURIZACION'),(44,'CHARLAS Y SIMULACROS DE EVACUACIÓN'),(45,'RECARGA Y COMPRA DE EXTINTORES'),(46,'MANTENIMIENTO PREVENTIVO A PUERTAS CORTA FUEGO'),(47,'MANTENIMIENTO PREVENTIVO AL SISTEMA CONTRA INCENDIO'),(48,'MANTENIMIENTO PREVENTIVO AL SISTEMA DE SEGURIDAD Y CONTROL '),(49,'MANTENIMIENTO PREVENTIVO A LAS BARRERAS PEATONALES'),(50,'VIGILANCIA'),(51,'LIMPIEZA DE ALFOMBRAS Y CORTINAS'),(52,'ELIMINACIÓN DE RESIDUOS'),(53,'TRAMPAS DE GRASA'),(54,'LIMPIEZA DE FACHADA DE VIDRIO'),(55,'LIMPIEZA DE AREAS COMUNES'),(56,'PLANTA DE TRATAMIENTO DE AGUAS GRISES'),(57,'FUMIGACIÓN'),(58,'MANTENIMIENTO DE ÁREAS VERDES'),(59,'ARREGLOS FLORALES'),(60,'MANTENIMIENTO PREVENTIVO A MAMPARAS'),(61,'INSUMOS DE LIMPIEZA'),(62,'METAL MECÁNICA'),(63,'CERTIFICACIÓN A MURO CORTINA'),(64,'EMPRESAS VALIDADAS POR ADMINISTRACIÓN'),(65,'CERRAJERIA'),(66,'CARPINTERIA'),(67,'FERRETERÍA'),(68,'INSTALACIONES ELÉCTRICAS'),(69,'PINTURA'),(70,'EPP'),(71,'SUMINISTROS DE SEGURIDAD - DEFENSA CIVIL'),(72,'INTERCOMUNICADORES'),(73,'LAVADO DE AUTOS'),(74,'SANEAMIENTO AMBIENTAL');
/*!40000 ALTER TABLE `MEspecialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEstado`
--

DROP TABLE IF EXISTS `MEstado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEstado` (
  `ID_Estado` int(11) NOT NULL AUTO_INCREMENT,
  `Estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Estado`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEstado`
--

LOCK TABLES `MEstado` WRITE;
/*!40000 ALTER TABLE `MEstado` DISABLE KEYS */;
INSERT INTO `MEstado` VALUES (1,'Pendiente'),(2,'Preparado'),(3,'Entregado'),(4,'Cobrado'),(5,'Anulado'),(6,'Devuelto'),(7,'En Preparación');
/*!40000 ALTER TABLE `MEstado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEstadoContrato`
--

DROP TABLE IF EXISTS `MEstadoContrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEstadoContrato` (
  `ID_EstadoContrato` int(11) NOT NULL AUTO_INCREMENT,
  `EstadoContrato` varchar(45) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_EstadoContrato`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEstadoContrato`
--

LOCK TABLES `MEstadoContrato` WRITE;
/*!40000 ALTER TABLE `MEstadoContrato` DISABLE KEYS */;
INSERT INTO `MEstadoContrato` VALUES (1,'FINALIZADO','success'),(2,'EN PROCESO','warning'),(3,'PENDIENTE - ADENDA','dark'),(4,'CESADO','primary'),(5,'RECHAZADO','danger');
/*!40000 ALTER TABLE `MEstadoContrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MFamilia`
--

DROP TABLE IF EXISTS `MFamilia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MFamilia` (
  `ID_Familia` int(11) NOT NULL AUTO_INCREMENT,
  `Familia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Familia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MFamilia`
--

LOCK TABLES `MFamilia` WRITE;
/*!40000 ALTER TABLE `MFamilia` DISABLE KEYS */;
INSERT INTO `MFamilia` VALUES (2,'Segundo'),(3,'Primero'),(4,'Bebida');
/*!40000 ALTER TABLE `MFamilia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MInsumo`
--

DROP TABLE IF EXISTS `MInsumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MInsumo` (
  `ID_Insumo` int(11) NOT NULL AUTO_INCREMENT,
  `Insumo` varchar(45) DEFAULT NULL,
  `Costo` float DEFAULT NULL,
  `Stock` float DEFAULT NULL,
  `StockMinimo` float DEFAULT NULL,
  PRIMARY KEY (`ID_Insumo`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MInsumo`
--

LOCK TABLES `MInsumo` WRITE;
/*!40000 ALTER TABLE `MInsumo` DISABLE KEYS */;
INSERT INTO `MInsumo` VALUES (27,'tomate',23,121.5,20),(28,'lechuga',12,19.9,50),(29,'ají',45,61,12),(30,'pollo',51,49,10),(31,'carne',14,84.5,10);
/*!40000 ALTER TABLE `MInsumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MMenu`
--

DROP TABLE IF EXISTS `MMenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MMenu` (
  `ID_Menu` int(11) NOT NULL AUTO_INCREMENT,
  `Menu` varchar(100) DEFAULT NULL,
  `Precio` float DEFAULT NULL,
  `Costo` float DEFAULT NULL,
  `ID_Familia` int(11) DEFAULT NULL,
  `ImagenMenu` text,
  `ImagenThumbnail` text,
  `MenuHoy` int(11) DEFAULT NULL,
  `MenuHoy2` int(11) DEFAULT NULL,
  `MenuHoy3` int(11) DEFAULT NULL,
  `Delivery` int(11) DEFAULT NULL,
  `MenuDelivery1` int(11) DEFAULT NULL,
  `MenuDelivery2` int(11) DEFAULT NULL,
  `PrecioDelivery` float DEFAULT NULL,
  PRIMARY KEY (`ID_Menu`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MMenu`
--

LOCK TABLES `MMenu` WRITE;
/*!40000 ALTER TABLE `MMenu` DISABLE KEYS */;
INSERT INTO `MMenu` VALUES (10,'Pollo a la huachana con yuca',11,8,2,NULL,NULL,1,1,1,1,1,NULL,15),(11,'Cazuela de pollo',0,3,3,NULL,NULL,NULL,1,1,NULL,NULL,1,18.5),(12,'Sopa criolla',0,3,3,NULL,NULL,NULL,0,0,NULL,NULL,1,10),(13,'Tamalitos criollos',0,3,3,NULL,NULL,1,1,NULL,NULL,NULL,1,NULL),(14,'Crema de rocoto',0,3,3,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL),(15,'Ensalada Cesitar',0,3,3,NULL,NULL,1,1,NULL,NULL,NULL,NULL,20),(16,'Pollo a la Coca Cola con papas',11,5,2,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL),(17,'Tallarines rojos con pollo con crema huancaina',8,5,2,NULL,NULL,1,1,1,1,NULL,NULL,NULL),(18,'Osobuco al vino tinto con papas',11,8,2,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL),(19,'Carambola',0,1.5,4,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL),(20,'Free Tea',0,1.5,4,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL),(21,'Espagueti a la huancaina con lomo saltado',20,13.5,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Chaufa mixto',20,13.2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `MMenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MMesa`
--

DROP TABLE IF EXISTS `MMesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MMesa` (
  `ID_Mesa` int(11) NOT NULL AUTO_INCREMENT,
  `Mesa` varchar(100) DEFAULT NULL,
  `Estilo` varchar(500) DEFAULT NULL,
  `ID_Almacen` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Mesa`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MMesa`
--

LOCK TABLES `MMesa` WRITE;
/*!40000 ALTER TABLE `MMesa` DISABLE KEYS */;
INSERT INTO `MMesa` VALUES (2,'Mesa 2 local2','class=\'mesa\' style=\'position: relative; width: 104.891px; right: auto; height: 108.922px; bottom: auto; left: 144px; top: 138px;\'',2),(3,'Mesa 3 local1','class=\'mesa\' style=\'position: relative; width: 119.878px; right: auto; height: 108.906px; bottom: auto; left: 520px; top: -203px;\'',1),(5,'Mesa 1 local1',NULL,1),(6,'Mesa 3 local2',NULL,2),(7,'Mesa 1 local2',NULL,2),(9,'mesa 2 local1',NULL,1);
/*!40000 ALTER TABLE `MMesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MMoneda`
--

DROP TABLE IF EXISTS `MMoneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MMoneda` (
  `ID_Moneda` int(11) NOT NULL AUTO_INCREMENT,
  `Moneda` varchar(45) DEFAULT NULL,
  `Simbolo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Moneda`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MMoneda`
--

LOCK TABLES `MMoneda` WRITE;
/*!40000 ALTER TABLE `MMoneda` DISABLE KEYS */;
INSERT INTO `MMoneda` VALUES (1,'Soles','S/'),(2,'Dolares','$/'),(3,'Euros','€/');
/*!40000 ALTER TABLE `MMoneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MProveedor`
--

DROP TABLE IF EXISTS `MProveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MProveedor` (
  `ID_Proveedor` int(11) NOT NULL,
  `NombreRazonSocial` varchar(500) DEFAULT NULL,
  `DNIRUC` varchar(45) DEFAULT NULL,
  `PersonaJuridica` int(11) DEFAULT NULL,
  `Direccion` varchar(150) DEFAULT NULL,
  `Departamento` varchar(45) DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `Distrito` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  `Impuesto` int(1) DEFAULT NULL,
  `Homologado` int(1) DEFAULT NULL,
  `NombreComercial` varchar(100) DEFAULT NULL,
  `UsuarioAlta` varchar(100) DEFAULT NULL,
  `UsuarioMod` varchar(100) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaMod` datetime DEFAULT NULL,
  `PolizaResponsabilidadSocial` double DEFAULT NULL,
  `RCContractual` double DEFAULT NULL,
  `RCExtraContractual` double DEFAULT NULL,
  `RCPatronal` double DEFAULT NULL,
  `ID_MonedaPolizaResponsabilidadSocial` int(11) DEFAULT NULL,
  `ID_MonedaRCContractual` int(11) DEFAULT NULL,
  `ID_MonedaRCExtraContractual` int(11) DEFAULT NULL,
  `ID_MonedaRCPatronal` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MProveedor`
--

LOCK TABLES `MProveedor` WRITE;
/*!40000 ALTER TABLE `MProveedor` DISABLE KEYS */;
INSERT INTO `MProveedor` VALUES (19,'TRIANON ASCENSORES S.A.','20502306279',1,'AV. REP DE PANAMA NRO. 4125','LIMA','LIMA METROPOLITANA','SURQUILLO',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'ASCENSORES GS&F S.A.C.','20515579991 ',1,'CAL. RICARDO ANGULO NRO. 856 URB. CORPAC','LIMA','LIMA METROPOLITANA','SAN ISIDRO',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'INSHE ELEVADORES S.A.C.','20516908263',1,'MZA. A1 LOTE. 18 ASOC. DE VIV. INTIHUATANA','LIMA','LIMA METROPOLITANA','SANTA ANITA',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'ASCENSORES ANDINOS INGENIEROS S.A.','20108813742',1,'CAL. TNTE. ENRIQUE DE LUCCHI NRO. 80','LIMA','LIMA METROPOLITANA','BARRANCO',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'JTC AUDIOVISHION CENTER S.A.C.','20544651146',1,'JR. SAENZ PEÑA NRO. 243 URB. LOS LIBERTADORES','LIMA','LIMA METROPOLITANA','SAN MARTIN DE PORRES',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'VISUAL SYSTEMS INTERNATIONAL S.A.C.','20510603002',1,'AV. SAN LUIS NRO. 2560 DPTO. 402 INT. A','LIMA','LIMA METROPOLITANA','SAN BORJA',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'SERVICIOS DE PROCESOS GENERALES S.A.C.','20550639662',1,'CAL. LOS CHASQUIS NRO. 1172','LIMA','LIMA METROPOLITANA','SAN JUAN DE LURIGANCHO',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'ADITECSA S.R.L.','20502437021',1,'AV. LOS PROCERES NRO. 201 A.H. PLAYA RIMAC','LIMA','LIMA METROPOLITANA','CALLAO',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'TOTAL FACILITY MANAGEMENT S.A.C.','20601405661',1,'AV. DEL PINAR NRO. 180 INT. 01 URB. CHACARILLA DEL ESTANQUE','LIMA','LIMA METROPOLITANA','SANTIAGO DE SURCO',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'HERNEGO CONTRATISTA E.I.R.L.','20501522270',1,'CAL. ALBERTO SAMAME NRO. 231','LIMA','LIMA METROPOLITANA','SANTIAGO DE SURCO',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'DIAR INGENIEROS S.A.','20101161634',1,'AV. NVA TOMAS MARSANO NRO. 3335 URB. CHAMA','LIMA','LIMA METROPOLITANA','SANTIAGO DE SURCO',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'VENDTEC - JOCHEMAI S.A.C.','20601169682',1,'AV. LOS FAISANES NRO. 190 URB. LA CAMPIÑA','LIMA','LIMA METROPOLITANA','CHORRILLOS',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'ABEI SERVICES PERU S.A.C.','20552609078',1,'CAL. ALMIRANTE LORD NELSON NRO. 228','LIMA','LIMA METROPOLITANA','MIRAFLORES',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'TERMO SISTEMAS S.A.C.','20101620256',1,'CAL. LOS EBANISTAS NRO. 102 URB. EL ARTESANO','LIMA','LIMA METROPOLITANA','ATE',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'EBB PERU S.A.C.','20428860099',1,'CAL. GAMMA NRO. 253','LIMA','LIMA METROPOLITANA','CALLAO',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'COLD AIR SERVICE S.A.C.','20513157747',1,'JR. LAS BAYAS MZA. F LOTE. 41 URB. PORTADA DE CERES','LIMA','LIMA METROPOLITANA','SANTA ANITA',NULL,NULL,'Perú',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `MProveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MRubro`
--

DROP TABLE IF EXISTS `MRubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MRubro` (
  `ID_Rubro` int(11) NOT NULL AUTO_INCREMENT,
  `Rubro` varchar(200) DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  `Abreviatura` varchar(45) DEFAULT NULL,
  `UsuarioAlta` varchar(200) DEFAULT NULL,
  `UsuarioMod` varchar(200) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaMod` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_Rubro`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MRubro`
--

LOCK TABLES `MRubro` WRITE;
/*!40000 ALTER TABLE `MRubro` DISABLE KEYS */;
INSERT INTO `MRubro` VALUES (5,'Servicios',1,'Serv.','superadmin@superadmin','superadmin@superadmin','2019-04-03 03:04:15','2019-04-03 03:08:53'),(6,'Personal',2,'Pers.','superadmin@superadmin','superadmin@superadmin','2019-04-03 03:04:30','2019-04-03 03:09:08'),(7,'Mantenimiento',3,'Mant.','superadmin@superadmin','superadmin@superadmin','2019-04-03 03:04:46','2019-04-03 03:04:46'),(8,'Gastos',4,'Gast.','superadmin@superadmin','superadmin@superadmin','2019-04-03 03:05:22','2019-04-03 03:05:22');
/*!40000 ALTER TABLE `MRubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MSum`
--

DROP TABLE IF EXISTS `MSum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MSum` (
  `ID_Sum` int(11) NOT NULL AUTO_INCREMENT,
  `Sum` varchar(500) DEFAULT NULL,
  `ID_Edificio` int(11) DEFAULT NULL,
  `Imagen` text,
  `ImagenThumbnail` text,
  `UsuarioAlta` varchar(200) DEFAULT NULL,
  `UsuarioMod` varchar(200) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaMod` datetime DEFAULT NULL,
  `TiempoLimpieza` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Sum`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MSum`
--

LOCK TABLES `MSum` WRITE;
/*!40000 ALTER TABLE `MSum` DISABLE KEYS */;
INSERT INTO `MSum` VALUES (15,'SUM1',1,'assets/img/sum/descarga (1).jpg','assets/img/sum/thumbnails/descarga (1).jpg','superadmin@superadmin','superadmin@superadmin','2019-04-03 07:01:35','2019-04-03 07:01:35',1000);
/*!40000 ALTER TABLE `MSum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MTipoFacturacion`
--

DROP TABLE IF EXISTS `MTipoFacturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MTipoFacturacion` (
  `ID_TipoFacturacion` int(11) NOT NULL AUTO_INCREMENT,
  `TipoFacturacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_TipoFacturacion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MTipoFacturacion`
--

LOCK TABLES `MTipoFacturacion` WRITE;
/*!40000 ALTER TABLE `MTipoFacturacion` DISABLE KEYS */;
INSERT INTO `MTipoFacturacion` VALUES (2,'Bimensual'),(3,'Trimestral'),(4,'Mensual'),(5,'Cuatrimestral'),(6,'Semestral'),(7,'Anual');
/*!40000 ALTER TABLE `MTipoFacturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MTipoRelacionUIUsuario`
--

DROP TABLE IF EXISTS `MTipoRelacionUIUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MTipoRelacionUIUsuario` (
  `ID_TipoRelacion` int(11) NOT NULL AUTO_INCREMENT,
  `TipoRelacion` varchar(45) DEFAULT NULL,
  `Icono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_TipoRelacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MTipoRelacionUIUsuario`
--

LOCK TABLES `MTipoRelacionUIUsuario` WRITE;
/*!40000 ALTER TABLE `MTipoRelacionUIUsuario` DISABLE KEYS */;
INSERT INTO `MTipoRelacionUIUsuario` VALUES (1,'Propietario','fa fa-key text-info'),(2,'Inquilino','fa fa-user text-success');
/*!40000 ALTER TABLE `MTipoRelacionUIUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MTipoUnidadInmobiliaria`
--

DROP TABLE IF EXISTS `MTipoUnidadInmobiliaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MTipoUnidadInmobiliaria` (
  `ID_TipoUnidadInmobiliaria` int(11) NOT NULL AUTO_INCREMENT,
  `TipoUnidadInmobiliaria` varchar(45) DEFAULT NULL,
  `Imagen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_TipoUnidadInmobiliaria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MTipoUnidadInmobiliaria`
--

LOCK TABLES `MTipoUnidadInmobiliaria` WRITE;
/*!40000 ALTER TABLE `MTipoUnidadInmobiliaria` DISABLE KEYS */;
INSERT INTO `MTipoUnidadInmobiliaria` VALUES (7,'Dpto',NULL),(8,'Depósito',NULL),(9,'Estacionamiento',NULL);
/*!40000 ALTER TABLE `MTipoUnidadInmobiliaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MUnidadInmobiliaria`
--

DROP TABLE IF EXISTS `MUnidadInmobiliaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MUnidadInmobiliaria` (
  `ID_UnidadInmobiliaria` int(11) NOT NULL AUTO_INCREMENT,
  `ID_TipoUnidadInmobiliaria` int(11) DEFAULT NULL,
  `ID_Edificio` int(11) DEFAULT NULL,
  `Torre` varchar(45) DEFAULT NULL,
  `Nro` varchar(45) DEFAULT NULL,
  `Area` double DEFAULT NULL,
  `UsuarioAlta` varchar(100) DEFAULT NULL,
  `UsuarioMod` varchar(100) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaMod` datetime DEFAULT NULL,
  `CorreoPropietario` varchar(200) DEFAULT NULL,
  `CorreoInquilino` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_UnidadInmobiliaria`),
  KEY `FK_TipoUInmobiliaria_idx` (`ID_TipoUnidadInmobiliaria`),
  KEY `FK_ID_Inmueble_idx` (`ID_Edificio`)
) ENGINE=InnoDB AUTO_INCREMENT=24926 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MUnidadInmobiliaria`
--

LOCK TABLES `MUnidadInmobiliaria` WRITE;
/*!40000 ALTER TABLE `MUnidadInmobiliaria` DISABLE KEYS */;
INSERT INTO `MUnidadInmobiliaria` VALUES (24911,9,7,'12','101 ME',12,'0','admin@admin','2019-03-19 06:48:44','2019-03-19 09:11:46',NULL,NULL),(24913,9,2,'32','22',11111,'admin@admin','admin@admin','2019-03-19 08:59:35','2019-03-19 04:20:37',NULL,NULL),(24915,8,7,'k8','8',8888,'admin@admin','admin@admin','2019-03-19 09:46:36','2019-03-19 09:46:36',NULL,NULL),(24918,7,1,NULL,'1001',100,'superadmin@superadmin','superadmin@superadmin','2019-04-02 03:55:11','2019-04-02 04:08:03','iker@correo.com',''),(24919,7,1,NULL,'1002',100,'superadmin@superadmin','superadmin@superadmin','2019-04-02 03:55:26','2019-04-02 04:14:26','Juan@correo.com',''),(24920,7,1,NULL,'1003',100,'superadmin@superadmin','superadmin@superadmin','2019-04-02 03:55:39','2019-04-02 04:14:37','Daniel@correo.com',''),(24921,7,1,NULL,'1004',100,'superadmin@superadmin','superadmin@superadmin','2019-04-02 03:55:49','2019-04-02 04:14:47','Gerard@correo.com',''),(24922,7,1,NULL,'2001',100,'superadmin@superadmin','superadmin@superadmin','2019-04-02 03:56:23','2019-04-02 04:15:00','Asier@correo.com',''),(24923,7,1,NULL,'2002',100,'superadmin@superadmin','superadmin@superadmin','2019-04-02 03:56:38','2019-04-02 04:15:19','Ainhoa@correo.com',''),(24924,7,1,NULL,'2003',100,'superadmin@superadmin','superadmin@superadmin','2019-04-02 03:56:48','2019-04-02 04:15:29','Iris@correo.com',''),(24925,7,1,NULL,'2004',100,'superadmin@superadmin','superadmin@superadmin','2019-04-02 03:57:01','2019-04-02 04:15:40','Claudia @correo.com','');
/*!40000 ALTER TABLE `MUnidadInmobiliaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MUsuario`
--

DROP TABLE IF EXISTS `MUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MUsuario` (
  `Correo` varchar(200) NOT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `ApellidoPaterno` varchar(200) DEFAULT NULL,
  `ApellidoMaterno` varchar(200) DEFAULT NULL,
  `ID_Perfil` int(11) DEFAULT NULL,
  `ID_TipoDocumento` int(11) DEFAULT NULL,
  `Documento` varchar(200) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Clave` varchar(45) DEFAULT NULL,
  `Tema` char(1) DEFAULT NULL,
  `Imagen` text,
  `ImagenThumbnail` text,
  `Baja` int(11) DEFAULT NULL,
  `UsuarioAlta` varchar(200) DEFAULT NULL,
  `UsuarioMod` varchar(200) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaMod` datetime DEFAULT NULL,
  `ID_Almacen` int(11) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `Departamento` varchar(200) DEFAULT NULL,
  `Distrito` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Correo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MUsuario`
--

LOCK TABLES `MUsuario` WRITE;
/*!40000 ALTER TABLE `MUsuario` DISABLE KEYS */;
INSERT INTO `MUsuario` VALUES ('superadmin@superadmin','SUPER ADMIN','ADMIN','',1,1,'11111111','333333','12345','a','assets/img/usuario/avatar2.png','assets/img/usuario/thumbnails/avatar2.png',NULL,NULL,'superadmin@superadmin',NULL,'2019-05-03 13:49:27',3,NULL,NULL,NULL),('mesero@local1.com','María -local1','Segura','Castillo',3,1,'70448754','974514236','12345','a','assets/img/usuario/_tips_para_lograr_un_perfil_perfecto_en_linkedin_4822_980x560.jpg','assets/img/usuario/thumbnails/_tips_para_lograr_un_perfil_perfecto_en_linkedin_4822_980x560.jpg',NULL,'superadmin@superadmin','superadmin@superadmin','2019-04-29 16:56:18','2019-05-13 12:19:31',1,'','LIMA',''),('cocinero@local1.com','Carlos - local1','Velazquez','Jiménez',4,1,'74669825','954368742','12345','a','assets/img/usuario/fotoperfil1.jpg','assets/img/usuario/thumbnails/fotoperfil1.jpg',NULL,'superadmin@superadmin','superadmin@superadmin','2019-04-29 16:57:33','2019-05-13 12:20:17',1,'','LIMA',''),('ana@correo.com','Ana','Moreno','Vasquez',5,1,'75882415','965214783','12345','a','assets/img/usuario/perfil-resilencia.jpg','assets/img/usuario/thumbnails/perfil-resilencia.jpg',NULL,'superadmin@superadmin','superadmin@superadmin','2019-04-29 16:58:57','2019-04-29 17:01:36',0,NULL,NULL,NULL),('mesero@local2.com','Pedro local2','paz|','franchini',3,1,'23123','34234','12345','a','assets/img/usuario/FC4_C215_Elephant_Wallpaper_1024x768.jpg','assets/img/usuario/thumbnails/FC4_C215_Elephant_Wallpaper_1024x768.jpg',NULL,'superadmin@superadmin','superadmin@superadmin','2019-05-01 23:39:41','2019-05-13 12:19:55',2,'','LIMA',''),('andy@gmail.com','Andy','asd','asd',5,1,'12312','123123','12345','a',NULL,NULL,NULL,'superadmin@superadmin','superadmin@superadmin','2019-05-07 16:50:23','2019-05-07 16:50:23',1,'av g','LIMA','LURIN'),('test@test','test','Test Paterno','Test Materno',5,1,'78945612','1234','12345','a',NULL,NULL,NULL,'superadmin@superadmin','superadmin@superadmin','2019-05-07 16:48:55','2019-05-07 16:48:55',1,'av x',NULL,'MAGDALENA DEL MAR'),('a@a','a','a','a',5,1,'70339409','123','12345','a',NULL,NULL,NULL,'superadmin@superadmin','superadmin@superadmin','2019-05-12 22:06:40','2019-05-12 22:06:40',1,'av f','LIMA','MAGDALENA DEL MAR'),('a2@a','as','as','asd',5,1,'213123','1231244','12345','a',NULL,NULL,NULL,'superadmin@superadmin','superadmin@superadmin','2019-05-12 22:11:16','2019-05-12 22:11:16',1,'av t','LIMA','COMAS'),('cocinero@local2.com','luis - local2','guerra','vazques',4,1,'1231231','','12345','a',NULL,NULL,NULL,'superadmin@superadmin','superadmin@superadmin','2019-05-13 12:20:58','2019-05-13 12:20:58',2,'','LIMA','');
/*!40000 ALTER TABLE `MUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAlmacenInsumo`
--

DROP TABLE IF EXISTS `TAlmacenInsumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TAlmacenInsumo` (
  `ID_Almacen` int(11) NOT NULL,
  `ID_Insumo` int(11) NOT NULL,
  `Stock` float DEFAULT NULL,
  PRIMARY KEY (`ID_Almacen`,`ID_Insumo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAlmacenInsumo`
--

LOCK TABLES `TAlmacenInsumo` WRITE;
/*!40000 ALTER TABLE `TAlmacenInsumo` DISABLE KEYS */;
INSERT INTO `TAlmacenInsumo` VALUES (1,27,19.9),(1,28,0.9),(1,29,44),(1,30,13),(1,31,13),(2,27,61.6),(2,28,5),(2,29,14),(2,30,22.1),(2,31,58),(3,27,40),(3,28,14),(3,29,3),(3,30,13.9),(3,31,13.5);
/*!40000 ALTER TABLE `TAlmacenInsumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TCDocumento`
--

DROP TABLE IF EXISTS `TCDocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TCDocumento` (
  `Documento` int(11) NOT NULL,
  `Procesado` int(11) NOT NULL DEFAULT '0',
  `Serie` varchar(3) COLLATE latin1_spanish_ci NOT NULL,
  `Numero` bigint(20) NOT NULL,
  `Referencia` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `ID_ClienteProveedor` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Fecha2` date DEFAULT NULL,
  `ID_FormaDePago` int(11) NOT NULL,
  `Observaciones` varchar(2000) COLLATE latin1_spanish_ci NOT NULL,
  `NotaPie` varchar(2000) COLLATE latin1_spanish_ci NOT NULL,
  `Aprobado` int(11) NOT NULL,
  `Anulado` int(11) NOT NULL DEFAULT '0',
  `Impreso` int(11) NOT NULL DEFAULT '0',
  `Enviado` int(11) NOT NULL DEFAULT '0',
  `Pagado` int(11) NOT NULL DEFAULT '0',
  `MotivoTraslado` varchar(13) COLLATE latin1_spanish_ci NOT NULL,
  `ID_Trasportista` int(11) NOT NULL,
  `MarcaPlaca` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `LicenciaConducir` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Cerrado` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TCDocumento`
--

LOCK TABLES `TCDocumento` WRITE;
/*!40000 ALTER TABLE `TCDocumento` DISABLE KEYS */;
INSERT INTO `TCDocumento` VALUES (3,0,'NAC',1,'',1,'2018-11-01',NULL,0,'','',0,0,0,0,0,'',0,'','',0),(0,0,'NAC',1,'',1,'2018-11-01','0000-00-00',1,'  ','  ',0,0,0,0,0,'0000000000000',0,'','',0),(0,0,'NAC',2,'',1,'2018-11-01','0000-00-00',1,'  ','  ',0,0,0,0,0,'0000000000000',0,'','',0),(0,0,'NAC',3,'',1,'2018-11-01',NULL,0,'','',0,0,0,0,0,'',0,'','',0),(2,0,'NAC',1,'0015',2,'2018-11-14','0000-00-00',1,'    observaciones','    nota de pie',0,0,0,0,0,'0000000000000',0,'','',0),(2,0,'NAC',2,'1515',1,'2018-11-14','0000-00-00',3,'    entregar antes de las 4 pm','se hara descuento en el proximo envio',0,0,0,0,0,'0000000000000',0,'','',0),(2,0,'NAC',3,'',2,'2018-11-14','0000-00-00',2,'  ','  ',0,0,0,0,0,'0000000000000',0,'','',0),(2,0,'NAC',4,'',1,'2018-11-14','0000-00-00',1,'  ','  ',0,0,0,0,0,'0000000000000',0,'','',0),(9,0,'NAC',1,'',1,'2019-03-29',NULL,0,'','',0,0,0,0,0,'',0,'','',0),(2,0,'NAC',5,'',1,'2019-03-29',NULL,0,'','',0,0,0,0,0,'',0,'','',0),(2,0,'NAC',6,'',1,'2019-03-29',NULL,0,'','',0,0,0,0,0,'',0,'','',0),(9,0,'NAC',2,'',1,'2019-03-30',NULL,0,'','',0,0,0,0,0,'',0,'','',0);
/*!40000 ALTER TABLE `TCDocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TCPedido`
--

DROP TABLE IF EXISTS `TCPedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TCPedido` (
  `ID_Pedido` int(11) NOT NULL AUTO_INCREMENT,
  `FechaHora` datetime DEFAULT NULL,
  `ID_Mesa` int(11) DEFAULT NULL,
  `ID_Estado` int(11) DEFAULT NULL,
  `CodUsuario` varchar(100) DEFAULT NULL,
  `Observacion` varchar(200) DEFAULT NULL,
  `ID_Almacen` int(11) DEFAULT NULL,
  `NumeroSerie` varchar(100) DEFAULT NULL,
  `TipoFactura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TCPedido`
--

LOCK TABLES `TCPedido` WRITE;
/*!40000 ALTER TABLE `TCPedido` DISABLE KEYS */;
INSERT INTO `TCPedido` VALUES (68,'2019-05-13 13:31:26',5,2,'mesero@local1.com','',1,NULL,NULL),(69,'2019-05-13 13:34:04',9,2,'mesero@local1.com','',1,NULL,NULL),(70,'2019-05-14 13:05:41',5,1,'mesero@local1.com','',1,NULL,NULL),(71,'2019-05-14 13:34:47',3,2,'mesero@local1.com','',1,NULL,NULL),(73,'2019-05-14 15:10:34',6,7,'mesero@local2.com','',2,NULL,NULL),(74,'2019-05-14 16:07:20',2,7,'mesero@local2.com','',2,NULL,NULL),(75,'2019-05-14 16:10:10',5,7,'mesero@local1.com','',1,NULL,NULL),(76,'2019-05-14 17:03:32',3,1,'mesero@local1.com','',1,NULL,NULL),(77,'2019-05-15 11:24:49',5,2,'mesero@local1.com','',1,NULL,NULL),(78,'2019-05-15 11:40:38',9,2,'mesero@local1.com','',1,NULL,NULL),(79,'2019-05-15 12:42:10',3,7,'mesero@local1.com','',1,NULL,NULL),(80,'2019-05-15 12:44:21',5,2,'mesero@local1.com','',1,NULL,NULL);
/*!40000 ALTER TABLE `TCPedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TCompra`
--

DROP TABLE IF EXISTS `TCompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TCompra` (
  `ID_Compra` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Insumo` int(11) DEFAULT NULL,
  `ID_Almacen` int(11) DEFAULT NULL,
  `Cantidad` decimal(10,1) DEFAULT NULL,
  `CodUsuario` varchar(100) DEFAULT NULL,
  `FechaHora` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_Compra`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TCompra`
--

LOCK TABLES `TCompra` WRITE;
/*!40000 ALTER TABLE `TCompra` DISABLE KEYS */;
INSERT INTO `TCompra` VALUES (48,30,3,5.0,'superadmin@superadmin','2019-05-03 16:24:32'),(47,28,3,1.0,'superadmin@superadmin','2019-05-03 16:23:57'),(46,31,3,15.0,'superadmin@superadmin','2019-05-03 16:23:39'),(45,29,3,3.0,'superadmin@superadmin','2019-05-03 16:23:29'),(44,27,3,18.0,'superadmin@superadmin','2019-05-03 16:22:59'),(43,27,3,71.0,'superadmin@superadmin','2019-05-03 16:22:50'),(42,29,2,14.0,'superadmin@superadmin','2019-05-03 16:22:09'),(41,27,2,14.0,'superadmin@superadmin','2019-05-03 16:21:58'),(40,31,2,62.0,'superadmin@superadmin','2019-05-03 16:21:47'),(39,28,1,19.0,'superadmin@superadmin','2019-05-03 16:21:31'),(38,30,2,10.0,'superadmin@superadmin','2019-05-03 16:21:18'),(37,30,3,40.0,'superadmin@superadmin','2019-05-03 16:21:09'),(49,29,1,45.0,'superadmin@superadmin','2019-05-14 16:16:54'),(50,27,1,20.0,'superadmin@superadmin','2019-05-15 12:58:58'),(51,31,3,10.0,'superadmin@superadmin','2019-05-15 15:46:39');
/*!40000 ALTER TABLE `TCompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TConfiguracion`
--

DROP TABLE IF EXISTS `TConfiguracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TConfiguracion` (
  `ID_Empresa` int(11) NOT NULL AUTO_INCREMENT,
  `Empresa` varchar(200) NOT NULL,
  `Ruc` varchar(200) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Telefono` varchar(200) NOT NULL,
  `PrecioMenu` float NOT NULL,
  `Imagen` text,
  `PrecioDelivery1` float NOT NULL,
  `PrecioDelivery2` float NOT NULL,
  `SerieFactura` varchar(100) DEFAULT NULL,
  `Igv` float DEFAULT NULL,
  PRIMARY KEY (`ID_Empresa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TConfiguracion`
--

LOCK TABLES `TConfiguracion` WRITE;
/*!40000 ALTER TABLE `TConfiguracion` DISABLE KEYS */;
INSERT INTO `TConfiguracion` VALUES (1,'EcoLunch2','11212121321212','Avenida Los Lirios, Av Pedro Miotta con, San Juan de Miraflores 15801','ecolunch@ecolunch.com','453145',13,NULL,14,16,'F00',18);
/*!40000 ALTER TABLE `TConfiguracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TContrato`
--

DROP TABLE IF EXISTS `TContrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TContrato` (
  `ID_Contrato` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Inmueble` int(11) DEFAULT NULL,
  `ID_Especialidad` int(11) DEFAULT NULL,
  `ID_Moneda` int(11) DEFAULT NULL,
  `ID_TipoFacturacion1` int(11) DEFAULT NULL,
  `ID_TipoFacturacion2` int(11) DEFAULT NULL,
  `ID_EstadoContrato` int(11) DEFAULT NULL,
  `ID_Proveedor` int(11) DEFAULT NULL,
  `ID_Responsable` varchar(100) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `FechaAuxInicio` date DEFAULT NULL,
  `FechaAuxFin` date DEFAULT NULL,
  `Propietario` int(11) DEFAULT NULL,
  `Factura` int(11) DEFAULT NULL,
  `RenovacionAut` int(11) DEFAULT NULL,
  `Costo` double DEFAULT NULL,
  `CostoMP` double DEFAULT NULL,
  `Observaciones` varchar(500) DEFAULT NULL,
  `Cuota` int(11) DEFAULT NULL,
  `Adenda` int(11) DEFAULT NULL,
  `ID_SSMA` int(11) DEFAULT NULL,
  `UsuarioAlta` varchar(100) DEFAULT NULL,
  `UsuarioMod` varchar(100) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaMod` datetime DEFAULT NULL,
  `MotivoRechazo` varchar(500) DEFAULT NULL,
  `TecnicoInHouse` int(11) DEFAULT NULL,
  `ID_MonedaTI` int(11) DEFAULT NULL,
  `CostoTI` double DEFAULT NULL,
  PRIMARY KEY (`ID_Contrato`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TContrato`
--

LOCK TABLES `TContrato` WRITE;
/*!40000 ALTER TABLE `TContrato` DISABLE KEYS */;
INSERT INTO `TContrato` VALUES (1,1,3,2,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,1,1,2,2,3,19,'0','2019-01-01','2019-12-31','2019-04-01',NULL,1,1,0,1000,NULL,'',NULL,NULL,NULL,'a35bacc0187079284f469d4523fccfc3a156827597a7bf1b2f83c2fea006eb55a7d2dbb2cab3316181b4a545c4f2c7c20cf5','a35bacc0187079284f469d4523fccfc3a156827597a7bf1b2f83c2fea006eb55a7d2dbb2cab3316181b4a545c4f2c7c20cf5','2019-04-02 23:27:29','2019-04-02 23:27:29',NULL,NULL,1,1000),(3,1,5,1,3,3,5,20,'0','2019-01-01','2019-12-31','2019-04-03',NULL,NULL,NULL,0,150,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:25:33','2019-04-03 06:25:33',NULL,NULL,1,0),(4,1,35,0,3,4,2,35,'0','2019-04-01','2019-10-31','0000-00-00',NULL,1,1,0,0,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:26:16','2019-04-03 06:26:16',NULL,NULL,0,0),(5,1,45,1,2,3,1,29,'0','2019-01-01','2109-12-31','0000-00-00',NULL,2,2,0,15,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:30:36','2019-04-03 06:30:36',NULL,1,0,0),(6,1,3,1,4,4,5,24,'Asier@correo.com','2019-01-01','2019-12-31','0000-00-00',NULL,2,2,0,150,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:35:47','2019-04-03 06:35:47',NULL,1,NULL,NULL),(7,1,4,2,NULL,NULL,1,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,1,1,1,2,2,2,27,'0','2019-01-01','2019-12-31','2019-04-01',NULL,1,1,0,1000,NULL,'',NULL,NULL,NULL,'a35bacc0187079284f469d4523fccfc3a156827597a7bf1b2f83c2fea006eb55a7d2dbb2cab3316181b4a545c4f2c7c20cf5','a35bacc0187079284f469d4523fccfc3a156827597a7bf1b2f83c2fea006eb55a7d2dbb2cab3316181b4a545c4f2c7c20cf5','2019-04-02 23:27:29','2019-04-02 23:27:29',NULL,NULL,1,1000),(9,1,5,1,3,3,5,34,'0','2019-01-01','2019-12-31','2019-04-03',NULL,NULL,NULL,0,150,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:25:33','2019-04-03 06:25:33',NULL,NULL,1,0),(10,1,35,0,3,4,4,32,'0','2019-04-01','2019-10-31','0000-00-00',NULL,1,1,0,0,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:26:16','2019-04-03 06:26:16',NULL,NULL,0,0),(11,1,45,1,2,3,2,29,'0','2019-01-01','2109-12-31','0000-00-00',NULL,2,2,0,15,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:30:36','2019-04-03 06:30:36',NULL,1,0,0),(12,1,3,1,4,4,2,24,'Asier@correo.com','2019-01-01','2019-12-31','0000-00-00',NULL,2,2,0,150,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:35:47','2019-04-03 06:35:47',NULL,1,NULL,NULL),(13,1,4,2,NULL,NULL,1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,1,6,1,2,2,5,19,'0','2019-01-01','2019-12-31','2019-04-01',NULL,1,1,0,1000,NULL,'',NULL,NULL,NULL,'a35bacc0187079284f469d4523fccfc3a156827597a7bf1b2f83c2fea006eb55a7d2dbb2cab3316181b4a545c4f2c7c20cf5','a35bacc0187079284f469d4523fccfc3a156827597a7bf1b2f83c2fea006eb55a7d2dbb2cab3316181b4a545c4f2c7c20cf5','2019-04-02 23:27:29','2019-04-02 23:27:29',NULL,NULL,1,1000),(15,1,7,1,3,3,2,31,'0','2019-01-01','2019-12-31','2019-04-03',NULL,NULL,NULL,0,150,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:25:33','2019-04-03 06:25:33',NULL,NULL,1,0),(16,1,35,0,3,4,4,30,'0','2019-04-01','2019-10-31','0000-00-00',NULL,1,1,0,0,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:26:16','2019-04-03 06:26:16',NULL,NULL,0,0),(17,1,45,1,2,3,5,29,'0','2019-01-01','2109-12-31','0000-00-00',NULL,2,2,0,15,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:30:36','2019-04-03 06:30:36',NULL,1,0,0),(18,1,3,1,4,4,2,24,'Asier@correo.com','2019-01-01','2019-12-31','0000-00-00',NULL,2,2,0,150,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:35:47','2019-04-03 06:35:47',NULL,1,NULL,NULL),(19,1,5,2,NULL,NULL,4,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,1,1,1,2,2,2,19,'0','2019-01-01','2019-12-31','2019-04-01',NULL,1,1,0,1000,NULL,'',NULL,NULL,NULL,'a35bacc0187079284f469d4523fccfc3a156827597a7bf1b2f83c2fea006eb55a7d2dbb2cab3316181b4a545c4f2c7c20cf5','a35bacc0187079284f469d4523fccfc3a156827597a7bf1b2f83c2fea006eb55a7d2dbb2cab3316181b4a545c4f2c7c20cf5','2019-04-02 23:27:29','2019-04-02 23:27:29',NULL,NULL,1,1000),(21,1,74,1,3,3,3,29,'0','2019-01-01','2019-12-31','2019-04-03',NULL,NULL,NULL,0,150,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:25:33','2019-04-03 06:25:33',NULL,NULL,1,0),(22,1,73,0,3,4,3,25,'0','2019-04-01','2019-10-31','0000-00-00',NULL,1,1,0,0,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:26:16','2019-04-03 06:26:16',NULL,NULL,0,0),(23,1,72,1,2,3,2,28,'0','2019-01-01','2109-12-31','0000-00-00',NULL,2,2,0,15,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:30:36','2019-04-03 06:30:36',NULL,1,0,0),(24,1,71,1,4,4,3,24,'Asier@correo.com','2019-01-01','2019-12-31','0000-00-00',NULL,2,2,0,150,NULL,'',NULL,NULL,NULL,'a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','a6cba7bbb55b175b9ebcf6f9ffca0c4ec743d24d360bf59fb1e4fb844262f24be060ec00ca71677afb45612ea75657a5f579','2019-04-03 06:35:47','2019-04-03 06:35:47',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `TContrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TEdificioSubRubro`
--

DROP TABLE IF EXISTS `TEdificioSubRubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEdificioSubRubro` (
  `ID_Edificio` int(11) NOT NULL,
  `ID_SubRubro` int(11) NOT NULL,
  PRIMARY KEY (`ID_Edificio`,`ID_SubRubro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEdificioSubRubro`
--

LOCK TABLES `TEdificioSubRubro` WRITE;
/*!40000 ALTER TABLE `TEdificioSubRubro` DISABLE KEYS */;
INSERT INTO `TEdificioSubRubro` VALUES (1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18);
/*!40000 ALTER TABLE `TEdificioSubRubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TLDocumento`
--

DROP TABLE IF EXISTS `TLDocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TLDocumento` (
  `Documento` int(1) NOT NULL,
  `Procesado` int(1) NOT NULL,
  `Serie` varchar(3) COLLATE latin1_spanish_ci NOT NULL,
  `Numero` bigint(20) NOT NULL,
  `Linea` int(11) NOT NULL,
  `Codigo` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `Lote` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Unidades` double NOT NULL,
  `ID_Almacen` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Dto` float NOT NULL,
  `Impuesto` float NOT NULL,
  `Descripcion` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `PrecioUnitario` float NOT NULL,
  `Observacion` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `ID_Ubicacion` int(11) DEFAULT NULL,
  `DocOrigen` int(11) DEFAULT NULL,
  `SerieOrigen` varchar(3) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NroOrigen` bigint(20) DEFAULT NULL,
  `LineaOrigen` int(11) DEFAULT NULL,
  `Resta` int(11) DEFAULT NULL,
  `Cerrado` int(1) DEFAULT NULL,
  `Anulado` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TLDocumento`
--

LOCK TABLES `TLDocumento` WRITE;
/*!40000 ALTER TABLE `TLDocumento` DISABLE KEYS */;
INSERT INTO `TLDocumento` VALUES (9,0,'NAC',1,1,'009','(Ninguno)',1500,1,'0000-00-00',0,0,'Rocoto entero congelado',0,'',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,'NAC',1,1,'001','(Ninguno)',100,0,'0000-00-00',10,18,'Brocoli Pre Cocido congelado trozos',150,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,'NAC',1,2,'002 ','(Ninguno)',150,1,'2019-04-18',0,18,'Coliflor pre-cocido congelado en trozos',123,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,'NAC',2,1,'003','(Ninguno)',5236,0,'2019-04-22',5,18,'Arverjas pre cocido congelado',5,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,'NAC',2,2,'008','(Ninguno)',1000,0,'0000-00-00',4,18,'Aji entero congelado',15,'paquetes de 20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `TLDocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TLPedido`
--

DROP TABLE IF EXISTS `TLPedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TLPedido` (
  `ID_Pedido` int(11) DEFAULT NULL,
  `ID_LPedido` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Menu` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `ID_Estado` int(11) DEFAULT NULL,
  `Observacion` varchar(200) DEFAULT NULL,
  `ID_Almacen` int(11) DEFAULT NULL,
  `EsMenu` int(11) DEFAULT NULL,
  `EsMenu2` int(11) DEFAULT NULL,
  `EsMenu3` int(11) DEFAULT NULL,
  `EsMenuDelivery1` int(11) DEFAULT NULL,
  `EsMenuDelivery2` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_LPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TLPedido`
--

LOCK TABLES `TLPedido` WRITE;
/*!40000 ALTER TABLE `TLPedido` DISABLE KEYS */;
INSERT INTO `TLPedido` VALUES (68,235,14,1,2,'',1,1,1,0,NULL,NULL),(68,236,16,1,2,'',1,1,1,0,NULL,NULL),(68,237,20,1,2,'',1,1,1,1,NULL,NULL),(68,238,13,1,2,'',1,1,1,0,NULL,NULL),(68,239,10,1,2,'',1,1,1,1,NULL,NULL),(68,240,19,1,2,'',1,1,1,1,NULL,NULL),(68,241,22,1,2,'',1,0,0,0,NULL,NULL),(68,242,21,1,2,'',2,0,0,0,NULL,NULL),(69,243,21,1,2,'',1,0,0,0,NULL,NULL),(69,244,15,1,2,'',1,1,1,0,NULL,NULL),(69,245,10,1,2,'',1,1,1,1,NULL,NULL),(69,246,19,1,2,'',1,1,1,1,NULL,NULL),(71,250,14,1,2,'',1,1,1,0,NULL,NULL),(71,251,18,1,2,'',1,1,1,1,NULL,NULL),(71,252,19,1,2,'',1,1,1,1,NULL,NULL),(71,253,21,1,2,'',1,0,0,0,NULL,NULL),(73,254,15,1,2,'',2,1,1,0,NULL,NULL),(73,255,16,1,2,'',2,1,1,0,NULL,NULL),(73,256,20,1,1,'',2,1,1,1,NULL,NULL),(74,257,13,1,1,'',2,1,1,0,NULL,NULL),(74,258,16,1,2,'',2,1,1,0,NULL,NULL),(74,259,19,1,1,'',2,1,1,1,NULL,NULL),(75,260,13,1,1,'',1,1,1,0,NULL,NULL),(75,261,16,1,2,'',1,1,1,0,NULL,NULL),(75,262,19,1,1,'',1,1,1,1,NULL,NULL),(76,263,21,1,1,'',2,0,0,0,NULL,NULL),(77,264,14,1,2,'',1,1,1,0,NULL,NULL),(77,265,16,1,2,'',1,1,1,0,NULL,NULL),(77,266,20,1,2,'',1,1,1,1,NULL,NULL),(78,267,15,1,2,'',1,1,1,0,NULL,NULL),(78,268,18,1,2,'',1,1,1,1,NULL,NULL),(78,269,19,1,2,'',1,1,1,1,NULL,NULL),(78,270,21,1,2,'',1,0,0,0,NULL,NULL),(79,271,14,1,2,'',1,1,1,0,NULL,NULL),(79,272,10,1,1,'',1,1,1,1,NULL,NULL),(79,273,19,1,1,'',1,1,1,1,NULL,NULL),(79,274,22,1,1,'',1,0,0,0,NULL,NULL),(80,275,21,1,2,'',1,0,0,0,NULL,NULL),(79,276,21,1,2,'',3,0,0,0,NULL,NULL),(79,277,21,1,2,'',3,0,0,0,NULL,NULL),(79,278,21,1,2,'',3,0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `TLPedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TLecturaAgua`
--

DROP TABLE IF EXISTS `TLecturaAgua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TLecturaAgua` (
  `ID_LecturaAgua` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` varchar(45) DEFAULT NULL,
  `ID_Edificio` varchar(45) DEFAULT NULL,
  `Lectura` varchar(45) DEFAULT NULL,
  `UsuarioAlta` varchar(200) DEFAULT NULL,
  `UsuarioMod` varchar(200) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaMod` datetime DEFAULT NULL,
  `ID_UnidadInmobiliaria` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_LecturaAgua`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TLecturaAgua`
--

LOCK TABLES `TLecturaAgua` WRITE;
/*!40000 ALTER TABLE `TLecturaAgua` DISABLE KEYS */;
INSERT INTO `TLecturaAgua` VALUES (1,NULL,NULL,'3333','superadmin@superadmin','f707ef2da219390437a00989458a84e4c1bbc23ea72b728c01b63542de4c3f19530460332aae519b7e38b4eee8644177e8f38609d86b6f35a1e4969d6d866885hhpszeHysOz16DGSTAGRpqcNdVNmDWpEpfX3as4GflzYnMiqufxBRYX25pApXRa6','2019-03-26 04:42:47','2019-03-26 04:42:47',24916),(2,NULL,NULL,'2','0','867fe9cc4e52e3d65a26043c1f4729654f10f35efcf012f8efd348773a3c1fce230239985e97776f088afd4eb4db7f87df7f02a06ce20946284af26106b82101Abkdw1PzdPNt6nPA5zTcL19LL9iCu80iTX5kdmhjroZv2rP7WvTFmE4m~yBpuJ06','2019-04-02 07:15:47','2019-04-02 07:15:47',24918);
/*!40000 ALTER TABLE `TLecturaAgua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TLog`
--

DROP TABLE IF EXISTS `TLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TLog` (
  `ID_Log` int(11) NOT NULL AUTO_INCREMENT,
  `Log` varchar(500) DEFAULT NULL,
  `UsuarioAlta` varchar(200) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_Log`)
) ENGINE=MyISAM AUTO_INCREMENT=1035 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TLog`
--

LOCK TABLES `TLog` WRITE;
/*!40000 ALTER TABLE `TLog` DISABLE KEYS */;
INSERT INTO `TLog` VALUES (3,'Ingreso al sistema de 04c55123876eea249cdc7639c2d76aeae43b01f9fb8190feb21f033845c8742353e2a86d14140cae1e467a0994608fb897c20b2605d53d3fe8aa51b13808d324fRieU4TNybI9bS13ZVsGISuuhZovTba4gJebuwWJsCo=','demo@demo','2019-03-15 23:22:11'),(4,'Ingreso al sistema de 8543fbe7b27867fdee7500e4102855e6ba7d5d90b47ed92f47f5806f63435f9cbe95c1dfac836a3ab9ab097f921fec16503df6635c42305a59ae2cceb202b0abhEKE0PucxwNzSNniw/dwwXUN37rEaEII72UXuV/5Lcg=','demo@demo','2019-03-16 00:05:21'),(5,'Ingreso al sistema de c4d678f27d9c6b33233f32453629e50c2dd61acca02c7d7131a50a6ac3c10cf900c906d472af5f3c4c5993e3c8bcfba183cbac1244f91c3e137e07fc462a4f791FjTEhsJpe14+a/xTCZE8oxcn72G+M6MPt/iTA6adqo=','demo@demo','2019-03-16 00:12:30'),(6,'Ingreso al sistema de 59ef3b951eba838c8504ec740c7b7af1b551e61b628adc2d98b8a81e8ec9b52dc37d38fc885af10f468787764beeb049e856ccb97682379274d04802ec10d108Zw9Z1U4zpYVDrh7OSkXL2i2d+znoi8Ap4TnTeOOC2yg=','demo@demo','2019-03-16 00:15:24'),(7,'Ingreso al sistema de 136d78480ae146b01ca8a9c48d4d88a7c02c0fc1f83752d9d1a0f6a0e7d5304a9184a27a283066942993dda63996d44553593434628d6e471cc0252b57dbb92cqzuYhusS+LZkUs1y1dzzXkJznCBgkhVIJjRK76lSC5w=','demo@demo','2019-03-16 00:16:54'),(8,'Ingreso al sistema de c40c2f911909e81e184174729e152e0f28dad01f27f559c29022530f40aa38267e2da3dfeeddb39bbf1100a9b067ed4be6401fc782599b713ca9cb5c6ac7d157SVEW6jc5S7JqGecXeDlRPIeiaCSgLJdB9+CnAqkqdfc=','demo@demo','2019-03-16 00:17:03'),(9,'Ingreso al sistema de dad850671a7e2a533b0678ce820aac5e0c3628b2d62c56377e89b30eff8a2da78ffda1b5213b059ba896f6564030d6834321a42b1118ac4eeed42b79d19627110k9iax0yszg1qmgXBYM7OBY89AHrSIseLwXytI8Rqbs=','demo@demo','2019-03-16 00:19:15'),(10,'Ingreso al sistema de d338b83e2435353faf59982179bfa31cda7d9385528671c7e8f71e6927d37c55b79fca47af5a1501decc0fb109a04d7233c8d469edeabb43caa6bc5ed564d6adnJLOVnnhKxEWp0DR2rIH/7Wr9+DIy2TZTz1zK1AvKW8=','demo@demo','2019-03-16 00:20:08'),(11,'Ingreso al sistema de 7e77f1355cafbecdee247d1d01af7b74411026337cce14c74e525ce6f434d75471779f1cd6ed4d0ced5826a27de8ee3986a1f454659bf09ecbd9b0c170479f3e+a+hizjE3DL252R8yer7JijEQ5Xs43909zGn+T1zHnk=','demo@demo','2019-03-16 00:22:53'),(12,'Ingreso al sistema de cbaca82b380d3fbe03591d741fb49bc911607688a20d68fc124232ff4ce3a8fd3d69a9eb89b7576b2468d9884f9a3c7deab61fabd06f17ff4d0f1d81eaad3e44YshJbtZaTD8BsFAOTZ1nYEKh2XqZKQfWF0LNEm7DDVY=','demo@demo','2019-03-16 00:23:53'),(13,'Ingreso al sistema','admin@admin','2019-03-16 00:47:43'),(14,'Ingreso al sistema','admin@admin','2019-03-16 01:02:03'),(15,'Ingreso al sistema','admin@admin','2019-03-16 01:18:18'),(16,'Ingreso al sistema','admin@admin','2019-03-16 01:23:10'),(17,'Ingreso al sistema','0','2019-03-16 01:38:10'),(18,'Ingreso al sistema','0','2019-03-16 01:40:16'),(19,'Ingreso al sistema','0','2019-03-16 01:41:24'),(20,'Ingreso al sistema','0','2019-03-16 01:43:09'),(21,'Ingreso al sistema','admin@admin','2019-03-16 01:53:24'),(22,'Ingreso al sistema','0','2019-03-16 01:53:57'),(23,'Ingreso al sistema','admin@admin','2019-03-16 02:04:49'),(24,'Actualizó el edificio Zentia','admin@admin','2019-03-16 02:05:07'),(25,'Registró el edificio Tower','admin@admin','2019-03-16 02:07:33'),(26,'Actualizó el edificio Zentia','admin@admin','2019-03-16 02:12:01'),(27,'Actualizó el edificio Zentia','admin@admin','2019-03-16 02:14:56'),(28,'Ingreso al sistema','0','2019-03-16 02:30:08'),(29,'Ingreso al sistema','admin@admin','2019-03-16 02:32:03'),(30,'Ingreso al sistema','0','2019-03-16 02:34:16'),(31,'Ingreso al sistema','admin@admin','2019-03-16 02:35:53'),(32,'Ingreso al sistema','admin@admin','2019-03-16 02:40:00'),(33,'Ingreso al sistema','admin@admin','2019-03-16 02:47:32'),(34,'Actualizó el edificio Zentia','admin@admin','2019-03-16 03:36:40'),(35,'Ingreso al sistema','0','2019-03-16 03:37:12'),(36,'Ingreso al sistema','0','2019-03-16 03:47:09'),(37,'Ingreso al sistema','0','2019-03-16 03:49:13'),(38,'Actualizó el edificio Zentia','0','2019-03-16 03:51:33'),(39,'Ingreso al sistema','0','2019-03-15 22:05:44'),(40,'Ingreso al sistema','0','2019-03-15 22:07:29'),(41,'Ingreso al sistema','0','2019-03-15 22:14:48'),(42,'Ingreso al sistema','0','2019-03-15 22:21:35'),(43,'Ingreso al sistema','0','2019-03-16 10:15:29'),(44,'Ingreso al sistema','0','2019-03-18 12:26:57'),(45,'Ingreso al sistema','0','2019-03-19 01:39:31'),(46,'Ingreso al sistema','0','2019-03-19 13:40:59'),(47,'Actualizó el edificio Tower','0','2019-03-19 13:43:22'),(48,'Actualizó el edificio Tower','0','2019-03-19 13:45:14'),(49,'Registró el edificio ','0','2019-03-19 13:45:44'),(50,'Dió de baja al edificio [8] 8','0','2019-03-19 13:46:01'),(51,'Actualizó el edificio Tower','0','2019-03-19 13:48:41'),(52,'Actualizó el edificio Tower','0','2019-03-19 15:26:05'),(53,'Actualizó el edificio Zentia','0','2019-03-19 15:35:44'),(54,'Actualizó el edificio Zentia','0','2019-03-19 15:37:52'),(55,'Actualizó el edificio Zentia','0','2019-03-19 15:38:16'),(56,'Actualizó el edificio Zentia','0','2019-03-19 15:40:38'),(57,'Actualizó el edificio Zentia','0','2019-03-19 15:41:32'),(58,'Actualizó el edificio Zentia','0','2019-03-19 15:45:23'),(59,'Actualizó el edificio Zentia','0','2019-03-19 15:46:42'),(60,'Actualizó el edificio Zentia','0','2019-03-19 15:47:05'),(61,'Actualizó el edificio Zentia','0','2019-03-19 15:49:19'),(62,'Actualizó el edificio Zentia','0','2019-03-19 15:49:55'),(63,'Actualizó el edificio Zentia','0','2019-03-19 15:51:00'),(64,'Actualizó el edificio Zentia','0','2019-03-19 15:51:34'),(65,'Actualizó el edificio Zentia','0','2019-03-19 15:52:02'),(66,'Actualizó el edificio Zentia','0','2019-03-19 15:52:05'),(67,'Actualizó el edificio Zentia','0','2019-03-19 15:52:16'),(68,'Actualizó el edificio Zentia','0','2019-03-19 15:54:07'),(69,'Actualizó el edificio Zentia','0','2019-03-19 15:58:16'),(70,'Actualizó el edificio Zentia','0','2019-03-19 16:01:19'),(71,'Actualizó el edificio Zentia','0','2019-03-19 16:02:26'),(72,'Actualizó el edificio Zentia','0','2019-03-19 16:03:06'),(73,'Actualizó el edificio Zentia','0','2019-03-19 16:03:46'),(74,'Actualizó el edificio Zentia','0','2019-03-19 16:07:26'),(75,'Actualizó el edificio Zentia','0','2019-03-19 16:07:55'),(76,'Actualizó el edificio Zentia','0','2019-03-19 16:10:33'),(77,'Actualizó el edificio Zentia','0','2019-03-19 16:15:29'),(78,'Actualizó el edificio Zentia','0','2019-03-19 16:16:47'),(79,'Actualizó el edificio Zentia','0','2019-03-19 16:19:19'),(80,'Actualizó el edificio Zentia','0','2019-03-19 16:21:37'),(81,'Actualizó el edificio Zentia','0','2019-03-19 16:22:48'),(82,'Actualizó el edificio Zentia','0','2019-03-19 16:24:08'),(83,'Actualizó el edificio Zentia','0','2019-03-19 16:25:06'),(84,'Actualizó el edificio Zentia','0','2019-03-19 16:25:12'),(85,'Actualizó el edificio Zentia','0','2019-03-19 16:34:27'),(86,'Actualizó el edificio Zentia','0','2019-03-19 16:35:55'),(87,'Actualizó el edificio Zentia','0','2019-03-19 16:37:31'),(88,'Actualizó el edificio Zentia','0','2019-03-19 16:38:36'),(89,'Actualizó el edificio Zentia','0','2019-03-19 16:39:14'),(90,'Actualizó el edificio Zentia','0','2019-03-19 16:39:48'),(91,'Actualizó el edificio Zentia','0','2019-03-19 16:40:33'),(92,'Ingreso al sistema','0','2019-03-19 10:36:35'),(93,'Ingreso al sistema','0','2019-03-19 16:41:36'),(94,'Actualizó el edificio Zentia','0','2019-03-19 16:42:27'),(95,'Actualizó el edificio Zentia','0','2019-03-19 16:43:11'),(96,'Actualizó el edificio Zentia','0','2019-03-19 16:45:04'),(97,'Actualizó el edificio Zentia','0','2019-03-19 16:45:14'),(98,'Actualizó el edificio Allegro','0','2019-03-19 16:46:17'),(99,'Registró la unidad inmobiliaria 12[]','0','2019-03-19 18:48:44'),(100,'Registró la unidad inmobiliaria 3[]','0','2019-03-19 18:51:27'),(101,'Intentó registrar la unidad inmobiliaria 12[24911]','0','2019-03-19 19:36:03'),(102,'Actualizó la unidad inmobiliaria  101 ME [24911]','0','2019-03-19 19:38:27'),(103,'Actualizó la unidad inmobiliaria  101 ME [24911]','0','2019-03-19 19:38:42'),(104,'Actualizó la unidad inmobiliaria  101 ME [24911]','0','2019-03-19 19:42:38'),(105,'Eliminó la unidad inmobiliaria [bd361882157042d29c76af635fe5774cfac83a5befa7469973a9fe6e71efda686ca6adddb463d9e03e493bf4eacf3450fbda31b72d9523008a0b8f5e7423400c1lNdbo7e3b.58bypJQkRx5gMBSXHf0lyowRbkvaKYX0-]','0','2019-03-19 19:45:13'),(106,'Eliminó la unidad inmobiliaria [bd361882157042d29c76af635fe5774cfac83a5befa7469973a9fe6e71efda686ca6adddb463d9e03e493bf4eacf3450fbda31b72d9523008a0b8f5e7423400c1lNdbo7e3b.58bypJQkRx5gMBSXHf0lyowRbkvaKYX0-]','0','2019-03-19 19:45:29'),(107,'Eliminó la unidad inmobiliaria [bd361882157042d29c76af635fe5774cfac83a5befa7469973a9fe6e71efda686ca6adddb463d9e03e493bf4eacf3450fbda31b72d9523008a0b8f5e7423400c1lNdbo7e3b.58bypJQkRx5gMBSXHf0lyowRbkvaKYX0-]','0','2019-03-19 19:46:13'),(108,'Eliminó la unidad inmobiliaria [2e720dfc61431358177e97278ecac4a826c42eebe5b2bbfdff5ed5d5b92449e59b17bcb0140109fe2cb361c453b540799b59e27d762ec27517724a5532e5b93flsuDcIw0QPztrDmXzRVXSGqLvCUsKbHfpeVgIdRceMI-]','0','2019-03-19 19:46:27'),(109,'Eliminó la unidad inmobiliaria [24912]','0','2019-03-19 19:47:42'),(110,'Actualizó la unidad inmobiliaria  101 ME [24911]','0','2019-03-19 20:58:18'),(111,'Actualizó la unidad inmobiliaria  101 ME [24911]','0','2019-03-19 20:58:38'),(112,'Registró la unidad inmobiliaria 22[]','0','2019-03-19 20:59:35'),(113,'Actualizó la unidad inmobiliaria  101 ME [24911]','0','2019-03-19 21:11:46'),(114,'Registró la unidad inmobiliaria jr.Real 253[]','0','2019-03-19 21:12:06'),(115,'Intentó registrar la unidad inmobiliaria 22[]','0','2019-03-19 21:22:47'),(116,'Intentó registrar la unidad inmobiliaria jr.Real 253[]','0','2019-03-19 21:23:03'),(117,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-19 21:26:03'),(118,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-19 21:26:20'),(119,'Registró la unidad inmobiliaria 8[]','0','2019-03-19 21:46:36'),(120,'Ingreso al sistema','0','2019-03-19 16:03:58'),(121,'Ingreso al sistema','0','2019-03-19 22:09:42'),(122,'Ingreso al sistema','0','2019-03-19 16:07:10'),(123,'Actualizó el edificio Tower','0','2019-03-19 16:12:09'),(124,'Actualizó el edificio Tower','0','2019-03-19 16:12:54'),(125,'Actualizó el edificio Tower','0','2019-03-19 16:16:27'),(126,'Actualizó la unidad inmobiliaria  22 [24913]','0','2019-03-19 16:20:37'),(127,'Ingreso al sistema','0','2019-03-19 18:12:24'),(128,'Registró la unidad inmobiliaria 101[]','0','2019-03-19 18:13:19'),(129,'Ingreso al sistema','0','2019-03-19 20:47:14'),(130,'Actualizó el edificio Allegro','0','2019-03-19 21:02:26'),(131,'Actualizó el edificio Tower','0','2019-03-19 21:02:43'),(132,'Actualizó el edificio Zentia','0','2019-03-19 21:02:55'),(133,'Ingreso al sistema','0','2019-03-20 00:57:15'),(134,'Ingreso al sistema','0','2019-03-21 12:50:52'),(135,'Ingreso al sistema','0','2019-03-21 16:32:57'),(136,'Ingreso al sistema','0','2019-03-22 21:13:29'),(137,'Ingreso al sistema','0','2019-03-22 21:45:35'),(138,'Actualizó el edificio Allegro','0','2019-03-22 21:45:59'),(139,'Actualizó el edificio Allegro','0','2019-03-22 21:57:05'),(140,'Actualizó el edificio Allegro','0','2019-03-22 21:57:41'),(141,'Actualizó el edificio Allegro','0','2019-03-22 22:49:20'),(142,'Actualizó el edificio Allegro','0','2019-03-22 22:51:34'),(143,'Actualizó el edificio Allegro','0','2019-03-22 23:00:33'),(144,'Actualizó el edificio Allegro','0','2019-03-22 23:10:36'),(145,'Registró el SUM SUM1','0','2019-03-23 00:12:50'),(146,'Registró el SUM SUM1','0','2019-03-23 00:14:35'),(147,'Registró el SUM SUM1','0','2019-03-23 00:15:25'),(148,'Registró el SUM SUM1','0','2019-03-23 00:15:27'),(149,'Registró el SUM SUM1','0','2019-03-23 00:15:28'),(150,'Registró el SUM SUM1','0','2019-03-23 00:16:11'),(151,'Registró el SUM SUM1','0','2019-03-23 00:17:26'),(152,'Registró el SUM SUM1','0','2019-03-23 00:18:47'),(153,'Registró el SUM SUM1','0','2019-03-23 00:20:42'),(154,'Registró el SUM SUM1','0','2019-03-23 00:22:43'),(155,'Registró el SUM SUM1','0','2019-03-23 00:23:44'),(156,'Registró el SUM SUM1','0','2019-03-23 00:25:15'),(157,'Eliminó el SUM [12]','0','2019-03-23 00:59:23'),(158,'Registró el SUM SUM1','0','2019-03-23 01:30:11'),(159,'Registró el SUM SUM1','0','2019-03-23 01:40:53'),(160,'Eliminó el SUM [13]','0','2019-03-23 01:41:32'),(161,'Ingreso al sistema','0','2019-03-24 01:18:10'),(162,'Ingreso al sistema','0','2019-03-24 01:32:25'),(163,'Ingreso al sistema','0','2019-03-25 16:33:26'),(164,'Actualizó el SUM SUM1','0','2019-03-25 17:44:20'),(165,'Ingreso al sistema','0','2019-03-25 19:55:20'),(166,'Dió de baja al usuario [recepcion@recepcion] ','0','2019-03-25 20:06:52'),(167,'Dió de alta nuevamente al usuario [recepcion@recepcion] ','0','2019-03-25 20:07:04'),(168,'Dió de baja al usuario [recepcion@recepcion] ','0','2019-03-25 20:15:31'),(169,'Dió de alta nuevamente al usuario [recepcion@recepcion] ','0','2019-03-25 20:15:38'),(170,'Ingreso al sistema','0','2019-03-25 20:16:58'),(171,'Dió de baja al usuario [inquilino@inquilino] ','0','2019-03-25 20:17:11'),(172,'Dió de alta nuevamente al usuario [inquilino@inquilino] ','0','2019-03-25 20:17:29'),(173,'Actualizó el usuario ','0','2019-03-25 21:01:07'),(174,'Registró el usuario prueba@asda','0','2019-03-25 21:10:50'),(175,'Registró el usuario prueba@asda','0','2019-03-25 21:11:07'),(176,'Actualizó el usuario prueba@asda','0','2019-03-25 21:18:00'),(177,'Actualizó el usuario prueba@asda','0','2019-03-25 21:18:19'),(178,'Actualizó el usuario prueba@asda','0','2019-03-25 21:19:52'),(179,'Actualizó el usuario prueba@asda','0','2019-03-25 21:21:55'),(180,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:09:08'),(181,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:09:30'),(182,'Eliminó la relación [24914] de la unidad inmobiliaria []','0','2019-03-25 22:14:25'),(183,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:14:58'),(184,'Eliminó la relación [24914] de la unidad inmobiliaria []','0','2019-03-25 22:15:10'),(185,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:16:00'),(186,'Eliminó la relación [24914] de la unidad inmobiliaria []','0','2019-03-25 22:16:23'),(187,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:16:33'),(188,'Eliminó la relación [24914] de la unidad inmobiliaria []','0','2019-03-25 22:16:48'),(189,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:22:46'),(190,'Actualizó el usuario prueba@asda','0','2019-03-25 22:23:08'),(191,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:23:29'),(192,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:26:33'),(193,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:27:08'),(194,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:27:23'),(195,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:30:03'),(196,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:30:36'),(197,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:30:55'),(198,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:32:10'),(199,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:32:25'),(200,'Eliminó la relación [24914] de la unidad inmobiliaria []','0','2019-03-25 22:34:01'),(201,'Eliminó la relación [24914] de la unidad inmobiliaria []','0','2019-03-25 22:34:05'),(202,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:34:14'),(203,'Actualizó la unidad inmobiliaria  jr.Real 253 [24914]','0','2019-03-25 22:34:29'),(204,'Ingreso al sistema','0','2019-03-25 22:49:03'),(205,'Ingreso al sistema','0','2019-03-25 22:49:28'),(206,'Ingreso al sistema','0','2019-03-25 22:52:07'),(207,'Ingreso al sistema','0','2019-03-25 22:56:16'),(208,'Actualizó el usuario superadmin@superadmin','0','2019-03-25 23:01:09'),(209,'Actualizó el usuario superadmin@superadmin','0','2019-03-25 23:01:31'),(210,'Ingreso al sistema','superadmin@superadmin','2019-03-26 02:59:11'),(211,'Registró la unidad inmobiliaria 101[]','superadmin@superadmin','2019-03-26 04:08:56'),(212,'Ingreso al sistema','0','2019-03-27 05:53:59'),(213,'Ingreso al sistema','0','2019-03-27 05:55:14'),(214,'Ingreso al sistema','0','2019-03-27 05:57:19'),(215,'Ingreso al sistema','0','2019-03-31 04:55:28'),(216,'Ingreso al sistema','0','2019-03-31 04:56:14'),(217,'Ingreso al sistema','0','2019-03-31 22:44:41'),(218,'Ingreso al sistema','0','2019-04-01 23:13:32'),(219,'Registró el usuario iker@correo.com','0','2019-04-02 03:40:08'),(220,'Registró el usuario Alejandro@correo.com','0','2019-04-02 03:40:53'),(221,'Registró el usuario Juan@correo.com','0','2019-04-02 03:41:36'),(222,'Eliminó la unidad inmobiliaria [24917]','0','2019-04-02 03:53:30'),(223,'Registró la unidad inmobiliaria 1001[]','0','2019-04-02 03:53:44'),(224,'Registró la unidad inmobiliaria 1001[]','0','2019-04-02 03:55:11'),(225,'Registró la unidad inmobiliaria 1002[]','0','2019-04-02 03:55:26'),(226,'Registró la unidad inmobiliaria 1003[]','0','2019-04-02 03:55:39'),(227,'Registró la unidad inmobiliaria 1004[]','0','2019-04-02 03:55:49'),(228,'Registró la unidad inmobiliaria 2001[]','0','2019-04-02 03:56:23'),(229,'Registró la unidad inmobiliaria 2002[]','0','2019-04-02 03:56:38'),(230,'Registró la unidad inmobiliaria 2003[]','0','2019-04-02 03:56:48'),(231,'Registró la unidad inmobiliaria 2004[]','0','2019-04-02 03:57:01'),(232,'Actualizó la unidad inmobiliaria  1001 [24918]','0','2019-04-02 04:01:00'),(233,'Actualizó la unidad inmobiliaria  1001 [24918]','0','2019-04-02 04:07:27'),(234,'Actualizó la unidad inmobiliaria  1001 [24918]','0','2019-04-02 04:08:03'),(235,'Actualizó la unidad inmobiliaria  1002 [24919]','0','2019-04-02 04:14:26'),(236,'Actualizó la unidad inmobiliaria  1003 [24920]','0','2019-04-02 04:14:37'),(237,'Actualizó la unidad inmobiliaria  1004 [24921]','0','2019-04-02 04:14:47'),(238,'Actualizó la unidad inmobiliaria  2001 [24922]','0','2019-04-02 04:15:00'),(239,'Actualizó la unidad inmobiliaria  2002 [24923]','0','2019-04-02 04:15:19'),(240,'Actualizó la unidad inmobiliaria  2003 [24924]','0','2019-04-02 04:15:29'),(241,'Actualizó la unidad inmobiliaria  2004 [24925]','0','2019-04-02 04:15:40'),(242,'Actualizó el edificio Zentia','0','2019-04-02 06:50:12'),(243,'Actualizó el edificio Zentia','0','2019-04-02 07:01:57'),(244,'Eliminó la unidad inmobiliaria [24916]','0','2019-04-02 07:02:21'),(245,'Ingreso al sistema','0','2019-04-02 17:30:40'),(246,'Ingreso al sistema','0','2019-04-02 17:50:33'),(247,'Ingreso al sistema','0','2019-04-02 22:14:50'),(248,'Ingreso al sistema','0','2019-04-02 23:56:37'),(249,'Ingreso al sistema','0','2019-04-03 01:19:50'),(250,'Registró el Rubro Servicios','0','2019-04-03 03:04:15'),(251,'Registró el Rubro Personal','0','2019-04-03 03:04:30'),(252,'Registró el Rubro Mantenimiento','0','2019-04-03 03:04:46'),(253,'Actualizó el Rubro Personal','0','2019-04-03 03:04:54'),(254,'Actualizó el Rubro Servicios','0','2019-04-03 03:05:03'),(255,'Registró el Rubro Gastos','0','2019-04-03 03:05:22'),(256,'Actualizó el Rubro Servicios','0','2019-04-03 03:07:38'),(257,'Registró el SubRubro Agua Común','0','2019-04-03 03:07:56'),(258,'Registró el SubRubro Enel Areas Comunes','0','2019-04-03 03:08:10'),(259,'Registró el SubRubro Telefono Celular Recepción','0','2019-04-03 03:08:41'),(260,'Actualizó el Rubro Servicios','0','2019-04-03 03:08:53'),(261,'Registró el SubRubro Personal','0','2019-04-03 03:09:05'),(262,'Actualizó el Rubro Personal','0','2019-04-03 03:09:08'),(263,'Registró el SubRubro Mantenimiento Preventivo Ascensor','0','2019-04-03 03:09:56'),(264,'Registró el SubRubro MAntenimiento Preventivo Bombas de Presión Constante','0','2019-04-03 03:10:25'),(265,'Registró el SubRubro Mantenimiento Preventivo BCI','0','2019-04-03 03:10:42'),(266,'Registró el SubRubro Limpieza del Tanque Cisterna y Fumigación','0','2019-04-03 03:11:20'),(267,'Registró el SubRubro Tableros Eléctricos Cuarto de Bombas','0','2019-04-03 03:12:00'),(268,'Registró el SubRubro Jardinero','0','2019-04-03 03:12:11'),(269,'Actualizó el edificio Zentia','0','2019-04-03 03:13:34'),(270,'Registró el PAM 2019 - 4','0','2019-04-03 03:14:00'),(271,'Ingreso al sistema','0','2019-04-03 04:33:41'),(272,'Ingreso al sistema','0','2019-04-03 04:52:16'),(273,'Actualizó el edificio Allegro','0','2019-04-03 06:53:32'),(274,'Actualizó el edificio Allegro','0','2019-04-03 06:55:33'),(275,'Actualizó el edificio Tower','0','2019-04-03 06:56:01'),(276,'Actualizó el edificio Allegro','0','2019-04-03 06:56:28'),(277,'Actualizó el edificio Allegro','0','2019-04-03 06:56:56'),(278,'Actualizó el edificio Tower','0','2019-04-03 06:57:11'),(279,'Actualizó el edificio Zentia','0','2019-04-03 06:57:20'),(280,'Registró el SUM SUM1','0','2019-04-03 07:01:35'),(281,'Eliminó el SUM [14]','0','2019-04-03 07:01:47'),(282,'Eliminó la unidad inmobiliaria [24914]','0','2019-04-03 07:19:04'),(283,'Ingreso al sistema','0','2019-04-03 16:22:40'),(284,'Ingreso al sistema','superadmin@superadmin','2019-04-03 17:16:51'),(285,'Ingreso al sistema','0','2019-04-03 17:57:54'),(286,'Eliminó el SUM [2]','0','2019-04-03 19:57:06'),(287,'Eliminó el Insumo [2]','0','2019-04-03 19:59:01'),(288,'Eliminó el SUM [2]','0','2019-04-03 19:59:11'),(289,'Eliminó el Menu [2]','0','2019-04-03 20:02:20'),(290,'Registró el SUM ','0','2019-04-03 20:54:10'),(291,'Actualizó el SUM ','0','2019-04-03 21:04:00'),(292,'Actualizó el SUM ','0','2019-04-03 21:04:09'),(293,'Registró el SUM ','0','2019-04-03 21:13:42'),(294,'Actualizó el SUM ','0','2019-04-03 21:14:45'),(295,'Actualizó el SUM ','0','2019-04-03 21:14:52'),(296,'Registró el SUM ','0','2019-04-03 23:14:04'),(297,'Actualizó el SUM ','0','2019-04-03 23:15:47'),(298,'Actualizó el SUM ','0','2019-04-03 23:16:26'),(299,'Actualizó el SUM ','0','2019-04-03 23:17:21'),(300,'Actualizó el SUM ','0','2019-04-03 23:18:22'),(301,'Actualizó el SUM mes','0','2019-04-03 23:19:27'),(302,'Actualizó el SUM mes','0','2019-04-03 23:19:52'),(303,'Ingreso al sistema','0','2019-04-05 17:22:27'),(304,'Eliminó el Insumo [6]','0','2019-04-05 18:35:42'),(305,'Eliminó el Insumo [6]','0','2019-04-05 18:38:47'),(306,'Eliminó el Insumo [6]','0','2019-04-05 18:40:29'),(307,'Eliminó el Insumo [6]','0','2019-04-05 18:44:17'),(308,'Registró el SUM ','0','2019-04-05 18:52:49'),(309,'Actualizó el SUM ','0','2019-04-05 18:53:09'),(310,'Registró el SUM ','0','2019-04-05 19:31:40'),(311,'Registró el SUM ','0','2019-04-05 19:39:10'),(312,'Actualizó el SUM ','0','2019-04-05 20:03:51'),(313,'Ingreso al sistema','0','2019-04-08 16:50:52'),(314,'Ingreso al sistema','0','2019-04-15 18:02:02'),(315,'Actualizó el SUM Mesa1','0','2019-04-15 19:19:12'),(316,'Actualizó el SUM Mesa2','0','2019-04-15 19:19:22'),(317,'Actualizó el SUM Mesa3','0','2019-04-15 19:19:31'),(318,'Actualizó el SUM ','0','2019-04-15 19:51:39'),(319,'Actualizó el SUM ','0','2019-04-15 19:51:58'),(320,'Actualizó el Pedido 1','0','2019-04-15 19:52:47'),(321,'Actualizó el Pedido 1','0','2019-04-15 19:53:18'),(322,'Actualizó el Pedido 1','0','2019-04-15 19:53:59'),(323,'Registró el Pedido ','0','2019-04-15 19:54:32'),(324,'Registró el Pedido ','0','2019-04-15 19:55:29'),(325,'Registró el Pedido ','0','2019-04-15 19:57:50'),(326,'Registró el Pedido ','0','2019-04-15 19:59:49'),(327,'Registró el Pedido ','0','2019-04-15 20:01:20'),(328,'Registró el Pedido ','0','2019-04-15 20:02:22'),(329,'Actualizó el Pedido 5','0','2019-04-15 20:03:38'),(330,'Eliminó el Menu [5]','0','2019-04-15 20:06:28'),(331,'Registró el Pedido ','0','2019-04-15 20:08:58'),(332,'Registró el Pedido ','0','2019-04-15 20:30:01'),(333,'Registró el Pedido ','0','2019-04-15 22:45:58'),(334,'Actualizó el Pedido 6','0','2019-04-15 22:56:18'),(335,'Actualizó el Pedido 6','0','2019-04-15 22:57:02'),(336,'Registró el Pedido 6','0','2019-04-15 22:57:57'),(337,'Registró el Pedido 6','0','2019-04-15 22:58:55'),(338,'Registró el Pedido 6','0','2019-04-15 23:07:33'),(339,'Registró el Pedido 6','0','2019-04-15 23:16:04'),(340,'Registró el Pedido 6','0','2019-04-15 23:16:21'),(341,'Registró el Pedido 7','0','2019-04-15 23:17:20'),(342,'Ingreso al sistema','0','2019-04-17 21:41:45'),(343,'Registró el Pedido ','0','2019-04-17 21:42:01'),(344,'Actualizó el Pedido 7','0','2019-04-17 21:42:11'),(345,'Registró el Pedido 6','0','2019-04-17 21:42:25'),(346,'Registró el Pedido 6','0','2019-04-17 21:42:40'),(347,'Registró el Pedido ','0','2019-04-17 21:49:36'),(348,'Registró el Pedido 8','0','2019-04-17 21:50:01'),(349,'Registró el Pedido 7','0','2019-04-17 21:52:22'),(350,'Registró el Pedido 6','0','2019-04-17 21:59:30'),(351,'Ingreso al sistema','superadmin@superadmin','2019-04-19 07:20:58'),(352,'Actualizó el SUM ','superadmin@superadmin','2019-04-19 07:23:14'),(353,'Registró el SUM ','superadmin@superadmin','2019-04-19 07:24:42'),(354,'Eliminó el Insumo [7]','superadmin@superadmin','2019-04-19 07:45:39'),(355,'Ingreso al sistema','0','2019-04-19 18:07:05'),(356,'Registró el Pedido 6','0','2019-04-19 20:37:13'),(357,'Registró el Pedido 6','0','2019-04-19 20:38:04'),(358,'Registró el Pedido 6','0','2019-04-19 20:39:18'),(359,'Registró el Pedido 6','0','2019-04-19 20:42:08'),(360,'Registró el Pedido 9','0','2019-04-19 20:47:09'),(361,'Registró el Pedido 6','0','2019-04-20 01:40:58'),(362,'Registró el Pedido 6','0','2019-04-20 01:47:16'),(363,'Registró el Pedido 6','0','2019-04-20 01:47:38'),(364,'Registró el Pedido 6','0','2019-04-20 01:50:15'),(365,'Registró el Pedido 6','0','2019-04-20 01:50:28'),(366,'Registró el Pedido 6','0','2019-04-20 01:50:39'),(367,'Registró el Pedido 6','0','2019-04-20 01:56:03'),(368,'Registró el Pedido ','0','2019-04-20 01:56:58'),(369,'Registró el Pedido 6','0','2019-04-20 02:10:09'),(370,'Registró el Pedido 6','0','2019-04-20 02:14:45'),(371,'Registró el Pedido 6','0','2019-04-20 02:17:00'),(372,'Registró el Pedido 6','0','2019-04-20 02:19:33'),(373,'Ingreso al sistema','0','2019-04-21 17:56:25'),(374,'Registró el Pedido 6','0','2019-04-21 17:56:51'),(375,'Ingreso al sistema','0','2019-04-21 23:12:21'),(376,'Ingreso al sistema','0','2019-04-21 23:12:55'),(377,'Registró el Pedido 6','0','2019-04-22 00:03:37'),(378,'Registró el Pedido ','0','2019-04-22 00:18:53'),(379,'Registró el Pedido ','0','2019-04-22 00:19:07'),(380,'Registró el Pedido ','0','2019-04-22 00:48:03'),(381,'Registró el Pedido ','0','2019-04-22 01:03:14'),(382,'Registró el Pedido ','0','2019-04-22 01:04:05'),(383,'Registró el Pedido 6','0','2019-04-22 01:08:41'),(384,'Registró el Pedido ','0','2019-04-22 01:19:17'),(385,'Registró la Compra ','0','2019-04-22 02:16:45'),(386,'Actualizó la Compra 5','0','2019-04-22 02:17:43'),(387,'Actualizó la Compra 2','0','2019-04-22 02:27:45'),(388,'Registró el Pedido 6','0','2019-04-22 02:55:29'),(389,'Eliminó el Menu [5]','0','2019-04-22 02:59:13'),(390,'Registró el Pedido 6','0','2019-04-22 02:59:35'),(391,'Registró el Pedido 6','0','2019-04-22 03:00:04'),(392,'Ingreso al sistema','0','2019-04-22 03:32:57'),(393,'Ingreso al sistema','0','2019-04-22 04:08:12'),(394,'Ingreso al sistema','0','2019-04-22 04:11:40'),(395,'Ingreso al sistema','0','2019-04-22 04:20:44'),(396,'Ingreso al sistema','0','2019-04-22 04:26:44'),(397,'Ingreso al sistema','0','2019-04-22 04:28:06'),(398,'Registró la Compra ','0','2019-04-22 04:30:32'),(399,'Ingreso al sistema','0','2019-04-22 17:16:41'),(400,'Registró el Pedido ','0','2019-04-22 17:16:56'),(401,'Registró el Pedido 11','0','2019-04-22 17:17:08'),(402,'Registró el Pedido 11','0','2019-04-22 17:17:28'),(403,'Eliminó el Menu [1]','0','2019-04-22 17:17:58'),(404,'Eliminó el Menu [3]','0','2019-04-22 17:18:01'),(405,'Eliminó el Menu [4]','0','2019-04-22 17:18:03'),(406,'Eliminó el Insumo [11]','0','2019-04-22 17:18:09'),(407,'Eliminó el Insumo [1]','0','2019-04-22 17:18:12'),(408,'Eliminó el Insumo [3]','0','2019-04-22 17:18:15'),(409,'Eliminó el Insumo [7]','0','2019-04-22 17:18:17'),(410,'Eliminó el Insumo [9]','0','2019-04-22 17:18:21'),(411,'Eliminó el Insumo [5]','0','2019-04-22 17:18:23'),(412,'Eliminó el Insumo [8]','0','2019-04-22 17:18:27'),(413,'Eliminó el Insumo [10]','0','2019-04-22 17:18:29'),(414,'Eliminó el Insumo [6]','0','2019-04-22 17:18:32'),(415,'Registró el SUM ','0','2019-04-22 17:19:09'),(416,'Registró el Insumo pollo','0','2019-04-22 17:49:31'),(417,'Registró el Insumo cebolla','0','2019-04-22 17:51:06'),(418,'Registró el Insumo tomate','0','2019-04-22 17:51:35'),(419,'Registró el Insumo aaa','0','2019-04-22 17:56:19'),(420,'Registró el Insumo aaa','0','2019-04-22 17:56:57'),(421,'Eliminó el Insumo [15]','0','2019-04-22 18:35:37'),(422,'Registró el SUM ','0','2019-04-22 18:37:25'),(423,'Eliminó el Insumo [13]','0','2019-04-22 18:37:59'),(424,'Eliminó el Insumo [14]','0','2019-04-22 18:38:10'),(425,'Registró el Insumo arroz','0','2019-04-22 18:38:37'),(426,'Registró la Compra ','0','2019-04-22 18:44:53'),(427,'Registró la Compra ','0','2019-04-22 18:45:06'),(428,'Registró la Compra ','0','2019-04-22 18:46:08'),(429,'Registró la Compra ','0','2019-04-22 18:46:30'),(430,'Registró la Compra ','0','2019-04-22 18:46:50'),(431,'Registró la Compra ','0','2019-04-22 18:48:32'),(432,'Registró la Compra ','0','2019-04-22 18:51:00'),(433,'Registró la Compra ','0','2019-04-22 18:52:01'),(434,'Registró la Compra ','0','2019-04-22 18:55:42'),(435,'Registró la Compra ','0','2019-04-22 18:56:31'),(436,'Registró la Compra ','0','2019-04-22 18:57:51'),(437,'Registró la Compra ','0','2019-04-22 18:58:45'),(438,'Registró la Compra ','0','2019-04-22 19:15:59'),(439,'Registró la Compra ','0','2019-04-22 19:16:20'),(440,'Registró la Compra ','0','2019-04-22 19:16:48'),(441,'Registró la Compra ','0','2019-04-22 19:18:01'),(442,'Registró la Compra ','0','2019-04-22 19:19:35'),(443,'Registró la Compra ','0','2019-04-22 19:20:13'),(444,'Registró la Compra ','0','2019-04-22 19:20:45'),(445,'Registró la Compra ','0','2019-04-22 19:20:54'),(446,'Registró la Compra ','0','2019-04-22 19:22:08'),(447,'Registró la Compra ','0','2019-04-22 19:23:07'),(448,'Registró la Compra ','0','2019-04-22 19:23:16'),(449,'Registró la Compra ','0','2019-04-22 19:24:00'),(450,'Registró la Compra ','0','2019-04-22 19:24:12'),(451,'Registró el Pedido ','0','2019-04-22 19:30:16'),(452,'Registró el Pedido 12','0','2019-04-22 19:43:53'),(453,'Registró el Pedido ','0','2019-04-22 19:45:03'),(454,'Registró el Pedido 13','0','2019-04-22 19:45:15'),(455,'Registró el Pedido ','0','2019-04-22 19:46:21'),(456,'Registró el Pedido 13','0','2019-04-22 19:46:38'),(457,'Registró el Pedido 13','0','2019-04-22 19:47:23'),(458,'Registró el Pedido 13','0','2019-04-22 19:47:39'),(459,'Registró el Pedido 14','0','2019-04-22 19:58:58'),(460,'Registró el Pedido 14','0','2019-04-22 19:59:49'),(461,'Eliminó el Insumo [13]','0','2019-04-22 20:12:15'),(462,'Registró la Compra ','0','2019-04-22 20:14:09'),(463,'Registró el Pedido 13','0','2019-04-22 20:38:09'),(464,'Registró el Pedido 13','0','2019-04-22 21:06:40'),(465,'Registró el Pedido ','0','2019-04-22 21:09:42'),(466,'Registró el Pedido ','0','2019-04-22 21:10:52'),(467,'Registró el Pedido 13','0','2019-04-22 22:39:18'),(468,'Registró el Pedido 13','0','2019-04-22 22:47:22'),(469,'Registró el Pedido 13','0','2019-04-22 22:49:13'),(470,'Registró el Pedido 13','0','2019-04-22 22:49:49'),(471,'Registró el Insumo carne','0','2019-04-22 22:56:35'),(472,'Ingreso al sistema','0','2019-04-23 17:43:34'),(473,'Registró la Compra ','0','2019-04-23 17:56:28'),(474,'Registró el edificio ','0','2019-04-23 18:02:00'),(475,'Actualizó el usuario Daniel@correo.com','0','2019-04-23 18:03:23'),(476,'Actualizó el usuario Daniel@correo.com','0','2019-04-23 18:04:08'),(477,'Registró el SUM ','0','2019-04-23 19:14:37'),(478,'Ingreso al sistema','0','2019-04-24 06:39:17'),(479,'Actualizó el SUM ','0','2019-04-24 06:42:32'),(480,'Actualizó el SUM ','0','2019-04-24 06:46:37'),(481,'Actualizó el SUM ','0','2019-04-24 06:51:17'),(482,'Actualizó el SUM ','0','2019-04-24 06:54:01'),(483,'Actualizó el SUM ','0','2019-04-24 06:59:12'),(484,'Actualizó el SUM ','0','2019-04-24 07:05:05'),(485,'Actualizó el SUM ','0','2019-04-24 07:05:28'),(486,'Ingreso al sistema','0','2019-04-24 16:10:28'),(487,'Actualizó el Pedido 13','0','2019-04-24 16:41:37'),(488,'Ingreso al sistema','0','2019-04-24 17:20:18'),(489,'Ingreso al sistema','0','2019-04-24 17:49:41'),(490,'Registró el Pedido 13','0','2019-04-24 18:19:08'),(491,'Registró el Pedido 48','0','2019-04-24 18:19:17'),(492,'Registró el Pedido 16','0','2019-04-24 18:29:16'),(493,'Registró el Pedido 16','0','2019-04-24 18:29:46'),(494,'Registró el Pedido 16','0','2019-04-24 18:30:41'),(495,'Registró el Pedido 52','0','2019-04-24 18:30:55'),(496,'Registró el Pedido 13','0','2019-04-24 18:33:59'),(497,'Registró el Pedido 13','0','2019-04-24 18:35:28'),(498,'Registró el Pedido 13','0','2019-04-24 18:36:41'),(499,'Registró el Pedido 13','0','2019-04-24 18:43:06'),(500,'Registró el Pedido 13','0','2019-04-24 18:43:39'),(501,'Registró el Pedido 13','0','2019-04-24 18:44:35'),(502,'Ingreso al sistema','0','2019-04-24 19:26:46'),(503,'Registró el Pedido 14','0','2019-04-24 19:27:03'),(504,'Registró el Pedido 13','0','2019-04-24 19:29:04'),(505,'Registró el Pedido 14','0','2019-04-24 19:35:03'),(506,'Registró el Pedido 14','0','2019-04-24 19:38:54'),(507,'Registró el Pedido 14','0','2019-04-24 19:41:03'),(508,'Registró el Pedido 14','0','2019-04-24 19:42:33'),(509,'Registró el Pedido 14','0','2019-04-24 19:42:53'),(510,'Registró el Pedido 14','0','2019-04-24 19:43:06'),(511,'Ingreso al sistema','0','2019-04-24 21:23:31'),(512,'Registró el Insumo tomates','0','2019-04-24 21:31:07'),(513,'Registró la Compra ','0','2019-04-24 21:42:23'),(514,'Registró el Insumo lechuga','0','2019-04-24 21:45:35'),(515,'Registró la Compra ','0','2019-04-24 21:46:35'),(516,'Ingreso al sistema','0','2019-04-25 05:57:12'),(517,'Actualizó el SUM ','0','2019-04-25 06:28:23'),(518,'Registró el Insumo ají','0','2019-04-25 06:41:52'),(519,'Registró el Insumo limon','0','2019-04-25 06:42:27'),(520,'Eliminó el Insumo [20]','0','2019-04-25 06:43:10'),(521,'Eliminó el Insumo [21]','0','2019-04-25 06:46:58'),(522,'Registró el SUM ','0','2019-04-25 06:56:07'),(523,'Ingreso al sistema','0','2019-04-25 17:38:59'),(524,'Actualizó el SUM ','0','2019-04-25 17:43:19'),(525,'Registró el Pedido ','0','2019-04-25 17:44:38'),(526,'Registró el Pedido 17','0','2019-04-25 17:45:56'),(527,'Registró el Pedido 17','0','2019-04-25 17:46:02'),(528,'Dió de baja al usuario [Laia@correo.com] ','0','2019-04-25 17:53:39'),(529,'Dió de baja al usuario [Juan@correo.com] ','0','2019-04-25 17:53:48'),(530,'Registró el usuario mesero1@correo.com','0','2019-04-25 17:56:20'),(531,'Registró el usuario cocinero1@correo.com','0','2019-04-25 17:56:57'),(532,'Registró el Pedido ','0','2019-04-25 18:13:22'),(533,'Registró el Pedido ','0','2019-04-25 18:15:36'),(534,'Registró el Pedido ','0','2019-04-25 18:18:07'),(535,'Registró el Pedido ','0','2019-04-25 18:19:15'),(536,'Registró el Pedido 21','0','2019-04-25 18:19:24'),(537,'Registró el Pedido 21','0','2019-04-25 18:19:29'),(538,'Registró el Pedido 21','0','2019-04-25 18:19:32'),(539,'Registró el Pedido 21','0','2019-04-25 18:19:42'),(540,'Registró el Pedido ','0','2019-04-25 19:07:57'),(541,'Ingreso al sistema','0','2019-04-25 19:09:58'),(542,'Ingreso al sistema','superadmin@superadmin','2019-04-25 19:17:53'),(543,'Ingreso al sistema','0','2019-04-25 19:29:27'),(544,'Ingreso al sistema','0','2019-04-25 19:29:38'),(545,'Ingreso al sistema','0','2019-04-25 19:51:58'),(546,'Ingreso al sistema','0','2019-04-25 19:56:12'),(547,'Ingreso al sistema','0','2019-04-25 19:57:59'),(548,'Ingreso al sistema','0','2019-04-25 20:12:32'),(549,'Ingreso al sistema','0','2019-04-25 20:13:02'),(550,'Ingreso al sistema','0','2019-04-25 20:46:52'),(551,'Registró el Pedido ','0','2019-04-25 20:47:05'),(552,'Ingreso al sistema','0','2019-04-25 20:50:32'),(553,'Ingreso al sistema','0','2019-04-29 11:38:15'),(554,'Actualizó el Insumo carne','0','2019-04-29 11:42:31'),(555,'Registró el Insumo ají','0','2019-04-29 11:43:07'),(556,'Registró el usuario cliente@correo','0','2019-04-29 11:47:40'),(557,'Registró el usuario cliente2@correo','0','2019-04-29 11:51:31'),(558,'Registró el usuario cliente3@correo','0','2019-04-29 11:52:36'),(559,'Intentó registrar un usuario con el mismo correo [cliente3@correo]','0','2019-04-29 11:54:10'),(560,'Registró el Insumo aaa','0','2019-04-29 12:02:53'),(561,'Registró la Compra ','0','2019-04-29 12:03:06'),(562,'Registró la Compra ','0','2019-04-29 12:03:19'),(563,'Registró la Compra ','0','2019-04-29 12:03:46'),(564,'Registró el Insumo cebolla','0','2019-04-29 13:38:33'),(565,'Registró el Insumo pollo','0','2019-04-29 13:38:51'),(566,'Registró el Insumo tomate','0','2019-04-29 13:39:11'),(567,'Registró el Insumo arroz','0','2019-04-29 13:39:27'),(568,'Registró la Compra ','0','2019-04-29 13:40:23'),(569,'Eliminó el Insumo [25]','0','2019-04-29 13:40:46'),(570,'Registró el Insumo arroz','0','2019-04-29 13:41:27'),(571,'Registró la Compra ','0','2019-04-29 13:41:40'),(572,'Registró la Compra ','0','2019-04-29 13:41:56'),(573,'Registró la Compra ','0','2019-04-29 13:42:18'),(574,'Registró la Compra ','0','2019-04-29 13:42:31'),(575,'Registró la Compra ','0','2019-04-29 13:43:59'),(576,'Actualizó el Insumo cebolla','0','2019-04-29 13:46:22'),(577,'Actualizó el Insumo cebolla','0','2019-04-29 13:46:30'),(578,'Registró la Mesa mesa4','0','2019-04-29 13:51:50'),(579,'Ingreso al sistema','superadmin@superadmin','2019-04-29 16:11:52'),(580,'Registró el Pedido ','superadmin@superadmin','2019-04-29 16:12:42'),(581,'Ingreso al sistema','0','2019-04-29 16:53:27'),(582,'Registró el usuario maria@correo.com','0','2019-04-29 16:56:18'),(583,'Registró el usuario carlos@correo.com','0','2019-04-29 16:57:33'),(584,'Registró el usuario ana@correo.com','0','2019-04-29 16:58:57'),(585,'Actualizó el usuario ana@correo.com','0','2019-04-29 17:00:55'),(586,'Actualizó el usuario carlos@correo.com','0','2019-04-29 17:01:10'),(587,'Actualizó el usuario maria@correo.com','0','2019-04-29 17:01:23'),(588,'Actualizó el usuario ana@correo.com','0','2019-04-29 17:01:36'),(589,'Ingreso al sistema','0','2019-05-01 22:56:44'),(590,'Registró el Insumo sal','0','2019-05-01 23:02:43'),(591,'Registró la Compra ','0','2019-05-01 23:03:03'),(592,'Ingreso al sistema','0','2019-05-01 23:09:36'),(593,'Eliminó el Insumo [27]','0','2019-05-01 23:10:57'),(594,'Ingreso al sistema','0','2019-05-01 23:27:19'),(595,'Ingreso al sistema','0','2019-05-01 23:37:36'),(596,'Registró el usuario df@df','0','2019-05-01 23:39:41'),(597,'Actualizó el usuario df@df','0','2019-05-01 23:39:53'),(598,'Ingreso al sistema','0','2019-05-02 14:40:22'),(599,'Registró la Compra ','0','2019-05-02 14:47:20'),(600,'Registró la Compra ','0','2019-05-02 15:19:47'),(601,'Registró el Pedido 21','0','2019-05-02 15:21:34'),(602,'Registró el Pedido 21','0','2019-05-02 15:25:20'),(603,'Registró el Pedido ','0','2019-05-02 15:27:51'),(604,'Registró el Pedido 25','0','2019-05-02 15:28:01'),(605,'Registró el Pedido ','0','2019-05-02 15:30:30'),(606,'Registró el Pedido 26','0','2019-05-02 15:30:38'),(607,'Ingreso al sistema','0','2019-05-03 13:41:39'),(608,'Registró el SUM ','0','2019-05-03 13:47:56'),(609,'Actualizó el usuario superadmin@superadmin','0','2019-05-03 13:49:27'),(610,'Ingreso al sistema','0','2019-05-03 13:49:45'),(611,'Registró el Pedido 25','0','2019-05-03 14:32:55'),(612,'Registró el Pedido 25','0','2019-05-03 14:34:20'),(613,'Registró el Pedido 25','0','2019-05-03 14:35:49'),(614,'Registró el Pedido ','0','2019-05-03 14:36:23'),(615,'Registró el Pedido 27','0','2019-05-03 14:36:49'),(616,'Actualizó el Pedido 27','0','2019-05-03 14:41:42'),(617,'Actualizó el Pedido 27','0','2019-05-03 14:46:00'),(618,'Registró el Pedido ','0','2019-05-03 14:46:43'),(619,'Registró el Pedido 28','0','2019-05-03 14:47:38'),(620,'Registró el Pedido 28','0','2019-05-03 14:48:22'),(621,'Registró el Pedido ','0','2019-05-03 14:49:30'),(622,'Registró el Pedido 29','0','2019-05-03 14:49:48'),(623,'Registró el Pedido ','0','2019-05-03 14:53:20'),(624,'Registró el Pedido 30','0','2019-05-03 14:53:35'),(625,'Registró el Pedido 30','0','2019-05-03 14:55:13'),(626,'Actualizó el Pedido 30','0','2019-05-03 14:56:53'),(627,'Registró el Pedido 30','0','2019-05-03 15:15:49'),(628,'Registró el Pedido 30','0','2019-05-03 15:16:14'),(629,'Registró el Pedido 30','0','2019-05-03 15:16:57'),(630,'Registró el Pedido 25','0','2019-05-03 16:03:21'),(631,'Registró el Pedido 25','0','2019-05-03 16:03:29'),(632,'Registró el Insumo tomate','0','2019-05-03 16:19:16'),(633,'Registró el Insumo lechuga','0','2019-05-03 16:19:29'),(634,'Registró el Insumo ají','0','2019-05-03 16:19:48'),(635,'Registró el Insumo pollo','0','2019-05-03 16:20:13'),(636,'Registró el Insumo carne','0','2019-05-03 16:20:21'),(637,'Registró la Compra ','0','2019-05-03 16:21:09'),(638,'Registró la Compra ','0','2019-05-03 16:21:18'),(639,'Registró la Compra ','0','2019-05-03 16:21:31'),(640,'Registró la Compra ','0','2019-05-03 16:21:47'),(641,'Registró la Compra ','0','2019-05-03 16:21:58'),(642,'Registró la Compra ','0','2019-05-03 16:22:08'),(643,'Registró la Compra ','0','2019-05-03 16:22:49'),(644,'Registró la Compra ','0','2019-05-03 16:22:59'),(645,'Registró la Compra ','0','2019-05-03 16:23:28'),(646,'Registró la Compra ','0','2019-05-03 16:23:39'),(647,'Registró la Compra ','0','2019-05-03 16:23:57'),(648,'Registró la Compra ','0','2019-05-03 16:24:31'),(649,'Ingreso al sistema','0','2019-05-04 01:12:00'),(650,'Ingreso al sistema','0','2019-05-04 19:15:41'),(651,'Ingreso al sistema','0','2019-05-04 21:07:08'),(652,'Registró el Pedido ','0','2019-05-04 21:49:20'),(653,'Registró el Pedido 31','0','2019-05-04 21:51:01'),(654,'Ingreso al sistema','0','2019-05-05 12:38:21'),(655,'Ingreso al sistema','0','2019-05-05 16:25:01'),(656,'Registró el Pedido ','0','2019-05-05 16:25:20'),(657,'Registró el Pedido 32','0','2019-05-05 16:25:33'),(658,'Ingreso al sistema','0','2019-05-05 16:29:15'),(659,'Ingreso al sistema','0','2019-05-05 17:07:29'),(660,'Ingreso al sistema','0','2019-05-05 20:01:55'),(661,'Registró el Pedido ','0','2019-05-05 20:51:56'),(662,'Registró el Pedido 33','0','2019-05-05 20:52:26'),(663,'Registró el Pedido ','0','2019-05-05 20:54:31'),(664,'Registró el Pedido 34','0','2019-05-05 20:54:45'),(665,'Actualizó el Pedido 34','0','2019-05-05 20:56:10'),(666,'Actualizó el Pedido 34','0','2019-05-05 20:56:19'),(667,'Actualizó el Pedido 34','0','2019-05-05 20:56:28'),(668,'Ingreso al sistema','0','2019-05-05 21:20:34'),(669,'Ingreso al sistema','0','2019-05-05 21:40:48'),(670,'Registró el Pedido ','0','2019-05-05 21:47:21'),(671,'Registró el Pedido 35','0','2019-05-05 21:47:36'),(672,'Registró el Pedido ','0','2019-05-05 21:56:52'),(673,'Registró el Pedido 36','0','2019-05-05 21:57:07'),(674,'Ingreso al sistema','0','2019-05-06 10:53:54'),(675,'Registró el Pedido 25','0','2019-05-06 11:02:17'),(676,'Ingreso al sistema','0','2019-05-06 11:20:52'),(677,'Registró el Pedido ','0','2019-05-06 12:43:52'),(678,'Registró el Pedido 37','0','2019-05-06 12:44:00'),(679,'Registró el Pedido ','0','2019-05-06 12:44:21'),(680,'Registró el Pedido 38','0','2019-05-06 12:44:33'),(681,'Registró el Pedido ','0','2019-05-06 12:44:53'),(682,'Registró el Pedido 39','0','2019-05-06 12:45:03'),(683,'Registró el Pedido 39','0','2019-05-06 12:45:48'),(684,'Registró el Pedido 40','0','2019-05-06 12:49:59'),(685,'Registró el Pedido ','0','2019-05-06 15:21:28'),(686,'Registró el Pedido 41','0','2019-05-06 15:21:37'),(687,'Registró el Pedido ','0','2019-05-06 15:22:13'),(688,'Registró el Pedido 42','0','2019-05-06 15:22:19'),(689,'Registró el Pedido ','0','2019-05-06 15:27:32'),(690,'Registró el Pedido 43','0','2019-05-06 15:27:39'),(691,'Registró el Pedido 43','0','2019-05-06 15:38:58'),(692,'Registró el Pedido 43','0','2019-05-06 16:06:56'),(693,'Registró el Pedido 43','0','2019-05-06 16:20:34'),(694,'Registró el Pedido 43','0','2019-05-06 16:24:14'),(695,'Registró el Pedido 43','0','2019-05-06 16:31:07'),(696,'Registró el Pedido ','0','2019-05-06 16:32:42'),(697,'Registró el Pedido 44','0','2019-05-06 16:32:47'),(698,'Registró el Pedido ','0','2019-05-06 16:37:51'),(699,'Registró el Pedido 45','0','2019-05-06 16:38:07'),(700,'Registró el Pedido 45','0','2019-05-06 16:38:41'),(701,'Registró el Pedido 45','0','2019-05-06 16:38:53'),(702,'Registró el Pedido ','0','2019-05-06 16:52:12'),(703,'Registró el Pedido 46','0','2019-05-06 16:52:26'),(704,'Registró el Pedido ','0','2019-05-06 16:53:14'),(705,'Registró el Pedido 47','0','2019-05-06 16:53:20'),(706,'Registró el Pedido ','0','2019-05-06 17:00:41'),(707,'Registró el Pedido 48','0','2019-05-06 17:00:53'),(708,'Ingreso al sistema','0','2019-05-07 14:08:00'),(709,'Registró el usuario ','0','2019-05-07 15:06:09'),(710,'Intentó registrar un usuario con el mismo correo []','0','2019-05-07 15:07:17'),(711,'Registró el usuario andy@gmail.com','0','2019-05-07 16:10:56'),(712,'Registró el usuario test@test','0','2019-05-07 16:32:04'),(713,'Registró el usuario test@test','0','2019-05-07 16:33:51'),(714,'Registró el usuario a@a','0','2019-05-07 16:39:21'),(715,'Registró el usuario tes2t@test2','0','2019-05-07 16:46:28'),(716,'Registró el usuario test@test','0','2019-05-07 16:48:55'),(717,'Registró el usuario andy@gmail.com','0','2019-05-07 16:50:23'),(718,'Registró el Pedido ','0','2019-05-07 19:01:36'),(719,'Registró el Pedido 49','0','2019-05-07 19:02:25'),(720,'Registró el Pedido 49','0','2019-05-07 19:03:02'),(721,'Registró el Pedido 46','0','2019-05-07 21:55:42'),(722,'Registró el Pedido 48','0','2019-05-07 21:57:21'),(723,'Ingreso al sistema','0','2019-05-08 16:15:14'),(724,'Registró el Pedido ','0','2019-05-08 19:00:13'),(725,'Registró el Pedido ','0','2019-05-08 19:20:34'),(726,'Registró el Pedido ','0','2019-05-08 19:22:12'),(727,'Registró el Pedido 52','0','2019-05-08 19:27:10'),(728,'Registró el Pedido 52','0','2019-05-08 19:28:41'),(729,'Registró el Pedido 52','0','2019-05-08 19:32:56'),(730,'Registró el Pedido 52','0','2019-05-08 19:33:08'),(731,'Registró el Pedido 52','0','2019-05-08 19:35:31'),(732,'Registró el Pedido ','0','2019-05-08 19:51:04'),(733,'Registró el Pedido 53','0','2019-05-08 19:51:15'),(734,'Registró el Pedido 53','0','2019-05-08 19:54:00'),(735,'Registró el Pedido ','0','2019-05-08 20:05:08'),(736,'Registró el Pedido 54','0','2019-05-08 20:05:15'),(737,'Registró el Pedido 54','0','2019-05-08 20:05:32'),(738,'Registró el Pedido ','0','2019-05-08 20:08:09'),(739,'Registró el Pedido 55','0','2019-05-08 20:08:16'),(740,'Registró el Pedido 55','0','2019-05-08 20:08:41'),(741,'Registró el Pedido ','0','2019-05-08 20:09:24'),(742,'Registró el Pedido ','0','2019-05-08 20:10:17'),(743,'Registró el Pedido 56','0','2019-05-08 20:11:46'),(744,'Registró el Pedido 57','0','2019-05-08 20:11:46'),(745,'Registró el Pedido 57','0','2019-05-08 20:13:15'),(746,'Registró el Pedido 56','0','2019-05-08 20:13:37'),(747,'Registró el Pedido 57','0','2019-05-08 20:14:07'),(748,'Registró el Pedido 56','0','2019-05-08 20:14:26'),(749,'Ingreso al sistema','0','2019-05-09 09:51:27'),(750,'Registró el Pedido ','0','2019-05-09 10:03:32'),(751,'Registró el Pedido 58','0','2019-05-09 10:03:48'),(752,'Registró el Pedido 58','0','2019-05-09 10:03:58'),(753,'Registró el Pedido ','0','2019-05-09 10:37:04'),(754,'Actualizó las configuraciones ','0','2019-05-09 12:36:38'),(755,'Actualizó las configuraciones ','0','2019-05-09 12:38:06'),(756,'Actualizó las configuraciones ','0','2019-05-09 12:38:25'),(757,'Actualizó las configuraciones ','0','2019-05-09 12:39:04'),(758,'Actualizó las configuraciones ','0','2019-05-09 12:39:26'),(759,'Actualizó las configuraciones ','0','2019-05-09 12:43:07'),(760,'Actualizó las configuraciones ','0','2019-05-09 12:45:26'),(761,'Actualizó las configuraciones ','0','2019-05-09 12:45:40'),(762,'Actualizó las configuraciones ','0','2019-05-09 12:46:41'),(763,'Ingreso al sistema','0','2019-05-09 12:46:51'),(764,'Actualizó las configuraciones ','0','2019-05-09 12:47:02'),(765,'Actualizó las configuraciones ','0','2019-05-09 12:47:18'),(766,'Actualizó las configuraciones ','0','2019-05-09 12:48:13'),(767,'Ingreso al sistema','0','2019-05-09 12:49:19'),(768,'Actualizó las configuraciones ','0','2019-05-09 12:49:27'),(769,'Ingreso al sistema','0','2019-05-09 12:55:22'),(770,'Registró el Pedido ','0','2019-05-09 14:12:21'),(771,'Registró el Pedido ','0','2019-05-09 15:46:57'),(772,'Registró el Pedido ','0','2019-05-09 16:15:08'),(773,'Ingreso al sistema','0','2019-05-12 12:33:01'),(774,'Ingreso al sistema','0','2019-05-12 19:40:23'),(775,'Registró el usuario a@a','0','2019-05-12 22:06:40'),(776,'Registró el usuario a2@a','0','2019-05-12 22:11:16'),(777,'Registró el Pedido ','0','2019-05-12 22:17:59'),(778,'Registró el SUM ','0','2019-05-12 22:19:59'),(779,'Registró el Pedido ','0','2019-05-12 22:22:56'),(780,'Eliminó el Menu [7]','0','2019-05-12 22:23:12'),(781,'Eliminó el Menu [5]','0','2019-05-12 22:23:26'),(782,'Eliminó el Menu [6]','0','2019-05-12 22:23:29'),(783,'Eliminó el Menu [8]','0','2019-05-12 22:23:33'),(784,'Eliminó el Menu [9]','0','2019-05-12 22:23:36'),(785,'Registró el SUM ','0','2019-05-12 22:24:13'),(786,'Registró el SUM ','0','2019-05-12 22:24:36'),(787,'Registró el SUM ','0','2019-05-12 22:24:55'),(788,'Registró el SUM ','0','2019-05-12 22:25:12'),(789,'Registró el SUM ','0','2019-05-12 22:25:32'),(790,'Registró el SUM ','0','2019-05-12 22:26:10'),(791,'Registró el SUM ','0','2019-05-12 22:26:57'),(792,'Registró el SUM ','0','2019-05-12 22:28:07'),(793,'Registró el SUM ','0','2019-05-12 22:29:16'),(794,'Registró el SUM ','0','2019-05-12 22:29:38'),(795,'Registró el Pedido 64','0','2019-05-12 22:35:05'),(796,'Registró el Pedido 64','0','2019-05-12 22:43:37'),(797,'Registró el Pedido 64','0','2019-05-12 22:44:53'),(798,'Registró el Pedido 64','0','2019-05-12 22:46:36'),(799,'Registró el Pedido 64','0','2019-05-12 22:54:44'),(800,'Registró el SUM ','0','2019-05-12 23:00:40'),(801,'Registró el Pedido 64','0','2019-05-12 23:01:37'),(802,'Registró el Pedido ','0','2019-05-12 23:02:54'),(803,'Registró el Pedido 65','0','2019-05-12 23:03:00'),(804,'Registró el Pedido 65','0','2019-05-12 23:03:04'),(805,'Registró el SUM ','0','2019-05-12 23:05:25'),(806,'Registró el Pedido 65','0','2019-05-12 23:05:52'),(807,'Registró el Pedido ','0','2019-05-12 23:06:53'),(808,'Ingreso al sistema','0','2019-05-12 23:08:11'),(809,'Ingreso al sistema','0','2019-05-12 23:10:13'),(810,'Ingreso al sistema','0','2019-05-13 10:40:37'),(811,'Eliminó la Mesa [4]','0','2019-05-13 10:46:31'),(812,'Actualizó la Mesa Mesa 1 A1','0','2019-05-13 10:47:04'),(813,'Actualizó la Mesa Mesa2 A1','0','2019-05-13 10:47:18'),(814,'Actualizó la Mesa Mesa 2 A1','0','2019-05-13 10:47:25'),(815,'Actualizó la Mesa Mesa 3 A3','0','2019-05-13 10:47:34'),(816,'Registró la Mesa Mesa 1 A2','0','2019-05-13 10:47:56'),(817,'Registró la Mesa Mesa 2 A2','0','2019-05-13 10:48:08'),(818,'Registró la Mesa Mesa 3 A3','0','2019-05-13 10:48:29'),(819,'Actualizó la Mesa Mesa 2 A3','0','2019-05-13 10:48:47'),(820,'Registró la Mesa Mesa 4 A1','0','2019-05-13 11:00:37'),(821,'Ingreso al sistema','0','2019-05-13 11:11:00'),(822,'Ingreso al sistema','0','2019-05-13 11:11:13'),(823,'Ingreso al sistema','0','2019-05-13 11:12:51'),(824,'Ingreso al sistema','0','2019-05-13 11:13:08'),(825,'Actualizó el SUM ','0','2019-05-13 11:21:58'),(826,'Actualizó el SUM ','0','2019-05-13 11:22:12'),(827,'Actualizó las configuraciones ','0','2019-05-13 11:32:22'),(828,'Actualizó las configuraciones ','0','2019-05-13 11:32:27'),(829,'Actualizó las configuraciones ','0','2019-05-13 11:32:49'),(830,'Actualizó las configuraciones ','0','2019-05-13 11:33:34'),(831,'Actualizó las configuraciones ','0','2019-05-13 11:33:41'),(832,'Ingreso al sistema','0','2019-05-13 11:43:15'),(833,'Ingreso al sistema','0','2019-05-13 11:46:13'),(834,'Ingreso al sistema','0','2019-05-13 11:54:24'),(835,'Actualizó el SUM ','0','2019-05-13 11:54:39'),(836,'Registró la Mesa mesa 10','0','2019-05-13 11:55:06'),(837,'Ingreso al sistema','0','2019-05-13 12:13:45'),(838,'Actualizó la Mesa Mesa 1 A454','0','2019-05-13 12:14:01'),(839,'Actualizó la Mesa Mesa 1 A45456','0','2019-05-13 12:14:15'),(840,'Actualizó la Mesa Mesa 1 A454444','0','2019-05-13 12:14:30'),(841,'Actualizó la Mesa Mesa 1 A4554654','0','2019-05-13 12:16:32'),(842,'Ingreso al sistema','0','2019-05-13 12:17:15'),(843,'Actualizó el SUM ','0','2019-05-13 12:17:28'),(844,'Actualizó la Mesa Mesa 1 A4554654','0','2019-05-13 12:17:43'),(845,'Eliminó la Mesa [1]','0','2019-05-13 12:17:47'),(846,'Actualizó la Mesa Mesa 1 local1','0','2019-05-13 12:18:03'),(847,'Actualizó la Mesa mesa 2 local1','0','2019-05-13 12:18:11'),(848,'Actualizó la Mesa Mesa 3 local1','0','2019-05-13 12:18:24'),(849,'Actualizó la Mesa Mesa 1 local2','0','2019-05-13 12:18:39'),(850,'Actualizó la Mesa Mesa 2 local2','0','2019-05-13 12:18:47'),(851,'Actualizó la Mesa Mesa 3 local2','0','2019-05-13 12:19:00'),(852,'Eliminó la Mesa [8]','0','2019-05-13 12:19:05'),(853,'Actualizó el usuario maria@correo.com','0','2019-05-13 12:19:31'),(854,'Actualizó el usuario df@df','0','2019-05-13 12:19:55'),(855,'Actualizó el usuario carlos@correo.com','0','2019-05-13 12:20:17'),(856,'Registró el usuario cocinero@local2.com','0','2019-05-13 12:20:58'),(857,'Ingreso al sistema','mesero@local1.com','2019-05-13 12:23:05'),(858,'Registró el Pedido ','mesero@local1.com','2019-05-13 12:23:21'),(859,'Ingreso al sistema','0','2019-05-13 13:30:34'),(860,'Registró el Pedido ','0','2019-05-13 13:31:26'),(861,'Registró el Pedido 68','0','2019-05-13 13:31:46'),(862,'Registró el Pedido 68','0','2019-05-13 13:31:54'),(863,'Registró el Pedido 68','0','2019-05-13 13:32:01'),(864,'Registró el Pedido 68','0','2019-05-13 13:32:09'),(865,'Registró el Pedido ','0','2019-05-13 13:34:04'),(866,'Registró el Pedido 69','0','2019-05-13 13:34:13'),(867,'Registró el Pedido 69','0','2019-05-13 13:34:22'),(868,'Ingreso al sistema','0','2019-05-13 13:35:39'),(869,'Ingreso al sistema','0','2019-05-13 16:39:51'),(870,'Ingreso al sistema','0','2019-05-13 16:40:26'),(871,'Ingreso al sistema','mesero@local1.com','2019-05-13 16:40:45'),(872,'Ingreso al sistema','superadmin@superadmin','2019-05-13 16:41:11'),(873,'Ingreso al sistema','0','2019-05-13 16:41:29'),(874,'Ingreso al sistema','0','2019-05-13 16:41:41'),(875,'Ingreso al sistema','0','2019-05-13 16:41:59'),(876,'Ingreso al sistema','0','2019-05-13 16:42:17'),(877,'Ingreso al sistema','0','2019-05-13 16:43:44'),(878,'Ingreso al sistema','mesero@local1.com','2019-05-13 16:46:21'),(879,'Ingreso al sistema','0','2019-05-13 16:47:16'),(880,'Ingreso al sistema','0','2019-05-13 16:47:48'),(881,'Ingreso al sistema','0','2019-05-13 16:48:38'),(882,'Ingreso al sistema','0','2019-05-13 16:52:55'),(883,'Ingreso al sistema','superadmin@superadmin','2019-05-14 13:01:16'),(884,'Ingreso al sistema','0','2019-05-14 13:03:56'),(885,'Ingreso al sistema','0','2019-05-14 13:04:33'),(886,'Ingreso al sistema','0','2019-05-14 13:05:02'),(887,'Registró el Pedido ','0','2019-05-14 13:05:41'),(888,'Registró el Pedido 70','0','2019-05-14 13:05:49'),(889,'Ingreso al sistema','0','2019-05-14 13:06:37'),(890,'Ingreso al sistema','0','2019-05-14 13:07:52'),(891,'Ingreso al sistema','0','2019-05-14 13:18:05'),(892,'Ingreso al sistema','0','2019-05-14 13:18:32'),(893,'Ingreso al sistema','0','2019-05-14 13:22:14'),(894,'Ingreso al sistema','0','2019-05-14 13:22:40'),(895,'Ingreso al sistema','0','2019-05-14 13:34:35'),(896,'Registró el Pedido ','0','2019-05-14 13:34:47'),(897,'Registró el Pedido 71','0','2019-05-14 13:35:26'),(898,'Registró el Pedido 71','0','2019-05-14 13:35:39'),(899,'Ingreso al sistema','0','2019-05-14 13:36:22'),(900,'Ingreso al sistema','0','2019-05-14 13:44:50'),(901,'Ingreso al sistema','cocinero@local1.com','2019-05-14 13:45:59'),(902,'Ingreso al sistema','0','2019-05-14 13:49:14'),(903,'Ingreso al sistema','0','2019-05-14 13:55:38'),(904,'Ingreso al sistema','0','2019-05-14 13:57:04'),(905,'Ingreso al sistema','0','2019-05-14 13:58:44'),(906,'Ingreso al sistema','0','2019-05-14 13:59:19'),(907,'Ingreso al sistema','0','2019-05-14 13:59:31'),(908,'Ingreso al sistema','0','2019-05-14 13:59:45'),(909,'Ingreso al sistema','0','2019-05-14 14:09:11'),(910,'Ingreso al sistema','0','2019-05-14 14:15:20'),(911,'Ingreso al sistema','0','2019-05-14 14:16:28'),(912,'Ingreso al sistema','0','2019-05-14 14:17:55'),(913,'Ingreso al sistema','0','2019-05-14 14:19:12'),(914,'Ingreso al sistema','0','2019-05-14 15:01:39'),(915,'Ingreso al sistema','0','2019-05-14 15:04:28'),(916,'Ingreso al sistema','0','2019-05-14 15:05:28'),(917,'Registró el Pedido ','0','2019-05-14 15:09:49'),(918,'Registró el Pedido ','0','2019-05-14 15:10:34'),(919,'Ingreso al sistema','0','2019-05-14 15:11:28'),(920,'Ingreso al sistema','mesero@local2.com','2019-05-14 15:14:08'),(921,'Ingreso al sistema','0','2019-05-14 15:17:20'),(922,'Ingreso al sistema','0','2019-05-14 15:17:31'),(923,'Ingreso al sistema','0','2019-05-14 15:17:41'),(924,'Ingreso al sistema','0','2019-05-14 15:18:23'),(925,'Ingreso al sistema','0','2019-05-14 15:19:10'),(926,'Ingreso al sistema','0','2019-05-14 15:22:12'),(927,'Ingreso al sistema','0','2019-05-14 15:22:19'),(928,'Ingreso al sistema','0','2019-05-14 15:23:03'),(929,'Ingreso al sistema','0','2019-05-14 15:23:24'),(930,'Ingreso al sistema','0','2019-05-14 15:23:51'),(931,'Ingreso al sistema','0','2019-05-14 15:26:10'),(932,'Ingreso al sistema','0','2019-05-14 15:26:23'),(933,'Registró el Pedido 73','0','2019-05-14 15:26:45'),(934,'Ingreso al sistema','0','2019-05-14 15:28:40'),(935,'Ingreso al sistema','0','2019-05-14 15:33:55'),(936,'Ingreso al sistema','0','2019-05-14 15:36:15'),(937,'Ingreso al sistema','cocinero@local2.com','2019-05-14 15:45:21'),(938,'Ingreso al sistema','0','2019-05-14 15:46:12'),(939,'Ingreso al sistema','0','2019-05-14 15:48:58'),(940,'Ingreso al sistema','0','2019-05-14 16:05:14'),(941,'Ingreso al sistema','0','2019-05-14 16:05:27'),(942,'Ingreso al sistema','0','2019-05-14 16:05:47'),(943,'Ingreso al sistema','0','2019-05-14 16:06:08'),(944,'Ingreso al sistema','0','2019-05-14 16:06:45'),(945,'Ingreso al sistema','0','2019-05-14 16:07:06'),(946,'Registró el Pedido ','0','2019-05-14 16:07:20'),(947,'Registró el Pedido 74','0','2019-05-14 16:07:33'),(948,'Ingreso al sistema','0','2019-05-14 16:08:17'),(949,'Ingreso al sistema','0','2019-05-14 16:08:29'),(950,'Ingreso al sistema','0','2019-05-14 16:09:41'),(951,'Ingreso al sistema','0','2019-05-14 16:09:54'),(952,'Registró el Pedido ','0','2019-05-14 16:10:10'),(953,'Registró el Pedido 75','0','2019-05-14 16:10:18'),(954,'Ingreso al sistema','0','2019-05-14 16:11:11'),(955,'Ingreso al sistema','0','2019-05-14 16:11:39'),(956,'Ingreso al sistema','0','2019-05-14 16:12:38'),(957,'Ingreso al sistema','0','2019-05-14 16:16:34'),(958,'Registró la Compra ','0','2019-05-14 16:16:54'),(959,'Ingreso al sistema','0','2019-05-14 16:17:12'),(960,'Ingreso al sistema','0','2019-05-14 16:21:05'),(961,'Actualizó el Insumo carne','0','2019-05-14 16:22:17'),(962,'Actualizó el Insumo pollo','0','2019-05-14 16:22:28'),(963,'Ingreso al sistema','0','2019-05-14 16:22:40'),(964,'Ingreso al sistema','0','2019-05-14 17:02:43'),(965,'Registró el Pedido ','0','2019-05-14 17:03:32'),(966,'Registró el Pedido 76','0','2019-05-14 17:03:45'),(967,'Ingreso al sistema','0','2019-05-14 17:03:54'),(968,'Ingreso al sistema','0','2019-05-14 17:04:07'),(969,'Ingreso al sistema','superadmin@superadmin','2019-05-15 01:38:11'),(970,'Ingreso al sistema','0','2019-05-15 01:39:40'),(971,'Ingreso al sistema','0','2019-05-15 01:40:58'),(972,'Ingreso al sistema','0','2019-05-15 01:43:45'),(973,'Ingreso al sistema','0','2019-05-15 11:19:43'),(974,'Ingreso al sistema','0','2019-05-15 11:19:53'),(975,'Ingreso al sistema','0','2019-05-15 11:20:04'),(976,'Registró el Pedido ','0','2019-05-15 11:24:49'),(977,'Registró el Pedido 77','0','2019-05-15 11:24:57'),(978,'Ingreso al sistema','0','2019-05-15 11:25:18'),(979,'Ingreso al sistema','0','2019-05-15 11:33:58'),(980,'Ingreso al sistema','0','2019-05-15 11:35:57'),(981,'Ingreso al sistema','0','2019-05-15 11:39:09'),(982,'Ingreso al sistema','cocinero@local2.com','2019-05-15 11:39:32'),(983,'Ingreso al sistema','0','2019-05-15 11:39:47'),(984,'Ingreso al sistema','0','2019-05-15 11:40:18'),(985,'Registró el Pedido ','0','2019-05-15 11:40:38'),(986,'Registró el Pedido 78','0','2019-05-15 11:41:04'),(987,'Registró el Pedido 78','0','2019-05-15 11:41:08'),(988,'Ingreso al sistema','0','2019-05-15 11:41:30'),(989,'Ingreso al sistema','0','2019-05-15 12:05:43'),(990,'Ingreso al sistema','0','2019-05-15 12:06:51'),(991,'Ingreso al sistema','0','2019-05-15 12:07:31'),(992,'Ingreso al sistema','0','2019-05-15 12:13:54'),(993,'Ingreso al sistema','0','2019-05-15 12:32:06'),(994,'Ingreso al sistema','0','2019-05-15 12:32:21'),(995,'Ingreso al sistema','0','2019-05-15 12:33:05'),(996,'Ingreso al sistema','0','2019-05-15 12:40:36'),(997,'Ingreso al sistema','0','2019-05-15 12:42:04'),(998,'Registró el Pedido ','0','2019-05-15 12:42:10'),(999,'Registró el Pedido 79','0','2019-05-15 12:42:20'),(1000,'Registró el Pedido 79','0','2019-05-15 12:42:26'),(1001,'Ingreso al sistema','0','2019-05-15 12:42:37'),(1002,'Ingreso al sistema','0','2019-05-15 12:43:07'),(1003,'Registró el Pedido ','0','2019-05-15 12:44:21'),(1004,'Registró el Pedido 80','0','2019-05-15 12:44:25'),(1005,'Ingreso al sistema','0','2019-05-15 12:52:00'),(1006,'Registró la Compra ','0','2019-05-15 12:58:58'),(1007,'Actualizó el Insumo tomate','0','2019-05-15 13:00:38'),(1008,'Actualizó el Insumo tomate','0','2019-05-15 13:01:09'),(1009,'Actualizó el Insumo tomate','0','2019-05-15 13:01:16'),(1010,'Actualizó el Insumo tomate','0','2019-05-15 13:01:44'),(1011,'Actualizó el Insumo ají','0','2019-05-15 13:30:52'),(1012,'Ingreso al sistema','0','2019-05-15 13:31:29'),(1013,'Ingreso al sistema','0','2019-05-15 13:31:46'),(1014,'Ingreso al sistema','0','2019-05-15 13:33:18'),(1015,'Ingreso al sistema','0','2019-05-15 13:34:59'),(1016,'Ingreso al sistema','0','2019-05-15 13:51:07'),(1017,'Actualizó el Insumo ají','0','2019-05-15 13:52:12'),(1018,'Registró el Pedido 79','0','2019-05-15 15:41:31'),(1019,'Registró el Pedido 79','0','2019-05-15 15:42:33'),(1020,'Registró el Pedido 79','0','2019-05-15 15:42:38'),(1021,'Ingreso al sistema','0','2019-05-15 15:45:43'),(1022,'Ingreso al sistema','superadmin@superadmin','2019-05-15 15:46:24'),(1023,'Registró la Compra ','superadmin@superadmin','2019-05-15 15:46:39'),(1024,'Ingreso al sistema','0','2019-05-15 15:49:31'),(1025,'Ingreso al sistema','0','2019-05-15 15:50:12'),(1026,'Actualizó las configuraciones ','0','2019-05-15 16:05:42'),(1027,'Actualizó las configuraciones ','0','2019-05-15 16:05:47'),(1028,'Actualizó las configuraciones ','0','2019-05-15 16:06:31'),(1029,'Actualizó las configuraciones ','0','2019-05-15 16:08:01'),(1030,'Actualizó las configuraciones ','0','2019-05-15 16:09:14'),(1031,'Actualizó las configuraciones ','0','2019-05-15 16:18:27'),(1032,'Actualizó las configuraciones ','0','2019-05-15 16:18:35'),(1033,'Actualizó las configuraciones ','0','2019-05-15 16:18:40'),(1034,'Actualizó las configuraciones ','0','2019-05-15 16:19:28');
/*!40000 ALTER TABLE `TLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TPAM`
--

DROP TABLE IF EXISTS `TPAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TPAM` (
  `ID_PAM` int(11) NOT NULL AUTO_INCREMENT,
  `Año` int(11) DEFAULT NULL,
  `ID_Edificio` int(11) DEFAULT NULL,
  `Observaciones` text,
  `Importe` double DEFAULT NULL,
  `Cerrado` int(11) DEFAULT NULL,
  `MesInicio` int(11) DEFAULT NULL,
  `UsuarioAlta` varchar(200) DEFAULT NULL,
  `UsuarioMod` varchar(200) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaMod` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_PAM`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TPAM`
--

LOCK TABLES `TPAM` WRITE;
/*!40000 ALTER TABLE `TPAM` DISABLE KEYS */;
INSERT INTO `TPAM` VALUES (4,2019,1,'',0,NULL,4,'superadmin@superadmin','superadmin@superadmin','2019-04-03 03:14:00','2019-04-03 03:14:00');
/*!40000 ALTER TABLE `TPAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TPAMMesSubRubro`
--

DROP TABLE IF EXISTS `TPAMMesSubRubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TPAMMesSubRubro` (
  `ID_SubRubro` int(11) NOT NULL,
  `ID_PAM` int(11) NOT NULL,
  `Mes` int(11) NOT NULL,
  `Importe` double DEFAULT NULL,
  PRIMARY KEY (`ID_SubRubro`,`ID_PAM`,`Mes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TPAMMesSubRubro`
--

LOCK TABLES `TPAMMesSubRubro` WRITE;
/*!40000 ALTER TABLE `TPAMMesSubRubro` DISABLE KEYS */;
INSERT INTO `TPAMMesSubRubro` VALUES (9,4,1,83.37),(9,4,2,83.33),(9,4,3,83.33),(9,4,4,83.33),(9,4,5,83.33),(9,4,6,83.33),(9,4,7,83.33),(9,4,8,83.33),(9,4,9,83.33),(9,4,10,83.33),(9,4,11,83.33),(9,4,12,83.33),(10,4,1,250),(10,4,2,250),(10,4,3,250),(10,4,4,250),(10,4,5,250),(10,4,6,250),(10,4,7,250),(10,4,8,250),(10,4,9,250),(10,4,10,250),(10,4,11,250),(10,4,12,250),(11,4,1,100),(11,4,2,100),(11,4,3,100),(11,4,4,100),(11,4,5,100),(11,4,6,100),(11,4,7,100),(11,4,8,100),(11,4,9,100),(11,4,10,100),(11,4,11,100),(11,4,12,100);
/*!40000 ALTER TABLE `TPAMMesSubRubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TPAMMesSubRubroGasto`
--

DROP TABLE IF EXISTS `TPAMMesSubRubroGasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TPAMMesSubRubroGasto` (
  `ID_SubRubroGasto` int(11) NOT NULL,
  `ID_PAM` int(11) NOT NULL,
  `Mes` int(11) NOT NULL,
  `Importe` double DEFAULT NULL,
  `Observacion` varchar(500) DEFAULT NULL,
  `UsuarioAlta` varchar(250) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_SubRubroGasto`,`ID_PAM`,`Mes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TPAMMesSubRubroGasto`
--

LOCK TABLES `TPAMMesSubRubroGasto` WRITE;
/*!40000 ALTER TABLE `TPAMMesSubRubroGasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `TPAMMesSubRubroGasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TPAMSubRubro`
--

DROP TABLE IF EXISTS `TPAMSubRubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TPAMSubRubro` (
  `ID_PAM` int(11) NOT NULL,
  `ID_Subrubro` int(11) NOT NULL,
  `Importe` double DEFAULT NULL,
  PRIMARY KEY (`ID_PAM`,`ID_Subrubro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TPAMSubRubro`
--

LOCK TABLES `TPAMSubRubro` WRITE;
/*!40000 ALTER TABLE `TPAMSubRubro` DISABLE KEYS */;
INSERT INTO `TPAMSubRubro` VALUES (4,9,1000),(4,10,3000),(4,11,1200);
/*!40000 ALTER TABLE `TPAMSubRubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TPerfil`
--

DROP TABLE IF EXISTS `TPerfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TPerfil` (
  `ID_Perfil` int(11) NOT NULL AUTO_INCREMENT,
  `Perfil` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_Perfil`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TPerfil`
--

LOCK TABLES `TPerfil` WRITE;
/*!40000 ALTER TABLE `TPerfil` DISABLE KEYS */;
INSERT INTO `TPerfil` VALUES (1,'Super Administrador'),(2,'Administrador'),(3,'Mesero'),(4,'Cocinero'),(5,'Cliente');
/*!40000 ALTER TABLE `TPerfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TPeriodoSubRubro`
--

DROP TABLE IF EXISTS `TPeriodoSubRubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TPeriodoSubRubro` (
  `ID_PeriodoSubRubro` int(11) NOT NULL AUTO_INCREMENT,
  `PeriodoSubRubro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_PeriodoSubRubro`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TPeriodoSubRubro`
--

LOCK TABLES `TPeriodoSubRubro` WRITE;
/*!40000 ALTER TABLE `TPeriodoSubRubro` DISABLE KEYS */;
INSERT INTO `TPeriodoSubRubro` VALUES (15,'Mensual'),(16,'Bimensual'),(17,'Trimestral'),(18,'Semestral'),(19,'Anual');
/*!40000 ALTER TABLE `TPeriodoSubRubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TReceta`
--

DROP TABLE IF EXISTS `TReceta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TReceta` (
  `ID_Menu` int(11) NOT NULL,
  `ID_Insumo` int(11) NOT NULL,
  `Cantidad` float DEFAULT NULL,
  PRIMARY KEY (`ID_Menu`,`ID_Insumo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TReceta`
--

LOCK TABLES `TReceta` WRITE;
/*!40000 ALTER TABLE `TReceta` DISABLE KEYS */;
INSERT INTO `TReceta` VALUES (6,22,1),(6,24,2),(10,30,0.4),(11,29,0.1),(12,27,0.4),(13,31,0.3),(14,29,0.5),(15,28,0.1),(16,27,0.2),(16,30,1.5),(17,30,0.2),(18,27,0.7),(21,31,0.5),(22,30,0.4);
/*!40000 ALTER TABLE `TReceta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRecibo`
--

DROP TABLE IF EXISTS `TRecibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRecibo` (
  `ID_Recibo` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Edificio` int(11) DEFAULT NULL,
  `ID_UnidadInmobiliaria` int(11) DEFAULT NULL,
  `CorreoPropietario` varchar(200) DEFAULT NULL,
  `CorreoInquilino` varchar(200) DEFAULT NULL,
  `Visualizado` int(11) DEFAULT NULL,
  `Descargado` int(11) DEFAULT NULL,
  `Importe` float DEFAULT NULL,
  `FechaEmision` date DEFAULT NULL,
  `FechaVencimiento` date DEFAULT NULL,
  `Pagado` int(11) DEFAULT NULL,
  `UsuarioAlta` varchar(200) DEFAULT NULL,
  `UsuarioMod` varchar(200) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `FechaMod` datetime DEFAULT NULL,
  `InformePagado` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Recibo`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRecibo`
--

LOCK TABLES `TRecibo` WRITE;
/*!40000 ALTER TABLE `TRecibo` DISABLE KEYS */;
INSERT INTO `TRecibo` VALUES (30,1,24918,'iker@correo.com','',1,1,173.24,'2019-04-02','2019-05-02',1,'superadmin@superadmin','superadmin@superadmin','2019-04-02 05:37:47','2019-04-02 05:37:47',1),(31,1,24919,'Juan@correo.com','',1,0,126.81,'2019-04-02','2019-05-02',1,'superadmin@superadmin','superadmin@superadmin','2019-04-02 05:37:47','2019-04-02 05:37:47',1),(32,1,24920,'Daniel@correo.com','',1,1,144.27,'2019-04-02','2019-05-02',0,'superadmin@superadmin','superadmin@superadmin','2019-04-02 05:37:47','2019-04-02 05:37:47',1),(33,1,24921,'Gerard@correo.com','',1,1,170.3,'2019-04-02','2019-05-02',0,'superadmin@superadmin','superadmin@superadmin','2019-04-02 05:37:47','2019-04-02 05:37:47',NULL),(34,1,24922,'Asier@correo.com','',0,0,115.38,'2019-04-02','2019-05-02',0,'superadmin@superadmin','superadmin@superadmin','2019-04-02 05:37:47','2019-04-02 05:37:47',NULL),(35,1,24923,'Ainhoa@correo.com','',0,0,150.29,'2019-04-02','2019-05-02',0,'superadmin@superadmin','superadmin@superadmin','2019-04-02 05:37:47','2019-04-02 05:37:47',NULL),(36,1,24924,'Iris@correo.com','',1,0,135.77,'2019-04-02','2019-05-02',1,'superadmin@superadmin','superadmin@superadmin','2019-04-02 05:37:47','2019-04-02 05:37:47',1),(37,1,24925,'Claudia @correo.com','',0,0,169.57,'2019-04-02','2019-05-02',0,'superadmin@superadmin','superadmin@superadmin','2019-04-02 05:37:47','2019-04-02 05:37:47',NULL),(39,1,24918,'iker@correo.com','',1,1,174.33,'2019-03-02','2019-04-02',1,'superadmin@superadmin','superadmin@superadmin','2019-04-02 06:04:35','2019-04-02 06:04:35',1),(40,1,24919,'Juan@correo.com','',1,0,170.23,'2019-03-02','2019-04-02',1,'superadmin@superadmin','superadmin@superadmin','2019-04-02 06:04:35','2019-04-02 06:04:35',1),(41,1,24920,'Daniel@correo.com','',1,0,111.87,'2019-03-02','2019-04-02',1,'superadmin@superadmin','superadmin@superadmin','2019-04-02 06:04:35','2019-04-02 06:04:35',1),(42,1,24921,'Gerard@correo.com','',1,1,174.67,'2019-03-02','2019-04-02',1,'superadmin@superadmin','superadmin@superadmin','2019-04-02 06:04:35','2019-04-02 06:04:35',1),(43,1,24922,'Asier@correo.com','',1,0,143.79,'2019-03-02','2019-04-02',1,'superadmin@superadmin','superadmin@superadmin','2019-04-02 06:04:35','2019-04-02 06:04:35',1),(44,1,24923,'Ainhoa@correo.com','',1,0,116.58,'2019-03-02','2019-04-02',1,'superadmin@superadmin','superadmin@superadmin','2019-04-02 06:04:35','2019-04-02 06:04:35',1),(45,1,24924,'Iris@correo.com','',1,0,110.79,'2019-03-02','2019-04-02',1,'superadmin@superadmin','superadmin@superadmin','2019-04-02 06:04:35','2019-04-02 06:04:35',1),(46,1,24925,'Claudia @correo.com','',1,1,101.86,'2019-03-02','2019-04-02',0,'superadmin@superadmin','superadmin@superadmin','2019-04-02 06:04:35','2019-04-02 06:04:35',0);
/*!40000 ALTER TABLE `TRecibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRelacionUIUsuario`
--

DROP TABLE IF EXISTS `TRelacionUIUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRelacionUIUsuario` (
  `ID_RelacionUIUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `ID_UnidadInmobiliaria` int(11) DEFAULT NULL,
  `ID_TipoRelacion` int(11) DEFAULT NULL,
  `Correo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_RelacionUIUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRelacionUIUsuario`
--

LOCK TABLES `TRelacionUIUsuario` WRITE;
/*!40000 ALTER TABLE `TRelacionUIUsuario` DISABLE KEYS */;
INSERT INTO `TRelacionUIUsuario` VALUES (21,24914,1,'cliente@cliente'),(22,24914,2,'prueba@asda');
/*!40000 ALTER TABLE `TRelacionUIUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TSalida`
--

DROP TABLE IF EXISTS `TSalida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TSalida` (
  `ID_Salida` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Insumo` int(11) DEFAULT NULL,
  `Cantidad` decimal(10,1) DEFAULT NULL,
  `FechaHora` datetime DEFAULT NULL,
  `CodUsuario` varchar(100) DEFAULT NULL,
  `ID_Almacen` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Salida`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TSalida`
--

LOCK TABLES `TSalida` WRITE;
/*!40000 ALTER TABLE `TSalida` DISABLE KEYS */;
INSERT INTO `TSalida` VALUES (129,24,6.0,'2019-05-02 15:30:47','superadmin@superadmin',2),(128,22,3.0,'2019-05-02 15:30:47','superadmin@superadmin',2),(130,22,7.0,'2019-05-06 15:14:51','superadmin@superadmin',2),(131,24,14.0,'2019-05-06 15:14:51','superadmin@superadmin',2),(132,22,1.0,'2019-05-06 16:53:45','superadmin@superadmin',3),(133,24,2.0,'2019-05-06 16:53:45','superadmin@superadmin',3),(134,22,1.0,'2019-05-09 12:21:57','superadmin@superadmin',3),(135,24,2.0,'2019-05-09 12:21:57','superadmin@superadmin',3),(136,22,1.0,'2019-05-09 12:22:03','superadmin@superadmin',3),(137,24,2.0,'2019-05-09 12:22:03','superadmin@superadmin',3),(138,27,0.2,'2019-05-14 15:55:49','superadmin@superadmin',2),(139,30,1.5,'2019-05-14 15:55:49','superadmin@superadmin',3),(140,27,0.2,'2019-05-14 16:09:16','cocinero@local2.com',2),(141,30,1.5,'2019-05-14 16:09:16','cocinero@local2.com',2),(142,27,0.2,'2019-05-14 16:11:16','cocinero@local1.com',1),(143,30,1.5,'2019-05-14 16:11:16','cocinero@local1.com',1),(144,27,0.7,'2019-05-15 12:32:40','cocinero@local1.com',1),(145,28,0.1,'2019-05-15 12:32:44','cocinero@local1.com',1),(146,31,0.5,'2019-05-15 12:32:54','cocinero@local1.com',1),(147,29,0.5,'2019-05-15 12:40:42','cocinero@local1.com',1),(148,30,0.2,'2019-05-15 12:40:55','cocinero@local1.com',3),(149,30,1.5,'2019-05-15 12:40:55','cocinero@local1.com',3),(150,30,0.5,'2019-05-15 12:42:47','cocinero@local1.com',3),(151,31,0.5,'2019-05-15 15:40:23','superadmin@superadmin',1),(152,31,0.5,'2019-05-15 15:41:59','superadmin@superadmin',3),(153,31,0.5,'2019-05-15 15:43:18','superadmin@superadmin',3),(154,31,0.5,'2019-05-15 15:43:32','superadmin@superadmin',3);
/*!40000 ALTER TABLE `TSalida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TSubRubro`
--

DROP TABLE IF EXISTS `TSubRubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TSubRubro` (
  `ID_SubRubro` int(11) NOT NULL AUTO_INCREMENT,
  `SubRubro` varchar(200) DEFAULT NULL,
  `ID_Rubro` int(11) DEFAULT NULL,
  `ID_PeriodoSubRubro` int(11) DEFAULT NULL,
  `ID_Mes` int(11) DEFAULT NULL,
  `Orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_SubRubro`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TSubRubro`
--

LOCK TABLES `TSubRubro` WRITE;
/*!40000 ALTER TABLE `TSubRubro` DISABLE KEYS */;
INSERT INTO `TSubRubro` VALUES (9,'Agua Común',5,15,NULL,1),(10,'Enel Areas Comunes',5,15,NULL,2),(11,'Telefono Celular Recepción',5,15,NULL,3),(12,'Personal',6,15,NULL,1),(13,'Mantenimiento Preventivo Ascensor',7,15,NULL,1),(14,'MAntenimiento Preventivo Bombas de Presión Constante',7,15,NULL,2),(15,'Mantenimiento Preventivo BCI',7,19,NULL,3),(16,'Limpieza del Tanque Cisterna y Fumigación',7,16,NULL,4),(17,'Tableros Eléctricos Cuarto de Bombas',7,15,NULL,5),(18,'Jardinero',7,15,NULL,6);
/*!40000 ALTER TABLE `TSubRubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TTipoDocumento`
--

DROP TABLE IF EXISTS `TTipoDocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TTipoDocumento` (
  `ID_TipoDocumento` int(11) NOT NULL AUTO_INCREMENT,
  `TipoDocumento` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_TipoDocumento`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TTipoDocumento`
--

LOCK TABLES `TTipoDocumento` WRITE;
/*!40000 ALTER TABLE `TTipoDocumento` DISABLE KEYS */;
INSERT INTO `TTipoDocumento` VALUES (1,'DNI'),(2,'Pasaporte'),(3,'Carnet Ext.'),(4,'Cédula Ext.'),(5,'Pasaporte Ext.');
/*!40000 ALTER TABLE `TTipoDocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TTraspaso`
--

DROP TABLE IF EXISTS `TTraspaso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TTraspaso` (
  `ID_Traspaso` int(11) NOT NULL AUTO_INCREMENT,
  `FechaTraspaso` datetime DEFAULT NULL,
  `ID_AlmacenOrigen` int(11) NOT NULL,
  `ID_AlmacenDestino` int(11) NOT NULL,
  `ID_Insumo` int(11) NOT NULL,
  `Cantidad` float NOT NULL,
  PRIMARY KEY (`ID_Traspaso`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TTraspaso`
--

LOCK TABLES `TTraspaso` WRITE;
/*!40000 ALTER TABLE `TTraspaso` DISABLE KEYS */;
INSERT INTO `TTraspaso` VALUES (17,'2019-05-04 20:56:25',1,2,28,5),(16,'2019-05-04 20:47:33',1,2,28,5),(15,'2019-05-04 20:46:25',1,3,28,10),(14,'2019-05-04 20:37:06',3,1,28,1),(13,'2019-05-04 20:36:24',3,1,28,1),(12,'2019-05-04 20:31:33',3,2,27,50),(11,'2019-05-04 20:25:47',3,1,30,1),(10,'2019-05-04 20:24:45',3,1,30,1),(18,'2019-05-04 20:58:10',2,1,29,5),(19,'2019-05-04 20:58:57',2,1,27,6),(20,'2019-05-04 20:59:19',1,2,27,8),(21,'2019-05-04 21:00:16',2,1,31,4),(22,'2019-05-04 21:17:08',1,1,29,2),(23,'2019-05-04 21:18:47',2,3,28,5),(24,'2019-05-04 21:19:16',1,2,29,4),(25,'2019-05-04 21:21:14',1,2,29,4),(26,'2019-05-04 21:21:29',1,2,29,4),(27,'2019-05-04 21:21:43',1,2,29,4),(28,'2019-05-04 21:24:01',1,2,29,4),(29,'2019-05-04 21:24:24',1,2,29,4),(30,'2019-05-04 21:24:40',1,2,29,4),(31,'2019-05-04 21:25:42',1,2,29,4),(32,'2019-05-04 21:26:03',1,2,29,4),(33,'2019-05-04 21:26:10',2,3,28,5),(34,'2019-05-04 21:27:21',2,1,29,40),(35,'2019-05-04 21:28:27',1,2,29,4),(36,'2019-05-04 21:28:43',1,2,29,4),(37,'2019-05-04 21:32:45',1,2,30,4),(38,'2019-05-04 21:34:04',2,1,27,6),(39,'2019-05-04 21:34:49',1,2,28,6),(40,'2019-05-04 21:35:30',2,1,28,1),(41,'2019-05-04 21:36:10',3,2,28,5),(42,'2019-05-04 21:37:53',2,1,29,1),(43,'2019-05-04 22:47:52',2,3,30,0.9),(44,'2019-05-05 12:51:35',1,2,30,20),(45,'2019-05-05 12:53:39',1,3,30,7),(46,'2019-05-05 21:03:55',2,1,30,1),(47,'2019-05-05 21:04:31',2,3,30,2),(48,'2019-05-05 21:50:09',1,2,29,2),(49,'2019-05-06 11:12:59',1,2,30,15),(50,'2019-05-06 11:13:37',2,1,30,20),(51,'2019-05-06 13:35:22',1,2,27,2),(52,'2019-05-06 13:36:08',1,3,27,1),(53,'2019-05-15 15:48:27',3,1,31,10);
/*!40000 ALTER TABLE `TTraspaso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TUsuarioToken`
--

DROP TABLE IF EXISTS `TUsuarioToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TUsuarioToken` (
  `ID_UsuarioToken` int(11) NOT NULL AUTO_INCREMENT,
  `Token` varchar(500) DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  `SO` varchar(200) DEFAULT NULL,
  `Web` int(11) DEFAULT NULL,
  `FechaAlta` datetime DEFAULT NULL,
  `UsuarioAlta` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_UsuarioToken`)
) ENGINE=MyISAM AUTO_INCREMENT=281 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TUsuarioToken`
--

LOCK TABLES `TUsuarioToken` WRITE;
/*!40000 ALTER TABLE `TUsuarioToken` DISABLE KEYS */;
INSERT INTO `TUsuarioToken` VALUES (3,'0e242cf16d81ca026b734ba9177dd9ee7a186cc8587e3a3b6836f3a344e17d3fc195561db717fc98bf70e0ac5c36d94ad81606383d6e147f66d9fe67f161b1b9','::1','Windows 10',1,'2019-03-15 23:22:11','demo@demo'),(4,'a1946979800b4abecb6cd414eb59adec7761e1649c7fd86546734bc190818afaf1f57ae832df86e600f0dd86a250443040a4fe13747d07b6179ba3ed8f253978','::1','Windows 10',1,'2019-03-16 00:05:21','demo@demo'),(5,'db0a11aae29a9928367542da32747f226179037ae9a9e131b1605f386863a219337790612386de22161595be1779ac84268ffd08001d684e5025bea1a1c67be7','::1','Windows 10',1,'2019-03-16 00:12:30','demo@demo'),(6,'292a1f65b0a762f804ddf50298ef1f3661262e9a1967ea0318e7a5263ced50410e22018a9de0a033da311f041b9ad9f9515fa8ac4e6d2a3bc02adbc88e8d0a10','::1','Windows 10',1,'2019-03-16 00:15:24','demo@demo'),(7,'943da6808716968540d75ccd8c64f7ed03c98a6e31f05fda1139f5000a6c8e131db8aeea8dcb3b90b0cd9feba02e3428a91f489fb7e4f33282edc544c90df19f','::1','Windows 10',1,'2019-03-16 00:16:54','demo@demo'),(8,'d1d6a9c44a2f3f1035d5c4868f90793bc5ff7df0174407e099447948a6cc43792c8d6e03e6162f535c45544a53a7bd0ca2e795f4d3190a6d2e6185fedbbf9008','::1','Windows 10',1,'2019-03-16 00:17:03','demo@demo'),(9,'40e67848d117361a0c2b7457fde314a7ee555d293d110678df469bd5dba7aac6ec0a9ab967e2de8b47f5ff1fd25ca76890be5140356f9d30a4e77f244d4eea8c','::1','Windows 10',1,'2019-03-16 00:19:15','demo@demo'),(10,'0e413d630ea75e75e11a90084ddffea4629e3eccf3d357a0c7a7e625f50f348965d89ce529d033b3a2ebb276ec82f7c833f8642a22cab1f751c8e16004e05ed3','::1','Windows 10',1,'2019-03-16 00:20:08','demo@demo'),(11,'6edc4dd98a868b5610216f7a0d1426c8460f7499b8c34185c8fe11bf69d91e11a93b3ec0edf9181b6c8bd17e5c9ff8b892c68157139eca528ee4932d98481ab4','::1','Windows 10',1,'2019-03-16 00:22:52','demo@demo'),(12,'4fef65169247c5413dadd98fdd2c61087419a10263c7371fc37cc8343d5984b2d7f0d68127dc351f5b94091b0053e61c134ad5de6793037fe21c329878f158a3','::1','Windows 10',1,'2019-03-16 00:23:52','demo@demo'),(13,'0292b5e522f5f03c011358a0f5f52f1266837c6440e91d318200fe5dcc2bf88c50d63699bd8465fbdf4ed5aec55d778a2baaf5a4ba72cf35743f8666b998eaa2','::1','Windows 10',1,'2019-03-16 00:47:43','admin@admin'),(14,'0d938d38b24b16481bdaba7bb022f5e275801e9c73dcc8458ef4545068902df91d1bc7575493088081bde78963be61fbf04f0e16b1b9f609d9c6ab107fe25c63','::1','Windows 10',1,'2019-03-16 01:02:03','admin@admin'),(15,'ae4b689b4db60d9e3dc41910e63adcb0ded4eb1892ff2f0761633501e76c6df285542639a00c80ca63d3dbad2048b18e9ceb324d98c40bb75446b0fac7131322','::1','Windows 10',1,'2019-03-16 01:18:18','admin@admin'),(16,'b52d2298c7bba3215d6e7c3dde9634f0d10b19596a1cae05ddf789e52fedfeffc12f68367866a06b7161ca8db192d49e315fb007ffa134c65f22eae62cf38038','::1','Windows 10',1,'2019-03-16 01:23:10','admin@admin'),(17,'58a8c21df51f56cbd2d91cb90e2a8a11c2953c61e7c811fee44cf061caea50f3eed1fdeb44a71810ccfb8f199586776de968448f0b4627ac6cf7a27663e4b4c7','::1','Windows 10',1,'2019-03-16 01:38:10','0'),(18,'2d55ef1499252d2ef185fe3d84aa69e135824f4c3f25c5b6ffa155de737fced70db48d9b8f79efba46909202af5576450d1150aad13a9531bc2df56b6cef567a','::1','Windows 10',1,'2019-03-16 01:40:16','0'),(19,'388a285674168d4eb34e004f7c48fa5be97ec43a3a5ab8bb2b899e6cdef487302487515eb7169362f3eae1e8e70873c6373785412c2b960b903c1cac0cb01d1e','::1','Windows 10',1,'2019-03-16 01:41:24','0'),(20,'1a29c6ad5c7d30327015c2f6276565c5111ac7cec4ed588987f84b99a6a8b05b9f1a18a90fc2be37b73e59d1410d0cf95ab34539747fdee9204a593d2c1a411f','::1','Windows 10',1,'2019-03-16 01:43:08','0'),(21,'295e0eafae745b3db3fa4097f098c5418e2223acdb609b7eb437438b7fd33e870bd5e13a059b62d617d932a094cb92326eb4002e30b34df49d80afbf8811cbc9','::1','Windows 10',1,'2019-03-16 01:53:24','admin@admin'),(22,'13865ffcc54af3e60eabd69586821d355b1335cc016b071cd23faf7cda9aae657843650361d51a6aab563c75abcdac68363a3fdbebb0cb713465e72dfeed50cc','::1','Windows 10',1,'2019-03-16 01:53:56',''),(23,'7e33625e4528f2543a39d43545fe5b07853317f046fbf600431cbc44acaba3a1feda4b092277e6a7388d0e7d58f952c511026b8cb35a6ab9fc662e2e89cb381a','::1','Windows 10',1,'2019-03-16 02:04:49','admin@admin'),(24,'6dd5f2f98c4757e02d735a6f914736e836054d4aef2887fffd2bef909ebdd8143a3c6b8e865be9b4fb3ea77e9a2316747968fe2ef099eb7e1df248144000a194','::1','Windows 10',1,'2019-03-16 02:30:08',''),(25,'3b97dc066d256e8016aa93963680e1ab79050349eaf8611c8fc82d9eab2efea1a21edf9ce0c630e0b70a137288901317f09d504901b10879b06cd45e8f5c8871','::1','Windows 10',1,'2019-03-16 02:32:03','admin@admin'),(26,'bfa426d5325abddc0f4198802806662cdd98b7701af036bbed87ad3642fe696192fb39a2f31d6eb365f279ba5e1a3931ceffef127eba08454d846fa7a2577ab3','::1','Windows 10',1,'2019-03-16 02:34:16',''),(27,'ebb5fc69676b3cebb0f3394ce9c536d534db8970e9e87f6904bab3703507419e36b097ec6d35aad67fc55ea1f38150b0e26560f167278f0216784ec5568e2381','::1','Windows 10',1,'2019-03-16 02:35:53','admin@admin'),(28,'bce8b91b360567d50a3980ec3d251ed8c4732fad034e8db98ec39a81670a2761df40ecbccd77437530905a68b687ec9569c963bd37b8548edaa21dc54bfdedc6','::1','Windows 10',1,'2019-03-16 02:40:00','admin@admin'),(29,'5f0f12dce399ca9ec07f0e86d2c526f8ff0addd54f510066babbcf1be9b9bf08f29180ded22468b00c26ab97e71aff8e6dd8a826fa75c6bb2aa42944cb65c176','::1','Windows 10',1,'2019-03-16 02:47:32','admin@admin'),(30,'968cf6b6164d2049dfa3b26cefccdd1ae1aa2fc2768dcdf0ed9c15f0faf78a67e84b18609605be4f3b2a01307c4b4b12d292a7ed16d79f2c4a4e8dfa7317afc0','::1','Windows 10',1,'2019-03-16 03:37:12','propietario@propietario'),(31,'9119482729d32f479b6a4f43c81fb0baf51a7be043f9eeeb59f78fb40ff2ec755c4a254f61e1c9485d0d82fb7061845647894042aca8fed454cc296e045b457d','::1','Windows 10',1,'2019-03-16 03:47:09','propietario@propietario'),(32,'719eaa835c592782bc02628ee1cc39919dcca3a32894bfd66b3b5fc322dfc8281d33d223330eb8ab631eefe8408dad67e9863ebe5cdcde1f618ff3f94332b73f','::1','Windows 10',1,'2019-03-16 03:49:13','admin@admin'),(33,'ef64c52796f099051fd5b8c12513c01fe01abd5f3657a088c2234ec30ada0b4475cf3e6766e6a08ad58286b1eac99e9822981c8330a44d0db55c3cc4bed9c56e','190.239.103.221','Windows 10',1,'2019-03-15 22:05:44','admin@admin'),(34,'8ee0b910d30925c2d08f25033ff34b952e389ea345135614ec0cf3956d264e1521cf44f303add1eb5bd7094fa0d53a51eeed014c0439fab1534efee1b9b50bdc','190.239.103.221','Windows 10',1,'2019-03-15 22:07:29','admin@admin'),(35,'ca9e285c56af83eb1f690292cf1510f1ed639a4d44f698a085d13a3db762d42793fbc4b7c3a0e4c60caa50d09e100bff3e5ed34383f6b08a9b967156d0fc8582','190.239.103.221','Windows 10',1,'2019-03-15 22:14:48','admin@admin'),(36,'c170d771e0f2fb2e03418b748651c4f73f22dafac0b678165889589bbde2c9c7d3e6d7b5436ca1c6d098012f46a9f472dbc1d6b25fb65d0895cc3aa47e5c3947','190.239.103.221','Windows 10',1,'2019-03-15 22:21:35','admin@admin'),(37,'7884dd577db34fdbe5d98ed402639d2fdc239c3edc260595b3bbe92abe43b1362d6d960df8e2ed3ad705f704ea57bc4c0e5b83b3d6f5fad535013abd89d7bc00','132.191.1.136','Windows 10',1,'2019-03-16 10:15:29','admin@admin'),(38,'9252609304b654f092adf193700a8bc32a27b49c8842cdeeebb0a0182aa35db09286dff79d072aff643429c061454811e705b7684282969acaf329b9412ccda5','179.6.221.231','Windows 10',1,'2019-03-18 12:26:57','admin@admin'),(39,'28c61499bb0d70c567a7950031138cf319da16542d8b67c04d7dff1eb585b846d7d0b739f563be71194d7fd80b113c6aa652e8fc2af7419bfe32d8e684071605','::1','Windows 10',1,'2019-03-19 01:39:30','admin@admin'),(40,'faec9cac5d3ee1d8d7dcc54418728823d71ffba55416b1c08bb370ec65a5e84d955e05d898947deacf293c058aaa81379e307a0579765f08b064b4b25243d4e0','::1','Windows 10',1,'2019-03-19 13:40:59','admin@admin'),(41,'42a02c00d48d847b66735dac7e515ec21ef45dba45beddbd6e3aaf554d60e7d67dba9cff570afca61299d0ba7f935952a63cfae00334c22d635667018f65680c','179.6.221.231','Windows 10',1,'2019-03-19 10:36:35','admin@admin'),(42,'4d13e5f2f70a476a1fb42a1c5a6a09b9c7c76721377def7d5131180235306ca4d09b9ff242c2ea70e12b0a272ed7ef687e97669eb2cd24ec5490c9cc908cb3f5','::1','Windows 10',1,'2019-03-19 16:41:35','admin@admin'),(43,'bc670a820b9ffdb77424ba3745787276fa95dc7cd0d8b4e68f6f1fd48693c6fa30121ffbd64a073f7a9da746e146a1404ead577d475a748f1347b32db29a3efb','179.7.59.156','Windows 10',1,'2019-03-19 16:03:58','admin@admin'),(44,'21dd3c2aca32c7b21f19a38ec0a5d9b6f3a82ca2cca3aee4f8372036c302161630e885d3ff2a5f7c6c4c1f6e8eb50cc7f06fe103eb71dafdddb8e1bd58025a36','::1','Windows 10',1,'2019-03-19 22:09:42','admin@admin'),(45,'303e4ed92c542506d5a0cda18efb3d91e7874e92966978ae75bac63a5762081f76d6bcd9d6cb60c7ddf3179ce40118c8b7eccebabe1e92151c161a81df7b9818','179.7.59.156','Windows 10',1,'2019-03-19 16:07:10','admin@admin'),(46,'263903ec4f03d96dad548954ff78bcdf3a2ecc95a37ee8c51edd553513a247716e245fc7dfc42e6f4a82278dd737d9a73f5119fd9ee20799a79785d556cd16ec','179.6.221.231','Windows 10',1,'2019-03-19 18:12:24','admin@admin'),(47,'1440c0bf15b2da97b38314ede8e2d25ee79e08afb1f1e21113b22cb1f89797cae1b0a3fa7b0882f669f5e234c36c26fe9a72e1fc1066d802c3010f109481b981','179.6.221.231','Windows 10',1,'2019-03-19 20:47:14','admin@admin'),(48,'307e1e31914446a7470d176c5640cf71e078f0babdd25ff221540e1f929c06f041edccc4d2655715fcc4a25a438deaffceee06ecaed407b9e9bcb6b15b40c3bb','179.6.221.231','Windows 10',1,'2019-03-20 00:57:15','admin@admin'),(49,'f541f3d966eb2ded975a906f45d36676bec0ef400605405db0d4f57d755314cc06c62978e23e690198dd034f88b7bbc76f3c9266b2bed1588ec24bcf422a9c22','179.6.221.231','Windows 10',1,'2019-03-21 12:50:52','admin@admin'),(50,'e38877f9f0128050e94d006db105edd3fafb058131456dc75deea0787f7baed3d5f4cb232eea8ef8c782b0633c2c81ed45968b322b56a2d358c87d0d3e28de40','179.6.221.231','Windows 10',1,'2019-03-21 16:32:57','admin@admin'),(51,'eea67973a13216bd07e37507281b152c01c8489cce7f9ba669d77aa2894de2165c2d74bd1a87b569759c949aeee573f4f8b01e433b370deb83db7ba197131e92','::1','Windows 10',1,'2019-03-22 21:13:29','admin@admin'),(52,'8f8d69f896da024ecba32554179625070565dd22392d341eb38b5139c039fae7ecd495ed58a3717ab90605c48a683f99ef2e3ef096bd427396d0d604f438120b','::1','Windows 10',1,'2019-03-22 21:45:35','admin@admin'),(53,'d514e760984d0519eef745a71420ee739cba2341cc7dedd56f26177dfbc491bb63621302cf5db705e19991086ea723152b33733fe7f163c1bd141173f130134c','::1','Windows 10',1,'2019-03-24 01:18:10','admin@admin'),(54,'48bc0d6d9444fb5b89d4c2d472e96da0ccf9241ff4bc6b5f3484e8b279077ed15b74d147f93373a17bb718331a960e0193cccc317e8833ec6f5e0a336d733134','::1','Windows 10',1,'2019-03-24 01:32:25','admin@admin'),(55,'6aa92a8ca390dd788d8d570a670858aa4f19fc7842dd0b1ef08b65b7b513b470e0cb4905eb7e32b67bdfb1ce39942f4df5d0bf68a80479ceef0802a662fe4397','::1','Windows 10',1,'2019-03-25 16:33:26','admin@admin'),(56,'23566da0d643b0d109ab9f2160dd0b30d9411d5165d79d84965e014c9c4f94b430278409c4cf05c242af5eee039320b35a9e5d2dc304228fcffd7b5cf2612242','::1','Windows 10',1,'2019-03-25 19:55:20','admin@admin'),(57,'d356b7033e402e80fe73677d7dbb5daac3ffe492a02a6fe07f2bd1b2a43df01025778e6eab51564c926d9f4546bf256f493c7e280c71599d4221de7338fe3573','::1','Windows 10',1,'2019-03-25 20:16:58','inquilino@inquilino'),(58,'783be186e2f8e18942d560ac5fb56277e690db19ca356b23801e47746678cf45fd7e0f02d18e61370a986b25f3b2152f664a80ebd2de64ad6330e77b96320cdd','::1','Windows 10',1,'2019-03-25 22:49:03','superadmin@superadmin'),(59,'d1c922e6dbe59f68713a79422e1d5e9972d79007b4e2d4695a8705c41dc1074b262e7641a5f79ef29b2cec27e4192fe5fc9f823f144ad0ece7da3901751b1d96','::1','Windows 10',1,'2019-03-25 22:49:28','superadmin@superadmin'),(60,'4fbde0cd841a9c95126eaf969fbd2e021f6627c0646cd612e247f78ef79e599f6b7292a5d19f97be8259f7f34bb173f3df653b4e8912eb6096e69793ff22c57a','::1','Windows 10',1,'2019-03-25 22:52:07','superadmin@superadmin'),(61,'afc5262fddb8205ead41e086fa82dd9b342b7a3a006b4a1410553f98f3406dd7f172f45d9965959c7e0a48f30df2d997332ee46b77f4dc9e931158b7536f151f','::1','Windows 10',1,'2019-03-25 22:56:16','superadmin@superadmin'),(62,'96b3ab01ef4b7d27b8261a08b8cd9e2ed2cd062a21fa38f8d239d22ebe59dfc503dcbf8433611c0807893eea2648d8a578f6cfa3c189920d1a88fe62f66a37da','::1','Windows 10',1,'2019-03-26 02:59:11','superadmin@superadmin'),(63,'35829ea1db66f16daa7303cbcb680052e3b3c3b9cf088a67013aa43f2a2184f08b88be35de4cf92e6da05558d14d409e69caa570dbfbafbc2bae2ee564abb26c','::1','Windows 10',1,'2019-03-27 05:53:59','admin@admin'),(64,'9a4af8196601122302928ee5ac4c7b11a1ff30fbd5d2487e6e52486cca57d3458f3476a6fbb96b9abd0c1fea4cea086e001e3c4a6452180bae4df1c9284611a1','::1','Windows 10',1,'2019-03-27 05:55:14','admin@admin'),(65,'1dead1818691daa178d56fd4ef95b175c18724555de095b9fc392ad247bcbf1f5dddf0982dcc5069593d0caff1ca4d5c15ddb763a65bb16f308bb28813c5681f','::1','Windows 10',1,'2019-03-27 05:57:19','superadmin@superadmin'),(66,'ebb838477f8a2b180ec5d8e7f62e99d668784ddc2719c0381e5056fe5cd135c15ca156f6bbdeb83d75e65c3e662e2e78b986afb243790b27ba79618f5db9df70','::1','Windows 10',1,'2019-03-31 04:55:28','admin@admin'),(67,'c87a010b06ee1c835b1bd8df12b1afadffdc6388487735aee8390a581a0670a5dd2484dbf82fd0639471a792b094b5fdeb457be0f88eb63bd2e9c48a42dee0bc','::1','Windows 10',1,'2019-03-31 04:56:14','superadmin@superadmin'),(68,'a856477b0e5f4f160a85dbd4d8925a44bf8874684ad1ba61a0c42aa445f1be8afead8c2223b15ee5111c5087562fa1b6c8dd751a818b0873cef0127e8cd048ec','::1','Windows 10',1,'2019-03-31 22:44:41','superadmin@superadmin'),(69,'1eb640a5fe20821ecc15186a33261052b146c5cbba4a06cba559020c967bef692893d79679f83fa91709612b896d4197f74382a810861ecae7861a18d8de33d4','::1','Windows 10',1,'2019-04-01 23:13:32','superadmin@superadmin'),(70,'86471870c7ff5fce7ef8219699030b678cfc35d963fb06749b4e3c2c86bf0eb7bddf847f4f919622dee5d8fe058d90cc517fbdfbe00cf0190419a976f9b56439','::1','Windows 10',1,'2019-04-02 17:30:40','superadmin@superadmin'),(71,'593493580e35818753a9aa22dced5ebe77fa9345103ab168fc22a59b06a98bc47350c4602262d38e1076ab63bcc5bcb030d1e8597a44189fcec2d00fec92a581','::1','Windows 10',1,'2019-04-02 17:50:33','superadmin@superadmin'),(72,'db8f68f5fac82c2b5948f02aba17575e4dc89be133a4cf664621842a6711978bf9ffce6526f6c88c0dad15521c0d64cea8e9e3dbdb459ad0abe98d1a0bd7b922','::1','Windows 10',1,'2019-04-02 22:14:50','superadmin@superadmin'),(73,'9eeddaaf948043d184485013b0be5556efa32b10d0e7d40624ee4f583e7cfd6184a6f21e8329bbfa4a66f9d76f5cc580a2c0e6630b56d1f678cb59111db914ce','::1','Windows 10',1,'2019-04-02 23:56:37','superadmin@superadmin'),(74,'2326c77288255573df4122cfb13339c34845d4e402ee70b25fdf2a710feb4538a81b6bb4f020184dc6d69175058bbb7261d3183ad6862a3e99aec46ffd46716c','::1','Windows 10',1,'2019-04-03 01:19:50','superadmin@superadmin'),(75,'0b0b96cfe2a3d8a0a517807ed3d7bf587166449215d5af01733023ce6fd46a81c25a31b5d88a57a644f8d16d0b092b76fb3bf80ac5c86af315705c6eb013c878','::1','Windows 10',1,'2019-04-03 04:33:41','superadmin@superadmin'),(76,'f9afd3d755fbebb17306eb3f4bd56144970c6b9724b84f140a62d3dcc5bd8e3d3e4f95276cd0671376c38e178289a37dc84eeb9830621973406ddc8f3f0d981e','::1','Windows 10',1,'2019-04-03 04:52:16','superadmin@superadmin'),(77,'e5c6571b8002498d365b501ff9b05d114b3e5df000853aa2d110227213a9e12cb36a56395834a9e4145b1145158b60373e3c50982093c861f8dfde18d6cb7636','::1','Windows 10',1,'2019-04-03 16:22:40','superadmin@superadmin'),(78,'48d58cebcf9b3e5f2b276cbbfd86b4afcb355e9632dd686f56602ca16995f4b813462cdd8bb7de92d2751edf5412be27c6054ef5e838bf5fd21fb4d15bf74c9b','::1','Windows 10',1,'2019-04-03 17:16:51','superadmin@superadmin'),(79,'57639fc19a5fc93da62e9405de6b0b50a10e7a578facb1ff001becc7f7c3a8f1091995f4f714ed3bfa63a6e27840d343478b9b516096754f8e849c92d21b5e98','::1','Windows 10',1,'2019-04-03 17:57:54','superadmin@superadmin'),(80,'6a6b2ab9d4d691b2386c0600eaa2e1e3904931bed7ef807cb764398c3cb1cede24343018a6d37f8a78a6f309861a404a547fd652b3a01795f3939c10fda8df6d','::1','Windows 10',1,'2019-04-05 17:22:27','superadmin@superadmin'),(81,'73d6eb2f980dea28b4a16c44862dd8e2cdab746900739faabfd06aea2bbc162d22a747d6fdbad4edd96af979415cf478c667d82fbd69376ed4ace3630e1ad1f3','::1','Windows 10',1,'2019-04-08 16:50:52','superadmin@superadmin'),(82,'af176c252c7817072307a3c14d59c052a967300cffaf8c36e42cbc3cde5daf8c302c17b414282db0fd50be69fa0fb840c52ad6e3556940521cd3a7473835d023','::1','Windows 10',1,'2019-04-15 18:02:02','superadmin@superadmin'),(83,'268e5b25760a141a854c382a7b7d7d99a08a3bd8df20662bebf624a0fd1ad5b8eddb7a958fa4867677c1246f72fe785af1d00f94b3628c35a9f133977cf57779','::1','Windows 10',1,'2019-04-17 21:41:45','superadmin@superadmin'),(84,'89a7265fc987d68724573359aadbdeed9892bf7e2e711a3d13bfb7d77d382815d9a9eeab90e0c438e582acf8f3a7c6a14fe94fc8e44bda38ee3ddfabe922995a','::1','Windows 10',1,'2019-04-19 07:20:58','superadmin@superadmin'),(85,'520d2e5e2d7418cf650d9b9230e0a6ef5af99c94490c77acab0338978507afbeb03ff1436112451a0a8e4e28ad32677c98d4aff078df2961ac2dab2ee4b1a005','::1','Windows 10',1,'2019-04-19 18:07:05','superadmin@superadmin'),(86,'3d75d7af32214c77517b0cf0b15a819e42ac9b4380f28503ba1d035c005c6e0e366a5bc13b4ca44608d29c7cd63749b4b9d27b20301be5e34a9937583730ae5b','::1','Windows 10',1,'2019-04-21 17:56:25','superadmin@superadmin'),(87,'b412bc2053cd44b58cfc89dd3c50936d28f6ae69197415adb2817f3cb3db39663186e21d55b6912200be996d60afe1461a0e5c230e88dbe55cc3964cf602f6ec','::1','Windows 10',1,'2019-04-21 23:12:21','superadmin@superadmin'),(88,'41c9a2a733b605e9c2dededcedcfa86224e116a34e228652ab14e4a2eaf77c4345f85009264e149309186c8d0b5cab0318a3846d92ab11ddb0c3c8b65de4ce4f','::1','Windows 10',1,'2019-04-21 23:12:55','superadmin@superadmin'),(89,'c145c6a5e9c77b5446a0153b8593998869ce4874d4eccfcb77bb26beecce755befcf25f52cc19cca044cea7b3d89bdae0c9e7a310c60d06aecf364f4b6646f16','::1','Windows 10',1,'2019-04-22 03:32:57','superadmin@superadmin'),(90,'b22480d9a88f5c5f7226d0fdcca77f516b7b03fa896243f7504b359374ec3c9de0bb556ade065b37b90c166df2b22265c4000c96211b69d8d444af0b245871b3','::1','Windows 10',1,'2019-04-22 04:08:12','superadmin@superadmin'),(91,'3c3c7053806ce6e10597d44ca620f36d1dc4f7365391f16220a4d7aec6d9c7d9dbc22536e69c82f8a01c1a3c14bcc7a7585ad3c36a5367c663c6b68f64146f7c','::1','Windows 10',1,'2019-04-22 04:11:40','superadmin@superadmin'),(92,'6b55564e9e71eeae1f96a390e67186127afb86f541aede91bd59923503f49f7d4d9863a3308e50cbe33eef4641e51ca3978b262f9004afdcf07c7765bfd1acb9','::1','Windows 10',1,'2019-04-22 04:20:44','superadmin@superadmin'),(93,'f44189992da9824495519b40386594defd404d8b137fe94cc37d56147dbf5ee12d495ede588b51eba178d092ad31ae40a0cbdf5f0454423d6cc54bc17475a296','::1','Windows 10',1,'2019-04-22 04:26:44','superadmin@superadmin'),(94,'a50996fc6d67695c266698007b8f0d41361ac91ba91b73a9bda8c26d381434e429dfa80134494143e903a0f9231403ddf85e09554fe3d7cdad468760f410e39e','::1','Windows 10',1,'2019-04-22 04:28:06','superadmin@superadmin'),(95,'54121d71ef3c5cd7746760f3f3b0cb11aa961749746437485833af1c50bab7da74d46a7d833e0865ee07f8de49f36b4bb084e58a870d43f2cb63e02cef58cb0b','::1','Windows 10',1,'2019-04-22 17:16:41','superadmin@superadmin'),(96,'c43df47e0071cbda2204c6b37021e721edef4782dbda029d81c7ae2f006885c57a518474b2b337fef4178883be9b78fc53003803837bd8c01fdf7d63e00afa67','::1','Windows 10',1,'2019-04-23 17:43:34','superadmin@superadmin'),(97,'f74fecf2f250c47847a720bea9c6fb25eab54c9f7458672fd780993fecb66b56a0e43f60029ec3e09ac61c70d9674a94829b73f3ce60da49b0b04ad822ec82d7','::1','Windows 10',1,'2019-04-24 06:39:17','superadmin@superadmin'),(98,'c43f22fe48ca08acb6758697f47e1c9e8e89958e2cd633fcf802aa79008d84464baf6055993d74e839cc591b32004e6b928e9ac7b5142da6e890d071ef902666','::1','Windows 10',1,'2019-04-24 16:10:28','superadmin@superadmin'),(99,'64cbb72790ed909bc86b12070be824b57d1b856b8b3c7f24a48d66d62df4a42a492d27b1efa7f2741c5b49f90d9b114a4474e737fdb8c837c2429965e577b2e2','::1','Windows 10',1,'2019-04-24 17:20:18','superadmin@superadmin'),(100,'943628685043015d5e12ae4ed9d5c7943613e523e17acd9c91d6917bfe4b270d777f63958500295e182844d4a9aa8830a73b135e709fc34b388e81c08e5ac9e2','::1','Windows 10',1,'2019-04-24 17:49:41','superadmin@superadmin'),(101,'cff763321ac2fe72e50e1a700e24ce219f84d7d027ae8aa8551ea84b38b0df03125f608c203c35b052f12bcd2aeb889f54bd2f8feae7d5aaa1d485c57ab7b9d2','::1','Windows 10',1,'2019-04-24 19:26:46','superadmin@superadmin'),(102,'501bd76a2b022b19659d1533f0edb54b74f443751d7bceaff9d4f792ed2c6a3b148e7237efb2225d75c193fce5c7c18b441f24f7290e3dca784c354c0c439021','::1','Windows 10',1,'2019-04-24 21:23:31','superadmin@superadmin'),(103,'201541f4f2a8b0edddad6aac19d0dd1dac3b3305b91dcc8374a852a8523a1c0ed92f03750a7afa5cf34fd5ffc8530a724fd382739eb4a14a12c916e4510e522d','::1','Windows 10',1,'2019-04-25 05:57:12','superadmin@superadmin'),(104,'14c7b809bf1f7686d4d3234c0060f8a11bae26ae197af834c0103b72d1f1de936787c9453c6c3191dbf4f8bda7bc05362bc50cb3108fcdc29ab694eda19e8e5c','::1','Windows 10',1,'2019-04-25 17:38:59','superadmin@superadmin'),(105,'e0a6a5f80790561df7ba71e3b063a6352d714d6b720429cc0eb452663cb5290b78d6969d7303aeeb7a0d89e466c02a045c3247c9813c60bc393ac32688bbe707','::1','Windows 10',1,'2019-04-25 19:09:58','mesero1@correo.com'),(106,'2b6c5c3eee01b843c69838093b9c028a5926a65bb4a00e5dfca0291e82764e0322eead2689eb888f8634839811a1d92534758f0f13140ca8ed523783597f4b61','::1','Windows 10',1,'2019-04-25 19:17:53','superadmin@superadmin'),(107,'f781e739f68d8eb53b24138a2dfdfeef8d5173c4e261dc0f926f871e3a8f511805943173f246637fc297b354c3f9c1ed1b7ade75582377e2ef4f8fa92ec5b62f','::1','Windows 10',1,'2019-04-25 19:29:27','mesero1@correo.com'),(108,'7add342fbcdf1f0b1c701e250fa002be21b1e6a2690bf0f42976b2330844c161eb708e6bc55926e3f6e18b91489b111c77a63a5f79ff43dbd3b707321d0adddc','::1','Windows 10',1,'2019-04-25 19:29:38','mesero1@correo.com'),(109,'6ea561d325a89f5257ddd84e91e5ade5cd864c076ccda3e862fd5754ccc44771800e5f21f75cd82833da19013c6d993000f2beb0d6e8f564f2bd0de72fe67460','::1','Windows 10',1,'2019-04-25 19:51:58','superadmin@superadmin'),(110,'78bdf08206f51b81a4543b6b537a7008c5a978ebe4ee36119b5ebe90e088209daa2a7d401f3015ee5f8315c2cee4a71f4b566176b68e9dfa3286958ba983d383','::1','Windows 10',1,'2019-04-25 19:56:12','mesero1@correo.com'),(111,'c319bc30d5f0572bbf2673b7e2e6bc735f67840945831158d753e97a35a81914548694775edfe957d4326be65ff5119f0abe1e451e40ea77de9bdd479ceac5e2','::1','Windows 10',1,'2019-04-25 19:57:59','cocinero1@correo.com'),(112,'5662830604abc45c64fa731702e47f4a98117a2f495b1f35ad69d86d9abb1b0087770f26a5c3c612f779bd6b89a959e5704a487bde524298d08cb1b660e4a050','::1','Windows 10',1,'2019-04-25 20:12:32','superadmin@superadmin'),(113,'77d54862113e7e3f8fcc830fef65d1bd0c17e9e574f1ec8e94bb501bb8c759f31797fc7b857500100dd49bea0903bb5ba098971362767f76d852610692fc818f','::1','Windows 10',1,'2019-04-25 20:13:02','cocinero1@correo.com'),(114,'b73a3dfbe89ff29497c5585b7d5df13a190d40ac500993c50e73e03374d8f849ea0b2e1f03afd9cb73d0410712c73cc39af73eae932cc3f73b2f281a62e490f3','::1','Windows 10',1,'2019-04-25 20:46:52','mesero1@correo.com'),(115,'8a2f1c16e7348448edb3127bf5911fde7227433be1fe88b3871c57df473e318cb60c351aca174ec37cd78dd3e2bfafae8862f357682716cbe1db86b76feeee12','::1','Windows 10',1,'2019-04-25 20:50:32','superadmin@superadmin'),(116,'7cec3fc219edb2c9c1e5777d56b77cfc2d8bcf667bc1a5e2bb1b937cf0aecbfd45d8cbc5ab5d8be2c57b72373a8c39d7ba97acfd8dae8bdf827881f6f4558493','::1','Windows 10',1,'2019-04-29 11:38:15','superadmin@superadmin'),(117,'e6bc31894ca74bc16ac1066fae6aa981f58501a30f9e620190173db1d2d9795f582a99d80e9074769d0d7d0b3a95e1145951589c66a6821543b199a4e53d5c07','::1','Windows 10',1,'2019-04-29 16:11:52','superadmin@superadmin'),(118,'a355e64224497a283019778ad54f49c0f24811b0cdae86952c2c47aeb5f8e7dad3abd9a527bb992a1b767ae850873ee633c268ae6089c7aecc13bed056d7ff08','::1','Windows 10',1,'2019-04-29 16:53:27','superadmin@superadmin'),(119,'ff8681dcfa272354efabdda14ab0d9f755382f4194569aa2e68e3f9bd793526e10ecaecd8dc152f82631d84b047eed55d3e196fb465054f4db84daea09b1a1af','::1','Windows 10',1,'2019-05-01 22:56:44','superadmin@superadmin'),(120,'247dd690962d6c7ca299fb00d9b27b0bd8cecee3aab5ead4457d29826a957e0f9732c44798e5dbe047ec1cac8a3643f7c4613ba87229889f64103f5c414d1467','::1','Windows 10',1,'2019-05-01 23:09:36','superadmin@superadmin'),(121,'366f29d6436650f59ed47272dd52602f09f4214f425fd5838c82b2cb30adfd9f68cc89536b3f995032f4801cef7f6ccebcc0dffef36198b293ba7e7d41997f24','::1','Windows 10',1,'2019-05-01 23:27:19','superadmin@superadmin'),(122,'44d1439c678d2b5b025d1302f098e0e0b57d67535d03bfce0e1feddb974d686b8d873a2e049645d85dece1937ef2498cad63be349b0919967ed72d4904ad069d','::1','Windows 10',1,'2019-05-01 23:37:36','superadmin@superadmin'),(123,'6e7f8fd47177b7096e2e5ee45c7878b09b7ed6826aed61e947d5f579f2bc09a68010b9214bc2972f376671118d50b5d3296c524516a4df189744dca874cc0049','::1','Windows 10',1,'2019-05-02 14:40:21','superadmin@superadmin'),(124,'834c78f506cbbe9c98ff4fa7498833aaaa0a4f7d13b28d9f57a02df48141090c577aea303d05c461e11c6d05afb6e1235bc7d8454a9642f4c2e56790b25098fb','::1','Windows 10',1,'2019-05-03 13:41:39','superadmin@superadmin'),(125,'de749b3becc3e4c82d50c56dd2cd6f5bb163d79146d88221b34c9fde6e3ebc6f05bbba1dd657907f1383e6fc55f87ee83330f54f0a3012cf98353187d32d37f6','::1','Windows 10',1,'2019-05-03 13:49:45','superadmin@superadmin'),(126,'e459b8e5acb9d6e161992c7b7d53851dd8a428c6752d2c4f03ff09eafedf6cb7939fe9932ce016789d782383e09e9341b62f2ca2d495345e876148577403ab9e','::1','Windows 10',1,'2019-05-04 01:12:00','superadmin@superadmin'),(127,'249052f56a0871c144b7cd4f3f4817b51a62080ac9be163dfb446b4c2d3574b09b0508de87d5905fa920b779986876a382c8066020e3377f45dbd6954cfc4015','::1','Windows 10',1,'2019-05-04 19:15:40','superadmin@superadmin'),(128,'127fb17b97989fc68ab01914985fb43512c18bd24dc3fd0abcae9dfbee421448cc6e3658c15985e61f436e6d00c4057ce291620a19b7ef77015e16f6816abcb5','::1','Windows 10',1,'2019-05-04 21:07:08','superadmin@superadmin'),(129,'9a07e0b2f2b11baf052c9fcc6be545dbeeac61e290c02894da3a3b3609a520afecd03f9fe46ae98fe8573d4046bbb7ac4329d7895c39350a5e69f6fe0e1b07ff','::1','Windows 10',1,'2019-05-05 12:38:21','superadmin@superadmin'),(130,'37f3a4256f3bd057def5306758b7e08468e10ab44446f768a3c969cdf754015821bf6915bf1fc9fa65b4638cda93def7bf75e8c34142840cb6db4e3c784a9710','::1','Windows 10',1,'2019-05-05 16:25:01','maria@correo.com'),(131,'9a1a35544e565df95574b16397d5e1c25cedc0af20028018c6fc08a1cd122e8d862db5894af8c055764b46095ae5072946a3ee3bb8910efe9fc25904e0dda698','::1','Windows 10',1,'2019-05-05 16:29:15','superadmin@superadmin'),(132,'f569b9b9563c0e14d0365a9753be5f268cee341b14b2501de54723af82feb9c2b99512d7eb9efe87363062fd0c43fe41afa5129b3fde477edbea49dde5b167e2','::1','Windows 10',1,'2019-05-05 17:07:29','superadmin@superadmin'),(133,'dba8017c3fab9f6712a98e31c70cdcf6781602a840daf562514383f2cc3f3b1b06b1a4408687b916891ae793c66a7731478c624aecaf126f78a9a7113354cbc9','::1','Windows 10',1,'2019-05-05 20:01:55','superadmin@superadmin'),(134,'a535f1d8b51bcea7c3bf1a0375debc5374101d294528d34517fd5b45010e424ca9eaa23299401baca908458c7d5aa91089ccb8eddd1756d4b9a2e95a0ced47e3','::1','Windows 10',1,'2019-05-05 21:20:34','superadmin@superadmin'),(135,'3ef8f382219eab65ae4c80359da24ca123e8cc7d358a061c33529c6a1e96ec4a380fc42c82525adcbc71dcf07aa48827934dd586c3f321c37f5b2468ef06deb4','190.42.228.44','Windows 10',1,'2019-05-05 21:40:48','superadmin@superadmin'),(136,'b3103fb7287a6ab90f63189d30e6291617351bb8267a110a384a3cdd96202bf7034f6650d559e2c6e3352b4bfaeae01d983aa3c05c8b542d96b121e8ce82202e','179.6.212.208','Windows 10',1,'2019-05-06 10:53:54','superadmin@superadmin'),(137,'a282c96139515380b2ecc7b7eeb2836c3275e8eb9e1009fb336f7ecde3b53fdfcf1581dc5ca87bb7ac5fc92fd745ab5fe20fc3155977b29f5f2b458d6e6ebd4e','::1','Windows 10',1,'2019-05-06 11:20:52','superadmin@superadmin'),(138,'248f54e57f48d888d8dff40019bc93effa6630fa10a6153c1ee43210920bdcd8872bf6497b8d752865708ffc1e8b8db55a53f01562087b8389ce0f9b7db9f530','::1','Windows 10',1,'2019-05-07 14:08:00','superadmin@superadmin'),(139,'b066acf528f15bc5816fe39159ecb68b2ce4c5c697fcc4894a6bf092c3328d7c084767b2117c955166b3eb4778f4817d397c716418467b5c078a8ff31254ab1e','::1','Windows 10',1,'2019-05-08 16:15:14','superadmin@superadmin'),(140,'f3e0196a14fa8cb5a98f13be39b85a4db68a9f43f9d186ec6e334c3144e82c6704947c0e2df9021264e4826b4882f830063fb7ff31bb4028f74663baa960e836','::1','Windows 10',1,'2019-05-09 09:51:27','superadmin@superadmin'),(141,'880fb9a0bf050ac5d77a62a66a19baa2844adecfedafd321116368ce980ba40e9946d04279fa4063bf388ef9c5853ecec64962f170ea6fe1b5094a0b9b690393','::1','Windows 10',1,'2019-05-09 12:46:51','superadmin@superadmin'),(142,'93a105fce7c86f06a6353cce10144e5261d7efdf189b78a180569d985ed6a2d31f6b6b43275c4d894b37280f51b9cb8db592aa00fb625e23ffebb1866bf1a3c9','::1','Windows 10',1,'2019-05-09 12:49:19','superadmin@superadmin'),(143,'d1ecdd6b1abedefbf4e4a97a9f988896e7d9ec748999a05d5e3c99c14739b76cf49e1c49ecfc8c9f326fb83024f92c2f4f7d2233f44c6323221e31ddce8cd57c','::1','Windows 10',1,'2019-05-09 12:55:22','superadmin@superadmin'),(144,'b05e25e93d7b831f16efa4b739eab28d04c32462f134cb1ab87b7f459844534432050b9ca67486753f9dffe282f5a526954c2d60551a3378f14bdae3140112f3','::1','Windows 10',1,'2019-05-12 12:33:01','superadmin@superadmin'),(145,'d80c374a9009454d41b304c88bf211d15738b5901f14cbf1aaabbc2d708f62353c1c741a3e42966046748a2025439c83b941761c3430a0b509a3901930d73014','::1','Windows 10',1,'2019-05-12 19:40:23','superadmin@superadmin'),(146,'be6087942c3454d1a6e156cd368dff61ae17b361c5f2b04c3ce6045ced5ea06d5b4e13e885ce6d498e8e9e8d2562691c0b7545bd6a2fe1eb3c91852e0a0741ed','::1','Windows 10',1,'2019-05-12 23:08:11','andy@gmail.com'),(147,'c934f37f9dbcd3141b464eb38f7bf52c4c7a234c2c66021c2d399bcfe2becc5f262ba070ef2b1de5663035f6222567e873316a1848513dcb3c0df0ef9d2d8db9','::1','Windows 10',1,'2019-05-12 23:10:13','superadmin@superadmin'),(148,'2211d5304ec167e20e9e7470e88430a585e772de22859b23d5722ff0cb51030afc7ede9db848228bfa2b8ba960fcb59bcc454b0be2d9bcbe9f16ca320c480547','::1','Windows 10',1,'2019-05-13 10:40:37','superadmin@superadmin'),(149,'65aaadca04668d262055ac9b46291349890d0c14ede2254da3dbf1a1aab80a852d31ac12cd81c906944299630ea7789f27e88e61058dbdb506e2ab1c0829ab1f','::1','Windows 10',1,'2019-05-13 11:11:00','andy@gmail.com'),(150,'6c7d356013d6af2984bccca006645aa7221add5829457e7bb6f21c43161cf6e1d0eb45fc5bcfe24e74daef6b407e26ce7d0a96d9e35dc46c45034606c430ed6e','::1','Windows 10',1,'2019-05-13 11:11:13','superadmin@superadmin'),(151,'88e08d501254ef7c0d33c6398ca7d11f48cbf0a994e49bf0fd6e7ada63056b3bfd2ed87bd234d990e4fe3bd2e2a077acdd68073e5630f9c8d463247a26f2b154','::1','Windows 10',1,'2019-05-13 11:12:51','andy@gmail.com'),(152,'433ec44ede0be6ed963d2d5bcb6854c37c7fae9756d803f4feff8c6f0dd17747e5def206740b25acc8d58b3b6f8fba9252cdc98bfb6745338f2d54195d294831','::1','Windows 10',1,'2019-05-13 11:13:08','superadmin@superadmin'),(153,'189ff61cca1d4f633812251937c127b0debeac6e52a1718f6d3263a625325b8691986b64465530e0068e3e94b46a1dd641119ae0bb6051b7aa8b7513fede0b96','179.6.212.208','Windows 10',1,'2019-05-13 11:43:15','superadmin@superadmin'),(154,'85298c802f1b254eaad56873c5e1923d8d83560989ea86a42bf1fff2807520210533f9f85e184b00f6989fc11e858ebe161fee6f736bfbb2d62369faa2fcf670','179.6.212.208','Windows 10',1,'2019-05-13 11:46:13','superadmin@superadmin'),(155,'d3c07e737d78d0bbf6199ecf5134b6536a2062181f5559858f35cf6c31d1db71f4038ecc84c6be2deecb3985c5d14a2ce1ac472727cf5c2b3afe85e556e2e5b6','179.6.212.208','Windows 10',1,'2019-05-13 11:54:24','superadmin@superadmin'),(156,'85eaeb4b6e50d5833480bc05699118215036ccd488b66a5dee128484a938971c811bfbefb1b233621a25a3da1672cadec5621fc6ed4ef91403bc2c8c883af4a0','179.6.212.208','Windows 10',1,'2019-05-13 12:13:45','superadmin@superadmin'),(157,'439fc9dff07e203c7a69065c0d57827b9d97d7c10497e3ce220ce80e9c7770ba4cd7221a50e049d447690340e926da06476de38d90926dbd606986e216856d24','179.6.212.208','Windows 10',1,'2019-05-13 12:17:15','superadmin@superadmin'),(158,'c9809c84c199af34e5e4890c1502e5a8618fd43dcf9f3a3b99dd8eb1c71cdc13865a23197a61299f22ef1e1e610295e214e9b245f0af1e10e9d4aca49cd6337c','179.6.212.208','Windows 10',1,'2019-05-13 12:23:05','mesero@local1.com'),(159,'964187e1d4c28cceb1e2356b88b291ae4d68302d76fe5750ba340ac80924455d5313270ab1c566ea4eba874f75de4e815c5fef80b0892ab9e761a80f931d12dd','179.6.212.208','Windows 10',1,'2019-05-13 13:30:34','mesero@local1.com'),(160,'d08ad86c96d1aa21117c2d56ab4d94115f8b429ad500746dc148c5adfdc1ecca25986b14d2ce475ed777ff8fba43b19cd0b5e0bb4b3d5fb50425e9cf233b802c','179.6.212.208','Windows 10',1,'2019-05-13 13:35:39','cocinero@local1.com'),(161,'487f07768639c1aef428d6f3604da9415cb0cc82a8db97fc17351a23818504528432a1aeec75db67e0eafc5393e52c99d4bfb7192f239c06fb3d15e90a7e0d78','179.6.212.208','Windows 10',1,'2019-05-13 16:39:51','superadmin@superadmin'),(162,'68204fb695f82cd774759044e45fc6a7c1fa9e6063237761382d2c37e79b65f1707a7b76244e6baac2731718c6ef88e66319bb5773229e050b2164b660b4f885','179.6.212.208','Windows 10',1,'2019-05-13 16:40:26','superadmin@superadmin'),(163,'6e66852577e90d644d44c1ea31bed95f0a158da14eb42b9ad5a3f9de2012a24b4f29359ed44314e222aee1fa0daf57e7202c58dcb166e867bfd20e3174fedfba','179.6.212.208','Windows 10',1,'2019-05-13 16:40:45','mesero@local1.com'),(164,'81ccf9f3a7f094dd5ba94cffcb66a4586beb16ca803b1a9bfd01c4d23499013bc4733ec1cb9d82133779e7ef2c6e1b6821114dafe3b3f926ce7f24f9166de0e5','179.6.212.208','Windows 10',1,'2019-05-13 16:41:11','superadmin@superadmin'),(165,'a2198dacc336d0055bfc59032e28367a37ab157fd0a25d242f35d430920ea844e4f126c2edf1a78f3b3070b0c241aa3593103b2571771d8488c61ab1ae9da203','179.6.212.208','Windows 10',1,'2019-05-13 16:41:29','mesero@local2.com'),(166,'33b6efc370e4fc93ae19c3aa17ae0699d73c519ce09ea1454c96de1bb7dc6526373eec61ac97cbb5fad27d99723349e535969fca97ad2d64067b510f09ad8c82','179.6.212.208','Windows 10',1,'2019-05-13 16:41:41','mesero@local2.com'),(167,'93b3e9005926c10b4c0a9627b71eaaadc5fe3b2a2bc352e77f80c2aae15a8546a155dd17d7ca2d56d81285712281de56a5f5b4fd0d6c7b22d402b74518570b15','179.6.212.208','Windows 10',1,'2019-05-13 16:41:59','superadmin@superadmin'),(168,'29d14e255312cbb567ea59ff6fc885ed0ca260bbab42ad7d0cc5806988db2f2405f7eb59f6f8891cedaa0afa0a3e813af1a779db7bf9f6bf64b242596ec97ab4','179.6.212.208','Windows 10',1,'2019-05-13 16:42:17','cocinero@local1.com'),(169,'4f82fa4f947cc0736e2d53513779eea2e36d89cc3528ad4c9ed902c714c110fe8f9c68f40100c0d43f2aae4a1cd595bed7394a67f8d110cf40dded401e48a67b','179.6.212.208','Windows 10',1,'2019-05-13 16:43:44','cocinero@local1.com'),(170,'7d9f34623c7c81fbf5216314ba4dbafdc6b69553ca1219c57a12409fac542dfefb4713592654c988cd109334a7622fd05641d2180ebca083a51c2a5af5297207','179.6.212.208','Windows 10',1,'2019-05-13 16:46:21','mesero@local1.com'),(171,'73bd2405259403a80737620185f8bf5d999e9e713067146896b1853c287fd4c1d24a3b095c3c4e2d61096aba0bafef0d59e9e1cf790d67540e753bdaa0d64c65','179.6.212.208','Windows 10',1,'2019-05-13 16:47:16','cocinero@local2.com'),(172,'be8c3bfa3437f7dbd1f59b232952fb629cb156fb91408d272b13aa33f1440854528abff84192d1c023134af2931f996acd65cf2ceeb9111b8871d839a760088b','179.6.212.208','Windows 10',1,'2019-05-13 16:47:48','superadmin@superadmin'),(173,'074069dded50933af2491b2cd2e5c89640bf306e273eee1594fece11f520f94964a26977d1a914c8bc552eff7556e7a16b7a41dc367213d09cfc57928c8b7beb','179.6.212.208','Windows 10',1,'2019-05-13 16:48:38','cocinero@local2.com'),(174,'27edaf12c89af5c0bda27d13d8418efa18b04a8bc978ac81212a494a954145c9fec92405e16d9121670cb21759c352e262afd96a40ca0f91474682f517e1d637','179.6.212.208','Windows 10',1,'2019-05-13 16:52:55','superadmin@superadmin'),(175,'ebca832560ca2016a5a00f8f6ec0e71a6942f4edf2678877fba66840eb11a50b682543677ea4830759eb79bfa4ccb1d1588bb1db3fb0ef8aa69a1b8fedccdeb8','::1','Windows 10',1,'2019-05-14 13:01:16','superadmin@superadmin'),(176,'c66aa3fd04011d1eb94c122b62ba4f072a38524214094da54e737ff288ed0acadddb9e61cd645468e73401ba5550edc74087511be52952393959ac0aba887b9d','::1','Windows 10',1,'2019-05-14 13:03:56','cocinero@local1.com'),(177,'5768481d4932bf6b442af0868f00849b479240cc6060bb8e7ab68094ae32f5728669c759bd62f2759e495d266c10032ab91e8ca4e88e38206e462b2d0a6176a1','::1','Windows 10',1,'2019-05-14 13:04:33','superadmin@superadmin'),(178,'1b252656890e5b01ceed24235494c982aa70d1fbacbc1dcc9482fa2ccffc723be1269f24a17f8e940e65b417e1551b4d6e0173edfe203ff94aa073af7aeea6fb','::1','Windows 10',1,'2019-05-14 13:05:02','mesero@local1.com'),(179,'54a8b923b2a6ad1ceeed70243cfee117e3aff4132fc328074b6e0fe16334c2fc3bec37637ee37fbbd0dcc4796ed6d5798c7cdd429f2de19d237f2c383fbda9c5','::1','Windows 10',1,'2019-05-14 13:06:37','cocinero@local1.com'),(180,'7df9433f079813ca793f03d84ce6b158a56d22f798d01acda267f2a83b442ead744163738d53b64201555bcc54a35c8a88e20ba8fe881e42e5219f9365a05bb6','::1','Windows 10',1,'2019-05-14 13:07:52','cocinero@local1.com'),(181,'61410f9e730000387a6812429ac5d44ed2f572d6dbfa3827984fc6e5f97a69cd7ef15ca6bf19e4d31a30ef98b31047773b3764794ab973e9e2232ca235b1f21c','::1','Windows 10',1,'2019-05-14 13:18:05','superadmin@superadmin'),(182,'b867ac91ac6bc2161675ca7d31be49d7de44aa3f45d217dc9509708eccae74f45b4fc9d055ed2c303e9531fe0e2de5a03ba9718dcbb5e54b1f97271635208aa7','::1','Windows 10',1,'2019-05-14 13:18:32','cocinero@local1.com'),(183,'553e7dac541c41190b561babe7ae717c939fa2e2a055b1d2cc23cb9e0b59b1db2f5591b48f884feb5ad47db397ee6ed00fc7c7a863abd82454a413f74ace5148','::1','Windows 10',1,'2019-05-14 13:22:14','superadmin@superadmin'),(184,'8dee9632e8f694cfdb8470b860a611bbc32fc34dd9f12d7abd16ba0ce17409b583cd490cc6dd8584f5e24466c26f989f8dbf7393ab171419988657d1c1f2f6dc','::1','Windows 10',1,'2019-05-14 13:22:40','cocinero@local1.com'),(185,'2cf072df4382ecd163792b2a8b3b384dc92f7f4dcd6e52297880960b31b9394e0bf60ce100749e0526866749f3c8759285411986d51142153742ee4c5977beec','::1','Windows 10',1,'2019-05-14 13:34:35','mesero@local1.com'),(186,'19512e5cc161719d8d64b646b028e2545b204bbfa67e279f251bcb00b5495c4cd80320ed364c60ebfa2d113a93f6169c23a75af1437ff97b2666fd88666c34df','::1','Windows 10',1,'2019-05-14 13:36:22','cocinero@local1.com'),(187,'003cde8dde6e108641ea0e4f48a07fb80e8a15651c342eaf439d7d5a289edb45c564eeca4e4404fa7ef247badf4fbbb03aac8afb2ecba7c9b211e55be9d06d4d','::1','Windows 10',1,'2019-05-14 13:44:50','superadmin@superadmin'),(188,'0a27bbff6917866102e69462302f53a67cb21e02f68df2f0ef82c2c6da93e5bb82faad127ecad72fa8138240ea793938a2fb5103b1d4f19cbb74a68b532a4f6c','::1','Windows 10',1,'2019-05-14 13:45:59','cocinero@local1.com'),(189,'86d37b84c68c53c87c023ada75451df1fb7e57ab14dca4e7a830dd6cfc03b97ac4df91d0b8644f0ac327ef5cbb780aed26ab0cd045bb84d9ffee5917183742c4','::1','Windows 10',1,'2019-05-14 13:49:14','superadmin@superadmin'),(190,'7b27bb636583d7b0728d78feda5ce4c05d7cf7f35eba56fa04f0e9972998ec024e56e0ee51226e43cd900d52b5e1184735b945bdec58c179021e1949c96155c0','::1','Windows 10',1,'2019-05-14 13:55:38','mesero@local1.com'),(191,'106bd3df1656e39b26ac19810c7c7f8c7414e2a658a1cd8072ff63437edd1baa43374626efcf8c55a9001717f72a9f4b26484767b2ad6de6a34909b23c8ec7fa','::1','Windows 10',1,'2019-05-14 13:57:04','superadmin@superadmin'),(192,'dacd37b1932248c95cb69f0c86d3e762556384df958b3c9f6432b0cad88dbfdd334ef4238f266c60e31c11d58315347b3fdf2bf002c01a8a8743743b04af584d','::1','Windows 10',1,'2019-05-14 13:58:44','cocinero@local1.com'),(193,'2cdf2a3d080d53a3e0029901131c7a6d48d6f74488c1f7c63b4c64f4e0b976f2ed859644c21bc247d4e7f47433f33daaec85976544cd0fe64a9ba2ecff20b6c0','::1','Windows 10',1,'2019-05-14 13:59:19','cocinero@local1.com'),(194,'849080cfccafa28f0b14dab890998c2db5936be222a63ea633e415287b1bca09c3b69b6417af175de2488e7a1047cb6d21610a8175a44f9b71ee3883325aa8cd','::1','Windows 10',1,'2019-05-14 13:59:31','mesero@local1.com'),(195,'cd39deece070eed0001c54cc7422b3b1b796c02ecec335c227d27a22aaf0417a43eebd24eccfb36fd1716f2e7997c3a24384b87cbdfaddb7c6081ee9c63a2ec3','::1','Windows 10',1,'2019-05-14 13:59:45','superadmin@superadmin'),(196,'5824f0b95d72ee9a83570accfc0a12cb9b15a6c8ef1b7e923dddb49d62b60d6afc3d2eddec2e7792d165b1524a96b798e846e51dc9dc78f2609beb3205054610','::1','Windows 10',1,'2019-05-14 14:09:11','mesero@local1.com'),(197,'fb015f2494baca062b9307276d971ee1777ed6b504774846b9130876ddcea83d3600a903c30471cbc56598fc74104879a8eb82f149f1e67e0a659c979f8d0b92','::1','Windows 10',1,'2019-05-14 14:15:20','superadmin@superadmin'),(198,'9253a122242502263e75ee332658ad38ce4ebe7287fc10e51ff36a71e9b815846b5873ea5c4fd9c30d928191bab8de3621b78d1cd3848ccbdf27a7d9c1e78972','::1','Windows 10',1,'2019-05-14 14:16:28','cocinero@local1.com'),(199,'f0826920be625735f19ad6237043c11df70ec3846b04f7bcdcb643276715c99e7c3bb9cab69716c6148ed1e2bf9e86b0a737d4aecaa2e84a600b1b88a4e4147a','::1','Windows 10',1,'2019-05-14 14:17:55','superadmin@superadmin'),(200,'1fb32bf9f11a04e748da58da39c5598c1246c4bc4fa86aaca621c9deff13898b627d7f470750e1eadf8705265f1e39fb3a7c6cab6435553b6692afc728b282a6','::1','Windows 10',1,'2019-05-14 14:19:12','superadmin@superadmin'),(201,'dbd1ca74038cbac501603482b4da6edb6ca8b11a80d1b1f00c21d495767767badd17d94b2b086c473b2f1d53f41ff69e7805a36c21202eb7c6548e85a22142be','::1','Windows 10',1,'2019-05-14 15:01:39','mesero@local1.com'),(202,'6d3b24c10ad51615096e4937ef7305a17405ffcdbd47a6e2535fcf044e5534c662ce9ced4973ca9bfb1674040b2b18475f1f3b1436cb116f68eada3a935e1acb','::1','Windows 10',1,'2019-05-14 15:04:28','superadmin@superadmin'),(203,'611f33b94fe4ebe3045e414436d30f3a338320d93739e2c1391493081e974514800ab7f13b73a62acdd3d3ea21d9bbc0816b979db2de2e5748711a699835e470','::1','Windows 10',1,'2019-05-14 15:05:28','mesero@local2.com'),(204,'3d3c020d51cf1d89adc65f59ca0c0899d13efef17100be0491ba027d1f0215096a135743639ca4411f989d6483341a6c04615471ecb057d2170e1b7a4965a7c1','::1','Windows 10',1,'2019-05-14 15:11:28','superadmin@superadmin'),(205,'886d2fa306af71221ed18c41f2af6a843a790a0d10cd8e3f675a934a810975a9ede9a53ae69b7718af4f35834bfaa1c3356b4b577b01e156267cf5b03ed36474','::1','Windows 10',1,'2019-05-14 15:14:08','mesero@local2.com'),(206,'08feda081e1a35ac933e6da60c291653fac2fb28c3ccd26d68fc310ddfe9fbc9db8885ae93c89bbb700cf4e2de6327b19239584b2c8350fde5ab0ae834b49872','::1','Windows 10',1,'2019-05-14 15:17:20','superadmin@superadmin'),(207,'7ba9888856d6cc206d71b8e0d6130871c2fa3acc5ecb4c227a7fe3b811a2e2a3631947ae86ef962aab51d0e6abad64c4bde1a556d7673342ddd48894220cee3d','::1','Windows 10',1,'2019-05-14 15:17:31','mesero@local1.com'),(208,'af773445f2e99042167104ddd9a226098cea2ce015217f3b5e1012af3be7cfb982d2cc2e685833487e02d3b709dba75785fd4bca34a4ecff73e8426e8e9affce','::1','Windows 10',1,'2019-05-14 15:17:41','cocinero@local1.com'),(209,'00b6480d1d3accbd67012778d2433e6604015f48d693ef64f14f1f927787caa217b1ee7b64eb79eed11f9a37364aedc47f76fcaaec4d5887798119052fb4bb69','::1','Windows 10',1,'2019-05-14 15:18:23','superadmin@superadmin'),(210,'7c881e64a6354ea42b970b97b76e4f2a4ecc77a954853edd1afb8a0803d5a4f07d197751017f9fe4e0843ade7514c5a895ff1b07adc2d09ba7ad2eff6f5156ea','::1','Windows 10',1,'2019-05-14 15:19:10','mesero@local2.com'),(211,'33b83926d8b384a5fae4bb20f67ca3ea59036c523d1a4048da169c26ad70e86c3148515c35e625d98ddf5ae8523a7e0fa2f69c9fb740641dcd7a3e7ff70fb649','::1','Windows 10',1,'2019-05-14 15:22:12','mesero@local1.com'),(212,'92b9d5c893144b49e49b06a938f80f4ec7ad53bf90595c2d763de1e42c74881c732dfadf9b53728ddab751c755651518ab72dc1f7ac8f29ae7e65d9e279a2785','::1','Windows 10',1,'2019-05-14 15:22:19','superadmin@superadmin'),(213,'4a5b58af38641cc44dbf3e9ba017c174e9db6a5104e9c418e16502b43d3971c5cae58e8a8f2ef1b79289dcb605b9b68bbdfe51a57d3ac9878cf3dd031ea50230','::1','Windows 10',1,'2019-05-14 15:23:03','cocinero@local1.com'),(214,'799f7a4b9ac28cb246e1f559513f7178318b02effc573641d81a41c23a05f87a4e28f8e2d7bc15864d8fd57cedc45506b92cabaa51fc593b344641f9afeeb75f','::1','Windows 10',1,'2019-05-14 15:23:24','superadmin@superadmin'),(215,'bee26df37ba820c1a56c95bfbb21bbf1c7f1049f9820d514ad480ef2bb9b0144969610cd6c4a960e9fc82531d983377e498a2c4bf35e3bf27b00dd917539c9f7','::1','Windows 10',1,'2019-05-14 15:23:51','cocinero@local2.com'),(216,'ef0cfe7dd8d192515d9f4e48acaf044d75132a6144039219712fdf4436843222568a870e4246c88e8df7786d28a3c7edce5f127f87f7c4c10411f6f3c2fd1ba6','::1','Windows 10',1,'2019-05-14 15:26:10','cocinero@local2.com'),(217,'bfab95c05bbc07475260fbd5a4de18092f720505fac61c9b1978b27460cf6e51ff85a3f911470e90d038e2e6eb485a98859777136dcaf174d37afa10a6b8b996','::1','Windows 10',1,'2019-05-14 15:26:23','mesero@local2.com'),(218,'2a97296a91df9412296ab0981261902e872139933e6fd21d5175836bf657147cac5e74fa7ef2d72ed413b47daa7cbe16a2bb9288f92b766f4eca2ad190b7d53a','::1','Windows 10',1,'2019-05-14 15:28:40','cocinero@local2.com'),(219,'14d08ddcb02fb758f01f6ee341a31de392fceed2dfb20610cddc8f91305ec73e3d76120403d8d851e8decc10e389b2f5e2c840ce454e8e3edb6d673bc2515634','::1','Windows 10',1,'2019-05-14 15:33:55','cocinero@local1.com'),(220,'3cc47cd10d1332782cb5c5701a4fb185987e1c87f20c6a753a97b166d5a5b92f83d03d23aa1844b77b00ffb3ecb3abc44e8893d6575dee703ec872d62e42ebc8','::1','Windows 10',1,'2019-05-14 15:36:15','superadmin@superadmin'),(221,'b76963348cb10cd3c39d8ab351ab17a7d09633cb5ac5f7520c8cbe5df4fd154605b35e78968820e871d2e8ee383d08971743b63762484d4c4914e27ee10247f6','::1','Windows 10',1,'2019-05-14 15:45:21','cocinero@local2.com'),(222,'ad114f69769ad0f9f2d91a019cc1b3be34955bd05db99b6c731332c3a31b0d915eb7c2007fc36b156d79ce186c20dc1d96c87fe9eb873e50f43e5885c7b0d12d','::1','Windows 10',1,'2019-05-14 15:46:12','superadmin@superadmin'),(223,'cc64e2a20db11702c88fa65b13f67e6d2bc981c18deaef530a01a81e5415fd18c15bd2c97fb938164e3b641b0c9f0017ba4affe39622754a78ff8d9d5ebfbbce','::1','Windows 10',1,'2019-05-14 15:48:58','superadmin@superadmin'),(224,'cf03f72c5783c89c62956f74cc6450d066323465f2151ac5680e6aa5b6ca2cefb95f9718e4fe9fd247ad15841d326fe4f25c8104a62098f00c12d78af57ca16b','::1','Windows 10',1,'2019-05-14 16:05:14','mesero@local1.com'),(225,'502eafa421fad102243999ffcb2c0219005f735022612d8572fab77d77faf69a43b39c583f628a73adc3ef4aeec62a53ceb3dc109c68347f56e8dea24577181f','::1','Windows 10',1,'2019-05-14 16:05:27','cocinero@local1.com'),(226,'9a4300f1581a1b584ef481e793abe29fa2e16307a06245ea72969b42cf6bd079becfd5d29c01302db9e4da8bb13aa6f987910e2fc2dcdb71a4730a319d4ab565','::1','Windows 10',1,'2019-05-14 16:05:47','mesero@local2.com'),(227,'ec145f65dd9d05c30dcb026e68f21d76564f64664b8697a143352d89315fb81c3695c7c6170b610dcc9ef9778a2b51a7138622f8e2646934cc7e38be9fad7835','::1','Windows 10',1,'2019-05-14 16:06:08','superadmin@superadmin'),(228,'1672d4963c93bc0f67c161ce918f49a9bfd038eddb7acb83491baccf836b79a34ea7b02ec8d70deefa9e2f2612eff99456019e26ed786e27c37a3d169eab85e4','::1','Windows 10',1,'2019-05-14 16:06:45','mesero@local1.com'),(229,'84b60c94a6b7fd7f7ef1d66c6b8eb7fec528b8f5828144ae8a24c187f180695765f54aecc22db25f9d070753b2f4dae03db39bb86cb0a3251e53a41046ba4d27','::1','Windows 10',1,'2019-05-14 16:07:06','mesero@local2.com'),(230,'9aa25e996960002cb67faa4d09bfcee295717bbb14d74610b9875f61696a06eb76755a65e55920690ac8da20ac20035e5af409eeb0c327756d76c0d0c00fb5a1','::1','Windows 10',1,'2019-05-14 16:08:17','mesero@local2.com'),(231,'a6d645bf31319a319e7f87e844183dd305bc887ba4cecb4c88ad79381436c452dc98415a8d96ab9473c43d8457ebfc7d576ae514de8ea52961a54ae027de5a8d','::1','Windows 10',1,'2019-05-14 16:08:29','cocinero@local2.com'),(232,'a0ae47bcac6650be8458e2c6bd2b8c688f2ea26aed51e3ecfd6ef424700bf3162db89f76d360747a8add0aaa5e283a780fab29e891bba08062e5396bfa42b1ad','::1','Windows 10',1,'2019-05-14 16:09:41','cocinero@local1.com'),(233,'2779f8fa9fa83f82feaf7d32f030a73f1d8db3b030f41fd5e1f3b8798ed136082f1109deb23cdea435c9065dac475b941faf7c98ceefdd4bfdf99d01269a2933','::1','Windows 10',1,'2019-05-14 16:09:54','mesero@local1.com'),(234,'e3743fa955aabf5d89817c306cd846d0dacfedceb019e8703bb31f67ecb7dc136d65b6278642afceb72ff05c6e572afc527f9ad86445ae92baafaaff53efe098','::1','Windows 10',1,'2019-05-14 16:11:11','cocinero@local1.com'),(235,'6890e31d550d5753a8b7d44b2478b63c6afdf089702817e551b098d3dc8d1c5f50656d2565ec4505c418e1f4a98e6cc9f87aa80eb9dc466aaaf6a813d0430d66','::1','Windows 10',1,'2019-05-14 16:11:39','superadmin@superadmin'),(236,'f99eb333d763d7e03523f6f94f4914ac7dfd114ff28e2385ffabc0e3454f6aea1ac7747ada591abf8282bf3dff3081333662875e4fbf3c5feebc8fd3aa4a9a53','::1','Windows 10',1,'2019-05-14 16:12:38','cocinero@local1.com'),(237,'9ee7a30a151559c954e1b060885a0228254a4585f23182ca395d991b95b13c969a5cea223abccbdf054d603e06150145f37c4f762c49b1c4cb06b270ad58859e','::1','Windows 10',1,'2019-05-14 16:16:34','superadmin@superadmin'),(238,'d65741eb72986ef4af79f1f4788e4743ad82b1a69dbdf63aa38ce391889ff01496b61a35558de8a54529de7c02f182abc4444bf26e3ba70457cb0b887f5f8aae','::1','Windows 10',1,'2019-05-14 16:17:12','cocinero@local1.com'),(239,'1d3e544a46a39f1e58b9ca71a10e73956662be2c9d45c2ce617fc77b3da6c72e49bb7f6e3892b47f649c50ab15ed6dc1847f81616fa76f2018375703743f5c4d','::1','Windows 10',1,'2019-05-14 16:21:05','superadmin@superadmin'),(240,'29c1c3e90919bf08f9a7a2aca55318d592f268322d75406898e9cabf62b78e4dd847ab68a0b754b5f626658c90ccc5bfbb8f3550595256ed954e1927298ec9f1','::1','Windows 10',1,'2019-05-14 16:22:40','cocinero@local1.com'),(241,'6fda87308c38ccf36801e9cd38a4ecd67c78c11acb4b60b660e63002dd6b2a1d727d27d2b04376813294e2520547f8b43632ce9e9258b8d6f5e6a154e11cbe3c','::1','Windows 10',1,'2019-05-14 17:02:43','mesero@local1.com'),(242,'95c7a63a062e7dba23d726db23867736475907d84c2278c2122922f3454caa0fa33b50fda74c5cadf87666cc5237f70a445a150af30108fdfc40bc3fdd05cacc','::1','Windows 10',1,'2019-05-14 17:03:54','cocinero@local1.com'),(243,'611e10828b1e283a535cf173adae792a5cc9977e814a65dd984f32b8cd6755da0372981e0b47a6e4e53a7c0913054631685f6ec79c5961b448ee87c17259fbaa','::1','Windows 10',1,'2019-05-14 17:04:07','cocinero@local2.com'),(244,'abbac63a74696785908130386114db7103d482ab72abf401a4ae93836a9787d09fbc13e4d139048d26f32640f6bd12f45f5acc6eaef5e0a923d4d5ed62255533','190.42.228.44','Windows 10',1,'2019-05-15 01:38:11','superadmin@superadmin'),(245,'979951b3f4fd55035e83d9f85ba4f7bae86319db40307070871cfd3c8a9043d948c4c6d78d85e6cc462730438f6785421470330edd1d77ecdbe667a607c01a63','190.42.228.44','Windows 10',1,'2019-05-15 01:39:40','mesero@local1.com'),(246,'5feef3f3eca1fca489cee0852cf97576dcbca72b68278fa65488f54d6df03ea5b2f97dda1c49839840fda6ceaa0aea065a476826c419b9702cb31a8d96767da5','190.42.228.44','Windows 10',1,'2019-05-15 01:40:58','cocinero@local1.com'),(247,'f99bba52c3901ddd4c6f209fbe3e8483e5fe311dcfae679c6c2c34c5aebcc151cc48e17218333a78467770793e5d18baea2a9b83864e6ce431dfa79f1d6152f3','190.42.228.44','Windows 10',1,'2019-05-15 01:43:45','superadmin@superadmin'),(249,'a5af8550f4b29ab726fb2aa99e1928c0a6e2d4b8f33d95347f49aec832d4f4331e4f1a2d47a4f6b14a30626e1db5400c3f8cebfd964543013fe5efc535d77154','::1','Windows 10',1,'2019-05-15 11:19:43','superadmin@superadmin'),(250,'b84d792895637061a7f1f0f52fc1170a7b86562b8b90015b23b85d3a047e08ab741e8ddf6721273214e6fbb95cadbb5c5d42ff405a25c22a4356eca155f020a1','::1','Windows 10',1,'2019-05-15 11:19:53','cocinero@local1.com'),(251,'ec2b0794de0ee43891e792d3c9b857571b96f44223621e318a652b9946cb2818c47531d4a5c58d6f85774e5cc6d29e73b6cb22f0a3091c399877aee559ef80b0','::1','Windows 10',1,'2019-05-15 11:20:04','mesero@local1.com'),(252,'a91a65c74e4d35690ec2216d6172c0c0792a7e3b74387ee4539f7acc8ea2aea893c47ab6a67f696fbea973b8826ea696efac35d2aa7ecb12eda440cfd4f8973a','::1','Windows 10',1,'2019-05-15 11:25:18','superadmin@superadmin'),(253,'7f441ee3c8ac3a9f8191506dd321eab6268318a40753dc75971edc3f8f5c80829fcf08c965586750ec028a6bbacff558ce03a3713cf1bb26c8049b6e386d6727','::1','Windows 10',1,'2019-05-15 11:33:58','mesero@local1.com'),(254,'82f4b67c679bf40dacb14c8cb7b882f3303a660241771e40082a2182c69060b2a8801d40ff00839e06550759e24a20fa17a147273cb2b9365feb639fad3da61a','::1','Windows 10',1,'2019-05-15 11:35:57','superadmin@superadmin'),(255,'1081eca419607fce04d957169029c5bb0764fcd37e7c842747e54bd9343556b45b90d5cd2d78c8a52d4d7cbf74a1a90e6d5fb5f3119996d1e2aa20d0103045e4','::1','Windows 10',1,'2019-05-15 11:39:09','mesero@local2.com'),(256,'41edd2ec33f97dad153268d3b875ff8341026ec6f56d24688422629e55e8654753942f2570c1dd4834013f2e97c923f2629805e27b26c5cef6a326069a749fd3','::1','Windows 10',1,'2019-05-15 11:39:32','cocinero@local2.com'),(257,'23ed0519319e3a16ddde816d79a42cecbe7b6fc5937826a20d931cf1926f6e322d5c852f486c2fbf9eb5ab258418cd3acd6df1aa7cb2495685abcee3ce6581e7','::1','Windows 10',1,'2019-05-15 11:39:47','cocinero@local1.com'),(258,'23c521f993759ccdde1a459566f31d3c1d3ed131b169edb14ed066164bcc6d0ffe5486d5dce4ad1943494d355cd80e852ab6c568cc371d490a126507889ba3ff','::1','Windows 10',1,'2019-05-15 11:40:18','mesero@local1.com'),(259,'766e1959698992725f4e5a871dcb8de374117aeefbd950a3c849ae9ced7a4116996bb33b5b4b96ff0c2085849e1e90742bbf0cfc654d3dfd46bb0e6afe740711','::1','Windows 10',1,'2019-05-15 11:41:30','cocinero@local1.com'),(260,'3ce059326798ef31927524da626bfe98d906237c094b8f4ce9d926645ade4c3d32720d0a8453b51983005af8cbdea1e10856bdbf957f226ce92921394ae8bd90','::1','Windows 10',1,'2019-05-15 12:05:43','superadmin@superadmin'),(261,'08db885c40e88fffe12790c1616ac6ceae62a48f2bc30e78f676e71689d63bef4fb2c2f6d3319ef885d59d25a53d8ecf6615bd3cc59be03182aefe04f8e91969','::1','Windows 10',1,'2019-05-15 12:06:51','cocinero@local1.com'),(262,'e2911bbf9be4cf55f5ae002a57c1bed3eccc53291a4fbe8be89bd28ce0df63fb0afc3ebdb403452b743b901fd49ed2b541593bd05d0792cd716fb51f84bf418d','::1','Windows 10',1,'2019-05-15 12:07:31','superadmin@superadmin'),(263,'77a28f781f6965d915575c97aede6d478ac105f73495a028cd2c792b23a58ab49aba1c8302191a66621ab4d70b741ddd31787ad2d4e9f7abad77f1d4b2015ff2','::1','Windows 10',1,'2019-05-15 12:13:54','cocinero@local1.com'),(264,'8bf9e38c0232204f93d00b976efd4c92d302dee7b7216e665b748a97e7be6a341f6c0b7e6ca5b15ecb8ac72fc09b244b6accbcbd4e4b943748b81d00ee18d484','::1','Windows 10',1,'2019-05-15 12:32:06','mesero@local1.com'),(265,'de36f0be540f4452da5a0eb9248356f147e69858d3b407985602538c627a966f092657667795486ad7fd88206538e5a483e70ff1a3344d9d8ef112486c7e3561','::1','Windows 10',1,'2019-05-15 12:32:21','cocinero@local1.com'),(266,'234977b9d913a339a75e2a0a84b8d833e8a2fb9e090297bffbd92e110f22762f46689a684733a6396c7de49dfd0484ced7f937d2199addf90d7246ebe2575766','::1','Windows 10',1,'2019-05-15 12:33:05','mesero@local1.com'),(267,'47af581ad6cb22f868ac4bfb4b97f35f5bf497c40c25dc2988136e6c549ac5f0267abd311a92f50d2bb0c913159e8210f279caa8d1b4d0681bc8432c9c2037cd','::1','Windows 10',1,'2019-05-15 12:40:36','cocinero@local1.com'),(268,'5422d68eaa05c0e9da3741f3a2184e0ee8adaf6fc6615f7d963003a1dcb8491ba57cd00b8e9c63883c7c2005f458130ba3a71cd5f379cfb07a0d24ab8db200d5','::1','Windows 10',1,'2019-05-15 12:42:04','mesero@local1.com'),(269,'168cc54042b888b9bb7adf810025b519f233ec09db8fe79df8fa39f19a3efa8d01c856a14e6f260030defb94b0d9aa2015d9695b5852b4d5f801d395328c397d','::1','Windows 10',1,'2019-05-15 12:42:37','cocinero@local1.com'),(270,'fe9a103efa51d6c34ceeba71b2b1c1a0ebcbfcd963233d0d633f2cbef93d5f162574fbff997e5874ff4b356dc5967615f4ba09c9e5954f779e4f6c43b762b746','::1','Windows 10',1,'2019-05-15 12:43:07','mesero@local1.com'),(271,'51816a48716407de60ab74c7e6b524956f39edd0961a659391387d2e56f80eb11a502659e16c1b7a79efe1854192ea05788c47bd07aabf54019f5ac8eba01dc1','::1','Windows 10',1,'2019-05-15 12:52:00','superadmin@superadmin'),(272,'c7d6bcb9b48257c1de929ef00fbc343cc06f7995475a92b178dae4474553160cc101b6c37cac5f5a7de59dec19e3e650e539dd42c5c4b0ecab79b428063d2523','::1','Windows 10',1,'2019-05-15 13:31:28','cocinero@local2.com'),(273,'148f0027fa4867e464b2b6d15ac3089d6e19356cfaed31a480cd56150bb770f66875504d27c220bab7d37cbdbe57f3bc98cc7e3c59b4ed6d90576f0c192498e2','::1','Windows 10',1,'2019-05-15 13:31:46','cocinero@local1.com'),(274,'0904b12ec13dc2ce6ce8afe70fe0da8f325a45df8562639c65f0038c3238050fbbf42599195b26f2945214ca5086a3484edc48b9a4aa1d282d43df7dc5561965','::1','Windows 10',1,'2019-05-15 13:33:18','mesero@local1.com'),(275,'653152fda5378a2416aa2dee938bf7c8780288913b541684ccc64b6eb23edad07cd41e70608282f5d8caec56b1f61631f98a3d2cf23b49285bbb4ff23589cb4a','::1','Windows 10',1,'2019-05-15 13:34:59','cocinero@local1.com'),(276,'dff3808617c686af355bf59e6bf9330681dead7804d75d0b4bf736520e562b74b94371285ea83c19a4fbb9635c88443d516c24e7d2713fe7540641e7e7e3c3dd','::1','Windows 10',1,'2019-05-15 13:51:07','superadmin@superadmin'),(277,'dd372faabb49b198e0fb50e4b867d208ca44c3785eb27388e6c6874abe0013bee5b80e5cc7c6dcb8c74cf953bfe5542afda524cbbd5f86f0530e217442a53796','::1','Windows 10',1,'2019-05-15 15:45:43','cocinero@local1.com'),(278,'b0d27385f06042412064ab5555609c6e9548856a188b1ee6752fe51e7be64c6395a93c5e2d76b014350f9aff899b30eed82c0c4d6bbabeabdfac36395fed654e','::1','Windows 10',1,'2019-05-15 15:46:24','superadmin@superadmin'),(279,'7570822b5af92bfb18854a63adccff78055dc8db0087b68bfcda1986de963b5b268eee60a2f48fc2b085d9382aedd6faf3b4b4190e79b442bc4a41e9297df6d9','::1','Windows 10',1,'2019-05-15 15:49:31','cocinero@local1.com'),(280,'9654e17eee6864071c6235817fa7e47bc10bcba36b1605877b74a882e812181474c04795253464617a7395ba33e0c2082f0eee73525b42cbbded08f5acd7be49','::1','Windows 10',1,'2019-05-15 15:50:12','superadmin@superadmin');
/*!40000 ALTER TABLE `TUsuarioToken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-15 16:26:50
