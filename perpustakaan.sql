-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.33-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for perpustakaan
CREATE DATABASE IF NOT EXISTS `perpustakaan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `perpustakaan`;

-- Dumping structure for table perpustakaan.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table perpustakaan.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table perpustakaan.tb_anggota
CREATE TABLE IF NOT EXISTS `tb_anggota` (
  `kd_anggota` int(11) NOT NULL AUTO_INCREMENT,
  `no_anggota` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` int(1) DEFAULT '1',
  `alamat` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `foto` text,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_anggota`),
  UNIQUE KEY `no_anggota` (`no_anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table perpustakaan.tb_anggota: ~2 rows (approximately)
/*!40000 ALTER TABLE `tb_anggota` DISABLE KEYS */;
INSERT INTO `tb_anggota` (`kd_anggota`, `no_anggota`, `nama`, `tempat`, `tgl_lahir`, `jk`, `alamat`, `kota`, `telp`, `email`, `user_name`, `user_password`, `foto`, `status`) VALUES
	(1, 'A0001012019', 'Agus Tus', 'Semarang', '2019-01-02', 1, 'Jl. Mangga 12 X', 'Semarang', '08976458853', 'a@aa.com', 'agus', '01c3c766ce47082b1b130daedd347ffd', NULL, '1'),
	(2, 'A0002012019', 'Younglex', 'Jakarta', '2019-01-09', 1, 'Jakarta', 'Jakarta', '08967859894', 'young@gmail.com', 'young', '658d128f20ee88e00e9607a475cdfaa5', NULL, '1');
/*!40000 ALTER TABLE `tb_anggota` ENABLE KEYS */;

-- Dumping structure for table perpustakaan.tb_buku
CREATE TABLE IF NOT EXISTS `tb_buku` (
  `kd_buku` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) DEFAULT '0',
  `kd_pengarang` int(11) DEFAULT '0',
  `kd_penerbit` int(11) DEFAULT '0',
  `tempat_terbit` varchar(50) DEFAULT '0',
  `tahun_terbit` varchar(50) DEFAULT '0',
  `kd_kategori` int(11) DEFAULT '0',
  `halaman` varchar(50) DEFAULT '0',
  `edisi` varchar(50) DEFAULT '0',
  `ISBN` varchar(50) DEFAULT '0',
  `cover` longtext,
  PRIMARY KEY (`kd_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table perpustakaan.tb_buku: ~3 rows (approximately)
/*!40000 ALTER TABLE `tb_buku` DISABLE KEYS */;
INSERT INTO `tb_buku` (`kd_buku`, `judul`, `kd_pengarang`, `kd_penerbit`, `tempat_terbit`, `tahun_terbit`, `kd_kategori`, `halaman`, `edisi`, `ISBN`, `cover`) VALUES
	(1, 'Kisah Mahabharata', 1, 1, 'Jakarta', '2019', 1, '100', 'Langka', '9088808312', NULL),
	(2, 'Sejarah Indo', 2, 2, 'Jakarta', '2019', 1, '100', '2', '0940394803', NULL),
	(3, 'Latihan Membaca', 2, 1, 'Malang', '2020', 2, '100', '1', '9070609654', NULL);
/*!40000 ALTER TABLE `tb_buku` ENABLE KEYS */;

-- Dumping structure for table perpustakaan.tb_kategori
CREATE TABLE IF NOT EXISTS `tb_kategori` (
  `kd_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) NOT NULL,
  `singkatan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kd_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table perpustakaan.tb_kategori: ~2 rows (approximately)
/*!40000 ALTER TABLE `tb_kategori` DISABLE KEYS */;
INSERT INTO `tb_kategori` (`kd_kategori`, `nama_kategori`, `singkatan`) VALUES
	(1, 'Sejarah', 'SEJ'),
	(2, 'Edukasi', 'EDU');
/*!40000 ALTER TABLE `tb_kategori` ENABLE KEYS */;

-- Dumping structure for table perpustakaan.tb_koleksi_buku
CREATE TABLE IF NOT EXISTS `tb_koleksi_buku` (
  `kd_koleksi` int(11) NOT NULL AUTO_INCREMENT,
  `no_induk_buku` varchar(50) NOT NULL,
  `kd_buku` int(11) DEFAULT NULL,
  `kd_user` int(11) DEFAULT NULL,
  `tgl_pengadaan` date DEFAULT NULL,
  `akses` varchar(50) DEFAULT NULL,
  `kd_rak` int(11) DEFAULT '0',
  `sumber` varchar(50) DEFAULT '0',
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`kd_koleksi`),
  UNIQUE KEY `no_induk_buku` (`no_induk_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- Dumping data for table perpustakaan.tb_koleksi_buku: ~45 rows (approximately)
