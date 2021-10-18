-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2021 at 06:11 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL DEFAULT current_timestamp(),
  `keterangan` varchar(100) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `long` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `nip`, `waktu`, `keterangan`, `lat`, `long`) VALUES
(3, '7809', '2021-09-09 07:43:50', 'masuk', '', ''),
(4, '1801', '2021-09-09 07:48:54', 'masuk', '', ''),
(5, '1801', '2021-09-10 08:29:02', 'masuk', '', ''),
(6, '1801', '2021-09-10 08:29:06', 'pulang', '', ''),
(7, '7809', '2021-09-12 03:58:22', 'masuk', '', ''),
(8, '7809', '2021-09-12 03:58:32', 'pulang', '', ''),
(9, '1801', '2021-09-12 04:21:26', 'masuk', '', ''),
(10, '1801', '2021-09-12 04:22:18', 'pulang', '', ''),
(11, '9901', '2021-09-12 04:36:17', 'masuk', '', ''),
(12, '9901', '2021-09-12 04:36:20', 'pulang', '', ''),
(13, '1891', '2021-09-12 04:37:25', 'masuk', '', ''),
(14, '1891', '2021-09-12 04:37:27', 'pulang', '', ''),
(16, '1801', '2021-09-30 07:38:03', 'masuk', '', ''),
(17, '1801', '2021-09-30 07:38:22', 'pulang', '', ''),
(18, '871019', '2021-10-01 03:07:47', 'masuk', '', ''),
(19, '871019', '2021-10-01 03:12:44', 'pulang', '', ''),
(20, '1801', '2021-10-06 08:46:57', 'masuk', '', ''),
(21, '1801', '2021-10-06 11:03:19', 'pulang', '', ''),
(22, '7689', '2021-10-06 11:03:50', 'masuk', '', ''),
(23, '6191', '2021-10-06 12:25:16', 'masuk', '', ''),
(24, '6191', '2021-10-06 12:25:44', 'pulang', '', ''),
(25, '7689', '2021-10-06 12:36:15', 'pulang', '', ''),
(26, '9901', '2021-10-06 12:37:12', 'masuk', '', ''),
(27, '1843', '1970-01-01 07:00:00', 'masuk', '', ''),
(28, '1843', '2021-10-06 12:48:03', 'masuk', '', ''),
(29, '1843', '2021-10-06 13:00:23', 'pulang', '', ''),
(30, '871019', '2021-10-06 13:01:06', 'masuk', '', ''),
(31, '871019', '2021-10-06 13:01:12', 'pulang', '', ''),
(32, '1891', '2021-10-06 14:06:14', 'masuk', '', ''),
(33, '1891', '2021-10-06 14:06:47', 'pulang', '', ''),
(34, '1801', '2021-10-13 17:17:26', 'masuk', '', ''),
(35, '1801', '2021-10-13 17:17:37', 'pulang', '', ''),
(36, '9901', '2021-10-13 17:19:46', 'masuk', '', ''),
(37, '7689', '2021-10-13 17:21:18', 'masuk', '', ''),
(39, '6191', '2021-10-14 23:02:52', 'masuk', '-6.13149', '106.7470881'),
(40, '6191', '2021-10-14 23:03:05', 'pulang', '-6.1314904', '106.7470881'),
(41, '7689', '2021-10-14 23:05:00', 'masuk', '-6.1314904', '106.7470881'),
(48, '9901', '2021-10-15 14:38:04', 'masuk', '-6.1867143', '106.7377047'),
(50, '9901', '2021-10-15 14:39:51', 'pulang', '-6.1867122', '106.7376853'),
(51, '1801', '2021-10-15 14:46:57', 'masuk', '-6.1867186', '106.7377767'),
(52, '1801', '2021-10-15 15:05:20', 'pulang', '-6.1867165', '106.7377566'),
(53, '1843', '2021-10-15 16:36:46', 'masuk', '-6.1867129', '106.7377745'),
(54, '871019', '2021-10-15 16:50:55', 'masuk', '-6.1867096', '106.7377683');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jenis_cuti` enum('cuti','izin','sakit') NOT NULL,
  `bukti` varchar(254) DEFAULT NULL,
  `alasan` text NOT NULL,
  `status` enum('diajukan','diterima','ditolak') NOT NULL,
  `waktu_pengajuan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `nip`, `jenis_cuti`, `bukti`, `alasan`, `status`, `waktu_pengajuan`) VALUES
(1, '123', 'sakit', 'nihiwatu.jpg', 'testing', 'diterima', '2021-01-14 17:14:54'),
(2, '123', 'izin', NULL, 'nikahan', 'diterima', '2021-09-03 07:10:14'),
(3, '7171', 'izin', NULL, 'Pulang kampung', 'ditolak', '2021-09-03 07:22:07'),
(4, '1891', 'sakit', '', 'acara', 'diajukan', '2021-09-09 13:55:01'),
(5, '1891', 'sakit', 'nihiwatu.jpg', 'acara', 'ditolak', '2021-09-09 14:07:24'),
(7, '1801', 'sakit', '', 'sd', 'ditolak', '2021-09-09 15:27:05'),
(8, '7809', 'izin', NULL, 'mudik', 'diterima', '2021-09-10 01:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `departemen_id` int(11) NOT NULL,
  `departemen` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`departemen_id`, `departemen`) VALUES
