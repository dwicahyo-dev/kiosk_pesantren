-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2019 at 04:55 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiosk_pesantren`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'indah', 'indah', 'f3385c508ce54d577fd205a1b2ecdfb7');

-- --------------------------------------------------------

--
-- Table structure for table `animasi`
--

CREATE TABLE `animasi` (
  `id_animasi` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `animasi` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animasi`
--

INSERT INTO `animasi` (`id_animasi`, `id_admin`, `animasi`, `keterangan`, `tgl_posting`) VALUES
(1, 2, 'Skripsi_Indah2.swf', 'Cara Pendaftaran', '2019-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `foto_galeri` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gedung`
--

CREATE TABLE `gedung` (
  `id_gedung` int(11) NOT NULL,
  `nama_gedung` varchar(255) NOT NULL,
  `foto_gedung` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gedung`
--

INSERT INTO `gedung` (`id_gedung`, `nama_gedung`, `foto_gedung`, `keterangan`) VALUES
(9, 'Gerbang Utama Putra', 'Gerbang_Putra.png', 'Gerbang Putra Berada Didepan Masjid Sebelah kiri'),
(10, 'gerbang Utama Putri', 'banner10.jpg', 'Gerbang Utama Putri Berada Di Sebelah Kanan Masjid'),
(11, 'Masjid', 'masjid.jpg', 'Masjid Terletak Di Belakang Gerbang Putra'),
(12, 'Aula Putra', 'aula_pp.jpg', 'aula putra berada di lantai 2'),
(13, 'aula putri', 'aula.jpg', 'aula putri berada di lantai 2 sebelah kanan'),
(14, 'kantor', 'aula_putra.jpg', 'berada di samping dhalem pa kyai'),
(15, 'tempat belajar kitab', 'TempatBelajar_kitab.jpg', 'Tempat belajar al-khitab para santri'),
(16, 'koperasi', 'koprasi.jpg', 'berada di belakang masjid'),
(17, 'Dhalem Pak Kyai', '20171029_090847.jpg', 'berada di samping masjid');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_pengurus`
--

CREATE TABLE `jabatan_pengurus` (
  `id_jabatan_pengurus` int(11) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan_pengurus`
--

INSERT INTO `jabatan_pengurus` (`id_jabatan_pengurus`, `nama_jabatan`) VALUES
(1, 'Guru Ngaji'),
(2, 'Guru kitab'),
(4, 'Ketua'),
(5, 'pengurus administrasi'),
(6, 'Guru Fiqih'),
(7, 'pengurus putri'),
(8, 'pengurus putra');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `jam` datetime NOT NULL,
  `tempat` text NOT NULL,
  `foto_kegiatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `id_admin`, `nama_kegiatan`, `jam`, `tempat`, `foto_kegiatan`) VALUES
(1, 2, 'Ngaji Kitab', '2019-08-07 15:41:00', 'masjid', 'asy_syifaa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `id_pengurus` int(11) NOT NULL,
  `nama_pengurus` varchar(255) NOT NULL,
  `foto_pengurus` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `id_jabatan_pengurus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`id_pengurus`, `nama_pengurus`, `foto_pengurus`, `no_telepon`, `jenis_kelamin`, `id_jabatan_pengurus`) VALUES
(1, 'zahro maimunah', 'zahro_mainunah_santri.jpg', 'tidak ada', 'P', 7),
(4, 'Ustd kholil Ridwan', 'ketua.jpg', '081326822455', 'L', 4),
(5, 'eva khotamis', 'guru_2.png', 'tidak ada', 'P', 1),
(6, 'amilya ningsih', 'guru_1.png', 'tidak ada', 'P', 5),
(7, 'Nur Shoim', 'guru_6.png', 'tidak ada', 'L', 6),
(8, 'zainal abidin', 'guru_7.png', 'tidak ada', 'L', 8),
(9, 'saiful anwar', 'guru_5.png', 'tidak ada', 'L', 2);

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `kode_pos` varchar(255) NOT NULL,
  `foto_struktur_organisasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `id_admin`, `nama`, `logo`, `visi`, `misi`, `alamat`, `email`, `no_telepon`, `kode_pos`, `foto_struktur_organisasi`) VALUES
(1, 2, 'Pondok Pesantren Asy_Syifaa Kajen', 'logo21.jpg', 'aa', 'bb', 'nyamok', 'ponpes.asysyifakajen@gmail.com', '081326822455', '51161', 'struktur1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `santri`
--

CREATE TABLE `santri` (
  `id_santri` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nama_santri` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `nama_bapak` varchar(255) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_pengurus_pengajar` int(11) NOT NULL,
  `nama_gedung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `santri`
--

INSERT INTO `santri` (`id_santri`, `foto`, `nama_santri`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `nama_bapak`, `nama_ibu`, `status`, `tgl_masuk`, `id_admin`, `id_pengurus_pengajar`, `nama_gedung`) VALUES
(1, '1.png', 'zainur Rohibah', '2000-07-19', 'P', 'kajen', 'raadi', 'sukarsih', 'belum menikah', '2019-08-14', 1, 1, 'Aula Putri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `animasi`
--
ALTER TABLE `animasi`
  ADD PRIMARY KEY (`id_animasi`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `gedung`
--
ALTER TABLE `gedung`
  ADD PRIMARY KEY (`id_gedung`);

--
-- Indexes for table `jabatan_pengurus`
--
ALTER TABLE `jabatan_pengurus`
  ADD PRIMARY KEY (`id_jabatan_pengurus`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id_pengurus`),
  ADD KEY `id_jabatan_pengurus` (`id_jabatan_pengurus`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`id_santri`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_pengurus_pengajar` (`id_pengurus_pengajar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `animasi`
--
ALTER TABLE `animasi`
  MODIFY `id_animasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gedung`
--
ALTER TABLE `gedung`
  MODIFY `id_gedung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jabatan_pengurus`
--
ALTER TABLE `jabatan_pengurus`
  MODIFY `id_jabatan_pengurus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id_pengurus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `santri`
--
ALTER TABLE `santri`
  MODIFY `id_santri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animasi`
--
ALTER TABLE `animasi`
  ADD CONSTRAINT `animasi_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `kegiatan_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD CONSTRAINT `pengurus_ibfk_1` FOREIGN KEY (`id_jabatan_pengurus`) REFERENCES `jabatan_pengurus` (`id_jabatan_pengurus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `santri`
--
ALTER TABLE `santri`
  ADD CONSTRAINT `santri_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `santri_ibfk_2` FOREIGN KEY (`id_pengurus_pengajar`) REFERENCES `pengurus` (`id_pengurus`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
