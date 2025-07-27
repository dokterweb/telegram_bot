-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2025 at 05:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telegram_bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `bpjs`
--

CREATE TABLE `bpjs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `tenagakerja_file` varchar(255) NOT NULL,
  `kesehatan_file` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bpjs`
--

INSERT INTO `bpjs` (`id`, `worker_id`, `tenagakerja_file`, `kesehatan_file`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'bpjs/tenagakerja/bpjs_Hendra_Gunawan.pdf', 'bpjs/kesehatan/bpjs_Hendra_Gunawan.pdf', NULL, '2025-06-10 02:07:20', '2025-06-10 02:18:39'),
(2, 2, 'bpjs/tenagakerja/bpjs_Eka_Purnama.pdf', 'bpjs/kesehatan/bpjs_Eka_Purnama.pdf', NULL, '2025-06-10 02:07:31', '2025-06-10 02:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('dokterwebid@gmail.com|127.0.0.1', 'i:1;', 1751208080),
('dokterwebid@gmail.com|127.0.0.1:timer', 'i:1751208080;', 1751208080),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:0:{}s:11:\"permissions\";a:0:{}s:5:\"roles\";a:0:{}}', 1751625094);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuti_tahunans`
--

CREATE TABLE `cuti_tahunans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `jatahcuti` mediumint(9) NOT NULL,
  `sisacuti` mediumint(9) NOT NULL,
  `telahcuti` mediumint(9) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuti_tahunans`
--

INSERT INTO `cuti_tahunans` (`id`, `worker_id`, `jatahcuti`, `sisacuti`, `telahcuti`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 30, 10, 15, NULL, '2025-05-19 22:00:15', '2025-05-19 22:01:09'),
(2, 2, 24, 4, 20, NULL, '2025-05-19 22:00:15', '2025-05-19 22:00:15'),
(3, 3, 24, 4, 20, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(4, 4, 24, 4, 20, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(5, 5, 24, 4, 20, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(6, 6, 24, 4, 20, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(7, 7, 24, 2, 22, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(8, 8, 20, 2, 18, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(9, 9, 20, 2, 18, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(10, 10, 20, 2, 18, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(11, 11, 20, 2, 18, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(12, 12, 20, 2, 18, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(13, 13, 20, 2, 18, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(14, 14, 20, 6, 14, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(15, 15, 20, 6, 14, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(16, 16, 18, 6, 12, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(17, 17, 18, 6, 12, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(18, 18, 18, 6, 12, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(19, 19, 18, 6, 12, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(20, 20, 18, 5, 13, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(21, 21, 18, 5, 13, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(22, 22, 18, 5, 13, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(23, 23, 16, 5, 11, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(24, 24, 16, 5, 11, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(25, 25, 16, 7, 9, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(26, 26, 16, 7, 9, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16'),
(27, 27, 16, 7, 9, NULL, '2025-05-19 22:00:16', '2025-05-19 22:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `etikets`
--

CREATE TABLE `etikets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `tiket_file` varchar(255) NOT NULL,
  `tgl_tiket` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etikets`
--

INSERT INTO `etikets` (`id`, `worker_id`, `tiket_file`, `tgl_tiket`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'tiket_files/sample1.pdf', '2025-04-05', NULL, '2025-06-09 08:04:56', '2025-06-09 08:04:56'),
(2, 2, 'tiket_files/sample2.pdf', '2025-04-04', NULL, '2025-06-09 18:24:14', '2025-06-09 18:24:14'),
(3, 4, 'tiket_files/C:\\Users\\Dokterweb\\AppData\\Local\\Temp\\phpE842.tmp', '2025-04-11', '2025-06-14 19:39:06', '2025-06-14 19:38:51', '2025-06-14 19:39:06'),
(4, 7, 'tiket_files/Formulir_Pemberian_Bantuan.pdf', '2025-04-01', NULL, '2025-06-14 19:42:27', '2025-06-16 00:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formlains`
--

CREATE TABLE `formlains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `formlain_file` varchar(255) DEFAULT NULL,
  `tgl_mintaform` date NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formlains`
--

INSERT INTO `formlains` (`id`, `worker_id`, `formlain_file`, `tgl_mintaform`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2025-06-25', 'form satu', '2025-06-25 02:59:24', '2025-06-25 02:59:24'),
(2, 1, NULL, '2025-06-25', 'form dua', '2025-06-25 03:00:26', '2025-06-25 03:00:26'),
(3, 1, NULL, '2025-06-25', 'surat dua', '2025-06-25 03:01:47', '2025-06-25 03:01:47'),
(4, 1, NULL, '2025-06-25', 'form lima', '2025-06-25 04:03:23', '2025-06-25 04:03:23'),
(5, 1, NULL, '2025-06-25', 'surat enam', '2025-06-25 04:04:25', '2025-06-25 04:04:25'),
(6, 1, NULL, '2025-06-25', 'surat tujuh', '2025-06-25 04:10:51', '2025-06-25 04:10:51'),
(7, 1, NULL, '2025-06-25', 'form tujuh', '2025-06-25 04:11:30', '2025-06-25 04:11:30'),
(8, 1, NULL, '2025-06-30', 'form sebelas', '2025-06-29 21:45:59', '2025-06-29 21:45:59'),
(9, 1, NULL, '2025-06-30', 'dua belas', '2025-06-29 22:04:00', '2025-06-29 22:04:00'),
(10, 1, NULL, '2025-06-30', 'form lima belas', '2025-06-29 22:32:00', '2025-06-29 22:32:00'),
(11, 1, NULL, '2025-06-30', 'form dua satu', '2025-06-29 22:38:34', '2025-06-29 22:38:34'),
(12, 362, NULL, '2025-06-30', 'form fulanah', '2025-06-30 00:25:27', '2025-06-30 00:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `formtemplates`
--

CREATE TABLE `formtemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `form_file` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formtemplates`
--

INSERT INTO `formtemplates` (`id`, `nama_file`, `form_file`, `keterangan`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Form Pengajuan Surat Tugas', 'form_file/Form Pengajuan Surat Tugas.pdf', 'Form Pengajuan Surat Tugas', NULL, '2025-06-11 18:52:47', '2025-06-18 19:03:16'),
(2, 'Form Deklarasi Perjalan Dinas', 'form_file/Form Deklarasi Perjalan Dinas.pdf', 'Form Deklarasi Perjalan Dinas', NULL, '2025-06-11 19:09:18', '2025-06-18 19:04:14'),
(3, 'Form Pengajuan Cuti Besar', 'form_file/Form Pengajuan Cuti Besar.pdf', 'Form Pengajuan Cuti Besar', NULL, '2025-06-18 19:08:08', '2025-06-18 19:08:08'),
(4, 'From Pengajuan Izin Diluar Tanggungan Perusahaan', 'form_file/Form izin diluar tanggungan perusahaan.pdf', 'From Pengajuan Izin Diluar Tanggungan Perusahaan', NULL, '2025-06-18 19:10:08', '2025-06-18 19:10:08'),
(5, 'Form Perubahan Rek. Karyawan', 'form_file/Form Perubahan Rekening karyawan.pdf', 'Form Perubahan Rek. Karyawan', NULL, '2025-06-18 19:11:44', '2025-06-18 19:11:44'),
(6, 'Form Konsultas Medis', 'form_file/Form Konsultasi Medis.pdf', 'Form Konsultas Medis', NULL, '2025-06-18 19:12:02', '2025-06-18 19:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `gajis`
--

CREATE TABLE `gajis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `nama_file` varchar(255) DEFAULT NULL,
  `path_file` varchar(255) DEFAULT NULL,
  `periode` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gajis`
--

INSERT INTO `gajis` (`id`, `worker_id`, `nama_file`, `path_file`, `periode`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 357, 'slip_gaji_10721004_2025-01-01.pdf', 'slip_gaji/final/slip_gaji_10721004_2025-01-01.pdf', '2025-01-01', NULL, '2025-06-09 07:49:43', '2025-06-09 07:49:43'),
(2, 358, 'slip_gaji_10721005_2025-01-01.pdf', 'slip_gaji/final/slip_gaji_10721005_2025-01-01.pdf', '2025-01-01', NULL, '2025-06-09 07:49:43', '2025-06-09 07:49:43'),
(3, 359, 'slip_gaji_10721006_2025-01-01.pdf', 'slip_gaji/final/slip_gaji_10721006_2025-01-01.pdf', '2025-01-01', NULL, '2025-06-09 07:49:44', '2025-06-09 07:49:44'),
(4, 360, 'slip_gaji_10721008_2025-01-01.pdf', 'slip_gaji/final/slip_gaji_10721008_2025-01-01.pdf', '2025-01-01', NULL, '2025-06-09 07:49:44', '2025-06-09 07:49:44'),
(5, 361, 'slip_gaji_10721009_2025-01-01.pdf', 'slip_gaji/final/slip_gaji_10721009_2025-01-01.pdf', '2025-01-01', '2025-06-16 01:22:13', '2025-06-09 07:49:44', '2025-06-16 01:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_01_095040_create_permission_tables', 1),
(5, '2025_04_02_035410_create_workers_table', 1),
(6, '2025_04_04_043624_create_gajis_table', 1),
(7, '2025_04_27_080149_create_etikets_table', 2),
(8, '2025_04_30_023830_create_bpjs_table', 3),
(9, '2025_05_01_143321_create_surat_kerjas_table', 4),
(10, '2025_05_03_143953_create_surat_tugas_table', 5),
(11, '2025_05_04_071949_create_minta_forms_table', 6),
(12, '2025_05_13_022828_create_cuti_tahunans_table', 7),
(13, '2025_05_19_024548_create_overtimes_table', 8),
(14, '2025_05_26_050328_create_usls_table', 9),
(15, '2025_05_27_042501_create_rapel_usls_table', 10),
(16, '2025_05_25_042501_create_rapel_usls_table', 11),
(17, '2025_05_26_050329_create_usls_table', 12),
(18, '2025_05_27_074805_add_worker_id_to_rapel_usls_table', 13),
(19, '2025_06_02_025223_create_telegram_users_table', 14),
(20, '2025_06_03_095355_create_telegram_users_table', 15),
(21, '2025_06_11_032905_create_surat_aktifs_table', 16),
(22, '2025_06_11_072034_create_surat_tetap_promosis_table', 17),
(23, '2025_06_11_142640_create_formtemplates_table', 18),
(24, '2025_06_24_023205_create_formlains_table', 19),
(25, '2025_06_24_123039_create_suratlains_table', 20),
(26, '2025_06_27_031033_create_surveys_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `minta_forms`
--

CREATE TABLE `minta_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `minta_form_file` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minta_forms`
--

INSERT INTO `minta_forms` (`id`, `worker_id`, `minta_form_file`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 16, 'minta_form_files/2DZQR8LTUKXaLKuxx4CbOSHYA82492ylEwG4MhOg.pdf', NULL, '2025-05-04 19:22:37', '2025-05-04 20:55:37'),
(2, 15, 'minta_form_files/joXoGkVVCW4CRBBKTTzoSppoOlkvmMJL40ThOmLz.pdf', '2025-05-05 00:27:32', '2025-05-04 19:22:49', '2025-05-05 00:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1077),
(2, 'App\\Models\\User', 1078),
(2, 'App\\Models\\User', 1079),
(2, 'App\\Models\\User', 1087),
(2, 'App\\Models\\User', 1088);

-- --------------------------------------------------------

--
-- Table structure for table `overtimes`
--

CREATE TABLE `overtimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `path_file` varchar(255) NOT NULL,
  `periode` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overtimes`
--

INSERT INTO `overtimes` (`id`, `worker_id`, `nama_file`, `path_file`, `periode`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 326, 'overtime_10719026_20250401.pdf', 'overtime_files/overtime_10719026_20250401.pdf', '2025-04-01', '2025-06-16 01:30:07', '2025-05-19 21:55:11', '2025-06-16 01:30:07'),
(2, 172, 'overtime_10717052_20250401.pdf', 'overtime_files/overtime_10717052_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:12', '2025-05-19 21:55:12'),
(3, 567, 'overtime_10722143_20250401.pdf', 'overtime_files/overtime_10722143_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:12', '2025-05-19 21:55:12'),
(4, 62, 'overtime_10113947_20250401.pdf', 'overtime_files/overtime_10113947_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:12', '2025-05-19 21:55:12'),
(5, 29, 'overtime_10112624_20250401.pdf', 'overtime_files/overtime_10112624_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:12', '2025-05-19 21:55:12'),
(6, 950, 'overtime_10724079_20250401.pdf', 'overtime_files/overtime_10724079_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:12', '2025-05-19 21:55:12'),
(7, 901, 'overtime_10724025_20250401.pdf', 'overtime_files/overtime_10724025_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:12', '2025-05-19 21:55:12'),
(8, 922, 'overtime_10724047_20250401.pdf', 'overtime_files/overtime_10724047_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:13', '2025-05-19 21:55:13'),
(9, 882, 'overtime_10123250_20250401.pdf', 'overtime_files/overtime_10123250_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:13', '2025-05-19 21:55:13'),
(10, 92, 'overtime_10511045_20250401.pdf', 'overtime_files/overtime_10511045_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:13', '2025-05-19 21:55:13'),
(11, 434, 'overtime_10721092_20250401.pdf', 'overtime_files/overtime_10721092_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:13', '2025-05-19 21:55:13'),
(12, 407, 'overtime_10721066_20250401.pdf', 'overtime_files/overtime_10721066_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:13', '2025-05-19 21:55:13'),
(13, 939, 'overtime_10724067_20250401.pdf', 'overtime_files/overtime_10724067_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:13', '2025-05-19 21:55:13'),
(14, 1, 'overtime_10723039_20250401.pdf', 'overtime_files/overtime_10723039_20250401.pdf', '2025-04-01', NULL, '2025-05-19 21:55:13', '2025-05-19 21:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rapel_usls`
--

CREATE TABLE `rapel_usls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED DEFAULT NULL,
  `totalhadir` mediumint(9) NOT NULL,
  `tarif` int(11) DEFAULT NULL,
  `rapelan` int(11) DEFAULT NULL,
  `totalusl` int(11) DEFAULT NULL,
  `rapel_file` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rapel_usls`
--

INSERT INTO `rapel_usls` (`id`, `worker_id`, `totalhadir`, `tarif`, `rapelan`, `totalusl`, `rapel_file`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 9, 29, 1500, 250000, 251500, 'rapel_usl/rapel_usl_250619045030.pdf', NULL, '2025-06-16 02:11:47', '2025-06-18 21:50:30'),
(2, 757, 30, 16000, 165000, 181000, 'rapel_usl/rapel_usl_250619050131.pdf', NULL, '2025-06-16 02:11:47', '2025-06-18 22:01:31'),
(3, 318, 31, 65000, 165000, 230000, 'rapel_usl/rapel_usl_250619072343.pdf', NULL, '2025-06-16 02:11:47', '2025-06-19 00:23:43'),
(4, 1, 30, 120000, 350000, 470000, 'rapel_usl/rapel_usl_250619050154.pdf', NULL, '2025-06-16 02:11:47', '2025-06-18 22:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-04-21 19:17:22', '2025-04-21 19:17:22'),
(2, 'worker', 'web', '2025-04-21 19:17:22', '2025-04-21 19:17:22'),
(3, 'spv', 'web', '2025-04-21 19:17:22', '2025-04-21 19:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4GhS589eoTdQ1Nlpw14J3UwUGng7drKY0idHAMdN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazdaRnhISXlhVHRDVmg1MEFXMFNDQzBySlo4bGRUenBOUDZKY3dXTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9sb2dpbiI7fX0=', 1751539742),
('eo8VQ0GhWZWWAExQSfwjRIeHAGet1gsTYGr4eLW5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidW5idE5GbVlNVEI2TkNCYzc5ak1BNmVQVWRueXZSdU55WW14MzVPbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1750922843),
('JwEG88cGudL7LMTB6U30bPwc5YrQTbxQlcwqFJcN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFlpNHZvbnRubTVWRWpjaE9TbHlBTDMwSEs5cTZHSENmQ3Yzc0ltayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9sb2dpbiI7fX0=', 1751211837),
('PnSLrtPRSWP4tBaga9ltYvtvDx3HqbyhjhbYCyVC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidFhWUnp5NTQ1QmFLeXZoNTlXSjV1RWh0cHhXWG5DRUlMR0o5emJuSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NTA5MDkyNTE7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3VyYXRsYWlucy8xL2VkaXQiO319', 1750913214),
('rksa9KbN9DFtpvEqR014c6DItJNkt8OtItiS5xiW', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUVdBYTN3NmFxU3M1MHpEQ2lWek9uZjl5dnZubVM1akpZbmZpNUQzbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS93b3JrZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NTEzMzgzMzA7fX0=', 1751338337),
('Tm4gUHNZky2oBbFENTShiPBchGXPqEk7CdWTESxp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGZiZ2tMVHVzYmZjQnloSmduT3YwOHI3ZFpPSzYzbWh2OFR3c1NtTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9sb2dpbiI7fX0=', 1751268601);

-- --------------------------------------------------------

--
-- Table structure for table `suratlains`
--

CREATE TABLE `suratlains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `suratlain_file` varchar(255) DEFAULT NULL,
  `tgl_mintasurat` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suratlains`
--

INSERT INTO `suratlains` (`id`, `worker_id`, `suratlain_file`, `tgl_mintasurat`, `keterangan`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'suratlain_file/1. Surat Aktif Bekerja - Alfius.pdf', '2025-06-26', 'surat satu done', NULL, '2025-06-25 20:33:12', '2025-06-25 23:52:54'),
(2, 1, 'suratlain_file/1. Surat Aktif Bekerja - Aljutung.pdf', '2025-06-26', 'surat dua done', NULL, '2025-06-25 20:33:26', '2025-06-26 00:03:21'),
(3, 1, NULL, '2025-06-26', 'surat tiga', NULL, '2025-06-26 00:37:59', '2025-06-26 00:37:59'),
(4, 1, NULL, '2025-06-30', 'surat satu', NULL, '2025-06-29 21:27:59', '2025-06-29 21:27:59'),
(5, 1, NULL, '2025-06-30', 'surat sebelas', NULL, '2025-06-29 21:31:59', '2025-06-29 21:31:59'),
(6, 1, NULL, '2025-06-30', 'form sebelas', NULL, '2025-06-29 21:45:56', '2025-06-29 21:45:56'),
(7, 1, NULL, '2025-06-30', 'form dua belas', NULL, '2025-06-29 22:01:51', '2025-06-29 22:01:51'),
(8, 1, NULL, '2025-06-30', 'dua belas', NULL, '2025-06-29 22:03:57', '2025-06-29 22:03:57'),
(9, 1, NULL, '2025-06-30', 'surat tiga belas', NULL, '2025-06-29 22:06:14', '2025-06-29 22:06:14'),
(10, 1, NULL, '2025-06-30', 'form empat belas', NULL, '2025-06-29 22:08:20', '2025-06-29 22:08:20'),
(11, 1, NULL, '2025-06-30', 'form lima belas', NULL, '2025-06-29 22:13:00', '2025-06-29 22:13:00'),
(12, 1, NULL, '2025-06-30', 'form enam belas', NULL, '2025-06-29 22:14:54', '2025-06-29 22:14:54'),
(13, 1, NULL, '2025-06-30', 'surat dua satu', NULL, '2025-06-29 22:38:49', '2025-06-29 22:38:49'),
(14, 362, 'suratlain_file/surat_aktif_bekerja_Andi Saputra.pdf', '2025-06-30', 'surat fulan ok', NULL, '2025-06-30 00:25:02', '2025-06-30 00:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `surat_aktifs`
--

CREATE TABLE `surat_aktifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `surat_aktif_file` varchar(255) NOT NULL,
  `tgl_surat_aktif` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_aktifs`
--

INSERT INTO `surat_aktifs` (`id`, `worker_id`, `surat_aktif_file`, `tgl_surat_aktif`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'surat_aktif/surat_aktif_bekerja_Citra Dewi.pdf', '2025-04-10', '2025-06-10 22:16:32', '2025-06-10 21:55:06', '2025-06-10 22:16:32'),
(2, 1, 'surat_aktif/surat_aktif_bekerja_Eka Putra.pdf', '2025-04-15', NULL, '2025-06-10 21:55:38', '2025-06-10 21:55:38'),
(3, 4, 'surat_aktif/surat_aktif_bekerja_Gina Rahayu.pdf', '2025-04-20', NULL, '2025-06-10 22:10:50', '2025-06-10 22:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `surat_kerjas`
--

CREATE TABLE `surat_kerjas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `surat_kerja_file` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_kerjas`
--

INSERT INTO `surat_kerjas` (`id`, `worker_id`, `surat_kerja_file`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 6, 'surat_kerja_file/surat_tugas_Citra_Dewi.pdf', NULL, '2025-05-02 21:40:15', '2025-06-10 07:45:11'),
(2, 9, 'surat_kerja_files/rhSWx1tbMf0jFG6yY0FXCeMEGgnqmRLUetlfxZYb.pdf', '2025-05-03 01:31:28', '2025-05-02 21:40:32', '2025-05-03 01:31:28'),
(3, 8, 'surat_kerja_files/0OM2W0MEKKHO9st6gPZ8N8szR6lKqpKaTn5iu2Eq.pdf', NULL, '2025-05-19 21:58:06', '2025-05-19 21:58:06'),
(4, 1, 'surat_kerja_file/surat_tugas_Eka_Purnama.pdf', NULL, '2025-06-10 07:40:38', '2025-06-10 07:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `surat_tetap_promosis`
--

CREATE TABLE `surat_tetap_promosis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `surat_tetap_file` varchar(255) NOT NULL,
  `tgl_surat_tetap` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_tetap_promosis`
--

INSERT INTO `surat_tetap_promosis` (`id`, `worker_id`, `surat_tetap_file`, `tgl_surat_tetap`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'surat_tetap/surat_promosi_bekerja_Dedi Pratama.pdf', '2025-04-04', NULL, '2025-06-11 01:34:26', '2025-06-11 01:34:26'),
(2, 3, 'surat_tetap/surat_promosi_bekerja_Hadi Prabowo.pdf', '2025-04-10', NULL, '2025-06-11 01:34:42', '2025-06-11 01:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `surat_tugas`
--

CREATE TABLE `surat_tugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `surat_tugas_file` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surat_tugas`
--

INSERT INTO `surat_tugas` (`id`, `worker_id`, `surat_tugas_file`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 12, 'surat_tugas/surat_tugas_Gita_Sari.pdf', NULL, '2025-05-03 08:18:35', '2025-06-10 07:36:58'),
(2, 1, 'surat_tugas_files/SwDdJEuPorLhcWnHKlz5ShnuN53pgHVNxGLyos3i.pdf', '2025-05-04 00:15:48', '2025-05-03 20:47:49', '2025-05-04 00:15:48'),
(3, 6, 'surat_tugas/surat_tugas_Hendra_Gunawan.pdf', NULL, '2025-06-10 07:22:50', '2025-06-10 07:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `survey_option` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `worker_id`, `survey_option`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, '2025-06-26 21:27:42', '2025-06-26 21:27:42'),
(2, 1, 5, NULL, '2025-06-28 22:08:50', '2025-06-28 22:08:50'),
(3, 1, 4, NULL, '2025-06-29 21:31:34', '2025-06-29 21:31:34'),
(4, 1, 3, NULL, '2025-06-29 22:39:10', '2025-06-29 22:39:10'),
(5, 362, 5, NULL, '2025-06-30 00:25:50', '2025-06-30 00:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `telegram_users`
--

CREATE TABLE `telegram_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `telegram_chat_id` bigint(20) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telegram_users`
--

INSERT INTO `telegram_users` (`id`, `worker_id`, `telegram_chat_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1303654344, NULL, '2025-06-29 08:29:39', '2025-06-29 08:29:39'),
(2, 362, 1693301956, NULL, '2025-06-30 00:24:14', '2025-06-30 00:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fulan', NULL, 'admin@admin.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(2, 'SURATA', NULL, '10109086@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(3, 'JUHANA', NULL, '10110143@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(4, 'ARIF SETIAWANTO', NULL, '10110209@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(5, 'SUGENG', NULL, '10110229@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(6, 'I GUSTI MADE WIJAYA', NULL, '10110230@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(7, 'IBNU ANDI MEINDRA', NULL, '10110245@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(8, 'BAMBANG MUJIONO', NULL, '10110249@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(9, 'YULI WIDIYANTO SETIAWAN', NULL, '10111362@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(10, 'IHSAN SATYANUGRAHA', NULL, '10111294@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(11, 'PANDU ARI NUGROHO', NULL, '10112579@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(12, 'NOVI NURBIANTO', NULL, '10111363@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(13, 'PIPIT PINANTO', NULL, '10111413@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(14, 'SIKRIS', NULL, '10111514@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(15, 'RENDRA AGUS HARIYANTO', NULL, '10112580@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(16, 'FAUZAN SUYUTI', NULL, '10111557@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(17, 'ARIEF KURNIAWAN', NULL, '10112569@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(18, 'ROMIDUK PARSAORAN TAMBA', NULL, '10112649@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(19, 'ARDANI PRASETYO', NULL, '10112653@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(20, 'FIRMANANDY KUSUMA', NULL, '10112586@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(21, 'WAHYU TRI SUSILO', NULL, '10112594@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(22, 'MUHTAROM', NULL, '10112597@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(23, 'SIYAMHUDDIN EFENDI', NULL, '10112599@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(24, 'SOFYAN SUSANTO', NULL, '10112603@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(25, 'ANTON SUSENO', NULL, '10112612@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(26, 'RULI SETIYAWAN', NULL, '10112613@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(27, 'NURUL WAHYUDI', NULL, '10112617@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(28, 'RENDI AGUSTIAN', NULL, '10112618@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(29, 'SUPRIANTO', NULL, '10112623@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(30, 'ADI SUSANTO', NULL, '10112624@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(31, 'RIMBUN LEONAR TAMPUBOLON', NULL, '10112711@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(32, 'BAMBANG SUTEJO', NULL, '10112651@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(33, 'BRONSON SIMANJUNTAK', NULL, '10112741@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(34, 'IVTANTO TRI ANANDYA', NULL, '10112681@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(35, 'LUKI EKO SUSANTO', NULL, '10112690@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(36, 'ARDINO AFRIAN', NULL, '10112796@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(37, 'YANTO', NULL, '10112696@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(38, 'ANDRA SETYAWAN', NULL, '10112699@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(39, 'GUNLIADI', NULL, '10112703@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(40, 'AGUS SUBROTO', NULL, '10112708@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(41, 'ZAINAL ARIFIN', NULL, '10112832@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(42, 'IRIYANTO', NULL, '10113917@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(43, 'ESTEPANUS TIMBA', NULL, '10112742@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(44, 'AKHMAD ROMDHON', NULL, '10112759@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(45, 'SEPTIAN DWI WAHYUDI', NULL, '10112760@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(46, 'ANDI SUWANDI', NULL, '10112777@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(47, 'ANGGA SEPTYANTO', NULL, '10112778@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(48, 'BONDAN JANALOKA MULYONO', NULL, '10112782@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(49, 'JUMIKO PRASTIYO', NULL, '10113945@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(50, 'DANY SETIAWAN', NULL, '10113964@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(51, 'MUHAMMAD ALI YUSRON', NULL, '10112798@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(52, 'SENIMAN', NULL, '10112817@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(53, 'EKO PRAYITNO', NULL, '10112840@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(54, 'SLAMET SUPRIATIN', NULL, '10112846@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(55, 'YOGI ADITYA WIDODO', NULL, '10112871@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(56, 'IRAWAN SUSILO', NULL, '10113891@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(57, 'KRIS PANTORO', NULL, '10113912@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(58, 'FERRY OCTO BARA SINAGA', NULL, '10311348@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(59, 'SLAMET SUPRIYADI', NULL, '10113919@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(60, 'BUDI HARIMAN', NULL, '10113922@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(61, 'AGUS ARIF ROHMAN', NULL, '10113943@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(62, 'FERNANDES PERY OTONG', NULL, '10312401@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(63, 'ADI SUBROTO', NULL, '10113947@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(64, 'HERNANDANG', NULL, '10113953@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(65, 'HERU SETYAWAN', NULL, '10113962@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(66, 'AJI HERMANTO', NULL, '10113963@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(67, 'SUPRIADI', NULL, '10411799@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(68, 'JAMAL SETIYONO', NULL, '10113966@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(69, 'ISNAN SUSTRIANA', NULL, '10115005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(70, 'ARIF PRABOWO', NULL, '10115006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(71, 'RIANDI NAMARA', NULL, '10117006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(72, 'DONY WICAKSONO', NULL, '10117023@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(73, 'AGUSTINUS ROMBE PAYUNG', NULL, '10411485@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(74, 'SEPTO AZIS IRAWAN', NULL, '10117031@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(75, 'WAHYUDI', NULL, '10307003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(76, 'RACHMAT', NULL, '10510012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(77, 'BERNADUS TABANG', NULL, '10308061@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(78, 'SIMON BIN ALI', NULL, '10308062@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(79, 'YANDI GUNAWAN', NULL, '10311315@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(80, 'ROHMAD SUDIONO', NULL, '10511041@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(81, 'HALIM MASRURI', NULL, '10311359@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(82, 'CHANDRA PUTRA SURYA MARBUN', NULL, '10512002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(83, 'RISKI ARIYANTO', NULL, '10409044@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(84, 'LAMBA LOTI', NULL, '10412872@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(85, 'JAHANIS', NULL, '10413914@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(86, 'LUKMAN', NULL, '10510004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(87, 'REYDUBEL LUMBANGAOL', NULL, '10611019@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(88, 'AGUSTINUS RANTE SALU', NULL, '10510023@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(89, 'SUPRIADI', NULL, '10511004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(90, 'HARIYANTO', NULL, '10511013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(91, 'JOKO SISWANTO', NULL, '10511033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(92, 'YUDIONO', NULL, '10612006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(93, 'AGUNG TANDI RURA', NULL, '10511045@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(94, 'NURYANTO', NULL, '10717047@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(95, 'LUKAS DUMA', NULL, '10512030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(96, 'YUSUF', NULL, '10611009@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(97, 'CANDRA HERMAN SINAGA', NULL, '10611018@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(98, 'RUSTAM EFENDI', NULL, '10812001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(99, 'TAMRIN', NULL, '10612005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(100, 'HABEL TANDI SITURU', NULL, '10812003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(101, 'BASIR', NULL, '10712001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(102, 'BAHTIAR', NULL, '10712003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(103, 'KARYOTO', NULL, '10712004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(104, 'IBNU RIZAL', NULL, '10712007@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(105, 'SURIADI', NULL, '10718047@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(106, 'EKO PRIYANTO', NULL, '10712013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(107, 'NUR ANDRIANI', NULL, '10712014@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(108, 'CHANDRAWANSYAH', NULL, '10712022@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(109, 'AHMAD YANI', NULL, '10712026@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(110, 'ASDAR', NULL, '10712027@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(111, 'ERBON', NULL, '10712031@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(112, 'EDI SOPIAN', NULL, '10712033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(113, 'HAMZAH', NULL, '10712034@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(114, 'ARUN', NULL, '10712035@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(115, 'ROYAN', NULL, '10713001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(116, 'JUWARTO', NULL, '10713007@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(117, 'MUHIDIN', NULL, '10713013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(118, 'DONNY OCTAVIAN ARNALDO DERGOS', NULL, '10713017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(119, 'SARIPUDIN', NULL, '10713018@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(120, 'JULI HERLES', NULL, '10713019@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(121, 'ALBER PASANG', NULL, '10713020@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(122, 'SAMSIR ALAMSYAH', NULL, '10713022@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(123, 'HERLAMBANG TRI HANTARA', NULL, '10713023@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(124, 'AMRAN LUMBAN RAJA', NULL, '10713028@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(125, 'ABDUL RAJAK', NULL, '10713031@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(126, 'DWI HANDOKO', NULL, '10713032@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(127, 'MATIAS', NULL, '10713033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(128, 'MISAK', NULL, '10713035@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(129, 'MOHAMAD SUPARMIN', NULL, '10713037@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(130, 'ALMAR', NULL, '10714014@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(131, 'SULHAJI', NULL, '10714016@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(132, 'IMRAN', NULL, '10714017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(133, 'BANDAN', NULL, '10714020@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(134, 'CHANROY', NULL, '10714025@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(135, 'EMAN SULAEMAN', NULL, '10714027@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(136, 'M. AMIN', NULL, '10714029@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(137, 'MANSYAH', NULL, '10714030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(138, 'RIAN PURNOMO', NULL, '10714031@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(139, 'IYAN BABA', NULL, '10714034@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(140, 'JOHANIS ROGE', NULL, '10714042@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(141, 'ADI RAHMANTO', NULL, '10714043@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(142, 'DEDI HERMAWAN', NULL, '10715001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(143, 'NILA SARI', NULL, '10715002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(144, 'WAHYU KHUSWANDI', NULL, '10715008@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(145, 'DEBRI YUDHA FERNANDA', NULL, '10716004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(146, 'ANCI LARICCI', NULL, '10716011@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(147, 'NORBEK', NULL, '10716012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(148, 'MALADIA', NULL, '10716016@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(149, 'SUDIRMAN BABA LAHAKIM', NULL, '10716017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(150, 'KIRMANSYAH', NULL, '10717001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(151, 'PITER', NULL, '10717002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(152, 'OBY IRWAN', NULL, '10717003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(153, 'TAUFIK HIDAYAT', NULL, '10717006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(154, 'RENGGA PUTRA SAHUPALA', NULL, '10717007@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(155, 'MISRAN', NULL, '10717011@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(156, 'ARDIANSYAH', NULL, '10717012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(157, 'DANDAN SAPRI', NULL, '10717016@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(158, 'FAISAL RIZAL', NULL, '10717017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(159, 'YUNUS SALFI ROMBA', NULL, '10717019@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(160, 'RIZAL RIDWANSYAH', NULL, '10717020@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(161, 'GUNADI', NULL, '10717022@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(162, 'INDRAMAWAN', NULL, '10717023@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(163, 'SATRIA RUDIANTO', NULL, '10717026@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(164, 'BURHAN', NULL, '10717030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(165, 'JERRY', NULL, '10717031@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(166, 'STEVANUS ALLO SARIRA', NULL, '10717033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(167, 'NASRULLAH', NULL, '10717035@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(168, 'WAHYU YULIANTO', NULL, '10717036@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(169, 'PERI KADO', NULL, '10717037@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(170, 'ANDI JUSRIADI', NULL, '10717038@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(171, 'DARIUS SIAHAAN', NULL, '10717040@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(172, 'JONI PAKAYUN', NULL, '10718100@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(173, 'ADI', NULL, '10717052@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(174, 'DEDI HERMANTO', NULL, '10717054@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(175, 'DANIEL TAPPI', NULL, '10717055@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(176, 'NATAN ALLOBUA', NULL, '10717056@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(177, 'UNGGUL WIDYATMOKO', NULL, '10717058@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(178, 'ARPANSYAH', NULL, '10717060@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(179, 'ILHAM HARAHAP', NULL, '10717062@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(180, 'SOPIANSYAH', NULL, '10717063@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(181, 'HASAN', NULL, '10717064@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(182, 'MUHAMMAD NUR HAMDANI', NULL, '10717065@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(183, 'SOFIANSYAH', NULL, '10717068@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(184, 'RUDI SANTOSO', NULL, '10717071@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(185, 'PONSIANUS RATU', NULL, '10717073@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(186, 'SAPRI', NULL, '10717082@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(187, 'RAMLI', NULL, '10717083@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(188, 'SEPRI SOLEMAN', NULL, '10717086@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(189, 'WAHONO', NULL, '10718004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(190, 'HENDRA HALIM', NULL, '10718011@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(191, 'DEDI SUKANDAR', NULL, '10718012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(192, 'TRI WAHYUDI', NULL, '10718014@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(193, 'MAKMUR', NULL, '10810001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(194, 'BAHARUDDIN D. RATE', NULL, '10810005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(195, 'ANDARIAS RIAN', NULL, '10811008@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(196, 'IRWAN', NULL, '10718111@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(197, 'NANANG', NULL, '10719036@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(198, 'BENNY SANTOSO', NULL, '10812005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(199, 'VIGRI WAHYU WIRANJALI', NULL, '10812008@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(200, 'RUDIYANTO', NULL, '10910006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(201, 'RUDI SETYAWAN', NULL, '11108010@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(202, 'DWI RIYANTO', NULL, '11109026@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(203, 'KURNIA YULLIYAWAN EKASIYANTO', NULL, '11109030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(204, 'FAJAR ARDIANTO', NULL, '11109042@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(205, 'DWI CAHYONO', NULL, '11109051@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(206, 'SUNARTO', NULL, '11109058@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(207, 'JOKO SUPRIYANTO', NULL, '11109080@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(208, 'RIA ISPRIANTO', NULL, '11110014@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(209, 'AGUS MIRANTO', NULL, '11110017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(210, 'NUR RAHMAT', NULL, '11110074@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(211, 'SUROTO', NULL, '11110105@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(212, 'DIDIEK SUPRIYANTO', NULL, '11110141@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(213, 'ARIYANTO', NULL, '11110142@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(214, 'RANTO ARDI', NULL, '11110157@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(215, 'ZACKI MUHAMMAD NASYIR', NULL, '11111045@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(216, 'MUHAMMAD MAFTUH', NULL, '11111052@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(217, 'SIGIT FITRIYONO', NULL, '11111065@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(218, 'UNTUNG SULISTIYO', NULL, '11111067@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(219, 'FATONI', NULL, '11111133@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(220, 'MOCHAMAD ADIAR RADITYA', NULL, '11111141@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(221, 'HENDRI SAPUTRO', NULL, '11111158@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(222, 'ALI WAHYUDHI', NULL, '11111171@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(223, 'HERI KRISTYANTO YUONO', NULL, '11111185@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(224, 'TAUFIK MAARIF', NULL, '11111186@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(225, 'TRIGUS PRIHANTONO', NULL, '11111191@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(226, 'LUQMAN HAKIM', NULL, '11111199@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(227, 'ADITYA DWI WARDANA', NULL, '11111202@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(228, 'DEBY SUDARMAJI', NULL, '11111208@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(229, 'SUWARDI', NULL, '11112019@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(230, 'RYAN SURAHMAN', NULL, '11112027@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(231, 'ARIF SETYO GINANJAR', NULL, '11112030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(232, 'TRI HARJANTO', NULL, '11112038@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(233, 'DONY WIDYATMOKO', NULL, '11112046@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(234, 'JOKO PURWONO', NULL, '11112048@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(235, 'ABDUL MAJID', NULL, '11112056@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(236, 'DEFI PRASETYO', NULL, '11512097@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(237, 'ERVIN', NULL, '10718015@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(238, 'LEPONG MARTEN MISI', NULL, '10718016@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(239, 'ROMI YOHANIS', NULL, '10718023@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(240, 'PAULUS APUN', NULL, '10718028@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(241, 'MARDIANTO PABEBANG', NULL, '10718030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(242, 'KENNY', NULL, '10718032@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(243, 'MUHAMMAD IKHWAN', NULL, '10718034@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(244, 'YUDI CAHYO UTOMO', NULL, '10718039@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(245, 'WAHYU IWAN SAKTI', NULL, '10718040@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(246, 'ANTHONIUS PAKONDO', NULL, '10718043@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(247, 'ANTO', NULL, '10718044@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(248, 'SAMUEL BARANA', NULL, '10718046@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(249, 'MUAMAR', NULL, '10719041@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(250, 'AYUB DASA', NULL, '10718053@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(251, 'RANDY PUTRA YOGI YULIANTORO', NULL, '10718056@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(252, 'JEFRI SUSANTO L.K', NULL, '10718057@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(253, 'AGUS TANGDIALLA', NULL, '10718061@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(254, 'NASAI HASBI', NULL, '10118013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(255, 'DESMON GATUNG', NULL, '10718063@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(256, 'ERWIEN YUSTIANTO', NULL, '10718070@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(257, 'ROBERT DANNARI', NULL, '10718072@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(258, 'MARWANTO', NULL, '10718075@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(259, 'MUHAMMAD SULTAN', NULL, '10718077@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(260, 'GALUH ANDIKA', NULL, '10718079@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(261, 'LAPE', NULL, '10718080@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(262, 'MUHAMMAD BACHTIAR', NULL, '10718126@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(263, 'ABDUL RAZID', NULL, '10718129@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(264, 'MUKSIN', NULL, '10718131@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(265, 'ANDRI', NULL, '10718132@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(266, 'LEKSI BUNGKANG SAMMA', NULL, '10718135@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(267, 'ALBERTUS KALALO', NULL, '10718136@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(268, 'APRIANTO ALLO', NULL, '10718137@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(269, 'AGUS HARIYADI', NULL, '10718147@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(270, 'CHRIS SHANE', NULL, '10718138@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(271, 'GODRIKUS JAFRIA INDRA DJIMA', NULL, '10718139@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(272, 'RONI', NULL, '10718141@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(273, 'RAHIM BIN HEING', NULL, '10718142@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(274, 'WAHID', NULL, '10718143@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(275, 'AHMAD', NULL, '10718145@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(276, 'RONI MATIUS LOLLONG', NULL, '10718146@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(277, 'ABDUL SANI', NULL, '10718082@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(278, 'NOBER TAMPANG', NULL, '10718083@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(279, 'JHON YOHANES', NULL, '10718084@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(280, 'MATIUS TODING YOHANIS', NULL, '10718085@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(281, 'SYAIFUDIN EKO ERMAWAN', NULL, '10718086@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(282, 'HANGGA DWI PURNAMA', NULL, '10118029@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(283, 'JONIUS', NULL, '10718089@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23');
INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(284, 'MENJI', NULL, '10718090@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(285, 'JUHARI', NULL, '10718093@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(286, 'MUHAMAD', NULL, '10718094@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(287, 'FERRY', NULL, '10718095@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(288, 'RUBEN SELANG', NULL, '10718096@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(289, 'WERI KADORRE', NULL, '10718097@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(290, 'MARLI', NULL, '10718098@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(291, 'DARWIS SITIO', NULL, '10718099@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(292, 'ASEP RAMADHAN', NULL, '10112779@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(293, 'NERWIN SIMANJUNTAK', NULL, '10718102@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(294, 'MARTHEN SINGGI', NULL, '10718104@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(295, 'NUR WIDIASTUTI', NULL, '10118034@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(296, 'MUHAMMAD AGUS SALIM', NULL, '10718107@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(297, 'YONATHAN TANGKE', NULL, '10718108@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(298, 'BELIXIA CATRA', NULL, '10718109@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(299, 'NOER CHOLIQ', NULL, '10207061@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(300, 'NANANG SETIAWAN', NULL, '10718114@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(301, 'JOAN JULIUS MARPAUNG', NULL, '10718116@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(302, 'DANIS JAYA MAULANA', NULL, '10119008@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(303, 'MAULANA YUSUP', NULL, '10119009@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(304, 'RIAS MULIANA', NULL, '10119006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(305, 'ERIK KAMBUNO', NULL, '10718121@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(306, 'FIRMAN', NULL, '10718123@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(307, 'ABDUL MALIK', NULL, '10718125@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(308, 'ATSAL AHMAD PAMUNGKAS', NULL, '10119033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(309, 'KARISMAN', NULL, '10119032@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(310, 'REVI ANGGUNTRI PUTRA', NULL, '10119036@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(311, 'RISPAN JAYA SALIM', NULL, '10119034@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(312, 'WAHKIT PRASTIO', NULL, '10719010@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(313, 'MUHAMMAD KHAIRUL AZMI', NULL, '10719012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(314, 'BONI', NULL, '10719013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(315, 'ARDI LONTOH', NULL, '10719014@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(316, 'DEDY MUHAMMAD TABRANI', NULL, '10718148@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(317, 'IKHWAL MUHARDI', NULL, '10719002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(318, 'MELQISON', NULL, '10413915@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(319, 'FAUZI KAMAL ATH THUUR', NULL, '10119060@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(320, 'SONNY INGA', NULL, '10719019@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(321, 'DEDI PURWANTO', NULL, '10719021@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(322, 'MOHAMMAD RAGA MULYA FACHREZI', NULL, '10119062@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(323, 'NUGRAHA EKA FITRANTO', NULL, '10119066@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(324, 'YONATAN', NULL, '10719025@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(325, 'ROMY FANSURI YAHYA', NULL, '10119088@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(326, 'SOLIHIN', NULL, '10119091@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(327, 'ACONG', NULL, '10719026@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(328, 'DESTARIA SUMALLANG', NULL, '10719027@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(329, 'MOHAMMAD ILHAM', NULL, '10719031@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(330, 'FRANKLIN YANUARDI', NULL, '10719035@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(331, 'SABDAYARGA AKBAR WIDYANDHANA', NULL, '10121081@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(332, 'YOSEF', NULL, '10719037@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(333, 'HENDRIK SONDA PATABO', NULL, '10719038@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(334, 'ALJUTUNG', NULL, '10719039@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(335, 'ANGGIA PUTRA NEGARA', NULL, '10121093@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(336, 'MUHAMMAD ATOK', NULL, '10719043@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(337, 'ARDIAN PUTRO PURWANTO', NULL, '10120003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(338, 'BAGAS HADI PRASETYO', NULL, '10120001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(339, 'FAJAR ILHAM PRATAMA', NULL, '10120004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(340, 'SULISTIO', NULL, '10120005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(341, 'YOGI DELTA PAMUNGKAS', NULL, '10119027@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(342, 'EDI SUPRIATNA', NULL, '10208139@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(343, 'JOKO YULIANTO', NULL, '10112577@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(344, 'SURYA AL HADI', NULL, '10112592@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(345, 'ANDRE OKTAVIAN WIJAYA', NULL, '10122014@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(346, 'MUHAMMAD ABYAN DAFFA RAMDAN', NULL, '10119022@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(347, 'YUNI ARIBAWA', NULL, '11108055@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(348, 'RILO PAMBUDI', NULL, '10120006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(349, 'JUANG VICTORIO KUSUMA', NULL, '10120020@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(350, 'RACHMAN', NULL, '10720001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(351, 'WEREN KRISTOPER', NULL, '10720002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(352, 'ZAINUDIN', NULL, '10720003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(353, 'RIO DWI ALTRIAN', NULL, '10121003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(354, 'FANI DWI CAHYONO', NULL, '10121201@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(355, 'ANDRE YULIADI PUTRA', NULL, '10721001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(356, 'HAMSYAH', NULL, '10721002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(357, 'TIPTO MEKLAN', NULL, '10721003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(358, 'SABIKUL MUSTOFA', NULL, '10721004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(359, 'SANDI EFENDI', NULL, '10721005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(360, 'FANDY RIADI HARJA', NULL, '10721006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(361, 'MUHAMMAD AHLAN BUDI SANTOSO', NULL, '10721008@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(362, 'AGUSTINO BERDI LIWU', NULL, '10721009@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(363, 'RIAN AHMADI', NULL, '10721010@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(364, 'ARIFIN', NULL, '10721012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(365, 'ROBERTO DOE RITAN', NULL, '10721013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(366, 'HARDIKA SEPTIAN', NULL, '10721014@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(367, 'NASWAN MARKUS', NULL, '10721016@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(368, 'MULIADI', NULL, '10721020@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(369, 'NATAN TAPPANG', NULL, '10721025@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(370, 'MARTINUS DATUBENDO', NULL, '10721027@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(371, 'MARKUS', NULL, '10721028@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(372, 'JONI MANGGALATUNG', NULL, '10721032@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(373, 'DAHLAN', NULL, '10721033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(374, 'SOLMEN NANANG SETIAWAN', NULL, '10721034@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(375, 'MUHAMMAD HUSEIN HAKIM', NULL, '10721035@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(376, 'ICHTIARAKA AMARULLAH', NULL, '10120038@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(377, 'HENRIKUS RENDY SETIAWAN', NULL, '10122093@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(378, 'SOPYANSYAH', NULL, '10721036@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(379, 'HARYO SATRIO PINANDHITO', NULL, '10121034@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(380, 'JERI', NULL, '10721037@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(381, 'PANUS', NULL, '10721038@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(382, 'ABDUL RAHMAN', NULL, '10721040@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(383, 'SAPARIANTO', NULL, '10721041@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(384, 'IDRIS ABU ARIF', NULL, '10721042@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(385, 'GUSTI MR', NULL, '10721043@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(386, 'LAODE MUHAMAD ASHAR SAPUTRA', NULL, '10721044@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(387, 'OKTA DWI PUSPITA', NULL, '10121040@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(388, 'ACHMADI', NULL, '10722112@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(389, 'KASIM', NULL, '10721152@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(390, 'MUHAMMAD RIZALDI', NULL, '10721151@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(391, 'RACHMAT HIDAYAT', NULL, '10722113@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(392, 'MUHAMMAD SAID EFENDY ', NULL, '10721145@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(393, 'APRIANUS', NULL, '10721141@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(394, 'DENI LOIS', NULL, '10722114@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(395, 'RAHMAT RIDO\'I', NULL, '10721144@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(396, 'JANUARIUS ROWE', NULL, '10721140@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(397, 'RIZKI SETIAWAN', NULL, '10721153@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(398, 'ANTARIKSA ANGGARA VERI', NULL, '10721149@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(399, 'M. ARIS', NULL, '10721148@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(400, 'ARDIANSYAH', NULL, '10721046@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(401, 'GEOVANNI ERLAN PRAYUDHA', NULL, '10121019@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(402, 'ANDI TRI HARTONO', NULL, '11109084@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(403, 'ZAENAL MUSYAFA', NULL, '10121068@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(404, 'OKTOVIANUS PATIUNG', NULL, '10721061@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(405, 'LUTHER PULUNG', NULL, '10721057@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(406, 'MARIANUS ANTO SALAMBA', NULL, '10721059@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(407, 'LUTHER ROMBE', NULL, '10721056@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(408, 'AGUS KURNIAWAN', NULL, '10721066@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(409, 'MUSLIMIN', NULL, '10721050@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(410, 'DARMAWANSA', NULL, '10721054@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(411, 'FRANSISKUS SELAN', NULL, '10721055@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(412, 'MUHAMMAD HIDAYAT', NULL, '10721058@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(413, 'RAHIM', NULL, '10721062@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(414, 'RATNA ADI PUTRA', NULL, '10721063@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(415, 'BUDI SISWANTO', NULL, '10721068@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(416, 'RAMLI', NULL, '10721069@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(417, 'BUDIMAN SANJAYA', NULL, '10721070@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(418, 'JUNITO SITANGGANG', NULL, '10721072@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(419, 'MARUBA NAINGGOLAN', NULL, '10721073@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(420, 'NICO FRANCISCO', NULL, '10721074@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(421, 'WIDO SIGAU', NULL, '10721075@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(422, 'ARHAM REZZA', NULL, '10721076@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(423, 'KRISTIANUS ARI MULIA', NULL, '10721077@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(424, 'TRI SYAMSUL ALLAM', NULL, '10121078@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(425, 'YANCE MADO WITAK', NULL, '10721048@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(426, 'MUHAMMAD ADIATMA ZHAFRAN', NULL, '10121097@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(427, 'ALOYSIUS NALINDIKA DIRGANTARA PUTRA', NULL, '10122261@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(428, 'RIDWAN JULIANTO', NULL, '10122319@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(429, 'SUHENDI', NULL, '10721079@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(430, 'FURQONUDIN', NULL, '10721078@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(431, 'AL FARIZKY MAULANA PUTRA', NULL, '10721082@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(432, 'ALDI PUTRA PRATAMA', NULL, '10721084@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(433, 'ZAINAL SAMAD', NULL, '10721085@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(434, 'DICKY SETIAWAN', NULL, '10721086@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(435, 'AGUS JOKO LASTOMO', NULL, '10721092@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(436, 'ZEM', NULL, '10721094@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(437, 'AMIR GUGA', NULL, '10721098@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(438, 'MUHAMMAD NOVI PRASETYO', NULL, '10122061@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(439, 'ANGGA RAKSA AJI PIMUKTI', NULL, '10122060@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(440, 'RIO CANDRA VALENTINO', NULL, '10122059@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(441, 'MUHAMMAD AJI PAMUNGKAS', NULL, '10122062@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(442, 'JULYANTO AL ABI BAKRIN', NULL, '10113946@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(443, 'AMAS BUDI SAHARA', NULL, '10721088@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(444, 'MUHAMMAD HIDAYAT', NULL, '10721099@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(445, 'JEMI JEKSEN TODING', NULL, '10721100@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(446, 'IWAN SETIAWAN', NULL, '10721101@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(447, 'JIMMY ANDRIANSYAH', NULL, '10721105@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(448, 'MUGAN TURKI', NULL, '10721108@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(449, 'SUKARDI', NULL, '10721109@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(450, 'MADI', NULL, '10721111@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(451, 'MUHAMMAD ILHAM SETYAWAN', NULL, '10121219@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(452, 'YIPTA YOGA PRASTYA', NULL, '10121222@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(453, 'INDRA SAPUTRA', NULL, '10721112@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(454, 'ABDUL LATIF', NULL, '10721113@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(455, 'A\'ANG FATHUR YUNIANTO', NULL, '10721114@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(456, 'RISKI RUSMANTO', NULL, '10721122@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(457, 'ENDRO PRASETYO HADI', NULL, '10721123@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(458, 'ADRIANUS BAO DAY', NULL, '10721124@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(459, 'DELMAN', NULL, '10721125@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(460, 'RAHMAT GUSNIE', NULL, '10421003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(461, 'M. ANWAR SAJID', NULL, '10421002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(462, 'JOKO SAPUTRO', NULL, '10721136@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(463, 'SLAMET RIYADI', NULL, '11110048@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(464, 'ANAM SYAIFUL RIDHO', NULL, '10722014@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(465, 'MUSA MASOANG', NULL, '10722015@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(466, 'LUTHFI FARIS DARMAWAN', NULL, '10122130@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(467, 'YUDI PRASTIYO', NULL, '10122129@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(468, 'NURUL NUGROHO', NULL, '10122128@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(469, 'BAGUSTIAN MO\'A PRIFAM DODO', NULL, '10122131@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(470, 'ARI ZULFIKAR', NULL, '10120029@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(471, 'RIZKY OKTA SAPUTRA', NULL, '10122008@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(472, 'MUHAMMAD LUTHFI FARHAN', NULL, '10121234@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(473, 'KRISON VALENTINO MANALU', NULL, '10122009@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(474, 'DAMAR ANUGRAH PUTRA', NULL, '10122011@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(475, 'SUHANDY', NULL, '10722029@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(476, 'RINTO ISI', NULL, '10722030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(477, 'DONNY VILYAN AMARTA', NULL, '10722032@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(478, 'MUHAMMAD HARIYANTO', NULL, '10722033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(479, 'SUGIARTO', NULL, '10122063@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(480, 'TEGUH WAGURI', NULL, '10113881@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(481, 'NOVEL MALLAWA', NULL, '10722041@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(482, 'ARIF KUSWAN', NULL, '10722042@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(483, 'ABU BAKAR JAFAR SODIK', NULL, '11111131@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(484, 'ARMAWAN', NULL, '10722043@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(485, 'SARTON BASONGAN', NULL, '10722044@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(486, 'HUSAIN', NULL, '10722045@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(487, 'ANDRIANUS NUBAN', NULL, '10722046@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(488, 'AGUS WAHYUDI', NULL, '10722047@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(489, 'TASRI', NULL, '10722048@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(490, 'MAJONTEN', NULL, '10722049@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(491, 'DARMANSYAH', NULL, '10722056@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(492, 'MASKURI', NULL, '11112029@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(493, 'ALI NURDIN', NULL, '11111154@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(494, 'WAHYU PRAYITNO', NULL, '10122092@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(495, 'NANDA RAHMAT DWI HARJANTO', NULL, '10122068@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(496, 'DIAN LEGOWO', NULL, '11111165@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(497, 'MUHAMMAD FAISHAL BURHANUDIN', NULL, '10122065@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(498, 'MUHADI', NULL, '10722058@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(499, 'ALNIYANTO SAPUTRA', NULL, '10122222@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(500, 'APRILLIAN FIRDAUS', NULL, '10122219@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(501, 'RAKA DIAN WISNU AJI SAPUTRA', NULL, '10122218@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(502, 'KURNIAWAN BAGUS SAPUTRA', NULL, '10122221@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(503, 'BIBIT WALUYO', NULL, '10122220@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(504, 'FADLI NOFRIANDIKO', NULL, '10120017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(505, 'YULIUS LONDONG', NULL, '10722065@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(506, 'IMANUEL REXY', NULL, '10722066@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(507, 'LOIS PAEMBONAN', NULL, '10722067@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(508, 'PETRUS PAREWANG', NULL, '10722068@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(509, 'IMAM SAFIUDIN', NULL, '10722073@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(510, 'DARWIS IRFAN DILA DAMANIK', NULL, '10722074@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(511, 'JAMALUDIN', NULL, '10722075@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(512, 'KOLIK SASMITA', NULL, '10722080@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(513, 'MAULIDIN NOOR', NULL, '10722081@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(514, 'MUH. RIFALDI', NULL, '10722082@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(515, 'PAULUS MALLA', NULL, '10722084@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(516, 'SALIM', NULL, '10722085@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(517, 'TAMBRIN', NULL, '10722086@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(518, 'CHRISANTO SAMON', NULL, '10722087@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(519, 'NELSON PASILA', NULL, '10722088@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(520, 'NURUL YAKIN', NULL, '10722076@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(521, 'BIMANTA VALINTINO PURBA', NULL, '10122327@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(522, 'YUDI HIMAWAN', NULL, '10121024@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(523, 'IRVAN', NULL, '10722101@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(524, 'BERNADUS TONAPA', NULL, '10722100@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(525, 'BUDI SETYAWAN ', NULL, '10722099@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(526, 'FAHRUL RIZAL', NULL, '10722104@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(527, 'SUHARDIMAN', NULL, '10722105@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(528, 'RISKY FAHRI WARDANA', NULL, '10719004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(529, 'BAGUS IRWAN ANTO', NULL, '10122071@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(530, 'DIKKY KURNIAWAN', NULL, '10722147@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(531, 'DONI SAPUTRA', NULL, '10722148@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(532, 'HENSON', NULL, '10722149@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(533, 'KELVIN HAIDAR WICAKSONO', NULL, '10122169@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(534, 'HARIS IHSAN LAZUARDI', NULL, '10122170@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(535, 'FAJAR EKA NUGRAHA ARZANI', NULL, '10122171@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(536, 'EDWIN PRABOWO', NULL, '10122172@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(537, 'DEFA BRAMANTYA DWI ATMAJA PUTRA', NULL, '10122173@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(538, 'MUHAMMAD FADIL', NULL, '10722150@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(539, 'YANDI S', NULL, '10722151@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(540, 'SUWARDI', NULL, '10722153@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(541, 'RAHMAD DANI', NULL, '10722154@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(542, 'EDOWARDO JUHAN OKTAVIANUS PANTAOW', NULL, '10722152@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(543, 'ARIF VIRDANIK', NULL, '10722111@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(544, 'HENGKY SUPRIADI', NULL, '10422019@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(545, 'LALU DARMAWAN', NULL, '10422020@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(546, 'ASEP AMONG', NULL, '10722116@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(547, 'ARIFIN', NULL, '10722117@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(548, 'HENDI', NULL, '10719003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(549, 'TAUFIQ HIDAYAT', NULL, '10719005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(550, 'ASRAN HASAN. HS', NULL, '10722118@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(551, 'ALBERT BIN JOHN', NULL, '10722119@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(552, 'WAHYU MULYANTO', NULL, '10722127@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(553, 'ELKI TANAN', NULL, '10722129@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(554, 'ABDUL KAHFI', NULL, '10122176@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(555, 'DEDDY BAGUS SUPRAYOGA', NULL, '10121051@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(556, 'GUSTI ANDO', NULL, '10722132@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(557, 'LUIS PABURRU', NULL, '10719009@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(558, 'ACHMAD PERDANA BUDIMAN', NULL, '11512095@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(559, 'EKA PRATAMA AFRIANSYAH', NULL, '10722134@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(560, 'ESRA LATANDI', NULL, '10722135@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(561, 'INDRA PURNOMO', NULL, '10722136@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(562, 'MARKUS TANDI', NULL, '10722137@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23');
INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(563, 'MARTEN MATIUS', NULL, '10722138@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(564, 'NUR AHMAT PAJAR MALIK', NULL, '10722139@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(565, 'SULYA HAFRIANSYAH', NULL, '10722140@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(566, 'YOSUA APRISEL MENO', NULL, '10722141@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(567, 'HERU GUNAWAN', NULL, '10722142@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(568, 'ADI', NULL, '10722143@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(569, 'EKA OKTA FANDILA', NULL, '10722144@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(570, 'YAKOBUS BIDANG', NULL, '10722146@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(571, 'BAGAS ARIYANTO', NULL, '10122181@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(572, 'HANDHIKA AJI NUGROHO', NULL, '10122194@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(573, 'GALUH RAKA FAUZI KAMSIN', NULL, '10122126@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(574, 'BURHANUDDIN', NULL, '10421012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(575, 'PARIS', NULL, '10722155@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(576, 'WAWAN ANDRIYANTO', NULL, '10722156@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(577, 'WAHYU NURBUDIONO', NULL, '10722157@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(578, 'SUDIANTO', NULL, '10721128@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(579, 'IKHSANDI PUTRA', NULL, '10721133@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(580, 'HAMZAH', NULL, '10721129@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(581, 'EDDY DWI PRASETIO', NULL, '10721130@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(582, 'EGI PIRMANSYAH', NULL, '10721132@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(583, 'SONI', NULL, '10722020@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(584, 'RUDI SANJAYA', NULL, '10122224@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(585, 'MUCHLISUL AMAL', NULL, '10122225@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(586, 'YOSEP ADI PRASETYA', NULL, '10122226@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(587, 'CHANDRA ISMURWANTO', NULL, '10722161@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(588, 'ALEXANDER TP', NULL, '10722159@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(589, 'BAGUS PRAKASA', NULL, '10123030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(590, 'MUHAMMAD AMIN MAULIDIN', NULL, '10123028@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(591, 'RADIYES SANJU', NULL, '10123026@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(592, 'AMAR MUHAMAD', NULL, '10123027@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(593, 'ARSYAD', NULL, '10722165@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(594, 'KARDI', NULL, '10722166@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(595, 'MELKI', NULL, '10722168@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(596, 'SARIFUDIN', NULL, '10722170@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(597, 'JONI A', NULL, '10722171@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(598, 'ROBBI KURNIAWAN', NULL, '10122270@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(599, 'ILMAN FATHURAHMAN', NULL, '10123057@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(600, 'ANDI RISALDY', NULL, '10722172@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(601, 'ERO ADAM MALIK', NULL, '10722174@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(602, 'KAKA PERMANA', NULL, '10123035@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(603, 'SARIPUDDIN', NULL, '10722176@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(604, 'EDYANTO PAELONGAN', NULL, '10722177@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(605, 'RIGEN ROMANUS RETE SETO', NULL, '10722178@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(606, 'ALZIS YUSNAWA', NULL, '10722179@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(607, 'MUH. ASWAR', NULL, '10722180@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(608, 'SANDY SETIAWAN', NULL, '10722181@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(609, 'ABDUL HAMID', NULL, '10722182@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(610, 'DIKA PRABOWO', NULL, '10722183@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(611, 'RUDI', NULL, '10722184@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(612, 'TAHIR', NULL, '10722185@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(613, 'ELIA BATAU BULUPASA', NULL, '10722186@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(614, 'FERI RAHMAT ANDI', NULL, '11022008@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(615, 'DERI PRADANA PUTRA', NULL, '11022016@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(616, 'UJANG SB', NULL, '11022017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(617, 'MUHAMMAD RAFKY', NULL, '10123040@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(618, 'MALKHAN ATHORIDI AKHMAD', NULL, '10122341@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(619, 'RAPAIGAN AUDI SAPANA PANGGABEAN', NULL, '10121200@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(620, 'MASJUFRI', NULL, '10722189@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(621, 'RIAN EDI SAPUTRA', NULL, '10723130@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(622, 'M. FAESAL BUCHORI AL-MUJAZI', NULL, '10723132@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(623, 'RIZKI SAPIT RIANUR', NULL, '10723133@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(624, 'WARDINO', NULL, '10723134@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(625, 'ADITYA WIRAWAN', NULL, '10723135@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(626, 'BUDIANTO', NULL, '10723136@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(627, 'ICHSAN IRSANDY', NULL, '10723138@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(628, 'RULLY FADLIANSYAH', NULL, '10723139@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(629, 'HERIANSYAH', NULL, '10723140@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(630, 'HANDOKO', NULL, '10723141@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(631, 'IBNU RIDUANSYAH', NULL, '10723142@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(632, 'DWI HARTONO', NULL, '10723143@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(633, 'RISWAN', NULL, '10723144@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(634, 'MUHAMMAD IKHWAL', NULL, '10723145@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(635, 'MUHAMMAD ROYAN', NULL, '10723146@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(636, 'RAHUL FARHUL ADITYA', NULL, '10723147@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(637, 'HENDY WIRANDI', NULL, '10723149@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(638, 'LIMHAI', NULL, '10723150@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(639, 'JEFRIANUS', NULL, '10723151@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(640, 'ARI ALDI', NULL, '10723152@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(641, 'IWAN DEVLIZAI', NULL, '10723153@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(642, 'YEWINTO', NULL, '10723154@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(643, 'PAIS HAFIZAN', NULL, '10723155@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(644, 'ALEX', NULL, '10723156@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(645, 'GUNTUR ALAMSYAH', NULL, '10723157@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(646, 'ABDUL TONI', NULL, '10723001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(647, 'ANDI JUMASRI', NULL, '10723002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(648, 'FARIS ANWAR', NULL, '10723003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(649, 'RONI YOHANES PADATU', NULL, '10723004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(650, 'TAUFIK AKBAR', NULL, '10723005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(651, 'NYAWIJI', NULL, '10723006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(652, 'MUHAMMAD DAMHURI', NULL, '10723007@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(653, 'ABDUL RAUF', NULL, '10723009@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(654, 'WAHYU FIRMANSYAH', NULL, '10723010@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(655, 'SUSILA WIJAYA SAPUTRA', NULL, '10723008@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(656, 'FAIZUL MAHMUDIN', NULL, '11023001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(657, 'A. LATIF', NULL, '11023002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(658, 'MUHAMMAD SUTARMADJI', NULL, '11023003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(659, 'MUHAMMAD FATHANAH AL - RAZI', NULL, '11023004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(660, 'YOSUA HADOMUAN HUTAGAOL', NULL, '10118044@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(661, 'MAHMUD', NULL, '10723012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(662, 'YUNUS', NULL, '10723013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(663, 'ANDRIYANTA', NULL, '10723017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(664, 'RUSMIN NURYADIN', NULL, '10723018@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(665, 'APRIANTO RONI', NULL, '10723020@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(666, 'ARLIN', NULL, '10723021@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(667, 'ROMIANTO', NULL, '10723023@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(668, 'SOPIAN RASYID', NULL, '10723025@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(669, 'EBSAN', NULL, '10723026@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(670, 'SAHLAN', NULL, '10723027@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(671, 'WINDI AGUSTA SALU', NULL, '10723028@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(672, 'OBET', NULL, '10723029@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(673, 'RIZAL', NULL, '10723030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(674, 'ERLANGGA WAHYU S', NULL, '10723031@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(675, 'IRFAN FARID', NULL, '10723032@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(676, 'MUHAMMAD RIDWAN', NULL, '10723033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(677, 'MUHAMMAD FIRMANSYAH', NULL, '10723034@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(678, 'JULKIFLI', NULL, '10723035@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(679, 'AHMAD IRFANDI', NULL, '10723037@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(680, 'ARGO GANTARA', NULL, '10723038@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(681, 'AGUS SALIM', NULL, '10723039@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(682, 'M. HASWANDY SAPUTRA', NULL, '10723041@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(683, 'ROY NADAR ABUSTAN', NULL, '10723042@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(684, 'KEVIN AJI NUROHMAN', NULL, '10122193@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(685, 'RIO LAQID ARGA CAHYANA', NULL, '10123048@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(686, 'AGUS SUYATNO', NULL, '10110257@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(687, 'NAFSIA HOLIDYA', NULL, '10123060@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(688, 'JANITRA DYANDRA ADYA', NULL, '10123044@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(689, 'AHMAD KHUSAIRI', NULL, '10111545@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(690, 'DADANG TRILAKSONO', NULL, '10112692@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(691, 'RIJAN MUDILAH', NULL, '10112791@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(692, 'ERLANDGA FAVIAN AYYASY', NULL, '10123043@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(693, 'NELVEN LUTHER', NULL, '10723045@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(694, 'CATUR WASONO MULYO', NULL, '10723043@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(695, 'EWIL LUKAS TANDILILING', NULL, '10723046@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(696, 'ANDREAS ADE', NULL, '10723044@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(697, 'FIRDAUS', NULL, '10723050@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(698, 'ROBBY JUMAN', NULL, '10723048@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(699, 'SETIO ADJI', NULL, '10723047@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(700, 'ALBERT SAPUTRA', NULL, '10723053@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(701, 'RIO ANTARIKSA', NULL, '10723059@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(702, 'ARIS', NULL, '10723054@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(703, 'SUDIRMAN', NULL, '10723057@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(704, 'YULIS', NULL, '10723056@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(705, 'AGUNG MAULANA', NULL, '10723061@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(706, 'FAJAR', NULL, '10723062@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(707, 'JAINUDIN', NULL, '10723063@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(708, 'RENDI', NULL, '10723065@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(709, 'RESET', NULL, '10723066@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(710, 'RINO PRAMONO', NULL, '10112849@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(711, 'YUDI RUMANSYAH', NULL, '10723067@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(712, 'TONI TAYONG', NULL, '10723068@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(713, 'MUHAMMAD RIZAL', NULL, '10723069@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(714, 'SYAHRULDIN', NULL, '10723070@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(715, 'SURATMAN', NULL, '10723071@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(716, 'ABDUL MA\'RUF', NULL, '10723074@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(717, 'SIGIT TRIYONO', NULL, '10723075@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(718, 'ALFONSO SYAHPUTRA SIANTURI', NULL, '10723077@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(719, 'NOVIYARDI RAJIB', NULL, '10723078@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(720, 'HENRI KILLA', NULL, '10723079@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(721, 'SATRIA WILANDA TAMA', NULL, '10120033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(722, 'NURSIDIK', NULL, '10723081@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(723, 'ARAHMAT', NULL, '10723080@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(724, 'DARWAN', NULL, '10723083@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(725, 'HERU WIBOWO', NULL, '10723084@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(726, 'RISWAN', NULL, '10723082@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(727, 'TAUFAN PRATAMA', NULL, '10723085@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(728, 'DOMINGGUS', NULL, '10723086@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(729, 'SANDI GALI', NULL, '10723087@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(730, 'KASMUDIWAN', NULL, '10723091@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(731, 'PETRUS PALI', NULL, '10723090@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(732, 'DIMAS PRAMUDIA PAMUNGKAS', NULL, '10122132@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(733, 'MUHAMMAD WENDY', NULL, '10721138@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(734, 'MUHAMAD SABRI ABAS', NULL, '10721139@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(735, 'MOH. ANDRE CAHYANTO', NULL, '10721155@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(736, 'ALFIUS', NULL, '10722050@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(737, 'RONALDO SINAGA', NULL, '10722052@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(738, 'NOBER PATULAK', NULL, '10723093@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(739, 'SUDIRMAN BALONDO', NULL, '10723094@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(740, 'HARIYADI', NULL, '10723095@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(741, 'MUHAMMAD MISRAN', NULL, '10723096@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(742, 'IRPAN', NULL, '10723097@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(743, 'RAMON PASALORAN', NULL, '10723100@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(744, 'JUMRI', NULL, '10723099@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(745, 'AMOS MINGGU', NULL, '10723098@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(746, 'MUKHAMMAD YUSUF', NULL, '10723101@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(747, 'ALFIAN', NULL, '10723102@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(748, 'ANDI SUBHAN FAJAR', NULL, '10123112@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(749, 'ALEXANDER KARANGAN', NULL, '10723108@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(750, 'DIKA RISKI TRIA WARDANA', NULL, '10121030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(751, 'PHITER KONDO TANDIRAU', NULL, '10723109@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(752, 'APRI SUJIONO ', NULL, '10723111@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(753, 'JUMHAR', NULL, '10723115@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(754, 'CHOLIL STYO BUDI', NULL, '10723116@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(755, 'YAKOBUS PABARA', NULL, '10723118@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(756, 'GEORGE SURYA BANDASO', NULL, '10723121@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(757, 'DIKA ALAMSYAH', NULL, '10123096@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(758, 'WAHYU RIZKI SETYAWAN', NULL, '10117040@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(759, 'I PUTU EKA PURNAMA DINATA', NULL, '11322036@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(760, 'JULIAN WAHYU RIZKI', NULL, '11322038@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(761, 'MUHAMMAD RAGIL', NULL, '11322039@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(762, 'MUHADIR', NULL, '10722095@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(763, 'GEARLY AVRILINO S', NULL, '11322034@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(764, 'MUHAMAD RIZKY RAMADHAN', NULL, '11322035@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(765, 'SUKUR', NULL, '11322017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(766, 'BAHARUDDIN', NULL, '11322041@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(767, 'SYAIFUL ISLAM R', NULL, '10722038@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(768, 'JOHANSYAH', NULL, '10723123@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(769, 'MUHD. AIDIL', NULL, '10723124@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(770, 'OLDY ADRIAN', NULL, '10723125@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(771, 'HADRIANSYAH', NULL, '10723127@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(772, 'KASIM', NULL, '10723128@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(773, 'JEMIS', NULL, '11322005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(774, 'HENDRY PAGAPONG', NULL, '10721115@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(775, 'HENDRA', NULL, '10721117@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(776, 'ALDI ACO', NULL, '10722093@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(777, 'RAMLI', NULL, '11322033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(778, 'RIZAL HADI PRATOMO', NULL, '10723158@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(779, 'MUHLIS EKO PRASETYO', NULL, '10113886@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(780, 'AKHBAR YUDHA DEWANTO', NULL, '10123075@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(781, 'FEBRI FANDHOLI', NULL, '10723159@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(782, 'MATIUS TANDIOMBO', NULL, '10722091@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(783, 'MUHAMMAD NASRULLAH', NULL, '11322024@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(784, 'MUHAMAD ALBAYAN AGUNG NUGROHO', NULL, '10723212@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(785, 'ARYA ABHIZAKI', NULL, '10723213@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(786, 'ZALALUDIN', NULL, '10723214@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(787, 'WAHYU RAMADAN', NULL, '10723215@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(788, 'WILDAN RAMDANI', NULL, '10723216@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(789, 'EDY MULYONO', NULL, '11322013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(790, 'KURNIA AJI YUDANTO', NULL, '10121364@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(791, 'MOH. FAHMI B IBRAHIM', NULL, '10723166@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(792, 'JAINUDIN', NULL, '10723165@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(793, 'HERI GUNAWAN', NULL, '10723164@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(794, 'TEGUH DARMAWAN', NULL, '10723163@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(795, 'ANTONIUS', NULL, '10723162@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(796, 'ARDIANSYAH', NULL, '10723160@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(797, 'NATANIEL PANGGESO', NULL, '10723168@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(798, 'WACHID AGUNG ROSADI', NULL, '10723169@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(799, 'YAZID SUKOMONO AJI', NULL, '10123223@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(800, 'MUHAMMAD ANANG FAUZI', NULL, '10123224@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(801, 'BAGUS BIMANTORO', NULL, '10723171@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(802, 'RAFI\'I', NULL, '10723174@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(803, 'AHPAS SETIAWAN', NULL, '10723173@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(804, 'SAYYIB MUH. RIJAL', NULL, '10723172@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(805, 'ALFIN AFRIANSYAH', NULL, '10124030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(806, 'THOMAS GUNAWAN', NULL, '10124032@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(807, 'AGUSTIN RAGIL SADEWA', NULL, '10124029@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(808, 'SUGENG MURWANTO', NULL, '10123119@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(809, 'NIRWAN ASHARI', NULL, '10123187@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(810, 'AHMAD DAUD', NULL, '10723177@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(811, 'JULIANTO', NULL, '10723180@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(812, 'SURIANTO', NULL, '10723179@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(813, 'TAUFIK HIDAYAT', NULL, '10723178@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(814, 'SAIPUL', NULL, '10723176@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(815, 'AHMAD SYAFI\'I', NULL, '10723175@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(816, 'MARTINUS ROMBE', NULL, '10723181@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(817, 'HAIYIN DWI PRAKOSO', NULL, '10723182@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(818, 'AGUSTRI YANSAN', NULL, '10723183@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(819, 'FAHMI HIDAYAT', NULL, '10123164@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(820, 'RIZKI BUDI PRASETYO', NULL, '10123227@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(821, 'LUKTOR', NULL, '10723185@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(822, 'GABRIL TODING', NULL, '10723187@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(823, 'HARIS HAKIM PRASETYO', NULL, '10122004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(824, 'RANDISNO', NULL, '10723188@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(825, 'ALDI', NULL, '10723189@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(826, 'DEDE HARTANTO PATAROWO', NULL, '10723190@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(827, 'SAHRAN', NULL, '10723191@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(828, 'MANSYUR', NULL, '10723192@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(829, 'FAJRIN', NULL, '10723193@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(830, 'ABU BAKAR. D', NULL, '10723194@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(831, 'DEVIN EKO SAPUTRO', NULL, '10723195@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(832, 'SUKRON MANAP', NULL, '10723196@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(833, 'IAN LASARIANO', NULL, '10123181@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(834, 'SYAMSUDIN', NULL, '10723197@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(835, 'JANDI', NULL, '10723198@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(836, 'OZY PANGESTU', NULL, '10723201@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(837, 'OKTO MANGIWA', NULL, '10723202@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(838, 'RAHIM NURDIN', NULL, '10723203@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(839, 'AKMAR', NULL, '10723204@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(840, 'RAHMAT MARJUKI', NULL, '10723205@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(841, 'FALENTINO HUTAJULU', NULL, '10124027@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(842, 'NAUFAL DZAKY IRFANNUDIN', NULL, '10124028@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(843, 'M IHSAN CECEP RIJKI SUBAGJA', NULL, '10123256@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23');
INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(844, 'HANDANA WARIH AL IQRO', NULL, '10123257@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(845, 'SHOIFUL ALIM', NULL, '10123179@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(846, 'ISMAIL HAMZAH', NULL, '10123174@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(847, 'BOBI', NULL, '10723206@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(848, 'NURUL FITRI', NULL, '10723208@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(849, 'RAMLI LUSANO', NULL, '10723209@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(850, 'RAFI BAYU PUTRA PRATAMA', NULL, '10123292@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(851, 'RENDI FEBRIYANTO', NULL, '10123288@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(852, 'ANNISA NURUL FATIMAH', NULL, '10123290@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(853, 'JANIS', NULL, '10722012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(854, 'DELFIA RIZKI', NULL, '10123289@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(855, 'ALDI', NULL, '10724037@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(856, 'RADI', NULL, '10724029@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(857, 'YUSRIL IHZA MAHENDRA', NULL, '10724012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(858, 'HERU GUNAWAN', NULL, '10724019@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(859, 'FAHRU RAZYI', NULL, '10724022@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(860, 'RIO', NULL, '10724006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(861, 'BENTO RISKI RAMADAN', NULL, '10724011@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(862, 'RIZAL PADLI', NULL, '10724018@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(863, 'RAPLIANSYAH', NULL, '10724007@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(864, 'GILANG WISNU SAPUTRA', NULL, '10724008@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(865, 'FAISAL FACHRY', NULL, '10724003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(866, 'AWAL KISWARA', NULL, '10724016@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(867, 'MUHAMMAD RAMADHANI AL JABBAR AFFAN', NULL, '10724024@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(868, 'ANWAR ISMAIL HASIBUAN', NULL, '10724013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(869, 'AHMAD FAJRI AL-KAFF', NULL, '10724004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(870, 'MUHADIR', NULL, '10724017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(871, 'SAPARUDIANSYAH RAHMAT HIDAYAT', NULL, '10724015@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(872, 'DIDI HARIYANTO', NULL, '10724009@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(873, 'NOVAL IDRIS', NULL, '10724005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(874, 'JODHY HARMEY DIAWAN', NULL, '10724014@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(875, 'KASIYANTO', NULL, '10724010@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(876, 'ARDIKA NASADILA', NULL, '10723207@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(877, 'MUHAMMAD TAUFIQ HIDAYAT', NULL, '10122286@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(878, 'SALMAN ALPARIJI', NULL, '10122287@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(879, 'GIN GIN GINANJAR A.F', NULL, '10122288@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(880, 'ROFY MUHAMAD ZAIN', NULL, '10123296@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(881, 'ANDRE WIBOWO', NULL, '10723210@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(882, 'HAVY FATHONY', NULL, '10123065@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(883, 'AGIL EKO YUNANTO', NULL, '10123250@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(884, 'PRASETYA YOHAN MEGA SEMBADA', NULL, '10123246@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(885, 'HANNA NIDA NURDHIYA', NULL, '10123291@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(886, 'SUPRIYANTO WIDI PRASETYO', NULL, '10324005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(887, 'MUHAMAT BAYU AJI', NULL, '10324003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(888, 'TRISTAN SETYO UTOMO', NULL, '10324006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(889, 'MUHAMMAD DZAKY FAQIH ALIFIYANTO', NULL, '10324004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(890, 'MEGI PRASETYA', NULL, '10123248@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(891, 'FIKRI ABDUL AZIS', NULL, '10123249@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(892, 'SUGENG WAHYUDI', NULL, '10724001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(893, 'YUDI SUPRAPTO', NULL, '10123247@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(894, 'MUHAMMAD FARHAN FAKHRUDIN', NULL, '10124022@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(895, 'RONEL', NULL, '10124036@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(896, 'YANSION LANDO PUTRA MULYA', NULL, '10123215@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(897, 'ALFIN BAGUS DEWOJATI', NULL, '10124023@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(898, 'WARSONO', NULL, '10724002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(899, 'JAGAT BAGUS WINATA', NULL, '10123013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(900, 'ADAM ESA HERMAWAN', NULL, '10122216@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(901, 'SURAT', NULL, '10724023@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(902, 'ADITYA NUR PRAYOGA', NULL, '10724025@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(903, 'GALIH PRAWESTI', NULL, '10724026@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(904, 'MUHAMAD SETIAWAN', NULL, '10724027@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(905, 'ALI BABA', NULL, '10724028@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(906, 'RASMIN', NULL, '10724030@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(907, 'YUNUS TIKU RANTE', NULL, '10724031@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(908, 'IRWANSYAH ABD SAMAD', NULL, '10724032@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(909, 'MUHAMMAD RIAN', NULL, '10724033@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(910, 'ROSEL ROMBE', NULL, '10724034@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(911, 'RULY RINALDY HELMAN ABU TURASA', NULL, '10724035@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(912, 'HARRY ADI PURNA', NULL, '10724036@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(913, 'AMOS PAYUNG', NULL, '10724038@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(914, 'JEFFRI  TUA SILABAN', NULL, '10124057@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(915, 'HABIB AL IMRAN', NULL, '10124059@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(916, 'SYAUQI MUHAMMAD KHOIRUL ANWAR', NULL, '10122262@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(917, 'ASWIN ISWANDI R', NULL, '10724039@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(918, 'LUKMAN MUTAQIN', NULL, '10124058@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(919, 'AGUSTINUS', NULL, '10724040@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(920, 'JUARIN', NULL, '10724041@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(921, 'JOSUA', NULL, '10724042@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(922, 'RIDHOLAS MAULANA', NULL, '10124063@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(923, 'AFWAN NUR ABDILLAH', NULL, '10724047@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(924, 'MUHAMMAD SYARIF AKBAR', NULL, '10724048@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(925, 'ABDUL RAHMAN', NULL, '10724049@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(926, 'SAIFUL HIDAYAT', NULL, '10724050@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(927, 'JEMI YUNUS PABUNGKA', NULL, '10724051@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(928, 'HASRONI', NULL, '10724052@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(929, 'SYECH MUHSIDIN', NULL, '10724053@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(930, 'JEMMY HARISON', NULL, '10724054@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(931, 'JERRY KRISTOPER LIUS', NULL, '10724055@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(932, 'ANGGA SEPTIAWAN', NULL, '10724057@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(933, 'ARYANTO BOMBANG', NULL, '10724058@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(934, 'AMSAL AMPANG ALLO', NULL, '10724059@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(935, 'DONI MESAK KALEPE', NULL, '10724062@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(936, 'HARIS', NULL, '10724063@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(937, 'MUHAMMAD PATOTORI', NULL, '10724064@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(938, 'MUHAMMAD AKHBAR', NULL, '10724065@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(939, 'HOTBI ALARIS MARPAUNG', NULL, '10724066@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(940, 'AGUS PARINDING', NULL, '10724067@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(941, 'WANANDA NUR ASYHARI AL\'AZIZ', NULL, '10124065@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(942, 'MUHAMMAD TRI SAPUTRA', NULL, '10724068@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(943, 'ARHAN RIYANTO', NULL, '10724069@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(944, 'KHAMDAN MARZUKI', NULL, '10724070@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(945, 'RUBEN JON', NULL, '10724072@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(946, 'YUSUP', NULL, '10724074@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(947, 'SAMSU HAIKAL FAZRI', NULL, '10724075@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(948, 'HABIBI', NULL, '10724076@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(949, 'ALBER SARIRA SANGGALANGI', NULL, '10724077@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(950, 'AMIRUDDIN', NULL, '10724078@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(951, 'ADI SUSILO', NULL, '10724079@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(952, 'JEKLIN', NULL, '10724080@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(953, 'DANIEL SITINJAK', NULL, '10724081@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(954, 'SYUAIBAN', NULL, '10724082@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(955, 'TUSWANTO', NULL, '10724083@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(956, 'REZA ADE SAPUTRA', NULL, '10724084@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(957, 'HANITYA GIAN DIMASWARA', NULL, '10724085@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(958, 'IHWAN RIZKI', NULL, '10724086@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(959, 'KHOLILLUR ROKHMAN', NULL, '10724087@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(960, 'MUHAMMAD ASYRAF', NULL, '10724088@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(961, 'M MUCHLIS M', NULL, '10724089@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(962, 'ABDULLAH TAQIYYAN', NULL, '10123051@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(963, 'IKHWANDI PUTRA', NULL, '10724090@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(964, 'WAHAP SYAHRANI', NULL, '10724091@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(965, 'IRWANSYAH', NULL, '10724092@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(966, 'RUDI SUHARDI', NULL, '10724093@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(967, 'ALI BUSTAM', NULL, '10124113@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(968, 'EDWIN ALFIAN', NULL, '10724095@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(969, 'ISKANDAR', NULL, '10724096@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(970, 'AHMAD HOLIDUN', NULL, '10124106@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(971, 'SUBIYANTORO', NULL, '10724097@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(972, 'JONI TAMPANG LAA', NULL, '10724098@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(973, 'RISAL PADEMME', NULL, '10724099@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(974, 'SARTON PARERUNG', NULL, '10724100@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(975, 'ANANG TEGUH RAHARJA', NULL, '10124112@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(976, 'ANTONIUS TANDO', NULL, '10724102@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(977, 'BAYU KRISNA IRIANTO', NULL, '10724103@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(978, 'MUHAMMAD MIRZA AULIA ALFIANSYAH', NULL, '10122340@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(979, 'M RIZAL MAULANA', NULL, '10124122@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(980, 'RIKI', NULL, '10724104@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(981, 'MOHD IRFANSYAH', NULL, '10724105@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(982, 'M. IVANG RIVANTO', NULL, '10724106@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(983, 'RESALDY RURUNG', NULL, '10724107@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(984, 'MARWAN', NULL, '10724108@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(985, 'AHMAD RONY SUYATNA', NULL, '10724109@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(986, 'YONATAN SAPPA', NULL, '10724110@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(987, 'ZULKIFLI ILHAM', NULL, '10724111@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(988, 'BUDI WARDOYO', NULL, '10724112@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(989, 'ALIF FIRMANSYAH', NULL, '10124126@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(990, 'RIYANTO', NULL, '10724113@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(991, 'JAJANG SUPRIYANTO', NULL, '10724114@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(992, 'RENDI ARIYANDI PANGESTI AJI', NULL, '10124127@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(993, 'SUHARIYONO', NULL, '10124131@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(994, 'ASTRIO MARINTANG', NULL, '10724115@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(995, 'TONI ABDURAHMAN', NULL, '10124132@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(996, 'ARGI SAPUTRA', NULL, '10124061@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(997, 'ADITYA FAJAR JULIANTO', NULL, '10724116@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(998, 'ELKIN', NULL, '10724117@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(999, 'AKBAR ADIRA TAMA', NULL, '10724118@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1000, 'SUDRAJAT WIDYA PUTRA', NULL, '10724119@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1001, 'MUHAMMAD YUAN RIZKY', NULL, '10724120@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1002, 'ANDI SAHARMAN', NULL, '10724121@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1003, 'DZULQAIS AHMAD ALIF FAUYAN', NULL, '10724122@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1004, 'HANDOKO HARDIANSYAH', NULL, '10124134@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1005, 'EKO BUDIONO', NULL, '10724124@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1006, 'ARMAN ADI SAPUTRA KAPPA', NULL, '10724125@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1007, 'RAY JULIO BAWONO', NULL, '10724126@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1008, 'ZETH', NULL, '10724127@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1009, 'MUHAMMAD IRFAN FAKHRI', NULL, '10124135@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1010, 'KELFIN SETIAWAN', NULL, '10724128@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1011, 'FUAT MAFATIHUL HUDA', NULL, '10724129@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1012, 'AWAN SUHENDRA', NULL, '10724131@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1013, 'IWAN ARI WAHYUDI', NULL, '10724132@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1014, 'FEBIARIUS EKA PATRIA', NULL, '10124136@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1015, 'ARTDIAN HANGGARA PRATOMO KARIO', NULL, '10119020@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1016, 'MUHAMMAD IQBAL TAWAKKAL', NULL, '10724133@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1017, 'FERI SAPUTRO', NULL, '10124263@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1018, 'ANDRE SEPTIAN PRATAMA', NULL, '10124264@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1019, 'ANANDA DIMAS SASONGKO', NULL, '10124203@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1020, 'HADI SAPUTRA', NULL, '10724134@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1021, 'RENDI EDWAR SATRIA', NULL, '10724135@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1022, 'LUTER TANGKE LANGE', NULL, '10724136@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1023, 'YAFET', NULL, '10724137@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1024, 'YEHEZKIEL BASONGAN', NULL, '10124270@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1025, 'SYAHRUL NIZAM', NULL, '10124243@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1026, 'HENDRI', NULL, '10124273@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1027, 'NURIL ILHAM AZIZI', NULL, '10724138@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1028, 'ARSANI', NULL, '10724139@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1029, 'ADITYA ARYA PRATAMA', NULL, '10725001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1030, 'AGUNG KISWANTORO', NULL, '10725002@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1031, 'MUHAMMAD FADLI', NULL, '10725003@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1032, 'ASEP DWI UTOMO', NULL, '10725004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1033, 'JANFARIS', NULL, '10725005@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1034, 'EGO. N', NULL, '10725006@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1035, 'AFRIADY', NULL, '10725007@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1036, 'YOGA SEFTIANNUR', NULL, '10125004@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1037, 'NURMAN HANDITYA PRIMA', NULL, '10121079@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1038, 'JONI TULAK', NULL, '10114025@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1039, 'Y. JULIO SIMARSOIT', NULL, '10125001@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1040, 'AHMAD TAUFIQ HIDAYAH', NULL, '10725008@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1041, 'JAREF DARMAWAN', NULL, '10125068@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1042, 'FERGIE ADITHYA', NULL, '10125069@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1043, 'ARIS QURNIAWAN', NULL, '10125070@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1044, 'MUHAMAD ROSYID', NULL, '10125074@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1045, 'SAMSUL EFENDY SIMANJUNTAK', NULL, '10124269@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1046, 'MUHAMMAD AINUR ROFIQ', NULL, '10121050@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1047, 'NOHAN PUTRA NURHUDHA', NULL, '10124024@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1048, 'HIERONIMUS RYAN SETYO NUGROHO', NULL, '10121025@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1049, 'AGUS', NULL, '10725009@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1050, 'JOHNY HIEW KWAN SHI FOON', NULL, '10725010@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1051, 'KHOIRUL ANAM', NULL, '10124177@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1052, 'DANDI MUHAMMAD RIVAN', NULL, '10124186@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1053, 'MUHAMMAD SYIRHAN ATTAHIRAH SUHERMAN', NULL, '10124178@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1054, 'IBNU RAHARJANTO', NULL, '#REF!@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1055, 'KEVIN RUBEN JON', NULL, '10725011@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1056, 'NAZAR DWI ROWANSYAH', NULL, '10725012@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1057, 'ABDUL JAMIL', NULL, '10725013@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1058, 'JOHARI MARKUS', NULL, '10725014@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1059, 'HATMAN', NULL, '10125084@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1060, 'BAGAS SUDIBYO', NULL, '10125085@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1061, 'TRI WAHYUDI', NULL, '10125087@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1062, 'KORNELIS DEANYOS NGAGA HANA TIBO', NULL, '10125088@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1063, 'YUDISTIRA BAYU TIRTA', NULL, '10125086@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1064, 'MOCH ZAYLANI ARDIYANSYAH', NULL, '10725015@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1065, 'ABDUR ROHMAN ROBBANI ANSHORULLOH', NULL, '10120555@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1066, 'JOKO WIDIANTO', NULL, '11110018@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1067, 'GREGORIUS DONNY SETIAWAN', NULL, '10125060@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1068, 'HARIO FEHILI HERMAWAN', NULL, '10125048@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1069, 'SALMAN NURJAMAN', NULL, '10123098@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1070, 'ARJUNA', NULL, '10725016@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1071, 'SALTO', NULL, '10725017@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1072, 'RENDIE', NULL, '10725018@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1073, 'YUSUF', NULL, '10725019@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1074, 'OJIANSYAH', NULL, '10725020@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1075, 'SYAHRAN', NULL, '10725021@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1076, 'TAUFIK HADI HIDAYAT', NULL, '10725022@riungmitra.com', NULL, '$2y$12$TY1D55oIUuueVA7HmekBxOFKOnwyigFmRlw8YDYGvVcTz759693c.', NULL, '2025-04-21 19:17:23', '2025-04-21 19:17:23'),
(1077, 'BUDI PRATAMA', 'avatars/NkjyXbkrzSC0KMQQH1EeMgxVa4r9BFJHVaa98aT8.png', '10109011@riungmitra.com', NULL, '$2y$12$PVrnmaXDR2eouu5ceyrLzulMV2uUSu9Ke/w/VI3/Td0RMxLzEaFha', NULL, '2025-05-15 18:54:06', '2025-05-15 18:54:06'),
(1078, 'Daffa', 'avatars/rIkBsukRCZ2hCO6Jz3GxDkPZWlYIzdLxVZ4Sa1bl.png', '10101011@riung.com', NULL, '$2y$12$ZEnsSbBQNA/Hisi3W.t5IOvdg86jqvNkj9ljqsEasXWj7cU7UGvG6', NULL, '2025-05-15 19:01:25', '2025-05-15 19:01:25'),
(1079, 'Daisam', 'avatars/7QQRwZCi6DKr1u4ucxwvQ0oly8Il3WTcxhYzsfXh.png', '10101012@riung.com', NULL, '$2y$12$NsynejePhHYXImcwxIIqhenfDxr69Sg4.b.xgQga7MO9w9VAn3FIe', NULL, '2025-05-15 20:16:51', '2025-05-15 20:16:51'),
(1087, 'Elhan', 'avatars/DmNnSj5aQmxpaexIJA4OsfkHo4ereMk1JMZWmZEV.png', '10101014@riung.com', NULL, '$2y$12$9dIGLp3Adm5g7pIy5fvF0OLDXVKSyFBOQeNlVQNgGWVAEE/bd4ex2', NULL, '2025-05-17 03:27:54', '2025-05-17 03:27:54'),
(1088, 'Elman2', 'avatars/ZjgVel0mG8xMW8o8pvwgaKRlb5RMgNEv03fWCF38.png', '101010152@riung.com', NULL, '$2y$12$Rp/H2BRloMNtspXqp5qzH.ewc/FVUMLxnAj6w14XNbtep0cTYjfWy', NULL, '2025-05-18 02:17:11', '2025-05-18 03:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `usls`
--

CREATE TABLE `usls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `rapel_usl_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tanggal` date NOT NULL,
  `in` time NOT NULL,
  `out` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usls`
--

INSERT INTO `usls` (`id`, `worker_id`, `rapel_usl_id`, `tanggal`, `in`, `out`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 9, 1, '2025-03-01', '07:22:33', '17:40:50', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(2, 9, 1, '2025-03-02', '07:04:49', '17:33:52', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(3, 9, 1, '2025-03-03', '06:56:01', '18:00:31', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(4, 9, 1, '2025-03-04', '09:09:30', '17:44:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(5, 9, 1, '2025-03-05', '06:58:26', '17:28:56', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(6, 9, 1, '2025-03-06', '07:25:17', '17:26:13', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(7, 9, 1, '2025-03-07', '00:00:00', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(8, 9, 1, '2025-03-08', '00:00:00', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(9, 9, 1, '2025-03-09', '11:31:09', '17:25:53', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(10, 9, 1, '2025-03-10', '06:51:50', '18:03:34', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(11, 9, 1, '2025-03-11', '07:00:15', '17:12:02', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(12, 9, 1, '2025-03-12', '07:04:08', '17:15:34', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(13, 9, 1, '2025-03-13', '07:05:24', '17:38:50', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(14, 9, 1, '2025-03-14', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(15, 9, 1, '2025-03-15', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(16, 9, 1, '2025-03-16', '00:00:00', '00:00:00', 'OFFON', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(17, 9, 1, '2025-03-17', '00:00:00', '17:20:33', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(18, 9, 1, '2025-03-18', '09:23:30', '17:13:20', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(19, 9, 1, '2025-03-19', '06:54:27', '16:46:56', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(20, 9, 1, '2025-03-20', '06:54:29', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(21, 9, 1, '2025-03-21', '06:59:09', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(22, 9, 1, '2025-03-22', '07:09:42', '17:34:13', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(23, 9, 1, '2025-03-23', '07:28:54', '17:09:25', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(24, 9, 1, '2025-03-24', '07:01:13', '17:11:44', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(25, 9, 1, '2025-03-25', '07:01:22', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(26, 9, 1, '2025-03-26', '07:01:59', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(27, 9, 1, '2025-03-27', '07:04:17', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(28, 9, 1, '2025-03-28', '08:13:38', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(29, 9, 1, '2025-03-29', '00:00:00', '16:52:13', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(30, 9, 1, '2025-03-30', '00:00:00', '00:00:00', 'OFFON', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(31, 9, 1, '2025-03-31', '00:00:00', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(32, 757, 2, '2025-03-01', '00:00:00', '00:00:00', 'C', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(33, 757, 2, '2025-03-02', '00:00:00', '00:00:00', 'C', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(34, 757, 2, '2025-03-03', '00:00:00', '00:00:00', 'C', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(35, 757, 2, '2025-03-04', '07:03:18', '17:52:02', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(36, 757, 2, '2025-03-05', '07:06:27', '17:33:03', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(37, 757, 2, '2025-03-06', '07:25:38', '17:36:39', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(38, 757, 2, '2025-03-07', '07:01:21', '17:57:28', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(39, 757, 2, '2025-03-08', '07:02:34', '17:47:40', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(40, 757, 2, '2025-03-09', '07:11:57', '19:09:58', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(41, 757, 2, '2025-03-10', '07:08:52', '18:03:05', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(42, 757, 2, '2025-03-11', '07:03:43', '18:09:16', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(43, 757, 2, '2025-03-12', '07:05:34', '17:49:11', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(44, 757, 2, '2025-03-13', '07:06:59', '17:13:52', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(45, 757, 2, '2025-03-14', '06:57:21', '19:07:17', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(46, 757, 2, '2025-03-15', '07:18:15', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(47, 757, 2, '2025-03-16', '07:11:23', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(48, 757, 2, '2025-03-17', '00:00:00', '00:00:00', 'OFFON', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(49, 757, 2, '2025-03-18', '06:00:43', '17:37:09', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(50, 757, 2, '2025-03-19', '07:05:09', '17:32:48', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(51, 757, 2, '2025-03-20', '06:56:39', '18:53:19', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(52, 757, 2, '2025-03-21', '07:02:37', '17:09:26', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(53, 757, 2, '2025-03-22', '07:04:55', '17:58:11', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(54, 757, 2, '2025-03-23', '06:59:24', '17:45:29', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(55, 757, 2, '2025-03-24', '07:02:50', '17:35:40', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(56, 757, 2, '2025-03-25', '07:03:35', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(57, 757, 2, '2025-03-26', '07:00:32', '17:35:50', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(58, 757, 2, '2025-03-27', '07:10:51', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(59, 757, 2, '2025-03-28', '07:08:19', '17:58:20', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(60, 757, 2, '2025-03-29', '07:02:01', '17:44:03', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(61, 757, 2, '2025-03-30', '07:10:02', '17:34:35', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(62, 757, 2, '2025-03-31', '00:00:00', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(63, 318, 3, '2025-03-01', '07:24:31', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(64, 318, 3, '2025-03-02', '06:55:24', '17:47:49', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(65, 318, 3, '2025-03-03', '07:13:29', '17:15:01', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(66, 318, 3, '2025-03-04', '00:00:00', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(67, 318, 3, '2025-03-05', '07:13:59', '17:16:56', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(68, 318, 3, '2025-03-06', '06:59:59', '17:25:26', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(69, 318, 3, '2025-03-07', '06:59:29', '17:30:24', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(70, 318, 3, '2025-03-08', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(71, 318, 3, '2025-03-09', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(72, 318, 3, '2025-03-10', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(73, 318, 3, '2025-03-11', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(74, 318, 3, '2025-03-12', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(75, 318, 3, '2025-03-13', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(76, 318, 3, '2025-03-14', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(77, 318, 3, '2025-03-15', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(78, 318, 3, '2025-03-16', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(79, 318, 3, '2025-03-17', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(80, 318, 3, '2025-03-18', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(81, 318, 3, '2025-03-19', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(82, 318, 3, '2025-03-20', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(83, 318, 3, '2025-03-21', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(84, 318, 3, '2025-03-22', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(85, 318, 3, '2025-03-23', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(86, 318, 3, '2025-03-24', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(87, 318, 3, '2025-03-25', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(88, 318, 3, '2025-03-26', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(89, 318, 3, '2025-03-27', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(90, 318, 3, '2025-03-28', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(91, 318, 3, '2025-03-29', '00:00:00', '00:00:00', 'DN', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(92, 318, 3, '2025-03-30', '07:15:45', '17:25:11', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(93, 318, 3, '2025-03-31', '07:09:52', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(94, 1, 4, '2025-03-01', '00:00:00', '17:45:03', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(95, 1, 4, '2025-03-02', '07:47:33', '17:33:02', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(96, 1, 4, '2025-03-03', '07:05:51', '17:40:46', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(97, 1, 4, '2025-03-04', '07:03:04', '17:48:14', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(98, 1, 4, '2025-03-05', '07:05:53', '17:35:50', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(99, 1, 4, '2025-03-06', '00:00:00', '00:00:00', 'OFFON', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(100, 1, 4, '2025-03-07', '07:01:00', '17:33:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(101, 1, 4, '2025-03-08', '00:00:00', '17:19:16', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(102, 1, 4, '2025-03-09', '07:11:35', '17:14:27', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(103, 1, 4, '2025-03-10', '00:00:00', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(104, 1, 4, '2025-03-11', '07:03:11', '17:36:30', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(105, 1, 4, '2025-03-12', '07:05:12', '17:21:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(106, 1, 4, '2025-03-13', '07:06:17', '17:39:15', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(107, 1, 4, '2025-03-14', '06:56:35', '17:46:29', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(108, 1, 4, '2025-03-15', '00:00:00', '17:04:43', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(109, 1, 4, '2025-03-16', '07:11:11', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(110, 1, 4, '2025-03-17', '07:08:25', '17:16:58', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(111, 1, 4, '2025-03-18', '07:22:26', '17:05:39', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(112, 1, 4, '2025-03-19', '09:10:34', '17:31:42', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(113, 1, 4, '2025-03-20', '06:55:59', '18:53:24', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(114, 1, 4, '2025-03-21', '07:02:05', '17:08:31', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(115, 1, 4, '2025-03-22', '07:04:18', '17:30:35', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(116, 1, 4, '2025-03-23', '06:58:56', '17:02:21', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(117, 1, 4, '2025-03-24', '07:02:17', '17:31:28', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(118, 1, 4, '2025-03-25', '07:02:59', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(119, 1, 4, '2025-03-26', '07:00:09', '17:35:05', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(120, 1, 4, '2025-03-27', '07:10:37', '16:19:59', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(121, 1, 4, '2025-03-28', '07:08:02', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(122, 1, 4, '2025-03-29', '07:01:52', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(123, 1, 4, '2025-03-30', '07:09:12', '00:00:00', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47'),
(124, 1, 4, '2025-03-31', '10:41:21', '16:50:06', 'D', NULL, '2025-06-16 02:11:47', '2025-06-16 02:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `departemen` varchar(255) NOT NULL,
  `staff` enum('0','1') NOT NULL DEFAULT '1',
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tgl_masuk_kerja` date NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`id`, `user_id`, `nrp`, `jabatan`, `departemen`, `staff`, `tempat_lahir`, `tanggal_lahir`, `tgl_masuk_kerja`, `no_hp`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, '10109086', 'PROJECT MANAGER', 'OPERATION', '1', 'BANTUL', '1983-10-13', '1983-10-13', '0811656616', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(2, 3, '10110143', 'HE. OPERATOR', 'PRODUCTION', '0', 'BANDUNG', '1975-09-05', '1975-09-05', '81351146953', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(3, 4, '10110209', 'GROUP LEADER ROAD DEVELOPMENT & MAINTENANCE', 'PIT SERVICE', '0', 'BLITAR', '1985-02-14', '1985-02-14', '81251356792', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(4, 5, '10110229', 'TP. OPERATOR', 'PRODUCTION', '0', 'BLITAR', '1971-08-10', '1971-08-10', '82154153559', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(5, 6, '10110230', 'TP. OPERATOR', 'PRODUCTION', '0', 'KEDIRI', '1971-12-29', '1971-12-29', '81359635653', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(6, 7, '10110245', 'HE. OPERATOR', 'PRODUCTION', '0', 'BLITAR', '1982-05-25', '1982-05-25', '85815557591', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(7, 8, '10110249', 'GROUP LEADER DEWATERING & LIGHTING', 'PIT SERVICE', '1', 'LUMAJANG', '1978-04-02', '1978-04-02', '81349077539', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(8, 9, '10111362', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'BANJARNEGARA', '1980-07-05', '1980-07-05', '81391006540', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(9, 10, '10111294', 'DEPUTY PROJECT MANAGER', 'OPERATION', '1', 'SUKABUMI', '1987-06-18', '1987-06-18', '81572758850', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(10, 11, '10112579', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '1', 'KULON PROGO', '1988-02-01', '1988-02-01', '81224903057', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(11, 12, '10111363', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '1983-11-13', '1983-11-13', '81392811341', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(12, 13, '10111413', 'HE. OPERATOR', 'PRODUCTION', '0', 'SLEMAN', '1989-03-11', '1989-03-11', '82137687669', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(13, 14, '10111514', 'HE. OPERATOR', 'PRODUCTION', '0', 'KARANGANYAR', '1984-11-25', '1984-11-25', '81347575627', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(14, 15, '10112580', 'GROUP LEADER DEWATERING & LIGHTING', 'PIT SERVICE', '1', 'BOGOR', '1989-08-01', '1989-08-01', '85782331620', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(15, 16, '10111557', 'GROUP LEADER HSE FIELD', 'HSE', '1', 'SEMARANG', '1989-12-27', '1989-12-27', '85249399850', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(16, 17, '10112569', 'GROUP LEADER MANPOWER PLANNING', 'PRODUCTION', '1', 'BOYOLALI', '1993-09-12', '1993-09-12', '81255696973', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(17, 18, '10112649', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'SIPOLLUNG', '1977-06-28', '1977-06-28', '81250121363', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(18, 19, '10112653', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '1', 'SEMARANG', '1988-03-27', '1988-03-27', '81240411947', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(19, 20, '10112586', 'HE. OPERATOR', 'PRODUCTION', '0', 'SEMARANG', '1987-09-13', '1987-09-13', '85754146778', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(20, 21, '10112594', 'HE. OPERATOR', 'PRODUCTION', '0', 'BOYOLALI', '1993-04-12', '1993-04-12', '81318078984', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(21, 22, '10112597', 'HE. OPERATOR', 'PRODUCTION', '0', 'SEMARANG', '1993-03-16', '1993-03-16', '81252654123', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(22, 23, '10112599', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'SEMARANG', '1993-03-07', '1993-03-07', '82250703124', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(23, 24, '10112603', 'TP. OPERATOR', 'PRODUCTION', '0', 'MEDAN', '1985-11-15', '1985-11-15', '85878357773', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(24, 25, '10112612', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '1980-10-20', '1980-10-20', '81327607270', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(25, 26, '10112613', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '1982-02-06', '1982-02-06', '85754275972', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(26, 27, '10112617', 'TP. OPERATOR', 'PRODUCTION', '0', 'BOJONEGORO', '1979-12-27', '1979-12-27', '82242004613', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(27, 28, '10112618', 'HE. OPERATOR', 'PRODUCTION', '0', 'CILACAP', '1990-08-06', '1990-08-06', '82242882068', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(28, 29, '10112623', 'TP. OPERATOR', 'PRODUCTION', '0', 'TRENGGALEK', '1973-03-05', '1973-03-05', '85246569291', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(29, 30, '10112624', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '0', 'BANJAR NEGARA', '1985-06-11', '1985-06-11', '82227899224', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(30, 31, '10112711', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'BANDAR MANIS', '1983-01-15', '1983-01-15', '81347544426', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(31, 32, '10112651', 'SECTION HEAD PIT SERVICE', 'PIT SERVICE', '1', 'BOYOLALI', '1977-05-13', '1977-05-13', '81350561757', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(32, 33, '10112741', 'GROUP LEADER COAL', 'PRODUCTION', '1', 'LUMBAN RANG', '1980-08-07', '1980-08-07', '81254742314', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(33, 34, '10112681', 'SECTION HEAD PRODUCTION', 'PRODUCTION', '1', 'BLITAR', '1981-10-09', '1981-10-09', '81347394360', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(34, 35, '10112690', 'TP. OPERATOR', 'PRODUCTION', '0', 'MALANG', '1976-02-23', '1976-02-23', '81333126390', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(35, 36, '10112796', 'SECTION HEAD PRODUCTION', 'PRODUCTION', '1', 'PULAU BUNYU', '1987-04-26', '1987-04-26', '85251707777', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(36, 37, '10112696', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '1987-02-01', '1987-02-01', '82353006258', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(37, 38, '10112699', 'TP. OPERATOR', 'PRODUCTION', '0', 'MALANG', '1987-06-03', '1987-06-03', '85252944944', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(38, 39, '10112703', 'TP. OPERATOR', 'PRODUCTION', '0', 'MALANG', '1984-08-11', '1984-08-11', '82264206364', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(39, 40, '10112708', 'HE. OPERATOR', 'PRODUCTION', '0', 'MADIUN', '1981-05-25', '1981-05-25', '81335503192', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(40, 41, '10112832', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'PONOROGO', '1992-09-11', '1992-09-11', '85213271644', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(41, 42, '10113917', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '1', 'PURBALINGGA', '1978-02-09', '1978-02-09', '82148721616', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(42, 43, '10112742', 'HE. OPERATOR', 'PRODUCTION', '0', 'SANGKAROPI', '1983-01-27', '1983-01-27', '81254404991', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(43, 44, '10112759', 'HE. OPERATOR', 'PRODUCTION', '0', 'KENDAL', '1991-04-03', '1991-04-03', '82134859260', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(44, 45, '10112760', 'HE. OPERATOR', 'PRODUCTION', '0', 'TULUNGAGUNG', '1992-10-28', '1992-10-28', '85749685828', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(45, 46, '10112777', 'TP. OPERATOR', 'PRODUCTION', '0', 'SUKABUMI', '1987-07-13', '1987-07-13', '81253067732', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(46, 47, '10112778', 'HE. OPERATOR', 'PRODUCTION', '0', 'BLITAR', '1989-09-19', '1989-09-19', '81250653281', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(47, 48, '10112782', 'HE. OPERATOR', 'PRODUCTION', '0', 'BLITAR', '1992-10-27', '1992-10-27', '82250251999', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(48, 49, '10113945', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'SEMARANG', '1991-04-19', '1991-04-19', '81229602243', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(49, 50, '10113964', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'BANJARNEGARA', '1992-04-22', '1992-04-22', '85350522443', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(50, 51, '10112798', 'GROUP LEADER FABRICATION', 'PLANT', '1', 'CILACAP', '1977-07-13', '1977-07-13', '85651029075', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(51, 52, '10112817', 'HE. OPERATOR', 'PRODUCTION', '0', 'WARU', '1973-06-07', '1973-06-07', '82211631962', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(52, 53, '10112840', 'TP. OPERATOR', 'PRODUCTION', '0', 'BREBES', '1978-08-21', '1978-08-21', '81373955715', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(53, 54, '10112846', 'TP. OPERATOR', 'PRODUCTION', '0', 'CILACAP', '1984-08-14', '1984-08-14', '82135433234', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(54, 55, '10112871', 'DEPARTEMEN HEAD PRODUCTION', 'PRODUCTION', '1', 'KLATEN', '1988-10-26', '1988-10-26', '81284544767', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(55, 56, '10113891', 'HE. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '1987-02-01', '1987-02-01', '81328716180', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(56, 57, '10113912', 'TP. OPERATOR', 'PRODUCTION', '0', 'KLATEN', '1990-06-13', '1990-06-13', '85867212287', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(57, 58, '10311348', 'SECTION HEAD PRODUCTION', 'PRODUCTION', '1', 'SAWAHLUNTO', '1989-10-23', '1989-10-23', '82250436081', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(58, 59, '10113919', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '1976-04-14', '1976-04-14', '85249304900', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(59, 60, '10113922', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '1974-09-02', '1974-09-02', '81349547171', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(60, 61, '10113943', 'TP. OPERATOR', 'PRODUCTION', '0', 'PATI', '1988-08-14', '1988-08-14', '85326047827', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(61, 62, '10312401', 'GROUP LEADER ROAD DEVELOPMENT & MAINTENANCE', 'PIT SERVICE', '1', 'TANJUNG REDEB', '1993-02-05', '1993-02-05', '82354444611', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(62, 63, '10113947', 'HE. OPERATOR', 'PRODUCTION', '0', 'MADIUN', '1988-03-13', '1988-03-13', '81217008421', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(63, 64, '10113953', 'GROUP LEADER SURVEYOR', 'ENGINEERING', '1', 'SEBAMBAN II', '1984-05-21', '1984-05-21', '85346887796', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(64, 65, '10113962', 'HE. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '1993-05-19', '1993-05-19', '82242430198', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(65, 66, '10113963', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '0', 'BANYUMAS', '1989-12-19', '1989-12-19', '82299918267', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(66, 67, '10411799', 'SECTION HEAD PRODUCTION', 'PRODUCTION', '1', 'GROBONGAN', '1976-02-15', '1976-02-15', '82153846646', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(67, 68, '10113966', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANTUL', '1992-12-18', '1992-12-18', '85651112575', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(68, 69, '10115005', 'GROUP LEADER PLANT', 'PLANT', '1', 'CILACAP', '1989-12-04', '1989-12-04', '81393643638', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(69, 70, '10115006', 'GROUP LEADER PLANT', 'PLANT', '1', 'JAKARTA', '1991-05-26', '1991-05-26', '81287757059', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(70, 71, '10117006', 'DEPARTEMEN HEAD ENGINEERING', 'ENGINEERING', '1', 'KUMPULAN', '1993-02-06', '1993-02-06', '81313418175', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(71, 72, '10117023', 'SECTION HEAD MINE PLANNING', 'ENGINEERING', '1', 'JAKARTA', '1994-04-14', '1994-04-14', '8567670125', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(72, 73, '10411485', 'SECTION HEAD PRODUCTION', 'PRODUCTION', '1', 'MERRARA', '1987-08-28', '1987-08-28', '81350340463', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(73, 74, '10117031', 'SECTION HEAD PRODUCTION', 'PRODUCTION', '1', 'JAKARTA', '1991-09-02', '1991-09-02', '82325814896', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(74, 75, '10307003', 'TP. OPERATOR', 'PRODUCTION', '0', 'MAGELANG', '1972-09-03', '1972-09-03', '85245454225', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(75, 76, '10510012', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '1', 'RAMBA KULU', '1975-12-10', '1975-12-10', '85751587822', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(76, 77, '10308061', 'TP. OPERATOR', 'PRODUCTION', '0', 'TORAJA', '1977-10-16', '1977-10-16', '82256074803', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(77, 78, '10308062', 'TP. OPERATOR', 'PRODUCTION', '0', 'TORAJA', '1973-12-02', '1973-12-02', '81346623573', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(78, 79, '10311315', 'TP. OPERATOR', 'PRODUCTION', '0', 'RANTAU', '1979-03-11', '1979-03-11', '81394943336', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(79, 80, '10511041', 'HE. OPERATOR', 'PRODUCTION', '0', 'SURABAYA', '1991-11-05', '1991-11-05', '82153946829', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(80, 81, '10311359', 'TP. OPERATOR', 'PRODUCTION', '0', 'BLITAR', '1978-11-10', '1978-11-10', '81349319907', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(81, 82, '10512002', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'MEDAN', '1983-04-05', '1983-04-05', '8115401328', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(82, 83, '10409044', 'GROUP LEADER MONITORING & CONTROL', 'ENGINEERING', '1', 'BLORA', '1989-09-10', '1989-09-10', '81346605357', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(83, 84, '10412872', 'HE. OPERATOR', 'PRODUCTION', '0', 'TORAJA', '1981-04-24', '1981-04-24', '85246920140', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(84, 85, '10413914', 'HE. OPERATOR', 'PRODUCTION', '0', 'TOMBA', '1989-12-30', '1989-12-30', '82351519395', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(85, 86, '10510004', 'HE. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1981-12-20', '1981-12-20', '82121120004', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(86, 87, '10611019', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '1', 'NAGA KISAR', '1990-06-08', '1990-06-08', '82152452770', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(87, 88, '10510023', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANAH TORAJA', '1976-08-07', '1976-08-07', '81254881113', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(88, 89, '10511004', 'HE. OPERATOR', 'PRODUCTION', '0', 'SEI PANCANG', '1990-07-27', '1990-07-27', '82258337373', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(89, 90, '10511013', 'TP. OPERATOR', 'PRODUCTION', '0', 'MAGETAN', '1986-04-13', '1986-04-13', '82331614999', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(90, 91, '10511033', 'HE. OPERATOR', 'PRODUCTION', '0', 'KEDIRI', '1988-06-26', '1988-06-26', '81347649095', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(91, 92, '10612006', 'GROUP LEADER COAL', 'PRODUCTION', '1', 'SAUKONG', '1992-02-02', '1992-02-02', '85390869124', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(92, 93, '10511045', 'TP. OPERATOR', 'PRODUCTION', '0', 'BONTANG', '1991-01-07', '1991-01-07', '82188850880', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(93, 94, '10717047', 'GROUP LEADER COAL', 'PRODUCTION', '1', 'TRENGGALEK', '1977-07-12', '1977-07-12', '81259772773', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(94, 95, '10512030', 'HE. OPERATOR', 'PRODUCTION', '0', 'TORAJA', '1992-04-05', '1992-04-05', '81254356233', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(95, 96, '10611009', 'TP. OPERATOR', 'PRODUCTION', '0', 'TATOR', '1976-07-23', '1976-07-23', '82121258870', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(96, 97, '10611018', 'HE. OPERATOR', 'PRODUCTION', '0', 'LUMBAN HARIARA', '1991-08-11', '1991-08-11', '82357327897', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(97, 98, '10812001', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'LAMONGAN', '1988-06-18', '1988-06-18', '85312091867', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(98, 99, '10612005', 'GROUP LEADER ROAD DEVELOPMENT & MAINTENANCE', 'PIT SERVICE', '0', 'ARAKARAE', '1987-06-14', '1987-06-14', '81253100672', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(99, 100, '10812003', 'GROUP LEADER DEWATERING & LIGHTING', 'PIT SERVICE', '1', 'LOMPOLOANG', '1989-11-19', '1989-11-19', '82153306480', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(100, 101, '10712001', 'HE. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '1983-12-10', '1983-12-10', '85347013111', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(101, 102, '10712003', 'TP. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1989-02-18', '1989-02-18', '81242343320', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(102, 103, '10712004', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'TIDUNG PALA', '1979-05-07', '1979-05-07', '82157360775', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(103, 104, '10712007', 'GROUP LEADER MONITORING & CONTROL', 'ENGINEERING', '1', 'TARAKAN', '1989-09-11', '1989-09-11', '85387791926', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(104, 105, '10718047', 'TP. OPERATOR', 'PRODUCTION', '0', 'PANTAI HAMBALANG', '1989-02-06', '1989-02-06', '82353005400', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(105, 106, '10712013', 'GROUP LEADER WAREHOUSE', 'SCM', '1', 'BUNYU', '1986-04-04', '1986-04-04', '81328242904', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(106, 107, '10712014', 'JUNIOR GROUP LEADER CHASIER', 'FINANCE', '1', 'JOMBANG', '1988-07-11', '1988-07-11', '82142000488', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(107, 108, '10712022', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1991-12-10', '1991-12-10', '82254091018', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(108, 109, '10712026', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '1982-03-02', '1982-03-02', '81347804448', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(109, 110, '10712027', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '1', 'JARAMELE', '1985-06-16', '1985-06-16', '81317431204', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(110, 111, '10712031', 'TP. OPERATOR', 'PRODUCTION', '0', 'TUJUNG', '1985-05-12', '1985-05-12', '85249387477', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(111, 112, '10712033', 'HE. OPERATOR', 'PRODUCTION', '0', 'MENJELUTUNG', '1989-01-12', '1989-01-12', '85753154048', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(112, 113, '10712034', 'TP. OPERATOR', 'PRODUCTION', '0', 'MENJELUTUNG', '1982-02-15', '1982-02-15', '81350080026', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(113, 114, '10712035', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1985-02-01', '1985-02-01', '85249351583', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(114, 115, '10713001', 'TP. OPERATOR', 'PRODUCTION', '0', 'TUKULON', '1977-06-04', '1977-06-04', '85387791236', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(115, 116, '10713007', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'PATI', '1973-03-12', '1973-03-12', '85249691014', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(116, 117, '10713013', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '1979-12-13', '1979-12-13', '81347529897', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(117, 118, '10713017', 'TP. OPERATOR', 'PRODUCTION', '0', 'TOLI-TOLI', '1976-10-22', '1976-10-22', '81354488833', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(118, 119, '10713018', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1987-04-09', '1987-04-09', '85247179507', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(119, 120, '10713019', 'TP. OPERATOR', 'PRODUCTION', '0', 'SINGAI TRANG', '1986-07-14', '1986-07-14', '81254857773', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(120, 121, '10713020', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1985-09-09', '1985-09-09', '85247696808', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(121, 122, '10713022', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1986-01-18', '1986-01-18', '85386199934', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(122, 123, '10713023', 'TP. OPERATOR', 'PRODUCTION', '0', 'MAGETAN', '1975-11-14', '1975-11-14', '85347360314', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(123, 124, '10713028', 'TP. OPERATOR', 'PRODUCTION', '0', 'PEM PANEI', '1975-08-29', '1975-08-29', '81350354510', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(124, 125, '10713031', 'HE. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '1984-07-01', '1984-07-01', '82250419683', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(125, 126, '10713032', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1981-10-10', '1981-10-10', '85250911934', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(126, 127, '10713033', 'TP. OPERATOR', 'PRODUCTION', '0', 'LABUK', '1981-05-05', '1981-05-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(127, 128, '10713035', 'HE. OPERATOR', 'PRODUCTION', '0', 'SEMBAKUNG', '1984-07-20', '1984-07-20', '81255694214', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(128, 129, '10713037', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANDAR LAMPUNG', '1978-05-07', '1978-05-07', '81253448798', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(129, 130, '10714014', 'PLANT CENTRAL CONTROLL ROOM', 'PLANT', '0', 'LAHAD DATU', '1995-02-12', '1995-02-12', '82158080816', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(130, 131, '10714016', 'HE. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '1985-08-14', '1985-08-14', '81347768204', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(131, 132, '10714017', 'TP. OPERATOR', 'PRODUCTION', '0', 'TOLI-TOLI', '1975-03-07', '1975-03-07', '82154031163', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(132, 133, '10714020', 'HE. OPERATOR', 'PRODUCTION', '0', 'SUYADON', '1982-07-01', '1982-07-01', '85250750253', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(133, 134, '10714025', 'TP. OPERATOR', 'PRODUCTION', '0', 'PULAU KERAS', '1984-07-08', '1984-07-08', '82250556691', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(134, 135, '10714027', 'TP. OPERATOR', 'PRODUCTION', '0', 'SERANG', '1993-10-05', '1993-10-05', '85332620421', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(135, 136, '10714029', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1993-04-06', '1993-04-06', '85249539030', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(136, 137, '10714030', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1984-03-03', '1984-03-03', '82251364284', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(137, 138, '10714031', 'TP. OPERATOR', 'PRODUCTION', '0', 'RUHUI RAHAYU', '1991-08-23', '1991-08-23', '85387793287', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(138, 139, '10714034', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1984-08-20', '1984-08-20', '82152940461', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(139, 140, '10714042', 'GROUP LEADER INVENTORY', 'SCM', '1', 'SOROWAKO', '1982-11-15', '1982-11-15', '81341747256', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(140, 141, '10714043', 'JUNIOR GROUP LEADER PLANT PLANNING MONITORING & EVALUATION', 'PLANT', '1', 'WONOGIRI', '1980-12-26', '1980-12-26', '82242177536', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(141, 142, '10715001', 'TP. OPERATOR', 'PRODUCTION', '0', 'BAYA BARU', '1988-04-07', '1988-04-07', '85751144449', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(142, 143, '10715002', 'HSE FIELD ADMIN', 'HSE', '0', 'TARAKAN', '1995-12-23', '1995-12-23', '82352646852', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(143, 144, '10715008', 'GROUP LEADER GENERAL SERVICES', 'GENERAL SERVICES', '1', 'LAMONGAN', '1989-08-31', '1989-08-31', '85642392719', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(144, 145, '10716004', 'TP. OPERATOR', 'PRODUCTION', '0', 'KARANGANYAR', '1996-03-10', '1996-03-10', '82227874443', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(145, 146, '10716011', 'TP. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1987-05-01', '1987-05-01', '82233577620', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(146, 147, '10716012', 'TP. OPERATOR', 'PRODUCTION', '0', 'PULAU KERAS', '1972-09-15', '1972-09-15', '85335752406', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(147, 148, '10716016', 'TP. OPERATOR', 'PRODUCTION', '0', 'TUKULON', '1980-07-01', '1980-07-01', '81256139932', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(148, 149, '10716017', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TOLI-TOLI', '1986-05-07', '1986-05-07', '85239968613', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(149, 150, '10717001', 'TP. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '1992-08-05', '1992-08-05', '81347524179', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(150, 151, '10717002', 'TP. OPERATOR', 'PRODUCTION', '0', 'PAYANG', '1997-04-13', '1997-04-13', '8125103197', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(151, 152, '10717003', 'HE. OPERATOR', 'PRODUCTION', '0', 'MENJELUTUNG', '1996-09-24', '1996-09-24', '85387755092', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(152, 153, '10717006', 'GROUP LEADER FUEL & OIL', 'SCM', '1', 'MENJELUTUNG', '1982-05-05', '1982-05-05', '85348339041', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(153, 154, '10717007', 'MECHANIC', 'PLANT', '0', 'AMBON', '1994-09-21', '1994-09-21', '85261496208', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(154, 155, '10717011', 'TP. OPERATOR', 'PRODUCTION', '0', 'SENGKONG', '1988-01-04', '1988-01-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(155, 156, '10717012', 'TP. OPERATOR', 'PRODUCTION', '0', 'SENGKONG', '1983-05-04', '1983-05-04', '85390429322', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(156, 157, '10717016', 'HE. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '1992-08-05', '1992-08-05', '85249631183', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(157, 158, '10717017', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANJUNG KARANG', '1981-04-09', '1981-04-09', '82298988817', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(158, 159, '10717019', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'LEMO MENDURUK', '1979-09-04', '1979-09-04', '81350958815', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(159, 160, '10717020', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'BEBATU', '1992-01-15', '1992-01-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(160, 161, '10717022', 'HE. OPERATOR', 'PRODUCTION', '0', 'TUKULON', '1995-05-02', '1995-05-02', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(161, 162, '10717023', 'TP. OPERATOR', 'PRODUCTION', '0', 'PANDEGLANG', '1984-07-15', '1984-07-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(162, 163, '10717026', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1982-09-29', '1982-09-29', '85247455272', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(163, 164, '10717030', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1993-07-14', '1993-07-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(164, 165, '10717031', 'HE. OPERATOR', 'PRODUCTION', '0', 'ENREKANG', '1979-07-07', '1979-07-07', '81350543210', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(165, 166, '10717033', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1989-09-13', '1989-09-13', '85151425590', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(166, 167, '10717035', 'HE. OPERATOR', 'PRODUCTION', '0', 'KULO', '1981-09-22', '1981-09-22', '81350788296', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(167, 168, '10717036', 'TP. OPERATOR', 'PRODUCTION', '0', 'MUBA', '1984-04-04', '1984-04-04', '85652049585', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(168, 169, '10717037', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1990-04-01', '1990-04-01', '85821939226', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(169, 170, '10717038', 'TP. OPERATOR', 'PRODUCTION', '0', 'BELAWAE', '1981-01-05', '1981-01-05', '85332497479', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(170, 171, '10717040', 'TP. OPERATOR', 'PRODUCTION', '0', 'PALOPO', '1991-12-08', '1991-12-08', '82256086156', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(171, 172, '10718100', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '1', 'UJUNG PANDANG', '1989-07-14', '1989-07-14', '82293556539', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(172, 173, '10717052', 'TP. OPERATOR', 'PRODUCTION', '0', 'BONE', '1987-08-05', '1987-08-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(173, 174, '10717054', 'TOOLS KEEPER', 'PLANT', '0', 'TARAKAN', '1986-09-02', '1986-09-02', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(174, 175, '10717055', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1989-12-01', '1989-12-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(175, 176, '10717056', 'GROUP LEADER FABRICATION', 'PLANT', '1', 'TARAKAN', '1995-12-06', '1995-12-06', '81251270058', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(176, 177, '10717058', 'MECHANIC', 'PLANT', '0', 'NGANJUK', '1987-04-12', '1987-04-12', '82156725579', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(177, 178, '10717060', 'TP. OPERATOR', 'PRODUCTION', '0', 'MENJELUTUNG', '1992-12-29', '1992-12-29', '85388703306', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(178, 179, '10717062', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'PINTU PADANG', '1994-04-10', '1994-04-10', '85350756009', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(179, 180, '10717063', 'TP. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '1988-10-22', '1988-10-22', '85247947861', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(180, 181, '10717064', 'TP. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '1987-05-03', '1987-05-03', '85347064298', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(181, 182, '10717065', 'GROUP LEADER FUEL & OIL', 'SCM', '1', 'TARAKAN', '1985-06-04', '1985-06-04', '81364490118', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(182, 183, '10717068', 'TP. OPERATOR', 'PRODUCTION', '0', 'BERAU', '1976-03-03', '1976-03-03', '82149692228', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(183, 184, '10717071', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '0', 'BALIKPAPAN', '1988-09-05', '1988-09-05', '81253219220', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(184, 185, '10717073', 'TP. OPERATOR', 'PRODUCTION', '0', 'ENDE', '1976-08-13', '1976-08-13', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(185, 186, '10717082', 'HE. OPERATOR', 'PRODUCTION', '0', 'TAWAU', '1984-04-24', '1984-04-24', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(186, 187, '10717083', 'HE. OPERATOR', 'PRODUCTION', '0', 'MIRI', '1993-03-17', '1993-03-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(187, 188, '10717086', 'TP. OPERATOR', 'PRODUCTION', '0', 'MAKASSAR', '1983-09-10', '1983-09-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(188, 189, '10718004', 'TP. OPERATOR', 'PRODUCTION', '0', 'MAKASSAR', '1982-03-30', '1982-03-30', '85395924457', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(189, 190, '10718011', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1991-09-05', '1991-09-05', '81288258349', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(190, 191, '10718012', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1989-03-22', '1989-03-22', '82251592072', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(191, 192, '10718014', 'HE. OPERATOR', 'PRODUCTION', '0', 'BUNYU', '1985-10-31', '1985-10-31', '81347062300', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(192, 193, '10810001', 'TP. OPERATOR', 'PRODUCTION', '0', 'SALASSAE', '1976-02-17', '1976-02-17', '8125374231', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(193, 194, '10810005', 'TP. OPERATOR', 'PRODUCTION', '0', 'PALU', '1971-12-22', '1971-12-22', '81350909699', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(194, 195, '10811008', 'HE. OPERATOR', 'PRODUCTION', '0', 'BUNTU TABANG', '1980-09-03', '1980-09-03', '81349010001', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(195, 196, '10718111', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '1', 'PANGAPARANG', '1980-11-20', '1980-11-20', '82152836868', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(196, 197, '10719036', 'GROUP LEADER COAL', 'PRODUCTION', '1', 'SALID', '1982-05-12', '1982-05-12', '82352063425', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(197, 198, '10812005', 'HE. OPERATOR', 'PRODUCTION', '0', 'RANTE', '1989-07-12', '1989-07-12', '82244507444', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(198, 199, '10812008', 'HE. OPERATOR', 'PRODUCTION', '0', 'BALIKPAPAN', '1993-04-21', '1993-04-21', '82353326078', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(199, 200, '10910006', 'HE. OPERATOR', 'PRODUCTION', '0', 'TULUNGAGUNG', '1982-03-10', '1982-03-10', '82148093718', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(200, 201, '11108010', 'GROUP LEADER PLANT', 'PLANT', '1', 'SRAGEN', '1990-05-30', '1990-05-30', '85249690824', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(201, 202, '11109026', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'KLATEN', '1991-10-27', '1991-10-27', '85654804262', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(202, 203, '11109030', 'MECHANIC', 'PLANT', '0', 'SURABAYA', '1987-07-03', '1987-07-03', '82148504616', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(203, 204, '11109042', 'SECTION HEAD PLANT OPERATION SUPPORT', 'PLANT', '1', 'MAGELANG', '1988-09-25', '1988-09-25', '82250378793', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(204, 205, '11109051', 'GROUP LEADER PLANT', 'PLANT', '1', 'KARANGANYAR', '1991-08-01', '1991-08-01', '85229198711', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(205, 206, '11109058', 'GROUP LEADER PLANT', 'PLANT', '1', 'SRAGEN', '1987-04-25', '1987-04-25', '81393359954', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(206, 207, '11109080', 'GROUP LEADER PLANT', 'PLANT', '1', 'SRAGEN', '1988-08-16', '1988-08-16', '85725554563', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(207, 208, '11110014', 'GROUP LEADER PLANT', 'PLANT', '1', 'SLEMAN', '1990-01-22', '1990-01-22', '85729031337', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(208, 209, '11110017', 'GROUP LEADER PLANT PLANNING MONITORING & EVALUATION', 'PLANT', '0', 'BOYOLALI', '1991-08-23', '1991-08-23', '85329058584', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(209, 210, '11110074', 'GROUP LEADER PLANT', 'PLANT', '0', 'WONO GIRI', '1990-03-12', '1990-03-12', '85229687851', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(210, 211, '11110105', 'GROUP LEADER PLANT', 'PLANT', '1', 'BANTUL', '1991-07-17', '1991-07-17', '85800095045', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(211, 212, '11110141', 'GROUP LEADER PLANT', 'PLANT', '1', 'KARANGANYAR', '1989-12-08', '1989-12-08', '8562504405', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(212, 213, '11110142', 'GROUP LEADER PLANT', 'PLANT', '1', 'SRAGEN', '1992-05-17', '1992-05-17', '8562813210', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(213, 214, '11110157', 'MECHANIC', 'PLANT', '0', 'CILACAP', '1992-03-31', '1992-03-31', '81327307358', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(214, 215, '11111045', 'GROUP LEADER PLANT', 'PLANT', '1', 'BANDUNG', '1987-06-14', '1987-06-14', '82232403015', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(215, 216, '11111052', 'MECHANIC', 'PLANT', '0', 'SEMARANG', '1987-10-24', '1987-10-24', '85640843816', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(216, 217, '11111065', 'GROUP LEADER PLANT PLANNING MONITORING & EVALUATION', 'PLANT', '1', 'SRAGEN', '1993-03-26', '1993-03-26', '85741207565', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(217, 218, '11111067', 'GROUP LEADER PLANT', 'PLANT', '1', 'SEMARANG', '1987-09-14', '1987-09-14', '85729242200', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(218, 219, '11111133', 'MECHANIC', 'PLANT', '0', 'CILACAP', '1992-09-11', '1992-09-11', '82134112328', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(219, 220, '11111141', 'GROUP LEADER PLANT', 'PLANT', '1', 'CILACAP', '1993-04-04', '1993-04-04', '82157068196', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(220, 221, '11111158', 'MECHANIC', 'PLANT', '0', 'SEMARANG', '1992-04-12', '1992-04-12', '8562802798', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(221, 222, '11111171', 'GROUP LEADER PLANT', 'PLANT', '1', 'WONOGIRI', '1991-03-10', '1991-03-10', '85647122314', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(222, 223, '11111185', 'GROUP LEADER PLANT', 'PLANT', '1', 'KARANGANYAR', '1990-01-25', '1990-01-25', '82138436844', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(223, 224, '11111186', 'MECHANIC', 'PLANT', '0', 'SEMARANG', '1992-09-08', '1992-09-08', '85741031503', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(224, 225, '11111191', 'GROUP LEADER PLANT ENGINEER', 'PLANT', '1', 'LANGSA', '1992-08-30', '1992-08-30', '85261477580', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(225, 226, '11111199', 'GROUP LEADER PLANT', 'PLANT', '1', 'MALANG', '1991-04-24', '1991-04-24', '85669900955', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(226, 227, '11111202', 'MECHANIC', 'PLANT', '0', 'SUKOHARJO', '1991-04-19', '1991-04-19', '85654056005', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(227, 228, '11111208', 'GROUP LEADER PLANT', 'PLANT', '0', 'CILACAP', '1990-07-13', '1990-07-13', '85753274226', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(228, 229, '11112019', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'KARANGANYAR', '1991-07-09', '1991-07-09', '81315252617', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(229, 230, '11112027', 'MECHANIC', 'PLANT', '0', 'SEMARANG', '1989-05-26', '1989-05-26', '82284613678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(230, 231, '11112030', 'MECHANIC', 'PLANT', '0', 'KEBUMEN', '1992-04-28', '1992-04-28', '82155598903', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(231, 232, '11112038', 'GROUP LEADER PLANT ENGINEER', 'PLANT', '1', 'SUKOHARJO', '1990-10-02', '1990-10-02', '81336750830', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(232, 233, '11112046', 'GROUP LEADER PLANT', 'PLANT', '0', 'SLEMAN', '1993-09-02', '1993-09-02', '85642428826', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(233, 234, '11112048', 'GROUP LEADER PLANT ENGINEER', 'PLANT', '0', 'BOYOLALI', '1994-06-24', '1994-06-24', '81255650684', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(234, 235, '11112056', 'MECHANIC', 'PLANT', '0', 'PEKALONGAN', '1994-03-19', '1994-03-19', '81228661079', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(235, 236, '11512097', 'MECHANIC', 'PLANT', '0', 'BLITAR', '1992-12-19', '1992-12-19', '85785887419', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(236, 237, '10718015', 'HE. OPERATOR', 'PRODUCTION', '0', 'LUPPERENG', '1995-01-06', '1995-01-06', '82292555270', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(237, 238, '10718016', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1986-07-13', '1986-07-13', '81254933644', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(238, 239, '10718023', 'HE. OPERATOR', 'PRODUCTION', '0', 'PARINDING', '1994-07-20', '1994-07-20', '82289402315', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(239, 240, '10718028', 'TP. OPERATOR', 'PRODUCTION', '0', 'TATOR', '1983-10-19', '1983-10-19', '82254372158', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(240, 241, '10718030', 'HE. OPERATOR', 'PRODUCTION', '0', 'MAKALE', '1986-08-28', '1986-08-28', '82154779141', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(241, 242, '10718032', 'MECHANIC', 'PLANT', '0', 'SANDAKAN', '1991-08-03', '1991-08-03', '82250497875', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(242, 243, '10718034', 'TP. OPERATOR', 'PRODUCTION', '0', 'SINGKOTEK', '1980-05-14', '1980-05-14', '81350203840', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(243, 244, '10718039', 'TP. OPERATOR', 'PRODUCTION', '0', 'KEDIRI', '1982-04-27', '1982-04-27', '81385555709', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(244, 245, '10718040', 'TP. OPERATOR', 'PRODUCTION', '0', 'KULON PROGO', '1995-06-27', '1995-06-27', '82153276311', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(245, 246, '10718043', 'HE. OPERATOR', 'PRODUCTION', '0', 'TIKALA', '1990-09-23', '1990-09-23', '81347281623', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(246, 247, '10718044', 'HE. OPERATOR', 'PRODUCTION', '0', 'TALLUNGLIPU', '1979-06-25', '1979-06-25', '81253483906', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(247, 248, '10718046', 'HE. OPERATOR', 'PRODUCTION', '0', 'BALIKPAPAN', '1985-09-18', '1985-09-18', '85387034172', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(248, 249, '10719041', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'UJUNG PANDANG', '1987-10-06', '1987-10-06', '85246338707', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(249, 250, '10718053', 'TP. OPERATOR', 'PRODUCTION', '0', 'RANTEPAO', '1986-12-18', '1986-12-18', '82155096476', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(250, 251, '10718056', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANYUMAS', '1988-07-02', '1988-07-02', '81221094422', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(251, 252, '10718057', 'TP. OPERATOR', 'PRODUCTION', '0', 'SAUSU PAKAREME', '1994-09-01', '1994-09-01', '85248164346', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(252, 253, '10718061', 'TP. OPERATOR', 'PRODUCTION', '0', 'TAMPAN', '1985-08-22', '1985-08-22', '82353833860', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(253, 254, '10118013', 'GROUP LEADER TYRE', 'PLANT', '1', 'TANJUNG', '1974-11-18', '1974-11-18', '81322111874', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(254, 255, '10718063', 'HE. OPERATOR', 'PRODUCTION', '0', 'BOTTODONGGA', '1991-12-11', '1991-12-11', '85211292346', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(255, 256, '10718070', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1990-09-11', '1990-09-11', '85247508233', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(256, 257, '10718072', 'HE. OPERATOR', 'PRODUCTION', '0', 'BURI', '1986-11-09', '1986-11-09', '82353103586', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(257, 258, '10718075', 'TP. OPERATOR', 'PRODUCTION', '0', 'YOGYAKARTA', '1990-03-27', '1990-03-27', '82225986090', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(258, 259, '10718077', 'TP. OPERATOR', 'PRODUCTION', '0', 'BONE', '1984-09-09', '1984-09-09', '85350294740', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(259, 260, '10718079', 'TP. OPERATOR', 'PRODUCTION', '0', 'MALANG', '1988-09-27', '1988-09-27', '85331410555', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(260, 261, '10718080', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1980-12-29', '1980-12-29', '85247599111', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(261, 262, '10718126', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '2001-04-15', '2001-04-15', '85346383283', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(262, 263, '10718129', 'PLANT CENTRAL CONTROLL ROOM', 'PLANT', '0', 'TAGUL', '1992-11-27', '1992-11-27', '85245436516', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(263, 264, '10718131', 'MECHANIC', 'PLANT', '0', 'TAGUL', '1994-06-15', '1994-06-15', '85390934725', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(264, 265, '10718132', 'MECHANIC', 'PLANT', '0', 'SADUMAN', '1998-04-03', '1998-04-03', '82293564781', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(265, 266, '10718135', 'MECHANIC', 'PLANT', '0', 'BONORAN', '1993-03-06', '1993-03-06', '82291978265', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(266, 267, '10718136', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1994-11-01', '1994-11-01', '82337109197', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(267, 268, '10718137', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1994-04-07', '1994-04-07', '82214628666', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(268, 269, '10718147', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1998-08-12', '1998-08-12', '82111503398', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(269, 270, '10718138', 'MECHANIC', 'PLANT', '0', 'SABAH', '1998-04-09', '1998-04-09', '8115371607', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(270, 271, '10718139', 'MECHANIC', 'PLANT', '0', 'RUTENG', '1996-07-04', '1996-07-04', '82154745441', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(271, 272, '10718141', 'MECHANIC', 'PLANT', '0', 'KENINGAU', '1996-01-31', '1996-01-31', '82255745207', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(272, 273, '10718142', 'MECHANIC', 'PLANT', '0', 'MALAYSIA', '1996-11-30', '1996-11-30', '82251158934', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(273, 274, '10718143', 'GROUP LEADER HSE HEALTH', 'HSE', '1', 'TARAKAN', '1998-12-31', '1998-12-31', '85388865086', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(274, 275, '10718145', 'ADMIN PLANT', 'PLANT', '0', 'MARAWI', '1996-09-29', '1996-09-29', '85299555502', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(275, 276, '10718146', 'GROUP LEADER PLANT', 'PLANT', '0', 'KENINGAU', '1996-04-22', '1996-04-22', '81255669216', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(276, 277, '10718082', 'HE. OPERATOR', 'PRODUCTION', '0', 'SENGKONG', '1980-02-23', '1980-02-23', '85247897314', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(277, 278, '10718083', 'HE. OPERATOR', 'PRODUCTION', '0', 'PARINDING', '1988-11-22', '1988-11-22', '82157597818', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(278, 279, '10718084', 'TP. OPERATOR', 'PRODUCTION', '0', 'TATOR', '1981-06-20', '1981-06-20', '81346413820', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(279, 280, '10718085', 'TP. OPERATOR', 'PRODUCTION', '0', 'KINABALU', '1984-03-23', '1984-03-23', '85332836150', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(280, 281, '10718086', 'TP. OPERATOR', 'PRODUCTION', '0', 'KEDIRI', '1984-04-25', '1984-04-25', '81235621135', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(281, 282, '10118029', 'SECTION HEAD PLANT PLANNING MONITORING & EVALUATION', 'PLANT', '1', 'MAGELANG', '1995-04-15', '1995-04-15', '87734098244', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(282, 283, '10718089', 'TP. OPERATOR', 'PRODUCTION', '0', 'TAJAN', '1990-06-06', '1990-06-06', '82351087554', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(283, 284, '10718090', 'TP. OPERATOR', 'PRODUCTION', '0', 'SESIBU', '1993-12-19', '1993-12-19', '82255925751', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(284, 285, '10718093', 'TP. OPERATOR', 'PRODUCTION', '0', 'LUBAKAN', '1989-01-27', '1989-01-27', '85348546512', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(285, 286, '10718094', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'SENGKONG', '1986-03-18', '1986-03-18', '81351282314', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(286, 287, '10718095', 'GROUP LEADER FABRICATION', 'PLANT', '1', 'TARAKAN', '1984-04-03', '1984-04-03', '85248086608', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(287, 288, '10718096', 'HE. OPERATOR', 'PRODUCTION', '0', 'BUNTAU', '1978-11-28', '1978-11-28', '85391774555', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(288, 289, '10718097', 'HE. OPERATOR', 'PRODUCTION', '0', 'TANA TORAJA', '1985-01-04', '1985-01-04', '82192041250', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(289, 290, '10718098', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '0', 'BALIKPAPAN', '1987-01-25', '1987-01-25', '85348655484', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23');
INSERT INTO `workers` (`id`, `user_id`, `nrp`, `jabatan`, `departemen`, `staff`, `tempat_lahir`, `tanggal_lahir`, `tgl_masuk_kerja`, `no_hp`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(290, 291, '10718099', 'HE. OPERATOR', 'PRODUCTION', '0', 'SEI BULUTU', '1988-04-25', '1988-04-25', '81314044027', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(291, 292, '10112779', 'GROUP LEADER MANPOWER PLANNING', 'PRODUCTION', '1', 'SUKABUMI', '1987-05-30', '1987-05-30', '85624165710', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(292, 293, '10718102', 'HE. OPERATOR', 'PRODUCTION', '0', 'TANJUNG SERI', '1992-12-10', '1992-12-10', '85248046742', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(293, 294, '10718104', 'HE. OPERATOR', 'PRODUCTION', '0', 'BELAU', '1987-08-15', '1987-08-15', '82351489942', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(294, 295, '10118034', 'GROUP LEADER MONITORING & CONTROL', 'ENGINEERING', '1', 'SLEMAN', '1998-12-30', '1998-12-30', '85269942778', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(295, 296, '10718107', 'GROUP LEADER FABRICATION', 'PLANT', '1', 'BALIKPAPAN', '1975-08-17', '1975-08-17', '8115971775', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(296, 297, '10718108', 'WELDER', 'PLANT', '0', 'TARAKAN', '1991-12-17', '1991-12-17', '82316888246', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(297, 298, '10718109', 'WELDER', 'PLANT', '0', 'SLEMAN', '1998-12-30', '1998-12-30', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(298, 299, '10207061', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '1', 'SAMPANG', '1975-11-15', '1975-11-15', '81335696982', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(299, 300, '10718114', 'TP. OPERATOR', 'PRODUCTION', '0', 'CILACAP', '1989-09-20', '1989-09-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(300, 301, '10718116', 'TP. OPERATOR', 'PRODUCTION', '0', 'HUTATOROP', '1990-07-27', '1990-07-27', '85246288080', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(301, 302, '10119008', 'MECHANIC', 'PLANT', '0', 'SUKABUMI', '1998-08-21', '1998-08-21', '81563207498', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(302, 303, '10119009', 'MECHANIC', 'PLANT', '0', 'SUKABUMI', '2000-02-18', '2000-02-18', '8984021512', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(303, 304, '10119006', 'MECHANIC', 'PLANT', '0', 'CIANJUR', '2000-10-31', '2000-10-31', '85213189565', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(304, 305, '10718121', 'TP. OPERATOR', 'PRODUCTION', '0', 'TORAJA', '1988-03-03', '1988-03-03', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(305, 306, '10718123', 'TP. OPERATOR', 'PRODUCTION', '0', 'SEMBAKUNG', '1990-07-21', '1990-07-21', '85349777139', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(306, 307, '10718125', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1993-01-03', '1993-01-03', '82250720387', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(307, 308, '10119033', 'MECHANIC', 'PLANT', '0', 'SUKABUMI', '2000-04-16', '2000-04-16', '81213579854', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(308, 309, '10119032', 'MECHANIC', 'PLANT', '0', 'SUKABUMI', '2000-07-01', '2000-07-01', '85280769662', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(309, 310, '10119036', 'GROUP LEADER PLANT PLANNING MONITORING & EVALUATION', 'PLANT', '0', 'SUKABUMI', '1997-02-17', '1997-02-17', '81398189098', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(310, 311, '10119034', 'MECHANIC', 'PLANT', '0', 'SUKABUMI', '1999-12-17', '1999-12-17', '81218381115', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(311, 312, '10719010', 'MECHANIC', 'PLANT', '0', 'BLORA', '1999-01-16', '1999-01-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(312, 313, '10719012', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1993-04-05', '1993-04-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(313, 314, '10719013', 'MECHANIC', 'PLANT', '0', 'PATAL', '1997-07-06', '1997-07-06', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(314, 315, '10719014', 'MECHANIC', 'PLANT', '0', 'MANSALONG', '1998-11-09', '1998-11-09', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(315, 316, '10718148', 'PLANT CENTRAL CONTROLL ROOM', 'PLANT', '0', 'TARAKAN', '1993-06-01', '1993-06-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(316, 317, '10719002', 'JUNIOR GROUP LEADER EMPLOYEE ADMINISTRATION', 'HUMAN CAPITAL', '1', 'PADANG PANJANG', '1983-10-08', '1983-10-08', '82391622528', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(317, 318, '10413915', 'HE. OPERATOR', 'PRODUCTION', '0', 'KUTAI KARTANEGARA', '1992-09-21', '1992-09-21', '85389323025', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(318, 319, '10119060', 'GROUP LEADER IT TECHNICAN & SUPPORT', 'CPSD', '1', 'CILACAP', '1984-08-01', '1984-08-01', '81393327576', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(319, 320, '10719019', 'TP. OPERATOR', 'PRODUCTION', '0', 'LONG BELUAH', '1986-08-24', '1986-08-24', '85249566626', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(320, 321, '10719021', 'TP. OPERATOR', 'PRODUCTION', '0', 'ATAP', '1992-07-18', '1992-07-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(321, 322, '10119062', 'GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'YOGYAKARTA', '2000-04-23', '2000-04-23', '82260402278', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(322, 323, '10119066', 'GROUP LEADER SURVEYOR', 'ENGINEERING', '1', 'KULON PROGO', '2000-01-08', '2000-01-08', '85742460372', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(323, 324, '10719025', 'TP. OPERATOR', 'PRODUCTION', '0', 'SAPAN', '1988-12-12', '1988-12-12', '85332684284', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(324, 325, '10119088', 'SECTION HEAD PIT SERVICE', 'PIT SERVICE', '1', 'MALANG', '1995-03-27', '1995-03-27', '81358074397', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(325, 326, '10119091', 'SECTION HEAD FUEL & OIL', 'SCM', '1', 'CIREBON', '1994-01-13', '1994-01-13', '81282736617', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(326, 327, '10719026', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANJUNG PALAS', '1987-06-23', '1987-06-23', '82149139198', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(327, 328, '10719027', 'TP. OPERATOR', 'PRODUCTION', '0', 'P. BUNYU', '1986-12-27', '1986-12-27', '81347004502', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(328, 329, '10719031', 'TP. OPERATOR', 'PRODUCTION', '0', 'TAMBU', '1982-07-10', '1982-07-10', '82154068315', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(329, 330, '10719035', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1998-01-21', '1998-01-21', '82320486267', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(330, 331, '10121081', 'SECTION HEAD PIT SERVICE', 'PIT SERVICE', '1', 'KARANGANYAR', '1997-11-29', '1997-11-29', '81229832820', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(331, 332, '10719037', 'HE. OPERATOR', 'PRODUCTION', '0', 'TUJUNG', '1995-07-06', '1995-07-06', '82250863940', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(332, 333, '10719038', 'HE. OPERATOR', 'PRODUCTION', '0', 'TATOR', '1983-05-25', '1983-05-25', '85387221497', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(333, 334, '10719039', 'TP. OPERATOR', 'PRODUCTION', '0', 'PULAU SAPI', '1987-10-08', '1987-10-08', '81350528135', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(334, 335, '10121093', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'CIMAHI', '1996-01-20', '1996-01-20', '82225085781', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(335, 336, '10719043', 'TP. OPERATOR', 'PRODUCTION', '0', 'PATI', '1984-01-09', '1984-01-09', '85326222287', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(336, 337, '10120003', 'MECHANIC', 'PLANT', '0', 'SUKOHARJO', '1997-08-15', '1997-08-15', '81218991690', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(337, 338, '10120001', 'MECHANIC', 'PLANT', '0', 'WONOGIRI', '2000-09-15', '2000-09-15', '81244897356', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(338, 339, '10120004', 'MECHANIC', 'PLANT', '0', 'GROBOGAN', '2000-01-23', '2000-01-23', '82144743399', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(339, 340, '10120005', 'MECHANIC', 'PLANT', '0', 'SUKABUMI', '2000-05-06', '2000-05-06', '81517828929', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(340, 341, '10119027', 'MECHANIC', 'PLANT', '0', 'BOYOLALI', '1996-12-03', '1996-12-03', '81248728674', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(341, 342, '10208139', 'TP. OPERATOR', 'PRODUCTION', '0', 'SUKABUMI', '1971-07-01', '1971-07-01', '85863675421', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(342, 343, '10112577', 'TP. OPERATOR', 'PRODUCTION', '0', 'BOYOLALI', '1993-07-01', '1993-07-01', '81391565001', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(343, 344, '10112592', 'TP. OPERATOR', 'PRODUCTION', '0', 'SEMARANG', '1993-11-27', '1993-11-27', '85742772742', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(344, 345, '10122014', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'PAMEKASAN', '1999-10-30', '1999-10-30', '82336128448', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(345, 346, '10119022', 'MECHANIC', 'PLANT', '0', 'BOGOR', '1997-01-16', '1997-01-16', '85810100635', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(346, 347, '11108055', 'SECTION HEAD PLANT OPERATIONS', 'PLANT', '1', 'KULON PROGO', '1987-07-16', '1987-07-16', '82227994664', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(347, 348, '10120006', 'SECTION HEAD GENERAL SERVICES', 'GENERAL SERVICES', '1', 'MALANG', '1993-09-08', '1993-09-08', '85731209144', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(348, 349, '10120020', 'SECTION HEAD WAREHOUSE & INVENTORY', 'SCM', '1', 'SURAKARTA', '1994-11-27', '1994-11-27', '82140416146', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(349, 350, '10720001', 'HE. OPERATOR', 'PRODUCTION', '0', 'TANJUNG SELOR', '1994-04-23', '1994-04-23', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(350, 351, '10720002', 'HE. OPERATOR', 'PRODUCTION', '0', 'KATUL', '1998-06-06', '1998-06-06', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(351, 352, '10720003', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TAGUL', '1988-03-19', '1988-03-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(352, 353, '10121003', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'SLEMAN', '2001-12-16', '2001-12-16', '82137886341', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(353, 354, '10121201', 'GROUP LEADER ROAD DEVELOPMENT & MAINTENANCE', 'PIT SERVICE', '1', 'GROBOGAN', '1997-03-09', '1997-03-09', '85640811132', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(354, 355, '10721001', 'TP. OPERATOR', 'PRODUCTION', '0', 'LANSANO', '1998-07-01', '1998-07-01', '81253555813', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(355, 356, '10721002', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'SALID', '1995-02-15', '1995-02-15', '85251806262', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(356, 357, '10721003', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANJUNG HULU', '1998-07-01', '1998-07-01', '82250036012', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(357, 358, '10721004', 'TP. OPERATOR', 'PRODUCTION', '0', 'TIMIKA', '1999-06-14', '1999-06-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(358, 359, '10721005', 'TP. OPERATOR', 'PRODUCTION', '0', 'SABAH', '1984-09-10', '1984-09-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(359, 360, '10721006', 'TP. OPERATOR', 'PRODUCTION', '0', 'PARE PARE', '1997-11-19', '1997-11-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(360, 361, '10721008', 'TP. OPERATOR', 'PRODUCTION', '0', 'BLORA', '1992-08-11', '1992-08-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(361, 362, '10721009', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1995-08-04', '1995-08-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(362, 363, '10721010', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1996-11-24', '1996-11-24', '082283672348', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(363, 364, '10721012', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '1', 'MASAMBA', '1984-04-01', '1984-04-01', '85251037552', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(364, 365, '10721013', 'TP. OPERATOR', 'PRODUCTION', '0', 'RANALI', '1994-07-22', '1994-07-22', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(365, 366, '10721014', 'TP. OPERATOR', 'PRODUCTION', '0', 'WONOSOBO', '1994-09-07', '1994-09-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(366, 367, '10721016', 'HE. OPERATOR', 'PRODUCTION', '0', 'PARE PARE', '1981-08-08', '1981-08-08', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(367, 368, '10721020', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1988-11-03', '1988-11-03', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(368, 369, '10721025', 'HE. OPERATOR', 'PRODUCTION', '0', 'PALOPO', '1977-12-24', '1977-12-24', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(369, 370, '10721027', 'HE. OPERATOR', 'PRODUCTION', '0', 'TORAJA', '1980-08-04', '1980-08-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(370, 371, '10721028', 'TP. OPERATOR', 'PRODUCTION', '0', 'MAKASSAR', '1990-05-30', '1990-05-30', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(371, 372, '10721032', 'WELDER', 'PLANT', '0', 'MUARA ANCALONG', '1986-06-26', '1986-06-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(372, 373, '10721033', 'WELDER', 'PLANT', '0', 'TARAKAN', '1991-12-31', '1991-12-31', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(373, 374, '10721034', 'HE. OPERATOR', 'PRODUCTION', '0', 'BUNYU', '1987-09-30', '1987-09-30', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(374, 375, '10721035', 'MECHANIC', 'PLANT', '0', 'SAMARINDA', '1996-12-13', '1996-12-13', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(375, 376, '10120038', 'SECTION HEAD HSE HEALTH & DEVELOPMENT', 'HSE', '1', 'MALANG', '1995-12-08', '1995-12-08', '82142550514', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(376, 377, '10122093', 'GROUP LEADER MANPOWER PLANNING', 'PRODUCTION', '1', 'MERAUKE', '1996-03-23', '1996-03-23', '81354080545', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(377, 378, '10721036', 'TP. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '1996-11-08', '1996-11-08', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(378, 379, '10121034', 'SECTION HEAD SURVEY', 'ENGINEERING', '1', 'YOGYAKARTA', '1996-03-14', '1996-03-14', '82133221549', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(379, 380, '10721037', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'PAYANG', '2001-01-20', '2001-01-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(380, 381, '10721038', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'LUBOK BUAT', '1994-03-19', '1994-03-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(381, 382, '10721040', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '1999-11-24', '1999-11-24', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(382, 383, '10721041', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '1988-09-17', '1988-09-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(383, 384, '10721042', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TAGUL', '1993-08-29', '1993-08-29', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(384, 385, '10721043', 'TP. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '1999-08-16', '1999-08-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(385, 386, '10721044', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'WATUPUTIH', '1995-08-21', '1995-08-21', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(386, 387, '10121040', 'SECTION HEAD MONITORING & CONTROL', 'ENGINEERING', '1', 'BALIKPAPAN', '1998-10-07', '1998-10-07', '81225174588', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(387, 388, '10722112', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '2000-08-20', '2000-08-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(388, 389, '10721152', 'MECHANIC', 'PLANT', '0', 'SEMBAKUNG', '1999-04-02', '1999-04-02', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(389, 390, '10721151', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1998-10-26', '1998-10-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(390, 391, '10722113', 'MECHANIC', 'PLANT', '0', 'TAGUL', '2002-09-08', '2002-09-08', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(391, 392, '10721145', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '2000-12-31', '2000-12-31', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(392, 393, '10721141', 'MECHANIC', 'PLANT', '0', 'DS LABUK', '1998-04-25', '1998-04-25', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(393, 394, '10722114', 'MECHANIC', 'PLANT', '0', 'LONG BULU', '2000-09-03', '2000-09-03', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(394, 395, '10721144', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '2002-04-03', '2002-04-03', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(395, 396, '10721140', 'MECHANIC', 'PLANT', '0', 'WAILAMUNG', '2002-01-01', '2002-01-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(396, 397, '10721153', 'MECHANIC', 'PLANT', '0', 'BANYUMAS', '2003-03-15', '2003-03-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(397, 398, '10721149', 'MECHANIC', 'PLANT', '0', 'SAWAHLUNTO', '1997-05-16', '1997-05-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(398, 399, '10721148', 'MECHANIC', 'PLANT', '0', 'TULUNG AGUNG', '2002-02-22', '2002-02-22', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(399, 400, '10721046', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1987-01-31', '1987-01-31', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(400, 401, '10121019', 'GROUP LEADER PLANT PLANNING MONITORING & EVALUATION', 'PLANT', '1', 'KULON PROGO', '1998-02-25', '1998-02-25', '85713111625', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(401, 402, '11109084', 'DEPARTEMEN HEAD PLANT OPERATION', 'PLANT', '1', 'KLATEN', '1991-10-08', '1991-10-08', '85222002272', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(402, 403, '10121068', 'GROUP LEADER WAREHOUSE', 'SCM', '1', 'CILACAP', '1996-08-01', '1996-08-01', '81334762700', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(403, 404, '10721061', 'TP. OPERATOR', 'PRODUCTION', '0', 'UJUNG PANDANG', '1982-10-15', '1982-10-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(404, 405, '10721057', 'TP. OPERATOR', 'PRODUCTION', '0', 'LIMBONG', '1989-12-31', '1989-12-31', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(405, 406, '10721059', 'TP. OPERATOR', 'PRODUCTION', '0', 'BONTANG', '1992-03-04', '1992-03-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(406, 407, '10721056', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1989-02-23', '1989-02-23', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(407, 408, '10721066', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1985-08-08', '1985-08-08', '82253076331', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(408, 409, '10721050', 'HE. OPERATOR', 'PRODUCTION', '0', 'PEWA', '1987-12-01', '1987-12-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(409, 410, '10721054', 'TP. OPERATOR', 'PRODUCTION', '0', 'GELLENGE', '1990-11-28', '1990-11-28', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(410, 411, '10721055', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1984-09-07', '1984-09-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(411, 412, '10721058', 'TP. OPERATOR', 'PRODUCTION', '0', 'NUNUKAN', '1999-09-19', '1999-09-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(412, 413, '10721062', 'TP. OPERATOR', 'PRODUCTION', '0', 'BULUNGAN', '1996-10-01', '1996-10-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(413, 414, '10721063', 'TP. OPERATOR', 'PRODUCTION', '0', 'KAYUNGO', '1992-01-14', '1992-01-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(414, 415, '10721068', 'TP. OPERATOR', 'PRODUCTION', '0', 'JOMBANG', '1986-10-08', '1986-10-08', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(415, 416, '10721069', 'TP. OPERATOR', 'PRODUCTION', '0', 'ULO', '1994-08-19', '1994-08-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(416, 417, '10721070', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANJUNG REDEB', '1993-12-27', '1993-12-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(417, 418, '10721072', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '1', 'KOTA BATAK', '1996-06-18', '1996-06-18', '81360524919', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(418, 419, '10721073', 'TP. OPERATOR', 'PRODUCTION', '0', 'TUMBA JULU', '1986-12-24', '1986-12-24', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(419, 420, '10721074', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '0', 'TEBING TINGGI', '1979-02-09', '1979-02-09', '81257403919', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(420, 421, '10721075', 'HE. OPERATOR', 'PRODUCTION', '0', 'UJUNG PANDANG', '1988-02-20', '1988-02-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(421, 422, '10721076', 'TP. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1988-07-24', '1988-07-24', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(422, 423, '10721077', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANA TORAJA', '1997-11-28', '1997-11-28', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(423, 424, '10121078', 'GROUP LEADER FUEL & OIL', 'SCM', '1', 'KEBUMEN', '1997-07-17', '1997-07-17', '85875912757', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(424, 425, '10721048', 'HE. OPERATOR', 'PRODUCTION', '0', 'MALAYSIA', '1998-10-23', '1998-10-23', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(425, 426, '10121097', 'GROUP LEADER WAREHOUSE', 'SCM', '1', 'DEMAK', '1996-06-02', '1996-06-02', '82135559009', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(426, 427, '10122261', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '1', 'SLEMAN', '1997-11-25', '1997-11-25', '85876171036', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(427, 428, '10122319', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '1', 'JAKARTA', '1998-07-22', '1998-07-22', '82117387463', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(428, 429, '10721079', 'BUILDING & FACILITIES', 'GENERAL SERVICES', '0', 'BANDUNG', '1973-06-10', '1973-06-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(429, 430, '10721078', 'BUILDING & FACILITIES', 'GENERAL SERVICES', '0', 'BANDUNG', '1979-12-12', '1979-12-12', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(430, 431, '10721082', 'TP. OPERATOR', 'PRODUCTION', '0', 'CILACAP', '2000-01-10', '2000-01-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(431, 432, '10721084', 'TP. OPERATOR', 'PRODUCTION', '0', 'PURWOREJO', '2000-10-27', '2000-10-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(432, 433, '10721085', 'HE. OPERATOR', 'PRODUCTION', '0', 'BENTENG', '1988-01-04', '1988-01-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(433, 434, '10721086', 'TP. OPERATOR', 'PRODUCTION', '0', 'KEBUMEN', '2000-04-22', '2000-04-22', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(434, 435, '10721092', 'TP. OPERATOR', 'PRODUCTION', '0', 'BLORA', '1991-06-20', '1991-06-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(435, 436, '10721094', 'HE. OPERATOR', 'PRODUCTION', '0', 'BATUSURA', '1990-12-31', '1990-12-31', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(436, 437, '10721098', 'TP. OPERATOR', 'PRODUCTION', '0', 'BT ALLA', '1991-07-17', '1991-07-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(437, 438, '10122061', 'MECHANIC', 'PLANT', '0', 'BLORA', '2002-11-06', '2002-11-06', '82112484423', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(438, 439, '10122060', 'MECHANIC', 'PLANT', '0', 'BLORA', '2003-05-09', '2003-05-09', '81329841118', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(439, 440, '10122059', 'MECHANIC', 'PLANT', '0', 'BLORA', '2003-02-17', '2003-02-17', '82123969365', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(440, 441, '10122062', 'MECHANIC', 'PLANT', '0', 'BEKASI', '2003-02-03', '2003-02-03', '81522543027', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(441, 442, '10113946', 'HE. OPERATOR', 'PRODUCTION', '0', 'SLEMAN', '1992-07-18', '1992-07-18', '85743469252', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(442, 443, '10721088', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANYUMAS', '1992-03-23', '1992-03-23', '82138478830', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(443, 444, '10721099', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1993-12-26', '1993-12-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(444, 445, '10721100', 'TP. OPERATOR', 'PRODUCTION', '0', 'TIROAN', '1992-01-30', '1992-01-30', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(445, 446, '10721101', 'HE. OPERATOR', 'PRODUCTION', '0', 'SAMARINDA', '1987-06-03', '1987-06-03', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(446, 447, '10721105', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1980-05-27', '1980-05-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(447, 448, '10721108', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1990-01-07', '1990-01-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(448, 449, '10721109', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1982-02-10', '1982-02-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(449, 450, '10721111', 'HE. OPERATOR', 'PRODUCTION', '0', 'ENREKANG', '1989-08-07', '1989-08-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(450, 451, '10121219', 'TP. OPERATOR', 'PRODUCTION', '0', 'KAB. SEMARANG', '1998-06-23', '1998-06-23', '85379749088', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(451, 452, '10121222', 'TP. OPERATOR', 'PRODUCTION', '0', 'KAB. SEMARANG', '1998-05-25', '1998-05-25', '81377814834', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(452, 453, '10721112', 'TP. OPERATOR', 'PRODUCTION', '0', 'NUNUKAN', '1986-02-17', '1986-02-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(453, 454, '10721113', 'TP. OPERATOR', 'PRODUCTION', '0', 'DATA', '1989-04-04', '1989-04-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(454, 455, '10721114', 'TP. OPERATOR', 'PRODUCTION', '0', 'BALIKPAPAN', '1999-06-12', '1999-06-12', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(455, 456, '10721122', 'HE. OPERATOR', 'PRODUCTION', '0', 'TEGAL', '1999-02-04', '1999-02-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(456, 457, '10721123', 'HE. OPERATOR', 'PRODUCTION', '0', 'MAGETAN', '1985-02-28', '1985-02-28', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(457, 458, '10721124', 'MECHANIC', 'PLANT', '0', 'LAMEHELAN', '1993-07-30', '1993-07-30', '82253131325', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(458, 459, '10721125', 'MECHANIC', 'PLANT', '0', 'KG. PAMPANG ', '1996-12-08', '1996-12-08', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(459, 460, '10421003', 'MECHANIC', 'PLANT', '0', 'EMBALUT', '1994-08-01', '1994-08-01', '85250220000', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(460, 461, '10421002', 'MECHANIC', 'PLANT', '0', 'SEPARI', '1978-03-31', '1978-03-31', '81352765112', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(461, 462, '10721136', 'HE. OPERATOR', 'PRODUCTION', '0', 'WONOGIRI', '1998-09-02', '1998-09-02', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(462, 463, '11110048', 'GROUP LEADER PLANT', 'PLANT', '1', 'CILACAP', '1990-04-05', '1990-04-05', '82226386524', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(463, 464, '10722014', 'TP. OPERATOR', 'PRODUCTION', '0', 'JEMBER', '1977-07-05', '1977-07-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(464, 465, '10722015', 'HE. OPERATOR', 'PRODUCTION', '0', 'PATONGLOAN', '1979-05-05', '1979-05-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(465, 466, '10122130', 'MECHANIC', 'PLANT', '0', 'BLORA', '2003-03-01', '2003-03-01', '81232263270', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(466, 467, '10122129', 'MECHANIC', 'PLANT', '0', 'BLORA', '2002-10-29', '2002-10-29', '85878230821', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(467, 468, '10122128', 'MECHANIC', 'PLANT', '0', 'BLORA', '2002-04-05', '2002-04-05', '81327671349', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(468, 469, '10122131', 'MECHANIC', 'PLANT', '0', 'SUKABUMI', '1999-08-28', '1999-08-28', '85723706396', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(469, 470, '10120029', 'GROUP LEADER SURVEYOR', 'ENGINEERING', '1', 'SLEMAN', '1999-03-09', '1999-03-09', '82326679696', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(470, 471, '10122008', 'GROUP LEADER HSE ENVIRONMENT', 'HSE', '1', 'PEKANBARU', '1997-10-09', '1997-10-09', '85321182663', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(471, 472, '10121234', 'GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'PADANG', '1998-07-10', '1998-07-10', '85364335271', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(472, 473, '10122009', 'GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'YOGYAKARTA', '1999-05-02', '1999-05-02', '81903729340', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(473, 474, '10122011', 'GROUP LEADER TYRE', 'PLANT', '1', 'BANTUL', '1997-04-12', '1997-04-12', '89649376836', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(474, 475, '10722029', 'TP. OPERATOR', 'PRODUCTION', '0', 'SLEMAN', '1993-10-02', '1993-10-02', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(475, 476, '10722030', 'TP. OPERATOR', 'PRODUCTION', '0', 'KARAWAK', '1993-02-23', '1993-02-23', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(476, 477, '10722032', 'TP. OPERATOR', 'PRODUCTION', '0', 'BLORA', '1992-08-11', '1992-08-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(477, 478, '10722033', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '1', 'BLORA', '1987-11-28', '1987-11-28', '81254245184', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(478, 479, '10122063', 'DEPARTEMEN HEAD SUPPLAY CHAIN MANAGEMENT', 'SCM', '1', 'BANJARNEGARA', '1974-04-17', '1974-04-17', '81231937074', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(479, 480, '10113881', 'DEPARTEMEN HEAD HSE & RISK MANAGEMENT', 'HSE', '1', 'SUMBAWA', '1990-08-12', '1990-08-12', '81258196911', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(480, 481, '10722041', 'TP. OPERATOR', 'PRODUCTION', '0', 'TORAJA', '1993-11-10', '1993-11-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(481, 482, '10722042', 'TP. OPERATOR', 'PRODUCTION', '0', 'MEDAN', '1992-08-16', '1992-08-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(482, 483, '11111131', 'MECHANIC', 'PLANT', '0', 'CILACAP', '1993-04-02', '1993-04-02', '85845757401', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(483, 484, '10722043', 'WELDER', 'PLANT', '0', 'PINRANG', '1994-03-13', '1994-03-13', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(484, 485, '10722044', 'WELDER', 'PLANT', '0', 'TATOR', '1997-01-11', '1997-01-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(485, 486, '10722045', 'HE. OPERATOR', 'PRODUCTION', '0', 'SEPPANGE ', '1987-03-02', '1987-03-02', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(486, 487, '10722046', 'HE. OPERATOR', 'PRODUCTION', '0', 'SAMBOJA', '1989-03-12', '1989-03-12', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(487, 488, '10722047', 'HE. OPERATOR', 'PRODUCTION', '0', 'BALIKPAPAN', '1988-08-18', '1988-08-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(488, 489, '10722048', 'HE. OPERATOR', 'PRODUCTION', '0', 'LUWU UTARA', '1992-03-16', '1992-03-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(489, 490, '10722049', 'HE. OPERATOR', 'PRODUCTION', '0', 'BATU LIDUNG', '1985-07-09', '1985-07-09', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(490, 491, '10722056', 'WELDER', 'PLANT', '0', 'TARAKAN', '1984-04-28', '1984-04-28', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(491, 492, '11112029', 'MECHANIC', 'PLANT', '0', 'KLATEN', '1987-07-15', '1987-07-15', '81319733119', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(492, 493, '11111154', 'GROUP LEADER PLANT', 'PLANT', '0', 'KLATEN', '1990-10-11', '1990-10-11', '81247754150', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(493, 494, '10122092', 'GROUP LEADER FINANCE OPERATIONS', 'FINANCE', '1', 'SUKOHARJO', '1996-02-10', '1996-02-10', '85879573309', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(494, 495, '10122068', 'GROUP LEADER EMPLOYEE & INDUSTRIAL RELATION', 'HUMAN CAPITAL', '1', 'SUKOHARJO', '1997-08-25', '1997-08-25', '81393924317', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(495, 496, '11111165', 'MECHANIC', 'PLANT', '0', 'BOYOLALI', '1993-11-15', '1993-11-15', '82154302546', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(496, 497, '10122065', 'GROUP LEADER EMPLOYEE & INDUSTRIAL RELATION', 'HUMAN CAPITAL', '1', 'MAGELANG', '1998-07-29', '1998-07-29', '88228788590', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(497, 498, '10722058', 'HE. OPERATOR', 'PRODUCTION', '0', 'SORONG', '1986-09-22', '1986-09-22', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(498, 499, '10122222', 'MECHANIC', 'PLANT', '0', 'BOYOLALI', '2002-07-15', '2002-07-15', '81386802741', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(499, 500, '10122219', 'MECHANIC', 'PLANT', '0', 'SALATIGA', '2002-04-29', '2002-04-29', '83120052571', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(500, 501, '10122218', 'MECHANIC', 'PLANT', '0', 'SEMARANG', '2003-01-14', '2003-01-14', '85712699065', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(501, 502, '10122221', 'MECHANIC', 'PLANT', '0', 'SALATIGA', '2003-06-07', '2003-06-07', '81348411823', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(502, 503, '10122220', 'MECHANIC', 'PLANT', '0', 'SEMARANG', '2001-07-22', '2001-07-22', '85754007094', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(503, 504, '10120017', 'MECHANIC', 'PLANT', '0', 'SUKABUMI', '2000-11-26', '2000-11-26', '895335900195', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(504, 505, '10722065', 'WELDER', 'PLANT', '0', 'TORAJA', '1987-07-25', '1987-07-25', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(505, 506, '10722066', 'TP. OPERATOR', 'PRODUCTION', '0', 'KALIMANTAN', '1997-06-12', '1997-06-12', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(506, 507, '10722067', 'TP. OPERATOR', 'PRODUCTION', '0', 'PARINDING', '1992-10-23', '1992-10-23', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(507, 508, '10722068', 'TP. OPERATOR', 'PRODUCTION', '0', 'TATOR', '1990-06-07', '1990-06-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(508, 509, '10722073', 'TP. OPERATOR', 'PRODUCTION', '0', 'TUBAN', '1983-05-29', '1983-05-29', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(509, 510, '10722074', 'TP. OPERATOR', 'PRODUCTION', '0', 'RAMBUNG', '1988-03-04', '1988-03-04', '82362053706', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(510, 511, '10722075', 'TP. OPERATOR', 'PRODUCTION', '0', 'TOLI-TOLI', '1978-12-30', '1978-12-30', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(511, 512, '10722080', 'TP. OPERATOR', 'PRODUCTION', '0', 'ACEH BARAT', '1998-02-15', '1998-02-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(512, 513, '10722081', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1991-09-21', '1991-09-21', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(513, 514, '10722082', 'TP. OPERATOR', 'PRODUCTION', '0', 'JAMBU', '1999-02-01', '1999-02-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(514, 515, '10722084', 'TP. OPERATOR', 'PRODUCTION', '0', 'ENDE', '1982-11-20', '1982-11-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(515, 516, '10722085', 'TP. OPERATOR', 'PRODUCTION', '0', 'ENREKANG', '1998-11-17', '1998-11-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(516, 517, '10722086', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1991-03-26', '1991-03-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(517, 518, '10722087', 'TP. OPERATOR', 'PRODUCTION', '0', 'LAHAD DAFU', '1989-12-25', '1989-12-25', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(518, 519, '10722088', 'HE. OPERATOR', 'PRODUCTION', '0', 'KENINGAN', '1988-10-31', '1988-10-31', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(519, 520, '10722076', 'ADMIN GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '1984-04-29', '1984-04-29', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(520, 521, '10122327', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '1', 'BEKASI', '2000-02-14', '2000-02-14', '85839834130', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(521, 522, '10121024', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'SUKABUMI', '2000-02-11', '2000-02-11', '82112098772', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(522, 523, '10722101', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANA TORAJA', '1994-11-19', '1994-11-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(523, 524, '10722100', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANA TORAJA', '1987-08-04', '1987-08-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(524, 525, '10722099', 'TP. OPERATOR', 'PRODUCTION', '0', 'BENGALON', '1996-05-04', '1996-05-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(525, 526, '10722104', 'TP. OPERATOR', 'PRODUCTION', '0', 'JAKARTA', '1990-02-25', '1990-02-25', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(526, 527, '10722105', 'HE. OPERATOR', 'PRODUCTION', '0', 'PEKALONGAN', '1988-12-20', '1988-12-20', '82328877455', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(527, 528, '10719004', 'TP. OPERATOR', 'PRODUCTION', '0', 'MENJELUTUNG', '2000-12-18', '2000-12-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(528, 529, '10122071', 'GROUP LEADER MANAGEMENT SYSTEM & CONTROL', 'CPSD', '1', 'MANADO', '1994-09-10', '1994-09-10', '82144018173', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(529, 530, '10722147', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '2004-02-15', '2004-02-15', '82251899479', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(530, 531, '10722148', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '1997-07-05', '1997-07-05', '82152227143', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(531, 532, '10722149', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '1998-07-02', '1998-07-02', '82291310248', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(532, 533, '10122169', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'SLEMAN', '2000-03-08', '2000-03-08', '85172014980', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(533, 534, '10122170', 'JUNIOR GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'SLEMAN', '2001-08-17', '2001-08-17', '85728376823', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(534, 535, '10122171', 'JUNIOR GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'SLEMAN', '2001-05-12', '2001-05-12', '85174156961', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(535, 536, '10122172', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'MAGELANG', '1999-08-23', '1999-08-23', '85773071909', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(536, 537, '10122173', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'YOGYAKARTA', '2001-08-29', '2001-08-29', '85156897953', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(537, 538, '10722150', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '1993-08-29', '1993-08-29', '82148262576', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(538, 539, '10722151', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'PATAL', '1997-02-01', '1997-02-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(539, 540, '10722153', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'SEMBAKUNG', '1982-05-07', '1982-05-07', '85246294137', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(540, 541, '10722154', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '2001-12-11', '2001-12-11', '82138201579', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(541, 542, '10722152', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TARAKAN', '1997-10-14', '1997-10-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(542, 543, '10722111', 'HE. OPERATOR', 'PRODUCTION', '0', 'LABANAN', '1993-09-10', '1993-09-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(543, 544, '10422019', 'TP. OPERATOR', 'PRODUCTION', '0', 'KUTAI KARTANEGARA', '1985-08-28', '1985-08-28', '81318952559', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(544, 545, '10422020', 'TP. OPERATOR', 'PRODUCTION', '0', 'KUTAI KARTANEGARA', '1984-05-02', '1984-05-02', '85233809004', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(545, 546, '10722116', 'TP. OPERATOR', 'PRODUCTION', '0', 'TASIKMALAYA', '1992-12-14', '1992-12-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(546, 547, '10722117', 'TP. OPERATOR', 'PRODUCTION', '0', 'SAMARINDA', '1994-12-18', '1994-12-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(547, 548, '10719003', 'HE. OPERATOR', 'PRODUCTION', '0', 'PONTIANAK', '1997-12-06', '1997-12-06', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(548, 549, '10719005', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2000-07-17', '2000-07-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(549, 550, '10722118', 'TP. OPERATOR', 'PRODUCTION', '0', 'MANISA', '1989-12-20', '1989-12-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(550, 551, '10722119', 'TP. OPERATOR', 'PRODUCTION', '0', 'KINABALU', '1990-02-26', '1990-02-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(551, 552, '10722127', 'TP. OPERATOR', 'PRODUCTION', '0', 'SEMARANG', '1989-09-25', '1989-09-25', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(552, 553, '10722129', 'HE. OPERATOR', 'PRODUCTION', '0', 'RANTEPAO', '1991-08-23', '1991-08-23', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(553, 554, '10122176', 'JUNIOR GROUP LEADER HSE FIELD PATROL', 'HSE', '1', 'SUAYAN', '1997-05-25', '1997-05-25', '85264848036', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(554, 555, '10121051', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '0', 'BANJARNEGARA', '1987-03-23', '1987-03-23', '82300084440', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(555, 556, '10722132', 'TP. OPERATOR', 'PRODUCTION', '0', 'TALION', '1999-10-19', '1999-10-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(556, 557, '10719009', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1998-03-07', '1998-03-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(557, 558, '11512095', 'MECHANIC', 'PLANT', '0', 'PINRANG', '1992-12-13', '1992-12-13', '82251156234', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(558, 559, '10722134', 'TP. OPERATOR', 'PRODUCTION', '0', 'MANSALONG', '1998-05-03', '1998-05-03', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(559, 560, '10722135', 'HE. OPERATOR', 'PRODUCTION', '0', 'TORAJA', '1985-09-01', '1985-09-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(560, 561, '10722136', 'TP. OPERATOR', 'PRODUCTION', '0', 'BLORA', '1994-02-09', '1994-02-09', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(561, 562, '10722137', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1990-03-14', '1990-03-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(562, 563, '10722138', 'HE. OPERATOR', 'PRODUCTION', '0', 'TAWAU', '1988-06-28', '1988-06-28', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(563, 564, '10722139', 'TP. OPERATOR', 'PRODUCTION', '0', 'BEBATU', '1998-09-28', '1998-09-28', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(564, 565, '10722140', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANTUL', '1998-05-05', '1998-05-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(565, 566, '10722141', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1996-04-30', '1996-04-30', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(566, 567, '10722142', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'Tarakan', '2002-09-18', '2002-09-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(567, 568, '10722143', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1980-05-16', '1980-05-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(568, 569, '10722144', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1980-10-07', '1980-10-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(569, 570, '10722146', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1989-06-24', '1989-06-24', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(570, 571, '10122181', 'GROUP LEADER HSE HEALTH', 'HSE', '1', 'SEMARANG', '1998-08-16', '1998-08-16', '82223772165', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(571, 572, '10122194', 'GROUP LEADER PLANT', 'PLANT', '1', 'PEMALANG', '1995-06-27', '1995-06-27', '81228039920', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(572, 573, '10122126', 'GROUP LEADER WAREHOUSE', 'SCM', '1', 'SUKABUMI', '1997-05-19', '1997-05-19', '85722999015', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(573, 574, '10421012', 'HE. OPERATOR', 'PRODUCTION', '0', 'MUARA BADAK', '1992-09-16', '1992-09-16', '81257120589', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(574, 575, '10722155', 'HE. OPERATOR', 'PRODUCTION', '0', 'SENGAYAN', '1990-02-05', '1990-02-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(575, 576, '10722156', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1997-11-10', '1997-11-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(576, 577, '10722157', 'SUPPORT DRIVER GENERAL SERVICE ', 'GENERAL SERVICES', '0', 'TRENGGALEK', '1999-05-19', '1999-05-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(577, 578, '10721128', 'TP. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '2000-10-27', '2000-10-27', '82253770269', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(578, 579, '10721133', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2004-01-08', '2004-01-08', '85349694393', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(579, 580, '10721129', 'TP. OPERATOR', 'PRODUCTION', '0', 'TAGUL', '1997-05-18', '1997-05-18', '82253213784', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23');
INSERT INTO `workers` (`id`, `user_id`, `nrp`, `jabatan`, `departemen`, `staff`, `tempat_lahir`, `tanggal_lahir`, `tgl_masuk_kerja`, `no_hp`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(580, 581, '10721130', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1999-08-31', '1999-08-31', '85348872092', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(581, 582, '10721132', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2004-02-01', '2004-02-01', '85245767427', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(582, 583, '10722020', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1997-08-28', '1997-08-28', '82255678201', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(583, 584, '10122224', 'MECHANIC', 'PLANT', '0', 'SEMARANG', '2002-12-21', '2002-12-21', '85742093930', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(584, 585, '10122225', 'MECHANIC', 'PLANT', '0', 'KENDAL', '2000-04-28', '2000-04-28', '87883927846', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(585, 586, '10122226', 'MECHANIC', 'PLANT', '0', 'SEMARANG', '2003-01-28', '2003-01-28', '81391270907', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(586, 587, '10722161', 'TP. OPERATOR', 'PRODUCTION', '0', 'KULON PROGO', '1988-03-20', '1988-03-20', '81258477209', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(587, 588, '10722159', 'TP. OPERATOR', 'PRODUCTION', '0', 'LONG BELUAH', '1985-11-09', '1985-11-09', '82111152301', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(588, 589, '10123030', 'MECHANIC', 'PLANT', '0', 'CIREBON', '1999-02-28', '1999-02-28', '8977730903', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(589, 590, '10123028', 'MECHANIC', 'PLANT', '0', 'CIREBON', '2004-04-28', '2004-04-28', '8882204616', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(590, 591, '10123026', 'MECHANIC', 'PLANT', '0', 'JAYAKOPAH', '2003-03-29', '2003-03-29', '82211784601', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(591, 592, '10123027', 'MECHANIC', 'PLANT', '0', 'CIREBON', '2002-09-02', '2002-09-02', '81220045478', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(592, 593, '10722165', 'TP. OPERATOR', 'PRODUCTION', '0', 'BULO WATTANG', '1984-08-17', '1984-08-17', '85247824777', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(593, 594, '10722166', 'HE. OPERATOR', 'PRODUCTION', '0', 'BOARENGE', '1988-12-22', '1988-12-22', '82149488959', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(594, 595, '10722168', 'HE. OPERATOR', 'PRODUCTION', '0', 'RAMBAKULU', '1990-12-10', '1990-12-10', '82292881050', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(595, 596, '10722170', 'HE. OPERATOR', 'PRODUCTION', '0', 'WARU', '1987-09-05', '1987-09-05', '85350187977', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(596, 597, '10722171', 'HE. OPERATOR', 'PRODUCTION', '0', 'RESPEN', '1998-03-13', '1998-03-13', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(597, 598, '10122270', 'GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'SURAKARTA', '1998-04-20', '1998-04-20', '82134120846', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(598, 599, '10123057', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '1', 'BANDUNG', '1997-10-31', '1997-10-31', '81389547103', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(599, 600, '10722172', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1993-05-10', '1993-05-10', '82323344636', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(600, 601, '10722174', 'HE. OPERATOR', 'PRODUCTION', '0', 'TATOR', '1980-03-30', '1980-03-30', '82274023385', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(601, 602, '10123035', 'TP. OPERATOR', 'PRODUCTION', '0', 'SUKABUMI', '1994-01-14', '1994-01-14', '81546707320', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(602, 603, '10722176', 'HE. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1989-08-30', '1989-08-30', '81252236025', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(603, 604, '10722177', 'HE. OPERATOR', 'PRODUCTION', '0', 'TAMPO', '1992-11-08', '1992-11-08', '85332034456', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(604, 605, '10722178', 'HE. OPERATOR', 'PRODUCTION', '0', 'KUPANG', '1985-08-09', '1985-08-09', '82214937585', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(605, 606, '10722179', 'TP. OPERATOR', 'PRODUCTION', '0', 'REMBANG', '1998-02-10', '1998-02-10', '82136129174', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(606, 607, '10722180', 'TP. OPERATOR', 'PRODUCTION', '0', 'BELAJEN', '1998-08-16', '1998-08-16', '85396857535', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(607, 608, '10722181', 'HE. OPERATOR', 'PRODUCTION', '0', 'KLATEN', '1998-05-03', '1998-05-03', '81225353132', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(608, 609, '10722182', 'HE. OPERATOR', 'PRODUCTION', '0', 'SAMARINDA', '1994-06-09', '1994-06-09', '82353605353', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(609, 610, '10722183', 'TP. OPERATOR', 'PRODUCTION', '0', 'PATI', '1992-02-20', '1992-02-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(610, 611, '10722184', 'TP. OPERATOR', 'PRODUCTION', '0', 'BUA-BUA', '1983-07-21', '1983-07-21', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(611, 612, '10722185', 'HE. OPERATOR', 'PRODUCTION', '0', 'BALIKPAPAN', '1982-12-02', '1982-12-02', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(612, 613, '10722186', 'TP. OPERATOR', 'PRODUCTION', '0', 'PEMANUKAN', '1990-01-14', '1990-01-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(613, 614, '11022008', 'TP. OPERATOR', 'PRODUCTION', '0', 'WANARAYA', '1999-07-27', '1999-07-27', '81272322290', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(614, 615, '11022016', 'TP. OPERATOR', 'PRODUCTION', '0', 'LAHAT', '1990-01-03', '1990-01-03', '82238206424', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(615, 616, '11022017', 'TP. OPERATOR', 'PRODUCTION', '0', 'SELUMA', '1985-03-30', '1985-03-30', '82180566441', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(616, 617, '10123040', 'GROUP LEADER ROAD DEVELOPMENT & MAINTENANCE', 'PIT SERVICE', '1', 'CUPAK', '2000-08-04', '2000-08-04', '82169472257', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(617, 618, '10122341', 'JUNIOR GROUP LEADER INSTRUMENT RADIO', 'CPSD', '1', 'KLATEN', '2003-05-05', '2003-05-05', '82134511624', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(618, 619, '10121200', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '1', ' CILACAP ', '1996-02-11', '1996-02-11', '82146298062', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(619, 620, '10722189', 'HE. OPERATOR', 'PRODUCTION', '0', 'SERANG', '1982-05-05', '1982-05-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(620, 621, '10723130', 'MECHANIC', 'PLANT', '0', 'SESAYAP', '1996-03-06', '1996-03-06', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(621, 622, '10723132', 'MECHANIC', 'PLANT', '0', 'MENJELUTUNG', '2002-05-16', '2002-05-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(622, 623, '10723133', 'MECHANIC', 'PLANT', '0', 'SELUMIT PANTAI', '2002-02-18', '2002-02-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(623, 624, '10723134', 'MECHANIC', 'PLANT', '0', 'TAJULUNG', '2003-06-18', '2003-06-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(624, 625, '10723135', 'MECHANIC', 'PLANT', '0', 'LABUK', '2001-05-05', '2001-05-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(625, 626, '10723136', 'MECHANIC', 'PLANT', '0', 'TANJUNG HULU', '2000-09-11', '2000-09-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(626, 627, '10723138', 'MECHANIC', 'PLANT', '0', 'DONGGALA', '2002-01-11', '2002-01-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(627, 628, '10723139', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1999-05-05', '1999-05-05', '82253679268', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(628, 629, '10723140', 'MECHANIC', 'PLANT', '0', 'ATAP', '2003-05-27', '2003-05-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(629, 630, '10723141', 'MECHANIC', 'PLANT', '0', 'ATAP', '1997-04-10', '1997-04-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(630, 631, '10723142', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1999-12-02', '1999-12-02', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(631, 632, '10723143', 'MECHANIC', 'PLANT', '0', 'TIDENG PALE', '2003-11-15', '2003-11-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(632, 633, '10723144', 'MECHANIC', 'PLANT', '0', 'EREKEKE', '1998-03-21', '1998-03-21', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(633, 634, '10723145', 'MECHANIC', 'PLANT', '0', 'MENJELUTUNG', '2004-04-28', '2004-04-28', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(634, 635, '10723146', 'MECHANIC', 'PLANT', '0', 'MENJELUTUNG', '1999-01-10', '1999-01-10', '82353088833', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(635, 636, '10723147', 'MECHANIC', 'PLANT', '0', 'SENGKONG', '2004-04-15', '2004-04-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(636, 637, '10723149', 'MECHANIC', 'PLANT', '0', 'MANSALONG', '1999-03-10', '1999-03-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(637, 638, '10723150', 'MECHANIC', 'PLANT', '0', 'NAINSID', '2004-09-05', '2004-09-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(638, 639, '10723151', 'MECHANIC', 'PLANT', '0', 'TUJUNG', '2004-02-19', '2004-02-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(639, 640, '10723152', 'MECHANIC', 'PLANT', '0', 'PULAU KERAS', '2001-11-05', '2001-11-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(640, 641, '10723153', 'MECHANIC', 'PLANT', '0', 'BONTANG', '2002-01-21', '2002-01-21', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(641, 642, '10723154', 'MECHANIC', 'PLANT', '0', 'BINANUN', '1999-10-21', '1999-10-21', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(642, 643, '10723155', 'MECHANIC', 'PLANT', '0', 'LUBAKAN', '2000-10-11', '2000-10-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(643, 644, '10723156', 'MECHANIC', 'PLANT', '0', 'NUNUKAN', '2004-05-16', '2004-05-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(644, 645, '10723157', 'MECHANIC', 'PLANT', '0', 'TAGUL', '2002-10-21', '2002-10-21', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(645, 646, '10723001', 'HE. OPERATOR', 'PRODUCTION', '0', 'SESAYAP', '1990-06-14', '1990-06-14', '85332942087', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(646, 647, '10723002', 'HE. OPERATOR', 'PRODUCTION', '0', 'LUPPERENG', '1985-04-19', '1985-04-19', '81355357771', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(647, 648, '10723003', 'HE. OPERATOR', 'PRODUCTION', '0', 'BUDI AJI', '1993-08-08', '1993-08-08', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(648, 649, '10723004', 'HE. OPERATOR', 'PRODUCTION', '0', 'MALAYSIA', '1994-04-21', '1994-04-21', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(649, 650, '10723005', 'TP. OPERATOR', 'PRODUCTION', '0', 'BUNYU', '1997-12-27', '1997-12-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(650, 651, '10723006', 'HE. OPERATOR', 'PRODUCTION', '0', 'BULUNGAN', '1996-04-27', '1996-04-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(651, 652, '10723007', 'HE. OPERATOR', 'PRODUCTION', '0', 'SAMARINDA', '1990-04-27', '1990-04-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(652, 653, '10723009', 'HE. OPERATOR', 'PRODUCTION', '0', 'BUNYU', '1984-04-15', '1984-04-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(653, 654, '10723010', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1980-08-26', '1980-08-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(654, 655, '10723008', 'TP. OPERATOR', 'PRODUCTION', '0', 'SITUBONDO', '1990-01-16', '1990-01-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(655, 656, '11023001', 'TP. OPERATOR', 'PRODUCTION', '0', 'LAHAT', '1994-04-29', '1994-04-29', '87786653803', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(656, 657, '11023002', 'TP. OPERATOR', 'PRODUCTION', '0', 'SIMPANG', '1998-03-02', '1998-03-02', '82289128283', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(657, 658, '11023003', 'TP. OPERATOR', 'PRODUCTION', '0', 'PALEMBANG', '1999-07-26', '1999-07-26', '82182018958', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(658, 659, '11023004', 'TP. OPERATOR', 'PRODUCTION', '0', 'BATAY', '2004-01-23', '2004-01-23', '85606194085', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(659, 660, '10118044', 'SECTION HEAD MINE PLANNING', 'ENGINEERING', '1', 'JAMBI', '1994-08-25', '1994-08-25', '82225506852', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(660, 661, '10723012', 'HE. OPERATOR', 'PRODUCTION', '0', 'KOLAI', '1994-02-05', '1994-02-05', '81256636816', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(661, 662, '10723013', 'HE. OPERATOR', 'PRODUCTION', '0', 'PALOPO', '1988-02-28', '1988-02-28', '82350096519', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(662, 663, '10723017', 'TP. OPERATOR', 'PRODUCTION', '0', 'KLATEN', '1992-09-11', '1992-09-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(663, 664, '10723018', 'HE. OPERATOR', 'PRODUCTION', '0', 'BENTENG ALLA', '1985-01-01', '1985-01-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(664, 665, '10723020', 'TP. OPERATOR', 'PRODUCTION', '0', 'TIROAN', '1995-06-07', '1995-06-07', '81248499761', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(665, 666, '10723021', 'TP. OPERATOR', 'PRODUCTION', '0', 'ENU', '1991-05-16', '1991-05-16', '81345454671', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(666, 667, '10723023', 'TP. OPERATOR', 'PRODUCTION', '0', 'TALION', '2001-02-22', '2001-02-22', '82293271207', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(667, 668, '10723025', 'TP. OPERATOR', 'PRODUCTION', '0', 'SAMARINDA', '1988-03-27', '1988-03-27', '85753550328', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(668, 669, '10723026', 'TP. OPERATOR', 'PRODUCTION', '0', 'REDAK', '1998-08-29', '1998-08-29', '82248206615', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(669, 670, '10723027', 'TP. OPERATOR', 'PRODUCTION', '0', 'GURA', '1984-01-20', '1984-01-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(670, 671, '10723028', 'TP. OPERATOR', 'PRODUCTION', '0', 'MERANCANG', '1997-08-26', '1997-08-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(671, 672, '10723029', 'HE. OPERATOR', 'PRODUCTION', '0', 'TANA TORAJA', '1982-06-14', '1982-06-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(672, 673, '10723030', 'HE. OPERATOR', 'PRODUCTION', '0', 'SUBANG', '1985-02-24', '1985-02-24', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(673, 674, '10723031', 'HE. OPERATOR', 'PRODUCTION', '0', 'TASUK', '1994-11-30', '1994-11-30', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(674, 675, '10723032', 'TP. OPERATOR', 'PRODUCTION', '0', 'TASIKMALAYA', '1990-06-20', '1990-06-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(675, 676, '10723033', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'JAKARTA', '1981-10-27', '1981-10-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(676, 677, '10723034', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'TARAKAN', '1980-03-23', '1980-03-23', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(677, 678, '10723035', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'SEMBAKUNG', '1988-06-21', '1988-06-21', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(678, 679, '10723037', 'TP. OPERATOR', 'PRODUCTION', '0', 'MEDAN', '1986-09-21', '1986-09-21', '82358074325', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(679, 680, '10723038', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANDAR LAMPUNG', '1990-05-12', '1990-05-12', '81379726062', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(680, 681, '10723039', 'TP. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1983-08-18', '1983-08-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(681, 682, '10723041', 'TP. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1994-07-01', '1994-07-01', '82292925252', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(682, 683, '10723042', 'TP. OPERATOR', 'PRODUCTION', '0', 'BONTANG', '1982-08-22', '1982-08-22', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(683, 684, '10122193', 'GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'SLEMAN', '1998-04-01', '1998-04-01', '88218119283', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(684, 685, '10123048', 'GROUP LEADER MANAGERIAL & LEADERSHIP', 'HUMAN CAPITAL', '1', 'GROBOGAN', '1998-10-05', '1998-10-05', '89673717174', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(685, 686, '10110257', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'MADIUN', '1979-08-05', '1979-08-05', '81350499791', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(686, 687, '10123060', 'GROUP LEADER HSE DEVELOPMENT', 'HSE', '1', 'SAMPANG', '1995-11-26', '1995-11-26', '81263145235', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(687, 688, '10123044', 'GROUP LEADER WAREHOUSE', 'SCM', '1', 'BALIKPAPAN', '1999-02-18', '1999-02-18', '85714641877', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(688, 689, '10111545', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'LAMPUNG', '1980-05-12', '1980-05-12', '81349010003', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(689, 690, '10112692', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'BLITAR', '1984-02-07', '1984-02-07', '82143010404', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(690, 691, '10112791', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'SUKABUMI', '1992-01-29', '1992-01-29', '85700009992', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(691, 692, '10123043', 'GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'JAKARTA', '2000-08-16', '2000-08-16', '87885259072', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(692, 693, '10723045', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1997-12-16', '1997-12-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(693, 694, '10723043', 'TP. OPERATOR', 'PRODUCTION', '0', 'NGAWI', '1983-02-20', '1983-02-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(694, 695, '10723046', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1995-06-01', '1995-06-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(695, 696, '10723044', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1992-09-18', '1992-09-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(696, 697, '10723050', 'TP. OPERATOR', 'PRODUCTION', '0', ' BIMA ', '1991-03-15', '1991-03-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(697, 698, '10723048', 'HE. OPERATOR', 'PRODUCTION', '0', 'LANGAP', '2000-04-10', '2000-04-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(698, 699, '10723047', 'TP. OPERATOR', 'PRODUCTION', '0', 'JEMBER', '1994-10-16', '1994-10-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(699, 700, '10723053', 'TP. OPERATOR', 'PRODUCTION', '0', 'SAMBOJA', '2000-02-03', '2000-02-03', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(700, 701, '10723059', 'TP. OPERATOR', 'PRODUCTION', '0', 'BAJAK', '1990-05-16', '1990-05-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(701, 702, '10723054', 'HE. OPERATOR', 'PRODUCTION', '0', 'BALLOPASANGE', '1998-05-24', '1998-05-24', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(702, 703, '10723057', 'TP. OPERATOR', 'PRODUCTION', '0', 'WONOMULYO', '1985-01-11', '1985-01-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(703, 704, '10723056', 'TP. OPERATOR', 'PRODUCTION', '0', 'BONE', '1991-11-11', '1991-11-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(704, 705, '10723061', 'FUEL MAN', 'SCM', '0', 'DUNGINGIS', '2003-06-04', '2003-06-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(705, 706, '10723062', 'STOREMAN', 'SCM', '0', 'TARAKAN', '1988-07-03', '1988-07-03', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(706, 707, '10723063', 'FUEL MAN', 'SCM', '0', 'LEBION', '1996-06-11', '1996-06-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(707, 708, '10723065', 'FUEL MAN', 'SCM', '0', 'NUNUKAN', '2004-08-29', '2004-08-29', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(708, 709, '10723066', 'FUEL MAN', 'SCM', '0', 'PAYANG', '1995-10-27', '1995-10-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(709, 710, '10112849', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANYUMAS', '1980-04-16', '1980-04-16', '81315130546', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(710, 711, '10723067', 'STOREMAN', 'SCM', '0', 'SESAYAP', '1999-08-02', '1999-08-02', '82237147467', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(711, 712, '10723068', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANA TORAJA', '1994-07-12', '1994-07-12', '85350014733', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(712, 713, '10723069', 'TP. OPERATOR', 'PRODUCTION', '0', 'BULUKUMBA', '1985-11-10', '1985-11-10', '82195327730', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(713, 714, '10723070', 'TP. OPERATOR', 'PRODUCTION', '0', 'SANGATTA', '1994-03-23', '1994-03-23', '81351202173', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(714, 715, '10723071', 'HE. OPERATOR', 'PRODUCTION', '0', 'WONOSOBO', '1987-09-09', '1987-09-09', '81312567574', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(715, 716, '10723074', 'FUEL MAN', 'SCM', '0', 'TARAKAN', '1999-12-08', '1999-12-08', '81352088574', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(716, 717, '10723075', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANTUL', '1985-03-02', '1985-03-02', '81328710983', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(717, 718, '10723077', 'TP. OPERATOR', 'PRODUCTION', '0', 'MEDAN', '1993-09-09', '1993-09-09', '81269237741', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(718, 719, '10723078', 'TP. OPERATOR', 'PRODUCTION', '0', 'SUNGAI TARAB', '1999-11-01', '1999-11-01', '81257748287', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(719, 720, '10723079', 'TP. OPERATOR', 'PRODUCTION', '0', 'PARANITA', '1988-11-11', '1988-11-11', '82344665308', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(720, 721, '10120033', 'GROUP LEADER HSE FIELD', 'HSE', '1', 'TABALONG', '1997-09-11', '1997-09-11', '85752400629', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(721, 722, '10723081', 'MECHANIC', 'PLANT', '0', 'INDRAMAYU', '2002-06-10', '2002-06-10', '85624274185', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(722, 723, '10723080', 'MECHANIC', 'PLANT', '0', 'INDRAMAYU', '1996-05-16', '1996-05-16', '85871175827', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(723, 724, '10723083', 'HE. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1983-02-17', '1983-02-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(724, 725, '10723084', 'TP. OPERATOR', 'PRODUCTION', '0', 'BOYOLALI', '1988-06-22', '1988-06-22', '82250208443', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(725, 726, '10723082', 'HE. OPERATOR', 'PRODUCTION', '0', 'KALIMANTAN', '1997-12-18', '1997-12-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(726, 727, '10723085', 'TP. OPERATOR', 'PRODUCTION', '0', 'BARRU', '1989-06-29', '1989-06-29', '81381397719', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(727, 728, '10723086', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1983-06-19', '1983-06-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(728, 729, '10723087', 'TP. OPERATOR', 'PRODUCTION', '0', 'LUMBAJA', '1997-10-10', '1997-10-10', '82271146448', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(729, 730, '10723091', 'TP. OPERATOR', 'PRODUCTION', '0', 'BURIKO', '1994-11-15', '1994-11-15', '85251475563', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(730, 731, '10723090', 'TP. OPERATOR', 'PRODUCTION', '0', 'RANDAN BATU', '1993-12-25', '1993-12-25', '82148116460', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(731, 732, '10122132', 'MECHANIC', 'PLANT', '0', 'SUKABUMI', '2001-11-05', '2001-11-05', '85793442145', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(732, 733, '10721138', 'WELDER', 'PLANT', '0', 'TARAKAN', '1983-04-11', '1983-04-11', '85815145292', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(733, 734, '10721139', 'WELDER', 'PLANT', '0', 'SEMBAKUNG', '1978-02-27', '1978-02-27', '81257218925', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(734, 735, '10721155', 'MECHANIC', 'PLANT', '0', 'TULUNGAGUNG', '1998-05-13', '1998-05-13', '81257795842', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(735, 736, '10722050', 'WELDER', 'PLANT', '0', 'BATUALU', '1989-07-04', '1989-07-04', '85247585160', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(736, 737, '10722052', 'MECHANIC', 'PLANT', '0', 'MARIHAT I', '1998-01-22', '1998-01-22', '81370012912', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(737, 738, '10723093', 'TP. OPERATOR', 'PRODUCTION', '0', 'TATOR', '1986-10-01', '1986-10-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(738, 739, '10723094', 'TP. OPERATOR', 'PRODUCTION', '0', 'LANGDA', '1990-01-26', '1990-01-26', '81342519745', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(739, 740, '10723095', 'TP. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1988-09-16', '1988-09-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(740, 741, '10723096', 'HE. OPERATOR', 'PRODUCTION', '0', 'BALIKPAPAN', '1990-02-22', '1990-02-22', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(741, 742, '10723097', 'FUEL MAN', 'SCM', '0', 'SENGKONG', '1993-06-01', '1993-06-01', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(742, 743, '10723100', 'TP. OPERATOR', 'PRODUCTION', '0', 'RANTEPAO', '1987-04-03', '1987-04-03', '82250709297', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(743, 744, '10723099', 'TP. OPERATOR', 'PRODUCTION', '0', 'BALIKPAPAN', '1987-01-10', '1987-01-10', '82155223637', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(744, 745, '10723098', 'TP. OPERATOR', 'PRODUCTION', '0', 'PADANGIRING', '1990-03-18', '1990-03-18', '85395641959', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(745, 746, '10723101', 'TP. OPERATOR', 'PRODUCTION', '0', 'BLORA', '1991-10-04', '1991-10-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(746, 747, '10723102', 'TP. OPERATOR', 'PRODUCTION', '0', 'BONE', '1990-02-14', '1990-02-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(747, 748, '10123112', 'JUNIOR GROUP LEADER HSE FIELD PATROL', 'HSE', '1', 'BAJANG', '2000-08-01', '2000-08-01', '82193188842', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(748, 749, '10723108', 'TP. OPERATOR', 'PRODUCTION', '0', 'NABIRE', '1986-08-13', '1986-08-13', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(749, 750, '10121030', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'MOJOKERTO', '1996-08-02', '1996-08-02', '85860865837', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(750, 751, '10723109', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANA TORAJA', '1984-12-26', '1984-12-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(751, 752, '10723111', 'TP. OPERATOR', 'PRODUCTION', '0', 'CILACAP', '1996-04-11', '1996-04-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(752, 753, '10723115', 'TP. OPERATOR', 'PRODUCTION', '0', 'BONTANG', '1990-06-01', '1990-06-01', '82254405747', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(753, 754, '10723116', 'TP. OPERATOR', 'PRODUCTION', '0', 'MAGETAN', '1986-08-16', '1986-08-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(754, 755, '10723118', 'TP. OPERATOR', 'PRODUCTION', '0', 'MENGKENDEK', '1989-07-10', '1989-07-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(755, 756, '10723121', 'TP. OPERATOR', 'PRODUCTION', '0', 'SANGATTA', '1994-08-01', '1994-08-01', '85299111148', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(756, 757, '10123096', 'GROUP LEADER TYRE', 'PLANT', '1', 'BOJONEGORO', '2000-03-09', '2000-03-09', '81545980304', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(757, 758, '10117040', 'GROUP LEADER GENERAL SERVICES', 'GENERAL SERVICES', '1', 'PURWOREJO', '1995-04-18', '1995-04-18', '85642392719', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(758, 759, '11322036', 'TP. OPERATOR', 'PRODUCTION', '0', 'KOTA BARU', '2001-08-04', '2001-08-04', '81549319951', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(759, 760, '11322038', 'HE. OPERATOR', 'PRODUCTION', '0', 'TUBAN', '1992-07-29', '1992-07-29', '82115029548', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(760, 761, '11322039', 'TP. OPERATOR', 'PRODUCTION', '0', 'MENJELUTUNG', '2004-05-25', '2004-05-25', '85752522676', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(761, 762, '10722095', 'HE. OPERATOR', 'PRODUCTION', '0', 'BUNYU', '1993-02-17', '1993-02-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(762, 763, '11322034', 'HE. OPERATOR', 'PRODUCTION', '0', 'YOGYAKARTA', '2003-04-29', '2003-04-29', '85282953768', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(763, 764, '11322035', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2002-11-05', '2002-11-05', '81248351268', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(764, 765, '11322017', 'HE. OPERATOR', 'PRODUCTION', '0', 'MAROS', '1980-08-21', '1980-08-21', '81294822878', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(765, 766, '11322041', 'HE. OPERATOR', 'PRODUCTION', '0', 'SALID', '1980-07-25', '1980-07-25', '81545670614', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(766, 767, '10722038', 'HE. OPERATOR', 'PRODUCTION', '0', 'SOPPENG', '1983-02-18', '1983-02-18', '81250141762', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(767, 768, '10723123', 'PRODUCTION ADMINISTRATOR', 'PRODUCTION', '0', 'TARAKAN', '1998-08-14', '1998-08-14', '82256028306', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(768, 769, '10723124', 'ADMIN PLANT', 'PLANT', '0', 'MALAYSIA', '2004-05-17', '2004-05-17', '82297447354', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(769, 770, '10723125', 'ADMIN PLANT', 'PLANT', '0', 'BUNYU', '2003-10-01', '2003-10-01', '82353288996', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(770, 771, '10723127', 'ENGINEERING CENTRALL CONTROLL ROOM', 'ENGINEERING', '0', 'SESAYAP', '1991-06-09', '1991-06-09', '82157706227', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(771, 772, '10723128', 'STOREMAN', 'SCM', '0', 'TAGUL', '1999-09-03', '1999-09-03', '85346857763', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(772, 773, '11322005', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1986-03-19', '1986-03-19', '81345764088', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(773, 774, '10721115', 'HE. OPERATOR', 'PRODUCTION', '0', 'TORAJA', '1982-01-07', '1982-01-07', '82357691214', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(774, 775, '10721117', 'HE. OPERATOR', 'PRODUCTION', '0', 'SEMBAKUNG', '1990-05-14', '1990-05-14', '85247392723', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(775, 776, '10722093', 'HE. OPERATOR', 'PRODUCTION', '0', 'RANTE LIMBONG', '1992-12-22', '1992-12-22', '85399079291', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(776, 777, '11322033', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1989-04-21', '1989-04-21', '82297035232', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(777, 778, '10723158', 'INVENTORY CONTROLLER', 'SCM', '0', 'GUNUNG PUTIH', '1993-10-02', '1993-10-02', '82255146610', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(778, 779, '10113886', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'BANJARNEGARA', '1994-03-30', '1994-03-30', '85326956320', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(779, 780, '10123075', 'SECTION HEAD EMPLOYEE ADMINISTRATION & RELATION', 'HUMAN CAPITAL', '1', 'BANDUNG', '1981-09-17', '1981-09-17', '82181603964', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(780, 781, '10723159', 'RIGGER', 'PLANT', '0', 'GROBOGAN', '1993-02-16', '1993-02-16', '85293706525', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(781, 782, '10722091', 'HE. OPERATOR', 'PRODUCTION', '0', 'MALAKIRI', '1987-10-25', '1987-10-25', '82148091596', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(782, 783, '11322024', 'TP. OPERATOR', 'PRODUCTION', '0', 'TIDENG PALE', '1996-04-01', '1996-04-01', '85398944649', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(783, 784, '10723212', 'MECHANIC', 'PLANT', '0', 'PURWAKARTA', '2002-04-30', '2002-04-30', '83816734846', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(784, 785, '10723213', 'MECHANIC', 'PLANT', '0', 'BANDUNG', '2003-11-23', '2003-11-23', '85314457086', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(785, 786, '10723214', 'MECHANIC', 'PLANT', '0', 'MAJALENGKA', '2004-02-27', '2004-02-27', '81298857890', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(786, 787, '10723215', 'MECHANIC', 'PLANT', '0', 'KLATEN', '2001-11-21', '2001-11-21', '83115230541', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(787, 788, '10723216', 'MECHANIC', 'PLANT', '0', 'BANDUNG', '2003-11-15', '2003-11-15', '85659561524', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(788, 789, '11322013', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1986-06-20', '1986-06-20', '85347360177', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(789, 790, '10121364', 'GROUP LEADER MONITORING & CONTROL', 'ENGINEERING', '1', 'YOGYAKARTA', '1998-06-10', '1998-06-10', '81770635588', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(790, 791, '10723166', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'POONGAN', '1998-12-28', '1998-12-28', '82249973026', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(791, 792, '10723165', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'BEBATU', '1997-08-16', '1997-08-16', '82281588828', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(792, 793, '10723164', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'TARAKAN', '1987-03-10', '1987-03-10', '82252261242', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(793, 794, '10723163', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'TARAKAN', '2003-07-26', '2003-07-26', '82150488842', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(794, 795, '10723162', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'LIUK-BULU', '2000-09-07', '2000-09-07', '82154171646', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(795, 796, '10723160', 'PLANT HELPER', 'PLANT', '0', 'MENJELUTUNG', '1997-02-15', '1997-02-15', '81395953351', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(796, 797, '10723168', 'TP. OPERATOR', 'PRODUCTION', '0', 'GANDANGBATU', '1994-12-15', '1994-12-15', '82351230676', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(797, 798, '10723169', 'TP. OPERATOR', 'PRODUCTION', '0', 'SALATIGA', '1987-08-11', '1987-08-11', '81257021509', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(798, 799, '10123223', 'MECHANIC', 'PLANT', '0', 'WONOGIRI', '2000-08-02', '2000-08-02', '81393203058', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(799, 800, '10123224', 'MECHANIC', 'PLANT', '0', 'BANYUWANGI', '1997-04-17', '1997-04-17', '81247852995', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(800, 801, '10723171', 'MECHANIC', 'PLANT', '0', 'MALANG', '2000-11-27', '2000-11-27', '82334192815', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(801, 802, '10723174', 'TP. OPERATOR', 'PRODUCTION', '0', 'BALANGAN', '1991-10-26', '1991-10-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(802, 803, '10723173', 'TP. OPERATOR', 'PRODUCTION', '0', 'PURWAKARTA', '1987-07-24', '1987-07-24', '81295953673', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(803, 804, '10723172', 'TP. OPERATOR', 'PRODUCTION', '0', 'SANTAN', '1999-06-20', '1999-06-20', '81351670076', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(804, 805, '10124030', 'MECHANIC', 'PLANT', '0', 'JEPARA', '2004-10-16', '2004-10-16', '85787578932', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(805, 806, '10124032', 'MECHANIC', 'PLANT', '0', 'BANYUMAS', '2002-06-28', '2002-06-28', '83842685491', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(806, 807, '10124029', 'MECHANIC', 'PLANT', '0', 'SRAGEN', '2005-08-14', '2005-08-14', '895413308866', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(807, 808, '10123119', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'SEMARANG', '1979-02-04', '1979-02-04', '81256235307', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(808, 809, '10123187', 'GROUP LEADER SURVEYOR', 'ENGINEERING', '1', 'KOTABUMI UTARA', '1998-11-08', '1998-11-08', '82280270095', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(809, 810, '10723177', 'FUEL MAN', 'SCM', '0', 'NUNUKAN', '1992-02-05', '1992-02-05', '82153992416', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(810, 811, '10723180', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'BUTAS BAGU', '2002-05-15', '2002-05-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(811, 812, '10723179', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'SEBUKU', '1992-12-11', '1992-12-11', '85393908057', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(812, 813, '10723178', 'FUEL MAN', 'SCM', '0', 'SEMBAKUNG', '1989-11-11', '1989-11-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(813, 814, '10723176', 'FUEL MAN', 'SCM', '0', 'SEMBAKUNG', '1998-08-25', '1998-08-25', '82157849891', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(814, 815, '10723175', 'FUEL MAN', 'SCM', '0', 'SEMBAKUNG', '1987-09-13', '1987-09-13', '82155094772', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(815, 816, '10723181', 'TP. OPERATOR', 'PRODUCTION', '0', 'KURRA', '1995-03-03', '1995-03-03', '85244060668', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(816, 817, '10723182', 'TP. OPERATOR', 'PRODUCTION', '0', 'JOMBANG', '1994-07-07', '1994-07-07', '81316397060', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(817, 818, '10723183', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1999-08-28', '1999-08-28', '82255952944', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(818, 819, '10123164', 'GROUP LEADER PLANT', 'PLANT', '1', 'MEDAN', '2000-07-15', '2000-07-15', '87877638398', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(819, 820, '10123227', 'MECHANIC', 'PLANT', '0', 'SAMARINDA', '1994-06-15', '1994-06-15', '85259055623', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(820, 821, '10723185', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANETE', '1989-04-28', '1989-04-28', '81351082692', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(821, 822, '10723187', 'TP. OPERATOR', 'PRODUCTION', '0', 'PALOPO', '1997-12-27', '1997-12-27', '82299635187', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(822, 823, '10122004', 'GROUP LEADER SURVEYOR', 'ENGINEERING', '1', 'SEMARANG', '1998-05-08', '1998-05-08', '85176860805', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(823, 824, '10723188', 'STOREMAN', 'SCM', '0', 'TARAKAN', '1993-12-01', '1993-12-01', '82254932651', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(824, 825, '10723189', 'ENGINEERING CENTRALL CONTROLL ROOM', 'ENGINEERING', '0', 'LABUK', '1999-11-11', '1999-11-11', '82155304979', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(825, 826, '10723190', 'ENGINEERING CENTRALL CONTROLL ROOM', 'ENGINEERING', '0', 'TANAH MERAH', '1998-10-27', '1998-10-27', '82265157246', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(826, 827, '10723191', 'MATERIAL PROCESSOR', 'SCM', '0', 'TAGUL', '2002-11-01', '2002-11-01', '81345452092', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(827, 828, '10723192', 'MECHANIC', 'PLANT', '0', 'BATUKEBUN', '1996-06-12', '1996-06-12', '81346580676', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(828, 829, '10723193', 'FUEL MAN', 'SCM', '0', 'CEGGIONG', '2001-08-03', '2001-08-03', '85338094291', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(829, 830, '10723194', 'MATERIAL PROCESSOR', 'SCM', '0', 'MALINAU SEBERANG', '1997-03-23', '1997-03-23', '82251708796', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(830, 831, '10723195', 'MECHANIC', 'PLANT', '0', 'JEMBER', '1989-05-17', '1989-05-17', '81332884929', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(831, 832, '10723196', 'MECHANIC', 'PLANT', '0', 'INDRAMAYU', '2001-09-18', '2001-09-18', '85849967487', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(832, 833, '10123181', 'GROUP LEADER PLANT PLANNING MONITORING & EVALUATION', 'PLANT', '1', 'SEMARANG', '1999-01-19', '1999-01-19', '89699944574', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(833, 834, '10723197', 'FUEL MAN', 'SCM', '0', 'SESAYAP', '1975-01-03', '1975-01-03', '82252333392', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(834, 835, '10723198', 'FUEL MAN', 'SCM', '0', 'BINANUN', '2003-12-30', '2003-12-30', '85348203423', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(835, 836, '10723201', 'PLANT HELPER', 'PLANT', '0', 'TARAKAN', '1999-02-27', '1999-02-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(836, 837, '10723202', 'TP. OPERATOR', 'PRODUCTION', '0', 'SA\'DAN ANDULAN', '1999-10-20', '1999-10-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(837, 838, '10723203', 'TP. OPERATOR', 'PRODUCTION', '0', 'LARANTUKA', '1986-04-10', '1986-04-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(838, 839, '10723204', 'TP. OPERATOR', 'PRODUCTION', '0', 'LUMBAJA', '1994-07-05', '1994-07-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(839, 840, '10723205', 'FUEL MAN', 'SCM', '0', 'TARAKAN', '2003-03-05', '2003-03-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(840, 841, '10124027', 'MECHANIC', 'PLANT', '0', 'TAMBONAN', '2001-02-14', '2001-02-14', '82163515401', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(841, 842, '10124028', 'MECHANIC', 'PLANT', '0', 'SUKOHARJO', '2004-03-13', '2004-03-13', '87824655578', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(842, 843, '10123256', 'TP. OPERATOR', 'PRODUCTION', '0', 'TASIKMALAYA', '1997-08-20', '1997-08-20', '85221947123', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(843, 844, '10123257', 'TP. OPERATOR', 'PRODUCTION', '0', 'NAMLEA', '2003-12-08', '2003-12-08', '81228202096', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(844, 845, '10123179', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'KUDUS', '1999-03-02', '1999-03-02', '81225438959', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(845, 846, '10123174', 'GROUP LEADER HSE FIELD', 'HSE', '1', 'BANDUNG', '1999-03-31', '1999-03-31', '82134085053', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(846, 847, '10723206', 'FUEL MAN', 'SCM', '0', 'SABULUAN', '1994-03-27', '1994-03-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(847, 848, '10723208', 'PRODUCTION ADMINISTRATOR', 'PRODUCTION', '0', 'MENJELUTUNG', '1999-02-25', '1999-02-25', '82213403836', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(848, 849, '10723209', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'BULAGI', '1979-08-02', '1979-08-02', '85248806710', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(849, 850, '10123292', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'SLEMAN', '2004-06-23', '2004-06-23', '895391415149', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(850, 851, '10123288', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'SLEMAN', '2003-07-19', '2003-07-19', '81349684260', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(851, 852, '10123290', 'JUNIOR GROUP LEADER DATA PROCESSOR', 'ENGINEERING', '1', 'SLEMAN', '2003-06-11', '2003-06-11', '85726385719', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(852, 853, '10722012', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1983-07-08', '1983-07-08', '82254776758', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(853, 854, '10123289', 'JUNIOR GROUP LEADER DATA PROCESSOR', 'ENGINEERING', '1', 'YOGYAKARTA', '2003-03-20', '2003-03-20', '882008608969', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(854, 855, '10724037', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2003-10-10', '2003-10-10', '81254460551', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(855, 856, '10724029', 'TP. OPERATOR', 'PRODUCTION', '0', 'SALIMBATU', '1998-12-23', '1998-12-23', '82250784810', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(856, 857, '10724012', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2003-06-18', '2003-06-18', '81345453975', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(857, 858, '10724019', 'TP. OPERATOR', 'PRODUCTION', '0', 'MENJELUTUNG', '2005-12-03', '2005-12-03', '81351416846', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(858, 859, '10724022', 'TP. OPERATOR', 'PRODUCTION', '0', 'MANSALONG', '2001-02-17', '2001-02-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(859, 860, '10724006', 'TP. OPERATOR', 'PRODUCTION', '0', 'PAGAR', '2003-06-22', '2003-06-22', '82133223393', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(860, 861, '10724011', 'HE. OPERATOR', 'PRODUCTION', '0', 'ATAP', '2002-11-22', '2002-11-22', '82210172359', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(861, 862, '10724018', 'TP. OPERATOR', 'PRODUCTION', '0', 'LEBION', '2001-10-28', '2001-10-28', '82297180049', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(862, 863, '10724007', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2002-09-18', '2002-09-18', '81256637577', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(863, 864, '10724008', 'HE. OPERATOR', 'PRODUCTION', '0', 'TABALONG', '2005-08-16', '2005-08-16', '895704400325', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(864, 865, '10724003', 'TP. OPERATOR', 'PRODUCTION', '0', 'SESAYAP', '2000-03-17', '2000-03-17', '89520747803', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(865, 866, '10724016', 'HE. OPERATOR', 'PRODUCTION', '0', 'BUNGENG', '1996-05-05', '1996-05-05', '82350219628', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(866, 867, '10724024', 'HE. OPERATOR', 'PRODUCTION', '0', 'KOTABARU', '1999-12-29', '1999-12-29', '87868486308', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(867, 868, '10724013', 'TP. OPERATOR', 'PRODUCTION', '0', 'PURBATUA', '2001-03-27', '2001-03-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(868, 869, '10724004', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2002-10-09', '2002-10-09', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(869, 870, '10724017', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1995-05-18', '1995-05-18', '82298697926', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(870, 871, '10724015', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2004-03-27', '2004-03-27', '85337599023', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(871, 872, '10724009', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2000-11-22', '2000-11-22', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(872, 873, '10724005', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '2003-04-04', '2003-04-04', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(873, 874, '10724014', 'HE. OPERATOR', 'PRODUCTION', '0', 'MALANG', '1997-05-05', '1997-05-05', '81235058665', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(874, 875, '10724010', 'HE. OPERATOR', 'PRODUCTION', '0', 'TULUNGAGUNG', '1998-03-07', '1998-03-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(875, 876, '10723207', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1997-09-19', '1997-09-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23');
INSERT INTO `workers` (`id`, `user_id`, `nrp`, `jabatan`, `departemen`, `staff`, `tempat_lahir`, `tanggal_lahir`, `tgl_masuk_kerja`, `no_hp`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(876, 877, '10122286', 'MECHANIC', 'PLANT', '0', 'TASIKMALAYA', '2002-05-30', '2002-05-30', '85316629812', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(877, 878, '10122287', 'MECHANIC', 'PLANT', '0', 'GARUT', '2002-01-11', '2002-01-11', '85603374484', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(878, 879, '10122288', 'MECHANIC', 'PLANT', '0', 'GARUT', '2002-02-25', '2002-02-25', '89515578904', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(879, 880, '10123296', 'GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'BANJARMASIN', '2000-08-29', '2000-08-29', '82250455827', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(880, 881, '10723210', 'HE. OPERATOR', 'PRODUCTION', '0', 'MADIUN', '1988-09-29', '1988-09-29', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(881, 882, '10123065', 'GROUP LEADER HSE ENVIRONMENT', 'HSE', '1', 'TABALONG', '1999-12-19', '1999-12-19', '82229839821', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(882, 883, '10123250', 'HE. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '1988-06-03', '1988-06-03', '81226202205', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(883, 884, '10123246', 'HE. OPERATOR', 'PRODUCTION', '0', 'BANYUMAS', '1990-03-11', '1990-03-11', '81392697755', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(884, 885, '10123291', 'JUNIOR GROUP LEADER DATA PROCESSOR', 'ENGINEERING', '1', 'SLEMAN', '2004-09-22', '2004-09-22', '85713525586', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(885, 886, '10324005', 'MECHANIC', 'PLANT', '0', 'BOYOLALI', '2005-05-12', '2005-05-12', '85745450588', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(886, 887, '10324003', 'MECHANIC', 'PLANT', '0', 'BOYOLALI', '2001-04-18', '2001-04-18', '85546956409', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(887, 888, '10324006', 'MECHANIC', 'PLANT', '0', 'SANGGATA', '2002-07-22', '2002-07-22', '81251864884', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(888, 889, '10324004', 'MECHANIC', 'PLANT', '0', 'KARANGANYAR', '2004-08-30', '2004-08-30', '895322651271', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(889, 890, '10123248', 'HE. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '1992-10-10', '1992-10-10', '81283051869', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(890, 891, '10123249', 'TP. OPERATOR', 'PRODUCTION', '0', 'CIANJUR', '1995-10-18', '1995-10-18', '81247476276', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(891, 892, '10724001', 'MECHANIC', 'PLANT', '0', 'BOJONEGORO', '1993-08-09', '1993-08-09', '81335782725', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(892, 893, '10123247', 'TP. OPERATOR', 'PRODUCTION', '0', 'PEMALANG', '1985-07-21', '1985-07-21', '85249882532', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(893, 894, '10124022', 'GROUP LEADER COAL', 'PRODUCTION', '1', 'BOGOR', '1997-02-20', '1997-02-20', '81320665369', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(894, 895, '10124036', 'GROUP LEADER WASTE DUMP', 'PRODUCTION', '1', 'MEDAN', '1992-03-13', '1992-03-13', '81398956332', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(895, 896, '10123215', 'TP. OPERATOR', 'PRODUCTION', '0', 'MALANG', '1993-01-20', '1993-01-20', '82141992252', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(896, 897, '10124023', 'GROUP LEADER GEOTECH & GEOHIDROLOGY', 'ENGINEERING', '1', 'TANJUNGPANDAN', '2000-10-26', '2000-10-26', '81949305455', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(897, 898, '10724002', 'MECHANIC', 'PLANT', '0', 'INDRAMAYU', '2001-04-19', '2001-04-19', '895355327508', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(898, 899, '10123013', 'MECHANIC', 'PLANT', '0', 'SRAGEN', '2003-08-26', '2003-08-26', '81256263459', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(899, 900, '10122216', 'MECHANIC', 'PLANT', '0', 'SUKABUMI', '2002-06-07', '2002-06-07', '89657951801', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(900, 901, '10724023', 'MECHANIC', 'PLANT', '0', 'INDRAMAYU', '1997-03-21', '1997-03-21', '85721521023', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(901, 902, '10724025', 'TP. OPERATOR', 'PRODUCTION', '0', 'BERAU', '2002-05-09', '2002-05-09', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(902, 903, '10724026', 'TP. OPERATOR', 'PRODUCTION', '0', 'KUTAI TIMUR', '1992-05-05', '1992-05-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(903, 904, '10724027', 'TP. OPERATOR', 'PRODUCTION', '0', 'BERAU', '2003-01-05', '2003-01-05', '81523937720', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(904, 905, '10724028', 'TP. OPERATOR', 'PRODUCTION', '0', 'KUTAI TIMUR', '1989-10-11', '1989-10-11', '85346158250', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(905, 906, '10724030', 'TP. OPERATOR', 'PRODUCTION', '0', 'MUARA WAHAU', '1988-03-10', '1988-03-10', '82252815809', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(906, 907, '10724031', 'TP. OPERATOR', 'PRODUCTION', '0', 'TORAJA', '1985-01-18', '1985-01-18', '81346379361', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(907, 908, '10724032', 'TP. OPERATOR', 'PRODUCTION', '0', 'BONTANG', '1989-10-10', '1989-10-10', '82254450822', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(908, 909, '10724033', 'TP. OPERATOR', 'PRODUCTION', '0', 'BALIKPAPAN', '1988-01-01', '1988-01-01', '81345434146', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(909, 910, '10724034', 'TP. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1995-10-19', '1995-10-19', '82293080464', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(910, 911, '10724035', 'TP. OPERATOR', 'PRODUCTION', '0', 'BUA', '1994-11-04', '1994-11-04', '85219756546', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(911, 912, '10724036', 'TP. OPERATOR', 'PRODUCTION', '0', 'BUNTUDATU', '1993-05-18', '1993-05-18', '82226826720', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(912, 913, '10724038', 'TP. OPERATOR', 'PRODUCTION', '0', 'MALENGKO', '1997-04-13', '1997-04-13', '81248994862', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(913, 914, '10124057', 'MECHANIC', 'PLANT', '0', 'MEDAN', '1989-11-13', '1989-11-13', '85348973124', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(914, 915, '10124059', 'MECHANIC', 'PLANT', '0', 'SRAGEN', '1995-07-29', '1995-07-29', '82225426180', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(915, 916, '10122262', 'GROUP LEADER INVENTORY', 'SCM', '1', 'BOYOLALI', '2000-07-14', '2000-07-14', '83146026209', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(916, 917, '10724039', 'TP. OPERATOR', 'PRODUCTION', '0', 'BENTENG', '1989-05-13', '1989-05-13', '81242590610', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(917, 918, '10124058', 'MECHANIC', 'PLANT', '0', 'BREBES', '2000-03-01', '2000-03-01', '82213118736', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(918, 919, '10724040', 'FUEL MAN', 'SCM', '0', 'PAYANG', '2004-08-02', '2004-08-02', '82255739953', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(919, 920, '10724041', 'FUEL MAN', 'SCM', '0', 'LABANG', '2000-10-09', '2000-10-09', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(920, 921, '10724042', 'ENGINEERING CENTRALL CONTROLL ROOM', 'ENGINEERING', '0', 'PAGALUYON', '2002-04-25', '2002-04-25', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(921, 922, '10124063', 'GROUP LEADER DEWATERING & LIGHTING', 'PIT SERVICE', '1', 'MUARA ENIM', '1994-08-11', '1994-08-11', '81213473787', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(922, 923, '10724047', 'TP. OPERATOR', 'PRODUCTION', '0', 'BERAU', '2001-06-05', '2001-06-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(923, 924, '10724048', 'TP. OPERATOR', 'PRODUCTION', '0', 'BERAU', '2002-10-08', '2002-10-08', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(924, 925, '10724049', 'ENGINEERING CENTRALL CONTROLL ROOM', 'ENGINEERING', '0', 'NUNUKAN', '1999-11-28', '1999-11-28', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(925, 926, '10724050', 'TP. OPERATOR', 'PRODUCTION', '0', 'KEBUMEN', '1987-02-16', '1987-02-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(926, 927, '10724051', 'TP. OPERATOR', 'PRODUCTION', '0', 'RENTEPAO', '1991-05-13', '1991-05-13', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(927, 928, '10724052', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1991-03-23', '1991-03-23', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(928, 929, '10724053', 'HE. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1996-03-17', '1996-03-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(929, 930, '10724054', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1988-03-26', '1988-03-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(930, 931, '10724055', 'TP. OPERATOR', 'PRODUCTION', '0', 'TANJUNG SELOR', '2001-04-05', '2001-04-05', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(931, 932, '10724057', 'TP. OPERATOR', 'PRODUCTION', '0', 'KEDIRI', '1993-09-26', '1993-09-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(932, 933, '10724058', 'TP. OPERATOR', 'PRODUCTION', '0', 'NANNA', '1988-07-15', '1988-07-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(933, 934, '10724059', 'TP. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1998-03-02', '1998-03-02', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(934, 935, '10724062', 'HE. OPERATOR', 'PRODUCTION', '0', 'BUNTULOBO', '1992-06-03', '1992-06-03', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(935, 936, '10724063', 'TP. OPERATOR', 'PRODUCTION', '0', 'PANATAKAN', '1994-02-07', '1994-02-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(936, 937, '10724064', 'TP. OPERATOR', 'PRODUCTION', '0', 'PINRANG', '1990-06-19', '1990-06-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(937, 938, '10724065', 'TP. OPERATOR', 'PRODUCTION', '0', 'NUNUKAN', '2001-04-28', '2001-04-28', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(938, 939, '10724066', 'TP. OPERATOR', 'PRODUCTION', '0', 'SIANTARASA', '1991-11-14', '1991-11-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(939, 940, '10724067', 'HE. OPERATOR', 'PRODUCTION', '0', 'KONDONGAN', '1999-08-12', '1999-08-12', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(940, 941, '10124065', 'GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'MADIUN', '2000-09-01', '2000-09-01', '81936237173', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(941, 942, '10724068', 'TP. OPERATOR', 'PRODUCTION', '0', 'SANGATTA', '1994-10-27', '1994-10-27', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(942, 943, '10724069', 'TP. OPERATOR', 'PRODUCTION', '0', 'SAMARINDA', '1995-03-11', '1995-03-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(943, 944, '10724070', 'HE. OPERATOR', 'PRODUCTION', '0', 'LUMAJANG', '1991-01-13', '1991-01-13', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(944, 945, '10724072', 'STOREMAN', 'SCM', '0', 'TORAJA', '1984-08-18', '1984-08-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(945, 946, '10724074', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'SEDONGON', '1985-05-15', '1985-05-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(946, 947, '10724075', 'FUEL MAN', 'SCM', '0', 'TARAKAN', '2004-06-28', '2004-06-28', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(947, 948, '10724076', 'FUEL MAN', 'SCM', '0', 'MANUK BUNGKUL', '1989-11-07', '1989-11-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(948, 949, '10724077', 'HE. OPERATOR', 'PRODUCTION', '0', 'PACCERAKANG', '1986-12-07', '1986-12-07', '82345205885', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(949, 950, '10724078', 'TP. OPERATOR', 'PRODUCTION', '0', 'STUNGGUL', '1998-01-11', '1998-01-11', '82268349866', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(950, 951, '10724079', 'HE. OPERATOR', 'PRODUCTION', '0', 'DEMAK', '1998-09-12', '1998-09-12', '85828518944', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(951, 952, '10724080', 'TP. OPERATOR', 'PRODUCTION', '0', 'BATUAH', '1998-06-22', '1998-06-22', '82213577705', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(952, 953, '10724081', 'TP. OPERATOR', 'PRODUCTION', '0', 'BONTANG', '1989-08-14', '1989-08-14', '81350009025', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(953, 954, '10724082', 'TP. OPERATOR', 'PRODUCTION', '0', 'MALAYSIA', '1990-05-03', '1990-05-03', '\'082314988468', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(954, 955, '10724083', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANYUMAS', '1989-01-21', '1989-01-21', '81391033269', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(955, 956, '10724084', 'TP. OPERATOR', 'PRODUCTION', '0', 'CILACAP', '1996-11-03', '1996-11-03', '82348228926', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(956, 957, '10724085', 'TP. OPERATOR', 'PRODUCTION', '0', 'BANJARNEGARA', '2000-09-03', '2000-09-03', '85156248440', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(957, 958, '10724086', 'HE. OPERATOR', 'PRODUCTION', '0', 'BARRU', '1992-08-24', '1992-08-24', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(958, 959, '10724087', 'HE. OPERATOR', 'PRODUCTION', '0', 'REMBANG', '1989-12-18', '1989-12-18', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(959, 960, '10724088', 'HE. OPERATOR', 'PRODUCTION', '0', 'BULO', '1990-06-16', '1990-06-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(960, 961, '10724089', 'STOREMAN', 'SCM', '0', 'NUNUKAN', '2002-10-12', '2002-10-12', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(961, 962, '10123051', 'GROUP LEADER FUEL & OIL', 'SCM', '1', 'PEKALONGAN', '1999-11-22', '1999-11-22', '8158349166', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(962, 963, '10724090', 'FUEL MAN', 'SCM', '0', 'TARAKAN', '2004-01-08', '2004-01-08', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(963, 964, '10724091', 'HE. OPERATOR', 'PRODUCTION', '0', 'NUNUKAN', '2001-08-19', '2001-08-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(964, 965, '10724092', 'HE. OPERATOR', 'PRODUCTION', '0', 'ATAP', '1987-08-23', '1987-08-23', '853408282754', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(965, 966, '10724093', 'FUEL MAN', 'SCM', '0', 'TARAKAN', '1982-10-26', '1982-10-26', '895385959110', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(966, 967, '10124113', 'MECHANIC', 'PLANT', '0', 'SUMEDANG', '1994-01-23', '1994-01-23', '8985589421', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(967, 968, '10724095', 'MECHANIC', 'PLANT', '0', 'BOJONEGORO', '1998-03-17', '1998-03-17', '82250896901', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(968, 969, '10724096', 'MECHANIC', 'PLANT', '0', 'PINRANG', '1983-02-14', '1983-02-14', '82240033346', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(969, 970, '10124106', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'PALEMBANG', '1994-11-04', '1994-11-04', '81279866600', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(970, 971, '10724097', 'HE. OPERATOR', 'PRODUCTION', '0', 'KELUBIR', '1991-06-14', '1991-06-14', '85348794159', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(971, 972, '10724098', 'HE. OPERATOR', 'PRODUCTION', '0', 'TARAKAN', '1992-06-20', '1992-06-20', '81327177347', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(972, 973, '10724099', 'HE. OPERATOR', 'PRODUCTION', '0', 'BALUSU', '1987-01-14', '1987-01-14', '82153887945', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(973, 974, '10724100', 'HE. OPERATOR', 'PRODUCTION', '0', 'KADUNDUNG', '1995-05-25', '1995-05-25', '82310843411', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(974, 975, '10124112', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'SLEMAN', '1975-02-22', '1975-02-22', '81390037365', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(975, 976, '10724102', 'HE. OPERATOR', 'PRODUCTION', '0', 'PARE PARE', '1984-10-21', '1984-10-21', '81256016153', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(976, 977, '10724103', 'HE. OPERATOR', 'PRODUCTION', '0', 'MALANG', '1994-02-06', '1994-02-06', '85784427471', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(977, 978, '10122340', 'JUNIOR GROUP LEADER INSTRUMENT RADIO', 'CPSD', '1', 'KLATEN', '2003-09-15', '2003-09-15', '8977340517', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(978, 979, '10124122', 'MECHANIC', 'PLANT', '0', 'KUDUS', '2000-06-15', '2000-06-15', '81258768263', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(979, 980, '10724104', 'PRODUCTION ADMINISTRATOR', 'PRODUCTION', '0', 'KELAPIS', '1998-12-31', '1998-12-31', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(980, 981, '10724105', 'ADMIN PLANT', 'PLANT', '0', 'TAWAU', '1999-07-30', '1999-07-30', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(981, 982, '10724106', 'MECHANIC', 'PLANT', '0', 'BOJONEGORO', '1999-10-09', '1999-10-09', '81258040806', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(982, 983, '10724107', 'TP. OPERATOR', 'PRODUCTION', '0', 'BATURAPE', '1990-07-19', '1990-07-19', '82353104864', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(983, 984, '10724108', 'TP. OPERATOR', 'PRODUCTION', '0', 'BALAKAWA', '2000-05-03', '2000-05-03', '85340496172', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(984, 985, '10724109', 'TP. OPERATOR', 'PRODUCTION', '0', 'KARANGANYAR', '1985-07-10', '1985-07-10', '8122011102', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(985, 986, '10724110', 'TP. OPERATOR', 'PRODUCTION', '0', 'KARANGAN', '1998-12-06', '1998-12-06', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(986, 987, '10724111', 'TP. OPERATOR', 'PRODUCTION', '0', 'SANGATTA', '2003-07-14', '2003-07-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(987, 988, '10724112', 'TP. OPERATOR', 'PRODUCTION', '0', 'KEBUMEN', '1991-03-17', '1991-03-17', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(988, 989, '10124126', 'MECHANIC', 'PLANT', '0', 'BOYOLALI', '1999-09-30', '1999-09-30', '81336903490', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(989, 990, '10724113', 'MECHANICAL & ELECTRICAL', 'GENERAL SERVICES', '0', 'TASIKMALAYA', '1980-03-26', '1980-03-26', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(990, 991, '10724114', 'MECHANICAL & ELECTRICAL', 'GENERAL SERVICES', '0', 'BANDUNG', '1996-11-15', '1996-11-15', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(991, 992, '10124127', 'GROUP LEADER FUEL & OIL', 'SCM', '1', 'BANYUWANGI', '1994-07-18', '1994-07-18', '85656678541', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(992, 993, '10124131', 'MECHANIC', 'PLANT', '0', 'MALANG', '1990-10-16', '1990-10-16', '85203376968', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(993, 994, '10724115', 'MECHANIC', 'PLANT', '0', 'MALILI', '1991-08-13', '1991-08-13', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(994, 995, '10124132', 'MECHANIC', 'PLANT', '0', 'CIAMIS', '1993-04-24', '1993-04-24', '85654129478', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(995, 996, '10124061', 'DEPARTEMEN HEAD HUMAN CAPITAL', 'HUMAN CAPITAL', '1', 'CUPAK', '1993-06-26', '1993-06-26', '85263474355', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(996, 997, '10724116', 'MECHANIC', 'PLANT', '0', 'BOJONEGORO', '2001-07-14', '2001-07-14', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(997, 998, '10724117', 'MECHANIC', 'PLANT', '0', 'BITTUANG', '1999-01-09', '1999-01-09', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(998, 999, '10724118', 'MECHANIC', 'PLANT', '0', 'MALANG', '2003-11-22', '2003-11-22', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(999, 1000, '10724119', 'MECHANIC', 'PLANT', '0', 'SLEMAN', '2004-01-10', '2004-01-10', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1000, 1001, '10724120', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '2004-02-25', '2004-02-25', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1001, 1002, '10724121', 'TP. OPERATOR', 'PRODUCTION', '0', 'SEBATIK', '1995-06-12', '1995-06-12', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1002, 1003, '10724122', 'MECHANIC', 'PLANT', '0', 'SORONG', '2001-03-07', '2001-03-07', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1003, 1004, '10124134', 'MECHANIC', 'PLANT', '0', 'BANYUWANGI', '1995-05-13', '1995-05-13', '81332068042', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1004, 1005, '10724124', 'TP. OPERATOR', 'PRODUCTION', '0', 'BERAU', '1993-05-15', '1993-05-15', '82148859005', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1005, 1006, '10724125', 'TP. OPERATOR', 'PRODUCTION', '0', 'SANGRANDANAN', '1996-08-28', '1996-08-28', '81357576234', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1006, 1007, '10724126', 'TP. OPERATOR', 'PRODUCTION', '0', 'BOGOR', '1997-07-09', '1997-07-09', '81213355403', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1007, 1008, '10724127', 'TP. OPERATOR', 'PRODUCTION', '0', 'KAWASIK', '1996-12-21', '1996-12-21', '85146291159', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1008, 1009, '10124135', 'GROUP LEADER WAREHOUSE', 'SCM', '1', 'JAKARTA', '1996-12-23', '1996-12-23', '85121001215', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1009, 1010, '10724128', 'TP. OPERATOR', 'PRODUCTION', '0', 'MALANG', '1999-07-14', '1999-07-14', '82232162294', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1010, 1011, '10724129', 'TP. OPERATOR', 'PRODUCTION', '0', 'MADIUN', '1991-01-30', '1991-01-30', '85259405733', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1011, 1012, '10724131', 'TP. OPERATOR', 'PRODUCTION', '0', 'RANTEPAO', '1994-07-09', '1994-07-09', '085210579294\n', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1012, 1013, '10724132', 'TP. OPERATOR', 'PRODUCTION', '0', 'MAGETAN', '1990-06-20', '1990-06-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1013, 1014, '10124136', 'GROUP LEADER MANAGEMENT SYSTEM & CONTROL', 'CPSD', '1', 'GROBOGAN', '1999-02-20', '1999-02-20', '89619272483', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1014, 1015, '10119020', 'GROUP LEADER IT TECHNICAN & SUPPORT', 'CPSD', '1', 'CIANJUR', '1997-01-24', '1997-01-24', '82299112221', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1015, 1016, '10724133', 'MECHANIC', 'PLANT', '0', 'MOJOKERTO', '2004-12-19', '2004-12-19', '85730835762', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1016, 1017, '10124263', 'MECHANIC', 'PLANT', '0', 'BOYOLALI', '1998-07-21', '1998-07-21', '89624606010', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1017, 1018, '10124264', 'MECHANIC', 'PLANT', '0', 'SALAK', '1997-09-02', '1997-09-02', '82288119181', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1018, 1019, '10124203', 'GROUP LEADER MINE PLAN', 'ENGINEERING', '1', 'BANDUNG', '2000-12-24', '2000-12-24', '82246975345', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1019, 1020, '10724134', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1992-04-27', '1992-04-27', '82251087148', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1020, 1021, '10724135', 'MECHANIC', 'PLANT', '0', 'BALIKPAPAN', '1987-08-06', '1987-08-06', '81258602008', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1021, 1022, '10724136', 'MECHANIC', 'PLANT', '0', 'LONG BELUAH', '1989-03-05', '1989-03-05', '82351212732', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1022, 1023, '10724137', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '2002-01-16', '2002-01-16', '81345035575', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1023, 1024, '10124270', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '2001-07-01', '2001-07-01', '82256086183', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1024, 1025, '10124243', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'CILACAP', '2002-12-02', '2002-12-02', '8979460839', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1025, 1026, '10124273', 'MECHANIC', 'PLANT', '0', 'TANJUNG REDEB', '1984-06-18', '1984-06-18', '81318682229', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1026, 1027, '10724138', 'MECHANIC', 'PLANT', '0', 'MALANG', '2000-12-31', '2000-12-31', '81251861763', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1027, 1028, '10724139', 'MECHANIC', 'PLANT', '0', 'JANGO', '1998-08-08', '1998-08-08', '82253302030', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1028, 1029, '10725001', 'MECHANIC', 'PLANT', '0', 'SEMARANG', '2004-08-03', '2004-08-03', '8992108169', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1029, 1030, '10725002', 'MECHANIC', 'PLANT', '0', 'BOJONEGORO', '1994-10-31', '1994-10-31', '81344503712', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1030, 1031, '10725003', 'MECHANIC', 'PLANT', '0', 'POLEWALI MAMASA', '1999-07-17', '1999-07-17', '85158384733', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1031, 1032, '10725004', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '1995-09-02', '1995-09-02', '82322266902', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1032, 1033, '10725005', 'FUEL MAN', 'SCM', '0', 'NUNUKAN', '2004-09-10', '2004-09-10', '822588992407', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1033, 1034, '10725006', 'FUEL MAN', 'SCM', '0', 'KALAMBUKU', '1997-08-28', '1997-08-28', '82253011693', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1034, 1035, '10725007', 'FUEL MAN', 'SCM', '0', 'BUTAS BAGU', '1994-04-24', '1994-04-24', '82251518682', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1035, 1036, '10125004', 'MECHANIC', 'PLANT', '0', 'MATARAM', '2001-09-23', '2001-09-23', '6282340640445', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1036, 1037, '10121079', 'GROUP LEADER MAINTENANCE CONSTRUCTION & EQUIPMENT', 'GENERAL SERVICES', '1', 'SURABAYA', '1996-04-23', '1996-04-23', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1037, 1038, '10114025', 'DEPARTEMEN HEAD PLANT SUPPORT', 'PLANT', '1', 'TORAJA UTARA', '1979-06-30', '1979-06-30', '85244945859', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1038, 1039, '10125001', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '1', 'P. SIANTAR', '1995-07-16', '1995-07-16', '85296798071', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1039, 1040, '10725008', 'MECHANIC', 'PLANT', '0', 'TARAKAN', '2002-03-07', '2002-03-07', '85210284335', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1040, 1041, '10125068', 'MECHANIC', 'PLANT', '0', 'JAKARTA', '1998-06-05', '1998-06-05', '812887293447', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1041, 1042, '10125069', 'MECHANIC', 'PLANT', '0', 'BATAM', '2000-02-11', '2000-02-11', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1042, 1043, '10125070', 'MECHANIC', 'PLANT', '0', 'GUNUNGKIDUL', '1995-03-16', '1995-03-16', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1043, 1044, '10125074', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'KULONPROGO', '1990-06-10', '1990-06-10', '85753547235', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1044, 1045, '10124269', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'HUTA NAULI', '1997-12-01', '1997-12-01', '85246437456', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1045, 1046, '10121050', 'GROUP LEADER PIT PREPARATION & CHANEL', 'PIT SERVICE', '1', 'REMBANG', '1996-02-14', '1996-02-14', '85607988198', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1046, 1047, '10124024', 'GROUP LEADER GEOTECH & GEOHIDROLOGY', 'ENGINEERING', '1', 'KARANGANYAR', '1997-02-13', '1997-02-13', '89620078909', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1047, 1048, '10121025', 'JUNIOR GROUP LEADER INSTRUMENTMAN', 'ENGINEERING', '1', 'BANTUL', '2000-02-26', '2000-02-26', '89670239348', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1048, 1049, '10725009', 'WELDER', 'PLANT', '0', 'BARRU', '1986-07-01', '1986-07-01', '82155893615', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1049, 1050, '10725010', 'WELDER', 'PLANT', '0', 'TARAKAN', '1998-03-06', '1998-03-06', '82352245143', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1050, 1051, '10124177', 'GROUP LEADER PLANT', 'PLANT', '1', 'TEGAL', '2002-04-24', '2002-04-24', '85642572750', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1051, 1052, '10124186', 'GROUP LEADER PLANT', 'PLANT', '1', 'BANDUNG', '2001-06-29', '2001-06-29', '85179579070', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1052, 1053, '10124178', 'GROUP LEADER PLANT', 'PLANT', '1', 'AMBON', '2003-07-23', '2003-07-23', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1054, 1055, '10725011', 'FUEL MAN', 'SCM', '0', 'RANTEPAO', '2004-11-16', '2004-11-16', '82273721586', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1055, 1056, '10725012', 'STOREMAN', 'SCM', '0', 'TARAKAN', '2006-08-07', '2006-08-07', '85150645771', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1056, 1057, '10725013', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'SENGKONG', '1995-08-16', '1995-08-16', '85250244447', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1057, 1058, '10725014', 'MECHANIC', 'PLANT', '0', 'MALAYSIA', '1996-04-28', '1996-04-28', '82154156456', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1058, 1059, '10125084', 'MECHANIC', 'PLANT', '0', 'RANGGA ILUNG', '1999-10-02', '1999-10-02', '82250449495', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1059, 1060, '10125085', 'MECHANIC', 'PLANT', '0', 'MALANG', '2004-05-24', '2004-05-24', '83857198086', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1060, 1061, '10125087', 'MECHANIC', 'PLANT', '0', 'KARANGANYAR', '1997-12-01', '1997-12-01', '85869260', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1061, 1062, '10125088', 'MECHANIC', 'PLANT', '0', 'LOA BUAH', '1999-11-15', '1999-11-15', '85828551925', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1062, 1063, '10125086', 'MECHANIC', 'PLANT', '0', 'PATI', '2003-12-08', '2003-12-08', '88973733991', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1063, 1064, '10725015', 'MECHANIC', 'PLANT', '0', 'PATI', '1999-10-05', '1999-10-05', '81296047203', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1064, 1065, '10120555', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'KLATEN', '2000-03-04', '2000-03-04', '89624833040', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1065, 1066, '11110018', 'GROUP LEADER TECHNICAL', 'HUMAN CAPITAL', '1', 'SALATIGA', '1988-02-20', '1988-02-20', '89636731262', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1066, 1067, '10125060', 'GROUP LEADER HSE DEVELOPMENT', 'HSE', '1', 'SLEMAN', '2001-10-04', '2001-10-04', '85643308763', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1067, 1068, '10125048', 'GROUP LEADER HSE DEVELOPMENT', 'HSE', '1', 'BEKASI', '2001-06-24', '2001-06-24', '85155414150', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1068, 1069, '10123098', 'GROUP LEADER FRONT OVERBURDEN', 'PRODUCTION', '1', 'GARUT', '1988-01-06', '1988-01-06', '81220968242', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1069, 1070, '10725016', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'PAYANG', '2004-03-02', '2004-03-02', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1070, 1071, '10725017', 'FUEL MAN', 'SCM', '0', 'PATAL 1', '2005-10-03', '2005-10-03', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1071, 1072, '10725018', 'FUEL MAN', 'SCM', '0', 'NUNUKAN', '2003-12-22', '2003-12-22', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1072, 1073, '10725019', 'FUEL MAN', 'SCM', '0', 'SALIMBATU', '1996-09-09', '1996-09-09', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1073, 1074, '10725020', 'FUEL MAN', 'SCM', '0', 'SEMBAKUNG', '2002-07-20', '2002-07-20', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1074, 1075, '10725021', 'FUEL MAN', 'SCM', '0', 'TAGUL', '2003-02-19', '2003-02-19', '0812345678', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1075, 1076, '10725022', 'PRODUCTION HELPER', 'PRODUCTION', '0', 'SEMBAKUNG', '1997-11-17', '1997-11-17', '0832145687', '1', NULL, '2025-04-24 19:17:23', '2025-04-24 19:17:23'),
(1076, 1087, '10101014', 'OPERATION', 'PRODUCTION', '1', 'Padang', '2000-02-02', '2023-05-05', '0811555445', '1', NULL, '2025-05-17 03:27:54', '2025-05-17 03:27:54'),
(1077, 1088, '101010152', 'OPERATION2', 'PRODUCTION', '1', 'Bandung', '2001-01-01', '2021-06-06', '08115554492', '0', '2025-05-18 03:27:23', '2025-05-18 02:17:11', '2025-05-18 03:27:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bpjs`
--
ALTER TABLE `bpjs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bpjs_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cuti_tahunans`
--
ALTER TABLE `cuti_tahunans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuti_tahunans_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `etikets`
--
ALTER TABLE `etikets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etikets_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `formlains`
--
ALTER TABLE `formlains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `formlains_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `formtemplates`
--
ALTER TABLE `formtemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gajis`
--
ALTER TABLE `gajis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gajis_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minta_forms`
--
ALTER TABLE `minta_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `minta_forms_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `overtimes_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `rapel_usls`
--
ALTER TABLE `rapel_usls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rapel_usls_worker_id_index` (`worker_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `suratlains`
--
ALTER TABLE `suratlains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suratlains_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `surat_aktifs`
--
ALTER TABLE `surat_aktifs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_aktifs_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `surat_kerjas`
--
ALTER TABLE `surat_kerjas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_kerjas_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `surat_tetap_promosis`
--
ALTER TABLE `surat_tetap_promosis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_tetap_promosis_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `surat_tugas`
--
ALTER TABLE `surat_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_tugas_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveys_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `telegram_users`
--
ALTER TABLE `telegram_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `telegram_users_telegram_chat_id_unique` (`telegram_chat_id`),
  ADD KEY `telegram_users_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usls`
--
ALTER TABLE `usls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usls_worker_id_foreign` (`worker_id`),
  ADD KEY `usls_rapel_usl_id_foreign` (`rapel_usl_id`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workers_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bpjs`
--
ALTER TABLE `bpjs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cuti_tahunans`
--
ALTER TABLE `cuti_tahunans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `etikets`
--
ALTER TABLE `etikets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formlains`
--
ALTER TABLE `formlains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `formtemplates`
--
ALTER TABLE `formtemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gajis`
--
ALTER TABLE `gajis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `minta_forms`
--
ALTER TABLE `minta_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `overtimes`
--
ALTER TABLE `overtimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rapel_usls`
--
ALTER TABLE `rapel_usls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suratlains`
--
ALTER TABLE `suratlains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `surat_aktifs`
--
ALTER TABLE `surat_aktifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `surat_kerjas`
--
ALTER TABLE `surat_kerjas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surat_tetap_promosis`
--
ALTER TABLE `surat_tetap_promosis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `surat_tugas`
--
ALTER TABLE `surat_tugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `telegram_users`
--
ALTER TABLE `telegram_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1089;

--
-- AUTO_INCREMENT for table `usls`
--
ALTER TABLE `usls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1078;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bpjs`
--
ALTER TABLE `bpjs`
  ADD CONSTRAINT `bpjs_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cuti_tahunans`
--
ALTER TABLE `cuti_tahunans`
  ADD CONSTRAINT `cuti_tahunans_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `etikets`
--
ALTER TABLE `etikets`
  ADD CONSTRAINT `etikets_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `formlains`
--
ALTER TABLE `formlains`
  ADD CONSTRAINT `formlains_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gajis`
--
ALTER TABLE `gajis`
  ADD CONSTRAINT `gajis_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `minta_forms`
--
ALTER TABLE `minta_forms`
  ADD CONSTRAINT `minta_forms_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD CONSTRAINT `overtimes_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rapel_usls`
--
ALTER TABLE `rapel_usls`
  ADD CONSTRAINT `rapel_usls_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suratlains`
--
ALTER TABLE `suratlains`
  ADD CONSTRAINT `suratlains_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surat_aktifs`
--
ALTER TABLE `surat_aktifs`
  ADD CONSTRAINT `surat_aktifs_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surat_kerjas`
--
ALTER TABLE `surat_kerjas`
  ADD CONSTRAINT `surat_kerjas_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surat_tetap_promosis`
--
ALTER TABLE `surat_tetap_promosis`
  ADD CONSTRAINT `surat_tetap_promosis_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surat_tugas`
--
ALTER TABLE `surat_tugas`
  ADD CONSTRAINT `surat_tugas_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surveys`
--
ALTER TABLE `surveys`
  ADD CONSTRAINT `surveys_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telegram_users`
--
ALTER TABLE `telegram_users`
  ADD CONSTRAINT `telegram_users_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `usls`
--
ALTER TABLE `usls`
  ADD CONSTRAINT `usls_rapel_usl_id_foreign` FOREIGN KEY (`rapel_usl_id`) REFERENCES `rapel_usls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usls_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `workers`
--
ALTER TABLE `workers`
  ADD CONSTRAINT `workers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