(1, 'Akuntansi'),
(2, 'Administrasi'),
(6, 'Produk'),
(7, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `detailcuti`
--

CREATE TABLE `detailcuti` (
  `id_detail` int(11) NOT NULL,
  `id_cuti` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailcuti`
--

INSERT INTO `detailcuti` (`id_detail`, `id_cuti`, `tanggal`) VALUES
(1, 1, '2021-01-15'),
(2, 1, '2021-01-16'),
(3, 2, '2021-09-01'),
(4, 2, '2021-09-02'),
(5, 2, '2021-09-03'),
(6, 2, '2021-09-04'),
(7, 2, '2021-09-05'),
(8, 2, '2021-09-06'),
(9, 3, '2021-09-17'),
(10, 3, '2021-09-18'),
(11, 3, '2021-09-19'),
(12, 3, '2021-09-20'),
(13, 3, '2021-09-21'),
(14, 3, '2021-09-22'),
(15, 3, '2021-09-23'),
(16, 3, '2021-09-24'),
(17, 4, '2021-09-09'),
(18, 5, '2021-09-09'),
(19, 6, '2021-09-09'),
(20, 7, '2021-09-23'),
(21, 7, '2021-09-24'),
(22, 7, '2021-09-25'),
(23, 7, '2021-09-26'),
(24, 7, '2021-09-27'),
(25, 7, '2021-09-28'),
(26, 7, '2021-09-29'),
(27, 7, '2021-09-30'),
(28, 7, '2021-10-01'),
(29, 7, '2021-10-02'),
(30, 7, '2021-10-03'),
(31, 7, '2021-10-04'),
(32, 7, '2021-10-05'),
(33, 7, '2021-10-06'),
(34, 7, '2021-10-07'),
(35, 8, '2021-09-11'),
(36, 8, '2021-09-12'),
(37, 8, '2021-09-13'),
(38, 8, '2021-09-14'),
(39, 8, '2021-09-15'),
(40, 8, '2021-09-16'),
(41, 8, '2021-09-17'),
(42, 8, '2021-09-18'),
(43, 8, '2021-09-19'),
(44, 8, '2021-09-20'),
(45, 8, '2021-09-21'),
(46, 8, '2021-09-22'),
(47, 8, '2021-09-23'),
(48, 8, '2021-09-24'),
(49, 8, '2021-09-25');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `waktu_masuk` date NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `gaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `jenis_kelamin`, `waktu_masuk`, `id_departemen`, `gaji`) VALUES
('170912', 'L', '2021-10-06', 2, 0),
('1801', 'P', '2021-07-19', 2, 100000),
('1843', 'L', '2021-08-20', 6, 0),
('1891', 'P', '2021-07-19', 6, 200000),
('6191', 'L', '2021-10-06', 1, 0),
('7689', 'P', '2021-09-20', 2, 0),
('7809', 'P', '2021-07-19', 1, 0),
('871019', 'L', '2021-10-01', 1, 0),
('9901', 'P', '2021-07-19', 2, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `nama` varchar(254) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `level` enum('admin','pegawai') NOT NULL,
  `nip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nama`, `email`, `password`, `level`, `nip`) VALUES
(1, 'Administrator', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'admin', NULL),
(12, 'Mely Yuana Indrawati', 'Mely@gmail.com', 'cdaeb1282d614772beb1e74c192bebda', 'pegawai', '7809'),
(13, 'Dewi Melenia Fortuna', 'dewi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'pegawai', '9901'),
(14, 'Afnita Fitri', 'afnita@gmail.com', '01cfcd4f6b8770febfb40cb906715822', 'pegawai', '1801'),
(15, 'Cici Rahmawati', 'cici@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'pegawai', '1891'),
(22, 'James', 'James@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'pegawai', '1843'),
(23, 'Alyssa', 'Alyssa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'pegawai', '7689'),
(24, 'Nur Kholis', 'kholis@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', 'pegawai', '871019'),
(25, 'Bart', 'bart@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'pegawai', '170912'),
(26, 'Adam Mohammad Nur', 'adam@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'pegawai', '6191');

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `id_web` int(11) NOT NULL,
  `logo` varchar(254) NOT NULL,
  `nama` varchar(254) NOT NULL,
  `author` varchar(254) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`id_web`, `logo`, `nama`, `author`, `alamat`, `nohp`, `email`) VALUES
(1, 'fingerprint.png', 'E - Absensi', 'Afnita Fitri', 'Jl. Kamal Muara 3 No. 28', '08998399469', 'afnitafitri@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`departemen_id`);

--
-- Indexes for table `detailcuti`
--
ALTER TABLE `detailcuti`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id_web`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `departemen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `detailcuti`
--
ALTER TABLE `detailcuti`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `web`
--
ALTER TABLE `web`
  MODIFY `id_web` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
