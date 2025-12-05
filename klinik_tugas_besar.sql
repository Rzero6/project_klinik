-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 04:44 PM
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
-- Database: `tugas_besar_klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `no_telepon_customer` varchar(255) NOT NULL,
  `tanggal_bergabung` date NOT NULL,
  `tanggal_lahir_customer` date NOT NULL,
  `alamat_customer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `no_telepon_customer`, `tanggal_bergabung`, `tanggal_lahir_customer`, `alamat_customer`) VALUES
(3, 'Gree Fuchen', '+6281327389023', '2023-05-28', '2003-04-17', 'Jln. Yadara Atas'),
(5, 'Jean', '+6282223506567', '2023-05-28', '2003-03-21', 'Jln. Merpati'),
(6, 'Reynolddd', '+6285799689430', '2023-05-29', '2006-06-26', 'Jln. jalan'),
(7, 'Axel', '+6285952858539', '2023-06-11', '2002-09-11', 'Jln. Sendri'),
(8, 'David Wisnu', '+6281281914334', '2023-06-11', '2002-08-13', 'Jln. Berbahaya'),
(10, 'Christop', '08231231212', '2023-06-12', '2009-06-10', 'Jln. Merdeka'),
(11, 'Kevin', '0899871524729', '2023-06-14', '2004-06-01', 'Jln. Ada deh'),
(12, 'Test1', '081723123', '2023-06-14', '2023-06-14', 'Jln Tes');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `id_tindakan` int(11) DEFAULT NULL,
  `jumlah_obat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_obat`, `id_tindakan`, `jumlah_obat`) VALUES
(2, 2, 3, 1, 2),
(3, 2, 4, 1, 2),
(4, 2, 1, 2, 0),
(7, 2, 1, 1, 1),
(67, 18, 2, 1, 2),
(68, 18, 1, 2, 0),
(69, 18, 7, 1, 5),
(74, 19, 2, 1, 5),
(75, 19, 1, 3, 0),
(76, 23, 2, 1, 10),
(77, 23, 1, 2, 0),
(78, 24, 10, 1, 5),
(79, 24, 1, 3, 0),
(80, 22, 2, 1, 2),
(81, 26, 1, 2, 0),
(82, 25, 2, 1, 12),
(83, 25, 1, 2, 0),
(85, 27, 8, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mutasi_dana`
--

CREATE TABLE `mutasi_dana` (
  `id_mutasi` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_pengadaan` int(11) DEFAULT NULL,
  `nominal` double NOT NULL,
  `saldo` double NOT NULL,
  `detail` varchar(255) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tanggal_mutasi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mutasi_dana`
--

INSERT INTO `mutasi_dana` (`id_mutasi`, `id_transaksi`, `id_pengadaan`, `nominal`, `saldo`, `detail`, `tipe`, `tanggal_mutasi`) VALUES
(1, NULL, NULL, 1000000, 1000000, 'Uang Awal', 'Pemasukan', '2023-06-08 00:00:00'),
(5, NULL, 7, 95000, 1095000, 'Pegadaan obat Xanax sebesar 10', 'Pengeluaran', '2023-06-08 01:29:32'),
(10, 2, NULL, 563000, 1658000, 'Perawatan pasien Gree Fuchen', 'Pemasukan', '2023-06-11 17:16:25'),
(11, 18, NULL, 138000, 1796000, 'Perawatan pasien David Wisnu', 'Pemasukan', '2023-06-12 18:33:16'),
(12, NULL, 11, 50000, 1846000, 'Pegadaan obat Vitamin A sebesar 10', 'Pengeluaran', '2023-06-13 02:10:02'),
(13, NULL, 12, 30000, 1876000, 'Pegadaan obat Vitamin B sebesar 5', 'Pengeluaran', '2023-06-13 02:18:35'),
(14, NULL, 13, 60000, 1816000, 'Pegadaan obat Vitamin C sebesar 20', 'Pengeluaran', '2023-06-13 02:26:51'),
(15, NULL, 13, 15750, 1800250, 'Pegadaan obat Bodrex sebesar 3', 'Pengeluaran', '2023-06-13 03:09:10'),
(16, NULL, 13, 21000, 1779250, 'Pegadaan obat Panadol sebesar 3', 'Pengeluaran', '2023-06-13 03:13:04'),
(17, NULL, 16, 6000, 1773250, 'Pegadaan obat Vitamin C sebesar 2', 'Pengeluaran', '2023-06-13 03:17:55'),
(18, NULL, 16, 6000, 1767250, 'Pegadaan obat Vitamin C sebesar 2', 'Pengeluaran', '2023-06-13 03:20:52'),
(19, NULL, 16, 10500, 1756750, 'Pegadaan obat Bodrex sebesar 2', 'Pengeluaran', '2023-06-13 03:24:51'),
(20, NULL, 16, 15000, 1741750, 'Pegadaan obat Vitamin C sebesar 5', 'Pengeluaran', '2023-06-13 03:25:04'),
(21, NULL, 20, 25000, 1716750, 'Pegadaan obat Vitamin A sebesar 5', 'Pengeluaran', '2023-06-13 15:48:58'),
(22, NULL, 21, 5000, 1711750, 'Pegadaan obat Vitamin D sebesar 2', 'Pengeluaran', '2023-06-13 16:09:21'),
(23, 24, NULL, 150000, 1861750, 'Perawatan pasien Kevin', 'Pemasukan', '2023-06-14 21:06:24'),
(24, NULL, 22, 500000, 1361750, 'Pegadaan obat Vitamin D sebesar 200', 'Pengeluaran', '2023-06-14 21:07:58'),
(25, 27, NULL, 75000, 1436750, 'Perawatan pasien Test1', 'Pemasukan', '2023-06-14 21:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `harga_obat` double NOT NULL,
  `stok_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `harga_obat`, `stok_obat`) VALUES
