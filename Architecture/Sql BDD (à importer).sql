-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 29 sep. 2022 à 16:28
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `protech`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `IDCAT` int(3) NOT NULL AUTO_INCREMENT,
  `NOMCAT` varchar(255) NOT NULL,
  PRIMARY KEY (`IDCAT`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`IDCAT`, `NOMCAT`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `IDCOM` int(3) NOT NULL AUTO_INCREMENT,
  `DATACOM` varchar(255) NOT NULL,
  `IDREFFICHE` int(3) NOT NULL,
  `IDAUTEURREPORTFICHE` int(3) NOT NULL,
  PRIMARY KEY (`IDCOM`),
  KEY `IDREFFICHE` (`IDREFFICHE`),
  KEY `IDAUTEURREPORTFICHE` (`IDAUTEURREPORTFICHE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `IDCOMPTE` int(3) NOT NULL AUTO_INCREMENT,
  `LASTNAME` varchar(255) NOT NULL,
  `FIRSTNAME` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `MAILCOMPTE` varchar(255) NOT NULL,
  `REPQ1` varchar(255) NOT NULL,
  `REPQ2` varchar(255) NOT NULL,
  `REPQ3` varchar(255) NOT NULL,
  `ISADMIN` tinyint(1) NOT NULL,
  `ISVALIDATE` tinyint(1) NOT NULL,
  PRIMARY KEY (`IDCOMPTE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fiche`
--

DROP TABLE IF EXISTS `fiche`;
CREATE TABLE IF NOT EXISTS `fiche` (
  `IDFICHE` int(3) NOT NULL AUTO_INCREMENT,
  `CATEGORIEFICHE` varchar(255) NOT NULL,
  `NOMFICHE` varchar(255) NOT NULL,
  `DATAFICHE` varchar(255) NOT NULL,
  `SOLUCEFICHE` varchar(255) DEFAULT NULL,
  `IDAUTEURFICHE` int(3) NOT NULL,
  `ISVALIDATE` tinyint(1) NOT NULL,
  `DATEFICHE` date NOT NULL,
  PRIMARY KEY (`IDFICHE`),
  KEY `IDAUTEURFICHE` (`IDAUTEURFICHE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `idee`
--

DROP TABLE IF EXISTS `idee`;
CREATE TABLE IF NOT EXISTS `idee` (
  `IDIDEE` int(3) NOT NULL AUTO_INCREMENT,
  `NOMIDEE` varchar(255) NOT NULL,
  `DATAIDEE` varchar(255) NOT NULL,
  `IDAUTEURIDEE` int(3) NOT NULL,
  PRIMARY KEY (`IDIDEE`),
  KEY `IDAUTEURIDEE` (`IDAUTEURIDEE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `modif`
--

DROP TABLE IF EXISTS `modif`;
CREATE TABLE IF NOT EXISTS `modif` (
  `IDMODIF` int(3) NOT NULL AUTO_INCREMENT,
  `IDAUTEURMODIF` int(3) NOT NULL,
  `IDTARGETAUTEUR` int(3) NOT NULL,
  `IDTARGETFICHE` int(3) NOT NULL,
  `NOMMODIF` varchar(255) NOT NULL,
  `DATAMODIF` varchar(255) NOT NULL,
  PRIMARY KEY (`IDMODIF`),
  KEY `IDAUTEURMODIF` (`IDAUTEURMODIF`),
  KEY `IDTARGETAUTEUR` (`IDTARGETAUTEUR`),
  KEY `IDTARGETFICHE` (`IDTARGETFICHE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reportcom`
--

DROP TABLE IF EXISTS `reportcom`;
CREATE TABLE IF NOT EXISTS `reportcom` (
  `IDREPORTCOM` int(3) NOT NULL AUTO_INCREMENT,
  `MOTIF` varchar(255) NOT NULL,
  `IDREFCOM` int(3) NOT NULL,
  `IDAUTEURREPORTCOM` int(3) NOT NULL,
  PRIMARY KEY (`IDREPORTCOM`),
  KEY `IDAUTEURREPORTCOM` (`IDAUTEURREPORTCOM`),
  KEY `IDREFCOM` (`IDREFCOM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reportfiche`
--

DROP TABLE IF EXISTS `reportfiche`;
CREATE TABLE IF NOT EXISTS `reportfiche` (
  `IDREPORTFICHE` int(3) NOT NULL AUTO_INCREMENT,
  `MOTIF` varchar(255) NOT NULL,
  `IDREFFICHE` int(3) NOT NULL,
  `IDAUTEURREPORTFICHE` int(3) NOT NULL,
  PRIMARY KEY (`IDREPORTFICHE`),
  KEY `IDAUTEURREPORTFICHE` (`IDAUTEURREPORTFICHE`),
  KEY `IDREFFICHE` (`IDREFFICHE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
