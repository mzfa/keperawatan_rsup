-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 20, 2023 at 03:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keperawatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `bagian_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_bagian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `referensi_bagian` bigint(20) UNSIGNED DEFAULT NULL,
  `group_bagian` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`bagian_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_bagian`, `referensi_bagian`, `group_bagian`) VALUES
(1, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'UNIT RAWAT JALAN', NULL, 'GROUP'),
(2, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'UNIT RAWAT INAP', NULL, 'GROUP'),
(3, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'PENUNJANG MEDIS', NULL, 'GROUP'),
(4, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'LABORATORIUM', 3, 'GROUP'),
(5, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'LABORATORIUM', 4, 'DETAIL'),
(6, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'DIAGNOSTIC CENTER', 3, 'GROUP'),
(7, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'RADIOLOGI', 6, 'DETAIL'),
(8, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'CT SCAN', 6, 'DETAIL'),
(9, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'PELAYANAN MEDIS', NULL, 'GROUP'),
(10, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'USG', 6, 'DETAIL'),
(11, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'ICU', 2, 'DETAIL'),
(12, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KAMAR BEDAH', 3, 'DETAIL'),
(13, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'REKAM MEDIS', 3, 'DETAIL'),
(14, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'CASEMIX', 9, 'DETAIL'),
(15, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'PSRS & UMUM', 15, 'GROUP'),
(16, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'PENGADAAN OBAT', 33, 'DETAIL'),
(17, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'PENGADAAN UMUM', 33, 'DETAIL'),
(18, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'TEKNIK', 15, 'DETAIL'),
(19, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KEUANGAN DAN IT', NULL, 'GROUP'),
(20, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KEPERAWATAN', NULL, 'GROUP'),
(21, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'PEMASARAN', NULL, 'DETAIL'),
(22, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'IGD', 9, 'DETAIL'),
(23, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'FARMASI', 44, 'DETAIL'),
(24, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'GIZI', 3, 'DETAIL'),
(25, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KAMAR JENAZAH', 3, 'DETAIL'),
(26, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'PERHOTELAN', 15, 'DETAIL'),
(27, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KEPERAWATAN', 9, 'DETAIL'),
(28, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK KANDUNGAN', 1, 'DETAIL'),
(29, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK GIGI', 1, 'DETAIL'),
(30, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KEUANGAN', 19, 'DETAIL'),
(31, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'TEKNIK INFORMASI', 19, 'DETAIL'),
(32, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'SDM', NULL, 'GROUP'),
(33, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'SDM DAN PENGADAAN', NULL, 'DETAIL'),
(34, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK MATA', 1, 'DETAIL'),
(35, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK REHAB MEDIK', 1, 'DETAIL'),
(36, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK PARU', 1, 'DETAIL'),
(37, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK THT', 1, 'DETAIL'),
(38, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK SYARAF', 1, 'DETAIL'),
(39, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK BEDAH', 1, 'DETAIL'),
(40, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK KULIT DAN KELAMIN', 1, 'DETAIL'),
(41, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK PENYAKIT DALAM', 1, 'DETAIL'),
(42, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK ANAK', 1, 'DETAIL'),
(43, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK UROLOGI', 1, 'DETAIL'),
(44, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'INSTALASI FARMASI', 3, 'GROUP'),
(45, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK JANTUNG', 1, 'DETAIL'),
(46, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK UMUM', 1, 'DETAIL'),
(47, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK ORTOPEDI', 1, 'DETAIL'),
(48, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'TRANSIT IGD', 2, 'DETAIL'),
(49, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'DAHLIA', NULL, 'GROUP'),
(50, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'UNIT REHABILITASI MEDIK', 9, 'GROUP'),
(51, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'FISIOTERAPI', 50, 'DETAIL'),
(52, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'GUDANG UMUM', 49, 'DETAIL'),
(53, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'GUDANG OBAT', 49, 'DETAIL'),
(54, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'OKUPASI TERAPI', 50, 'DETAIL'),
(55, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'TERAPI WICARA', 50, 'DETAIL'),
(56, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'MELATI', 2, 'DETAIL'),
(57, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'MAWAR/ISOLASI', 2, 'DETAIL'),
(58, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'ISOLASI', 2, 'DETAIL'),
(59, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'TERATAI', 2, 'DETAIL'),
(60, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'ANGGREK', 2, 'DETAIL'),
(61, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'EDELWEIS', 2, 'DETAIL'),
(62, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'TULIP', 2, 'DETAIL'),
(63, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'HCU', 2, 'DETAIL'),
(64, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'PERINA', 2, 'DETAIL'),
(65, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK FISIOTERAPI', 1, 'DETAIL'),
(66, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'HEMODIALISA', 9, 'DETAIL'),
(67, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KEPALA RUMAHSAKIT', NULL, 'GROUP'),
(68, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'IGD OBGYN', 9, 'DETAIL'),
(69, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK HEMODIALISA', 9, 'DETAIL'),
(70, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'MEDICAL CHECK UP', 3, 'DETAIL'),
(71, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'AMARILIS / ISOLASI', 2, 'DETAIL'),
(72, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'SAKURA / ISOLASI', 2, 'DETAIL'),
(73, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'LAVENDER / ISOLASI', 2, 'DETAIL'),
(74, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK HD', 1, 'DETAIL'),
(75, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'BAYI SEHAT', 2, 'DETAIL'),
(76, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'AMBULANCE', 3, 'DETAIL'),
(77, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'ICU / ISOLASI', 2, 'DETAIL'),
(78, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK KESEHATAN KERJA', 1, 'DETAIL'),
(79, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK OKUPASI', 1, 'DETAIL'),
(80, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK TERAPI WICARA', 1, 'DETAIL'),
(81, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KOMITE', NULL, 'DETAIL'),
(82, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK KECANTIKAN', 1, 'DETAIL'),
(83, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'GIGI ENDODONSI', 1, 'DETAIL'),
(84, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'INSTALASI GUDANG', 19, 'DETAIL'),
(85, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'ONE DAY CARE', 1, 'GROUP'),
(86, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'ONE DAY CARE KATARAK', 85, 'DETAIL'),
(87, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK ORTODONTI', 1, 'DETAIL'),
(88, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KBN GRAHA MEDIKA', 67, 'GROUP'),
(89, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'KLINIK KEDOKTERAN JIWA', 1, 'DETAIL'),
(90, 0, '2023-02-16 01:57:46', NULL, NULL, NULL, NULL, 'DUTY MANAGER DAN SPGDT', NULL, 'DETAIL');

-- --------------------------------------------------------

--
-- Table structure for table `hakakses`
--

CREATE TABLE `hakakses` (
  `hakakses_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_hakakses` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hakakses`
--

INSERT INTO `hakakses` (`hakakses_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_hakakses`, `menu_id`) VALUES
(1, 0, '2023-02-16 00:33:32', 0, '2023-02-16 00:37:51', NULL, NULL, 'Administrator', '6|7|8|9|11|13|14|15|16|17|'),
(2, 306, '2023-02-16 04:37:19', NULL, NULL, NULL, NULL, 'User', '18|19|20|21|22|23|24|');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pelatihan`
--

CREATE TABLE `jenis_pelatihan` (
  `jenis_pelatihan_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_jenis_pelatihan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_pelatihan`
--

INSERT INTO `jenis_pelatihan` (`jenis_pelatihan_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_jenis_pelatihan`) VALUES
(2, 0, '2023-02-16 04:33:07', 0, '2023-02-16 04:33:55', NULL, NULL, 'Pelatihan BLS');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pendidikan`
--