(1, 'Tidak Ada', 0, 0),
(2, 'Bodrex', 5250, 51),
(3, 'Mylanta', 9500, 20),
(4, 'Panadol', 7000, 48),
(5, 'Piricitimil', 2000, 15),
(7, 'Xanax', 9500, 20),
(8, 'Vitamin A', 5000, 10),
(9, 'Vitamin B', 6000, 5),
(10, 'Vitamin C', 3000, 24),
(11, 'Vitamin D', 2500, 202),
(13, 'Vitamin E', 5000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pengadaan`
--

CREATE TABLE `pengadaan` (
  `id_pengadaan` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `jumlah_obat` int(11) NOT NULL,
  `tanggal_pengadaan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengadaan`
--

INSERT INTO `pengadaan` (`id_pengadaan`, `id_obat`, `id_supplier`, `jumlah_obat`, `tanggal_pengadaan`) VALUES
(7, 7, 4, 10, '2023-06-08 01:29:32'),
(8, 4, 1, 15, '2023-06-08 20:05:59'),
(9, 2, 1, 15, '2023-06-08 20:06:45'),
(10, 2, 1, 15, '2023-06-08 20:07:01'),
(11, 8, 5, 10, '2023-06-13 02:10:02'),
(12, 9, 5, 5, '2023-06-13 02:18:35'),
(13, 10, 5, 20, '2023-06-13 02:26:51'),
(14, 2, 1, 3, '2023-06-13 03:09:10'),
(15, 4, 1, 3, '2023-06-13 03:13:04'),
(16, 10, 5, 2, '2023-06-13 03:17:55'),
(17, 10, 1, 2, '2023-06-13 03:20:52'),
(18, 2, 1, 2, '2023-06-13 03:24:51'),
(19, 10, 1, 5, '2023-06-13 03:25:04'),
(20, 8, 5, 5, '2023-06-13 15:48:58'),
(21, 11, 5, 2, '2023-06-13 16:09:21'),
(22, 11, 5, 200, '2023-06-14 21:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `id_staf` int(11) NOT NULL,
  `nama_staf` varchar(255) NOT NULL,
  `no_telepon_staf` varchar(255) NOT NULL,
  `tanggal_mulai_kerja` date NOT NULL,
  `jabatan_staf` varchar(50) NOT NULL,
  `username_staf` varchar(50) NOT NULL,
  `password_staf` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staf`
--

INSERT INTO `staf` (`id_staf`, `nama_staf`, `no_telepon_staf`, `tanggal_mulai_kerja`, `jabatan_staf`, `username_staf`, `password_staf`) VALUES
(1, 'Michael Reynold', '085799689430', '2023-05-22', 'Admin', 'reynold', 'reynold'),
(2, 'Lala', '082225552400', '2023-05-24', 'Admin', 'lala', 'lala'),
(8, 'Roy Panggabean', '085678875612', '2023-05-28', 'Kasir', 'roy', 'roy'),
(9, 'Dendy', '089643938007', '2023-05-31', 'Dokter', 'dendy', 'dendy'),
(10, 'Gea', '085386197111', '2023-05-17', 'Dokter', 'gea', 'gea'),
(13, 'Pejo', '0812341231', '2023-06-14', 'Dokter', 'pejo', 'pejo');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `no_telepon_supplier` varchar(255) NOT NULL,
  `email_supplier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `no_telepon_supplier`, `email_supplier`) VALUES
(1, 'PT. Panadol', '+62131215122', 'panadol@panadol.co.id'),
(2, 'Mylanta Inc.', '+3212135122', 'mylanta@mylanta.com'),
(4, 'Xannn Corps', '+6231231223', 'xannn@xannn.com'),
(5, 'Vitamin', '+2326512312', 'vitamin@vitamin.com'),
(6, 'Betadine Inc.', '084123123123', 'betadine@betadine.com'),
(8, 'Panadol', '0123123', 'panadol@panadol');

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `id_tindakan` int(11) NOT NULL,
  `nama_tindakan` varchar(255) NOT NULL,
  `harga_tindakan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tindakan`
--

INSERT INTO `tindakan` (`id_tindakan`, `nama_tindakan`, `harga_tindakan`) VALUES
(1, 'Tidak Ada', 0),
(2, 'Suntik', 30000),
(3, 'Opname', 85000),
(5, 'Pijat Kaki', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `biaya_klinik` double NOT NULL,
  `status` varchar(25) NOT NULL,
  `keluhan` varchar(255) NOT NULL,
  `diagnosis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_customer`, `id_dokter`, `tanggal_transaksi`, `biaya_klinik`, `status`, `keluhan`, `diagnosis`) VALUES
(2, 3, 9, '2023-06-11 17:16:25', 500000, 'Selesai', 'Batuk', 'Flu'),
(18, 8, 9, '2023-06-12 18:33:16', 50000, 'Selesai', 'Bisulan', 'HIV'),
(19, 5, 9, '2023-06-12 20:29:44', 50000, 'Bayar', 'Batuk', 'Fluu'),
(22, 6, 10, '2023-06-14 21:10:13', 50000, 'Bayar', 'Kulit terbakar', 'kulit terbakar'),
(23, 7, 9, '2023-06-12 20:35:34', 50000, 'Bayar', 'Telinga berdengung', 'Kemasukan Tawon'),
(24, 11, 9, '2023-06-14 21:06:24', 50000, 'Selesai', 'Batuk berasap', 'Virus Alien'),
(25, 10, 9, '2023-06-14 21:15:42', 50000, 'Bayar', 'Bisulan', 'asda'),
(26, 3, 10, '2023-06-14 21:10:32', 50000, 'Bayar', 'kaki atit', 'kaki atit'),
(27, 12, 9, '2023-06-14 21:22:55', 50000, 'Selesai', 'Test1', 'Demam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_perawatan` (`id_tindakan`);

--
-- Indexes for table `mutasi_dana`
--
ALTER TABLE `mutasi_dana`
  ADD PRIMARY KEY (`id_mutasi`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `mutasi_dana_ibfk_2` (`id_pengadaan`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pengadaan`
--
ALTER TABLE `pengadaan`
  ADD PRIMARY KEY (`id_pengadaan`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `pengadaan_ibfk_2` (`id_supplier`);

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id_staf`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`id_tindakan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `mutasi_dana`
--
ALTER TABLE `mutasi_dana`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pengadaan`
--
ALTER TABLE `pengadaan`
  MODIFY `id_pengadaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `staf`
--
ALTER TABLE `staf`
  MODIFY `id_staf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tindakan`
--
ALTER TABLE `tindakan`
  MODIFY `id_tindakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_3` FOREIGN KEY (`id_tindakan`) REFERENCES `tindakan` (`id_tindakan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mutasi_dana`
--
ALTER TABLE `mutasi_dana`
  ADD CONSTRAINT `mutasi_dana_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `mutasi_dana_ibfk_2` FOREIGN KEY (`id_pengadaan`) REFERENCES `pengadaan` (`id_pengadaan`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pengadaan`
--
ALTER TABLE `pengadaan`
  ADD CONSTRAINT `pengadaan_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengadaan_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `staf` (`id_staf`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
