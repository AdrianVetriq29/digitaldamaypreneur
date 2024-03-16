-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2024 at 05:31 PM
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
-- Database: `digitaldamaypreneur`
--

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `id_coach` int(4) NOT NULL,
  `nama_coach` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`id_coach`, `nama_coach`) VALUES
(1, 'abdurahman tajudin hanif');

-- --------------------------------------------------------

--
-- Table structure for table `danru`
--

CREATE TABLE `danru` (
  `id_danru` int(4) NOT NULL,
  `id_kapten` int(4) DEFAULT NULL,
  `id_coach` int(4) DEFAULT NULL,
  `nama_danru` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danru`
--

INSERT INTO `danru` (`id_danru`, `id_kapten`, `id_coach`, `nama_danru`) VALUES
(1, 1, 1, 'adrian');

-- --------------------------------------------------------

--
-- Table structure for table `kapten`
--

CREATE TABLE `kapten` (
  `id_kapten` int(4) NOT NULL,
  `id_coach` int(4) DEFAULT NULL,
  `nama_kapten` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kapten`
--

INSERT INTO `kapten` (`id_kapten`, `id_coach`, `nama_kapten`) VALUES
(1, 1, 'yuli');

-- --------------------------------------------------------

--
-- Table structure for table `pengambilan`
--

CREATE TABLE `pengambilan` (
  `id_pengambilan` int(4) NOT NULL,
  `nama_siswa` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_produk` text DEFAULT NULL,
  `modal` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengambilan`
--

INSERT INTO `pengambilan` (`id_pengambilan`, `nama_siswa`, `tanggal`, `nama_produk`, `modal`) VALUES
(2, 'adrian', '2024-03-15', 'joki ml', 3000000),
(3, 'sidiq', '2024-03-15', 'bola bola susu', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `setoran`
--

CREATE TABLE `setoran` (
  `id_setoran` int(4) NOT NULL,
  `nama_siswa` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_produk` text DEFAULT NULL,
  `modal` int(9) DEFAULT NULL,
  `omset` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(4) NOT NULL,
  `id_danru` int(4) DEFAULT NULL,
  `id_kapten` int(4) DEFAULT NULL,
  `id_coach` int(4) DEFAULT NULL,
  `nama_siswa` text DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_danru`, `id_kapten`, `id_coach`, `nama_siswa`, `kelas`) VALUES
(1, 1, 1, 1, 'adrian', '12 rpl 1'),
(2, 1, 1, 1, 'sidiq', '12 rpl 1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(4) NOT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `role` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$MkWvStwfYVdCncGTJLm0hO7SEde72tq3/G22.1/x27/PZ1Q1/O8rK', 'admin'),
(2, 'coach', '$2y$10$DItOAmIJZtp0l2Cn7sjLq.GHQPm6JGY6fcdHud2.dsB1EVosv/y8y', 'coach');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`id_coach`);

--
-- Indexes for table `danru`
--
ALTER TABLE `danru`
  ADD PRIMARY KEY (`id_danru`);

--
-- Indexes for table `kapten`
--
ALTER TABLE `kapten`
  ADD PRIMARY KEY (`id_kapten`);

--
-- Indexes for table `pengambilan`
--
ALTER TABLE `pengambilan`
  ADD PRIMARY KEY (`id_pengambilan`);

--
-- Indexes for table `setoran`
--
ALTER TABLE `setoran`
  ADD PRIMARY KEY (`id_setoran`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coach`
--
ALTER TABLE `coach`
  MODIFY `id_coach` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `danru`
--
ALTER TABLE `danru`
  MODIFY `id_danru` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kapten`
--
ALTER TABLE `kapten`
  MODIFY `id_kapten` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengambilan`
--
ALTER TABLE `pengambilan`
  MODIFY `id_pengambilan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setoran`
--
ALTER TABLE `setoran`
  MODIFY `id_setoran` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
