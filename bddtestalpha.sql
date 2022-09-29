-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 29 sep. 2022 à 15:14
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
-- Base de données : `yourknowledgebdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `idCat` int(11) NOT NULL AUTO_INCREMENT,
  `nomCat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `idCom` int(11) NOT NULL AUTO_INCREMENT,
  `dataCom` varchar(250) DEFAULT NULL,
  `idRefFiche` int(11) DEFAULT NULL,
  `IdAuteurCom` int(11) DEFAULT NULL,
  `dateCom` date DEFAULT NULL,
  PRIMARY KEY (`idCom`),
  KEY `idRefFiche` (`idRefFiche`),
  KEY `IdAuteurCom` (`IdAuteurCom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `idCompte` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `mailCompte` varchar(50) DEFAULT NULL,
  `repQ1` varchar(50) DEFAULT NULL,
  `repQ2` varchar(50) DEFAULT NULL,
  `repQ3` varchar(50) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `isValider` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idCompte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fiche`
--

DROP TABLE IF EXISTS `fiche`;
CREATE TABLE IF NOT EXISTS `fiche` (
  `idFiche` int(11) NOT NULL AUTO_INCREMENT,
  `categoriesFiche` varchar(50) DEFAULT NULL,
  `nomFiche` varchar(50) DEFAULT NULL,
  `dataFiche` varchar(200) DEFAULT NULL,
  `soluceFiche` varchar(200) DEFAULT NULL,
  `idAuteurFiche` int(11) DEFAULT NULL,
  `isValider` int(11) DEFAULT NULL,
  `dateFiche` date DEFAULT NULL,
  PRIMARY KEY (`idFiche`),
  KEY `idAuteurFiche` (`idAuteurFiche`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `idee`
--

DROP TABLE IF EXISTS `idee`;
CREATE TABLE IF NOT EXISTS `idee` (
  `idIdee` int(11) NOT NULL AUTO_INCREMENT,
  `nomIdee` varchar(50) DEFAULT NULL,
  `dataIdee` varchar(250) DEFAULT NULL,
  `idAuteurIdee` int(11) DEFAULT NULL,
  PRIMARY KEY (`idIdee`),
  KEY `idAuteurIdee` (`idAuteurIdee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `modif`
--

DROP TABLE IF EXISTS `modif`;
CREATE TABLE IF NOT EXISTS `modif` (
  `idModif` int(11) NOT NULL AUTO_INCREMENT,
  `idAuteurModif` int(11) DEFAULT NULL,
  `idTargetAuteur` int(11) DEFAULT NULL,
  `idTargetFiche` int(11) DEFAULT NULL,
  `nomModif` varchar(50) DEFAULT NULL,
  `dataModif` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idModif`),
  KEY `idAuthorModif` (`idAuteurModif`),
  KEY `idTargetAuthor` (`idTargetAuteur`),
  KEY `idTargetFiche` (`idTargetFiche`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reportcom`
--

DROP TABLE IF EXISTS `reportcom`;
CREATE TABLE IF NOT EXISTS `reportcom` (
  `idReportCom` int(11) NOT NULL AUTO_INCREMENT,
  `motif` varchar(150) DEFAULT NULL,
  `idRefCom` int(11) DEFAULT NULL,
  `idAuteurReportCom` int(11) DEFAULT NULL,
  `dateReportCom` date DEFAULT NULL,
  PRIMARY KEY (`idReportCom`),
  KEY `idRefCom` (`idRefCom`),
  KEY `idAuteurReportCom` (`idAuteurReportCom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reportfiche`
--

DROP TABLE IF EXISTS `reportfiche`;
CREATE TABLE IF NOT EXISTS `reportfiche` (
  `idReportFiche` int(11) NOT NULL AUTO_INCREMENT,
  `motif` varchar(250) DEFAULT NULL,
  `idRefFiche` int(11) DEFAULT NULL,
  `idAuteurReportFiche` int(11) DEFAULT NULL,
  `dateReportFiche` date DEFAULT NULL,
  PRIMARY KEY (`idReportFiche`),
  KEY `idRefFiche` (`idRefFiche`),
  KEY `idAuteurReportFiche` (`idAuteurReportFiche`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
