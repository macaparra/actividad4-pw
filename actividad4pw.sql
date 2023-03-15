-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 07:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `actividad4pw`
--

-- --------------------------------------------------------

--
-- Table structure for table `medicion`
--

CREATE TABLE `medicion` (
  `id_medicion` int(11) NOT NULL,
  `psi` int(100) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `pozo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicion`
--

INSERT INTO `medicion` (`id_medicion`, `psi`, `fecha`, `pozo_id`) VALUES
(10, 14, '2023-03-15 11:28:11', 3),
(12, 33, '2023-03-15 11:38:01', 4),
(14, 198, '2023-03-15 13:42:13', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pozo`
--

CREATE TABLE `pozo` (
  `id_pozo` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pozo`
--

INSERT INTO `pozo` (`id_pozo`, `nombre`) VALUES
(4, 'Zulia'),
(5, 'Pozos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicion`
--
ALTER TABLE `medicion`
  ADD PRIMARY KEY (`id_medicion`);

--
-- Indexes for table `pozo`
--
ALTER TABLE `pozo`
  ADD PRIMARY KEY (`id_pozo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicion`
--
ALTER TABLE `medicion`
  MODIFY `id_medicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pozo`
--
ALTER TABLE `pozo`
  MODIFY `id_pozo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
