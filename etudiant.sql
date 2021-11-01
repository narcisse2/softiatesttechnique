-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2021 at 07:51 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etudiant`
--

-- --------------------------------------------------------

--
-- Table structure for table `attestation`
--

DROP TABLE IF EXISTS `attestation`;
CREATE TABLE IF NOT EXISTS `attestation` (
  `idAttestation` int NOT NULL,
  `etudiant` int DEFAULT NULL,
  `convention` int DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idAttestation`),
  KEY `etudiant` (`etudiant`),
  KEY `convention` (`convention`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `convention`
--

DROP TABLE IF EXISTS `convention`;
CREATE TABLE IF NOT EXISTS `convention` (
  `idConvention` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `nbHeur` int DEFAULT NULL,
  PRIMARY KEY (`idConvention`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `idEtudiant` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `convention` int DEFAULT NULL,
  PRIMARY KEY (`idEtudiant`),
  KEY `convention` (`convention`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attestation`
--
ALTER TABLE `attestation`
  ADD CONSTRAINT `attestation_ibfk_1` FOREIGN KEY (`etudiant`) REFERENCES `etudiant` (`idEtudiant`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `attestation_ibfk_2` FOREIGN KEY (`convention`) REFERENCES `convention` (`idConvention`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`convention`) REFERENCES `convention` (`idConvention`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
