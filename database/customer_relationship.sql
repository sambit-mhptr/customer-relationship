-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2019 at 03:50 AM
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
(1, 'Mr. Zakary Emmerich', 'johathan.boyle@example.org', '(819) 700-4130 x9185', 'Sequi accusamus est voluptatem tempore autem.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(2, 'Ms. Elyse Wiegand', 'fisher.daisha@example.net', '(689) 659-6270 x889', 'Dolor quaerat consequatur consequuntur inventore pariatur.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(3, 'Ms. Amie Pollich', 'aurelia.marvin@example.com', '1-874-239-0122 x12083', 'Sunt ullam aut et quia reiciendis quod quia.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(4, 'Ruby Nitzsche', 'anabel.bednar@example.com', '(332) 413-4292 x490', 'Non neque tenetur est quod.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(5, 'Shaniya Heathcote', 'nberge@example.net', '793.487.9687 x6253', 'Tempora iusto eius amet asperiores porro.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(6, 'Prof. Boris O\'Reilly', 'darrin.lakin@example.org', '778-324-1598 x70304', 'Recusandae nihil et qui sapiente deserunt iure et.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(7, 'Mckayla Heaney', 'daphnee.beatty@example.org', '358-279-9136 x627', 'Veniam aliquam eaque architecto laudantium debitis.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(8, 'Obie Buckridge', 'shuels@example.net', '(983) 943-3439 x28134', 'Ea recusandae exercitationem optio nobis.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(9, 'Ruthe Hudson', 'lsimonis@example.net', '556.415.3557 x3102', 'Odit ut sit eligendi.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(10, 'Verla Reinger', 'vivian48@example.net', '+1 (240) 938-1742', 'Est earum qui et velit tempore.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(12, 'Prof. Nolan Fritsch', 'jordane.koepp@example.net', '+1-905-991-2836', 'Culpa maxime cumque quo voluptas ea quis magni sit.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(13, 'Prof. Kelley Kautzer', 'ehudson@example.net', '(784) 242-8004 x878', 'Minima cum expedita exercitationem corrupti.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(14, 'Leif Thiel', 'dallas.price@example.net', '704-237-1145', 'Voluptatem consequatur qui pariatur reiciendis et nihil.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(15, 'Prof. Napoleon Ziemann Jr.', 'ruben01@example.net', '+1.261.368.2061', 'Itaque cumque id explicabo id debitis repudiandae reiciendis.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(16, 'Porter Koch', 'linnea99@example.org', '772.885.4265 x6899', 'Repudiandae explicabo porro placeat nesciunt.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(17, 'Ms. Drew Doyle', 'carlos.hamill@example.org', '(718) 773-5758 x96506', 'Corporis temporibus qui quam.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(18, 'Kitty Turner', 'jerde.bert@example.net', '793.469.6742 x220', 'Dolorum deleniti labore saepe deserunt qui architecto esse.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(19, 'Santos Stracke', 'demario.barton@example.com', '+1-383-454-1397', 'Aut sapiente dolores modi consequatur.', 0, '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(21, 'Miss Ena Keebler', 'kianna.dooley@example.org', '629.555.3191', 'Voluptatem voluptates et iusto deserunt.', 0, '2019-07-28 14:00:55', '2019-07-28 14:00:55'),
(22, 'Darby Schumm', 'ccollins@example.org', '378-546-4990 x5343', 'Tempore vero molestias ex pariatur aut ipsum fuga ut.', 0, '2019-07-28 14:00:55', '2019-07-28 14:00:55'),
(23, 'Maxine Rodriguez', 'ndoyle@example.com', '1-253-273-0355 x56776', 'Atque qui ut odio totam iusto.', 0, '2019-07-28 14:00:55', '2019-07-28 14:00:55'),
(24, 'Benjamin Kemmer', 'estel29@example.com', '(487) 685-3495', 'Molestias numquam enim et suscipit cum corporis.', 0, '2019-07-28 14:00:55', '2019-07-28 14:00:55'),
(25, 'Prof. Mae Cummings', 'ines40@example.net', '1-934-641-1553 x9366', 'Perspiciatis molestiae eum ea aliquam deserunt fugit ipsa.', 0, '2019-07-28 14:00:55', '2019-07-28 14:00:55'),
(26, 'Deondre O\'Conner PhD', 'eichmann.cordell@example.org', '(341) 803-6452 x5620', 'Quasi molestias ut quam similique.', 0, '2019-07-28 14:00:55', '2019-07-28 14:00:55'),
(27, 'Leatha Schumm', 'taya18@example.net', '1-297-266-7924', 'Repellat quidem pariatur repellat tenetur dolores recusandae culpa.', 0, '2019-07-28 14:00:55', '2019-07-28 14:00:55'),
(28, 'Einar Funk', 'feest.tierra@example.net', '(538) 938-6790 x932', 'Autem iusto natus cum.', 0, '2019-07-28 14:00:55', '2019-07-28 14:00:55'),
(29, 'Prof. Akeem Wiza', 'mclaughlin.precious@example.net', '(458) 730-1025', 'Aut dolorum quia voluptatem iusto aut.', 0, '2019-07-28 14:00:55', '2019-07-28 14:00:55'),
(30, 'Carroll Grady', 'hassan67@example.org', '+1 (503) 592-2109', 'Qui vel optio culpa deserunt.', 0, '2019-07-28 14:00:55', '2019-07-28 14:00:55'),
(31, 'Some', 'zzzzzz@s.c', '4344334433333', 'jjjjjjjjjjjjjjjjjjjjjjj', 1, '2019-07-28 19:13:16', '2019-07-28 19:13:16'),
(32, 'Some', 'zzzzzfffffz@s.c', '4344334433333', 'jjjjjjjjjjjjjjjjjjjjjjj', 0, '2019-07-28 19:15:04', '2019-07-28 19:15:04'),
(36, 'dsaaaa', 'jkbhjg@h.c', '543555555', 'zzzzzzzzzzzzz', 0, '2019-07-28 20:00:17', '2019-07-28 20:00:17'),
(37, 'gggggggggg', 'jkbggggggggggghjg@h.c', '543555555', 'zzzzzzzzzzzzz', 0, '2019-07-28 20:04:24', '2019-07-28 20:04:24'),
(38, 'kkkkkk', 'fffff@hhh.c', '44444444444444444', 'hhhhhhhhhhhhhhhhhhhh', 1, '2019-07-28 20:05:13', '2019-07-28 20:05:13'),
(39, 'zzzzzz', 'sssss@g.c', '444444444', 'fffffffffffff', 1, '2019-07-28 20:07:14', '2019-07-28 20:07:14'),
(40, 'ggggg', 'fdfdfs@h.m', '4444444444444', 'ffffffffffffff', 1, '2019-07-28 20:11:01', '2019-07-28 20:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `customer_user`
--

CREATE TABLE `customer_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `customer_user` (`id`, `customer_id`, `user_id`, `activity_type`, `description`, `reaction`, `created_at`, `updated_at`) VALUES
(29, 40, 2, NULL, NULL, NULL, '2019-07-28 20:11:01', '2019-07-28 20:11:01');

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
(1, 'Miss Candice Gottlieb', '1-979-535-0846', 'arnold.corwin@example.net', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2NZ8MdodJqdylpfPetEnDEYF6sjqJqPPHBiehCQvAayuoZQG0rpu2R0na1dD', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(2, 'Kailee Aufderhar', '(338) 490-8780 x2248', 'spencer.kristopher@example.org', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gnz12OnBNy', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(3, 'Liliana Rolfson', '470.802.3842', 'hadley.kessler@example.org', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Klq1YKx1c6', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(4, 'Prof. Colby Hagenes', '806.578.0132', 'kaela.roob@example.org', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mkMDwdqWEx', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(5, 'Leann Flatley', '1-218-758-7970 x8482', 'heidi15@example.org', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k4Q7bZdkZA', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(6, 'Miss Gladys Towne PhD', '+1 (301) 541-4470', 'daugherty.jaydon@example.com', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SPMK0ogZXH', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(7, 'Candace Schulist V', '837.865.7239 x35809', 'schroeder.mabelle@example.org', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y297jTFZBM', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(8, 'Mr. Kennith Larkin', '212.616.5610', 'tromp.nichole@example.org', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gPw8tvi2o6', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(9, 'Mrs. Wendy Wyman', '503-806-3052', 'rromaguera@example.org', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TE2ZVB2rsd', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(10, 'Judson Hayes', '427-404-2106 x8933', 'white.salvatore@example.com', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1UnOjRNdjr', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(11, 'Flavio Bins', '1-416-785-4267 x4773', 'eliane83@example.org', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gxzy96D9wU', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(12, 'Domenic Gorczany', '+14016992618', 'ohara.reilly@example.com', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bu23M0uM3U', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(13, 'Rachel Langworth', '1-734-524-8736 x17924', 'becker.claudia@example.net', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2SpNQgkizG', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(14, 'Fatima Bogisich', '1-363-853-0796 x1821', 'mathilde.torp@example.net', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bx7uUKbKuC', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(15, 'Prof. Anibal Jacobi III', '(638) 247-7078', 'rosendo.stroman@example.net', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M8C8LKNgxR', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(16, 'Karianne Dickinson', '524.564.1752 x2087', 'lessie65@example.org', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5E6ucXSGHS', '2019-07-28 14:00:53', '2019-07-28 14:00:53'),
(17, 'Hilbert Hermiston', '662.946.1777 x5156', 'virginia89@example.org', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xhGEARodte', '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(18, 'Omari Prohaska', '1-960-210-4095 x945', 'cferry@example.com', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yGgplB3RXU', '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(19, 'Emmalee Schmeler Jr.', '1-331-305-9765 x37903', 'joanie63@example.net', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6R1k9rnoB3', '2019-07-28 14:00:54', '2019-07-28 14:00:54'),
(20, 'Chanel Marvin', '(957) 690-6169', 'perry.powlowski@example.com', '2019-07-28 14:00:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dg2UhjwZuv', '2019-07-28 14:00:54', '2019-07-28 14:00:54');

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
-- Indexes for table `customer_user`
--
ALTER TABLE `customer_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_user_customer_id_foreign` (`customer_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `customer_user`
--
ALTER TABLE `customer_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_user`
--
ALTER TABLE `customer_user`
  ADD CONSTRAINT `customer_user_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
