-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 192.168.1.64    Database: FestivalBolonia
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `Actua`
--

DROP TABLE IF EXISTS `Actua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actua` (
  `NombreArtista` varchar(100) NOT NULL DEFAULT '',
  `Cod_Concierto` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`NombreArtista`,`Cod_Concierto`),
  KEY `Clave1` (`Cod_Concierto`),
  CONSTRAINT `Actua_ibfk_1` FOREIGN KEY (`Cod_Concierto`) REFERENCES `Concierto` (`Cod_Concierto`),
  CONSTRAINT `Actua_ibfk_2` FOREIGN KEY (`NombreArtista`) REFERENCES `Artista` (`NombreArtista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actua`
--

LOCK TABLES `Actua` WRITE;
/*!40000 ALTER TABLE `Actua` DISABLE KEYS */;
/*!40000 ALTER TABLE `Actua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artista`
--

DROP TABLE IF EXISTS `Artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artista` (
  `NombreArtista` varchar(100) NOT NULL,
  `País` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NombreArtista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artista`
--

LOCK TABLES `Artista` WRITE;
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;
INSERT INTO `Artista` VALUES ('Dub Elements','España'),('El Canijo de Jerez','España'),('Juanito Makandé','España'),('SFDK','España'),('Tomasito','España');
/*!40000 ALTER TABLE `Artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Concierto`
--

DROP TABLE IF EXISTS `Concierto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Concierto` (
  `Nombre` varchar(100) DEFAULT NULL,
  `Cod_Concierto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Precio` int(11) DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  PRIMARY KEY (`Cod_Concierto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Concierto`
--

LOCK TABLES `Concierto` WRITE;
/*!40000 ALTER TABLE `Concierto` DISABLE KEYS */;
INSERT INTO `Concierto` VALUES ('Homenaje a los Delinqüentes',1,12,'18:00:00'),('Presentación SFDK',2,12,'20:00:00'),('Noche de Drum And Bass',3,12,'22:00:00');
/*!40000 ALTER TABLE `Concierto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entrada`
--

DROP TABLE IF EXISTS `Entrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Entrada` (
  `Cod_Entrada` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Cod_Usuario` int(10) unsigned DEFAULT NULL,
  `Cod_Concierto` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`Cod_Entrada`),
  KEY `Clave1` (`Cod_Usuario`),
  KEY `Clave2` (`Cod_Concierto`),
  CONSTRAINT `Entrada_ibfk_1` FOREIGN KEY (`Cod_Usuario`) REFERENCES `Usuario` (`Cod_Usuario`),
  CONSTRAINT `Entrada_ibfk_2` FOREIGN KEY (`Cod_Concierto`) REFERENCES `Concierto` (`Cod_Concierto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entrada`
--

LOCK TABLES `Entrada` WRITE;
/*!40000 ALTER TABLE `Entrada` DISABLE KEYS */;
/*!40000 ALTER TABLE `Entrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `DNI` char(9) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Pass` varchar(64) NOT NULL,
  `Permisos` varchar(100) NOT NULL,
  `Cod_Usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Cod_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES ('34923017L','Jorge','Vega Polinario','jovegamers@gmail.com','c1bc48a725387cf2f1cdd7f00f59b48e','Administrador',1);
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-18 10:13:09
