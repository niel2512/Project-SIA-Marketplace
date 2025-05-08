-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 11:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokomukena`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `foto`, `harga`, `stok`, `deskripsi`) VALUES
(1, 'Mukena Artiz', '1.jpg', 325000, 46, 'Mukena dengan kain yang dingin dan sejuk. Cocok digunakan oleh para wanita yang berprofesi sebagai artis karena kenyamanan dan modelnya. '),
(2, 'Mukena Religius', '2.jpg', 150000, 95, 'Menggunakan mukena serasa sedang beribadah di kota mekkah. Mukena religius membuat anda tampil lebih religius dan bertakwa.'),
(3, 'Mukena Modis', '3.png', 500000, 24, 'Mukena dengan trend kekinian, pas digunakan oleh para remaja milenial yang senantiasa aktif dan adapatif. Mukena ini mudah di bawa kemana mana.'),
(4, 'Mukena Unyuy', '4.jpg', 58000, 150, 'Mukena unyuy ini mampu membuat anda tampil 10 tahun lebih muda dari usia sebenarnya. Cocok digunakan seluruh usia, membuat anda tampil lebih muda dan bercahaya.');

-- --------------------------------------------------------

--
-- Table structure for table `coa`
--

CREATE TABLE `coa` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_akun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_akun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_akun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coa`
--