/*!40000 ALTER TABLE `tb_koleksi_buku` DISABLE KEYS */;
INSERT INTO `tb_koleksi_buku` (`kd_koleksi`, `no_induk_buku`, `kd_buku`, `kd_user`, `tgl_pengadaan`, `akses`, `kd_rak`, `sumber`, `status`) VALUES
	(1, 'B-0001--000001', 1, 1, '2019-01-11', 'Boleh Dipinjam', 1, 'Giveaway', 1),
	(2, 'B-0001--000002', 1, 1, '2019-01-11', 'Boleh Dipinjam', 1, 'Giveaway', 1),
	(3, 'B-0001--000003', 1, 1, '2019-01-11', 'Boleh Dipinjam', 1, 'Giveaway', 1),
	(4, 'B-0001--000004', 1, 1, '2019-01-11', 'Boleh Dipinjam', 1, 'Giveaway', 1),
	(5, 'B-0001--000005', 1, 1, '2019-01-11', 'Boleh Dipinjam', 1, 'Giveaway', 1),
	(6, 'B-0001--000006', 1, 1, '2019-01-11', 'Boleh Dipinjam', 1, 'Giveaway', 1),
	(7, 'B-0001--000007', 1, 1, '2019-01-11', 'Boleh Dipinjam', 1, 'Giveaway', 1),
	(8, 'B-0001--000008', 1, 1, '2019-01-11', 'Boleh Dipinjam', 1, 'Giveaway', 1),
	(9, 'B-0001--000009', 1, 1, '2019-01-11', 'Boleh Dipinjam', 1, 'Giveaway', 1),
	(10, 'B-0001--000010', 1, 1, '2019-01-11', 'Boleh Dipinjam', 1, 'Giveaway', 1),
	(11, 'B-0002-SEJ-000011', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(12, 'B-0002-SEJ-000012', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(13, 'B-0002-SEJ-000013', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(14, 'B-0002-SEJ-000014', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(15, 'B-0002-SEJ-000015', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(16, 'B-0002-SEJ-000016', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 0),
	(17, 'B-0002-SEJ-000017', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(18, 'B-0002-SEJ-000018', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(19, 'B-0002-SEJ-000019', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(20, 'B-0002-SEJ-000020', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(21, 'B-0002-SEJ-000021', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(22, 'B-0002-SEJ-000022', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(23, 'B-0002-SEJ-000023', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(24, 'B-0002-SEJ-000024', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(25, 'B-0002-SEJ-000025', 2, 1, '2019-01-31', 'Boleh Dipinjam', 2, 'Unboxing', 1),
	(26, 'B-0003-EDU-000026', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(27, 'B-0003-EDU-000027', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(28, 'B-0003-EDU-000028', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(29, 'B-0003-EDU-000029', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(30, 'B-0003-EDU-000030', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(31, 'B-0003-EDU-000031', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(32, 'B-0003-EDU-000032', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 1),
	(33, 'B-0003-EDU-000033', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(34, 'B-0003-EDU-000034', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(35, 'B-0003-EDU-000035', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(36, 'B-0003-EDU-000036', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(37, 'B-0003-EDU-000037', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(38, 'B-0003-EDU-000038', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(39, 'B-0003-EDU-000039', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(40, 'B-0003-EDU-000040', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(41, 'B-0003-EDU-000041', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(42, 'B-0003-EDU-000042', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(43, 'B-0003-EDU-000043', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(44, 'B-0003-EDU-000044', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0),
	(45, 'B-0003-EDU-000045', 3, 1, '2019-02-01', 'Boleh Dipinjam', 2, 'Nyuri', 0);
/*!40000 ALTER TABLE `tb_koleksi_buku` ENABLE KEYS */;

-- Dumping structure for table perpustakaan.tb_peminjaman
CREATE TABLE IF NOT EXISTS `tb_peminjaman` (
  `kd_pinjam` int(11) NOT NULL AUTO_INCREMENT,
  `no_pinjam` varchar(50) DEFAULT '0',
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `no_induk_buku` varchar(50) DEFAULT '0',
  `no_anggota` varchar(50) DEFAULT '0',
  `denda` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`kd_pinjam`),
  UNIQUE KEY `no_pinjam` (`no_pinjam`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- Dumping data for table perpustakaan.tb_peminjaman: ~12 rows (approximately)
/*!40000 ALTER TABLE `tb_peminjaman` DISABLE KEYS */;
INSERT INTO `tb_peminjaman` (`kd_pinjam`, `no_pinjam`, `tgl_pinjam`, `tgl_kembali`, `no_induk_buku`, `no_anggota`, `denda`, `status`) VALUES
	(28, 'P000028', '2019-01-30', '2019-02-02', 'B-0002-SEJ-000021', 'A0001012019', 0, 0),
	(29, 'P000029', '2019-01-30', '2019-02-02', 'B-0002-SEJ-000020', 'A0001012019', 0, 0),
	(31, 'P000031', '2019-01-30', '2019-02-02', 'B-0002-SEJ-000012', 'A0001012019', 0, 0),
	(32, 'P000032', '2019-01-30', '2019-02-02', 'B-0002-SEJ-000022', 'A0001012019', 0, 0),
	(33, 'P000033', '2019-02-01', '2019-02-04', 'B-0002-SEJ-000023', 'A0002012019', 0, 0),
	(34, 'P000034', '2019-02-01', '2019-02-04', 'B-0002-SEJ-000023', 'A0002012019', 0, 0),
	(35, 'P000035', '2019-02-01', '2019-02-04', 'B-0002-SEJ-000023', 'A0002012019', 0, 0),
	(36, 'P000036', '2019-02-01', '2019-02-04', 'B-0002-SEJ-000025', 'A0002012019', 0, 0),
	(37, 'P000037', '2019-02-01', '2019-02-04', 'B-0002-SEJ-000014', 'A0002012019', 0, 0),
	(38, 'P000038', '2019-02-01', '2019-02-04', 'B-0002-SEJ-000015', 'A0001012019', 0, 0),
	(39, 'P000039', '2019-02-01', '2019-02-04', 'B-0002-SEJ-000024', 'A0002012019', 0, 0),
	(40, 'P000040', '2019-02-01', '2019-02-04', 'B-0003-EDU-000032', 'A0002012019', 0, 0);
/*!40000 ALTER TABLE `tb_peminjaman` ENABLE KEYS */;

-- Dumping structure for table perpustakaan.tb_penerbit
CREATE TABLE IF NOT EXISTS `tb_penerbit` (
  `kd_penerbit` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penerbit` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_penerbit`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table perpustakaan.tb_penerbit: ~2 rows (approximately)
/*!40000 ALTER TABLE `tb_penerbit` DISABLE KEYS */;
INSERT INTO `tb_penerbit` (`kd_penerbit`, `nama_penerbit`) VALUES
	(1, 'Redup Dunia'),
	(2, 'Bromo Media');
/*!40000 ALTER TABLE `tb_penerbit` ENABLE KEYS */;

-- Dumping structure for table perpustakaan.tb_pengarang
CREATE TABLE IF NOT EXISTS `tb_pengarang` (
  `kd_pengarang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pengarang` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_pengarang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table perpustakaan.tb_pengarang: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_pengarang` DISABLE KEYS */;
INSERT INTO `tb_pengarang` (`kd_pengarang`, `nama_pengarang`) VALUES
	(2, 'Wahyu');
/*!40000 ALTER TABLE `tb_pengarang` ENABLE KEYS */;

-- Dumping structure for table perpustakaan.tb_rak
CREATE TABLE IF NOT EXISTS `tb_rak` (
  `kd_rak` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rak` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_rak`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table perpustakaan.tb_rak: ~2 rows (approximately)
/*!40000 ALTER TABLE `tb_rak` DISABLE KEYS */;
INSERT INTO `tb_rak` (`kd_rak`, `nama_rak`) VALUES
	(1, 'Sejarah 1'),
	(2, 'Sejarah 2');
/*!40000 ALTER TABLE `tb_rak` ENABLE KEYS */;

-- Dumping structure for table perpustakaan.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table perpustakaan.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
	(1, 'Younglex', 'young@gmail.com', NULL, '$2y$10$Jhw/VZ8v1osTI/12Erzwz.mX342hiaVUWcYI3ZL9k.co.33.NyJmW', 'NX1mnBcrNp1IuyUh4D21adKzFsz2vBWWbCHbrqjTfawn6hfU5M9iwe0WW66G', '2019-02-06 03:13:25', '2019-02-06 03:13:25', 2),
	(2, 'Agus', 'agus@gmail.com', NULL, '$2y$10$OYk4JsTdMF./WAeVRjc4pu0UQgCVF6p0TrlE7zWrrfwWjdV.hpIha', 'rGo0tr47cLk6SnJbeEw0MnMpQOheHoPmnVfJXTPNFCjeFX1ZdvoqSx9mDM9E', '2019-02-06 03:26:18', '2019-02-06 03:26:18', 2),
	(3, 'Vanessa', 'vanes@gmail.com', NULL, '$2y$10$AvXCNP66.NGyrkLgu9T2JeVkpzODdkCU6DGcRxC58zSAIgcj8Gzti', 'LzWmxt8hso9tJJcklJYL9fHkf7YAOrEKOF1zoHPm5JesnsjSiwCk9pIiSPFE', '2019-02-11 02:54:53', '2019-02-11 02:54:53', 2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
