-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 06:23 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_anggota`
--

CREATE TABLE `t_anggota` (
  `kode_anggota` char(5) NOT NULL,
  `kode_tabungan` int(11) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `alamat_anggota` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `telp` varchar(12) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_anggota`
--

INSERT INTO `t_anggota` (`kode_anggota`, `kode_tabungan`, `nama_anggota`, `alamat_anggota`, `jenis_kelamin`, `pekerjaan`, `tgl_masuk`, `telp`, `tempat_lahir`, `tgl_lahir`, `status`, `u_entry`, `tgl_entri`) VALUES
('A0001', 45, 'Muhammad Ridwan Mahfudz', 'Tunas Mudo Rt 05 Kecamatan Sekernan Kabupaten Muaro Jambi', 'Laki-laki', 'Freelancer', '2019-08-11', '082186866969', 'Sembubuk', '1994-02-24', 'aktif', 'admin', '2019-08-11'),
('A0002', 46, 'Aziz Mahmud Efendi', 'Tunas Mudo Rt 05 Kecamatan Sekernan Kabupaten Muaro Jambi', 'Laki-laki', 'Karyawan', '2019-08-11', '085764175764', 'Sembubuk', '1995-12-20', 'aktif', 'admin', '2019-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `t_angsur`
--

CREATE TABLE `t_angsur` (
  `kode_angsur` int(11) NOT NULL,
  `kode_pinjam` int(11) NOT NULL,
  `angsuran_ke` int(11) NOT NULL,
  `besar_angsuran` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `sisa_pinjam` int(11) NOT NULL,
  `kode_anggota` char(5) NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_angsur`
--

INSERT INTO `t_angsur` (`kode_angsur`, `kode_pinjam`, `angsuran_ke`, `besar_angsuran`, `denda`, `sisa_pinjam`, `kode_anggota`, `u_entry`, `tgl_entri`) VALUES
(153, 64, 1, 0, 0, 1000000, 'A0002', 'admin', '2019-08-11'),
(154, 64, 2, 0, 0, 1000000, 'A0002', 'admin', '2019-08-11'),
(155, 64, 3, 0, 0, 1000000, 'A0002', 'admin', '2019-08-11'),
(156, 65, 1, 600000, 0, 400000, 'A0002', 'admin', '2019-08-11'),
(157, 65, 2, 600000, 0, -200000, 'A0002', 'admin', '2019-08-11'),
(158, 66, 1, 510000, 0, 490000, 'A0001', 'admin', '2019-08-19'),
(159, 66, 2, 510000, 0, -20000, 'A0001', 'admin', '2019-08-19'),
(160, 67, 1, 507500, 0, 492500, 'A0002', 'admin', '2019-08-19'),
(161, 67, 2, 507500, 0, -15000, 'A0002', 'admin', '2019-08-19'),
(162, 68, 1, 507500, 0, 492500, 'A0002', 'admin', '2019-08-19'),
(163, 68, 2, 507500, 0, -15000, 'A0002', 'admin', '2019-08-19'),
(164, 69, 1, 515000, 0, 492500, 'A0002', 'admin', '2019-08-19'),
(165, 69, 2, 507500, 0, -15000, 'A0002', 'admin', '2019-08-19'),
(166, 70, 1, 515000, 0, 492500, 'A0002', 'admin', '2019-08-19'),
(167, 70, 2, 507500, 0, -15000, 'A0002', 'admin', '2019-08-19'),
(168, 71, 1, 265000, 0, 746250, 'A0001', 'admin', '2019-08-19'),
(169, 71, 2, 257500, 0, 492500, 'A0001', 'admin', '2019-08-19'),
(170, 71, 3, 255000, 0, 238750, 'A0001', 'admin', '2019-08-19'),
(171, 71, 4, 253750, 0, -15000, 'A0001', 'admin', '2019-08-19'),
(172, 72, 1, 530000, 0, 1492500, 'A0001', 'admin', '2019-08-19'),
(173, 72, 2, 515000, 0, 985000, 'A0001', 'admin', '2019-08-19'),
(174, 72, 3, 510000, 0, 477500, 'A0001', 'admin', '2019-08-19'),
(175, 72, 4, 507500, 0, -30000, 'A0001', 'admin', '2019-08-19'),
(176, 73, 1, 530000, 0, 1492500, 'A0001', 'admin', '2019-08-19'),
(177, 73, 2, 522500, 0, 985000, 'A0001', 'admin', '2019-08-19'),
(178, 73, 3, 507500, 0, 477500, 'A0001', 'admin', '2019-08-19'),
(179, 73, 4, 507500, 0, -30000, 'A0001', 'admin', '2019-08-19'),
(180, 74, 1, 253750, 0, 746250, 'A0001', 'admin', '2019-08-19'),
(181, 74, 2, 253750, 0, 492500, 'A0001', 'admin', '2019-08-19'),
(182, 74, 3, 253750, 0, 238750, 'A0001', 'admin', '2019-08-19'),
(183, 74, 4, 253750, 0, -15000, 'A0001', 'admin', '2019-08-19'),
(184, 75, 1, 265000, 0, 746250, 'A0001', 'admin', '2019-08-19'),
(185, 75, 2, 257500, 0, 492500, 'A0001', 'admin', '2019-08-19'),
(186, 75, 3, 255000, 0, 238750, 'A0001', 'admin', '2019-08-19'),
(187, 75, 4, 253750, 0, -15000, 'A0001', 'admin', '2019-08-19'),
(188, 76, 1, 515000, 0, 492500, 'A0001', 'admin', '2019-08-19'),
(189, 76, 2, 507500, 0, -15000, 'A0001', 'admin', '2019-08-19'),
(190, 77, 1, 515000, 0, 492500, 'A0001', 'admin', '2019-08-19'),
(191, 77, 2, 507500, 0, -15000, 'A0001', 'admin', '2019-08-19'),
(192, 78, 1, 515000, 0, 492500, 'A0001', 'admin', '2019-08-19'),
(193, 78, 2, 507500, 0, -15000, 'A0001', 'admin', '2019-08-19'),
(194, 79, 1, 265000, 0, 1000000, 'A0001', 'admin', '2019-08-19'),
(195, 79, 2, 257500, 0, 1000000, 'A0001', 'admin', '2019-08-19'),
(196, 79, 3, 255000, 0, 1000000, 'A0001', 'admin', '2019-08-19'),
(197, 79, 4, 253750, 0, 1000000, 'A0001', 'admin', '2019-08-19'),
(198, 80, 1, 491666, 0, 4577084, 'A0002', 'admin', '2019-08-19'),
(199, 80, 2, 454166, 0, 4154168, 'A0002', 'admin', '2019-08-19'),
(200, 80, 3, 441666, 0, 3731252, 'A0002', 'admin', '2019-08-19'),
(201, 80, 4, 435416, 0, 3308336, 'A0002', 'admin', '2019-08-19'),
(202, 80, 5, 431666, 0, 2885420, 'A0002', 'admin', '2019-08-19'),
(203, 80, 6, 429166, 0, 2462504, 'A0002', 'admin', '2019-08-19'),
(204, 80, 7, 427381, 0, 2039588, 'A0002', 'admin', '2019-08-19'),
(205, 80, 8, 426041, 0, 1616672, 'A0002', 'admin', '2019-08-19'),
(206, 80, 9, 425000, 0, 1193756, 'A0002', 'admin', '2019-08-19'),
(207, 80, 10, 424166, 0, 770840, 'A0002', 'admin', '2019-08-19'),
(208, 80, 11, 423484, 0, 347924, 'A0002', 'admin', '2019-08-19'),
(209, 80, 12, 422916, 0, -74992, 'A0002', 'admin', '2019-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `t_jenis_pinjam`
--

CREATE TABLE `t_jenis_pinjam` (
  `kode_jenis_pinjam` char(5) NOT NULL,
  `nama_pinjaman` varchar(50) NOT NULL,
  `lama_angsuran` int(11) NOT NULL,
  `maks_pinjam` double NOT NULL,
  `bunga` float NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_jenis_pinjam`
--

INSERT INTO `t_jenis_pinjam` (`kode_jenis_pinjam`, `nama_pinjaman`, `lama_angsuran`, `maks_pinjam`, `bunga`, `u_entry`, `tgl_entri`) VALUES
('P0001', '2x Angsuran', 2, 10000000, 0.75, '', '2019-08-19'),
('P0002', '4x Angsuran', 4, 10000000, 0.375, '', '2019-08-19'),
('P0003', '6X Angsuran', 6, 10000000, 0.25, '', '2019-08-19'),
('P0004', '8X Angsuran', 8, 10000000, 0.1875, '', '2019-08-19'),
('P0005', '10X Angsuran', 10, 10000000, 0.15, 'admin', '2019-08-19'),
('P0006', '12X Angsuran', 12, 10000000, 0.125, 'admin', '2019-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `t_jenis_simpan`
--

CREATE TABLE `t_jenis_simpan` (
  `kode_jenis_simpan` char(5) NOT NULL,
  `nama_simpanan` varchar(50) NOT NULL,
  `besar_simpanan` float NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_jenis_simpan`
--

INSERT INTO `t_jenis_simpan` (`kode_jenis_simpan`, `nama_simpanan`, `besar_simpanan`, `u_entry`, `tgl_entri`) VALUES
('S0001', 'pokok', 10000, 'Admin', '2019-06-24'),
('S0002', 'wajib', 100000, 'Admin', '2019-06-24'),
('S0003', 'sukarela', 0, 'Admin', '2019-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `t_pengajuan`
--

CREATE TABLE `t_pengajuan` (
  `kode_pengajuan` int(4) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `kode_anggota` varchar(10) NOT NULL,
  `kode_jenis_pinjam` varchar(10) NOT NULL,
  `besar_pinjam` int(11) NOT NULL,
  `tgl_acc` date NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pengajuan`
--

INSERT INTO `t_pengajuan` (`kode_pengajuan`, `tgl_pengajuan`, `kode_anggota`, `kode_jenis_pinjam`, `besar_pinjam`, `tgl_acc`, `status`) VALUES
(1, '2019-08-19', 'A0001', 'P0001', 1000000, '2019-08-19', 'diterima'),
(2, '2019-08-19', 'A0001', 'P0001', 1000000, '2019-08-19', 'diterima');

-- --------------------------------------------------------

--
-- Table structure for table `t_pengambilan`
--

CREATE TABLE `t_pengambilan` (
  `kode_ambil` int(5) NOT NULL,
  `kode_anggota` varchar(10) NOT NULL,
  `kode_tabungan` int(5) NOT NULL,
  `besar_ambil` int(20) NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_petugas`
--

CREATE TABLE `t_petugas` (
  `kode_petugas` char(5) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `alamat_petugas` varchar(100) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_petugas`
--

INSERT INTO `t_petugas` (`kode_petugas`, `nama_petugas`, `alamat_petugas`, `no_telp`, `jenis_kelamin`, `u_entry`, `tgl_entri`) VALUES
('P0001', 'Adam Smith', 'Indonesia', '081286861234', 'Laki-laki', 'admin', '2019-06-24'),
('P0002', 'Khumairoh', 'Indonesia', '085255511209', 'Perempuan', 'admin', '2019-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `t_pinjam`
--

CREATE TABLE `t_pinjam` (
  `kode_pinjam` int(11) NOT NULL,
  `kode_anggota` char(5) NOT NULL,
  `kode_jenis_pinjam` char(5) NOT NULL,
  `besar_pinjam` double NOT NULL,
  `besar_angsuran` double NOT NULL,
  `lama_angsuran` int(11) NOT NULL,
  `sisa_angsuran` int(11) NOT NULL,
  `sisa_pinjaman` double NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_entri` date NOT NULL,
  `tgl_tempo` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pinjam`
--

INSERT INTO `t_pinjam` (`kode_pinjam`, `kode_anggota`, `kode_jenis_pinjam`, `besar_pinjam`, `besar_angsuran`, `lama_angsuran`, `sisa_angsuran`, `sisa_pinjaman`, `u_entry`, `tgl_entri`, `tgl_tempo`, `status`) VALUES
(64, 'A0002', 'P0002', 1000000, 0, 3, 3, 1000000, 'admin', '2019-08-11', '2019-11-09', 'lunas'),
(65, 'A0002', 'P0001', 1000000, 600000, 2, 2, -200000, 'admin', '2019-08-11', '2019-10-10', 'lunas'),
(66, 'A0001', 'P0001', 1000000, 510000, 2, 2, -20000, 'admin', '2019-08-19', '2019-10-18', 'lunas'),
(67, 'A0002', 'P0001', 1000000, 507500, 2, 2, -15000, 'admin', '2019-08-19', '2019-10-18', 'lunas'),
(68, 'A0002', 'P0001', 1000000, 507500, 2, 2, -15000, 'admin', '2019-08-19', '2019-10-18', 'lunas'),
(69, 'A0002', 'P0001', 1000000, 507500, 2, 2, -15000, 'admin', '2019-08-19', '2019-10-18', 'lunas'),
(70, 'A0002', 'P0001', 1000000, 507500, 2, 2, -15000, 'admin', '2019-08-19', '2019-10-18', 'lunas'),
(71, 'A0001', 'P0002', 1000000, 253750, 4, 4, -15000, 'admin', '2019-08-19', '2019-12-17', 'lunas'),
(72, 'A0001', 'P0002', 2000000, 507500, 4, 4, -30000, 'admin', '2019-08-19', '2019-12-17', 'lunas'),
(73, 'A0001', 'P0002', 2000000, 507500, 4, 4, -30000, 'admin', '2019-08-19', '2019-12-17', 'lunas'),
(74, 'A0001', 'P0002', 1000000, 253750, 4, 4, -15000, 'admin', '2019-08-19', '2019-12-17', 'lunas'),
(75, 'A0001', 'P0002', 1000000, 253750, 4, 4, -15000, 'admin', '2019-08-19', '2019-12-17', 'lunas'),
(76, 'A0001', 'P0001', 1000000, 507500, 2, 2, -15000, '', '2019-08-19', '2019-10-18', 'lunas'),
(77, 'A0001', 'P0001', 1000000, 507500, 2, 2, -15000, '', '2019-08-19', '2019-10-18', 'lunas'),
(78, 'A0001', 'P0001', 1000000, 507500, 2, 2, -15000, 'admin', '2019-08-19', '2019-10-18', 'lunas'),
(79, 'A0001', 'P0002', 1000000, 0, 4, 4, 1000000, 'admin', '2019-08-19', '2019-12-17', 'lunas'),
(80, 'A0002', 'P0006', 5000000, 422916, 12, 12, -74992, 'admin', '2019-08-19', '2020-08-13', 'lunas');

-- --------------------------------------------------------

--
-- Table structure for table `t_simpan`
--

CREATE TABLE `t_simpan` (
  `kode_simpan` int(11) NOT NULL,
  `jenis_simpan` varchar(10) NOT NULL,
  `besar_simpanan` double NOT NULL,
  `kode_anggota` char(5) NOT NULL,
  `u_entry` varchar(50) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_simpan`
--

INSERT INTO `t_simpan` (`kode_simpan`, `jenis_simpan`, `besar_simpanan`, `kode_anggota`, `u_entry`, `tgl_mulai`, `tgl_entri`) VALUES
(167, 'pokok', 10000, 'A0001', 'admin', '2019-08-11', '2019-08-11'),
(168, 'sukarela', 10000000, 'A0001', 'admin', '2019-08-11', '2019-08-11'),
(169, 'pokok', 10000, 'A0002', 'admin', '2019-08-11', '2019-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `t_tabungan`
--

CREATE TABLE `t_tabungan` (
  `kode_tabungan` int(11) NOT NULL,
  `kode_anggota` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `besar_tabungan` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `t_tabungan`
--

INSERT INTO `t_tabungan` (`kode_tabungan`, `kode_anggota`, `tgl_mulai`, `besar_tabungan`) VALUES
(45, 'A0001', '2019-08-11', 10010000),
(46, 'A0002', '2019-08-11', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `kode_user` char(5) NOT NULL,
  `kode_petugas` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tgl_entri` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `level` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`kode_user`, `kode_petugas`, `username`, `password`, `nama`, `tgl_entri`, `foto`, `level`) VALUES
('U0001', 'P0001', 'admin', 'admin', 'admin', '2019-06-24', 'dd.jpg', 'admin'),
('U0002', 'P0002', 'operator', 'operator', 'operator', '2019-06-24', 'Op', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_anggota`
--
ALTER TABLE `t_anggota`
  ADD PRIMARY KEY (`kode_anggota`);

--
-- Indexes for table `t_angsur`
--
ALTER TABLE `t_angsur`
  ADD PRIMARY KEY (`kode_angsur`);

--
-- Indexes for table `t_jenis_pinjam`
--
ALTER TABLE `t_jenis_pinjam`
  ADD PRIMARY KEY (`kode_jenis_pinjam`);

--
-- Indexes for table `t_jenis_simpan`
--
ALTER TABLE `t_jenis_simpan`
  ADD PRIMARY KEY (`kode_jenis_simpan`);

--
-- Indexes for table `t_pengajuan`
--
ALTER TABLE `t_pengajuan`
  ADD PRIMARY KEY (`kode_pengajuan`);

--
-- Indexes for table `t_pengambilan`
--
ALTER TABLE `t_pengambilan`
  ADD PRIMARY KEY (`kode_ambil`);

--
-- Indexes for table `t_petugas`
--
ALTER TABLE `t_petugas`
  ADD PRIMARY KEY (`kode_petugas`);

--
-- Indexes for table `t_pinjam`
--
ALTER TABLE `t_pinjam`
  ADD PRIMARY KEY (`kode_pinjam`);

--
-- Indexes for table `t_simpan`
--
ALTER TABLE `t_simpan`
  ADD PRIMARY KEY (`kode_simpan`);

--
-- Indexes for table `t_tabungan`
--
ALTER TABLE `t_tabungan`
  ADD PRIMARY KEY (`kode_tabungan`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`kode_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_angsur`
--
ALTER TABLE `t_angsur`
  MODIFY `kode_angsur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `t_pengajuan`
--
ALTER TABLE `t_pengajuan`
  MODIFY `kode_pengajuan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_pengambilan`
--
ALTER TABLE `t_pengambilan`
  MODIFY `kode_ambil` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_pinjam`
--
ALTER TABLE `t_pinjam`
  MODIFY `kode_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `t_simpan`
--
ALTER TABLE `t_simpan`
  MODIFY `kode_simpan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `t_tabungan`
--
ALTER TABLE `t_tabungan`
  MODIFY `kode_tabungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
