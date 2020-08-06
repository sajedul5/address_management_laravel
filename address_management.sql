-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2020 at 11:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `address_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `created_at`, `updated_at`) VALUES
(4, 5, 'BARGUNA (বরগুনা)', '2020-05-06 06:14:40', '2020-05-06 07:01:33'),
(5, 5, 'BARISAL (বরিশাল)', '2020-05-06 06:20:26', '2020-05-06 06:20:26'),
(6, 5, 'BHOLA (ভোলা)', '2020-05-06 06:21:09', '2020-05-06 06:21:09'),
(7, 5, 'PATUAKHALI (পটুয়াখালি)', '2020-05-06 06:24:47', '2020-05-06 06:24:47'),
(8, 5, 'JHALOKATI (ঝালকাঠি)', '2020-05-06 06:25:41', '2020-05-06 06:25:41'),
(9, 5, 'PIROJPUR (পিরোজপুর)', '2020-05-06 06:28:46', '2020-05-06 06:28:46'),
(10, 6, 'BANDARBAN (বান্দরবান)', '2020-05-06 07:04:36', '2020-05-06 07:04:36'),
(11, 6, 'BRAHMANBARIA (ব্রাহ্মণবাড়িয়া)', '2020-05-06 07:05:09', '2020-05-06 07:05:09'),
(12, 6, 'CHANDPUR (চাঁদপুর)', '2020-05-06 07:05:59', '2020-05-06 07:05:59'),
(13, 6, 'CHITTAGONG (চট্টগ্রাম )', '2020-05-06 07:06:25', '2020-05-06 07:06:25'),
(14, 6, 'COMILLA (কুমিল্লা)', '2020-05-06 07:07:04', '2020-05-06 07:07:04'),
(15, 6, 'COX\'S BAZAR (কক্সবাজার)', '2020-05-06 07:07:38', '2020-05-06 07:07:38'),
(16, 6, 'FENI (ফেনী	)', '2020-05-06 07:08:29', '2020-05-06 07:08:29'),
(17, 6, 'KHAGRACHHARI (খাগড়াছড়ি)', '2020-05-06 07:08:55', '2020-05-06 07:08:55'),
(18, 6, 'LAKSHMIPUR (লক্ষ্মীপুর)', '2020-05-06 07:09:37', '2020-05-06 07:09:37'),
(19, 6, 'NOAKHALI (নোয়াখালি)', '2020-05-06 07:10:08', '2020-05-06 07:10:08'),
(20, 6, 'RANGAMATI (রাঙ্গামাটি)', '2020-05-06 07:10:58', '2020-05-06 07:10:58'),
(21, 7, 'DHAKA (ঢাকা )', '2020-05-06 10:13:28', '2020-05-06 10:13:28'),
(22, 7, 'FARIDPUR (ফরিদপুর)', '2020-05-06 10:14:43', '2020-05-06 10:14:43'),
(23, 7, 'GAZIPUR (গাজীপুর)', '2020-05-06 10:15:15', '2020-05-06 10:15:15'),
(24, 7, 'GOPALGANJ (গোপালগঞ্জ)', '2020-05-06 10:16:03', '2020-05-06 10:16:03'),
(26, 7, 'KISHOREGONJ (কিশোরগঞ্জ)', '2020-05-06 10:20:20', '2020-05-06 10:20:20'),
(27, 7, 'MADARIPUR (মাদারিপুর)', '2020-05-06 10:24:04', '2020-05-06 10:24:04'),
(28, 7, 'MANIKGANJ (মানিকগঞ্জ)', '2020-05-06 10:24:30', '2020-05-06 10:24:30'),
(29, 7, 'MUNSHIGANJ (মুন্সিগঞ্জ)', '2020-05-06 10:25:08', '2020-05-06 10:25:08'),
(30, 7, 'NARAYANGANJ (নারায়ণগঞ্জ)', '2020-05-06 10:25:51', '2020-05-06 10:25:51'),
(31, 7, 'NARSINGDI (নরসিংদি)', '2020-05-06 10:26:33', '2020-05-06 10:26:33'),
(32, 7, 'RAJBARI (রাজবাড়ি)', '2020-05-06 10:27:37', '2020-05-06 10:27:37'),
(33, 7, 'SHARIATPUR (শরিয়তপুর)', '2020-05-06 10:28:13', '2020-05-06 10:28:13'),
(34, 7, 'TANGAIL (টাঙ্গাইল)', '2020-05-06 10:28:59', '2020-05-06 10:28:59'),
(35, 9, 'JAMALPUR (জামালপুর)', '2020-05-06 10:30:40', '2020-05-06 10:30:40'),
(36, 9, 'NETRAKONA (নেত্রকোনা)', '2020-05-06 10:31:33', '2020-05-06 10:31:33'),
(37, 9, 'Mymensingh (ময়মনসিংহ )', '2020-05-06 10:31:50', '2020-05-06 10:31:50'),
(38, 9, 'SHERPUR (শেরপুর)', '2020-05-06 10:32:26', '2020-05-06 10:32:26'),
(39, 8, 'BAGERHAT (বাগেরহাট)', '2020-05-06 10:33:21', '2020-05-06 10:33:21'),
(40, 8, 'CHUADANGA (চুয়াডাঙ্গা)', '2020-05-06 10:33:52', '2020-05-06 10:33:52'),
(41, 8, 'JESSORE (যশোর)', '2020-05-06 10:34:18', '2020-05-06 10:34:18'),
(42, 8, 'JHENAIDAH (ঝিনাইদহ)', '2020-05-06 10:34:50', '2020-05-06 10:34:50'),
(43, 8, 'KHULNA (খুলনা )', '2020-05-06 10:35:08', '2020-05-06 10:35:08'),
(44, 8, 'KUSHTIA (কুষ্টিয়া)', '2020-05-06 10:35:40', '2020-05-06 10:35:40'),
(45, 8, 'MAGURA (মাগুরা)', '2020-05-06 10:36:09', '2020-05-06 10:36:09'),
(46, 8, 'MEHERPUR (মেহেরপুর)', '2020-05-06 10:36:42', '2020-05-06 10:36:42'),
(47, 8, 'NARAIL (নড়াইল)', '2020-05-06 10:37:20', '2020-05-06 10:37:20'),
(48, 8, 'SATKHIRA (সাতক্ষীরা)', '2020-05-06 10:37:59', '2020-05-06 10:37:59'),
(49, 10, 'BOGRA (বগুড়া)', '2020-05-06 10:58:27', '2020-05-06 10:58:27'),
(50, 10, 'JOYPURHAT (জয়পুরহাট)', '2020-05-06 10:58:54', '2020-05-06 10:58:54'),
(51, 10, 'NAOGAON (নওগাঁ)', '2020-05-06 10:59:25', '2020-05-06 10:59:25'),
(52, 10, 'NATORE (নাটোর)', '2020-05-06 10:59:50', '2020-05-06 10:59:50'),
(53, 10, 'CHAPAI NABABGANJ (চাঁপাইনবাবগঞ্জ)', '2020-05-06 11:00:18', '2020-05-06 11:00:18'),
(54, 10, 'PABNA (পাবনা)', '2020-05-06 11:09:14', '2020-05-06 11:09:14'),
(55, 10, 'RAJSHAHI (রাজশাহী )', '2020-05-06 11:09:40', '2020-05-06 11:09:40'),
(56, 10, 'SIRAJGANJ (সিরাজগঞ্জ)', '2020-05-06 11:10:12', '2020-05-06 11:10:12'),
(57, 12, 'DINAJPUR (দিনাজপুর)', '2020-05-06 11:11:09', '2020-05-06 11:11:09'),
(58, 12, 'GAIBANDHA (গাইবান্ধা)', '2020-05-06 11:11:32', '2020-05-06 11:11:32'),
(59, 12, 'KURIGRAM (কুড়িগ্রাম)', '2020-05-06 11:11:55', '2020-05-06 11:11:55'),
(60, 12, 'LALMONIRHAT (লালমনিরহাট)', '2020-05-06 11:12:35', '2020-05-06 11:12:35'),
(61, 12, 'PANCHAGARH (পঞ্চগড়)', '2020-05-06 11:17:30', '2020-05-06 11:17:30'),
(62, 12, 'NILPHAMARI (নীলফামারি)', '2020-05-06 11:17:55', '2020-05-06 11:17:55'),
(63, 12, 'RANGPUR (রংপুর )', '2020-05-06 11:18:20', '2020-05-06 11:18:20'),
(64, 12, 'THAKURGAON (ঠাকুরগাঁও)', '2020-05-06 11:18:51', '2020-05-06 11:18:51'),
(65, 15, 'HABIGANJ (হবিগঞ্জ)', '2020-05-06 11:19:59', '2020-05-06 11:19:59'),
(66, 15, 'MAULVIBAZAR (মৌলভীবাজার)', '2020-05-06 11:20:33', '2020-05-06 11:20:33'),
(67, 15, 'SUNAMGANJ (সুনামগঞ্জ)', '2020-05-06 11:20:56', '2020-05-06 11:20:56'),
(68, 15, 'SYLHET (সিলেট )', '2020-05-06 11:21:18', '2020-05-06 11:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'BARISAL (বরিশাল )', '2020-05-06 03:57:49', '2020-05-06 07:01:01'),
(6, 'CHITTAGONG (চট্টগ্রাম )', '2020-05-06 03:58:09', '2020-05-06 07:02:18'),
(7, 'DHAKA (ঢাকা )', '2020-05-06 03:58:32', '2020-05-06 07:12:00'),
(8, 'KHULNA (খুলনা )', '2020-05-06 03:59:13', '2020-05-06 10:29:37'),
(9, 'MYMENSINGH (ময়মনসিংহ )', '2020-05-06 03:59:35', '2020-05-06 10:30:09'),
(10, 'RAJSHAHI (রাজশাহী )', '2020-05-06 03:59:58', '2020-05-06 10:49:40'),
(12, 'RANGPUR (রংপুর )', '2020-05-06 04:00:41', '2020-05-06 11:10:31'),
(15, 'SYLHET (সিলেট )', '2020-05-06 11:19:15', '2020-05-06 11:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_03_105628_create_logos_table', 2),
(5, '2020_05_04_065213_create_sliders_table', 3),
(6, '2020_05_04_091820_create_breakfasts_table', 4),
(7, '2020_05_04_095312_create_meals_table', 5),
(8, '2020_05_04_101357_create_snacks_table', 6),
(9, '2020_05_04_102901_create_desserts_table', 7),
(10, '2020_05_04_104756_create_drinks_table', 8),
(11, '2020_05_04_153221_create_restaurants_table', 9),
(12, '2020_05_04_153454_create_foods_table', 9),
(13, '2020_05_04_170445_create_blogs_table', 10),
(14, '2020_05_05_044055_create_abouts_table', 11),
(15, '2020_05_05_050612_create_contacts_table', 12),
(16, '2020_05_05_170634_create_messages_table', 13),
(17, '2020_05_06_091043_create_divisions_table', 14),
(18, '2020_05_06_111204_create_districts_table', 15),
(19, '2020_05_07_080019_create_upazillas_table', 16),
(20, '2020_05_08_012051_create_unions_table', 17),
(21, '2020_05_08_054806_create_wards_table', 18),
(22, '2020_05_08_083744_create_villages_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unions`
--

