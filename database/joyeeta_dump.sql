-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2021 at 11:54 AM
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
-- Database: `joyeeta_dump`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Ashraf Ali', '01710986265', 'Dhanmondi, Dhaka', '2021-01-19 00:41:57', '2021-01-19 00:41:57'),
(2, 'Mr. Rubel', '01811626223', 'Mohammadpur, Dhaka', '2021-01-19 00:41:57', '2021-01-19 00:41:57'),
(3, 'Salman', '01746182842', 'Mirpur, Dhaka', '2021-01-19 00:41:57', '2021-01-19 00:41:57'),
(4, 'Noman Ali', '01611986265', 'Mogbazar, Dhaka', '2021-01-19 00:41:57', '2021-01-19 00:41:57'),
(5, 'Lance Woodward', '11', 'Accusantium molestia', '2021-01-19 01:01:42', '2021-01-19 01:01:42'),
(6, 'Xantha Bell', '21', 'In praesentium sapie', '2021-01-19 03:27:52', '2021-01-19 03:27:52'),
(7, 'Gray Mooney', '76', 'Provident rem do cu', '2021-01-19 03:28:51', '2021-01-19 03:28:51'),
(8, 'Donna Riddle', '29', 'Animi cumque quod u', '2021-01-19 03:29:55', '2021-01-19 03:29:55'),
(9, 'Vernon Tillman', '33', 'Dignissimos expedita', '2021-01-19 03:32:28', '2021-01-19 03:32:28'),
(10, 'Amy Cervantes', '72', 'Consequatur ut error', '2021-01-19 03:36:26', '2021-01-19 03:36:26'),
(11, 'Maile Head', '70', 'Autem sit explicabo', '2021-01-19 03:37:48', '2021-01-19 03:37:48'),
(12, 'Emmanuel Dejesus', '20', 'Ut beatae est qui m', '2021-01-19 03:40:29', '2021-01-19 03:40:29'),
(13, 'Hanae Guy', '30', 'Assumenda tempore s', '2021-01-19 03:48:34', '2021-01-19 03:48:34'),
(14, 'Thaddeus Price', '12', 'Necessitatibus conse', '2021-01-19 03:49:11', '2021-01-19 03:49:11'),
(15, 'Berk Clay', '84', 'Sed quos commodo fug', '2021-01-19 03:49:32', '2021-01-19 03:49:32'),
(16, 'Mari Ewing', '90', 'Veniam eaque error', '2021-01-19 03:50:30', '2021-01-19 03:50:30'),
(17, 'Jessamine Lott', '88', 'Rerum ipsam alias do', '2021-01-23 23:10:15', '2021-01-23 23:10:15'),
(18, 'Md Noor Islam Salman', '01987765432', '2nd Floor, house#4, Baitus Salam Housing LTD, Zigatola, Dhanmondi', '2021-01-26 04:02:36', '2021-01-26 04:02:36'),
(19, 'Thaddeus Yates', '26', 'Dolore in ut dicta a', '2021-02-12 10:56:55', '2021-02-12 10:56:55'),
(20, 'Bruce Burton', '40', 'Voluptas ex harum vo', '2021-02-12 13:54:15', '2021-02-12 13:54:15'),
(21, 'Rahman', '01984897874', 'Shobhanbug. Dhanmondi', '2021-02-12 23:13:26', '2021-02-12 23:13:26'),
(22, 'Leandra Sims', '47', 'Adipisicing sint ip', '2021-02-15 05:25:29', '2021-02-15 05:25:29'),
(23, 'Arsenio Bennett', '37', 'Sed aute eveniet eu', '2021-02-17 00:57:35', '2021-02-17 00:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `disbursements`
--

CREATE TABLE `disbursements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disburse_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_disbursement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `net_payable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disbursements`
--

INSERT INTO `disbursements` (`id`, `disburse_id`, `commission_amount`, `store_id`, `is_disbursement`, `net_payable`, `created_at`, `updated_at`, `image`, `comment`) VALUES
(2, 'DM-878208', '110.55', '1', '1', '2211', '2021-02-11 12:38:13', '2021-02-11 12:38:13', NULL, NULL),
(9, 'DM-149077', '70', '1', '1', '1400', '2021-02-12 08:43:59', '2021-02-12 08:43:59', NULL, NULL),
(10, 'DM-149077', '70', '1', '1', '1400', '2021-02-12 10:27:56', '2021-02-12 10:27:56', NULL, NULL),
(11, 'DM-149077', '70', '1', '1', '1400', '2021-02-12 10:28:18', '2021-02-12 10:28:18', NULL, NULL),
(12, 'MD-830045', '62.5', '4', '1', '1250', '2021-02-12 13:48:40', '2021-02-12 13:48:40', NULL, NULL),
(13, 'DM-454845', '12.05', '1', '1', '241', '2021-02-12 23:22:26', '2021-02-13 00:41:37', NULL, NULL),
(14, 'DM-149077', '70', '1', '1', '1400', '2021-02-12 23:26:39', '2021-02-12 23:26:39', NULL, NULL),
(15, 'DM-454845', '12.05', '1', '1', '241', '2021-02-13 00:42:07', '2021-02-13 00:42:07', NULL, NULL),
(16, 'DM-423635', '70.6', '1', '1', '1412', '2021-02-15 00:59:18', '2021-02-15 00:59:18', NULL, NULL),
(17, 'DM-582579', '79.25', '1', '1', '1585', '2021-02-15 03:58:06', '2021-02-15 03:58:06', NULL, NULL);

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
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `prefix`, `contact_person`, `contact_number`, `address`, `admin_id`, `operator_id`, `created_at`, `updated_at`) VALUES
(1, 'Dhanmondi', 'DM', 'James Bond', '01876252654', 'Dhanmondi, Dhaka', '1', '4', '2021-01-18 05:01:31', '2021-01-18 05:01:31'),
(2, 'Mohammadpur', 'MD', 'Sherlock Holmes', '01977652654', 'Mohammadpur, Dhaka', '2', '4', '2021-01-18 05:01:31', '2021-01-18 05:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `role_name`, `user_name`, `created_at`, `updated_at`) VALUES
(1, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 17, 'Super Admin', 'Super Admin', '2021-01-18 23:59:54', '2021-01-18 23:59:54'),
(2, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 17, 'Super Admin', 'Super Admin', '2021-01-19 00:02:47', '2021-01-19 00:02:47'),
(3, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 17, 'Super Admin', 'Super Admin', '2021-01-19 00:02:48', '2021-01-19 00:02:48'),
(4, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 17, 'Super Admin', 'Super Admin', '2021-01-19 00:03:38', '2021-01-19 00:03:38'),
(5, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:05:06', '2021-01-19 00:05:06'),
(6, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:05:39', '2021-01-19 00:05:39'),
(7, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:06:52', '2021-01-19 00:06:52'),
(8, 'Store Create clicked', 'http://joyeeta.test/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:07:02', '2021-01-19 00:07:02'),
(9, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:07:08', '2021-01-19 00:07:08'),
(10, 'Store Create clicked', 'http://joyeeta.test/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:07:14', '2021-01-19 00:07:14'),
(11, 'Store Viewed', 'http://joyeeta.test/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:20:06', '2021-01-19 00:20:06'),
(12, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:20:45', '2021-01-19 00:20:45'),
(13, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:34:42', '2021-01-19 00:34:42'),
(14, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:42:46', '2021-01-19 00:42:46'),
(15, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:43:20', '2021-01-19 00:43:20'),
(16, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:49:00', '2021-01-19 00:49:00'),
(17, 'Location create clicked', 'http://joyeeta.test/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:49:14', '2021-01-19 00:49:14'),
(18, 'Location Creation clicked ', 'http://joyeeta.test/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:49:14', '2021-01-19 00:49:14'),
(19, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:49:16', '2021-01-19 00:49:16'),
(20, 'Store Viewed', 'http://joyeeta.test/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:49:20', '2021-01-19 00:49:20'),
(21, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:49:24', '2021-01-19 00:49:24'),
(22, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:49:30', '2021-01-19 00:49:30'),
(23, 'Setting Clicked', 'http://joyeeta.test/admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:49:41', '2021-01-19 00:49:41'),
(24, 'Setting Clicked', 'http://joyeeta.test/admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:55:01', '2021-01-19 00:55:01'),
(25, 'Setting Update', 'http://joyeeta.test/admin/setting/1', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:55:09', '2021-01-19 00:55:09'),
(26, 'Setting Update', 'http://joyeeta.test/admin/setting/1', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:55:10', '2021-01-19 00:55:10'),
(27, 'Setting Clicked', 'http://joyeeta.test/admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 00:55:10', '2021-01-19 00:55:10'),
(28, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 01:01:26', '2021-01-19 01:01:26'),
(29, 'Setting Clicked', 'http://joyeeta.test/admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 01:12:56', '2021-01-19 01:12:56'),
(30, 'Setting Update', 'http://joyeeta.test/admin/setting/1', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 01:13:06', '2021-01-19 01:13:06'),
(31, 'Setting Clicked', 'http://joyeeta.test/admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 01:13:07', '2021-01-19 01:13:07'),
(32, 'Location create clicked', 'http://joyeeta.test/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 01:20:25', '2021-01-19 01:20:25'),
(33, 'Location Creation clicked ', 'http://joyeeta.test/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 01:20:25', '2021-01-19 01:20:25'),
(34, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 01:20:33', '2021-01-19 01:20:33'),
(35, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 01:20:43', '2021-01-19 01:20:43'),
(36, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 01:24:16', '2021-01-19 01:24:16'),
(37, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:25:30', '2021-01-19 03:25:30'),
(38, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:27:38', '2021-01-19 03:27:38'),
(39, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:28:26', '2021-01-19 03:28:26'),
(40, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:29:43', '2021-01-19 03:29:43'),
(41, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:29:55', '2021-01-19 03:29:55'),
(42, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:29:56', '2021-01-19 03:29:56'),
(43, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:32:02', '2021-01-19 03:32:02'),
(44, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:32:17', '2021-01-19 03:32:17'),
(45, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:35:55', '2021-01-19 03:35:55'),
(46, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:36:08', '2021-01-19 03:36:08'),
(47, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:37:36', '2021-01-19 03:37:36'),
(48, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:40:19', '2021-01-19 03:40:19'),
(49, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:48:21', '2021-01-19 03:48:21'),
(50, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:48:59', '2021-01-19 03:48:59'),
(51, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:49:16', '2021-01-19 03:49:16'),
(52, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:49:20', '2021-01-19 03:49:20'),
(53, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-19 03:50:21', '2021-01-19 03:50:21'),
(54, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-21 03:41:59', '2021-01-21 03:41:59'),
(55, 'Setting Clicked', 'http://joyeeta.test/admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-21 03:42:49', '2021-01-21 03:42:49'),
(56, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-21 03:43:00', '2021-01-21 03:43:00'),
(57, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-21 03:43:02', '2021-01-21 03:43:02'),
(58, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-23 22:33:22', '2021-01-23 22:33:22'),
(59, 'Setting Clicked', 'http://127.0.0.1:8000/admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-23 22:33:44', '2021-01-23 22:33:44'),
(60, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-23 22:40:54', '2021-01-23 22:40:54'),
(61, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-23 22:41:09', '2021-01-23 22:41:09'),
(62, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-23 22:41:19', '2021-01-23 22:41:19'),
(63, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-23 22:41:27', '2021-01-23 22:41:27'),
(64, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-23 23:10:03', '2021-01-23 23:10:03'),
(65, 'Setting Clicked', 'http://joyeeta.test/admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 22:45:55', '2021-01-25 22:45:55'),
(66, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 22:46:04', '2021-01-25 22:46:04'),
(67, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 22:46:52', '2021-01-25 22:46:52'),
(68, 'Disbursement Stored', 'http://joyeeta.test/admin/disbursement', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 22:47:08', '2021-01-25 22:47:08'),
(69, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 22:47:08', '2021-01-25 22:47:08'),
(70, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:02:50', '2021-01-25 23:02:50'),
(71, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:03:24', '2021-01-25 23:03:24'),
(72, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:04:03', '2021-01-25 23:04:03'),
(73, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:04:11', '2021-01-25 23:04:11'),
(74, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:04:51', '2021-01-25 23:04:51'),
(75, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:07:30', '2021-01-25 23:07:30'),
(76, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:09:47', '2021-01-25 23:09:47'),
(77, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:11:25', '2021-01-25 23:11:25'),
(78, 'Disbursement Stored', 'http://joyeeta.test/admin/disbursement', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:31:06', '2021-01-25 23:31:06'),
(79, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:31:06', '2021-01-25 23:31:06'),
(80, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:32:13', '2021-01-25 23:32:13'),
(81, 'Disbursement Stored', 'http://joyeeta.test/admin/disbursement', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:32:34', '2021-01-25 23:32:34'),
(82, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:32:34', '2021-01-25 23:32:34'),
(83, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:39:19', '2021-01-25 23:39:19'),
(84, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:42:21', '2021-01-25 23:42:21'),
(85, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:44:19', '2021-01-25 23:44:19'),
(86, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:44:37', '2021-01-25 23:44:37'),
(87, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:44:57', '2021-01-25 23:44:57'),
(88, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:47:18', '2021-01-25 23:47:18'),
(89, 'Disbursement Stored', 'http://joyeeta.test/admin/disbursement', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:47:35', '2021-01-25 23:47:35'),
(90, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:47:35', '2021-01-25 23:47:35'),
(91, 'Disbursement Stored', 'http://joyeeta.test/admin/disbursement', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:48:42', '2021-01-25 23:48:42'),
(92, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:48:42', '2021-01-25 23:48:42'),
(93, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:49:15', '2021-01-25 23:49:15'),
(94, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:49:53', '2021-01-25 23:49:53'),
(95, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-25 23:55:22', '2021-01-25 23:55:22'),
(96, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 00:14:57', '2021-01-26 00:14:57'),
(97, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 00:15:22', '2021-01-26 00:15:22'),
(98, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 00:51:00', '2021-01-26 00:51:00'),
(99, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 00:52:50', '2021-01-26 00:52:50'),
(100, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 00:53:16', '2021-01-26 00:53:16'),
(101, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:04:37', '2021-01-26 01:04:37'),
(102, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:06:10', '2021-01-26 01:06:10'),
(103, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:07:53', '2021-01-26 01:07:53'),
(104, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:08:36', '2021-01-26 01:08:36'),
(105, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:09:50', '2021-01-26 01:09:50'),
(106, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:11:04', '2021-01-26 01:11:04'),
(107, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:12:05', '2021-01-26 01:12:05'),
(108, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:12:51', '2021-01-26 01:12:51'),
(109, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:19:01', '2021-01-26 01:19:01'),
(110, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:19:35', '2021-01-26 01:19:35'),
(111, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:27:07', '2021-01-26 01:27:07'),
(112, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:27:16', '2021-01-26 01:27:16'),
(113, 'Disbursement Stored', 'http://joyeeta.test/admin/disbursement', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:33:10', '2021-01-26 01:33:10'),
(114, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:33:11', '2021-01-26 01:33:11'),
(115, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:33:15', '2021-01-26 01:33:15'),
(116, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:34:40', '2021-01-26 01:34:40'),
(117, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:43:11', '2021-01-26 01:43:11'),
(118, 'Disbursement Stored', 'http://joyeeta.test/admin/disbursement', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:45:17', '2021-01-26 01:45:17'),
(119, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 01:45:17', '2021-01-26 01:45:17'),
(120, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:28:38', '2021-01-26 03:28:38'),
(121, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:30:40', '2021-01-26 03:30:40'),
(122, 'Disbursement Stored', 'http://joyeeta.test/admin/disbursement', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:31:03', '2021-01-26 03:31:03'),
(123, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:31:04', '2021-01-26 03:31:04'),
(124, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:31:11', '2021-01-26 03:31:11'),
(125, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:31:42', '2021-01-26 03:31:42'),
(126, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:32:14', '2021-01-26 03:32:14'),
(127, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:32:20', '2021-01-26 03:32:20'),
(128, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:37:48', '2021-01-26 03:37:48'),
(129, 'Disbursement Stored', 'http://joyeeta.test/admin/disbursement', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:39:12', '2021-01-26 03:39:12'),
(130, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:39:12', '2021-01-26 03:39:12'),
(131, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:39:24', '2021-01-26 03:39:24'),
(132, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:45:03', '2021-01-26 03:45:03'),
(133, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:45:11', '2021-01-26 03:45:11'),
(134, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:46:07', '2021-01-26 03:46:07'),
(135, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:46:07', '2021-01-26 03:46:07'),
(136, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 03:58:21', '2021-01-26 03:58:21'),
(137, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 04:00:58', '2021-01-26 04:00:58'),
(138, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 04:00:59', '2021-01-26 04:00:59'),
(139, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 04:02:36', '2021-01-26 04:02:36'),
(140, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 04:02:36', '2021-01-26 04:02:36'),
(141, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-26 04:03:22', '2021-01-26 04:03:22'),
(142, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:09:11', '2021-01-27 00:09:11'),
(143, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:09:25', '2021-01-27 00:09:25'),
(144, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:10:52', '2021-01-27 00:10:52'),
(145, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:11:03', '2021-01-27 00:11:03'),
(146, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:11:32', '2021-01-27 00:11:32'),
(147, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:11:49', '2021-01-27 00:11:49'),
(148, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:12:00', '2021-01-27 00:12:00'),
(149, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:12:20', '2021-01-27 00:12:20'),
(150, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:12:33', '2021-01-27 00:12:33'),
(151, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:13:21', '2021-01-27 00:13:21'),
(152, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:13:42', '2021-01-27 00:13:42'),
(153, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:41:47', '2021-01-27 00:41:47'),
(154, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:42:17', '2021-01-27 00:42:17'),
(155, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:42:43', '2021-01-27 00:42:43'),
(156, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:43:35', '2021-01-27 00:43:35'),
(157, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:43:58', '2021-01-27 00:43:58'),
(158, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:44:36', '2021-01-27 00:44:36'),
(159, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:45:25', '2021-01-27 00:45:25'),
(160, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:46:00', '2021-01-27 00:46:00'),
(161, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:46:36', '2021-01-27 00:46:36'),
(162, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:46:58', '2021-01-27 00:46:58'),
(163, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:47:56', '2021-01-27 00:47:56'),
(164, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:48:12', '2021-01-27 00:48:12'),
(165, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:48:31', '2021-01-27 00:48:31'),
(166, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:49:06', '2021-01-27 00:49:06'),
(167, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:50:06', '2021-01-27 00:50:06'),
(168, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:50:19', '2021-01-27 00:50:19'),
(169, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:50:38', '2021-01-27 00:50:38'),
(170, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:52:45', '2021-01-27 00:52:45'),
(171, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 00:53:15', '2021-01-27 00:53:15');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `role_name`, `user_name`, `created_at`, `updated_at`) VALUES
(172, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 01:04:35', '2021-01-27 01:04:35'),
(173, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 01:04:41', '2021-01-27 01:04:41'),
(174, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 01:07:11', '2021-01-27 01:07:11'),
(175, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 01:34:51', '2021-01-27 01:34:51'),
(176, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 02:51:37', '2021-01-27 02:51:37'),
(177, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 02:52:20', '2021-01-27 02:52:20'),
(178, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 02:54:48', '2021-01-27 02:54:48'),
(179, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 03:04:11', '2021-01-27 03:04:11'),
(180, 'Store Viewed', 'http://joyeeta.test/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 03:04:14', '2021-01-27 03:04:14'),
(181, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 03:05:16', '2021-01-27 03:05:16'),
(182, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 03:05:22', '2021-01-27 03:05:22'),
(183, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 03:05:36', '2021-01-27 03:05:36'),
(184, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 03:18:51', '2021-01-27 03:18:51'),
(185, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 03:20:09', '2021-01-27 03:20:09'),
(186, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 03:42:46', '2021-01-27 03:42:46'),
(187, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-27 03:42:50', '2021-01-27 03:42:50'),
(188, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-28 03:38:27', '2021-01-28 03:38:27'),
(189, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Mobile Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-28 03:43:58', '2021-01-28 03:43:58'),
(190, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-28 03:47:38', '2021-01-28 03:47:38'),
(191, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Mobile Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-28 03:49:37', '2021-01-28 03:49:37'),
(192, 'Store Create clicked', 'http://joyeeta.test/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:03:48', '2021-01-29 12:03:48'),
(193, 'Store Viewed', 'http://joyeeta.test/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:03:56', '2021-01-29 12:03:56'),
(194, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:04:02', '2021-01-29 12:04:02'),
(195, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:05:52', '2021-01-29 12:05:52'),
(196, 'Store Create clicked', 'http://joyeeta.test/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:06:18', '2021-01-29 12:06:18'),
(197, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:08:45', '2021-01-29 12:08:45'),
(198, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Mobile Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:14:13', '2021-01-29 12:14:13'),
(199, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Mobile Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:15:36', '2021-01-29 12:15:36'),
(200, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Mobile Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:16:10', '2021-01-29 12:16:10'),
(201, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Mobile Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:17:13', '2021-01-29 12:17:13'),
(202, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Mobile Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:17:27', '2021-01-29 12:17:27'),
(203, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Mobile Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:18:29', '2021-01-29 12:18:29'),
(204, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:25:23', '2021-01-29 12:25:23'),
(205, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:27:31', '2021-01-29 12:27:31'),
(206, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-29 12:28:20', '2021-01-29 12:28:20'),
(207, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 04:26:02', '2021-01-30 04:26:02'),
(208, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:31:38', '2021-01-30 05:31:38'),
(209, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:31:48', '2021-01-30 05:31:48'),
(210, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:32:40', '2021-01-30 05:32:40'),
(211, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:33:00', '2021-01-30 05:33:00'),
(212, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:33:55', '2021-01-30 05:33:55'),
(213, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:35:36', '2021-01-30 05:35:36'),
(214, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:36:37', '2021-01-30 05:36:37'),
(215, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:37:42', '2021-01-30 05:37:42'),
(216, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:42:58', '2021-01-30 05:42:58'),
(217, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement/batch-disburse', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:49:38', '2021-01-30 05:49:38'),
(218, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement/batch-disburse', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 05:50:22', '2021-01-30 05:50:22'),
(219, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 06:58:55', '2021-01-30 06:58:55'),
(220, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 07:05:09', '2021-01-30 07:05:09'),
(221, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 07:06:36', '2021-01-30 07:06:36'),
(222, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 07:11:22', '2021-01-30 07:11:22'),
(223, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 07:17:01', '2021-01-30 07:17:01'),
(224, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 07:19:35', '2021-01-30 07:19:35'),
(225, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 07:19:40', '2021-01-30 07:19:40'),
(226, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-01-30 07:20:01', '2021-01-30 07:20:01'),
(227, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-03 01:09:18', '2021-02-03 01:09:18'),
(228, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-03 01:09:19', '2021-02-03 01:09:19'),
(229, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-03 01:16:29', '2021-02-03 01:16:29'),
(230, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-03 01:16:37', '2021-02-03 01:16:37'),
(231, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-03 01:16:41', '2021-02-03 01:16:41'),
(232, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-03 01:21:08', '2021-02-03 01:21:08'),
(233, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-03 02:55:46', '2021-02-03 02:55:46'),
(234, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-03 03:47:06', '2021-02-03 03:47:06'),
(235, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-09 23:23:39', '2021-02-09 23:23:39'),
(236, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-09 23:28:29', '2021-02-09 23:28:29'),
(237, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-09 23:29:59', '2021-02-09 23:29:59'),
(238, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 00:57:09', '2021-02-10 00:57:09'),
(239, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 02:29:58', '2021-02-10 02:29:58'),
(240, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 04:05:49', '2021-02-10 04:05:49'),
(241, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 04:28:01', '2021-02-10 04:28:01'),
(242, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 04:34:48', '2021-02-10 04:34:48'),
(243, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 04:39:27', '2021-02-10 04:39:27'),
(244, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 04:39:38', '2021-02-10 04:39:38'),
(245, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 04:48:23', '2021-02-10 04:48:23'),
(246, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 04:52:16', '2021-02-10 04:52:16'),
(247, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:06:39', '2021-02-10 05:06:39'),
(248, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:07:09', '2021-02-10 05:07:09'),
(249, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:07:21', '2021-02-10 05:07:21'),
(250, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:28:17', '2021-02-10 05:28:17'),
(251, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:28:29', '2021-02-10 05:28:29'),
(252, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:31:34', '2021-02-10 05:31:34'),
(253, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:31:51', '2021-02-10 05:31:51'),
(254, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:32:54', '2021-02-10 05:32:54'),
(255, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:32:59', '2021-02-10 05:32:59'),
(256, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:34:15', '2021-02-10 05:34:15'),
(257, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:36:34', '2021-02-10 05:36:34'),
(258, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-10 05:37:42', '2021-02-10 05:37:42'),
(259, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 08:37:58', '2021-02-12 08:37:58'),
(260, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursements/confirm', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 08:42:06', '2021-02-12 08:42:06'),
(261, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursements/confirm', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 08:43:59', '2021-02-12 08:43:59'),
(262, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursements/confirm', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:27:56', '2021-02-12 10:27:56'),
(263, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursements/confirm', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:28:18', '2021-02-12 10:28:18'),
(264, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:28:30', '2021-02-12 10:28:30'),
(265, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:28:47', '2021-02-12 10:28:47'),
(266, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:40:07', '2021-02-12 10:40:07'),
(267, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:42:59', '2021-02-12 10:42:59'),
(268, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:43:12', '2021-02-12 10:43:12'),
(269, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:43:43', '2021-02-12 10:43:43'),
(270, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:44:00', '2021-02-12 10:44:00'),
(271, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:44:56', '2021-02-12 10:44:56'),
(272, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:45:46', '2021-02-12 10:45:46'),
(273, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:46:16', '2021-02-12 10:46:16'),
(274, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:46:56', '2021-02-12 10:46:56'),
(275, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:47:32', '2021-02-12 10:47:32'),
(276, 'Store Viewed', 'http://joyeeta.test/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:47:41', '2021-02-12 10:47:41'),
(277, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:48:01', '2021-02-12 10:48:01'),
(278, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:51:33', '2021-02-12 10:51:33'),
(279, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:52:10', '2021-02-12 10:52:10'),
(280, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:52:32', '2021-02-12 10:52:32'),
(281, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:53:14', '2021-02-12 10:53:14'),
(282, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:53:51', '2021-02-12 10:53:51'),
(283, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:54:42', '2021-02-12 10:54:42'),
(284, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 10:57:27', '2021-02-12 10:57:27'),
(285, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:01:44', '2021-02-12 11:01:44'),
(286, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:02:12', '2021-02-12 11:02:12'),
(287, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:02:13', '2021-02-12 11:02:13'),
(288, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:02:25', '2021-02-12 11:02:25'),
(289, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:03:03', '2021-02-12 11:03:03'),
(290, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:14:14', '2021-02-12 11:14:14'),
(291, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:26:25', '2021-02-12 11:26:25'),
(292, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:26:27', '2021-02-12 11:26:27'),
(293, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:48:30', '2021-02-12 11:48:30'),
(294, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:48:49', '2021-02-12 11:48:49'),
(295, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:50:01', '2021-02-12 11:50:01'),
(296, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:51:05', '2021-02-12 11:51:05'),
(297, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:54:25', '2021-02-12 11:54:25'),
(298, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:55:23', '2021-02-12 11:55:23'),
(299, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 11:56:59', '2021-02-12 11:56:59'),
(300, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 12:20:11', '2021-02-12 12:20:11'),
(301, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 12:21:30', '2021-02-12 12:21:30'),
(302, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 12:48:53', '2021-02-12 12:48:53'),
(303, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 12:50:54', '2021-02-12 12:50:54'),
(304, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 12:52:54', '2021-02-12 12:52:54'),
(305, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 12:54:15', '2021-02-12 12:54:15'),
(306, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 12:57:09', '2021-02-12 12:57:09'),
(307, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:10:56', '2021-02-12 13:10:56'),
(308, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:18:53', '2021-02-12 13:18:53'),
(309, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursements/confirm', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:48:40', '2021-02-12 13:48:40'),
(310, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:48:52', '2021-02-12 13:48:52'),
(311, 'Location create clicked', 'http://joyeeta.test/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:50:12', '2021-02-12 13:50:12'),
(312, 'Location Creation clicked ', 'http://joyeeta.test/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:50:12', '2021-02-12 13:50:12'),
(313, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:51:02', '2021-02-12 13:51:02'),
(314, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:53:12', '2021-02-12 13:53:12'),
(315, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:53:36', '2021-02-12 13:53:36'),
(316, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:54:15', '2021-02-12 13:54:15'),
(317, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:54:16', '2021-02-12 13:54:16'),
(318, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:54:21', '2021-02-12 13:54:21'),
(319, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:55:06', '2021-02-12 13:55:06'),
(320, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:55:30', '2021-02-12 13:55:30'),
(321, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:55:48', '2021-02-12 13:55:48'),
(322, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:56:09', '2021-02-12 13:56:09'),
(323, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:57:15', '2021-02-12 13:57:15'),
(324, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:57:24', '2021-02-12 13:57:24'),
(325, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 13:58:47', '2021-02-12 13:58:47'),
(326, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 14:00:10', '2021-02-12 14:00:10'),
(327, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 14:00:24', '2021-02-12 14:00:24'),
(328, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 14:02:24', '2021-02-12 14:02:24'),
(329, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 14:02:49', '2021-02-12 14:02:49'),
(330, 'Store Create clicked', 'http://joyeeta.test/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 14:09:05', '2021-02-12 14:09:05'),
(331, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 14:48:42', '2021-02-12 14:48:42'),
(332, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:08:21', '2021-02-12 22:08:21'),
(333, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:13:31', '2021-02-12 22:13:31'),
(334, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:14:22', '2021-02-12 22:14:22'),
(335, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:14:48', '2021-02-12 22:14:48'),
(336, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:15:26', '2021-02-12 22:15:26'),
(337, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:17:44', '2021-02-12 22:17:44'),
(338, 'Store Viewed', 'http://127.0.0.1:8000/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:17:47', '2021-02-12 22:17:47'),
(339, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:17:59', '2021-02-12 22:17:59'),
(340, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:19:01', '2021-02-12 22:19:01'),
(341, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:19:18', '2021-02-12 22:19:18'),
(342, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:20:02', '2021-02-12 22:20:02');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `role_name`, `user_name`, `created_at`, `updated_at`) VALUES
(343, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:26:15', '2021-02-12 22:26:15'),
(344, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:28:00', '2021-02-12 22:28:00'),
(345, 'Store Viewed', 'http://127.0.0.1:8000/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:37:14', '2021-02-12 22:37:14'),
(346, 'Store Viewed', 'http://127.0.0.1:8000/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:49:25', '2021-02-12 22:49:25'),
(347, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:50:29', '2021-02-12 22:50:29'),
(348, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:50:51', '2021-02-12 22:50:51'),
(349, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:51:00', '2021-02-12 22:51:00'),
(350, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:51:11', '2021-02-12 22:51:11'),
(351, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:51:50', '2021-02-12 22:51:50'),
(352, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:52:09', '2021-02-12 22:52:09'),
(353, 'Store Viewed', 'http://127.0.0.1:8000/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:52:22', '2021-02-12 22:52:22'),
(354, 'Store Viewed', 'http://127.0.0.1:8000/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:52:39', '2021-02-12 22:52:39'),
(355, 'Store Viewed', 'http://127.0.0.1:8000/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:54:26', '2021-02-12 22:54:26'),
(356, 'Store Viewed', 'http://127.0.0.1:8000/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:54:48', '2021-02-12 22:54:48'),
(357, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:54:53', '2021-02-12 22:54:53'),
(358, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:54:57', '2021-02-12 22:54:57'),
(359, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:55:16', '2021-02-12 22:55:16'),
(360, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:55:19', '2021-02-12 22:55:19'),
(361, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:55:24', '2021-02-12 22:55:24'),
(362, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:55:43', '2021-02-12 22:55:43'),
(363, 'Store Viewed', 'http://127.0.0.1:8000/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:56:01', '2021-02-12 22:56:01'),
(364, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 3, 'Admin', 'Admin', '2021-02-12 22:56:05', '2021-02-12 22:56:05'),
(365, 'Location create clicked', 'http://127.0.0.1:8000/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:03:23', '2021-02-12 23:03:23'),
(366, 'Location Creation clicked ', 'http://127.0.0.1:8000/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:03:23', '2021-02-12 23:03:23'),
(367, 'Location create clicked', 'http://127.0.0.1:8000/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:03:51', '2021-02-12 23:03:51'),
(368, 'Location Creation clicked ', 'http://127.0.0.1:8000/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:03:51', '2021-02-12 23:03:51'),
(369, 'Store Create clicked', 'http://127.0.0.1:8000/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:05:23', '2021-02-12 23:05:23'),
(370, 'Store Viewed', 'http://127.0.0.1:8000/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:05:56', '2021-02-12 23:05:56'),
(371, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:06:12', '2021-02-12 23:06:12'),
(372, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:06:25', '2021-02-12 23:06:25'),
(373, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:06:30', '2021-02-12 23:06:30'),
(374, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:06:40', '2021-02-12 23:06:40'),
(375, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-12 23:08:13', '2021-02-12 23:08:13'),
(376, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:09:42', '2021-02-12 23:09:42'),
(377, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:10:44', '2021-02-12 23:10:44'),
(378, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:10:54', '2021-02-12 23:10:54'),
(379, 'Transaction created', 'http://127.0.0.1:8000/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:13:26', '2021-02-12 23:13:26'),
(380, 'Transaction Create Clicked', 'http://127.0.0.1:8000/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:13:26', '2021-02-12 23:13:26'),
(381, 'Transaction Viewed', 'http://127.0.0.1:8000/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:16:43', '2021-02-12 23:16:43'),
(382, 'Disbursement Create Clicked', 'http://127.0.0.1:8000/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:17:55', '2021-02-12 23:17:55'),
(383, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursements/confirm', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:22:26', '2021-02-12 23:22:26'),
(384, 'Setting Clicked', 'http://127.0.0.1:8000/admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:22:41', '2021-02-12 23:22:41'),
(385, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:22:55', '2021-02-12 23:22:55'),
(386, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:23:39', '2021-02-12 23:23:39'),
(387, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursements/confirm', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:26:39', '2021-02-12 23:26:39'),
(388, 'Setting Clicked', 'http://127.0.0.1:8000/admin/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:27:09', '2021-02-12 23:27:09'),
(389, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-12 23:27:17', '2021-02-12 23:27:17'),
(390, 'Disbursement Clicked', 'http://127.0.0.1:8000/admin/disbursements/confirm', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-13 00:42:07', '2021-02-13 00:42:07'),
(391, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-13 22:24:14', '2021-02-13 22:24:14'),
(392, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-13 22:24:23', '2021-02-13 22:24:23'),
(393, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-13 22:24:41', '2021-02-13 22:24:41'),
(394, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-13 22:25:24', '2021-02-13 22:25:24'),
(395, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-13 22:27:01', '2021-02-13 22:27:01'),
(396, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-13 22:28:35', '2021-02-13 22:28:35'),
(397, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 00:37:34', '2021-02-14 00:37:34'),
(398, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 00:41:22', '2021-02-14 00:41:22'),
(399, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 00:42:50', '2021-02-14 00:42:50'),
(400, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 00:50:08', '2021-02-14 00:50:08'),
(401, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 00:50:26', '2021-02-14 00:50:26'),
(402, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:12:25', '2021-02-14 01:12:25'),
(403, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:12:41', '2021-02-14 01:12:41'),
(404, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:14:18', '2021-02-14 01:14:18'),
(405, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:19:52', '2021-02-14 01:19:52'),
(406, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:20:36', '2021-02-14 01:20:36'),
(407, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:20:57', '2021-02-14 01:20:57'),
(408, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:24:03', '2021-02-14 01:24:03'),
(409, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:24:28', '2021-02-14 01:24:28'),
(410, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/batch-disburse', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:25:06', '2021-02-14 01:25:06'),
(411, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/batch-disburse', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:30:28', '2021-02-14 01:30:28'),
(412, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/batch-disburse', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:30:53', '2021-02-14 01:30:53'),
(413, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/batch-disburse', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:31:38', '2021-02-14 01:31:38'),
(414, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:32:50', '2021-02-14 01:32:50'),
(415, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/batch-disburse', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:33:29', '2021-02-14 01:33:29'),
(416, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/batch-disburse', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:35:51', '2021-02-14 01:35:51'),
(417, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/batch-disburse', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 01:36:24', '2021-02-14 01:36:24'),
(418, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 03:30:38', '2021-02-14 03:30:38'),
(419, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 03:33:39', '2021-02-14 03:33:39'),
(420, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/batch-disburse', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 03:39:26', '2021-02-14 03:39:26'),
(421, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 03:41:20', '2021-02-14 03:41:20'),
(422, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 03:43:28', '2021-02-14 03:43:28'),
(423, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 03:57:34', '2021-02-14 03:57:34'),
(424, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 04:19:28', '2021-02-14 04:19:28'),
(425, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 04:22:46', '2021-02-14 04:22:46'),
(426, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 04:24:07', '2021-02-14 04:24:07'),
(427, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 04:24:07', '2021-02-14 04:24:07'),
(428, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 04:25:11', '2021-02-14 04:25:11'),
(429, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 04:26:00', '2021-02-14 04:26:00'),
(430, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 04:27:49', '2021-02-14 04:27:49'),
(431, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 04:28:38', '2021-02-14 04:28:38'),
(432, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 04:28:53', '2021-02-14 04:28:53'),
(433, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 04:33:55', '2021-02-14 04:33:55'),
(434, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 04:34:39', '2021-02-14 04:34:39'),
(435, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 04:34:57', '2021-02-14 04:34:57'),
(436, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 04:35:13', '2021-02-14 04:35:13'),
(437, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 05:04:14', '2021-02-14 05:04:14'),
(438, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:04:23', '2021-02-14 05:04:23'),
(439, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:05:01', '2021-02-14 05:05:01'),
(440, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 05:15:46', '2021-02-14 05:15:46'),
(441, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 05:15:49', '2021-02-14 05:15:49'),
(442, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 05:30:30', '2021-02-14 05:30:30'),
(443, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 05:30:38', '2021-02-14 05:30:38'),
(444, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:30:48', '2021-02-14 05:30:48'),
(445, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:31:11', '2021-02-14 05:31:11'),
(446, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:32:29', '2021-02-14 05:32:29'),
(447, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:33:09', '2021-02-14 05:33:09'),
(448, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:41:18', '2021-02-14 05:41:18'),
(449, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:43:49', '2021-02-14 05:43:49'),
(450, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:45:32', '2021-02-14 05:45:32'),
(451, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:46:06', '2021-02-14 05:46:06'),
(452, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:46:07', '2021-02-14 05:46:07'),
(453, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:46:10', '2021-02-14 05:46:10'),
(454, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:46:30', '2021-02-14 05:46:30'),
(455, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:46:35', '2021-02-14 05:46:35'),
(456, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:47:17', '2021-02-14 05:47:17'),
(457, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 05:47:17', '2021-02-14 05:47:17'),
(458, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-14 23:26:19', '2021-02-14 23:26:19'),
(459, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Mobile Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 23:56:45', '2021-02-14 23:56:45'),
(460, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 23:58:01', '2021-02-14 23:58:01'),
(461, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 23:59:10', '2021-02-14 23:59:10'),
(462, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-14 23:59:27', '2021-02-14 23:59:27'),
(463, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:36:15', '2021-02-15 00:36:15'),
(464, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-15 00:37:07', '2021-02-15 00:37:07'),
(465, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-15 00:37:07', '2021-02-15 00:37:07'),
(466, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-15 00:38:38', '2021-02-15 00:38:38'),
(467, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 4, 'Operator', 'Operator', '2021-02-15 00:38:39', '2021-02-15 00:38:39'),
(468, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:39:18', '2021-02-15 00:39:18'),
(469, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:41:44', '2021-02-15 00:41:44'),
(470, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:42:46', '2021-02-15 00:42:46'),
(471, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:57:38', '2021-02-15 00:57:38'),
(472, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:58:45', '2021-02-15 00:58:45'),
(473, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:58:46', '2021-02-15 00:58:46'),
(474, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:59:02', '2021-02-15 00:59:02'),
(475, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursements/confirm', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:59:18', '2021-02-15 00:59:18'),
(476, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:59:24', '2021-02-15 00:59:24'),
(477, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 00:59:39', '2021-02-15 00:59:39'),
(478, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:00:01', '2021-02-15 01:00:01'),
(479, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:00:04', '2021-02-15 01:00:04'),
(480, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:00:07', '2021-02-15 01:00:07'),
(481, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:00:33', '2021-02-15 01:00:33'),
(482, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:01:09', '2021-02-15 01:01:09'),
(483, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:01:27', '2021-02-15 01:01:27'),
(484, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:01:37', '2021-02-15 01:01:37'),
(485, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:04:44', '2021-02-15 01:04:44'),
(486, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:11:33', '2021-02-15 01:11:33'),
(487, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:18:25', '2021-02-15 01:18:25'),
(488, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction?page=2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:18:29', '2021-02-15 01:18:29'),
(489, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction?page=1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 01:18:36', '2021-02-15 01:18:36'),
(490, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction?page=2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:02:40', '2021-02-15 02:02:40'),
(491, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction?page=1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:02:46', '2021-02-15 02:02:46'),
(492, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction?page=2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:02:51', '2021-02-15 02:02:51'),
(493, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:13:03', '2021-02-15 02:13:03'),
(494, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:13:07', '2021-02-15 02:13:07'),
(495, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:13:10', '2021-02-15 02:13:10'),
(496, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:13:34', '2021-02-15 02:13:34'),
(497, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:13:46', '2021-02-15 02:13:46'),
(498, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:15:11', '2021-02-15 02:15:11'),
(499, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:15:32', '2021-02-15 02:15:32'),
(500, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:15:52', '2021-02-15 02:15:52'),
(501, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:29:47', '2021-02-15 02:29:47'),
(502, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:30:13', '2021-02-15 02:30:13'),
(503, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:30:49', '2021-02-15 02:30:49'),
(504, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:32:18', '2021-02-15 02:32:18'),
(505, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:32:29', '2021-02-15 02:32:29'),
(506, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:33:45', '2021-02-15 02:33:45'),
(507, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:34:44', '2021-02-15 02:34:44'),
(508, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:35:16', '2021-02-15 02:35:16'),
(509, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:35:25', '2021-02-15 02:35:25'),
(510, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:41:49', '2021-02-15 02:41:49'),
(511, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:50:30', '2021-02-15 02:50:30'),
(512, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:53:11', '2021-02-15 02:53:11'),
(513, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:53:31', '2021-02-15 02:53:31'),
(514, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:53:45', '2021-02-15 02:53:45'),
(515, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 02:57:05', '2021-02-15 02:57:05'),
(516, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:07:04', '2021-02-15 03:07:04');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `role_name`, `user_name`, `created_at`, `updated_at`) VALUES
(517, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:07:08', '2021-02-15 03:07:08'),
(518, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:17:35', '2021-02-15 03:17:35'),
(519, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:18:32', '2021-02-15 03:18:32'),
(520, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:18:50', '2021-02-15 03:18:50'),
(521, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:19:45', '2021-02-15 03:19:45'),
(522, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:26:32', '2021-02-15 03:26:32'),
(523, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:26:43', '2021-02-15 03:26:43'),
(524, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:38:39', '2021-02-15 03:38:39'),
(525, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:47:20', '2021-02-15 03:47:20'),
(526, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:50:16', '2021-02-15 03:50:16'),
(527, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:50:29', '2021-02-15 03:50:29'),
(528, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursements/confirm', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 03:58:06', '2021-02-15 03:58:06'),
(529, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:04:18', '2021-02-15 04:04:18'),
(530, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:05:31', '2021-02-15 04:05:31'),
(531, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:07:28', '2021-02-15 04:07:28'),
(532, 'Store Create clicked', 'http://joyeeta.test/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:09:56', '2021-02-15 04:09:56'),
(533, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:10:09', '2021-02-15 04:10:09'),
(534, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:16:24', '2021-02-15 04:16:24'),
(535, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:16:58', '2021-02-15 04:16:58'),
(536, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:17:20', '2021-02-15 04:17:20'),
(537, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:19:24', '2021-02-15 04:19:24'),
(538, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:22:10', '2021-02-15 04:22:10'),
(539, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:26:13', '2021-02-15 04:26:13'),
(540, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:26:43', '2021-02-15 04:26:43'),
(541, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:26:48', '2021-02-15 04:26:48'),
(542, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:26:59', '2021-02-15 04:26:59'),
(543, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:27:09', '2021-02-15 04:27:09'),
(544, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:27:21', '2021-02-15 04:27:21'),
(545, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:27:31', '2021-02-15 04:27:31'),
(546, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:27:33', '2021-02-15 04:27:33'),
(547, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:27:43', '2021-02-15 04:27:43'),
(548, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:27:54', '2021-02-15 04:27:54'),
(549, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:28:03', '2021-02-15 04:28:03'),
(550, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:29:43', '2021-02-15 04:29:43'),
(551, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:29:47', '2021-02-15 04:29:47'),
(552, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:39:21', '2021-02-15 04:39:21'),
(553, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:39:24', '2021-02-15 04:39:24'),
(554, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:39:33', '2021-02-15 04:39:33'),
(555, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:39:38', '2021-02-15 04:39:38'),
(556, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:40:52', '2021-02-15 04:40:52'),
(557, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:41:01', '2021-02-15 04:41:01'),
(558, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:41:42', '2021-02-15 04:41:42'),
(559, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:41:47', '2021-02-15 04:41:47'),
(560, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:42:15', '2021-02-15 04:42:15'),
(561, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:43:14', '2021-02-15 04:43:14'),
(562, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:44:14', '2021-02-15 04:44:14'),
(563, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:45:38', '2021-02-15 04:45:38'),
(564, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:46:25', '2021-02-15 04:46:25'),
(565, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:46:29', '2021-02-15 04:46:29'),
(566, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:46:56', '2021-02-15 04:46:56'),
(567, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:47:44', '2021-02-15 04:47:44'),
(568, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:48:16', '2021-02-15 04:48:16'),
(569, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:48:23', '2021-02-15 04:48:23'),
(570, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:51:32', '2021-02-15 04:51:32'),
(571, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:51:35', '2021-02-15 04:51:35'),
(572, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:51:46', '2021-02-15 04:51:46'),
(573, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:52:19', '2021-02-15 04:52:19'),
(574, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:52:22', '2021-02-15 04:52:22'),
(575, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:52:32', '2021-02-15 04:52:32'),
(576, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:52:44', '2021-02-15 04:52:44'),
(577, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:54:03', '2021-02-15 04:54:03'),
(578, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:54:19', '2021-02-15 04:54:19'),
(579, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:54:51', '2021-02-15 04:54:51'),
(580, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:55:03', '2021-02-15 04:55:03'),
(581, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:55:17', '2021-02-15 04:55:17'),
(582, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:55:42', '2021-02-15 04:55:42'),
(583, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:55:53', '2021-02-15 04:55:53'),
(584, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:56:06', '2021-02-15 04:56:06'),
(585, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:57:13', '2021-02-15 04:57:13'),
(586, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:57:17', '2021-02-15 04:57:17'),
(587, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:57:44', '2021-02-15 04:57:44'),
(588, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:58:28', '2021-02-15 04:58:28'),
(589, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:58:42', '2021-02-15 04:58:42'),
(590, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 04:58:56', '2021-02-15 04:58:56'),
(591, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:01:38', '2021-02-15 05:01:38'),
(592, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:02:04', '2021-02-15 05:02:04'),
(593, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:02:28', '2021-02-15 05:02:28'),
(594, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:02:42', '2021-02-15 05:02:42'),
(595, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:03:22', '2021-02-15 05:03:22'),
(596, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:17:26', '2021-02-15 05:17:26'),
(597, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:18:41', '2021-02-15 05:18:41'),
(598, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:19:23', '2021-02-15 05:19:23'),
(599, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:21:39', '2021-02-15 05:21:39'),
(600, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:22:03', '2021-02-15 05:22:03'),
(601, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:22:28', '2021-02-15 05:22:28'),
(602, 'Location create clicked', 'http://joyeeta.test/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:23:17', '2021-02-15 05:23:17'),
(603, 'Location Creation clicked ', 'http://joyeeta.test/admin/location/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:23:17', '2021-02-15 05:23:17'),
(604, 'Store Create clicked', 'http://joyeeta.test/admin/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:24:01', '2021-02-15 05:24:01'),
(605, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:24:14', '2021-02-15 05:24:14'),
(606, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:24:45', '2021-02-15 05:24:45'),
(607, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:25:29', '2021-02-15 05:25:29'),
(608, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:25:29', '2021-02-15 05:25:29'),
(609, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:28:58', '2021-02-15 05:28:58'),
(610, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:33:15', '2021-02-15 05:33:15'),
(611, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:38:13', '2021-02-15 05:38:13'),
(612, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-15 05:38:46', '2021-02-15 05:38:46'),
(613, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-16 23:24:56', '2021-02-16 23:24:56'),
(614, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 00:57:00', '2021-02-17 00:57:00'),
(615, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:00:56', '2021-02-17 01:00:56'),
(616, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction?page=4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:01:06', '2021-02-17 01:01:06'),
(617, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction?page=4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:01:44', '2021-02-17 01:01:44'),
(618, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:01:51', '2021-02-17 01:01:51'),
(619, 'Store Viewed', 'http://joyeeta.test/admin/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:09:29', '2021-02-17 01:09:29'),
(620, ' New Store created', 'http://joyeeta.test/admin/store/2', 'PUT', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:10:04', '2021-02-17 01:10:04'),
(621, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:10:14', '2021-02-17 01:10:14'),
(622, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:15:42', '2021-02-17 01:15:42'),
(623, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:16:31', '2021-02-17 01:16:31'),
(624, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:17:39', '2021-02-17 01:17:39'),
(625, 'Disbursement Create Clicked', 'http://joyeeta.test/admin/disbursement/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:17:39', '2021-02-17 01:17:39'),
(626, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:20:43', '2021-02-17 01:20:43'),
(627, 'Disbursement Clicked', 'http://joyeeta.test/admin/disbursement', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:46:47', '2021-02-17 01:46:47'),
(628, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:47:10', '2021-02-17 01:47:10'),
(629, 'Location Viewed', 'http://joyeeta.test/admin/location', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 01:49:10', '2021-02-17 01:49:10'),
(630, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:00:48', '2021-02-17 05:00:48'),
(631, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:02:47', '2021-02-17 05:02:47'),
(632, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:03:27', '2021-02-17 05:03:27'),
(633, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:03:27', '2021-02-17 05:03:27'),
(634, 'Transaction Viewed', 'http://joyeeta.test/admin/transaction', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:03:35', '2021-02-17 05:03:35'),
(635, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:05:04', '2021-02-17 05:05:04'),
(636, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:05:51', '2021-02-17 05:05:51'),
(637, 'Transaction created', 'http://joyeeta.test/admin/transaction', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:06:19', '2021-02-17 05:06:19'),
(638, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:06:20', '2021-02-17 05:06:20'),
(639, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:07:49', '2021-02-17 05:07:49'),
(640, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:16:43', '2021-02-17 05:16:43'),
(641, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:27:46', '2021-02-17 05:27:46'),
(642, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:28:22', '2021-02-17 05:28:22'),
(643, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:30:32', '2021-02-17 05:30:32'),
(644, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:31:23', '2021-02-17 05:31:23'),
(645, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:39:06', '2021-02-17 05:39:06'),
(646, 'Transaction Create Clicked', 'http://joyeeta.test/admin/transaction/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1, 'Super Admin', 'Super Admin', '2021-02-17 05:43:25', '2021-02-17 05:43:25');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_30_040728_create_stores_table', 1),
(5, '2020_12_30_040853_create_transactions_table', 1),
(7, '2020_12_30_040959_create_settings_table', 1),
(8, '2021_01_03_080133_create_locations_table', 1),
(10, '2021_01_15_182215_create_log_activity_table', 1),
(11, '2021_01_18_093227_add_picture_column_to_transaction_table', 1),
(12, '2014_10_12_000000_create_users_table', 2),
(14, '2021_01_06_035756_create_customer_table', 3),
(15, '2021_01_19_091356_new_coloum_invoice_no', 4),
(16, '2021_01_26_052043_remove_is_dibursement_coloum', 5),
(17, '2021_01_26_052835_remove_discount_coloum', 6),
(19, '2021_01_27_093051_transaction_table_batch_id_added', 7),
(20, '2020_12_30_040923_create_disbursements_table', 8),
(21, '2021_02_11_171247_remove_few_colomns', 9),
(22, '2021_02_11_173443_create_few_disbuesement_colomns', 10),
(23, '2021_02_11_183042_remove_from_to_colomns', 11),
(24, '2021_02_12_203726_remove_col_net_amount_coupon_discount', 12),
(25, '2021_02_13_042158_add_user_fields_on_store', 13),
(26, '2021_02_15_095453_disbursement_remove_comment_image', 14),
(27, '2021_02_15_095643_disbursement_make_comment_image_nullable', 15);

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
  `vat` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `commission` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `tax`, `commission`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 5, '2021-01-19 00:54:51', '2021-01-19 01:13:06');

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
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_mfs_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `number`, `contact_name`, `contact_number`, `location_id`, `balance`, `payment_method`, `bank_mfs_name`, `account_number`, `payment_details`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Adil Store', '2345676', 'Md. Adil', '01918762435', '1', 54833, '1', 'bKash', '01918762435', 'Pay through bKash Merchant account', '2021-01-19 00:19:46', '2021-02-17 05:06:19', 4),
(2, 'Tom Creation', '98456343', 'Md. Tom', '01414762499', '1', 231324, '2', 'Bank', '255.151.222.2332', 'DBBL, Panthapath Branch', '2021-01-19 00:19:46', '2021-02-15 05:36:10', 0),
(3, 'ABC Mart', '9826272', 'Jalil Uddin', '01618767685', '2', 2000, '2', 'Bank', 'SMSA1232', 'Islami Bank, Panthapath Branch', '2021-01-19 00:19:46', '2021-01-25 22:47:08', 0),
(4, 'Taher Store', '4532424', 'Taher Ali', '01918762435', '2', 12000, '1', 'bKash', '01518762435', 'Pay through bKash Merchant account', '2021-01-19 00:19:46', '2021-01-19 00:19:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactionID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_payable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardType` int(11) DEFAULT NULL,
  `apprCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateTime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disburse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'n/a',
  `batch_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transactionID`, `store_id`, `location_id`, `customer_id`, `final_payable`, `cardNo`, `cardType`, `apprCode`, `dateTime`, `is_disburse`, `created_at`, `updated_at`, `invoice_no`, `batch_id`) VALUES
(1, 'DM-925274', '1', '1', '1', '100', '918762435', 1, '987554', '2011-09-03 07:22:00', '0', '2020-01-19 00:34:29', '2021-02-14 00:42:46', '', NULL),
(2, 'DM-182493', '1', '1', '12', '123', '12345677654321', 2, '1234321', '2021-01-19', '0', '2021-02-01 06:26:04', '2021-02-14 00:09:10', 'n/a', NULL),
(3, 'DM-123223', '2', '1', '11', '2211', '1234567', 1, '21313', '2021--03-11', '0', '2021-02-01 06:28:10', '2021-02-17 01:17:26', 'n/a', NULL),
(27, 'DM-494730', '1', '1', '3', '1100', '12345677654321', 2, '1234321', '2021-01-11T15:59', '0', '2021-01-26 04:00:58', '2021-02-14 00:09:10', '12126011001', NULL),
(28, 'DM-182497', '1', '1', '18', '1400', '12345677654321', 3, '1234321', '2021-01-19T16:02', '1', '2021-01-26 04:02:36', '2021-02-15 00:59:18', '12126011001', 'DM-423635'),
(29, 'DM-637798', '1', '1', '19', '141', '141414141', 3, 'Proident autem blan', '2008-03-27T22:58', '1', '2021-02-12 10:56:55', '2021-02-15 03:58:06', '12112020402', 'DM-582579'),
(30, 'DM-790257', '4', '2', '3', '1250', '12345677654321', 3, '1234321', '2021-02-12T23:02', '1', '2021-02-12 11:02:12', '2021-02-15 00:35:52', '22112020502', NULL),
(31, 'DM-440618', '1', '1', '20', '1444', '1441417575', 2, '4747474', '2013-08-09T09:14', '1', '2021-02-12 13:54:15', '2021-02-15 03:58:06', '12112020702', 'DM-582579'),
(32, 'DM-897040', '3', '2', '3', '1111111111', '12345677654321', 3, '1234321', '2021-02-13T02:49', '0', '2021-02-12 14:49:07', '2021-02-12 14:49:07', '22112020802', NULL),
(33, 'DM-451779', '1', '1', '21', '1500', '12345677654321', 2, '1234321', '2021-02-13T11:11', '0', '2021-02-12 23:13:26', '2021-02-15 05:39:14', '12113020502', 'DM-994809'),
(34, 'DM-223490', '2', '1', '3', '1678', '12345677654321', 4, '1234321', '2021-02-13T11:14', '0', '2021-02-12 23:15:57', '2021-02-17 01:17:26', '12113020502', NULL),
(35, 'DM-678094', '1', '1', '3', '12345', '12345677654321', 2, '1234321', '2020-01-14T16:19', '0', '2021-02-14 04:22:03', '2021-02-14 04:22:03', '12114021002', NULL),
(36, 'DM-297486', '1', '1', '3', '1000', '12345677654321', 2, '1234321', '2021-02-14T16:23', '0', '2021-02-14 04:24:07', '2021-02-15 05:39:14', '12114021002', 'DM-994809'),
(37, 'DM-725680', '1', '1', '3', '12', '12345677654321', 2, '1234321', '2021-02-14T17:45', '1', '2021-02-14 05:46:06', '2021-02-15 00:59:18', '12114021102', 'DM-423635'),
(38, 'DM-408900', '2', '1', '3', '1000', '12345677654321', 4, '1234321', '2021-02-14T17:47', '0', '2021-02-14 05:47:17', '2021-02-14 05:47:17', '12114021102', NULL),
(39, 'DM-473723', '1', '1', '3', '1200', '12345677654321', 4, '1234321', '2021-02-14T17:50', '0', '2021-02-14 05:50:45', '2021-02-15 00:42:33', '12114021102', NULL),
(40, 'DM-992660', '1', '1', '3', '1200', '12345677654321', 4, '1234321', '2021-02-14T17:50', '0', '2021-02-14 06:01:32', '2021-02-14 06:01:32', '12114021202', NULL),
(41, 'DM-495877', '1', '1', '3', '1300', '12345677654321', 2, '1234321', '2021-02-15T12:37', '0', '2021-02-15 00:37:07', '2021-02-15 00:37:07', '12115020602', NULL),
(42, 'DM-965423', '1', '1', '3', '1400', '12345677654321', 1, '1234321', '2021-02-15T12:38', '0', '2021-02-15 00:38:38', '2021-02-15 00:38:38', '12115020602', NULL),
(43, 'DM-383910', '3', '2', '22', '1200', '21213', 2, '122', '1978-10-06T21:40', '0', '2021-02-15 05:25:29', '2021-02-15 05:25:29', '22115021102', NULL),
(44, 'DM-286474', '3', '2', '3', '12345', '12345677654321', 2, '1234321', '2021-02-15T17:25', '0', '2021-02-15 05:25:55', '2021-02-15 05:25:55', '22115021102', NULL),
(45, 'DM-496541', '3', '2', '3', '12345', '12345677654321', 2, '1234321', '2021-02-15T17:25', '0', '2021-02-15 05:26:46', '2021-02-15 05:26:46', '22115021102', NULL),
(46, 'DM-666924', '3', '2', '3', '12345', '12345677654321', 2, '1234321', '2021-02-15T17:25', '0', '2021-02-15 05:28:21', '2021-02-15 05:28:21', '22115021102', NULL),
(47, 'DM-897268', '3', '2', '3', '12345', '12345677654321', 2, '1234321', '2021-02-15T17:25', '0', '2021-02-15 05:28:31', '2021-02-15 05:28:31', '22115021102', NULL),
(48, 'DM-199771', '3', '2', '3', '12345', '12345677654321', 2, '1234321', '2021-02-15T17:25', '0', '2021-02-15 05:28:42', '2021-02-15 05:28:42', '22115021102', NULL),
(49, 'DM-363214', '1', '2', '3', '12345', '12345677654321', 2, '1234321', '2021-02-15T17:25', '0', '2021-02-15 05:28:51', '2021-02-15 05:28:51', '22115021102', NULL),
(50, 'DM-124691', '1', '2', '3', '1200', '09876543456', 2, '08767', '2015-08-26T11:14', '0', '2021-02-15 05:29:48', '2021-02-15 05:29:48', '22115021102', NULL),
(51, 'DM-860836', '1', '2', '3', '1200', '09876543456', 2, '08767', '2015-08-26T11:14', '0', '2021-02-15 05:30:04', '2021-02-15 05:30:04', '22115021102', NULL),
(52, 'DM-712588', '1', '2', '3', '1200', '09876543456', 2, '08767', '2015-08-26T11:14', '0', '2021-02-15 05:30:39', '2021-02-15 05:30:39', '22115021102', NULL),
(53, 'DM-996322', '1', '2', '3', '1200', '09876543456', 2, '08767', '2015-08-26T11:14', '0', '2021-02-15 05:31:25', '2021-02-15 05:31:25', '22115021102', NULL),
(54, 'DM-786641', '1', '2', '3', '1200', '09876543456', 2, '08767', '2015-08-26T11:14', '0', '2021-02-15 05:32:49', '2021-02-15 05:32:49', '22115021102', NULL),
(55, 'DM-817772', '1', '1', '3', '1200', '09876543456', 2, '08767', '2015-08-26T11:14', '0', '2021-02-15 05:33:06', '2021-02-15 05:33:06', '12115021102', NULL),
(56, 'DM-753993', '1', '1', '18', '1200', '12', 1, '212', '2009-10-27T02:02', '0', '2021-02-15 05:33:44', '2021-02-15 05:33:44', '12115021102', NULL),
(57, 'DM-820196', '3', '2', '18', '1200', '12', 1, '212', '2009-10-27T02:02', '0', '2021-02-15 05:34:06', '2021-02-15 05:34:06', '22115021102', NULL),
(58, 'DM-763623', '3', '2', '18', '1200', '12', 1, '212', '2009-10-27T02:02', '0', '2021-02-15 05:34:57', '2021-02-15 05:34:57', '22115021102', NULL),
(59, 'DM-631066', '3', '2', '18', '1200', '12', 1, '212', '2009-10-27T02:02', '0', '2021-02-15 05:35:38', '2021-02-15 05:35:38', '22115021102', NULL),
(60, 'DM-107654', '3', '2', '18', '1200', '12', 1, '212', '2009-10-27T02:02', '0', '2021-02-15 05:36:10', '2021-02-15 05:36:10', '22115021102', NULL),
(61, 'DM-693910', '1', '1', '23', '12345', 'u34ih5buy6g543', 3, 'Aut et saepe at quia', '1970-11-24T17:02', '0', '2021-02-17 00:57:35', '2021-02-17 00:57:35', '12117020602', NULL),
(62, 'DM-553834', '2', '1', '3', '12345', '12345677654321', 1, '12345', '2021-02-17T17:03', '0', '2021-02-17 05:03:27', '2021-02-17 05:03:27', '12117021102', NULL),
(63, 'DM-758301', '1', '1', '3', '123', 'Inventore eu aperiam', 1, 'Iusto culpa molliti', '2010-09-20T05:02', '0', '2021-02-17 05:06:19', '2021-02-17 05:06:19', '12117021102', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `address`, `user_role_id`, `role_name`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '017000000000', 'admin@admin.com', 'Dhaka', 1, 'Super Admin', '$2y$10$cxa0e5vI2AYra6DCQmhW3OrMk0pU1Z2WZ7wsO1nAY2dEGKU1ffxb.', 1, NULL, '2021-01-18 04:10:19', '2021-01-18 04:10:19'),
(2, 'User', '019000000000', 'user@ekshop.com', 'Dhaka', 0, 'User', '$2y$10$CAkuEUyKIjTW/ked7DUO1.wZ4lmsorcH1yiGhLkF09T0JBm1DZQFK', 1, NULL, '2021-01-18 04:10:19', '2021-01-18 04:10:19'),
(3, 'Admin', '016000000000', 'ladmin@gmail.com', 'Dhaka', 2, 'Admin', '$2y$10$7BBSMLzMdYnxl4IXHm.KwO6EVSVpRgX4EDlb3qCdHZSPGudX/xHtG', 1, NULL, '2021-01-18 04:10:19', '2021-01-18 04:10:19'),
(4, 'Operator', '015000000000', 'operator@ekshop.com', 'Dhaka', 3, 'Operator', '$2y$10$FRVFM8gtn47UiTJx1kpdFeA.OI7Sw4qvZsivEnd0Yfsi791IjKGv6', 1, NULL, '2021-01-18 04:10:19', '2021-01-18 04:10:19'),
(5, 'Justine Kelly', '518', 'xevug@mailinator.com', 'Esse impedit enim i', 3, 'Operator', '$2y$10$vcj1s5V3TLtFa8oQzVoB9uKm9enYTQFhNnfEn16Km6Zaf2U78Lk22', 1, NULL, '2021-01-24 01:04:58', '2021-02-12 14:50:33');

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
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `disbursements`
--
ALTER TABLE `disbursements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=647;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
