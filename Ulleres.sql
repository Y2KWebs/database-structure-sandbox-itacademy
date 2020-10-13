-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2020 at 06:13 AM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `y2kwebs_modelaExercici`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ulleres`
--

CREATE TABLE `Ulleres` (
  `id_ulleres` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `graduacio_esq` text NOT NULL,
  `graduacio_dret` text NOT NULL,
  `tipus_montura` text NOT NULL,
  `color_montura` text NOT NULL,
  `color_esq` text NOT NULL,
  `color_dret` text NOT NULL,
  `preu` decimal(10,0) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_client` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ulleres`
--

INSERT INTO `Ulleres` (`id_ulleres`, `id_marca`, `graduacio_esq`, `graduacio_dret`, `tipus_montura`, `color_montura`, `color_esq`, `color_dret`, `preu`, `id_vendedor`, `id_client`) VALUES
(1, 2, '45', '45', 'flotant', 'blau', 'blau', 'blanc', 333, 1, 2),
(2, 1, '44', '44', 'pasta', 'vermell', 'blau', 'verd', 22, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Ulleres`
--
ALTER TABLE `Ulleres`
  ADD PRIMARY KEY (`id_ulleres`),
  ADD KEY `id_marca` (`id_marca`),
  ADD KEY `id_client` (`id_client`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Ulleres`
--
ALTER TABLE `Ulleres`
  ADD CONSTRAINT `Ulleres_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `Marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Ulleres_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `Clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
