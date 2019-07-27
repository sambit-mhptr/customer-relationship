-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 11:11 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer_relationship`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(7, 'cus', 'cu@g.c', '2323123131', 'xczxcxxxxxx', 1, '2019-07-27 15:33:40', '2019-07-27 15:33:40'),
(8, 'cus', 'cuz@g.c', '2323123131', 'xczxcxxxxxx', 0, '2019-07-27 15:36:50', '2019-07-27 15:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `customer_user`
--

CREATE TABLE `customer_user` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `activity_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reaction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_user`
--

INSERT INTO `customer_user` (`customer_id`, `user_id`, `activity_type`, `description`, `reaction`, `created_at`, `updated_at`) VALUES
(7, 1, 'mail', 'ccccccccccccccccc', NULL, '2019-07-27 15:33:40', '2019-07-27 15:33:40'),
(8, 1, 'mail', 'ccccccccccccccccc', NULL, '2019-07-27 15:36:50', '2019-07-27 15:36:50');

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
(3, '2019_07_27_151553_create_customers_table', 1),
(4, '2019_07_27_152444_customer_user', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ali Hettinger DDS', '(534) 236-9882 x0708', 'tierra.ferry@example.net', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Np35WwIbEClA2v8xizLwhna1IeA1MwVpuRxxDGwkConmA06zjWSeoZZeFJXh', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(2, 'Angie Morar', '228.855.9230 x087', 'enoch.sanford@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6D5YqbfxG3', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(3, 'Dr. Waylon Marks Sr.', '528-680-9496 x9006', 'heller.charity@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9F0F0xcVA3', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(4, 'Yoshiko Gislason', '+1 (463) 600-0786', 'cdaugherty@example.net', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A1OxzD3iUu', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(5, 'Prof. Stefanie Kozey', '+1 (617) 710-5455', 'eleazar42@example.net', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H4xys6vkOO', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(6, 'Zella Romaguera', '223-225-0404 x739', 'feest.theodore@example.org', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4Vwl6lgucN', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(7, 'Marquise Cole', '724.794.6576 x5585', 'qvonrueden@example.org', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LszzXlET5b', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(8, 'Icie Wolf', '925-426-5790 x991', 'uconn@example.net', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'anxfVG5wU5', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(9, 'Arely Trantow', '249-864-9704 x125', 'okon.keegan@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ubu4zx4Ez3', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(10, 'Romaine Stroman', '1-307-917-8951', 'runolfsson.jaren@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ayUWT6D7ES', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(11, 'Albin Hand', '763.267.5100', 'toy.alta@example.net', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5B75maULhD', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(12, 'Ethel Bins', '889-992-6007', 'frami.stefanie@example.org', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zJ1yWqUB4R', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(13, 'Levi Kub', '682-207-3272 x6288', 'klehner@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tfOO5xRbI7', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(14, 'Ray Pollich', '1-423-624-0400', 'omari.toy@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JbdS3mH9GV', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(15, 'Martina Hintz', '+17769182692', 'fgrant@example.net', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IVpRW5K4HC', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(16, 'Prof. Brody Bartell', '+1-740-505-8534', 'heber.jerde@example.org', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xyf37XTidP', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(17, 'Jazmin Hickle', '(249) 606-9716 x1627', 'manuel82@example.org', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qVAXQ1BPTt', '2019-07-27 15:30:11', '2019-07-27 15:30:11'),
(18, 'Mrs. Ila Cole Sr.', '295-498-9446 x9420', 'lysanne54@example.net', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z6u73t3jOW', '2019-07-27 15:30:12', '2019-07-27 15:30:12'),
(19, 'Connor Runolfsson', '538-966-8832 x4144', 'veum.luis@example.net', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '82Rr2oTzFo', '2019-07-27 15:30:12', '2019-07-27 15:30:12'),
(20, 'Lillie Deckow Sr.', '1-775-920-4048 x7667', 'mackenzie.ward@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '09xFRVT3ZY', '2019-07-27 15:30:12', '2019-07-27 15:30:12'),
(21, 'Sincere Willms V', '+1.787.513.7494', 'lew31@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yb0TSlyHTI', '2019-07-27 15:30:12', '2019-07-27 15:30:12'),
(22, 'Christelle Barrows', '1-498-237-1016', 'rubie98@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zMuMA8sYRC', '2019-07-27 15:30:12', '2019-07-27 15:30:12'),
(23, 'Zachariah Walker', '812.796.9879 x1188', 'damien.hoeger@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EmhXIK1OGM', '2019-07-27 15:30:12', '2019-07-27 15:30:12'),
(24, 'Mr. Dallas Johnston I', '(827) 257-9857 x559', 'adolphus59@example.org', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ffplQADTuW', '2019-07-27 15:30:12', '2019-07-27 15:30:12'),
(25, 'Alexander Pagac DDS', '(356) 988-9901 x9103', 'nferry@example.com', '2019-07-27 15:30:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rNl40BGacM', '2019-07-27 15:30:12', '2019-07-27 15:30:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
