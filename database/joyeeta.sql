-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2021 at 06:04 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joyeeta`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Salman GP', '01746182842', 'Dhaka', '2021-01-06 05:37:08', '2021-01-06 05:37:09'),
(2, 'Salman RObi', '01834106010', 'Germany', '2021-01-06 05:37:10', '2021-01-06 05:37:10'),
(3, 'Hu Gilbert', '0987654323456', 'Autem nisi ex dolor', '2021-01-06 00:26:47', '2021-01-06 00:26:47'),
(4, 'Madison Weaver', '0987677777', 'Ea dolore quo animi', '2021-01-06 00:28:19', '2021-01-06 00:28:19'),
(5, 'Peter Harris', '098765432345678', 'Velit reprehenderit', '2021-01-06 00:32:05', '2021-01-06 00:32:05'),
(6, 'Tana Holt', '1234567890', 'Consectetur quae qu', '2021-01-06 00:34:46', '2021-01-06 00:34:46'),
(7, 'Pascale Workman', '123456789878', 'Dolor consequatur e', '2021-01-06 00:36:32', '2021-01-06 00:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `disbursements`
--

CREATE TABLE `disbursements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commission_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_disbursement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `net_payable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disbursements`
--

INSERT INTO `disbursements` (`id`, `commission_amount`, `store_id`, `is_disbursement`, `payment_amount`, `payment_detail`, `net_payable`, `discount`, `created_at`, `updated_at`) VALUES
(1, '66', '1', '1', '12', '2222', '223', '68', '2021-01-06 03:25:20', '2021-01-06 03:25:20'),
(2, '43', '2', '2', '43', '434', '22333', '32', '2021-01-06 03:25:48', '2021-01-06 03:25:48');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_admin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `slug`, `contact_person`, `contact_number`, `address`, `location_admin_id`, `operator_id`, `created_at`, `updated_at`) VALUES
(1, 'Stella Humphrey', 'Et molestias sint ad', 'Dicta soluta aut acc', '103', 'Sed non enim tenetur', '1', '1', '2021-01-05 22:46:54', '2021-01-05 22:46:54'),
(2, 'Evangeline Mccullough', 'Id nulla ut volupta', 'Repudiandae earum ar', '17', 'Voluptatibus totam a', '5', '4', '2021-01-05 23:09:40', '2021-01-05 23:09:40');

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
(12, '2020_12_30_040728_create_stores_table', 2),
(13, '2020_12_30_040853_create_transactions_table', 2),
(14, '2020_12_30_040923_create_disbursements_table', 2),
(15, '2020_12_30_040959_create_settings_table', 3),
(17, '2021_01_03_080133_create_locations_table', 3),
(18, '2021_01_06_035756_create_customer_table', 3);

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
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_mfs_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `number`, `contact_name`, `contact_number`, `payment_method`, `bank_mfs_name`, `account_number`, `payment_details`, `created_at`, `updated_at`) VALUES
(1, 'Adil Store', '407', 'Elaine Key', '699', '1', 'Xavier Murray', 'Lawrence Robles', 'Voluptatem repudian', '2021-01-05 23:32:59', '2021-01-05 23:32:59'),
(2, 'Tom Mart', '551', 'Price Burns', '43', '1', 'Philip Arnold', 'Cara Garner', 'Voluptas veniam omn', '2021-01-06 03:01:24', '2021-01-06 03:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_payable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `name`, `store_id`, `location_id`, `customer_id`, `net_amount`, `discount`, `coupon`, `final_payable`, `created_at`, `updated_at`) VALUES
(1, 'Herrod Robinson', '1', '1', '6', 'Quia dolores ut dolo', '55', 'Odit itaque atque la', 'Atque perspiciatis', '2021-01-06 00:35:12', '2021-01-06 00:35:12'),
(2, 'Ariana Gates', '2', '2', '7', 'Do voluptate beatae', '86', 'Illum rem consequun', 'Aut voluptatum modi', '2021-01-06 00:36:32', '2021-01-06 00:36:32'),
(3, 'Karleigh Forbes', '2', '1', '1', 'Impedit nesciunt c', '100', 'Veritatis non commod', 'Quos omnis eum dolor', '2021-01-06 00:38:00', '2021-01-06 00:38:00'),
(4, 'Colleen Bass', '1', '2', '2', 'Ea et suscipit quis', '27', 'Nulla deserunt asper', 'Facilis fugiat vel a', '2021-01-06 00:41:34', '2021-01-06 00:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_name`, `name`, `mobile`, `email`, `address`, `user_role_id`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Super Admin', '017000000000', 'admin@admin.com', 'Dhaka', 1, '$2y$10$weI.70PtXEATQpEa0uZ0befnfUtiInbQi7zTimZmsw8YCWBir4JWC', '1', NULL, '2020-12-28 03:45:01', '2020-12-28 03:45:01'),
(2, 'User', 'User', '019000000000', 'user@ekshop.com', 'Dhaka', 0, '$2y$10$vTWbnae9oGcp17d24o5eFuWcybDD6csF4HWooXZLkaGHJw8cxKb5y', '1', NULL, '2020-12-28 03:45:02', '2020-12-28 03:45:02'),
(3, 'Admin', 'Admin', '016000000000', 'ladmin@admin.com', 'Dhaka', 2, '$2y$10$vTWbnae9oGcp17d24o5eFuWcybDD6csF4HWooXZLkaGHJw8cxKb5y', '1', NULL, '2020-12-29 09:43:07', '2020-12-29 09:43:08'),
(4, 'Operator', 'Operator', '015000000000', 'operator@ekshop.com', 'Dhaka', 3, '$2a$10$TVVDFkhhHQuaXYTT9MdrMuhaGr1rTF.Dzil6npEmDMdcFJVdXs8Li', '1', NULL, '2021-01-03 09:15:05', '2021-01-03 09:15:08'),
(5, 'Admin', 'Wylie Goodwin', '979', 'tybed@mailinator.com', NULL, 2, '123456', '1', NULL, '2021-01-05 22:38:11', '2021-01-05 22:38:11'),
(6, 'Admin', 'Md Noor Islam Salman', '01746182842', 'admin@gmail.com', NULL, 2, 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, '2021-01-05 22:54:47', '2021-01-05 22:54:47'),
(7, 'Admin', 'Raymond Ortega', '735', 'moligekiq@mailinator.com', NULL, 2, '$2y$10$Gh6tsG0rOnGWS/3Nvi2rxelDKtNrvAp4LkM1xPVIx.FKRjtyAXudW', '1', NULL, '2021-01-05 22:55:57', '2021-01-05 22:55:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disbursements`
--
ALTER TABLE `disbursements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `disbursements`
--
ALTER TABLE `disbursements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
