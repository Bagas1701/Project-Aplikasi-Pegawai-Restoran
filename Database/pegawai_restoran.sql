-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2026 at 03:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegawai_restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `NIP` char(10) NOT NULL,
  `gaji` varchar(30) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `id_profesi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `Nama`, `NIP`, `gaji`, `Alamat`, `id_profesi`) VALUES
(1, 'Bagas', '0801111', '10000000', 'Tangerang', 1),
(2, 'Raja', '0801511', '2000000', 'Gembong', 5),
(3, 'Hanif', '0801122', '10000000', 'jakarta', 1),
(4, 'Al', '0801522', '2000000', 'Daru', 5),
(5, 'Dwi', '0801311', '5000000', 'Citra', 3),
(6, 'Indra', '0801411', '2500000', 'Rajawali', 4),
(7, 'Nakwah', '0801211', '3000000', 'Cisoka', 2),
(8, 'Fikri', '0801222', '3000000', 'KKK', 2),
(9, 'Denis', '0801322', '5000000', 'NNN', 3),
(10, 'Supriamdfi', '293', '2500000', 'ZZZjeje', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profesi`
--

CREATE TABLE `profesi` (
  `id_profesi` int(11) NOT NULL,
  `nama_profesi` varchar(50) DEFAULT NULL,
  `tugas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profesi`
--

INSERT INTO `profesi` (`id_profesi`, `nama_profesi`, `tugas`) VALUES
(1, 'Manager', 'Mengelola seluruh aktivitas restoran'),
(2, 'Kasir', 'Melakukan semua transaksi penjualan dengan pembeli'),
(3, 'Koki', 'Memasak makanan dan membuat minuman'),
(4, 'Pelayan', 'Melayani dan menyajikan pesanan pembeli'),
(5, 'Satpam', 'Menjaga keamanan di dalam dan di luar restoran');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_profesi` (`id_profesi`);

--
-- Indexes for table `profesi`
--
ALTER TABLE `profesi`
  ADD PRIMARY KEY (`id_profesi`),
  ADD UNIQUE KEY `nama_profesi` (`nama_profesi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `profesi`
--
ALTER TABLE `profesi`
  MODIFY `id_profesi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_profesi`) REFERENCES `profesi` (`id_profesi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