CREATE TABLE `jenis_pendidikan` (
  `jenis_pendidikan_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_pendidikan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_pendidikan`
--

INSERT INTO `jenis_pendidikan` (`jenis_pendidikan_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_pendidikan`) VALUES
(1, 0, '2023-02-16 03:33:39', 0, '2023-02-18 11:24:17', NULL, NULL, 'SMK/SMA/SEDERAJAT'),
(2, 0, '2023-02-18 11:24:32', NULL, NULL, NULL, NULL, 'D1 - D3'),
(3, 0, '2023-02-18 11:24:49', NULL, NULL, NULL, NULL, 'S1/D4'),
(4, 0, '2023-02-18 11:25:00', NULL, NULL, NULL, NULL, 'S2'),
(5, 0, '2023-02-18 11:25:08', NULL, NULL, NULL, NULL, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `kompetensi`
--

CREATE TABLE `kompetensi` (
  `kompetensi_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_kompetensi` varchar(255) NOT NULL,
  `jenis_kompetensi` varchar(255) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `smpt` varchar(255) DEFAULT NULL,
  `berakhir` date DEFAULT NULL,
  `no_sk` varchar(255) DEFAULT NULL,
  `bukti_sk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kompetensi`
--

INSERT INTO `kompetensi` (`kompetensi_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_kompetensi`, `jenis_kompetensi`, `tmt`, `smpt`, `berakhir`, `no_sk`, `bukti_sk`) VALUES
(1, 306, '2023-02-18 07:02:54', NULL, NULL, NULL, NULL, 'test', 'test', '2023-02-18', 'RSU Pekerja', '2023-02-17', '10-20-2022', '1676703774406-Surat_Muhammad-Zulfikar-FA.pdf'),
(2, 306, '2023-02-18 10:45:06', NULL, NULL, NULL, NULL, 'test1', 'test', '2023-02-02', 'RSU Pekerja', '2023-02-24', '10-20-2022', '1676717106471-DeskApp---Bootstrap-Admin-Dashboard-HTML-Template-(1).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_menu` varchar(255) DEFAULT NULL,
  `icon_menu` varchar(255) DEFAULT NULL,
  `url_menu` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_menu`, `icon_menu`, `url_menu`, `parent_id`) VALUES
(6, 306, '2023-02-16 04:39:05', NULL, NULL, NULL, NULL, 'Konfigurasi', 'bi bi-gear-fill', NULL, 0),
(7, 306, '2023-02-16 04:39:43', NULL, NULL, NULL, NULL, 'Hak Akses', NULL, 'hakakses.index', 6),
(8, 306, '2023-02-16 04:40:53', NULL, NULL, NULL, NULL, 'Menu', NULL, 'menu.index', 6),
(9, 306, '2023-02-16 04:41:28', NULL, NULL, NULL, NULL, 'Master Data', 'bi bi-archive', NULL, 0),
(10, 306, '2023-02-16 04:54:06', NULL, NULL, 306, '2023-02-16 04:54:32', 'Bagian', NULL, 'bagian.index', 9),
(11, 306, '2023-02-16 04:54:26', NULL, NULL, NULL, NULL, 'User', NULL, 'user.index', 9),
(12, 306, '2023-02-16 04:54:45', NULL, NULL, 306, '2023-02-16 04:54:49', 'Bagian', NULL, 'bagian.index', 0),
(13, 306, '2023-02-16 04:55:06', NULL, NULL, NULL, NULL, 'Bagian', NULL, 'bagian.index', 9),
(14, 306, '2023-02-16 04:55:32', NULL, NULL, NULL, NULL, 'Profesi', NULL, 'profesi.index', 9),
(15, 306, '2023-02-16 04:56:09', NULL, NULL, NULL, NULL, 'Pegawai', NULL, 'pegawai.index', 9),
(16, 306, '2023-02-16 04:56:44', NULL, NULL, NULL, NULL, 'Jenis Pendidikan', NULL, 'jenis_pendidikan.index', 9),
(17, 306, '2023-02-16 04:57:40', NULL, NULL, NULL, NULL, 'Jenis Pelatihan', NULL, 'jenis_pelatihan.index', 9),
(18, 0, '2023-02-16 14:02:37', NULL, NULL, NULL, NULL, 'PROFILE', 'bi bi-person', 'profile.index', 0),
(19, 0, '2023-02-16 14:03:28', 0, '2023-02-16 14:05:38', NULL, NULL, 'PEKERJAAN', 'bi bi-certificate', 'pekerjaan.index', 0),
(20, 0, '2023-02-16 14:06:06', NULL, NULL, NULL, NULL, 'PELATIHAN', 'bi bi-certificate', 'pelatihan.index', 0),
(21, 0, '2023-02-16 14:06:43', NULL, NULL, NULL, NULL, 'Kinerja', 'bi bi-indicator', 'kinerja.index', 0),
(22, 0, '2023-02-16 14:07:16', NULL, NULL, NULL, NULL, 'Kompetensi', 'bi bi-certificate', 'kompetensi.index', 0),
(23, 0, '2023-02-18 15:03:37', NULL, NULL, NULL, NULL, 'PENDIDIKAN', 'bi bi-school', 'pendidikan.index', 0),
(24, 0, '2023-02-20 02:25:48', NULL, NULL, NULL, NULL, 'LAPORAN', 'bi bi-paper', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_pegawai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bagian_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profesi_id` bigint(20) DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_pegawai`, `nip`, `bagian_id`, `profesi_id`, `foto`, `nik`) VALUES
(1, 1, '2019-11-04 03:16:07', 1, '2021-03-10 06:38:39', NULL, NULL, 'ADMINISTRATOR', '90000091', 31, 15, NULL, NULL),
(2, 1, '2020-01-14 07:02:47', 1, '2020-08-06 02:29:41', NULL, NULL, 'Ahdi Pratama', '1390796', 31, 15, NULL, NULL),
(3, 1, '2020-01-14 07:38:25', 210, '2022-07-16 00:42:11', NULL, NULL, 'Amia Della, A.Md.Keb', '1281293', 75, 2, NULL, NULL),
(4, 1, '2020-01-15 08:11:15', 123, '2021-01-15 07:41:10', 123, '2021-01-15 07:41:10', 'Wyasa Andrianto, dr., Sp.KFR', '1691071', 35, 16, NULL, NULL),
(5, 1, '2020-01-15 08:12:25', 152, '2020-08-27 01:48:44', NULL, NULL, 'Rusliadi Kustiawan, A.Md.RMIK', '0150192', 13, 7, NULL, NULL),
(6, 1, '2020-01-15 08:13:41', 152, '2020-08-26 03:40:35', 152, '2020-08-26 03:40:35', 'Fadhillah Apriani, A.Md.Rad', '1350493', 7, 12, NULL, NULL),
(7, 1, '2020-01-15 08:14:38', 152, '2020-08-26 03:56:57', NULL, NULL, 'Firni Dwi Astuti, S.Farm', '1170993', 23, 4, NULL, NULL),
(8, 1, '2020-01-15 08:19:55', 152, '2020-08-28 00:57:26', NULL, NULL, 'Noor Rizky Zulfira, SE.Ak', '0940890', 30, 9, NULL, NULL),
(9, 1, '2020-01-15 08:26:01', 152, '2020-08-26 03:41:02', 152, '2020-08-26 03:41:02', 'Aris Haryana, S. Si. Apt', '1270383', 53, 17, NULL, NULL),
(10, 1, '2020-01-15 08:26:46', 152, '2020-08-27 01:48:54', NULL, NULL, 'Gilang Mahardika, A.Md.AK', '0120389', 5, 8, NULL, NULL),
(11, 1, '2020-01-15 08:28:44', 152, '2021-04-01 06:33:22', 152, '2021-04-01 06:33:22', 'RA Afiani Putri Utaminingsih, SS.', '1370487', 33, 17, NULL, NULL),
(12, 1, '2020-01-16 01:19:41', 123, '2020-12-14 09:28:46', 123, '2020-12-14 09:28:46', 'Achmad Agus Sudarwin Haryanto, dr., Sp.B', '0671250', NULL, 16, NULL, NULL),
(13, 1, '2020-01-16 01:20:36', 210, '2021-10-09 02:27:35', 210, '2021-10-09 02:27:35', 'Nurhikmah Ramadhani R., A.Md.AK', '0460295', 14, 24, NULL, NULL),
(14, 1, '2020-01-16 01:21:41', NULL, NULL, NULL, NULL, 'Ema Supiani, A.Md.AK', '1180991', 5, 8, NULL, NULL),
(15, 1, '2020-01-16 01:55:55', 152, '2020-08-26 03:40:19', 152, '2020-08-26 03:40:19', 'Ipung Purwono, A.Md. AK', '0391190', 5, 8, NULL, NULL),
(16, 1, '2020-01-16 01:57:18', 1, '2021-03-23 06:08:33', NULL, NULL, 'Dewi Yuliana A.Md. AK', '1330788', 5, 8, NULL, NULL),
(17, 1, '2020-01-16 01:58:29', 1, '2021-07-23 07:49:06', NULL, NULL, 'Apt. Hadijah., S.Si.', '0580779', 23, 3, NULL, NULL),
(18, 1, '2020-01-16 02:00:00', 306, '2022-11-02 04:21:33', 306, '2022-11-02 04:21:33', 'Apt. Siti Fatimah., S.Farm', '1751294', 33, 3, NULL, NULL),
(19, 1, '2020-01-16 02:01:26', 210, '2021-10-09 02:29:01', NULL, NULL, 'Pahma Rahmi S., A.Md.Keb', '0730688', 28, 2, NULL, NULL),
(20, 1, '2020-01-16 02:02:16', 210, '2022-07-16 00:42:31', NULL, NULL, 'Vinda Lyan Nofrin D., A.Md.Keb', '1321193', 75, 2, NULL, NULL),
(21, 1, '2020-01-16 02:03:10', 210, '2022-11-28 04:13:50', NULL, NULL, 'Diah Kurnia Yussela, A.Md.Keb, SKM', '0830788', 90, 34, NULL, NULL),
(22, 1, '2020-01-16 02:04:03', 210, '2021-10-09 02:04:17', NULL, NULL, 'Endang Lestariningsih, A.Md.Keb', '0101158', 28, 2, NULL, NULL),
(23, 1, '2020-01-16 02:05:11', 1, '2020-05-16 02:22:03', NULL, NULL, 'Arum Nurdiana Sari, drg., MM', '1730991', 29, 16, NULL, NULL),
(24, 1, '2020-01-16 02:06:01', 1, '2020-05-16 02:16:03', NULL, NULL, 'Herdiana Elizabeth, dr., Sp.A', '0590983', 42, 16, NULL, NULL),
(25, 1, '2020-01-16 02:07:10', 1, '2020-05-16 02:16:18', NULL, NULL, 'Mustari, dr., Sp.A', '0171166', 42, 16, NULL, NULL),
(26, 1, '2020-01-16 02:08:04', 210, '2021-10-09 02:21:54', 210, '2021-10-09 02:21:54', 'Mira Fauziah, dr., Sp.A, Mked.', '0720380', 42, 16, NULL, NULL),
(27, 1, '2020-01-16 03:02:30', 1, '2021-01-20 08:29:15', NULL, NULL, 'Irwan Amin, dr., Sp. AN-KIC', '1000753', NULL, 16, NULL, NULL),
(28, 1, '2020-01-16 03:03:59', 123, '2020-07-08 09:14:18', NULL, NULL, 'Gina Adriana Nainggolan, dr., Sp.An', '0691080', 12, 16, NULL, NULL),
(29, 1, '2020-01-16 03:06:45', 210, '2022-11-21 01:27:29', 210, '2022-11-21 01:27:29', 'Vincent Chrisnata, dr., Sp.AN', '1450388', 12, 16, NULL, NULL),
(30, 1, '2020-01-16 03:08:36', 158, '2023-02-08 03:59:49', NULL, NULL, 'Andri Suhandi, dr., Sp. B', '0950880', 39, 16, NULL, NULL),
(31, 1, '2020-01-16 03:09:34', 123, '2020-12-14 09:28:22', 123, '2020-12-14 09:28:22', 'Afria Arista, dr., Sp.KK', '0910485', 40, 16, NULL, NULL),
(32, 1, '2020-01-16 03:10:20', 123, '2020-12-14 09:28:04', 123, '2020-12-14 09:28:04', 'Hanekung Titisari, dr., Sp.THT', '0990166', 37, 16, NULL, NULL),
(33, 1, '2020-01-16 03:11:08', 158, '2023-02-08 04:51:14', NULL, NULL, 'Aldityas Eko, dr., Sp.THT-KL', '1680385', 37, 16, NULL, NULL),
(34, 1, '2020-01-16 03:11:52', 306, '2022-11-09 00:03:45', 306, '2022-11-09 00:03:45', 'Muhammad Andi Yassiin, dr., Sp.JP', '0760485', 45, 16, NULL, NULL),
(35, 1, '2020-01-16 03:12:37', 158, '2023-02-08 03:48:47', NULL, NULL, 'Martua Silalahi, dr., Sp.JP', '0791081', 45, 16, NULL, NULL),
(36, 1, '2020-01-16 03:13:23', 1, '2021-03-24 06:48:37', NULL, NULL, 'Nadia Prawitra, dr., Sp.S', '0920482', 38, 16, NULL, NULL),
(37, 1, '2020-01-16 03:15:48', 158, '2023-02-08 04:21:57', NULL, NULL, 'Ahmad Thamrin, dr., Sp.OG', '0660353', 28, 16, NULL, NULL),
(38, 1, '2020-01-16 03:19:12', 210, '2021-10-09 02:23:16', 210, '2021-10-09 02:23:16', 'Muhammad Anggawiyatna, dr., Sp.OT', '1020787', 47, 16, NULL, NULL),
(39, 1, '2020-01-16 03:20:04', 1, '2020-05-16 02:18:34', NULL, NULL, 'Naindra Kemala Dewi, dr., Sp.P', '0780179', 36, 16, NULL, NULL),
(40, 1, '2020-01-16 03:21:12', 306, '2022-11-02 04:28:03', 306, '2022-11-02 04:28:03', 'Febriana Novariska, dr., Sp.P', '0750270', 36, 16, NULL, NULL),
(41, 1, '2020-01-16 03:22:05', 1, '2020-07-08 04:38:22', NULL, NULL, 'Isabella Valentina, dr., Sp.PK', '0820279', 5, 16, NULL, NULL),
(42, 1, '2020-01-16 03:22:47', 123, '2020-12-14 09:27:35', 123, '2020-12-14 09:27:35', 'Deka Larasati, dr., M.Biomed.', '0680878', 7, 16, NULL, NULL),
(43, 1, '2020-01-16 03:23:27', 123, '2020-09-23 01:12:16', 123, '2020-09-23 01:12:16', 'Indria Yogani, dr., Sp.PD', '0800185', 41, 16, NULL, NULL),
(44, 1, '2020-01-16 03:24:15', 158, '2023-02-08 03:32:05', NULL, NULL, 'Felix Satwika, dr., Sp.PD', '1460982', 41, 16, NULL, NULL),
(45, 1, '2020-01-16 03:25:21', 1, '2022-07-13 08:33:52', NULL, NULL, 'Tatan Saefudin, dr., Sp.Rad', '0710854', 7, 16, NULL, NULL),
(46, 1, '2020-01-16 03:26:03', 210, '2022-06-02 04:43:53', 210, '2022-06-02 04:43:53', 'Tunjung Prasetyo Nugroho, dr., Sp. Rad', '0770380', 7, 16, NULL, NULL),
(47, 1, '2020-01-16 03:27:16', 1, '2022-07-26 07:21:48', NULL, NULL, 'Pangeran Indal Patra Abbas, dr.', '1800268', 7, 16, NULL, NULL),
(48, 1, '2020-01-16 03:28:15', 152, '2022-03-05 02:34:49', NULL, NULL, 'dr. Fariha', '0360584', 15, 16, NULL, NULL),
(49, 1, '2020-01-16 03:28:57', 210, '2023-02-14 01:10:01', NULL, NULL, 'dr. Vriyanka', '1150992', 14, 16, NULL, NULL),
(50, 1, '2020-01-16 03:29:36', 210, '2022-11-21 01:29:38', 210, '2022-11-21 01:29:38', 'Erish Harry Angkat, dr.', '0810182', 22, 16, NULL, NULL),
(51, 1, '2020-01-16 03:30:19', 210, '2023-02-14 01:09:45', NULL, NULL, 'dr. Ramadani Kurniawan', '0960391', 21, 16, NULL, NULL),
(52, 1, '2020-01-16 03:34:16', 152, '2020-08-26 04:14:25', 152, '2020-08-26 04:14:25', 'Fachdepy Maulana Ngangi, dr.', '1540992', 22, 16, NULL, NULL),
(53, 1, '2020-01-16 03:35:56', 152, '2020-08-26 03:41:47', 152, '2020-08-26 03:41:47', 'Soraya Alamudi, dr.', '1551194', NULL, 16, NULL, NULL),
(54, 1, '2020-01-16 03:36:33', 123, '2021-01-15 07:41:48', 123, '2021-01-15 07:41:48', 'Rivki Wida Sarandi, dr.', '1820794', 22, 16, NULL, NULL),
(55, 1, '2020-01-16 03:37:23', 152, '2020-08-26 04:10:55', NULL, NULL, 'Tri Meiyuliyanti, A.Md.Farm', '1110596', 23, 4, NULL, NULL),
(56, 1, '2020-01-16 03:38:13', 210, '2023-02-10 06:58:48', 210, '2023-02-10 06:58:48', 'Apt. Ari Marliyana., S.Farm', '0500495', 53, 3, NULL, NULL),
(57, 1, '2020-01-16 03:41:42', 210, '2022-05-11 02:17:06', NULL, NULL, 'Ratna Komari, AMK', '1481189', 21, 20, NULL, NULL),
(58, 1, '2020-01-16 03:42:37', NULL, NULL, NULL, NULL, 'Nurul Fatimah', '1700694', 24, 10, NULL, NULL),
(59, 1, '2020-01-16 03:43:34', NULL, NULL, NULL, NULL, 'Viviana Suwikno', '1710292', 24, 10, NULL, NULL),
(60, 1, '2020-01-16 03:44:14', NULL, NULL, NULL, NULL, 'Nurjanah', '1721095', 24, 10, NULL, NULL),
(61, 1, '2020-01-16 03:48:58', 210, '2022-07-20 08:05:22', NULL, NULL, 'Yoesi Febriansyah, SE.', '0270290', 30, 9, NULL, NULL),
(62, 1, '2020-01-16 03:50:01', 152, '2020-08-26 04:23:36', NULL, NULL, 'Bagoes Riyadi Kurniawan, SE.', '0570587', 30, 9, NULL, NULL),
(63, 1, '2020-01-16 03:51:32', 152, '2020-09-25 04:44:24', NULL, NULL, 'Ns. Eka Riadi, S.Kep', '0630286', 12, 1, NULL, NULL),
(64, 1, '2020-01-16 03:52:17', 210, '2022-03-04 09:27:08', 210, '2022-03-04 09:27:08', 'Ns. Vita  Sry Sulastri, S.Kep', '0060489', 81, 1, NULL, NULL),
(65, 1, '2020-01-16 03:53:03', 210, '2022-03-09 08:02:10', NULL, NULL, 'Ns. Anggraeni, S.Kep', '1070270', 21, 1, NULL, NULL),
(66, 1, '2020-01-16 03:54:02', 1, '2021-04-09 04:08:52', NULL, NULL, 'Dina Septiyanti, AMG', '1690988', 24, 10, NULL, NULL),
(67, 1, '2020-01-16 03:55:26', 1, '2020-08-22 06:39:21', NULL, NULL, 'Galih Arif Azhari, S.Kom', '0560494', 14, 15, NULL, NULL),
(68, 1, '2020-01-16 03:56:15', 210, '2021-10-09 02:21:04', 210, '2021-10-09 02:21:04', 'Marselia Yuli Pratiwi, A.Md.Kep', '1090797', 22, 1, NULL, NULL),
(69, 1, '2020-01-16 04:01:58', 1, '2021-07-23 03:20:26', NULL, NULL, 'Solawatun Mustaekah, A.Md.Kep', '0741090', 64, 1, NULL, NULL),
(70, 1, '2020-01-16 04:02:57', 1, '2020-10-07 01:31:55', NULL, NULL, 'Yolanda Mastin Samaowati, A.Md.Kep', '0980386', 11, 1, NULL, NULL),
(71, 1, '2020-01-16 04:04:18', 210, '2022-11-21 01:28:25', 210, '2022-11-21 01:28:25', 'Dede Nuraeni, AMK', '3720466', 60, 1, NULL, NULL),
(72, 1, '2020-01-16 04:04:58', 158, '2023-02-01 02:59:26', NULL, NULL, 'Patricia Sitinjak, A.Md.Kep', '1031096', 72, 1, NULL, NULL),
(73, 1, '2020-01-16 04:05:39', 158, '2023-02-07 06:38:09', NULL, NULL, 'Dheni Hendra Bangsawan, A.Md.Kep', '1040196', 11, 1, NULL, NULL),
(74, 1, '2020-01-16 04:06:19', 152, '2020-09-25 04:45:22', NULL, NULL, 'Ummi Zahrah Muntazzah, A.Md.Kep', '0871292', 22, 1, NULL, NULL),
(75, 1, '2020-01-16 04:07:10', 210, '2022-03-10 07:50:49', 210, '2022-03-10 07:50:49', 'Ainun, A.Md. Kep', '1190162', 11, 1, NULL, NULL),
(76, 1, '2020-01-16 04:07:53', 210, '2022-03-04 09:25:31', 210, '2022-03-04 09:25:31', 'Mega Nur Komala, AMK', '1080989', 60, 1, NULL, NULL),
(77, 1, '2020-01-16 04:08:26', 210, '2022-11-21 01:28:39', 210, '2022-11-21 01:28:39', 'Pangestu S.W.D., A.Md.Kep', '1130494', 77, 1, NULL, NULL),
(78, 1, '2020-01-16 04:09:02', 210, '2021-10-09 02:29:42', NULL, NULL, 'Putri Budy Utami, A.Md.Kep', '1100397', 28, 1, NULL, NULL),
(79, 1, '2020-01-16 04:09:56', 158, '2023-02-01 02:59:40', NULL, NULL, 'Anggun Cikita Dewi, A.Md.Kep', '1140497', 72, 1, NULL, NULL),
(80, 1, '2020-01-16 04:10:46', 158, '2023-02-01 03:14:43', NULL, NULL, 'Farid Fikri Akbar, A.Md.Kep', '1160297', 61, 1, NULL, NULL),
(81, 1, '2020-01-16 04:12:07', 158, '2022-11-01 04:15:59', NULL, NULL, 'Maya Riandari, A.Md.Kep', '1201295', 56, 1, NULL, NULL),
(82, 1, '2020-01-16 04:13:05', 158, '2022-10-24 08:46:45', NULL, NULL, 'Yumba Laras Sati, A.Md. Kep', '1210696', 60, 1, NULL, NULL),
(83, 1, '2020-01-16 04:14:14', 158, '2022-10-24 08:47:04', NULL, NULL, 'Yolanda, A.Md. Kep', '1221097', 60, 1, NULL, NULL),
(84, 1, '2020-01-16 04:15:14', 158, '2022-10-24 08:44:48', NULL, NULL, 'Agustinus Hamonangan, A.Md. Kep', '1230896', 56, 1, NULL, NULL),
(85, 1, '2020-01-16 04:16:10', 210, '2021-10-09 02:13:43', 210, '2021-10-09 02:13:43', 'Inas Nur Afifah, A.Md. Kep', '1240497', 57, 1, NULL, NULL),
(86, 1, '2020-01-16 04:16:43', 210, '2021-05-18 06:30:52', NULL, NULL, 'Wayan Sudiarta, A.Md.Kep', '1260196', 12, 1, NULL, NULL),
(87, 1, '2020-01-16 04:17:29', 152, '2020-08-27 01:50:20', 152, '2020-08-27 01:50:20', 'Maria Esther Luciana, A.Md.Kep', '1300397', 27, 1, NULL, NULL),
(88, 1, '2020-01-16 04:18:09', 152, '2020-09-25 04:42:14', NULL, NULL, 'Hotmauli Siregar, AMK', '1430762', 12, 1, NULL, NULL),
(89, 1, '2020-01-16 04:19:03', 152, '2020-09-25 04:42:28', NULL, NULL, 'Ni Ketut Murniati', '1440763', 12, 1, NULL, NULL),
(90, 1, '2020-01-16 04:19:47', 152, '2020-12-01 01:12:38', 152, '2020-12-01 01:12:38', 'Friska Magdalena, A.Md.Kep', '1310197', 27, 1, NULL, NULL),
(91, 1, '2020-01-16 04:20:30', 210, '2022-10-01 04:53:59', NULL, NULL, 'Kurnia, AMK', '0180888', 28, 1, NULL, NULL),
(92, 1, '2020-01-16 04:21:05', 210, '2022-08-06 02:33:10', NULL, NULL, 'Novita Sari, A.Md.Kep', '1061178', 81, 1, NULL, NULL),
(93, 1, '2020-01-16 04:21:48', 152, '2020-08-28 01:10:37', NULL, NULL, 'Bio Rizki Maulana, A.Md.Kep', '0090992', 12, 1, NULL, NULL),
(94, 1, '2020-01-16 04:22:25', 1, '2020-11-20 05:28:35', NULL, NULL, 'Sea Rahayu, AMK', '0261089', 64, 1, NULL, NULL),
(95, 1, '2020-01-16 04:23:23', 158, '2023-02-11 03:53:46', NULL, NULL, 'Eriyandi Harahap, AMK', '0210687', 11, 1, NULL, NULL),
(96, 1, '2020-01-16 04:24:01', 152, '2020-09-25 04:45:54', NULL, NULL, 'Abdul Rouf Supiyanto, A.Md. Kep', '0080688', 22, 1, NULL, NULL),
(97, 1, '2020-01-16 04:24:42', 210, '2022-05-11 00:27:39', NULL, NULL, 'Jumiaty, AMK', '0510972', 72, 1, NULL, NULL),
(98, 1, '2020-01-16 04:25:32', 210, '2021-10-09 01:44:20', 210, '2021-10-09 01:44:20', 'Alifatus Safariyah, AMK', '0381186', 49, 1, NULL, NULL),
(99, 1, '2020-01-16 04:26:13', 1, '2022-03-17 04:15:05', NULL, NULL, 'Rahayu Biyanti, AMK', '0190490', 64, 1, NULL, NULL),
(100, 1, '2020-01-16 04:27:00', 210, '2022-11-28 04:09:05', NULL, NULL, 'Mardihyana, A.Md.Kep', '0050592', 22, 1, NULL, NULL),
(101, 1, '2020-01-16 04:27:39', 152, '2021-09-20 07:35:19', 152, '2021-09-20 07:35:19', 'Wa Wahyu Dian Rostary', '1360395', 56, 1, NULL, NULL),
(102, 1, '2020-01-16 04:28:19', 158, '2023-02-07 06:39:04', NULL, NULL, 'Rahmayuli Ardian Putri, AMD, Kep', '1500791', 11, 1, NULL, NULL),
(103, 1, '2020-01-16 04:29:03', 210, '2022-11-21 01:30:34', 210, '2022-11-21 01:30:34', 'Putri Adijaya Sakti, A.Md.Kep', '1510997', 22, 1, NULL, NULL),
(104, 1, '2020-01-16 04:29:51', 210, '2023-02-10 07:00:07', 210, '2023-02-10 07:00:07', 'Robby, Amd.Kep', '1530690', 60, 1, NULL, NULL),
(105, 1, '2020-01-16 04:30:31', 152, '2020-08-26 03:42:50', 152, '2020-08-26 03:42:50', 'Nathasia Jeanet Christy Irala, Amd.Kep', '1520196', 27, 1, NULL, NULL),
(106, 1, '2020-01-16 04:31:15', 152, '2020-09-25 10:25:53', 152, '2020-09-25 10:25:53', 'Feri Susanto, AMK', '1790290', 66, 1, NULL, NULL),
(107, 1, '2020-01-16 04:32:41', 1, '2020-08-25 02:43:25', NULL, NULL, 'Imam Hari Santoso, A.Md. Rad', '0140481', 7, 12, NULL, NULL),
(108, 1, '2020-01-16 04:33:24', 152, '2020-08-26 03:59:31', NULL, NULL, 'Lia Avriani, A.Md. Rad', '0440492', 7, 12, NULL, NULL),
(109, 1, '2020-01-16 04:34:31', NULL, NULL, NULL, NULL, 'Yudi Sukmara, A.Md.MPRS', '0600482', 13, 7, NULL, NULL),
(110, 1, '2020-01-16 04:36:23', NULL, NULL, NULL, NULL, 'Roziana Mega Dewi, A.Md.RMIK', '1050897', 13, 7, NULL, NULL),
(111, 1, '2020-01-16 04:37:16', 210, '2021-12-20 06:33:02', NULL, NULL, 'Siti Hardianti Handayani, A.Md. RMIK', '1340896', 14, 24, NULL, NULL),
(112, 1, '2020-01-16 04:38:06', 210, '2022-12-02 01:35:00', NULL, NULL, 'Nasrullah', '1380894', 30, 9, NULL, NULL),
(113, 1, '2020-01-16 04:39:51', NULL, NULL, NULL, NULL, 'Fitriyatul Zabariyah, S.Farm', '0610589', 23, 4, NULL, NULL),
(114, 1, '2020-01-16 04:48:28', NULL, NULL, NULL, NULL, 'Firdaus', '0300579', 18, 11, NULL, NULL),
(115, 1, '2020-01-16 04:49:20', NULL, NULL, NULL, NULL, 'Lukman Hakim', '0490472', 18, 11, NULL, NULL),
(116, 1, '2020-01-16 04:50:28', 152, '2020-08-26 03:43:20', 152, '2020-08-26 03:43:20', 'Zulham Akbar', '1741087', 24, 10, NULL, NULL),
(117, 1, '2020-01-16 08:39:01', 1, '2022-07-14 03:18:25', NULL, NULL, 'Sri Nurlaelah, A.Md. Keb', '0540486', 56, 2, NULL, NULL),
(118, 1, '2020-01-16 08:40:20', 210, '2022-07-16 00:41:54', NULL, NULL, 'Maryanne Sri Andriawati, A.Md. Keb', '0240890', 75, 2, NULL, NULL),
(119, 1, '2020-01-16 08:44:10', 152, '2020-08-28 01:03:59', NULL, NULL, 'Trias Wibowo, SE.', '1120976', 33, 18, NULL, NULL),
(120, 1, '2020-02-12 08:33:36', 1, '2020-08-12 02:25:18', 1, '2020-08-12 02:25:18', 'TEST DOKTER I', '1000001', 37, 16, NULL, NULL),
(121, 1, '2020-02-12 09:48:01', 152, '2020-08-26 04:25:06', 152, '2020-08-26 04:25:06', 'TEST REGISTRASI', '1000002', 13, NULL, NULL, NULL),
(122, 1, '2020-02-12 09:51:48', 1, '2020-07-19 09:49:03', 1, '2020-07-19 09:49:03', 'TEST PERAWAT', '1000003', 57, 1, NULL, NULL),
(123, 1, '2020-02-12 10:11:31', NULL, NULL, 1, '2023-02-16 02:46:02', 'TEST PENGADAAN', '1000004', 16, 17, NULL, NULL),
(124, 1, '2020-02-12 10:20:44', NULL, NULL, 1, '2023-02-16 02:46:02', 'TEST FARMASI', '1000005', 23, 4, NULL, NULL),
(125, 1, '2020-02-12 10:24:19', NULL, NULL, 1, '2023-02-16 02:46:02', 'TEST GUDANG OBAT', '1000006', 53, NULL, NULL, NULL),
(126, 1, '2020-02-12 10:39:41', NULL, NULL, 1, '2023-02-16 02:46:02', 'TEST KASIR', '1000007', 30, NULL, NULL, NULL),
(127, 1, '2020-03-06 16:36:40', NULL, NULL, 1, '2023-02-16 02:46:02', 'TEST PENUNJANG', '100001', NULL, 8, NULL, NULL),
(128, 1, '2020-03-17 17:14:41', NULL, NULL, 1, '2023-02-16 02:46:02', 'TEST FISIOTERAPI', '1000010101', 51, 6, NULL, NULL),
(129, 1, '2020-03-19 00:43:50', 123, '2020-07-08 09:15:10', 123, '2020-07-08 09:15:10', 'Dr febriana,sp.p', '0210000', 36, 16, NULL, NULL),
(130, 1, '2020-04-27 06:27:09', 158, '2023-02-08 04:22:57', NULL, NULL, 'Fay Ferry Pardomuan Lambok P. Simanjuntak, dr., Sp. OG', '1010271', 28, 16, NULL, NULL),
(131, 1, '2020-04-27 07:19:09', 158, '2023-02-08 04:18:18', NULL, NULL, 'Tengku Muhammad Iskandar, dr., Sp.OG', '2020983', 28, 16, NULL, NULL),
(132, 1, '2020-05-04 07:12:54', 210, '2021-10-09 01:56:45', 210, '2021-10-09 01:56:45', 'Bambang Riyadi Agus P, dr.', '1401074', 33, 16, NULL, NULL),
(133, 1, '2020-05-05 02:25:44', 210, '2023-02-14 01:10:21', NULL, NULL, 'dr. Ery Wildan, Sp.OT', '1890888', 12, 16, NULL, NULL),
(134, 1, '2020-05-06 06:33:42', 210, '2023-02-14 01:07:58', NULL, NULL, 'dr. Maya Zelika Paradita', '1900893', 22, 16, NULL, NULL),
(135, 1, '2020-05-06 07:59:42', 210, '2023-02-14 01:09:00', 210, '2023-02-14 01:09:00', 'M. Candrasa Widya Wardhana, dr.', '1980593', 22, 16, NULL, NULL),
(136, 1, '2020-05-06 08:05:18', 210, '2023-02-10 06:54:23', NULL, NULL, 'dr. Ade Dewi Naralia', '1421290', 22, 16, NULL, NULL),
(137, 1, '2020-05-08 03:42:08', 210, '2022-11-21 01:29:15', 210, '2022-11-21 01:29:15', 'Yetti Muthiah, dr., MKK.', '0040487', 33, 16, NULL, NULL),
(138, 1, '2020-05-18 03:56:50', 1, '2020-07-08 04:35:36', NULL, NULL, 'Cut Shelma, dr.', '1771287', 40, 16, NULL, NULL),
(139, 1, '2020-06-08 01:17:01', 158, '2023-02-08 04:42:07', NULL, NULL, 'Syarifudin, dr., Sp.P', '2030882', 36, 16, NULL, NULL),
(140, 1, '2020-06-08 01:19:06', 210, '2022-07-16 00:42:46', NULL, NULL, 'Rifatul Choiriyah, A.Md.Keb', '1990580', 75, 2, NULL, NULL),
(141, 1, '2020-06-08 01:19:27', 158, '2023-02-01 03:14:59', NULL, NULL, 'Sintha Damayanti, A.Md.Kep', '1851194', 61, 1, NULL, NULL),
(142, 1, '2020-06-08 01:19:50', 210, '2022-05-13 10:03:23', NULL, NULL, 'Syifa Pauziah, A.Md.Kep', '1831097', 12, 1, NULL, NULL),
(143, 123, '2020-06-08 09:15:28', 158, '2023-02-08 05:20:49', NULL, NULL, 'Ainur Rahmah, dr., Sp.M', '2081085', 34, 16, NULL, NULL),
(144, 1, '2020-07-01 02:40:06', 158, '2023-02-08 04:07:01', NULL, NULL, 'Irenne Purnama, MSc.,Sp.A', '2101089', 42, 16, NULL, NULL),
(145, 1, '2020-07-01 03:55:27', 123, '2021-01-15 07:40:47', 123, '2021-01-15 07:40:47', 'Damba dwisepto aulia,dr. Sp JP', '2110987', 45, 16, NULL, NULL),
(146, 1, '2020-07-16 04:52:18', 158, '2023-02-08 03:40:22', NULL, NULL, 'dr. Beta Agustia Wisman, Sp.PD', '2140887', 41, 16, NULL, NULL),
(147, 1, '2020-07-27 00:44:30', 210, '2022-11-28 04:21:42', NULL, NULL, 'Junariah, A.Md.Kep', '05808', 90, 34, NULL, NULL),
(148, 1, '2020-07-30 02:49:03', 152, '2020-08-26 04:28:04', 152, '2020-08-26 04:28:04', 'ruangan mawar', '11111111', 57, 1, NULL, NULL),
(149, 1, '2020-07-30 02:51:32', 152, '2020-08-26 04:26:02', 152, '2020-08-26 04:26:02', 'ruangan melati', '222222', 56, 1, NULL, NULL),
(150, 1, '2020-08-01 01:45:41', 1, '2020-11-27 03:25:48', NULL, NULL, 'Syarifuddin, dr., Sp.P (y)', '10101010', 58, 16, NULL, NULL),
(151, 1, '2020-08-03 00:44:17', NULL, NULL, NULL, NULL, 'ruang teratai', '99999', 59, 1, NULL, NULL),
(152, 1, '2020-08-03 00:47:11', NULL, NULL, NULL, NULL, 'ruang anggrek', '99999', 60, 1, NULL, NULL),
(153, 1, '2020-08-03 03:35:45', 152, '2020-08-26 04:09:32', 152, '2020-08-26 04:09:32', 'Galih Arif Azhari, S.Kom', '0560494', 14, 15, NULL, NULL),
(154, 1, '2020-08-04 07:28:31', 210, '2021-10-09 02:13:07', 210, '2021-10-09 02:13:07', 'Himawan Tryatmaja, Dr.', '2151087', 22, 16, NULL, NULL),
(155, 1, '2020-08-08 02:11:09', 210, '2022-02-09 02:34:59', 210, '2022-02-09 02:34:59', 'Astuti Irani, AMd. AK.', '0640679', 21, 20, NULL, NULL),
(156, 1, '2020-08-08 02:24:42', 152, '2020-08-26 04:12:26', NULL, NULL, 'Siti Nahriah, AMK', '1861079', 12, 1, NULL, NULL),
(157, 1, '2020-08-08 02:38:44', 152, '2020-10-31 01:48:27', NULL, NULL, 'Nunung Latofah, S.AP', '2050889', 30, 9, NULL, NULL),
(158, 1, '2020-08-08 02:40:36', 210, '2022-12-02 01:35:42', NULL, NULL, 'Fajar Nurul Hadi, SE.', '1941193', 14, 24, NULL, NULL),
(159, 1, '2020-08-08 02:42:15', 210, '2022-03-04 09:25:19', 210, '2022-03-04 09:25:19', 'Siti Farhah. A.Md.RMIK', '1870697', 13, 7, NULL, NULL),
(160, 1, '2020-08-08 02:44:20', 152, '2023-01-18 07:37:45', NULL, NULL, 'Usep Andri', '1491083', 26, 18, NULL, NULL),
(161, 1, '2020-08-08 02:47:31', 152, '2020-08-26 04:00:42', NULL, NULL, 'Sari Antin', '2160781', 24, 10, NULL, NULL),
(162, 1, '2020-08-08 02:56:05', 210, '2022-03-04 09:26:46', 210, '2022-03-04 09:26:46', 'Novia Kristiani', '17308923', 24, 10, NULL, NULL),
(163, 1, '2020-08-08 02:56:58', 152, '2020-08-28 06:35:13', NULL, NULL, 'Nyoman Intan Cesarra, S.Pd', '1880797', 33, 21, NULL, NULL),
(164, 1, '2020-08-08 02:59:12', 1, '2021-05-31 02:16:43', NULL, NULL, 'Siti Fathonah, S.TR.Kes', '2091096', 65, 16, NULL, NULL),
(165, 1, '2020-08-08 05:09:16', 152, '2020-08-28 01:08:56', NULL, NULL, 'Lulus Lusmana, A.Md.Rad', '2060791', 7, 12, NULL, NULL),
(166, 1, '2020-08-08 05:53:22', 1, '2020-08-10 04:24:38', NULL, NULL, 'Cici Diah Cahyanti, AMd. Rad', '1930198', 7, 12, NULL, NULL),
(167, 1, '2020-08-10 04:02:56', 210, '2021-10-09 02:24:41', 210, '2021-10-09 02:24:41', 'Muhsin Ali Sahbana, S.Farm.Apt', '2171189', 53, 19, NULL, NULL),
(168, 1, '2020-08-11 01:57:42', 152, '2020-08-26 04:11:56', NULL, NULL, 'Nurlaelah, A.Md.AK', '2040387', 5, 8, NULL, NULL),
(169, 1, '2020-08-11 07:57:10', 152, '2020-08-26 03:45:20', NULL, NULL, 'Nunuk Handini, S.Farm', '1960296', 23, 4, NULL, NULL),
(170, 1, '2020-08-11 07:59:24', 152, '2020-08-26 03:44:01', NULL, NULL, 'Marisa, S.Farm', '1970595', 23, 4, NULL, NULL),
(171, 1, '2020-08-18 01:15:33', 210, '2021-10-09 02:36:17', 210, '2021-10-09 02:36:17', 'Yana Aprianingsih Tampubolon, A.Md.Kep', '2180495', 59, 1, NULL, NULL),
(172, 1, '2020-08-22 02:21:03', 1, '2020-11-27 03:22:38', 1, '2020-11-27 03:22:38', 'Syarifuddin, dr., Sp.P (y)', '555555', 36, 16, NULL, NULL),
(173, 1, '2020-08-22 04:35:07', 152, '2020-08-26 03:45:45', NULL, NULL, 'Astari Arum Sari, dr., Sp.AN', '131289', 12, 16, NULL, NULL),
(174, 152, '2020-08-26 03:28:34', 152, '2020-09-25 10:23:57', NULL, NULL, 'Kasmiyati, AMK', '2200262', 66, 1, NULL, NULL),
(175, 152, '2020-09-01 02:20:32', 210, '2023-02-10 07:00:40', 210, '2023-02-10 07:00:40', 'Dwi Indra Prasetyo, AMK', '2210485', 66, 1, NULL, NULL),
(176, 152, '2020-09-01 09:16:26', NULL, NULL, NULL, NULL, 'Desy Ayu Lestari, A.Md.Ak', '2221294', 5, 5, NULL, NULL),
(177, 141, '2020-09-02 12:09:22', 158, '2023-02-08 04:41:20', NULL, NULL, 'Asysyukriati, Sp.p ,dr', '22101973', 36, 16, NULL, NULL),
(178, 1, '2020-09-05 00:50:14', NULL, NULL, NULL, NULL, 'Ruang HCU', '99999', 63, 1, NULL, NULL),
(179, 123, '2020-09-08 03:07:16', 1, '2020-09-11 01:45:01', NULL, NULL, 'dr. Asysyukriati, Sp.P', '2221073', 36, 16, NULL, NULL),
(180, 1, '2020-09-21 05:46:33', NULL, NULL, NULL, NULL, 'ruang isolasi', '99999', 58, 1, NULL, NULL),
(181, 1, '2020-09-24 01:17:04', 1, '2022-11-05 04:43:58', NULL, NULL, 'Sony Bagaskara, A.Md.Kep', '2250797', 11, 1, NULL, NULL),
(182, 1, '2020-09-24 01:20:46', 210, '2022-04-09 02:21:54', NULL, NULL, 'Fadhilah Ukhrainy, A.Md.Kep', '2231098', 22, 1, NULL, NULL),
(183, 1, '2020-09-24 01:21:18', 158, '2022-10-24 08:45:10', NULL, NULL, 'Eka Apriliana, A.Md.Kep', '2240498', 56, 1, NULL, NULL),
(184, 1, '2020-09-24 01:21:50', 158, '2022-10-24 08:47:30', NULL, NULL, 'Syifa Nur Faujiah, A.Md.Kep', '2260597', 60, 1, NULL, NULL),
(185, 1, '2020-09-24 01:22:22', 210, '2022-11-28 04:14:23', NULL, NULL, 'Siti Joharatul Fikriah, A.Md.Kep', '2270598', 90, 34, NULL, NULL),
(186, 1, '2020-09-24 01:22:53', 210, '2022-04-09 02:21:31', NULL, NULL, 'Agung Dwi Saputra, A.Md.Kep', '2280397', 22, 1, NULL, NULL),
(187, 1, '2020-09-24 01:23:20', 158, '2022-10-24 08:46:07', NULL, NULL, 'Bagus Tridana Mulia, A.Md.Kep', '2290898', 56, 1, NULL, NULL),
(188, 1, '2020-09-24 01:23:49', 210, '2022-06-13 02:22:30', NULL, NULL, 'Vivi Nadillah, A.Md.Kep', '2300897', 60, 1, NULL, NULL),
(189, 1, '2020-09-24 01:26:02', 210, '2022-03-04 09:26:56', 210, '2022-03-04 09:26:56', 'Riza Fahlevi, A.Md.Kep', '2310197', 11, 1, NULL, NULL),
(190, 152, '2020-09-26 01:00:08', 210, '2023-01-15 06:12:30', NULL, NULL, 'Anisa Habsari Sulistyo Rini', '2330897', 13, 7, NULL, NULL),
(191, 152, '2020-09-26 01:00:56', 210, '2021-10-09 02:09:04', 210, '2021-10-09 02:09:04', 'Hanifatun Nisa', '2340399', 24, 10, NULL, NULL),
(192, 152, '2020-09-29 07:40:46', 123, '2021-01-15 07:41:34', 123, '2021-01-15 07:41:34', 'Niken Alia Taskya, dr.,Sp.KFR', '2071086', 35, 16, NULL, NULL),
(193, 152, '2020-09-29 07:44:15', 210, '2022-03-10 07:49:42', NULL, NULL, 'Ahmad Rifai, Amd.Kep', '2370994', 12, 1, NULL, NULL),
(194, NULL, '2020-10-02 07:40:59', 210, '2023-02-10 07:00:56', 210, '2023-02-10 07:00:56', 'Sariyanto', '2380757', 25, 22, NULL, NULL),
(195, 152, '2020-10-02 07:55:07', 210, '2023-02-10 07:01:09', 210, '2023-02-10 07:01:09', 'Mardiana Ismaningsih, dr.', '2390394', 22, 16, NULL, NULL),
(196, 1, '2020-10-03 10:34:11', 210, '2021-10-09 02:05:29', 210, '2021-10-09 02:05:29', 'Erwin D', '170301', NULL, 16, NULL, NULL),
(197, 141, '2020-10-06 10:28:30', 141, '2020-10-06 10:58:37', 141, '2020-10-06 10:58:37', 'Mardiana Ismaningsih, dr', '06102020', 22, 16, NULL, NULL),
(198, 152, '2020-10-07 03:15:01', 210, '2023-02-14 01:10:56', NULL, NULL, 'dr. Ganjar Nugraha', '2411088', 33, 16, NULL, NULL),
(199, 152, '2020-10-07 03:16:07', 210, '2022-03-04 09:25:42', 210, '2022-03-04 09:25:42', 'Ruthsuyata Siagian, dr.', '2420194', 22, 16, NULL, NULL),
(200, 152, '2020-10-07 03:25:50', 1, '2021-03-23 06:09:08', NULL, NULL, 'Anisa Octaviani A.Md. AK', '2401098', 5, 5, NULL, NULL),
(201, 152, '2020-10-07 03:39:32', 210, '2022-11-21 01:28:16', 210, '2022-11-21 01:28:16', 'Sondang Virginia, dr.', '2430293', 22, 16, NULL, NULL),
(202, 152, '2020-10-07 03:41:00', 210, '2021-10-09 01:47:03', 210, '2021-10-09 01:47:03', 'Arevia Mega Diduta Utami. dr', '2440590', 22, 16, NULL, NULL),
(203, 152, '2020-10-07 03:44:24', 210, '2021-10-09 02:34:26', 210, '2021-10-09 02:34:26', 'Victor Anderson CH Nguru, dr.', '2451275', 22, 16, NULL, NULL),
(204, 152, '2020-10-09 07:28:22', NULL, NULL, NULL, NULL, 'Umairoh', '2350495', 23, 4, NULL, NULL),
(205, 152, '2020-10-09 07:29:03', NULL, NULL, NULL, NULL, 'Ratna Dillah', '2360995', 23, 4, NULL, NULL),
(206, 152, '2020-10-15 07:11:27', 152, '2021-02-23 00:48:14', NULL, NULL, 'Danang Adi Kusuma, A.Md.Kep', '2460496', 22, 1, NULL, NULL),
(207, 152, '2020-10-15 07:12:22', 210, '2021-10-09 02:37:12', 210, '2021-10-09 02:37:12', 'Yuliana Sartika, A.Md.Kep', '2470796', 61, 1, NULL, NULL),
(208, 152, '2020-10-15 07:13:26', 210, '2022-11-28 04:14:51', NULL, NULL, 'Yuliana Ade Putri, A.Md.Kep', '2480795', 22, 1, NULL, NULL),
(209, 152, '2020-10-19 06:26:24', 152, '2020-10-19 06:53:24', NULL, NULL, 'Atmiati', '2490791', 66, 1, NULL, NULL),
(210, 1, '2020-10-20 02:44:51', 210, '2022-03-10 09:19:32', 210, '2022-03-10 09:19:32', 'Merty Supriharti Dr', '101010', 33, 16, NULL, NULL),
(211, 152, '2020-10-24 00:48:42', 152, '2020-10-24 00:50:37', NULL, NULL, 'Andri Yulianto', '1950382', 33, 21, NULL, NULL),
(212, 152, '2020-10-31 01:45:45', 210, '2022-11-21 01:29:26', 210, '2022-11-21 01:29:26', 'Wika Karunia Lestari, S.Tr.Keb', '2500894', 33, 19, NULL, NULL),
(213, 152, '2020-11-09 06:47:01', 210, '2021-10-09 01:46:48', 210, '2021-10-09 01:46:48', 'Annifah', '2511295', 61, 2, NULL, NULL),
(214, 152, '2020-11-09 06:47:29', 210, '2022-07-16 00:43:01', NULL, NULL, 'Indah Ari Utari', '2520996', 75, 2, NULL, NULL),
(215, 152, '2020-11-16 06:19:04', 158, '2023-01-13 03:41:27', NULL, NULL, 'Vitriyana Manalu', '2530193', 75, 2, NULL, NULL),
(216, 152, '2020-11-16 07:05:50', 210, '2023-02-06 03:23:10', NULL, NULL, 'Gigih Herlambang', '2540693', 33, 15, NULL, NULL),
(217, 1, '2020-11-21 04:55:25', NULL, NULL, NULL, NULL, 'Ruang Dahlia', '99999', 49, 1, NULL, NULL),
(218, 1, '2020-11-21 05:04:05', NULL, NULL, NULL, NULL, 'Ruang EDELWEIS', '99999', 61, 1, NULL, NULL),
(219, 152, '2020-11-25 01:26:08', NULL, NULL, 1, '2023-02-16 02:46:02', 'Cempaka Dwi Setiasih', '2550485', 13, 7, NULL, NULL),
(220, 152, '2020-11-25 01:26:56', 141, '2022-01-07 07:21:33', NULL, NULL, 'Ayu Fitri Lestianti, A.md, RMIK', '2560297', 13, 7, NULL, NULL),
(221, 152, '2020-12-01 01:19:01', 210, '2022-07-16 00:43:27', NULL, NULL, 'Muhlisoh, A.Md.Keb', '2570486', 75, 2, NULL, NULL),
(222, 152, '2020-12-01 01:20:32', 152, '2020-12-01 01:23:09', NULL, NULL, 'Nopa, AMK', '2580382', 66, 1, NULL, NULL),
(223, 152, '2020-12-01 01:35:08', 152, '2022-01-14 06:46:16', NULL, NULL, 'Ns. Pita Romawati, S.Kep', '2590988', 81, 1, NULL, NULL),
(224, 152, '2020-12-08 02:17:51', 210, '2023-02-10 06:55:11', 210, '2023-02-10 06:55:11', 'Angga Meda Mahardhika, dr', '2600194', 22, 16, NULL, NULL),
(225, 141, '2020-12-22 07:15:03', 141, '2020-12-22 07:15:36', 141, '2020-12-22 07:15:36', 'Ganjar Nugraha, dr', '22122020', 22, 16, NULL, NULL),
(226, 152, '2020-12-24 02:53:52', 210, '2022-04-06 03:09:44', 210, '2022-04-06 03:09:44', 'Arziani Thasya', '2610797', 11, 1, NULL, NULL),
(227, 152, '2020-12-24 02:54:30', 1, '2022-07-14 03:22:01', NULL, NULL, 'Ayu Pratidina', '2620397', 56, 1, NULL, NULL),
(228, 1, '2020-12-25 13:18:53', 1, '2020-12-25 13:23:47', 1, '2020-12-25 13:23:47', 'Angga Meda Mahardhika, dr', '25122020', 22, 16, NULL, NULL),
(229, 152, '2021-01-04 03:33:01', 210, '2022-11-03 02:55:22', NULL, NULL, 'AHMAD AZHARI', '2631094', 33, 17, NULL, NULL),
(230, 152, '2021-01-04 03:33:59', NULL, NULL, NULL, NULL, 'dr. ANA VERAWATY', '2640492', 22, 16, NULL, NULL),
(231, 152, '2021-01-11 08:25:05', 210, '2021-10-09 02:11:12', 210, '2021-10-09 02:11:12', 'Herlina Ibrahim, S.Ip', '2651066', 33, 18, NULL, NULL),
(232, 152, '2021-01-12 04:30:14', 158, '2023-02-08 05:26:40', NULL, NULL, 'dr. Winny, Sp.KFR', '2660789', 35, 16, NULL, NULL),
(233, 152, '2021-01-19 07:34:01', 1, '2021-05-31 04:13:35', NULL, NULL, 'Rizka Aulia Safitri', '2670298', 65, 16, NULL, NULL),
(234, 152, '2021-01-26 02:12:02', NULL, NULL, NULL, NULL, 'Adhika Nugraha', '2680196', 33, 18, NULL, NULL),
(235, 152, '2021-01-26 02:14:59', NULL, NULL, NULL, NULL, 'Ellyo Ahmad Reza', '2690994', 14, 24, NULL, NULL),
(236, 152, '2021-02-01 01:35:20', 210, '2021-05-05 09:09:05', NULL, NULL, 'Dr. Muhamad Yugo Hario Sakti Dua, Sp.P.D', '2700588', 41, 16, NULL, NULL),
(237, NULL, '2021-02-15 09:02:19', 1, '2021-05-22 02:46:08', NULL, NULL, 'Apt. Ari Tuti Widia Astuti., S.Farm', '2710496', 23, 3, NULL, NULL),
(238, 152, '2021-02-15 09:07:13', 210, '2021-06-30 07:17:46', NULL, NULL, 'Sheila Dwi A P', '2720598', 11, 1, NULL, NULL),
(239, 152, '2021-02-15 09:08:50', 210, '2022-11-21 01:30:23', 210, '2022-11-21 01:30:23', 'Puji Rahayu', '2730599', 22, 1, NULL, NULL),
(240, 152, '2021-02-15 09:10:54', 210, '2021-06-17 08:14:16', NULL, NULL, 'Siti Rokhmah', '2740398', 11, 1, NULL, NULL),
(241, 152, '2021-02-15 09:12:30', 210, '2022-02-09 02:35:09', 210, '2022-02-09 02:35:09', 'Zulaikha Ayu Hakli', '2750795', 11, 1, NULL, NULL),
(242, 152, '2021-02-15 09:13:18', 210, '2022-11-28 04:08:49', NULL, NULL, 'Eva Widiyanti', '2760797', 22, 1, NULL, NULL),
(243, 152, '2021-02-15 09:50:18', 210, '2021-06-17 08:13:53', NULL, NULL, 'Ayu Meliyani Solihah', '2770100', 11, 1, NULL, NULL),
(244, 152, '2021-02-16 00:56:15', 1, '2022-11-05 04:42:06', NULL, NULL, 'Olivia Widha Pratiwi', '2780299', 64, 1, NULL, NULL),
(245, 152, '2021-02-16 00:57:11', 158, '2023-02-01 03:15:19', NULL, NULL, 'Dina Widyaningrum', '2791296', 61, 1, NULL, NULL),
(246, 152, '2021-02-16 00:59:15', 158, '2023-02-01 03:15:38', NULL, NULL, 'Nada Putri Rubiyana', '2801198', 61, 1, NULL, NULL),
(247, 152, '2021-02-16 01:00:24', 210, '2022-07-20 08:10:34', NULL, NULL, 'Susy Ambar Wati', '2810699', 11, 1, NULL, NULL),
(248, 152, '2021-02-16 01:02:51', 210, '2021-10-09 01:59:27', 210, '2021-10-09 01:59:27', 'Dedy Setiawan', '2820686', 24, 10, NULL, NULL),
(249, 152, '2021-02-16 01:03:49', NULL, NULL, NULL, NULL, 'Dessy Yunita Prihatin', '2830687', 24, 10, NULL, NULL),
(250, 152, '2021-02-16 01:10:59', 1, '2021-07-12 08:12:58', NULL, NULL, 'Choirunisa', '2840499', 60, 1, NULL, NULL),
(251, 152, '2021-02-16 01:19:20', 158, '2023-02-01 03:00:11', NULL, NULL, 'Gita Afriani', '2850498', 72, 1, NULL, NULL),
(252, 152, '2021-02-16 01:20:04', 1, '2022-03-17 04:13:06', NULL, NULL, 'Rita Oktavia', '2861097', 64, 1, NULL, NULL),
(253, 152, '2021-02-16 01:20:59', 158, '2023-02-01 03:00:39', NULL, NULL, 'Indah Nurjanah', '2870899', 72, 1, NULL, NULL),
(254, 152, '2021-02-16 01:21:40', 158, '2023-02-01 03:01:14', NULL, NULL, 'Ijtihad Nur Habibah', '2880399', 72, 1, NULL, NULL),
(255, 152, '2021-02-16 01:22:58', 158, '2022-10-24 08:45:27', NULL, NULL, 'Mia Amalia', '2890796', 56, 1, NULL, NULL),
(256, 152, '2021-02-16 01:25:30', 158, '2023-02-01 03:00:59', NULL, NULL, 'Ajeng Putriyani', '2901297', 72, 1, NULL, NULL),
(257, 152, '2021-02-16 01:26:22', 210, '2022-11-21 01:30:51', 210, '2022-11-21 01:30:51', 'Bella Sonia Junita', '2910698', 61, 1, NULL, NULL),
(258, 152, '2021-02-16 01:28:28', 210, '2021-06-17 08:13:38', NULL, NULL, 'Gita Fepbri Widdona', '2921198', 11, 1, NULL, NULL),
(259, NULL, '2021-02-16 09:53:43', 210, '2021-10-09 02:07:26', 210, '2021-10-09 02:07:26', 'Feberianti Sihotang', '2930296', 75, 1, NULL, NULL),
(260, 210, '2021-02-22 04:49:41', NULL, NULL, NULL, NULL, 'Dita Puspa Wulansari', '2941297', 7, 12, NULL, NULL),
(261, 210, '2021-02-22 04:56:17', 210, '2021-10-09 01:54:31', NULL, NULL, 'Aulia Nur Afifah', '2950299', 28, 1, NULL, NULL),
(262, 210, '2021-02-22 04:57:05', 210, '2022-02-09 02:35:39', 210, '2022-02-09 02:35:39', 'Erdin Dwi Prasetya', '2960198', 12, 1, NULL, NULL),
(263, 210, '2021-02-22 05:00:30', 1, '2022-07-14 03:22:48', NULL, NULL, 'Wiwin Rigianti', '2970598', 56, 1, NULL, NULL),
(264, 210, '2021-02-26 02:31:14', 210, '2023-02-14 01:08:32', NULL, NULL, 'dr. Ramdhani Hartono Saputra', '2980393', 22, 16, NULL, NULL),
(265, 210, '2021-02-26 02:32:13', 158, '2023-02-07 06:38:29', NULL, NULL, 'Reza Amelia', '2991194', 11, 1, NULL, NULL),
(266, 210, '2021-02-26 02:33:18', 1, '2022-11-05 04:40:35', NULL, NULL, 'Wayan Lia Suwastuti', '3000497', 64, 1, NULL, NULL),
(267, 210, '2021-02-26 02:34:25', 210, '2021-10-09 01:58:56', NULL, NULL, 'Daifi Sukmasari', '3011100', 28, 1, NULL, NULL),
(268, 210, '2021-03-06 02:23:31', 1, '2021-05-07 04:25:37', NULL, NULL, 'Apt. Dyna Oki Wulandari., S.Farm', '3021094', 23, 3, NULL, NULL),
(269, 210, '2021-03-06 02:26:28', NULL, NULL, NULL, NULL, 'Reza Dwi Saputra', '3031296', 23, 4, NULL, NULL),
(270, 210, '2021-03-06 02:27:35', NULL, NULL, NULL, NULL, 'Subhan Galih Prakasi', '3040993', 53, 4, NULL, NULL),
(271, 210, '2021-03-06 02:28:10', 210, '2022-02-09 02:36:01', 210, '2022-02-09 02:36:01', 'Madha Surya', '3050499', 23, 4, NULL, NULL),
(272, 210, '2021-03-09 07:54:34', NULL, NULL, NULL, NULL, 'R. Muhammad Wawan Purwana Wahyudin', '3060195', 22, 1, NULL, NULL),
(273, 210, '2021-03-13 03:43:47', NULL, NULL, NULL, NULL, 'Ahmad Bilal', '3071194', 5, 5, NULL, NULL),
(274, 210, '2021-03-13 03:44:58', NULL, NULL, NULL, NULL, 'Rafli Mahendra Priyatno', '3080598', 23, 4, NULL, NULL),
(275, 1, '2021-03-17 02:45:06', 158, '2023-02-08 03:45:28', NULL, NULL, 'Dr. Satriyo Kusbandono, Sp.PD', '654321', 74, 16, NULL, NULL),
(276, 210, '2021-03-24 02:33:05', 158, '2023-02-07 06:39:18', NULL, NULL, 'Evi Septiani', '3090986', 11, 1, NULL, NULL),
(277, 1, '2021-04-02 02:20:07', 1, '2021-07-23 07:51:12', NULL, NULL, 'Nur Ardianty', '1111111', NULL, 16, NULL, NULL),
(278, 1, '2021-06-18 02:38:51', NULL, NULL, 1, '2023-02-16 02:46:02', 'transit igd', '234567', 48, 1, NULL, NULL),
(279, NULL, '2021-06-21 02:15:52', 210, '2021-10-09 02:04:57', 210, '2021-10-09 02:04:57', 'Ermawati', '3100598', 72, 1, NULL, NULL),
(280, 210, '2021-06-21 02:17:41', 210, '2021-10-09 02:10:31', 210, '2021-10-09 02:10:31', 'Heri Saputra', '3110592', 72, 1, NULL, NULL),
(281, 210, '2021-06-21 02:18:25', 210, '2021-10-09 02:26:12', 210, '2021-10-09 02:26:12', 'Nok Nur Fitria', '3120491', 61, 1, NULL, NULL),
(282, 210, '2021-06-21 02:19:01', 210, '2021-06-25 02:58:02', 210, '2021-06-25 02:58:02', 'Winda Widhya Sari', '3130399', 61, 1, NULL, NULL),
(283, 210, '2021-06-21 02:19:46', 210, '2021-10-09 02:07:54', 210, '2021-10-09 02:07:54', 'Feby Fauziah', '3140297', 72, 1, NULL, NULL),
(284, 210, '2021-06-21 02:20:15', 210, '2021-10-09 02:15:59', 210, '2021-10-09 02:15:59', 'Kristia Heriyati', '3150799', 56, 1, NULL, NULL),
(285, 210, '2021-06-23 04:20:17', 210, '2021-06-25 02:58:12', 210, '2021-06-25 02:58:12', 'Wika Aprianti', '3160493', 61, 1, NULL, NULL),
(286, 210, '2021-06-23 04:20:39', 210, '2021-10-09 02:34:48', 210, '2021-10-09 02:34:48', 'Vidya Tama Bhakti', '3170999', 61, 1, NULL, NULL),
(287, 210, '2021-06-23 04:21:03', 210, '2021-06-25 02:58:20', 210, '2021-06-25 02:58:20', 'Lia Gustina', '3180887', 61, 1, NULL, NULL),
(288, 210, '2021-06-23 04:21:35', 210, '2021-06-25 02:58:30', 210, '2021-06-25 02:58:30', 'Mulyadi Nurhidayat', '3190893', 61, 1, NULL, NULL),
(289, 210, '2021-06-23 04:27:09', 210, '2021-06-25 02:58:42', 210, '2021-06-25 02:58:42', 'Muhammad Alif Putra Utama', '3200396', 61, 1, NULL, NULL),
(290, 210, '2021-06-23 04:27:29', 210, '2021-10-09 02:36:34', 210, '2021-10-09 02:36:34', 'Yopita Sari', '3210297', 61, 1, NULL, NULL),
(291, 210, '2021-06-23 04:27:59', 210, '2022-11-21 01:30:13', 210, '2022-11-21 01:30:13', 'Iqbal Maulana Putra', '3220399', 72, 1, NULL, NULL),
(292, 210, '2021-06-23 04:28:27', 210, '2021-10-09 01:47:27', 210, '2021-10-09 01:47:27', 'Arisandi', '3230687', 61, 1, NULL, NULL),
(293, 210, '2021-06-23 04:28:52', 210, '2021-10-09 01:47:46', 210, '2021-10-09 01:47:46', 'Arista Nevyana Bella', '3240498', 75, 1, NULL, NULL),
(294, 210, '2021-06-23 04:29:47', 210, '2021-10-09 02:32:38', 210, '2021-10-09 02:32:38', 'Rosse Anggraeny', '3250798', 75, 1, NULL, NULL),
(295, 210, '2021-06-23 04:30:08', 210, '2021-10-09 02:31:27', 210, '2021-10-09 02:31:27', 'Riska Safitri', '3260198', 61, 1, NULL, NULL),
(296, 210, '2021-06-23 04:30:27', 210, '2021-10-09 02:06:18', 210, '2021-10-09 02:06:18', 'Faisah', '3270898', 61, 1, NULL, NULL),
(297, 210, '2021-06-23 04:31:30', 158, '2023-02-01 03:15:58', NULL, NULL, 'Suchipto', '3280890', 61, 1, NULL, NULL),
(298, 210, '2021-06-23 04:31:56', 210, '2021-10-09 01:43:33', 210, '2021-10-09 01:43:33', 'Aji Sumarji', '3290997', 61, 1, NULL, NULL),
(299, 210, '2021-06-25 02:46:25', 210, '2021-10-09 02:18:50', 210, '2021-10-09 02:18:50', 'M. Rusdi', '3300394', 22, 1, NULL, NULL),
(300, 210, '2021-06-25 02:46:51', 210, '2022-11-14 07:12:09', NULL, NULL, 'Muhammad Ari Pratama', '3311098', 11, 1, NULL, NULL),
(301, 210, '2021-06-25 02:47:18', 210, '2021-10-09 02:32:16', 210, '2021-10-09 02:32:16', 'Rizal Adi Putra', '3320495', 56, 1, NULL, NULL),
(302, 210, '2021-06-25 02:47:44', 210, '2022-03-11 00:18:15', 210, '2022-03-11 00:18:15', 'Ahmad Tri Wahyudin', '3330994', 56, 1, NULL, NULL),
(303, 210, '2021-06-25 02:48:07', 210, '2021-10-09 02:27:58', 210, '2021-10-09 02:27:58', 'Nurul Ami Fahlatul Ambia', '3340897', 60, 1, NULL, NULL),
(304, 210, '2021-06-25 02:48:34', 210, '2021-10-09 01:46:21', 210, '2021-10-09 01:46:21', 'Anggi Hajian Yupiter', '3350595', 56, 1, NULL, NULL),
(305, 210, '2021-06-25 02:48:59', 210, '2021-10-09 02:17:54', 210, '2021-10-09 02:17:54', 'M. Pebuarivan Rahman', '3360288', 72, 1, NULL, NULL),
(306, 210, '2021-06-25 02:49:22', 210, '2022-11-21 01:30:01', 210, '2022-11-21 01:30:01', 'Ocsha Galuh Pradana', '3371098', 72, 1, NULL, NULL),
(307, 210, '2021-06-25 02:49:47', 210, '2022-11-21 01:29:49', 210, '2022-11-21 01:29:49', 'Juandi', '3380797', 56, 1, NULL, NULL),
(308, NULL, '2021-06-25 07:38:09', 210, '2021-10-09 02:03:01', 210, '2021-10-09 02:03:01', 'dr. Nadia Chaerunnisa', '3390889', 22, 16, NULL, NULL),
(309, 210, '2021-06-25 07:39:08', 210, '2023-02-10 07:00:24', 210, '2023-02-10 07:00:24', 'dr. Diah Ayu Adiati', '3400493', 22, 16, NULL, NULL),
(310, 210, '2021-06-25 07:39:34', 210, '2021-10-09 02:02:01', 210, '2021-10-09 02:02:01', 'dr. Kamila Hanifa Khairunnisa', '3410794', 22, 16, NULL, NULL),
(311, 210, '2021-06-25 07:39:56', 210, '2022-04-04 07:19:00', NULL, NULL, 'dr. Andi Ayu Faradiba Mudjahidin', '3420391', 66, 16, NULL, NULL),
(312, 210, '2021-06-25 07:40:25', 210, '2021-10-09 02:02:23', 210, '2021-10-09 02:02:23', 'dr. M. Darussalam Darwis', '3430489', 22, 16, NULL, NULL),
(313, 210, '2021-06-25 07:40:47', 210, '2021-10-09 02:01:15', 210, '2021-10-09 02:01:15', 'dr. Fadhlan Auliah', '3440995', 22, 16, NULL, NULL),
(314, 210, '2021-06-28 10:11:34', 210, '2021-10-09 02:14:07', 210, '2021-10-09 02:14:07', 'Indrawati', '3450696', 72, 1, NULL, NULL),
(315, 210, '2021-06-28 10:12:01', 210, '2021-10-09 02:30:10', 210, '2021-10-09 02:30:10', 'Raehana', '3460994', 60, 1, NULL, NULL),
(316, 210, '2021-06-28 10:12:24', 210, '2021-10-09 01:58:06', 210, '2021-10-09 01:58:06', 'Bramantyo Pambudi', '3471096', 61, 1, NULL, NULL),
(317, 210, '2021-06-28 10:12:57', 210, '2021-10-09 02:16:41', 210, '2021-10-09 02:16:41', 'Liriyanto', '3480190', 60, 1, NULL, NULL),
(318, 210, '2021-06-28 10:13:20', 1, '2022-07-14 03:15:41', NULL, NULL, 'Anderias Julius Bainkabel', '3490697', 60, 1, NULL, NULL),
(319, 1, '2021-06-29 04:58:47', NULL, NULL, NULL, NULL, 'ruang wijaya kusuma', '99999', 75, 1, NULL, NULL),
(320, 210, '2021-06-30 10:53:55', 210, '2021-10-09 02:25:33', 210, '2021-10-09 02:25:33', 'Nathalia Dora', '3500188', 60, 1, NULL, NULL),
(321, 210, '2021-06-30 10:54:27', 158, '2022-10-24 08:49:14', NULL, NULL, 'Muhammad Ripay Nur Sepdi', '3511199', 60, 1, NULL, NULL),
(322, 210, '2021-06-30 10:54:55', 210, '2021-10-09 02:22:47', 210, '2021-10-09 02:22:47', 'Muhamad Redho Rahman Pratama', '3521297', 60, 1, NULL, NULL),
(323, 210, '2021-06-30 10:55:25', 210, '2021-10-09 02:18:26', 210, '2021-10-09 02:18:26', 'M. Ramdani', '3531096', 56, 1, NULL, NULL),
(324, 210, '2021-06-30 10:55:52', 210, '2021-10-09 01:48:02', 210, '2021-10-09 01:48:02', 'Augustin Mega Anjani', '3540899', 61, 1, NULL, NULL),
(325, 210, '2021-07-01 10:19:21', 210, '2021-10-09 02:01:33', 210, '2021-10-09 02:01:33', 'dr. Galih Alqarana Rabbani', '3550795', 22, 16, NULL, NULL),
(326, 210, '2021-07-01 10:20:20', 210, '2021-10-09 02:00:48', 210, '2021-10-09 02:00:48', 'dr. Dina Farhana', '3560592', 22, 16, NULL, NULL),
(327, 210, '2021-07-01 10:21:56', 210, '2021-10-09 02:02:41', 210, '2021-10-09 02:02:41', 'dr. Mimi Azmiyati', '3571092', 22, 16, NULL, NULL),
(328, 210, '2021-07-01 10:22:37', 210, '2021-10-09 02:03:33', 210, '2021-10-09 02:03:33', 'dr. Windri Sekar Nilam', '3580696', 22, 16, NULL, NULL),
(329, 210, '2021-07-02 09:30:12', 210, '2022-02-05 04:22:57', 210, '2022-02-05 04:22:57', 'Irwan Situmeang', '3590890', 18, 11, NULL, NULL),
(330, 210, '2021-07-02 09:30:37', NULL, NULL, NULL, NULL, 'Winih Suhadi', '3600581', 18, 11, NULL, NULL),
(331, 210, '2021-07-03 01:44:00', 210, '2021-10-09 02:36:01', 210, '2021-10-09 02:36:01', 'Winda Sulistyowati', '3611298', 60, 1, NULL, NULL),
(332, 210, '2021-07-03 01:44:24', 210, '2021-10-09 02:09:51', 210, '2021-10-09 02:09:51', 'Heni Setia Wati', '3620798', 56, 1, NULL, NULL),
(333, 210, '2021-07-03 01:45:03', 210, '2022-12-22 01:31:04', NULL, NULL, 'Dhony Abdul Kharist', '3630294', 30, 9, NULL, NULL),
(334, 1, '2021-07-06 04:39:25', NULL, NULL, NULL, NULL, 'Ruang SAKURA', '99999', 72, 1, NULL, NULL),
(335, 210, '2021-07-08 04:44:35', NULL, NULL, NULL, NULL, 'Theresa Pratiwi', '3640495', 5, 5, NULL, NULL),
(336, 210, '2021-07-08 04:45:45', 210, '2021-10-09 01:42:14', 210, '2021-10-09 01:42:14', 'Aji Abdul Muzaki', '3651194', 23, 4, NULL, NULL),
(337, 210, '2021-07-08 04:47:47', 210, '2021-10-09 01:59:45', 210, '2021-10-09 01:59:45', 'Dero Anjosa, A.Md. Kep', '3660695', 72, 1, NULL, NULL),
(338, 210, '2021-07-08 04:48:57', 210, '2021-10-09 02:26:51', 210, '2021-10-09 02:26:51', 'Ns. Maitri Siska, S. Kep', '3670595', 56, 1, NULL, NULL),
(339, 210, '2021-07-08 04:50:02', 210, '2021-10-09 01:58:17', 210, '2021-10-09 01:58:17', 'Cahya Annisa Putri', '3680499', 72, 1, NULL, NULL),
(340, 210, '2021-07-10 01:33:44', 210, '2021-10-09 02:15:23', 210, '2021-10-09 02:15:23', 'Kartika Widyasari', '3690699', 22, 1, NULL, NULL),
(341, 210, '2021-07-10 01:35:27', 210, '2021-10-09 02:31:05', 210, '2021-10-09 02:31:05', 'Riki Taufiki Firdausy', '3701199', 72, 1, NULL, NULL),
(342, NULL, '2021-07-13 04:34:22', 210, '2022-03-04 09:25:55', 210, '2022-03-04 09:25:55', 'Teddy Lahengkeng S', '3710970', 33, 17, NULL, NULL),
(343, 210, '2021-07-14 07:32:09', 210, '2023-02-10 06:58:31', 210, '2023-02-10 06:58:31', 'Muhammad Nino Farizal', '3731196', 23, 4, NULL, NULL),
(344, 210, '2021-07-21 03:25:01', 210, '2022-02-09 02:37:35', 210, '2022-02-09 02:37:35', 'Dian Nopita Rini', '3741295', 24, 10, NULL, NULL),
(345, 210, '2021-07-21 03:25:30', 192, '2022-10-22 02:34:30', NULL, NULL, 'Siti Juhroh', '3750798', 33, 19, NULL, NULL),
(346, 210, '2021-07-21 03:25:52', NULL, NULL, NULL, NULL, 'Nartih', '3760582', 24, 10, NULL, NULL),
(347, 210, '2021-07-21 03:26:13', 210, '2021-10-09 02:22:04', 210, '2021-10-09 02:22:04', 'Moenica Ardiati Utami', '3770599', 5, 5, NULL, NULL),
(348, 210, '2021-07-23 04:21:26', 210, '2022-11-21 01:27:57', 210, '2022-11-21 01:27:57', 'dr. Nur Ardianty, MM', '07960', 33, 26, NULL, NULL),
(349, 210, '2021-07-23 04:21:56', 306, '2023-01-09 04:53:37', 306, '2023-01-09 04:53:37', 'Neni Kania, SE. MPH.', '4246', 53, 1, NULL, NULL),
(350, 210, '2021-08-04 01:00:06', 210, '2022-12-02 01:37:27', 210, '2022-12-02 01:37:27', 'Abd Rohman', '3770592', 18, 11, NULL, NULL),
(351, 1, '2021-08-20 02:13:53', 158, '2023-02-08 05:19:45', NULL, NULL, 'dr. Lovena Sari, M. Ked (DV), Sp. DV', '3780687', 40, 16, NULL, NULL),
(352, 210, '2021-09-01 01:35:01', 158, '2023-02-08 05:33:57', NULL, NULL, 'dr. Rima Melati, Sp. AK, Sp. OK', '3790366', 78, 16, NULL, NULL),
(353, 210, '2021-09-02 03:37:36', NULL, NULL, NULL, NULL, 'Linggar Pratikno, AMTE', '3820593', 18, 11, NULL, NULL),
(354, 210, '2021-09-02 03:51:52', NULL, NULL, NULL, NULL, 'Syam Apriansyah', '3810493', 31, 15, NULL, NULL),
(355, 210, '2021-09-08 01:52:21', NULL, NULL, NULL, NULL, 'Pipit Kasiani', '3800596', 24, 10, NULL, NULL),
(356, 210, '2021-09-15 00:18:57', 210, '2021-09-15 00:19:30', NULL, NULL, 'dr. Adrian Ridski Harsono, Sp. N', '3830191', 38, 16, NULL, NULL),
(357, 108, '2021-09-21 02:43:06', NULL, NULL, NULL, NULL, 'Cempaka Dwi Setyasih', '2550485', 13, 7, NULL, NULL),
(358, 210, '2021-10-25 07:14:28', NULL, NULL, NULL, NULL, 'Indah Novianti', '2001197', 27, 1, NULL, NULL),
(359, 210, '2021-11-08 00:20:23', 1, '2021-11-15 04:51:33', NULL, NULL, 'Riri Amiati', '3840693', 80, 16, NULL, NULL),
(360, 210, '2021-11-11 06:34:38', 210, '2022-11-21 01:31:46', 210, '2022-11-21 01:31:46', 'Siti Ayu Ajijah, S.Tr.Kes', '3850199', 65, 6, NULL, NULL),
(361, NULL, '2021-11-15 06:41:14', NULL, NULL, NULL, NULL, 'Janiah', '3860684', 24, 10, NULL, NULL),
(362, 210, '2021-11-25 00:44:10', NULL, NULL, NULL, NULL, 'Eva Handini', '3871096', 24, 10, NULL, NULL),
(363, NULL, '2021-12-20 09:13:09', 158, '2023-02-08 04:15:55', NULL, NULL, 'dr. Riady Ashari, Sp. A', '3880687', 42, 16, NULL, NULL),
(364, 210, '2021-12-20 09:13:47', 158, '2023-02-08 04:30:44', NULL, NULL, 'drg. Michael Pangestu, Sp. KG', '3890384', 29, 16, NULL, NULL),
(365, 210, '2021-12-30 00:55:26', 210, '2022-03-04 09:26:29', 210, '2022-03-04 09:26:29', 'Muhammad Khoerurrijal', '3910396', 13, 7, NULL, NULL),
(366, 210, '2022-01-04 03:10:06', NULL, NULL, NULL, NULL, 'Zousepin Akbar', '3920994', 13, 7, NULL, NULL),
(367, 210, '2022-01-20 04:34:19', NULL, NULL, NULL, NULL, 'Frodine Satriati Aer', '3930957', 28, 1, NULL, NULL),
(368, 210, '2022-02-03 02:11:34', 210, '2022-11-29 03:31:19', NULL, NULL, 'Baktiar Aprianto', '3940493', 22, 1, NULL, NULL),
(369, 210, '2022-02-05 04:22:41', NULL, NULL, NULL, NULL, 'Wildan Akbar', '3950700', 18, 11, NULL, NULL),
(370, 210, '2022-02-05 04:42:31', NULL, NULL, NULL, NULL, 'Novy Dewi Rahayu', '3960695', 13, 7, NULL, NULL),
(371, 210, '2022-02-07 01:42:57', 210, '2022-06-02 01:03:45', 210, '2022-06-02 01:03:45', 'dr. M Darussalam Darwis', '3980489', 22, 16, NULL, NULL),
(372, 210, '2022-02-07 01:48:53', 210, '2022-06-02 01:03:52', 210, '2022-06-02 01:03:52', 'dr. Ranggahesa Wibawa Yudhisty Pramana', '3990793', 22, 16, NULL, NULL),
(373, 210, '2022-02-09 02:32:50', NULL, NULL, NULL, NULL, 'Endah Rizqi Winantri', '3970699', 23, 4, NULL, NULL),
(374, 210, '2022-02-18 02:08:38', NULL, NULL, NULL, NULL, 'dr. Roy Martino, Sp. An', '4000386', 12, 16, NULL, NULL),
(375, NULL, '2022-02-18 04:34:45', NULL, NULL, NULL, NULL, 'Riezalisnoor Maulana Akbar', '4010100', 13, 7, NULL, NULL),
(376, 210, '2022-03-08 02:57:23', NULL, NULL, NULL, NULL, 'dr. Rudi Hermansyah, Sp. B', '4020585', 39, 16, NULL, NULL),
(377, 1, '2022-04-12 05:36:53', 158, '2023-02-08 03:38:32', NULL, NULL, 'dr. Laily Ridawati, Sp.PD', '4030688', 41, 16, NULL, NULL),
(378, 210, '2022-04-18 02:49:34', NULL, NULL, NULL, NULL, 'Yusron Azkiyah', '4040691', 24, 10, NULL, NULL),
(379, 210, '2022-05-20 01:12:39', 210, '2022-11-21 01:27:42', 210, '2022-11-21 01:27:42', 'Fritz Jeanto Aktawalora', '4050195', 61, 1, NULL, NULL),
(380, 210, '2022-05-20 01:48:03', 158, '2023-02-01 03:01:30', NULL, NULL, 'Putri Cahya Kamila Paputungan', '4060194', 72, 1, NULL, NULL),
(381, 210, '2022-05-20 01:48:34', 158, '2022-09-19 09:40:43', NULL, NULL, 'Wandra Yardi  D', '4070294', 12, 1, NULL, NULL);
INSERT INTO `pegawai` (`pegawai_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_pegawai`, `nip`, `bagian_id`, `profesi_id`, `foto`, `nik`) VALUES
(382, 210, '2022-05-30 03:03:54', NULL, NULL, NULL, NULL, 'Sultan Alfian', '4080496', 22, 1, NULL, NULL),
(383, NULL, '2022-05-30 04:18:28', 210, '2022-11-28 04:08:10', NULL, NULL, 'Aminah Asri', '4090595', 22, 1, NULL, NULL),
(384, 210, '2022-06-07 01:19:55', 210, '2022-11-29 03:31:29', 210, '2022-11-29 03:31:29', 'Edi Supriadi', '4100592', 72, 1, NULL, NULL),
(385, 210, '2022-06-11 00:36:58', 210, '2022-11-21 01:28:52', 210, '2022-11-21 01:28:52', 'dr. Vannessa Karenina', '4110699', 22, 16, NULL, NULL),
(386, 210, '2022-06-11 00:37:18', 210, '2023-02-10 06:59:46', 210, '2023-02-10 06:59:46', 'dr. Vania Shaula', '4120497', 22, 16, NULL, NULL),
(387, 210, '2022-06-21 01:03:45', 1, '2022-07-13 08:33:36', NULL, NULL, 'dr. Syari Maisyarah Rahman, Sp. Rad', '4131185', 7, 16, NULL, NULL),
(388, 306, '2022-07-05 01:10:21', 306, '2022-07-07 01:50:36', NULL, NULL, 'dr. Laili Fathiyah, MPH', '130633', 33, 16, NULL, NULL),
(389, 210, '2022-07-12 01:08:20', 210, '2022-07-16 00:43:40', NULL, NULL, 'Ade Novianti', '4141297', 75, 2, NULL, NULL),
(390, 210, '2022-08-01 07:21:27', 210, '2023-02-10 06:59:32', 210, '2023-02-10 06:59:32', 'dr. Siti Sarah Rachmadianti', '4150296', 22, 16, NULL, NULL),
(391, 210, '2022-08-03 03:23:20', 158, '2023-02-08 04:31:27', NULL, NULL, 'drg. Cut Fadluna Paramita, Sp. Ort', '4160481', 29, 16, NULL, NULL),
(392, 210, '2022-08-08 00:52:13', NULL, NULL, NULL, NULL, 'Muhammad Taufiq R. Dengo', '4170400', 65, 6, NULL, NULL),
(393, 210, '2022-08-08 00:52:51', 158, '2022-11-19 02:01:38', NULL, NULL, 'Aprilia Dian Kusuma Rini', '4180496', 56, 1, NULL, NULL),
(394, 210, '2022-08-16 00:46:58', NULL, NULL, NULL, NULL, 'Rizky Amalia', '4191099', 18, 11, NULL, NULL),
(395, 210, '2022-08-16 00:49:41', 158, '2023-02-08 04:14:15', NULL, NULL, 'dr. Raedy Ruwanda Susanto, Sp A.', '4200287', 42, 16, NULL, NULL),
(396, 210, '2022-08-22 03:41:18', 158, '2023-02-08 04:57:59', NULL, NULL, 'dr. Khonita Adian Utami, Sp. N', '4210489', 38, 16, NULL, NULL),
(397, 210, '2022-08-31 02:24:48', 210, '2023-01-06 04:28:59', NULL, NULL, 'Supandi Rejeki', '4220894', 60, 1, NULL, NULL),
(398, 152, '2022-09-28 01:32:40', NULL, NULL, NULL, NULL, 'ACHMAD MAWARDI, S.H., M.H.', '0031173', 33, 33, NULL, NULL),
(399, 210, '2022-10-05 02:28:35', NULL, NULL, NULL, NULL, 'dr. Nur’aini Alamanda, Sp.An', '4230483', 12, 16, NULL, NULL),
(400, 210, '2022-10-14 07:08:36', 158, '2023-02-08 05:22:21', NULL, NULL, 'dr. Rivo Mario Warouw Lintuuran, Sp.KJ', '4240682', 89, 16, NULL, NULL),
(401, 210, '2022-10-17 03:31:34', NULL, NULL, NULL, NULL, 'Pipit Setyo Rini', '4251097', 23, 4, NULL, NULL),
(402, 210, '2022-10-17 03:32:14', NULL, NULL, NULL, NULL, 'Nur Imam Komara', '4261095', 23, 4, NULL, NULL),
(403, 210, '2022-10-19 07:56:05', 1, '2022-12-01 02:02:32', NULL, NULL, 'Krisna Ramadhan Saputra', '4271297', 72, 1, NULL, NULL),
(404, 210, '2022-10-19 07:57:31', 210, '2022-11-28 04:08:32', NULL, NULL, 'Yosep Pransiskus Riki Dosi', '4280494', 60, 1, NULL, NULL),
(405, 210, '2022-10-19 07:57:56', 1, '2022-11-26 04:40:51', NULL, NULL, 'Ive Hana Ruth Sitepu', '4291099', 60, 1, NULL, NULL),
(406, 210, '2022-10-19 07:58:23', 1, '2022-12-01 02:02:11', NULL, NULL, 'Eka Ajheng Widyawati', '4300497', 72, 1, NULL, NULL),
(407, 210, '2022-10-19 07:58:46', 1, '2022-11-05 04:43:07', NULL, NULL, 'Vina Arum Sari', '4311297', 64, 1, NULL, NULL),
(408, 210, '2022-10-19 07:59:10', 1, '2022-11-05 04:42:51', NULL, NULL, 'Raehana', '4320994', 64, 1, NULL, NULL),
(409, 210, '2022-11-05 04:49:39', NULL, NULL, NULL, NULL, 'Choirunisa Yuni Asri', '4330697', 5, 8, NULL, NULL),
(410, 210, '2022-11-05 04:50:08', NULL, NULL, NULL, NULL, 'Fitriyani', '4340299', 5, 5, NULL, NULL),
(411, 210, '2022-11-05 04:51:06', NULL, NULL, NULL, NULL, 'Iriani Utami Ramdona', '4350198', 60, 1, NULL, NULL),
(412, 210, '2022-11-05 04:51:31', 158, '2023-02-01 03:16:20', NULL, NULL, 'Andi Febrina Sosiawati', '4360297', 61, 1, NULL, NULL),
(413, 210, '2022-11-05 04:51:58', 210, '2022-11-11 01:45:31', NULL, NULL, 'Fauziah Hasanah', '4371297', 60, 1, NULL, NULL),
(414, 210, '2022-11-05 04:52:20', NULL, NULL, NULL, NULL, 'Muhammad Zulfa', '4381295', 72, 1, NULL, NULL),
(415, 210, '2022-11-05 04:52:54', 158, '2023-02-01 03:16:53', NULL, NULL, 'Siti Latifah', '4390900', 61, 1, NULL, NULL),
(416, 210, '2022-11-10 07:40:56', 158, '2022-11-19 02:00:48', NULL, NULL, 'Vista Yulistia', '4401096', 75, 2, NULL, NULL),
(417, 210, '2022-11-10 07:41:29', 158, '2023-02-01 03:13:54', NULL, NULL, 'Wiji Tri Sayekti', '4410497', 72, 1, NULL, NULL),
(418, 210, '2022-11-10 07:41:50', 210, '2023-02-10 06:59:57', 210, '2023-02-10 06:59:57', 'Tiara Kusuma Dewi', '4420398', 72, 1, NULL, NULL),
(419, 210, '2022-11-10 07:42:14', NULL, NULL, NULL, NULL, 'Wulan Afriyanti', '4430493', 13, 7, NULL, NULL),
(420, 210, '2022-11-10 07:42:40', 158, '2023-02-01 03:14:18', NULL, NULL, 'Shaula Adrea Rusdiana Nasution', '4441000', 72, 1, NULL, NULL),
(421, 210, '2022-11-21 01:14:22', NULL, NULL, NULL, NULL, 'Ahmad Romdoni', '4450496', 53, 29, NULL, NULL),
(422, 210, '2022-11-21 01:14:57', NULL, NULL, NULL, NULL, 'Afifah Salsabila Permata Dewi', '4460899', 21, 20, NULL, NULL),
(423, 210, '2022-11-28 02:02:40', NULL, NULL, NULL, NULL, 'Rossmeryanda Rezina', '4470597', 28, 1, NULL, NULL),
(424, 141, '2022-11-29 00:30:03', NULL, NULL, NULL, NULL, 'Casemix RSUP', '14045', NULL, 16, NULL, NULL),
(425, 210, '2022-12-06 07:53:12', NULL, NULL, NULL, NULL, 'Rizka Lestari', '4481097', 23, 4, NULL, NULL),
(426, 210, '2022-12-06 07:53:33', NULL, NULL, NULL, NULL, 'Dwi Fildzah Adani', '4490701', 53, 4, NULL, NULL),
(427, 210, '2022-12-06 07:53:52', NULL, NULL, NULL, NULL, 'dr. Bahesty Cut Nyak Din', '4501196', 22, 16, NULL, NULL),
(428, 210, '2022-12-06 07:54:13', NULL, NULL, NULL, NULL, 'dr. Josse Nathan Goenawan', '4511095', 22, 16, NULL, NULL),
(429, 210, '2022-12-06 07:54:39', 158, '2022-12-13 11:11:44', NULL, NULL, 'dr. Isma Fadlilatus Sadiyah', '4521296', 22, 16, NULL, NULL),
(430, 210, '2022-12-17 01:27:17', NULL, NULL, NULL, NULL, 'dr. Arrival Rahman', '4530196', 22, 16, NULL, NULL),
(431, 210, '2022-12-17 01:27:42', 210, '2023-02-10 07:01:18', 210, '2023-02-10 07:01:18', 'dr. Delvina Anastasia Pertiwi', '4540294', 22, 16, NULL, NULL),
(432, 210, '2022-12-26 03:43:13', 210, '2022-12-31 05:15:14', 210, '2022-12-31 05:15:14', 'dr. Gracia Stella Sinaga', '4550995', 22, 16, NULL, NULL),
(433, 210, '2022-12-26 07:05:40', NULL, NULL, NULL, NULL, 'Siti Mariah', '4560187', 66, 1, NULL, NULL),
(434, 210, '2022-12-26 07:06:01', NULL, NULL, NULL, NULL, 'Eka Sarima Hardiani', '4570798', 60, 1, NULL, NULL),
(435, 210, '2022-12-26 07:06:22', 158, '2023-02-01 03:17:08', NULL, NULL, 'Nina Nurjanah', '4580798', 61, 1, NULL, NULL),
(436, 210, '2022-12-28 01:27:35', NULL, NULL, NULL, NULL, 'Ahmad Samdani, SKM., MPH.', '05659', 33, 18, NULL, NULL),
(437, 210, '2022-12-31 01:28:16', NULL, NULL, NULL, NULL, 'dr. Semadela Solichin Putri', '4590597', 22, 16, NULL, NULL),
(438, 210, '2022-12-31 01:28:48', NULL, NULL, NULL, NULL, 'dr. Adillah Afrilia Syahwina Pado', '4600497', 22, 16, NULL, NULL),
(439, 158, '2023-01-02 14:36:07', 158, '2023-02-08 04:59:17', NULL, NULL, 'dr. Priyanka Ganesa Utami, Sp. N', '4611091', 38, 16, NULL, NULL),
(440, 210, '2023-01-14 00:58:33', NULL, NULL, NULL, NULL, 'Ignatin Agustina, AMK', '4620885', 12, 1, NULL, NULL),
(441, 210, '2023-01-16 02:22:59', NULL, NULL, NULL, NULL, 'Ahmad Roih', '4631194', 25, 22, NULL, NULL),
(442, 210, '2023-01-21 01:26:30', NULL, NULL, NULL, NULL, 'dr. Farida Nurhayati', '4640296', 22, 16, NULL, NULL),
(443, 210, '2023-02-08 04:21:58', NULL, NULL, NULL, NULL, 'drg. Febrianti Adi Satria', '4650299', 29, 16, NULL, NULL),
(444, 210, '2023-02-10 06:50:13', NULL, NULL, NULL, NULL, 'dr. Cendy Andestria', '4661296', 22, 16, NULL, NULL),
(445, 210, '2023-02-10 06:51:23', NULL, NULL, NULL, NULL, 'Hikmah Nur Safitri', '4671298', 61, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_detail`
--

CREATE TABLE `pegawai_detail` (
  `pegawai_detail_id` int(11) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `foto_profile` varchar(255) DEFAULT NULL,
  `telp_pribadi` varchar(255) DEFAULT NULL,
  `telp_keluarga` varchar(255) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kabupaten` varchar(255) DEFAULT NULL,
  `kelurahan` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai_detail`
--

INSERT INTO `pegawai_detail` (`pegawai_detail_id`, `pegawai_id`, `email`, `foto_profile`, `telp_pribadi`, `telp_keluarga`, `alamat_lengkap`, `provinsi`, `kabupaten`, `kelurahan`, `kode_pos`) VALUES
(5, 354, NULL, '1676715490327-icon.png', '08123193', '12019231983', 'Jalan jalan', 'DKI Jakarta', 'Jakarta Utara', 'Semper', '12312');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE `pelatihan` (
  `pelatihan_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_pelatihan` varchar(255) NOT NULL,
  `jenis_pelatihan_id` varchar(255) DEFAULT NULL,
  `tanggal_pelatihan` date DEFAULT NULL,
  `penyelenggara` varchar(255) DEFAULT NULL,
  `bukti_pelatihan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelatihan`
--

INSERT INTO `pelatihan` (`pelatihan_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_pelatihan`, `jenis_pelatihan_id`, `tanggal_pelatihan`, `penyelenggara`, `bukti_pelatihan`) VALUES
(2, 306, '2023-02-18 10:57:00', 306, '2023-02-18 11:14:13', NULL, NULL, 'Poli anak1', '2', '2023-02-17', 'RSUD Bekasi', NULL),
(3, 306, '2023-02-18 11:14:31', NULL, NULL, NULL, NULL, 'Poli anak 2', '2', '2023-02-08', 'RSUD Bekasi', '1676718871479-icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `pendidikan_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_instansi` varchar(255) NOT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `tahun_mulai` varchar(255) DEFAULT NULL,
  `tahun_lulus` varchar(255) DEFAULT NULL,
  `jenis_pendidikan_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`pendidikan_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_instansi`, `jurusan`, `tahun_mulai`, `tahun_lulus`, `jenis_pendidikan_id`) VALUES
(2, 306, '2023-02-18 15:30:46', 306, '2023-02-18 15:54:28', NULL, NULL, 'SMKN 6 Kota Bekasi', 'Rekayasa Perangkat Lunak', '2018', '2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profesi`
--

CREATE TABLE `profesi` (
  `profesi_id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_profesi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profesi`
--

INSERT INTO `profesi` (`profesi_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `nama_profesi`) VALUES
(1, 1, '2020-01-13 06:39:52', 1, '2020-01-14 07:00:14', NULL, NULL, 'PERAWAT'),
(2, 1, '2020-01-13 06:40:04', NULL, NULL, NULL, NULL, 'BIDAN'),
(3, 1, '2020-01-13 06:40:14', 1, '2021-05-07 10:53:20', NULL, NULL, 'APOTEKER'),
(4, 1, '2020-01-13 06:40:26', 1, '2021-05-07 10:53:27', NULL, NULL, 'ASISTEN APOTEKER'),
(5, 1, '2020-01-13 06:40:55', 152, '2020-08-25 04:20:02', NULL, NULL, 'ANALIS KESEHATAN'),
(6, 1, '2020-01-13 06:41:07', NULL, NULL, NULL, NULL, 'FISIOTERAPIS'),
(7, 1, '2020-01-13 06:41:17', 1, '2022-07-14 02:11:48', NULL, NULL, 'REKAM MEDIS'),
(8, 1, '2020-01-13 06:41:31', 1, '2021-05-19 06:48:39', NULL, NULL, 'LABORATORIUM'),
(9, 1, '2020-01-13 06:41:43', NULL, NULL, NULL, NULL, 'AKUNTANSI'),
(10, 1, '2020-01-13 06:41:52', 1, '2021-05-08 03:43:47', NULL, NULL, 'GIZI'),
(11, 1, '2020-01-13 06:42:06', 152, '2020-08-25 04:20:18', NULL, NULL, 'TEKNIK'),
(12, 1, '2020-01-13 06:42:58', NULL, NULL, NULL, NULL, 'RADIOGRAFER'),
(13, 1, '2020-01-13 06:43:26', 152, '2020-09-25 01:48:54', 152, '2020-09-25 01:48:54', 'DOKTER UMUM'),
(14, 1, '2020-01-13 06:43:43', 152, '2020-09-25 01:48:43', 152, '2020-09-25 01:48:43', 'DOKTER SPESIALIS'),
(15, 1, '2020-01-14 06:59:45', 306, '2022-04-26 06:38:46', NULL, NULL, 'IT'),
(16, 1, '2020-01-15 08:09:46', NULL, NULL, NULL, NULL, 'DOKTER'),
(17, 1, '2020-01-15 08:24:57', 152, '2022-03-05 01:03:09', NULL, NULL, 'PENGADAAN'),
(18, 1, '2020-01-16 08:44:59', 152, '2022-03-05 01:03:43', NULL, NULL, 'SDM'),
(19, 1, '2020-08-07 03:16:45', 152, '2022-03-05 01:02:45', NULL, NULL, 'PENGADAAN OBAT'),
(20, 1, '2020-08-08 02:09:41', NULL, NULL, NULL, NULL, 'PEMASARAN'),
(21, 1, '2020-08-08 02:56:06', 152, '2020-08-25 01:27:06', NULL, NULL, 'SEKRETARIS'),
(22, 152, '2020-08-25 01:25:07', 152, '2020-08-25 02:26:39', NULL, NULL, 'UMUM DAN PERHOTELAN'),
(23, 152, '2020-08-25 01:26:49', 152, '2020-08-25 01:32:35', NULL, NULL, 'KEAMANAN'),
(24, 152, '2020-08-25 04:21:14', NULL, NULL, NULL, NULL, 'CASEMIX'),
(25, 152, '2020-08-25 04:22:41', NULL, NULL, NULL, NULL, 'KOMITE'),
(26, 152, '2020-09-01 04:59:09', NULL, NULL, NULL, NULL, 'MANAJEMEN'),
(27, 152, '2020-09-26 03:41:53', NULL, NULL, NULL, NULL, 'CASE MANAGER'),
(28, 1, '2020-10-20 02:40:13', NULL, NULL, NULL, NULL, 'KEPALA RUMAHSAKIT'),
(29, 1, '2021-01-11 06:22:28', 1, '2021-05-07 10:53:37', NULL, NULL, 'GUDANG OBAT'),
(30, 1, '2021-01-11 06:22:28', NULL, NULL, NULL, NULL, 'PATOLOGI ANATOMI'),
(31, 1, '2021-01-11 06:22:28', NULL, NULL, NULL, NULL, 'KARDIOVASKULER'),
(32, 1, '2021-11-15 04:44:59', NULL, NULL, NULL, NULL, 'TERAPI WICARA'),
(33, 152, '2022-09-28 01:29:42', NULL, NULL, NULL, NULL, 'DIREKTUR'),
(34, 152, '2022-11-28 04:12:55', 152, '2022-11-28 04:13:17', NULL, NULL, 'DUTY MANAGER DAN SPGDT');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hakakses_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pegawai_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`, `name`, `username`, `email_verified_at`, `password`, `remember_token`, `hakakses_id`, `pegawai_id`) VALUES
(0, 0, '2023-02-16 04:14:12', 306, '2023-02-16 07:02:42', NULL, NULL, 'mzfa', 'mzfa', NULL, 'mzfa', 'lsyzt96gHnfs3AEZfnzqKuv9skCXTrHq0P1o2vZvNVgwRwCdvr1GagfZmcax', 1, 0),
(1, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'ADMINISTRATOR', 'admin', NULL, 'qwerty123', NULL, NULL, 1),
(2, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'TEST DOKTER I', 'TEST DOKTER', NULL, '121212', NULL, NULL, 120),
(3, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'TEST REGISTRASI', 'TEST REGISTRASI', NULL, '1234567', NULL, NULL, 121),
(4, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'TEST PERAWAT', 'audit perawat', NULL, '123456', NULL, NULL, 122),
(6, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'TEST FARMASI', 'TEST FARMASI', NULL, '123456', NULL, NULL, 124),
(7, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'TEST GUDANG OBAT', 'TEST GUDANG OBAT', NULL, '123456', NULL, NULL, 125),
(8, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'TEST KASIR', 'TEST KASIR', NULL, '123456', NULL, NULL, 126),
(9, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'MUSTARI', 'MUSTARI', NULL, 'fedora', NULL, NULL, 25),
(10, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Aldityas Eko, dr., Sp.THT-KL', 'aldi', NULL, '161922', NULL, NULL, 33),
(11, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Vriyanka', 'Vriyanka', NULL, '654321', NULL, NULL, 49),
(12, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'TEST FISIOTERAPI', 'TEST FISIOTERAPI', NULL, '123456', NULL, NULL, 128),
(13, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Achmad Agus Sudarwin Haryanto, Sp.B', 'darwin', NULL, '123456', NULL, NULL, 12),
(14, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'drg. Arum Nurdiana Sari, MM', 'Arum', NULL, '123456', NULL, NULL, 23),
(15, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Herdiana Elizabeth, Sp.A', 'Herdiana', NULL, '123456', NULL, NULL, 24),
(16, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Mira Fauziah, Sp.A, Mked.', '0720380', NULL, '123456', NULL, NULL, 26),
(17, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Irwan Amin, Sp. AN-K', 'Irwan', NULL, '123456', NULL, NULL, 27),
(18, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Gina Adriana Nainggolan, Sp.An', 'Gina', NULL, '123456', NULL, NULL, 28),
(19, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Vincent Chrisnata, Sp.AN', 'Vincent', NULL, '123456', NULL, NULL, 29),
(20, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Andri Suhandi, dr., Sp. B', 'Andri', NULL, '123456', NULL, NULL, 30),
(21, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Afria Arista, Sp. KK', 'Afria', NULL, '123456', NULL, NULL, 31),
(22, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Hanekung Titisari, Sp.THT', 'Hanekung', NULL, '123456', NULL, NULL, 32),
(23, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Muhammad Andi Yassiin, Sp. JP', 'Andi Yassiin', NULL, '123456789', NULL, NULL, 34),
(24, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Martua Silalahi, dr., Sp.JP', 'Martua', NULL, '123456', NULL, NULL, 35),
(25, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nadia Prawitra, dr., Sp.S', 'Nadia', NULL, 'Neuro1', NULL, NULL, 36),
(26, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ahmad Thamrin, dr., Sp.OG', 'Thamrin', NULL, '123456', NULL, NULL, 37),
(27, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Muhammad Anggawiyatna, Sp.OT', 'Anggawiyatna', NULL, '123456', NULL, NULL, 38),
(28, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Naindra Kemala Dewi, Sp. P', 'Kemala', NULL, '123456', NULL, NULL, 39),
(29, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Febriana Novariska, Sp.P', 'Febriana', NULL, '123456', NULL, NULL, 40),
(30, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Isabella Valentina, Sp.PK', 'Isabella', NULL, '123456', NULL, NULL, 41),
(31, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Deka Larasati, M. Biomed.', 'Deka', NULL, '123456', NULL, NULL, 42),
(32, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Indria Yogani, Sp.PD', 'Indria', NULL, '123456', NULL, NULL, 43),
(33, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Felix Satwika, dr., Sp.PD', 'Felix', NULL, '987654', NULL, NULL, 44),
(34, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Tatan Saefudin, dr., Sp.Rad', 'Tatan', NULL, '123456', NULL, NULL, 45),
(35, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Tunjung Prasetyo Nugroho, Sp. Rad', 'Tunjung', NULL, '123456', NULL, NULL, 46),
(36, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Pangeran Indal Patra Abbas, dr.', 'Patra', NULL, '123456', NULL, NULL, 47),
(37, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Fariha', 'Fariha', NULL, '123456', NULL, NULL, 48),
(38, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Erish Harry Angkat', 'Erish', NULL, '121212', NULL, NULL, 50),
(39, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Ramadani Kurniawan', 'Ramadani', NULL, '123456', NULL, NULL, 51),
(40, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Fachdepy Maulana Ngangi', 'Fachdepy', NULL, '123456', NULL, NULL, 52),
(41, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Soraya Alamudi', 'Soraya', NULL, '123456', NULL, NULL, 53),
(42, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Rivki Wida Sarandi', 'Rivki', NULL, '123456', NULL, NULL, 54),
(43, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ns. Eka Riadi, S. Kep', 'Eka Riadi', NULL, '123456', NULL, NULL, 63),
(44, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ns. Vita  Sry Sulastri, S.Kep', 'Vita', NULL, '123456', NULL, NULL, 64),
(45, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ns. Anggraeni, S.Kep', 'Anggraeni', NULL, '220270', NULL, NULL, 65),
(46, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Marselia Yuli Pratiwi A.Md. Kep', 'Marselia', NULL, '654321', NULL, NULL, 68),
(47, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Solawatun Mustaekah, A.Md.Kep', 'Solawatun', NULL, '222222', NULL, NULL, 69),
(48, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Yolanda Mastin Samaowati,A.Md.Kep', 'Yolanda Mastin', NULL, '7654321', NULL, NULL, 70),
(49, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dede Nuraeni, AMK', 'Dede Nuraeni', NULL, '290466', NULL, NULL, 71),
(50, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Patricia Sitinjak, A.Md.Kep', 'Patricia', NULL, '071096', NULL, NULL, 72),
(51, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dheni Hendra Bangsawan, A.Md.Kep', 'Dheni', NULL, '112323', NULL, NULL, 73),
(52, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ummi Zahrah Muntazzah,A.Md.Kep', 'Zahrah', NULL, '221292', NULL, NULL, 74),
(53, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ainun, A.Md. Kep', 'Ainun', NULL, '123456', NULL, NULL, 75),
(54, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Mega Nur Komala, AMK', 'ega mala', NULL, '292929', NULL, NULL, 76),
(55, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Pangestu S.W.D., A.Md.Kep', 'Pangestu', NULL, '123456', NULL, NULL, 77),
(56, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Putri Budy Utami, A.Md.Kep', 'Putri Budy', NULL, '111111', NULL, NULL, 78),
(57, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Anggun Cikita Dewi, A.Md.Kep', 'Anggun', NULL, '090497', NULL, NULL, 79),
(58, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Farid Fikri Akbar, A.Md.Kep', 'Farid Fikri', NULL, '16021997', NULL, NULL, 80),
(59, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Maya Riandari, A.Md.Kep', 'Maya Riandari', NULL, '123456', NULL, NULL, 81),
(60, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Yumba Laras Sati, A.Md. Kep', 'Yumba', NULL, '060606', NULL, NULL, 82),
(61, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Yolanda, A.Md. Kep', '1221097', NULL, '123456', NULL, NULL, 83),
(62, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Agustinus Hamonangan, A.Md. Kep', 'Agustinus', NULL, '123456', NULL, NULL, 84),
(63, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Inas Nur Afifah, A.Md. Kep', 'Inas', NULL, '200497', NULL, NULL, 85),
(64, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Wayan Sudiarta, A.Md.Kep', 'Wayan', NULL, '123456', NULL, NULL, 86),
(65, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Maria Esther Luciana,A.Md.Kep', 'Maria Esther', NULL, '123456', NULL, NULL, 87),
(66, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Hotmauli Siregar, AMK', 'Hotmauli', NULL, '123456', NULL, NULL, 88),
(67, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ni Ketut Murniati', 'Ni Ketut', NULL, '123456', NULL, NULL, 89),
(68, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Friska Magdalena, A.Md.Kep', 'Friska', NULL, '123456', NULL, NULL, 90),
(69, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Kurnia, AMK', 'niaaf', NULL, '777777', NULL, NULL, 91),
(70, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Novita Sari, A.Md.Kep', 'Novita Sari', NULL, '123456', NULL, NULL, 92),
(71, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Bio Riski Maulana,A.Md.Kep', 'Bio Rizki', NULL, '123456', NULL, NULL, 93),
(72, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Sea Rahayu, AMK', 'Sea Rahayu', NULL, '070618', NULL, NULL, 94),
(73, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Eriyandi Harahap, AMK', 'Eriyandi', NULL, '123456', NULL, NULL, 95),
(74, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Abdul Rouf Supiyanto, A.Md. Kep', 'Abdul Rouf', NULL, '123456', NULL, NULL, 96),
(75, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Jumiaty, AMK', 'Jumiaty', NULL, '828282', NULL, NULL, 97),
(76, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Alifatus Safariyah, A.Md.Kep', 'Alifatus', NULL, '123456', NULL, NULL, 98),
(77, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Rahayu Biyanti, AMK', 'Rahayu Biyanti', NULL, '222222', NULL, NULL, 99),
(78, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Mardihyana, A.Md.Kep', 'Mardihyana', NULL, '112233', NULL, NULL, 100),
(79, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Wa Wahyu Dian Rostary', 'Dian Rostary', NULL, '200395', NULL, NULL, 101),
(80, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Rahmayuli Ardian Putri, AMD, Kep', 'Rahmayuli', NULL, '100791', NULL, NULL, 102),
(81, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Putri Adijaya Sakti, A.Md.Kep', 'Putri Adijaya', NULL, 'putridijay', NULL, NULL, 103),
(82, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Robby, Amd.Kep', 'Robby', NULL, '060690', NULL, NULL, 104),
(83, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nathasia Jeanet Christy Irala, Amd.Kep', 'Nathasia Jeanet', NULL, '123456', NULL, NULL, 105),
(84, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Feri Susanto, AMK', 'Feri Susanto', NULL, '123456', NULL, NULL, 106),
(88, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Yudi Sukmara, A.Md.MPRS', 'Yudi', NULL, '850416', NULL, NULL, 109),
(89, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Roziana Mega Dewi, A.Md.RMIK', 'Roziana Mega', NULL, '654321', NULL, NULL, 110),
(90, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Siti Hardianti Handayani, A.Md. RMIK', 'Siti Hardianti', NULL, '310896', NULL, NULL, 111),
(91, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nasrullah', 'Nasrullah', NULL, '312322', NULL, NULL, 112),
(92, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Firni Dwi Astuti, S.Farm', 'Firni', NULL, '123456', NULL, NULL, 7),
(93, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Apt. Hadijah., S.Si.', 'Hadijah', NULL, 'yaarahman', NULL, NULL, 17),
(94, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Apt. Siti Fatimah., S.Farm', 'Siti Fatimah', NULL, '111111', NULL, NULL, 18),
(95, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Tri Meiyuliyanti', 'buzz', NULL, '808011', NULL, NULL, 55),
(96, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Apt. Ari Marliyana., S.Farm', 'Ari Marliyana', NULL, 'akuadalahaku', NULL, NULL, 56),
(97, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Fitriyatul Zabariyah, S.Farm', 'Fitriyatul', NULL, '123456', NULL, NULL, 113),
(98, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Gilang Mahardika, A.Md. AK', 'dnm', NULL, '123456', NULL, NULL, 10),
(99, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nur Hikmah, A.Md.AK', 'Nur Hikmah', NULL, '123456', NULL, NULL, 13),
(100, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ema Supiani, A.Md.AK', 'ema supiani', NULL, '123456', NULL, NULL, 14),
(101, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ipung Purwono, A.Md. AK', 'Ipung', NULL, '123456', NULL, NULL, 15),
(102, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dewi Yuliana A.Md. AK', 'Awie', NULL, '654321', NULL, NULL, 16),
(103, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'TEST PENUNJANG', '100001', NULL, '123456', NULL, NULL, 127),
(104, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Rusliadi Kustiawan, A.Md. RMIK', 'Rusliadi', NULL, 'Rusliadi212@', NULL, NULL, 5),
(105, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Imam Hari Santoso, A.Md. Rad', 'Imam', NULL, '1891emom', NULL, NULL, 107),
(106, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Fadhillah Apriani, A.Md.Rad', 'Fadhillah', NULL, 'dila99', NULL, NULL, 6),
(107, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Lia Avriani, A.Md. Rad', 'Lia Avriani', NULL, '111111', NULL, NULL, 108),
(108, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Noor Rizky Zulfira, SE. Ak', 'Rizky', NULL, '654321', NULL, NULL, 8),
(109, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Yoesi Febriansyah, SE.', 'Yoesi', NULL, '010108', NULL, NULL, 61),
(110, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Bagoes Riyadi Kurniawan, SE', 'Bagoes', NULL, '654321', NULL, NULL, 62),
(111, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'R. A. Afiani Putri Utaminingsih, SS', 'tami', NULL, '123456', NULL, NULL, 11),
(112, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Endang Lestariningsih, A.Md.Keb', 'Endang', NULL, '789789', NULL, NULL, 22),
(113, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Vinda Lyan Nofrin D., A.Md.Keb', 'Vinda', NULL, '123456', NULL, NULL, 20),
(114, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Pahma Rahmi S., A.Md.Keb', 'Rahmi', NULL, '123123', NULL, NULL, 19),
(115, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Fay Ferry Pardomuan Lambok P. Simanjuntak, dr., Sp. OG', 'Fay', NULL, '123456', NULL, NULL, 130),
(116, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Tengku Muhammad Iskandar, dr., Sp.OG', 'iskandar', NULL, '123123', NULL, NULL, 131),
(117, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Bambang Riyadi Agus P', 'Bambang Riyadi', NULL, '123456', NULL, NULL, 132),
(118, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Ery Wildan, Sp.OT', 'Ery', NULL, '112233', NULL, NULL, 133),
(119, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Maryanne Sri Andriawati, A.Md. Keb', 'Maryanne', NULL, '1234567', NULL, NULL, 118),
(120, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Maya Zelika Paradita', 'Maya Zelika', NULL, '1234567', NULL, NULL, 134),
(121, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr M. Candrasa Widya Wardhana', 'Candrasa', NULL, '1234567', NULL, NULL, 135),
(122, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Ade Dewi Naralia', 'Naralia', NULL, '123456', NULL, NULL, 136),
(123, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Yetti Muthiah, MKK.', 'Yetti', NULL, '123456', NULL, NULL, 137),
(124, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr Cut Shelma', 'cut', NULL, '1234567', NULL, NULL, 138),
(125, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Sri Nurlaelah, A.Md. Keb', 'Cicie', NULL, '1234567', NULL, NULL, 117),
(126, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Amia Della, A.Md.Keb', 'Amia', NULL, '031294', NULL, NULL, 3),
(127, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Syarifudin, dr., Sp.P', 'syarif', NULL, '123456', NULL, NULL, 139),
(128, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Sintha Damayanti, A.Md.Kep', 'shinta', NULL, '111333', NULL, NULL, 141),
(129, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Syifa Pauziah, A.Md.Kep', 'Syifa', NULL, '131097', NULL, NULL, 142),
(130, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Rifatul Choiriyah, A.Md.Keb', 'Rifatul', NULL, '123456', NULL, NULL, 140),
(131, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Irenne Purnama, MSc.,Sp.A', 'irenne', NULL, '131088', NULL, NULL, 144),
(132, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Damba dwisepto aulia,dr. Sp JP', 'Damba', NULL, '123456', NULL, NULL, 145),
(133, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ainur Rahmah, dr., Sp.M', 'Ainur', NULL, 'Terserah1985', NULL, NULL, 143),
(134, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Beta Agustia Wisman, Sp.PD', 'Beta', NULL, '123456', NULL, NULL, 146),
(135, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Junariah, A.Md.Kep', 'Junariah', NULL, '654321', NULL, NULL, 147),
(136, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'ruangan mawar', 'mawar', NULL, '123456', NULL, NULL, 148),
(137, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'ruangan melati', 'melati', NULL, '123456', NULL, NULL, 149),
(138, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Syarifuddin, dr., Sp.P (y)', 'Dr Riyadi', NULL, '654321', NULL, NULL, 150),
(139, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'ruang teratai', 'Teratai', NULL, '123456', NULL, NULL, 151),
(140, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'ruang anggrek', 'Anggrek', NULL, '123456', NULL, NULL, 152),
(141, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Galih Arif Azhari', 'Gazari', NULL, '311219', NULL, NULL, 153),
(142, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Himawan Tryatmaja, Dr.', 'Himawan', NULL, '283010', NULL, NULL, 154),
(143, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Muhsin Ali Sahbana, S.Farm.Apt', 'muhsin', NULL, '123456', NULL, NULL, 167),
(144, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Siti Nahriah', 'siti nahriah', NULL, '123456', NULL, NULL, 156),
(145, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Yana Aprianingsih Tampubolon, A.Md.Kep', 'Yana Aprianingsih', NULL, '123456', NULL, NULL, 171),
(146, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, '', '', NULL, '123456', NULL, NULL, NULL),
(147, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Wyasa Andrianto, dr., Sp.KFR', 'wyasa', NULL, '123456', NULL, NULL, 4),
(148, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Siti Fathonah, S.TR.Kes', 'fatho96', NULL, '654321', NULL, NULL, 164),
(149, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Marisa,S.farm', 'marisa', NULL, '251894', NULL, NULL, 170),
(150, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Syarifuddin, dr., Sp.P (y)', 'ryadi', NULL, '123456', NULL, NULL, 172),
(151, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Astari arum sari, dr., Sp.AN', 'Astari Arum', NULL, '785472', NULL, NULL, 173),
(152, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Trias Wibowo, SE', 'trias', NULL, '1120976', NULL, NULL, 119),
(153, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nunuk handini, S.Farm', 'nunu', NULL, 'Qirani03', NULL, NULL, 169),
(154, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Fajar Nurul Hadi, SE.', 'Fajar', NULL, '123456', NULL, NULL, 158),
(155, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'HCU', 'Hcu', NULL, '123456', NULL, NULL, 178),
(156, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Asysyukriati, Sp.P', 'asy', NULL, '1234567', NULL, NULL, 179),
(157, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'isolasi', 'isolasi', NULL, '123456', NULL, NULL, 180),
(158, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ahdi Pratama', 'ahdi', NULL, '123123', NULL, NULL, 2),
(159, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Cici Diah Cahyanti, AMd. Rad', 'Cici Diah', NULL, '123456', NULL, NULL, 166),
(160, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Lulus Lusmana, A.Md.Rad', 'Lulus', NULL, '123456', NULL, NULL, 165),
(161, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dina Septiyanti, AMG', 'Dina', NULL, '123abc', NULL, NULL, 66),
(162, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Niken Alia Taskya, dr.,Sp.KFR', 'niken', NULL, '123456', NULL, NULL, 192),
(163, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Sony Bagaskara, A.Md.Kep', 'sony', NULL, '1234567', NULL, NULL, 181),
(164, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Eka Apriliana, A.Md.Kep', 'eka a', NULL, '1234567', NULL, NULL, 183),
(165, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Fadhilah Ukhrainy, A.Md.Kep', 'fadhilah', NULL, '12345678', NULL, NULL, 182),
(166, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Vivi Nadillah, A.Md.Kep', 'vivi', NULL, '310413', NULL, NULL, 188),
(167, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Agung Dwi Saputra, A.Md.Kep', 'agung', NULL, '123456', NULL, NULL, 186),
(168, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Syifa Nur Faujiah, A.Md.Kep', 'syifa n', NULL, '1234567', NULL, NULL, 184),
(169, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Riza Fahlevi, A.Md.Kep', 'riza', NULL, '123456', NULL, NULL, 189),
(170, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ahmad Rifai, Amd.Kep', 'rifai', NULL, '123456', NULL, NULL, 193),
(171, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Siti Joharatul Fikriah, A.Md.Kep', 'johar', NULL, '925089', NULL, NULL, 185),
(172, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Erwin D', '170301', NULL, '123456', NULL, NULL, 196),
(173, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dwi Indra Prasetyo, AMK', 'dwi', NULL, '654321', NULL, NULL, 175),
(174, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Mardiana Ismaningsih, dr.', 'Mardiana', NULL, '654321', NULL, NULL, 195),
(175, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Mardiana Ismaningsih, dr', 'Mardiana Ismaningsih', NULL, '123456', NULL, NULL, 197),
(176, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Bagus Tridana Mulia, A.Md.Kep', 'bagus', NULL, '273098', NULL, NULL, 187),
(177, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ruthsuyata Siagian, dr.', 'ruthsuyata', NULL, '123456', NULL, NULL, 199),
(178, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Sondang Virginia, dr.', 'virginia', NULL, '123456', NULL, NULL, 201),
(179, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Arevia Mega Diduta Utami. dr', 'arevia', NULL, '123456', NULL, NULL, 202),
(180, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Victor Anderson CH Nguru, dr.', 'victor', NULL, '123456', NULL, NULL, 203),
(181, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Ganjar Nugraha', 'ganjar', NULL, '070023', NULL, NULL, 198),
(182, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Kasmiyati, AMK', 'kas', NULL, '123456', NULL, NULL, 174),
(183, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Danang Adi Kusuma, A.Md.Kep', 'Danang', NULL, '12345678', NULL, NULL, 206),
(184, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Yuliana Sartika, A.Md.Kep', 'Yuliana', NULL, '123456', NULL, NULL, 207),
(185, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Yuliana Ade Putri, A.Md.Kep', 'yuliana ade', NULL, 'Angel21', NULL, NULL, 208),
(186, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Atmiati', 'Atmiati', NULL, '09071991', NULL, NULL, 209),
(187, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Merty Supriharti Dr', 'Merty', NULL, '123456', NULL, NULL, 210),
(188, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ratna Dillah', 'Ratna', NULL, 'pelangi', NULL, NULL, 205),
(189, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Wika Karunia Lestari, S.Tr.Keb', 'wika', NULL, 'alhamdulillah', NULL, NULL, 212),
(190, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Umairoh', 'umairoh', NULL, 'p@ssw0rd', NULL, NULL, 204),
(191, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Siti Farhah. A.Md.RMIK', 'farhah', NULL, '159159', NULL, NULL, 159),
(192, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Gigih Herlambang', 'gigih', NULL, '123456', NULL, NULL, 216),
(193, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dahlia', 'Dahlia', NULL, '123456', NULL, NULL, 217),
(194, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'EDELWEIS', 'EDELWEIS', NULL, '123456', NULL, NULL, 218),
(195, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Indah Ari Utari', 'indah', NULL, '12345678', NULL, NULL, 214),
(196, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Vitriyana Manalu', 'vitri', NULL, '123456', NULL, NULL, 215),
(197, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Angga Meda Mahardhika, dr', 'Angga', NULL, '1234567', NULL, NULL, 224),
(198, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Astuti Irani, AMd. AK.', 'Rani', NULL, '123456', NULL, NULL, 155),
(199, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nopa, AMK', 'nopa', NULL, '654321', NULL, NULL, 222),
(200, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nunung Latofah, S.AP', 'nunung', NULL, '123456', NULL, NULL, 157),
(201, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Muhlisoh, A.Md.Keb', 'lilis', NULL, '123456', NULL, NULL, 221),
(202, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Arziani Thasya', 'Arziani', NULL, '123456', NULL, NULL, 226),
(203, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ayu Pratidina', 'Ayu P', NULL, '631206', NULL, NULL, 227),
(204, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. ANA VERAWATY', 'ana', NULL, '123456', NULL, NULL, 230),
(205, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'AHMAD AZHARI', 'azhari', NULL, '121212', NULL, NULL, 229),
(206, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ns. Pita Romawati, S.Kep', 'pita', NULL, '12345678', NULL, NULL, 223),
(207, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Winny, Sp.KFR', 'winny', NULL, 'William@1961', NULL, NULL, 232),
(208, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ellyo Ahmad Reza', 'Ellyo', NULL, '123456', NULL, NULL, 235),
(209, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dr. Muhamad Yugo Hario Sakti Dua, Sp.P.D', 'hario', NULL, '000000', NULL, NULL, 236),
(210, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Adhika Nugraha', 'adhika', NULL, '526532', NULL, NULL, 234),
(211, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Sheila Dwi A P', 'Sheila', NULL, '654321', NULL, NULL, 238),
(212, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Puji Rahayu', 'puji', NULL, '123456', NULL, NULL, 239),
(213, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Siti Rokhmah', 'siti r', NULL, '123456', NULL, NULL, 240),
(214, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Zulaikha Ayu Hakli', 'zulaikha', NULL, '123456', NULL, NULL, 241),
(215, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Eva Widiyanti', 'eva', NULL, 'gakmau', NULL, NULL, 242),
(216, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ayu Meliyani Solihah', 'ayu meliyanih', NULL, '654321', NULL, NULL, 243),
(217, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Olivia Widha Pratiwi', 'olivia', NULL, '123456', NULL, NULL, 244),
(218, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dina Widyaningrum', 'dina w', NULL, '111111', NULL, NULL, 245),
(219, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nada Putri Rubiyana', 'nada', NULL, '123456', NULL, NULL, 246),
(220, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Susy Ambar Wati', 'susy', NULL, '654321', NULL, NULL, 247),
(221, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Choirunisa', 'choirunisa', NULL, '112233', NULL, NULL, 250),
(222, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Gita Afriani', 'gita', NULL, '112233', NULL, NULL, 251),
(223, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Rita Oktavia', 'rita', NULL, '123456', NULL, NULL, 252),
(224, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Indah Nurjanah', 'indah n', NULL, 'kepoasli', NULL, NULL, 253),
(225, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ijtihad Nur Habibah', 'ijtihad', NULL, '011121', NULL, NULL, 254),
(226, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Mia Amalia', 'mia', NULL, '123456', NULL, NULL, 255),
(227, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ajeng Putriyani', 'ajeng', NULL, '000000', NULL, NULL, 256),
(228, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Bella Sonia Junita', 'bella', NULL, '123456', NULL, NULL, 257),
(229, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Gita Fepbri Widdona', 'gita f', NULL, '369147', NULL, NULL, 258),
(230, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Feberianti Sihotang', 'Febri', NULL, '123456', NULL, NULL, 259),
(231, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Aulia Nur Afifah', 'aulia', NULL, '222222', NULL, NULL, 261),
(232, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Erdin Dwi Prasetya', 'Erdin', NULL, '123456', NULL, NULL, 262),
(233, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Wiwin Rigianti', 'wiwin', NULL, '112233', NULL, NULL, 263),
(234, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Reza Amelia', 'amelia', NULL, '654321', NULL, NULL, 265),
(235, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Wayan Lia Suwastuti', 'lia', NULL, '7777777', NULL, NULL, 266),
(236, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Daifi Sukmasari', 'daifi', NULL, 'D191100', NULL, NULL, 267),
(237, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Ramdhani Hartono Saputra', 'ramdhani', NULL, '123456', NULL, NULL, 264),
(238, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Diah Kurnia Yussela, A.Md.Keb, SKM', 'diah', NULL, '771988', NULL, NULL, 21),
(239, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Rizka Aulia Safitri', 'rizka', NULL, '123456', NULL, NULL, 233),
(240, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'R. Muhammad Wawan Purwana Wahyudin', 'wawan', NULL, '123456', NULL, NULL, 272),
(241, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Subhan Galih Prakasi', 'subhan', NULL, 'subhan190993', NULL, NULL, 270),
(242, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Madha Surya', 'madha', NULL, '123456', NULL, NULL, 271),
(243, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dr. Satriyo Kusbandono, Sp.PD', 'satriyo', NULL, '123456', NULL, NULL, 275),
(244, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Apt. Ari Tuti Widia Astuti., S.Farm', 'widia', NULL, '220496', NULL, NULL, 237),
(245, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Apt. Dyna Oki Wulandari., S.Farm', 'dyna', NULL, 'fufu1221', NULL, NULL, 268),
(246, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dita Puspa Wulansari', 'dita', NULL, '123456', NULL, NULL, 260),
(247, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nur Ardianty', 'Ardianty', NULL, '123456', NULL, NULL, 277),
(248, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Reza Dwi Saputra', 'reza', NULL, '020317', NULL, NULL, 269),
(249, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Evi Septiani', 'Evi', NULL, '123456', NULL, NULL, 276),
(250, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Rafli Mahendra Priyatno', 'Rafli', NULL, 'rr1605', NULL, NULL, 274),
(251, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'transit igd', 'TRANSIT IGD', NULL, '123456', NULL, NULL, 278),
(252, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'wijaya kusuma', 'wijaya kusuma', NULL, '123456', NULL, NULL, 319),
(253, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'SAKURA', 'sakura', NULL, '123456', NULL, NULL, 334),
(254, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Anderias Julius Bainkabel', 'Anderias', NULL, '555111', NULL, NULL, 318),
(255, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Kristia Heriyati', 'kristia', NULL, '123456', NULL, NULL, 284),
(256, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Heni Setia Wati', 'heni', NULL, '123456', NULL, NULL, 332),
(257, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ermawati', 'ermawati', NULL, '123456', NULL, NULL, 279),
(258, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Heri Saputra', 'heri', NULL, '123456', NULL, NULL, 280),
(259, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ocsha Galuh Pradana', 'ocsha', NULL, '123456', NULL, NULL, 306),
(260, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Indrawati', 'indrawati', NULL, '123456', NULL, NULL, 314),
(261, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Riki Taufiki Firdausy', 'riki', NULL, '123456', NULL, NULL, 341),
(262, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'M. Pebuarivan Rahman', 'Pebuarivan', NULL, '123456', NULL, NULL, 305),
(263, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Iqbal Maulana Putra', 'iqbal', NULL, '123456', NULL, NULL, 291),
(264, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Cahya Annisa Putri', 'cahya', NULL, '123456', NULL, NULL, 339),
(265, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Teddy Lahengkeng S', 'Teddy', NULL, '123456', NULL, NULL, 342),
(266, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Arista Nevyana Bella', 'arista', NULL, '123456', NULL, NULL, 293),
(267, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Muhamad Redho Rahman Pratama', 'redho', NULL, '123456', NULL, NULL, 322),
(268, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Kartika Widyasari', 'kara', NULL, '123456', NULL, NULL, 340),
(269, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'M. Rusdi', 'rusdi', NULL, '123456', NULL, NULL, 299),
(270, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Suchipto', 'suchipto', NULL, '123456', NULL, NULL, 297),
(271, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Winda Sulistyowati', 'winda', NULL, '123456', NULL, NULL, 331),
(272, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Augustin Mega Anjani', 'augustin', NULL, '123456', NULL, NULL, 324),
(273, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Riska Safitri', 'riska', NULL, '123456', NULL, NULL, 295),
(274, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nok Nur Fitria', 'nur', NULL, '123456', NULL, NULL, 281),
(275, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Juandi', 'juandi', NULL, '123456', NULL, NULL, 307),
(276, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Rosse Anggraeny', 'rosse', NULL, '123456', NULL, NULL, 294),
(277, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nathalia Dora', 'nathalia', NULL, '123456', NULL, NULL, 320),
(278, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Raehana', 'raehana123', NULL, '123456', NULL, NULL, 315),
(279, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nurul Ami Fahlatul Ambia', 'ami', NULL, '123456', NULL, NULL, 303),
(280, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Neni Kania, SE. MPH.', 'neni', NULL, '260469sam', NULL, NULL, 349),
(281, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Muhammad Ari Pratama', 'ari', NULL, '123456', NULL, NULL, 300),
(282, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Muhammad Ripay Nur Sepdi', 'ripay', NULL, '123456', NULL, NULL, 321),
(283, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Lovena Sari, M. Ked (DV), Sp. DV', 'lovena', NULL, '888888', NULL, NULL, 351),
(284, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Rima Melati, Sp. AK, Sp. OK', 'rima', NULL, '123456', NULL, NULL, 352),
(285, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Adrian Ridski Harsono, Sp. N', 'Adrian', NULL, 'arhspn', NULL, NULL, 356),
(286, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Cempaka Dwi Setyasih', 'Cempaka', NULL, '160424', NULL, NULL, 357),
(287, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ayu Fitri Lestianti, A.md, RMIK', 'Ayu F', NULL, '010101', NULL, NULL, 220),
(288, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Dhony Abdul Kharist', 'dhony', NULL, '654321', NULL, NULL, 333),
(289, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Andi Ayu Faradiba Mudjahidin', 'yoe', NULL, '123456', NULL, NULL, 311),
(290, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Diah Ayu Adiati', 'Ayu', NULL, '654321', NULL, NULL, 309),
(291, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Siti Juhroh', 'juhroh', NULL, '123456', NULL, NULL, 345),
(292, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Riri Amiati', 'RIRI', NULL, '777777', NULL, NULL, 359),
(293, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Muhammad Nino Farizal', 'nino', NULL, 'guaganteng', NULL, NULL, 343),
(294, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Muhammad Khoerurrijal', 'khoerurrijal', NULL, '122021', NULL, NULL, 365),
(295, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'drg. Michael Pangestu, Sp. KG', 'michael', NULL, 'hihihi', NULL, NULL, 364),
(296, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Riady Ashari, Sp. A', 'riyadi', NULL, '654321', NULL, NULL, 363),
(297, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Zousepin Akbar', 'zousepin', NULL, '025888', NULL, NULL, 366),
(298, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. M Darussalam Darwis', 'Darwis', NULL, '123456', NULL, NULL, 371),
(299, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Ranggahesa Wibawa Yudhisty Pramana', 'Rangga', NULL, '123456', NULL, NULL, 372),
(300, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Roy Martino, Sp. An', 'Roy', NULL, '777777', NULL, NULL, 374),
(301, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Novy Dewi Rahayu', 'novy d', NULL, '110606', NULL, NULL, 370),
(302, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Riezalisnoor Maulana Akbar', 'rieza', NULL, '070100', NULL, NULL, 375),
(303, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Rudi Hermansyah, Sp. B', 'Rudi', NULL, '123456', NULL, NULL, 376),
(304, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Pipit Kasiani', 'Pipit', NULL, '654321', NULL, NULL, 355),
(305, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Laily Ridawati, Sp.PD', 'Laily', NULL, '240688', NULL, NULL, 377),
(306, 0, '2023-02-16 04:14:12', 0, '2023-02-17 01:50:01', NULL, NULL, 'Syam Apriansyah', 'syam', NULL, 'uhuy', 'pTKy78lEYDnPTBmMQkoWkDxmMSIDoml1bDeav7M1sH8ElSDSuM0F9rlxsysn', 2, 354),
(307, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Sultan Alfian', 'alfian', NULL, '7654321', NULL, NULL, 382),
(308, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Endah Rizqi Winantri', 'endah', NULL, '990615', NULL, NULL, 373),
(309, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Vania Shaula', 'Vania', NULL, '123456', NULL, NULL, 386),
(310, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Vannessa Karenina', 'Vannessa', NULL, '123456', NULL, NULL, 385),
(311, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Syari Maisyarah Rahman, Sp. Rad', 'Maisyarah', NULL, '123456', NULL, NULL, 387),
(312, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Aminah Asri', 'aminah', NULL, '100519', NULL, NULL, 383),
(313, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Laili Fathiyah, MPH', 'lailifathiyah', NULL, '17zabran', NULL, NULL, 388),
(314, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ratna Komari, AMK', 'komari', NULL, 'Tahun2023', NULL, NULL, 57),
(315, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ade Novianti', 'ade novianti', NULL, '7654321', NULL, NULL, 389),
(316, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Baktiar Aprianto', 'Baktiar', NULL, '7654321', NULL, NULL, 368),
(317, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Putri Cahya Kamila Paputungan', 'Putri c', NULL, '123456', NULL, NULL, 380),
(318, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Edi Supriadi', 'Edi S', NULL, '123456', NULL, NULL, 384),
(319, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Siti Sarah Rachmadianti', 'Siti Sarah', NULL, '111111', NULL, NULL, 390),
(320, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'drg. Cut Fadluna Paramita, Sp. Ort', 'Fadluna', NULL, 'Maryam08', NULL, NULL, 391),
(321, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nurul Fatimah', 'nurullfatiimah', NULL, '123456', NULL, NULL, 58),
(322, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Eva Handini', 'handinieva', NULL, '654321', NULL, NULL, 362),
(323, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nurjanah', 'cenung', NULL, '090909', NULL, NULL, 60),
(324, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Viviana Suwikno', 'viviana', NULL, '210292', NULL, NULL, 59),
(325, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Anisa Habsari Sulistyo Rini', 'anisa', NULL, '181818', NULL, NULL, 190),
(326, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Raedy Ruwanda Susanto, Sp A.', 'raedy', NULL, '141118', NULL, NULL, 395),
(327, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Khonita Adian Utami, Sp. N', 'khonita', NULL, '654321', NULL, NULL, 396),
(328, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Aprilia Dian Kusuma Rini', 'aprilia', NULL, '112233', NULL, NULL, 393),
(329, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Supandi Rejeki', 'supandi', NULL, '260894', NULL, NULL, 397),
(330, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Wandra Yardi  D', 'Wandra', NULL, '123456789', NULL, NULL, 381),
(331, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Nur’aini Alamanda, Sp.An', 'manda', NULL, 'PisanganBaru04', NULL, NULL, 399),
(332, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Rivo Mario Warouw Lintuuran, Sp.KJ', 'rivo', NULL, '123456', NULL, NULL, 400),
(333, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ive Hana Ruth Sitepu', 'ivehana', NULL, '654321', NULL, NULL, 405),
(334, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Yosep Pransiskus Riki Dosi', 'yosep', NULL, '987654321', NULL, NULL, 404),
(335, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Vina Arum Sari', 'vinaarum', NULL, 'qwerty', NULL, NULL, 407),
(336, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Raehana', 'raehana', NULL, '011120', NULL, NULL, 408),
(337, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Eka Ajheng Widyawati', 'ekaajheng', NULL, '210497', NULL, NULL, 406),
(338, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Iriani Utami Ramdona', 'iriani', NULL, '123456', NULL, NULL, 411),
(339, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Vista Yulistia', 'vista', NULL, '123456', NULL, NULL, 416),
(340, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Fauziah Hasanah', 'fauziah', NULL, '123456', NULL, NULL, 413),
(341, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Siti Latifah', 'siti', NULL, '123456', NULL, NULL, 415),
(342, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Krisna Ramadhan Saputra', 'krisna', NULL, '123456', NULL, NULL, 403),
(343, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Muhammad Zulfa', 'm zulfa', NULL, '123456', NULL, NULL, 414),
(344, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Andi Febrina Sosiawati', 'febrina', NULL, '010997', NULL, NULL, 412),
(345, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Tiara Kusuma Dewi', 'tiara', NULL, '123456', NULL, NULL, 418),
(346, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Shaula Adrea Rusdiana Nasution', 'shaula', NULL, '123456', NULL, NULL, 420),
(347, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Wiji Tri Sayekti', 'wiji', NULL, '123456', NULL, NULL, 417),
(348, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Yusron Azkiyah', 'Yusron', NULL, '123456', NULL, NULL, 378),
(349, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Josse Nathan Goenawan', 'nathan', NULL, '123456', NULL, NULL, 428),
(350, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Isma Fadlilatus Sadiyah', 'isma', NULL, '123456', NULL, NULL, 429),
(351, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Bahesty Cut Nyak Din', 'bahesty', NULL, '123456', NULL, NULL, 427),
(352, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Muhammad Taufiq R. Dengo', 'taufiq', NULL, '123456', NULL, NULL, 392),
(353, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Ahmad Samdani, SKM., MPH.', 'samdani', NULL, '260469sam', NULL, NULL, 436),
(354, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Priyanka Ganesa Utami, Sp. N', 'Priyanka', NULL, '022079', NULL, NULL, 439),
(355, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Arrival Rahman', 'arrival', NULL, '123456', NULL, NULL, 430),
(356, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Delvina Anastasia Pertiwi', 'delvina', NULL, '123456', NULL, NULL, 431),
(357, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Semadela Solichin Putri', 'semadela', NULL, '123456', NULL, NULL, 437),
(358, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Adillah Afrilia Syahwina Pado', 'adillah', NULL, '123456', NULL, NULL, 438),
(359, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Nina Nurjanah', 'ninur', NULL, '123456', NULL, NULL, 435),
(360, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Eka Sarima Hardiani', 'eka', NULL, '123456', NULL, NULL, 434),
(361, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Frodine Satriati Aer', 'inne', NULL, '123456', NULL, NULL, 367),
(362, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Farida Nurhayati', 'farida', NULL, '123456', NULL, NULL, 442),
(363, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'drg. Febrianti Adi Satria', 'Febrianti', NULL, '123456', NULL, NULL, 443),
(364, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Siti Mariah', 'siti m', NULL, '123456', NULL, NULL, 433),
(365, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'Rossmeryanda Rezina', 'Rezina', NULL, '123456', NULL, NULL, 423),
(366, 0, '2023-02-16 04:14:12', NULL, NULL, NULL, NULL, 'dr. Cendy Andestria', 'Cendy', NULL, '123456', NULL, NULL, 444);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`bagian_id`) USING BTREE;

--
-- Indexes for table `hakakses`
--
ALTER TABLE `hakakses`
  ADD PRIMARY KEY (`hakakses_id`);

--
-- Indexes for table `jenis_pelatihan`
--
ALTER TABLE `jenis_pelatihan`
  ADD PRIMARY KEY (`jenis_pelatihan_id`) USING BTREE;

--
-- Indexes for table `jenis_pendidikan`
--
ALTER TABLE `jenis_pendidikan`
  ADD PRIMARY KEY (`jenis_pendidikan_id`) USING BTREE;

--
-- Indexes for table `kompetensi`
--
ALTER TABLE `kompetensi`
  ADD PRIMARY KEY (`kompetensi_id`) USING BTREE;

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`) USING BTREE;

--
-- Indexes for table `pegawai_detail`
--
ALTER TABLE `pegawai_detail`
  ADD PRIMARY KEY (`pegawai_detail_id`);

--
-- Indexes for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD PRIMARY KEY (`pelatihan_id`) USING BTREE;

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`pendidikan_id`);

--
-- Indexes for table `profesi`
--
ALTER TABLE `profesi`
  ADD PRIMARY KEY (`profesi_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hakakses`
--
ALTER TABLE `hakakses`
  MODIFY `hakakses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis_pelatihan`
--
ALTER TABLE `jenis_pelatihan`
  MODIFY `jenis_pelatihan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis_pendidikan`
--
ALTER TABLE `jenis_pendidikan`
  MODIFY `jenis_pendidikan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kompetensi`
--
ALTER TABLE `kompetensi`
  MODIFY `kompetensi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pegawai_detail`
--
ALTER TABLE `pegawai_detail`
  MODIFY `pegawai_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pelatihan`
--
ALTER TABLE `pelatihan`
  MODIFY `pelatihan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `pendidikan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
