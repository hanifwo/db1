-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 01:56 PM
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
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(11) NOT NULL,
  `barang` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `barang`, `harga`, `stok`, `foto`) VALUES
('B00001', 'Permen', 1000, 100, ''),
('B00002', 'Bolpoin', 1500, 101, NULL),
('B00003', 'Tisu', 15000, 20, NULL),
('B00004', 'Teh Kotak', 5000, 60, NULL),
('B00005', 'Coklat', 15000, 40, ''),
('B00006', 'Gelas', 5000, 100, NULL),
('B00007', 'Air soda', 3009, 22, 'storage/bunga1.jpg'),
('B00008', 'Sendok', 2000, 100, 'storage/bunga4.jpg'),
('B00009', 'Dasi', 40000, 30, NULL),
('B00012', 'Odol', 17000, 20, ''),
('B00016', 'Bunga', 12313, 12321, ''),
('B00017', 'bunga', 324, 12312, '');

-- --------------------------------------------------------

--
-- Table structure for table `faktur`
--

CREATE TABLE `faktur` (
  `id_faktur` varchar(20) NOT NULL,
  `id_pelanggan` varchar(20) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faktur`
--

INSERT INTO `faktur` (`id_faktur`, `id_pelanggan`, `tanggal`) VALUES
('F0001', 'P00001', '2021-09-06'),
('F0002', 'P00002', '2021-12-12'),
('F0003', 'P00003', '2021-08-13'),
('F0004', 'P00004', '2021-04-04'),
('F0005', 'P00005', '2021-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `faktur_barang`
--

CREATE TABLE `faktur_barang` (
  `id_faktur_barang` varchar(20) NOT NULL,
  `id_barang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faktur_barang`
--

INSERT INTO `faktur_barang` (`id_faktur_barang`, `id_barang`) VALUES
('F0001', 'B00001'),
('F0001', 'B00004'),
('F0001', 'B00005'),
('F0002', 'B00002'),
('F0002', 'B00009'),
('F0002', 'B0010'),
('F0003', 'B00003'),
('F0003', 'B00005'),
('F0003', 'B00005'),
('F0004', 'B00004'),
('F0004', 'B00002'),
('F0004', 'B00003'),
('F0005', 'B00005'),
('F0005', 'B00009'),
('F0005', 'B0010');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `JK` varchar(1) NOT NULL,
  `alamat` tinytext NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `JK`, `alamat`, `telepon`) VALUES
('P00001', 'eko', 'L', 'jl.laut', '08123456789'),
('P00002', 'leli', 'P', 'jl.bumi', '08123456781'),
('P00003', 'dewi', 'P', 'jl.venus', '08123456782'),
('P00004', 'fitri', 'P', 'jl.mars', '08123456783'),
('P00005', 'joko', 'L', 'jl.pluto', '08123456784'),
('P00006', 'agus', 'L', 'jl.bulan', '08123456785'),
('P00007', 'pri', 'L', 'jl.moon', '08123456786'),
('P00008', 'sri', 'P', 'jl.sun', '08123456787'),
('P00009', 'putri', 'P', 'jl.darat', '08123456788'),
('P00010', 'firman', 'L', 'jl.laut', '08123456710');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Dodo', 'asd@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `faktur`
--
ALTER TABLE `faktur`
  ADD PRIMARY KEY (`id_faktur`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
