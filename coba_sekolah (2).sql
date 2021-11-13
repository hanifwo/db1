-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 01:55 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `jk` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nip`, `name`, `jk`) VALUES
('202101001', 'Susi', 'P'),
('202101002', 'Pri', 'L'),
('202101003', 'Nanda', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama`) VALUES
(1, 'Informatika'),
(2, 'Desain');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id`, `email`, `nama`, `password`) VALUES
(1, 'abc@gmail.com', 'babibu', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(2, 'go@gmail.com', 'joko aja', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `address` text DEFAULT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `gender`, `address`, `tmp_lahir`, `tgl_lahir`, `phone`, `id_jurusan`, `foto`) VALUES
('2021010001', 'Putra', 'L', 'Jalan Kiri', 'Bandung', '2000-02-08', '08123456789', 1, ''),
('2021010002', 'Rio', 'L', 'Jalan Yuk', 'Jakarta', '2000-11-21', '08123456781', 2, ''),
('2021010003', 'Kelvin', 'L', 'Jalan Itu', 'Bandung', '2000-09-11', '08123456782', 2, ''),
('2021010004', 'Vely', 'P', 'Jalan Aja', 'Jakarta', '2001-09-01', '08123456783', 1, ''),
('2021010005', 'Valdo', 'L', 'Jalan Uranus', 'Lombok', '2000-11-11', '08123456784', 1, ''),
('2021010006', 'Shaima', 'P', 'Jalan Bumi', 'Kediri', '1999-07-08', '08123456785', 1, ''),
('2021010007', 'Kanna', 'P', 'Jalan Bulan', 'Malang', '2001-01-01', '08123456786', 2, ''),
('2021010008', 'Brian', 'L', 'Jalan Venus', 'Bogor', '2001-12-28', '08123456787', 1, ''),
('2021010009', 'Sandi', 'L', 'Jalan Kemana', 'Kediri', '2001-10-10', '0123894212', 2, ''),
('2021010010', 'Ica', 'P', 'Jalan Mars', 'Surabaya', '2002-02-02', '08123456710', 2, ''),
('2021010011', 'Cecil', 'P', 'Jalan Rusak', 'Malang', '2001-10-29', '1234567890', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `spp_siswa`
--

CREATE TABLE `spp_siswa` (
  `id_pembayaran` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `tgl_pembayaran` datetime NOT NULL,
  `bulan` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `spp_siswa`
--
ALTER TABLE `spp_siswa`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spp_siswa`
--
ALTER TABLE `spp_siswa`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
