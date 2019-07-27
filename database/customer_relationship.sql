-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 07:25 PM
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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'new customer', 'cust@g.com', '4354475786', 'vvhjjjbnmbb', 0, '2019-07-27 16:33:59', NULL),
(2, 'custmz', 'cst@g.com', '34658798', 'dfhjgkjhkvc', 1, '2019-07-27 16:34:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_user`
--

CREATE TABLE `customer_user` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `activity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_user`
--

INSERT INTO `customer_user` (`customer_id`, `user_id`, `activity_type`, `description`, `reaction`, `created_at`, `updated_at`) VALUES
(1, 1, 'email', 'welcome', '', '2019-07-27 17:03:56', NULL),
(1, 2, 'mob', 'welc', '', '2019-07-27 16:40:45', NULL);

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
(1, 'Mr. Tad Kerluke Sr.', '+1 (708) 810-1664', 'ohara.isaias@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JZ97stLuJMxfvL4q4zfKZPNOrfX5w1fPtVpcSWk8uxcLiIKP9lEwkRZxvqsM', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(2, 'Demetrius Rau II', '895-660-9490 x37656', 'terry.marc@example.org', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dfqHOIA2Ga', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(3, 'Randi Koepp PhD', '562-206-0750 x8220', 'dewitt40@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OvLChjjw4O', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(4, 'Zachariah Roberts III', '+1-719-321-7680', 'neoma73@example.org', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nlm5jL7se2', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(5, 'Gerardo Jenkins', '274-904-5889 x4270', 'conor.nolan@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pjt1qwEZMv', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(6, 'Baby Wintheiser IV', '897.580.1882', 'estel40@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7dBE2Px14x', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(7, 'Carol Greenholt', '(709) 407-4750', 'lesly64@example.org', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NZ8kOpBVYo', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(8, 'Brendan Kuhic', '702.494.9039', 'keven.zboncak@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kPPGR3jMhY', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(9, 'Prof. Gavin Boehm', '576-765-0959', 'pbayer@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nrcJgdTxkK', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(10, 'Mr. Jaleel Schamberger MD', '+1-787-697-0414', 'lowe.rosie@example.org', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7hKRatUsVW', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(11, 'Tremaine Glover', '227.836.9362', 'strosin.murl@example.org', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b35dYhUpux', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(12, 'Cole Pouros', '+1 (856) 799-4993', 'qwalker@example.org', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'en5qV7StB0', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(13, 'Marilyne Hermann', '448-761-3254 x2457', 'robert91@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1rS9Geimam', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(14, 'Prof. Glen Gaylord', '319.756.7995 x16161', 'wswaniawski@example.org', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CmTjeVD0Z8', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(15, 'Miss Jazmin Rippin', '(338) 450-3901 x33459', 'madisen39@example.net', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yJjL22jd53', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(16, 'Alfred Rolfson V', '861.452.5500', 'wunsch.mazie@example.org', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '87kwFqpJnw', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(17, 'Mrs. Patsy Medhurst', '767-728-0584 x0350', 'rmcclure@example.net', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wqNg9zpxwM', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(18, 'Lenny Carter', '676-457-0171 x76049', 'bart65@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X2L7h8tVp1', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(19, 'Marilie Wilkinson', '1-263-941-6500 x0881', 'ullrich.tyrell@example.org', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'INrOalo2QI', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(20, 'Dr. Erik Runolfsdottir Jr.', '1-697-420-5723 x078', 'wisoky.tyrique@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Uxh5I54YQn', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(21, 'Rubye Walker', '851-404-0394 x6730', 'lpurdy@example.net', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8Duhfl9HMf', '2019-07-27 10:34:44', '2019-07-27 10:34:44'),
(22, 'Prof. Nelda Walker PhD', '(470) 627-6626', 'schultz.tessie@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tyE6oM8QvP', '2019-07-27 10:34:45', '2019-07-27 10:34:45'),
(23, 'Lilliana Skiles', '+1 (552) 721-1304', 'barrows.dangelo@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UCRjITUN2s', '2019-07-27 10:34:45', '2019-07-27 10:34:45'),
(24, 'Ryley Boehm', '+1-203-915-2465', 'rdach@example.net', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HTzshFAFGB', '2019-07-27 10:34:45', '2019-07-27 10:34:45'),
(25, 'Abigayle Ullrich V', '(494) 526-8683 x1800', 'isai.schamberger@example.com', '2019-07-27 10:34:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SePLytfgzc', '2019-07-27 10:34:45', '2019-07-27 10:34:45');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
