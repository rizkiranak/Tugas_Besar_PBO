-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 08:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbapotik`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginadmin`
--

CREATE TABLE `loginadmin` (
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginadmin`
--

INSERT INTO `loginadmin` (`USERNAME`, `PASSWORD`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dataobat`
--

CREATE TABLE `tb_dataobat` (
  `KODE` int(11) NOT NULL,
  `NAMA` varchar(255) NOT NULL,
  `HARGA` int(11) NOT NULL,
  `TGL` varchar(255) NOT NULL,
  `STOK` int(11) NOT NULL,
  `JENIS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_dataobat`
--

INSERT INTO `tb_dataobat` (`KODE`, `NAMA`, `HARGA`, `TGL`, `STOK`, `JENIS`) VALUES
(144, 'Ohkasbon', 6500, '31-01-2024', 6, 'SIRUP'),
(234, 'Parahmen', 5000, '26-01-2024', 7, 'TABLET'),
(445, 'Gantengin', 3000, '15-04-2024', 4, 'CAIR'),
(677, 'Insyafnak', 4000, '26-01-2024', 65, 'TABLET');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `JK` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `NoHP` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_konsumen`
--

INSERT INTO `tb_konsumen` (`ID`, `Nama`, `JK`, `Alamat`, `NoHP`) VALUES
(242, 'Satria', 'Laki-laki', 'Cogel', '234234'),
(666, 'Mongol', 'Laki-laki', 'Bojong Santos', '123444');

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `ID` int(11) NOT NULL,
  `NAMA` varchar(255) NOT NULL,
  `ALAMAT` varchar(255) NOT NULL,
  `NOTLP` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`ID`, `NAMA`, `ALAMAT`, `NOTLP`) VALUES
(23544, 'Kanbe Farma', 'Cimohay', '345345'),
(345345, 'Nekmia Farma', 'El Flower del Pasteur', '646465');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dataobat`
--
ALTER TABLE `tb_dataobat`
  ADD PRIMARY KEY (`KODE`);

--
-- Indexes for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dataobat`
--
ALTER TABLE `tb_dataobat`
  MODIFY `KODE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;

--
-- AUTO_INCREMENT for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6566;

--
-- AUTO_INCREMENT for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345346;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