CREATE TABLE `unions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `upazilla_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unions`
--

INSERT INTO `unions` (`id`, `division_id`, `district_id`, `upazilla_id`, `name`, `created_at`, `updated_at`) VALUES
(5, 7, 34, 155, 'TANGAIL PUROSHOVA', '2020-05-07 23:40:32', '2020-05-07 23:40:32'),
(6, 7, 34, 155, 'MOGRA', '2020-05-07 23:41:05', '2020-05-07 23:41:05'),
(7, 7, 34, 155, 'Bagil', '2020-05-08 03:26:30', '2020-05-08 03:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `upazillas`
--

CREATE TABLE `upazillas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazillas`
--

INSERT INTO `upazillas` (`id`, `division_id`, `district_id`, `name`, `created_at`, `updated_at`) VALUES
(4, 5, 4, 'AMTALI', '2020-05-07 07:26:27', '2020-05-07 07:26:27'),
(5, 5, 4, 'BAMNA', '2020-05-07 07:27:31', '2020-05-07 07:27:31'),
(6, 5, 4, 'BARGUNA SADAR', '2020-05-07 07:28:01', '2020-05-07 07:28:01'),
(7, 5, 4, 'BETAGI', '2020-05-07 07:28:29', '2020-05-07 07:28:29'),
(8, 5, 4, 'PATHARGHATA', '2020-05-07 07:31:00', '2020-05-07 07:31:00'),
(9, 5, 4, 'TALTALI', '2020-05-07 07:31:27', '2020-05-07 07:31:27'),
(10, 5, 5, 'AGAILJHARA', '2020-05-07 07:32:14', '2020-05-07 07:32:14'),
(11, 5, 5, 'BABUGANJ', '2020-05-07 07:34:17', '2020-05-07 07:34:17'),
(12, 5, 5, 'BAKERGANJ', '2020-05-07 07:36:01', '2020-05-07 07:36:01'),
(13, 5, 5, 'BANARI PARA', '2020-05-07 07:36:50', '2020-05-07 07:36:50'),
(14, 5, 5, 'GAURNADI', '2020-05-07 07:39:53', '2020-05-07 07:39:53'),
(15, 5, 5, 'HIZLA', '2020-05-07 07:40:35', '2020-05-07 07:40:35'),
(16, 5, 5, 'BARISAL SADAR', '2020-05-07 07:41:05', '2020-05-07 07:41:05'),
(17, 5, 5, 'MHENDIGANJ', '2020-05-07 07:41:40', '2020-05-07 07:41:40'),
(18, 5, 5, 'MULADI', '2020-05-07 07:42:16', '2020-05-07 07:42:16'),
(19, 5, 5, 'WAZIRPUR', '2020-05-07 07:42:35', '2020-05-07 07:42:35'),
(20, 5, 6, 'BHOLA SADAR', '2020-05-07 07:43:23', '2020-05-07 07:43:23'),
(21, 5, 6, 'BURHANUDDIN', '2020-05-07 07:43:42', '2020-05-07 07:43:42'),
(22, 5, 6, 'CHAR FASSON', '2020-05-07 07:44:13', '2020-05-07 07:44:13'),
(23, 5, 6, 'DAULAT KHAN', '2020-05-07 07:44:32', '2020-05-07 07:44:32'),
(24, 5, 6, 'LALMOHAN', '2020-05-07 07:44:55', '2020-05-07 07:44:55'),
(25, 5, 6, 'MANPURA', '2020-05-07 07:45:17', '2020-05-07 07:45:17'),
(26, 5, 6, 'TAZUMUDDIN', '2020-05-07 07:45:38', '2020-05-07 07:45:38'),
(27, 5, 8, 'JHALOKATI SADAR', '2020-05-07 07:46:36', '2020-05-07 07:46:36'),
(28, 5, 8, 'KANTHALIA', '2020-05-07 07:46:57', '2020-05-07 07:46:57'),
(29, 5, 8, 'NALCHITY', '2020-05-07 07:47:17', '2020-05-07 07:47:17'),
(30, 5, 8, 'RAJAPUR', '2020-05-07 07:47:35', '2020-05-07 07:47:35'),
(31, 5, 7, 'BAUPHAL', '2020-05-07 07:48:43', '2020-05-07 07:48:43'),
(32, 5, 7, 'DASHMINA', '2020-05-07 07:49:04', '2020-05-07 07:49:04'),
(33, 5, 7, 'DUMKI', '2020-05-07 07:49:29', '2020-05-07 07:49:29'),
(34, 5, 7, 'GALACHIPA', '2020-05-07 07:49:47', '2020-05-07 07:49:47'),
(35, 5, 7, 'KALAPARA', '2020-05-07 07:50:09', '2020-05-07 07:50:09'),
(36, 5, 7, 'MIRZAGANJ', '2020-05-07 07:50:26', '2020-05-07 07:50:26'),
(37, 5, 7, 'PATUAKHALI SADAR', '2020-05-07 07:50:56', '2020-05-07 07:50:56'),
(38, 5, 7, 'RANGABALI', '2020-05-07 07:51:14', '2020-05-07 07:51:14'),
(39, 5, 9, 'BHANDARIA', '2020-05-07 07:51:43', '2020-05-07 07:51:43'),
(40, 5, 9, 'KAWKHALI', '2020-05-07 07:52:00', '2020-05-07 07:52:00'),
(41, 5, 9, 'MATHBARIA', '2020-05-07 07:52:16', '2020-05-07 07:52:16'),
(42, 5, 9, 'NAZIRPUR', '2020-05-07 07:52:37', '2020-05-07 07:52:37'),
(43, 5, 9, 'PIROJPUR SADAR', '2020-05-07 07:53:00', '2020-05-07 07:53:00'),
(44, 5, 9, 'NESARABAD', '2020-05-07 07:53:18', '2020-05-07 07:53:18'),
(45, 5, 9, 'ZIANAGAR', '2020-05-07 07:53:37', '2020-05-07 07:53:37'),
(46, 6, 10, 'ALIKADAM', '2020-05-07 08:12:03', '2020-05-07 08:12:03'),
(47, 6, 10, 'BANDARBAN SADAR', '2020-05-07 08:12:22', '2020-05-07 08:12:22'),
(48, 6, 10, 'LAMA', '2020-05-07 08:12:41', '2020-05-07 08:12:41'),
(49, 6, 10, 'NAIKHONGCHHARI', '2020-05-07 08:13:21', '2020-05-07 08:13:21'),
(50, 6, 10, 'ROWANGCHHARI', '2020-05-07 08:14:20', '2020-05-07 08:14:20'),
(51, 6, 10, 'RUMA', '2020-05-07 08:14:40', '2020-05-07 08:14:40'),
(52, 6, 10, 'THANCHI', '2020-05-07 08:14:57', '2020-05-07 08:14:57'),
(53, 6, 11, 'AKHAURA', '2020-05-07 08:15:27', '2020-05-07 08:15:27'),
(54, 6, 10, 'BANCHHARAMPUR', '2020-05-07 08:15:50', '2020-05-07 08:15:50'),
(55, 6, 11, 'BIJOYNAGAR', '2020-05-07 08:18:01', '2020-05-07 08:18:01'),
(56, 6, 11, 'BRAHMANBARIA SADAR', '2020-05-07 08:21:58', '2020-05-07 08:21:58'),
(57, 6, 11, 'ASHUGANJ', '2020-05-07 08:22:25', '2020-05-07 08:22:25'),
(58, 6, 11, 'KASBA', '2020-05-07 08:22:45', '2020-05-07 08:22:45'),
(59, 6, 11, 'NABINAGAR', '2020-05-07 08:23:01', '2020-05-07 08:23:01'),
(60, 6, 11, 'NASIRNAGAR', '2020-05-07 08:23:18', '2020-05-07 08:23:18'),
(61, 6, 11, 'SARAIL', '2020-05-07 08:23:40', '2020-05-07 08:23:40'),
(62, 6, 12, 'CHANDPUR SADAR', '2020-05-07 08:24:05', '2020-05-07 08:24:05'),
(63, 6, 12, 'FARIDGANJ', '2020-05-07 08:24:23', '2020-05-07 08:24:23'),
(64, 6, 12, 'HAIM CHAR', '2020-05-07 08:24:55', '2020-05-07 08:24:55'),
(65, 6, 12, 'HAJIGANJ', '2020-05-07 08:25:17', '2020-05-07 08:25:17'),
(66, 6, 12, 'KACHUA', '2020-05-07 08:25:37', '2020-05-07 08:25:37'),
(67, 6, 12, 'MATLAB DAKSHIN', '2020-05-07 08:25:57', '2020-05-07 08:25:57'),
(68, 6, 12, 'MATLAB UTTAR', '2020-05-07 08:26:16', '2020-05-07 08:26:16'),
(69, 6, 12, 'SHAHRASTI', '2020-05-07 08:26:38', '2020-05-07 08:26:38'),
(70, 6, 13, 'ANOWARA', '2020-05-07 08:26:57', '2020-05-07 08:27:33'),
(71, 6, 13, 'BAYEJID BOSTAMI', '2020-05-07 08:27:15', '2020-05-07 08:27:15'),
(72, 6, 13, 'BANSHKHALI', '2020-05-07 08:27:58', '2020-05-07 08:27:58'),
(73, 6, 13, 'BAKALIA', '2020-05-07 08:28:17', '2020-05-07 08:28:17'),
(74, 6, 13, 'BOALKHALI', '2020-05-07 08:28:41', '2020-05-07 08:28:41'),
(75, 6, 13, 'CHANDANAISH', '2020-05-07 08:29:08', '2020-05-07 08:29:08'),
(76, 6, 13, 'CHANDGAON', '2020-05-07 08:29:29', '2020-05-07 08:29:29'),
(77, 6, 13, 'CHITTAGONG PORT', '2020-05-07 08:29:53', '2020-05-07 08:29:53'),
(78, 6, 13, 'DOUBLE MOORING', '2020-05-07 08:30:27', '2020-05-07 08:30:27'),
(79, 6, 13, 'FATIKCHHARI', '2020-05-07 08:30:45', '2020-05-07 08:30:45'),
(80, 6, 13, 'HALISHAHAR', '2020-05-07 08:31:01', '2020-05-07 08:31:01'),
(81, 6, 13, 'HATHAZARI', '2020-05-07 08:31:16', '2020-05-07 08:31:16'),
(82, 6, 13, 'KOTWALI', '2020-05-07 08:31:33', '2020-05-07 08:31:33'),
(83, 6, 13, 'KHULSHI', '2020-05-07 08:31:51', '2020-05-07 08:31:51'),
(84, 6, 13, 'LOHAGARA', '2020-05-07 08:32:06', '2020-05-07 08:32:06'),
(85, 6, 13, 'MIRSHARAI', '2020-05-07 08:32:23', '2020-05-07 08:32:23'),
(86, 6, 13, 'PAHARTALI', '2020-05-07 08:32:38', '2020-05-07 08:32:38'),
(87, 6, 13, 'PANCHLAISH', '2020-05-07 08:32:53', '2020-05-07 08:32:53'),
(88, 6, 13, 'PATIYA', '2020-05-07 08:33:09', '2020-05-07 08:33:09'),
(89, 6, 13, 'PATENGA', '2020-05-07 08:33:26', '2020-05-07 08:33:26'),
(90, 6, 13, 'RANGUNIA', '2020-05-07 08:33:41', '2020-05-07 08:33:41'),
(91, 6, 13, 'RAOZAN', '2020-05-07 08:33:59', '2020-05-07 08:33:59'),
(92, 6, 13, 'SANDWIP', '2020-05-07 08:34:41', '2020-05-07 08:34:41'),
(93, 6, 13, 'SATKANIA', '2020-05-07 08:35:00', '2020-05-07 08:35:00'),
(94, 6, 13, 'SITAKUNDA', '2020-05-07 08:35:33', '2020-05-07 08:35:33'),
(95, 6, 14, 'BARURA', '2020-05-07 08:40:27', '2020-05-07 08:40:27'),
(96, 6, 14, 'BRAHMAN PARA', '2020-05-07 08:40:52', '2020-05-07 08:40:52'),
(97, 6, 14, 'BURICHANG', '2020-05-07 08:41:11', '2020-05-07 08:41:11'),
(98, 6, 14, 'CHANDINA', '2020-05-07 08:41:32', '2020-05-07 08:41:32'),
(99, 6, 14, 'CHAUDDAGRAM', '2020-05-07 08:41:49', '2020-05-07 08:41:49'),
(100, 6, 14, 'COMILLA SADAR DAKSHIN', '2020-05-07 08:42:19', '2020-05-07 08:42:19'),
(101, 6, 14, 'DAUDKANDI', '2020-05-07 08:42:46', '2020-05-07 08:42:46'),
(102, 6, 14, 'DEBIDWAR', '2020-05-07 08:43:04', '2020-05-07 08:43:04'),
(103, 6, 14, 'HOMNA', '2020-05-07 08:43:30', '2020-05-07 08:43:30'),
(104, 6, 14, 'COMILLA ADARSHA SADAR', '2020-05-07 08:44:03', '2020-05-07 08:44:03'),
(105, 6, 14, 'LAKSAM', '2020-05-07 08:44:19', '2020-05-07 08:44:19'),
(106, 6, 14, 'MANOHARGANJ', '2020-05-07 08:44:36', '2020-05-07 08:44:36'),
(107, 6, 14, 'MEGHNA', '2020-05-07 08:45:00', '2020-05-07 08:45:00'),
(108, 6, 14, 'MURADNAGAR', '2020-05-07 08:45:26', '2020-05-07 08:45:26'),
(109, 6, 14, 'NANGALKOT', '2020-05-07 08:45:45', '2020-05-07 08:45:45'),
(110, 6, 14, 'TITAS', '2020-05-07 08:46:03', '2020-05-07 08:46:03'),
(111, 6, 15, 'CHAKARIA', '2020-05-07 08:47:01', '2020-05-07 08:47:01'),
(112, 6, 15, 'COX\'S BAZAR SADAR', '2020-05-07 08:47:22', '2020-05-07 08:47:22'),
(113, 6, 15, 'KUTUBDIA', '2020-05-07 08:47:43', '2020-05-07 08:47:43'),
(114, 6, 15, 'MAHESHKHALI', '2020-05-07 08:48:02', '2020-05-07 08:48:02'),
(115, 6, 15, 'PEKUA', '2020-05-07 08:48:19', '2020-05-07 08:48:19'),
(116, 6, 15, 'RAMU', '2020-05-07 08:49:06', '2020-05-07 08:49:06'),
(117, 6, 15, 'TEKNAF', '2020-05-07 08:49:29', '2020-05-07 08:49:29'),
(118, 6, 13, 'UKHIA', '2020-05-07 08:49:45', '2020-05-07 08:49:45'),
(119, 6, 16, 'CHHAGALNAIYA', '2020-05-07 08:50:16', '2020-05-07 08:50:16'),
(120, 6, 16, 'DAGANBHUIYAN', '2020-05-07 08:50:31', '2020-05-07 08:50:31'),
(121, 6, 16, 'FENI SADAR', '2020-05-07 08:50:53', '2020-05-07 08:50:53'),
(122, 6, 16, 'FULGAZI', '2020-05-07 08:51:09', '2020-05-07 08:51:09'),
(123, 6, 16, 'PARSHURAM', '2020-05-07 08:51:29', '2020-05-07 08:51:29'),
(124, 6, 16, 'SONAGAZI', '2020-05-07 08:51:46', '2020-05-07 08:51:46'),
(125, 6, 17, 'DIGHINALA', '2020-05-07 08:52:19', '2020-05-07 08:52:19'),
(126, 6, 17, 'KHAGRACHHARI SADAR', '2020-05-07 08:52:37', '2020-05-07 08:52:37'),
(127, 6, 17, 'LAKSHMICHHARI', '2020-05-07 08:53:04', '2020-05-07 08:53:04'),
(128, 6, 17, 'MAHALCHHARI', '2020-05-07 08:53:34', '2020-05-07 08:53:34'),
(129, 6, 17, 'MANIKCHHARI', '2020-05-07 08:53:53', '2020-05-07 08:53:53'),
(130, 6, 17, 'MATIRANGA', '2020-05-07 08:54:10', '2020-05-07 08:54:10'),
(131, 6, 17, 'PANCHHARI', '2020-05-07 08:54:30', '2020-05-07 08:54:30'),
(132, 6, 17, 'RAMGARH', '2020-05-07 08:54:47', '2020-05-07 08:54:47'),
(133, 6, 18, 'KAMALNAGAR', '2020-05-07 08:55:08', '2020-05-07 08:55:08'),
(134, 6, 18, 'LAKSHMIPUR SADAR', '2020-05-07 08:55:31', '2020-05-07 08:55:31'),
(135, 6, 18, 'ROYPUR', '2020-05-07 08:56:34', '2020-05-07 08:56:34'),
(136, 6, 18, 'RAMGANJ', '2020-05-07 08:56:53', '2020-05-07 08:56:53'),
(137, 6, 18, 'RAMGATI', '2020-05-07 08:57:09', '2020-05-07 08:57:09'),
(138, 6, 19, 'BEGUMGANJ', '2020-05-07 08:57:26', '2020-05-07 08:57:26'),
(139, 6, 19, 'CHATKHIL', '2020-05-07 08:57:42', '2020-05-07 08:57:42'),
(140, 6, 19, 'COMPANIGANJ', '2020-05-07 08:57:59', '2020-05-07 08:57:59'),
(141, 6, 19, 'KABIRHAT', '2020-05-07 08:58:59', '2020-05-07 08:58:59'),
(142, 6, 19, 'SENBAGH', '2020-05-07 08:59:41', '2020-05-07 08:59:41'),
(143, 6, 19, 'SONAIMURI', '2020-05-07 08:59:59', '2020-05-07 08:59:59'),
(144, 6, 19, 'SUBARNACHAR', '2020-05-07 09:00:18', '2020-05-07 09:00:18'),
(145, 6, 19, 'NOAKHALI SADAR', '2020-05-07 09:00:47', '2020-05-07 09:00:47'),
(146, 6, 20, 'BAGHAICHHARI', '2020-05-07 09:03:44', '2020-05-07 09:03:44'),
(147, 6, 20, 'BARKAL', '2020-05-07 09:04:05', '2020-05-07 09:04:05'),
(148, 6, 20, 'BELAI CHHARI', '2020-05-07 09:04:40', '2020-05-07 09:05:14'),
(149, 6, 20, 'KAPTAI', '2020-05-07 09:05:03', '2020-05-07 09:05:03'),
(150, 6, 20, 'JURAI CHHARI', '2020-05-07 09:05:42', '2020-05-07 09:05:42'),
(151, 6, 20, 'LANGADU', '2020-05-07 09:06:05', '2020-05-07 09:06:05'),
(152, 6, 20, 'NANIARCHAR', '2020-05-07 09:06:23', '2020-05-07 09:06:23'),
(153, 6, 20, 'RAJASTHALI', '2020-05-07 09:06:41', '2020-05-07 09:06:41'),
(154, 6, 20, 'RANGAMATI', '2020-05-07 09:07:03', '2020-05-07 09:07:03'),
(155, 7, 34, 'TANGAIL SADAR', '2020-05-07 23:39:44', '2020-05-07 23:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `gender`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', NULL, '$2y$10$GPzpF3.ApR/0pvRLZEcYJOeMaQGNULR7BvNpp9dYQHHlo9TZSYPRG', '01517167619', 'Male', '202005061618si.jpg', 1, NULL, '2020-04-19 09:42:54', '2020-05-06 10:18:07'),
(7, 'User', 'Shakil Ahamed', 'shakil@gmail.com', NULL, '$2y$10$0qS.b//gPKib5NBy4XyDs.lP.Br7Qc1OW8bhD.542gOcNg.2BC1le', NULL, NULL, NULL, 1, NULL, '2020-04-20 19:56:15', '2020-04-23 03:06:25'),
(11, 'Admin', 'Shakil', 'test@gmail.com', NULL, '$2y$10$ByMK3iKnygFg8V9vuKVrF.Vcyc..A6teDTNSaSkSBnF/3T4DyLoPe', NULL, NULL, NULL, 1, NULL, '2020-05-06 10:18:51', '2020-05-06 10:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `upazilla_id` int(11) NOT NULL,
  `union_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `division_id`, `district_id`, `upazilla_id`, `union_id`, `ward_id`, `name`, `created_at`, `updated_at`) VALUES
(2, 7, 34, 155, 5, 1, 'Dewla', '2020-05-08 03:16:34', '2020-05-08 03:16:34'),
(3, 7, 34, 155, 5, 2, 'Boilla', '2020-05-08 03:17:01', '2020-05-08 03:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `upazilla_id` int(11) NOT NULL,
  `union_id` int(11) NOT NULL,
  `ward_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `division_id`, `district_id`, `upazilla_id`, `union_id`, `ward_no`, `created_at`, `updated_at`) VALUES
(1, 7, 34, 155, 5, 1, '2020-05-08 00:21:36', '2020-05-08 00:27:32'),
(2, 7, 34, 155, 5, 2, '2020-05-08 00:21:58', '2020-05-08 00:21:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_name_unique` (`name`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `divisions_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `unions`
--
ALTER TABLE `unions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unions_name_unique` (`name`);

--
-- Indexes for table `upazillas`
--
ALTER TABLE `upazillas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upazillas_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wards_ward_no_unique` (`ward_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `unions`
--
ALTER TABLE `unions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `upazillas`
--
ALTER TABLE `upazillas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `villages`
--
ALTER TABLE `villages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
