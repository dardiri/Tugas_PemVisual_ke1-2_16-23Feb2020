-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 01:47 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbukk`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_orders`
--

CREATE TABLE `detail_orders` (
  `id_detail_orders` int(11) NOT NULL,
  `id_orders` varchar(100) NOT NULL,
  `id_masakan` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `status_detail_orders` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_orders`
--

INSERT INTO `detail_orders` (`id_detail_orders`, `id_orders`, `id_masakan`, `keterangan`, `status_detail_orders`) VALUES
(1, '0001', 7, '1', 'langsung'),
(2, '0001', 4, '2', 'langsung'),
(3, '0001', 5, '1', 'langsung'),
(4, '0001', 6, '1', 'langsung'),
(5, '0002', 9, '1', 'langsung'),
(6, '0002', 8, '1', 'langsung'),
(7, '0002', 7, '1', 'langsung'),
(8, '0003', 8, '1', 'langsung'),
(9, '0004', 8, '2', 'langsung'),
(10, '0004', 7, '1', 'langsung'),
(11, '0004', 4, '1', 'langsung'),
(12, '0004', 5, '1', 'langsung'),
(13, '0005', 3, '1', 'pesan'),
(14, '0006', 8, '1', 'langsung'),
(15, '0007', 2, '1', 'pesan'),
(16, '0008', 2, '1', 'pesan'),
(17, '0009', 2, '1', 'pesan'),
(18, '0010', 3, '4', 'pesan'),
(19, '0011', 8, '1', 'langsung'),
(20, '0011', 7, '1', 'langsung'),
(21, '0011', 3, '1', 'pesan');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Kasir');

-- --------------------------------------------------------

--
-- Table structure for table `masakan`
--

CREATE TABLE `masakan` (
  `id_masakan` int(11) NOT NULL,
  `nama_masakan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `status_masakan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masakan`
--

INSERT INTO `masakan` (`id_masakan`, `nama_masakan`, `harga`, `status_masakan`) VALUES
(2, 'Mei Mei', 9000, 'pesan'),
(3, 'Nasi Goreng', 10000, 'pesan'),
(4, 'Mei Ayam', 7000, 'langsung'),
(5, 'Susu', 2000, 'langsung'),
(6, 'Teh Manis', 1500, 'langsung'),
(7, 'Jus', 5000, 'langsung'),
(8, 'Cap Cay', 10000, 'langsung'),
(9, 'Teh Dingan', 900, 'langsung');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` char(200) NOT NULL,
  `no_meja` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `status_orders` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `no_meja`, `tanggal`, `id_user`, `keterangan`, `status_orders`) VALUES
('0001', '8', '2020-01-13', 1, '-', 'cash'),
('0002', '0', '2020-02-16', 4, '-', 'cash'),
('0003', '0', '2020-02-16', 4, '-', 'kredit'),
('0004', '0', '2020-02-16', 4, '-', 'cash'),
('0005', '0', '2020-03-08', 4, '-', 'cash'),
('0006', '0', '2020-03-08', 4, '-', 'cash'),
('0007', '0', '2020-03-08', 5, '-', 'cash'),
('0008', '0', '2020-03-08', 5, '-', 'cash'),
('0009', '0', '2020-03-08', 5, '-', 'cash'),
('0010', '0', '2020-03-08', 4, '-', 'cash'),
('0011', '0', '2020-03-08', 4, '-', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_orders` char(100) NOT NULL,
  `tanggal` date NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_orders`, `tanggal`, `total_bayar`) VALUES
(1, 1, '0001', '2020-01-13', 22500),
(2, 4, '0002', '2020-02-16', 15900),
(3, 4, '0003', '2020-02-16', 10000),
(4, 4, '0004', '2020-02-16', 34000),
(5, 4, '0005', '2020-03-08', 10000),
(6, 4, '0006', '2020-03-08', 10000),
(7, 5, '0007', '2020-03-08', 9000),
(8, 5, '0008', '2020-03-08', 9000),
(9, 5, '0009', '2020-03-08', 9000),
(10, 4, '0010', '2020-03-08', 40000),
(11, 4, '0011', '2020-03-08', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_user`, `id_level`) VALUES
(4, 'dardiri', 'cda2c99fbf5e19f20d331299c15a4491', 'dardiri', 1),
(5, 'novar', 'cda2c99fbf5e19f20d331299c15a4491', 'novar', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD PRIMARY KEY (`id_detail_orders`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `masakan`
--
ALTER TABLE `masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_orders`
--
ALTER TABLE `detail_orders`
  MODIFY `id_detail_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `masakan`
--
ALTER TABLE `masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
