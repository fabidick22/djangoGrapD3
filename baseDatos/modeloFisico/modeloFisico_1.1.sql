-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: gp3.1
-- ------------------------------------------------------
-- Server version	5.5.46

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
-- Table structure for table BancoPreguntas
--

DROP TABLE IF EXISTS BancoPreguntas;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE BancoPreguntas (
  idBancoPreguntas int NOT NULL,
  Pregunta varchar(45) DEFAULT NULL,
  idSector int DEFAULT NULL,
  PRIMARY KEY (idBancoPreguntas),
  KEY SectorPregunta_idx (idSector),
  CONSTRAINT SectorPregunta FOREIGN KEY (idSector) REFERENCES SectorSalud (idSectorSalud) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table BancoPreguntas
--

LOCK TABLES BancoPreguntas WRITE;
/*!40000 ALTER TABLE BancoPreguntas DISABLE KEYS */;
/*!40000 ALTER TABLE BancoPreguntas ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table Cantones
--

DROP TABLE IF EXISTS Cantones;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE Cantones (
  idCantones int NOT NULL,
  Canton varchar(45) DEFAULT NULL,
  Codigo varchar(4) DEFAULT NULL,
  idProvincia int DEFAULT NULL,
  PRIMARY KEY (idCantones),
  KEY CantonesProvincia_idx (idProvincia),
  CONSTRAINT CantonesProvincia FOREIGN KEY (idProvincia) REFERENCES Provincias (idProvincias) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Cantones
--

LOCK TABLES Cantones WRITE;
/*!40000 ALTER TABLE Cantones DISABLE KEYS */;
/*!40000 ALTER TABLE Cantones ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table ClasesEstablecimiento
--

DROP TABLE IF EXISTS ClasesEstablecimiento;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ClasesEstablecimiento (
  idClasesEs int NOT NULL,
  ClasesEstablecimiento varchar(45) DEFAULT NULL,
  idParroquias int DEFAULT NULL,
  PRIMARY KEY (idClasesEs),
  KEY ParroquiasClaseEstablecimiento_idx (idParroquias),
  CONSTRAINT ParroquiaClaseEstable FOREIGN KEY (idParroquias) REFERENCES Parroquias (idParroquias) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table ClasesEstablecimiento
--

LOCK TABLES ClasesEstablecimiento WRITE;
/*!40000 ALTER TABLE ClasesEstablecimiento DISABLE KEYS */;
/*!40000 ALTER TABLE ClasesEstablecimiento ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table Cuestionario
--

DROP TABLE IF EXISTS Cuestionario;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE Cuestionario (
  idEncuesta int NOT NULL,
  Encuesta varchar(45) DEFAULT NULL,
  Anio intDEFAULT NULL,
  idPreguntas int DEFAULT NULL,
  PRIMARY KEY (idEncuesta),
  KEY CuestionarioPreguntas_idx (idPreguntas),
  CONSTRAINT CuestionarioPregunta FOREIGN KEY (idPreguntas) REFERENCES BancoPreguntas (idBancoPreguntas) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Cuestionario
--

LOCK TABLES Cuestionario WRITE;
/*!40000 ALTER TABLE Cuestionario DISABLE KEYS */;
/*!40000 ALTER TABLE Cuestionario ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table EntidadEstablecimiento
--

DROP TABLE IF EXISTS EntidadEstablecimiento;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE EntidadEstablecimiento (
  idEntidades int NOT NULL,
  EntidadEstablecimiento varchar(45) DEFAULT NULL,
  idTipo int DEFAULT NULL,
  PRIMARY KEY (idEntidadEs),
  KEY EntidadSector_idx (idTipo),
  CONSTRAINT EntidadTipo FOREIGN KEY (idTipo) REFERENCES TipoEstablecimiento (idTipoEs) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table EntidadEstablecimiento
--

LOCK TABLES EntidadEstablecimiento WRITE;
/*!40000 ALTER TABLE EntidadEstablecimiento DISABLE KEYS */;
/*!40000 ALTER TABLE EntidadEstablecimiento ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table Parroquias
--

DROP TABLE IF EXISTS Parroquias;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE Parroquias (
  idParroquias int NOT NULL,
  Codigo varchar(45) DEFAULT NULL,
  Parroquias varchar(45) DEFAULT NULL,
  idCantones int DEFAULT NULL,
  PRIMARY KEY (idParroquias),
  KEY ParroquiasCantones_idx (idCantones),
  KEY ParroquiCanton_idx (idCantones),
  CONSTRAINT ParroquiaCanton FOREIGN KEY (idCantones) REFERENCES Cantones (idCantones) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Parroquias
--

LOCK TABLES Parroquias WRITE;
/*!40000 ALTER TABLE Parroquias DISABLE KEYS */;
/*!40000 ALTER TABLE Parroquias ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table Provincias
--

DROP TABLE IF EXISTS Provincias;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE Provincias (
  idProvincias int NOT NULL,
  Provincia varchar(45) DEFAULT NULL,
  CodigoProvincia varchar(4) DEFAULT NULL,
  LongitudProvincia varchar(15) DEFAULT NULL,
  LatitudProvincia varchar(15) DEFAULT NULL,
  idRegion int DEFAULT NULL,
  PRIMARY KEY (idProvincias),
  KEY ProvinciasRegiones_idx (idRegion),
  CONSTRAINT ProvinciasRegiones FOREIGN KEY (idRegion) REFERENCES Regiones (idRegiones) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Provincias
--

LOCK TABLES Provincias WRITE;
/*!40000 ALTER TABLE Provincias DISABLE KEYS */;
/*!40000 ALTER TABLE Provincias ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table Regiones
--

DROP TABLE IF EXISTS Regiones;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE Regiones (
  idRegiones int NOT NULL,
  Region varchar(45) NOT NULL,
  PRIMARY KEY (idRegiones)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Regiones
--

LOCK TABLES Regiones WRITE;
/*!40000 ALTER TABLE Regiones DISABLE KEYS */;
/*!40000 ALTER TABLE Regiones ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table Respuestas
--

DROP TABLE IF EXISTS Respuestas;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE Respuestas (
  idRespuestas int NOT NULL,
  Si/No varchar(45) DEFAULT NULL,
  Kg varchar(45) DEFAULT NULL,
  idCuestionario int DEFAULT NULL,
  PRIMARY KEY (idRespuestas),
  KEY AnioRespuesta_idx (idCuestionario),
  CONSTRAINT CuestionarioRespuesta FOREIGN KEY (idCuestionario) REFERENCES Cuestionario (idEncuesta) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table Respuestas
--

LOCK TABLES Respuestas WRITE;
/*!40000 ALTER TABLE Respuestas DISABLE KEYS */;
/*!40000 ALTER TABLE Respuestas ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table SectorSalud
--

DROP TABLE IF EXISTS SectorSalud;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE SectorSalud (
  idSectorSalud int NOT NULL,
  SectorSalud varchar(45) DEFAULT NULL,
  idEntidad int DEFAULT NULL,
  PRIMARY KEY (idSectorSalud),
  KEY SectorEntidad_idx (idEntidad),
  CONSTRAINT SectorEntidad FOREIGN KEY (idEntidad) REFERENCES EntidadEstablecimiento (idEntidadEs) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table SectorSalud
--

LOCK TABLES SectorSalud WRITE;
/*!40000 ALTER TABLE SectorSalud DISABLE KEYS */;
/*!40000 ALTER TABLE SectorSalud ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table TipoEstablecimiento
--

DROP TABLE IF EXISTS TipoEstablecimiento;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE TipoEstablecimiento (
  idTipoEs int NOT NULL,
  TipoEstablecimiento varchar(45) DEFAULT NULL,
  idClases int DEFAULT NULL,
  PRIMARY KEY (idTipoEs),
  KEY TipoEntidad_idx (idClases),
  CONSTRAINT TipoClases FOREIGN KEY (idClases) REFERENCES ClasesEstablecimiento (idClasesEs) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table TipoEstablecimiento
--

LOCK TABLES TipoEstablecimiento WRITE;
/*!40000 ALTER TABLE TipoEstablecimiento DISABLE KEYS */;
/*!40000 ALTER TABLE TipoEstablecimiento ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-26 10:26:24
