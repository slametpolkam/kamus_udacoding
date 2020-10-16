-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 09:07 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udacoding`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamus`
--

CREATE TABLE `kamus` (
  `id_kamus` int(8) NOT NULL,
  `kata_kamus` text NOT NULL,
  `arti_kamus` text NOT NULL,
  `penjelasan_kamus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamus`
--

INSERT INTO `kamus` (`id_kamus`, `kata_kamus`, `arti_kamus`, `penjelasan_kamus`) VALUES
(1, 'slamet', 'Selamat/Keselamatan/Kesejahteraan', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(2) NOT NULL,
  `username` varchar(100) NOT NULL,
  `sandi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `sandi`) VALUES
(1, 'slamet', '53cfb449fa90add90e0f628c7ff77fcc'),
(2, 'triyanto', 'c5a42d9667c760e1b7c064e25536e570'),
(3, 'test', '098f6bcd4621d373cade4e832627b4f6'),
(4, 'dsa', '196b0f14eba66e10fba74dbf9e99c22f'),
(5, 'slamet1', '53cfb449fa90add90e0f628c7ff77fcc'),
(6, '', 'd41d8cd98f00b204e9800998ecf8427e'),
(7, '121', '02b1be0d48924c327124732726097157'),
(8, 'puff', 'f6ee48a9bbf63429238d87260e3f5ec5'),
(9, 'fsdafaf', '38c4e8b262cf36062ce5a177d2d86612');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamus`
--
ALTER TABLE `kamus`
  ADD PRIMARY KEY (`id_kamus`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kamus`
--
ALTER TABLE `kamus`
  MODIFY `id_kamus` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