INSERT INTO `coa` (`id`, `kode_akun`, `nama_akun`, `header_akun`, `id_perusahaan`, `created_at`, `updated_at`) VALUES
(1, '111', 'Kas', '1', 1, NULL, NULL),
(5, '102', 'Persediaan Barang Dagang', '1', 3, '2022-09-27 08:25:53', '2022-09-27 08:25:53'),
(11, '411', 'Penjualan', '4', 1, '2022-10-26 05:41:15', '2022-10-26 05:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `contohform`
--

CREATE TABLE `contohform` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_rilis` date NOT NULL,
  `klasifikasi_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contohform`
--

INSERT INTO `contohform` (`id`, `nama_dokumen`, `gambar_dokumen`, `tgl_rilis`, `klasifikasi_dokumen`, `created_at`, `updated_at`) VALUES
(2, 'Dokumen 2', '1664705125.jpg', '2022-10-04', 'eksternal', '2022-10-02 10:05:25', '2022-10-02 10:05:25'),
(6, 'Dokumen 1', '1664717410.jpg', '2022-10-06', 'internal', '2022-10-02 13:30:10', '2022-10-02 13:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `contohform_hobi`
--

CREATE TABLE `contohform_hobi` (
  `id` int(11) NOT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `hobi` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contohform_hobi`
--

INSERT INTO `contohform_hobi` (`id`, `id_dokumen`, `hobi`) VALUES
(2, 2, 'Renang'),
(3, 2, 'Tidur'),
(10, 6, 'Musik'),
(11, 6, 'Tidur');

-- --------------------------------------------------------

--
-- Table structure for table `contohform_jenis_dokumen`
--

CREATE TABLE `contohform_jenis_dokumen` (
  `id` int(11) NOT NULL,
  `id_dokumen` int(11) DEFAULT NULL,
  `nama_dokumen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contohform_jenis_dokumen`
--

INSERT INTO `contohform_jenis_dokumen` (`id`, `id_dokumen`, `nama_dokumen`) VALUES
(12, 2, 'Kebijakan'),
(13, 2, 'SK'),
(20, 6, 'Kebijakan'),
(21, 6, 'SK');

-- --------------------------------------------------------

--
-- Table structure for table `contoh_upload`
--

CREATE TABLE `contoh_upload` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contoh_upload`
--

INSERT INTO `contoh_upload` (`id`, `file`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '1664699373_a.png', 'Gambar 2', '2022-10-02 08:29:34', '2022-10-02 08:29:34'),
(2, '1664699383_boneka.jpg', 'Boneka', '2022-10-02 08:29:43', '2022-10-02 08:29:43'),
(3, '1664699744_ahmad-kali-akbar-2-shalat-isya-1-1024x724.jpg', 'trd', '2022-10-02 08:35:44', '2022-10-02 08:35:44'),
(4, '1664702433_a.png', 'adas', '2022-10-02 09:20:33', '2022-10-02 09:20:33'),
(5, '1664702481_a.png', 'adas', '2022-10-02 09:21:21', '2022-10-02 09:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurnal`
--

CREATE TABLE `jurnal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `kode_akun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_jurnal` datetime NOT NULL,
  `posisi_d_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` int(11) NOT NULL,
  `kelompok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnal`
--

INSERT INTO `jurnal` (`id`, `id_transaksi`, `id_perusahaan`, `kode_akun`, `tgl_jurnal`, `posisi_d_c`, `nominal`, `kelompok`, `transaksi`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '111', '2022-10-27 08:41:43', 'd', 1125000, '1', 'penjualan', NULL, NULL),
(2, 5, 1, '411', '2022-10-27 08:41:43', 'c', 1125000, '1', 'penjualan', NULL, NULL),
(3, 6, 1, '111', '2022-10-27 13:31:32', 'd', 300000, '1', 'penjualan', NULL, NULL),
(4, 6, 1, '411', '2022-10-27 13:31:32', 'c', 300000, '1', 'penjualan', NULL, NULL),
(5, 7, 1, '111', '2022-11-07 22:52:29', 'd', 650000, '1', 'penjualan', NULL, NULL),
(6, 7, 1, '411', '2022-11-07 22:52:29', 'c', 650000, '1', 'penjualan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_03_092056_create_coas_table', 1),
(6, '2022_09_25_204738_create_perusahaans_table', 2),
(9, '2022_10_01_195748_create_contohforms_table', 3),
(10, '2022_10_02_151053_create_contoh_uploads_table', 4),
(11, '2022_10_10_213207_create_penjualans_table', 5),
(12, '2022_10_25_083542_create_pembayarans_table', 6),
(14, '2022_10_26_080507_create_jurnals_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bayar` datetime NOT NULL,
  `tgl_konfirmasi` datetime DEFAULT NULL,
  `bukti_bayar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `no_transaksi`, `tgl_bayar`, `tgl_konfirmasi`, `bukti_bayar`, `jenis_pembayaran`, `status`, `created_at`, `updated_at`) VALUES
(5, 'FK-0002', '2022-10-26 00:00:00', '2022-10-27 08:41:43', '1666734400.jpg', 'tunai', 'approved', '2022-10-25 21:46:40', '2022-10-25 21:46:40'),
(6, 'FK-0003', '2022-10-27 00:00:00', '2022-10-27 13:31:32', '1666851331.jpeg', 'tunai', 'approved', '2022-10-27 06:15:31', '2022-10-27 06:15:31'),
(7, 'FK-0004', '2022-11-07 00:00:00', '2022-11-07 22:52:29', '1667836328.jpg', 'tunai', 'approved', '2022-11-07 15:52:08', '2022-11-07 15:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_customer` int(11) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `tgl_expired` datetime NOT NULL,
  `total_harga` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_transaksi`, `id_customer`, `tgl_transaksi`, `tgl_expired`, `total_harga`, `status`, `created_at`, `updated_at`) VALUES
(2, 'FK-0001', 1, '2022-10-14 21:32:17', '2022-10-15 02:32:17', 450000, 'expired', NULL, NULL),
(17, 'FK-0002', 1, '2022-10-16 06:39:10', '2022-10-19 20:01:43', 1125000, 'selesai', NULL, NULL),
(18, 'FK-0003', 1, '2022-10-27 10:20:13', '2022-10-30 10:20:13', 300000, 'selesai', NULL, NULL),
(19, 'FK-0004', 1, '2022-11-07 16:48:43', '2022-11-10 16:48:43', 650000, 'selesai', NULL, NULL),
(20, 'FK-0005', 1, '2022-11-16 16:38:02', '2022-11-19 16:38:02', 325000, 'pesan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id` int(11) NOT NULL,
  `no_transaksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `harga_barang` int(11) DEFAULT NULL,
  `jml_barang` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `tgl_transaksi` datetime DEFAULT NULL,
  `tgl_expired` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id`, `no_transaksi`, `id_barang`, `harga_barang`, `jml_barang`, `total`, `tgl_transaksi`, `tgl_expired`) VALUES
(2, 'FK-0001', 2, 150000, 3, 450000, '2022-10-14 21:32:17', '2022-10-15 02:32:17'),
(19, 'FK-0002', 2, 150000, 3, 450000, '2022-10-19 06:39:28', '2022-10-19 06:39:10'),
(20, 'FK-0002', 3, 500000, 1, 500000, '2022-10-16 06:39:20', '2022-10-19 06:39:20'),
(21, 'FK-0002', 1, 325000, 1, 325000, '2022-10-16 20:01:43', '2022-10-19 20:01:43'),
(22, 'FK-0003', 2, 150000, 2, 300000, '2022-10-27 10:20:13', '2022-10-30 10:20:13'),
(23, 'FK-0004', 1, 325000, 2, 650000, '2022-11-07 16:48:43', '2022-11-10 16:48:43'),
(24, 'FK-0005', 1, 325000, 1, 325000, '2022-11-16 16:38:02', '2022-11-19 16:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `kode_perusahaan`, `nama_perusahaan`, `alamat_perusahaan`, `created_at`, `updated_at`) VALUES
(1, 'PR-001', 'Mode Mukena Store', 'Pasar Baru Trade Center, Lantai 1 Blok B2 No. 57, Jl. Otto Iskandar Dinata No.70', '2022-09-26 04:30:47', '2022-09-26 14:30:52'),
(3, 'PR-002', 'Puri Utami', 'Jl. Pelajar Pejuang No 50', '2022-09-26 07:53:07', '2022-09-26 07:53:07'),
(4, 'PR-003', 'Toko Maju Sejahtera2', 'Jl Pelan Pelan', '2022-09-27 07:45:44', '2022-09-27 07:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_coa`
--

CREATE TABLE `transaksi_coa` (
  `transaksi` varchar(100) NOT NULL,
  `kode_akun` int(11) NOT NULL,
  `posisi` varchar(1) NOT NULL,
  `kelompok` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_coa`
--

INSERT INTO `transaksi_coa` (`transaksi`, `kode_akun`, `posisi`, `kelompok`, `id_perusahaan`) VALUES
('pembayaran_tunai', 111, 'd', 1, 1),
('pembayaran_tunai', 411, 'c', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tora Fahrudin', 'toratelu@gmail.com', NULL, '$2y$10$lJf1KItEdJ5PnnZDUPCND./Fj5vg3vNC1gGZRCp3YtIQvdsD2/tjm', NULL, '2022-09-17 04:39:08', '2022-09-17 04:39:08'),
(2, 'Joni', 'joni@gmail.com', NULL, '$2y$10$K.IYTXGh4auE3dOnfaBoGO6vLLAtHH4zfTkrC73EZqoTPkrcbMltW', NULL, '2022-11-15 13:20:17', '2022-11-15 13:20:17'),
(3, 'Hendro', 'hendro@gmail.com', NULL, '$2y$10$UH8TCR8k7YVsUfsrU97y8eiXEUIpJIcixHO.StZs/uNN9esg8/ka6', NULL, '2022-11-15 13:44:04', '2022-11-15 13:44:04');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `after_insert_users` AFTER INSERT ON `users` FOR EACH ROW BEGIN  
 INSERT INTO users_kelompok VALUES(NEW.id,'customer');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users_kelompok`
--

CREATE TABLE `users_kelompok` (
  `id_user` int(11) NOT NULL,
  `kelompok` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_kelompok`
--

INSERT INTO `users_kelompok` (`id_user`, `kelompok`) VALUES
(1, 'admin'),
(2, 'customer'),
(3, 'customer');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_dokumen`
-- (See below for the actual view)
--
CREATE TABLE `view_dokumen` (
`id` int(10) unsigned
,`nama_dokumen` varchar(255)
,`gambar_dokumen` varchar(255)
,`tgl_rilis` date
,`klasifikasi_dokumen` varchar(255)
,`created_at` timestamp
,`updated_at` timestamp
,`list_dokumen` mediumtext
,`list_hobi` mediumtext
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_transaksi`
-- (See below for the actual view)
--
CREATE TABLE `view_transaksi` (
`id_transaksi` bigint(20) unsigned
,`waktu` datetime
,`sumber` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_waktu`
-- (See below for the actual view)
--
CREATE TABLE `v_waktu` (
`waktu` varchar(7)
);

-- --------------------------------------------------------

--
-- Structure for view `view_dokumen`
--
DROP TABLE IF EXISTS `view_dokumen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_dokumen`  AS SELECT `a`.`id` AS `id`, `a`.`nama_dokumen` AS `nama_dokumen`, `a`.`gambar_dokumen` AS `gambar_dokumen`, `a`.`tgl_rilis` AS `tgl_rilis`, `a`.`klasifikasi_dokumen` AS `klasifikasi_dokumen`, `a`.`created_at` AS `created_at`, `a`.`updated_at` AS `updated_at`, `b`.`list_dokumen` AS `list_dokumen`, `c`.`list_hobi` AS `list_hobi` FROM ((`contohform` `a` left join (select `contohform_jenis_dokumen`.`id_dokumen` AS `id_dokumen`,group_concat(`contohform_jenis_dokumen`.`nama_dokumen` separator ',') AS `list_dokumen` from `contohform_jenis_dokumen`) `b` on(`a`.`id` = `b`.`id_dokumen`)) left join (select `contohform_hobi`.`id_dokumen` AS `id_dokumen`,group_concat(`contohform_hobi`.`hobi` separator ',') AS `list_hobi` from `contohform_hobi`) `c` on(`a`.`id` = `c`.`id_dokumen`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_transaksi`
--
DROP TABLE IF EXISTS `view_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_transaksi`  AS SELECT `pembayaran`.`id` AS `id_transaksi`, `pembayaran`.`tgl_konfirmasi` AS `waktu`, 'pembayaran' AS `sumber` FROM `pembayaran``pembayaran`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_waktu`
--
DROP TABLE IF EXISTS `v_waktu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_waktu`  AS SELECT concat(date_format(current_timestamp(),'%Y'),'-01') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-02') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-03') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-04') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-05') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-06') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-07') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-08') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-09') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-10') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-11') AS `waktu` union select concat(date_format(current_timestamp(),'%Y'),'-12') AS `waktu`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coa`
--
ALTER TABLE `coa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coa_kode_akun_unique` (`kode_akun`),
  ADD UNIQUE KEY `coa_nama_akun_unique` (`nama_akun`);

--
-- Indexes for table `contohform`
--
ALTER TABLE `contohform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contohform_hobi`
--
ALTER TABLE `contohform_hobi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contohform_jenis_dokumen`
--
ALTER TABLE `contohform_jenis_dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contoh_upload`
--
ALTER TABLE `contoh_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `perusahaan_kode_perusahaan_unique` (`kode_perusahaan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_kelompok`
--
ALTER TABLE `users_kelompok`
  ADD UNIQUE KEY `email` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coa`
--
ALTER TABLE `coa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contohform`
--
ALTER TABLE `contohform`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contohform_hobi`
--
ALTER TABLE `contohform_hobi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contohform_jenis_dokumen`
--
ALTER TABLE `contohform_jenis_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contoh_upload`
--
ALTER TABLE `contoh_upload`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurnal`
--
ALTER TABLE `jurnal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
