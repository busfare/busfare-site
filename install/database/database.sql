-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 08:52 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verify_token`, `phone`, `photo`, `status`, `password`, `remember_token`, `role`, `verify_code`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '', '09000000', '18454587891642651833.jpg', 1, '$2a$12$XL0y.w8hk1XyIiXoq3IZk.RTAtyZiEViTxhqsTOBYuXBqkCL7Zj1y', 'V9sCQesNTDch1qZoJaKQUEnV71MrDkZ0ag30zSDJ0fRaUdivYk7UN1D222UH', 'super-admin', 726094, NULL, '2022-02-14 22:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `api_creds`
--

CREATE TABLE `api_creds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` int(11) NOT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `photo`, `description`, `views`, `status`, `created_at`, `updated_at`) VALUES
(66, 8, 'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove', 'when-she-reached-the-first-hills-of-the-italic-mountains-she-had-a-last-view-back-on-the-skyline-of-her-hometown-bookmarksgrove', '9222363811644728965.jpg', '<p style=\"text-align: justify;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>', 0, 1, '2022-02-12 23:09:25', '2022-03-02 21:05:18'),
(67, 9, 'She packed her seven versalia, put her initial into the belt and made herself on the way', 'she-packed-her-seven-versalia-put-her-initial-into-the-belt-and-made-herself-on-the-way', '16948648621645511038.jpg', '<p style=\"text-align: justify;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></p>', 0, 1, '2022-02-12 23:11:32', '2022-03-02 21:04:15'),
(68, 10, 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.', 'far-far-away-behind-the-word-mountains-far-from-the-countries-vokalia-and-consonantia', '609659891645511084.jpg', '<p style=\"text-align:justify;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n', 3, 1, '2022-02-22 00:24:44', '2022-03-14 03:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(8, 'News', 'news', 1, NULL, NULL),
(9, 'Announces', 'announces', 1, NULL, NULL),
(10, 'Statistics', 'statistics', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `name`, `slug`, `data`, `created_at`, `updated_at`) VALUES
(1, 'Transfer Money', 'transfer-money', '{\"percent_charge\":\"2\",\"fixed_charge\":\"2\",\"minimum\":\"1\",\"maximum\":\"1000\",\"daily_limit\":\"2000\",\"monthly_limit\":\"5000\"}', '2021-12-20 06:20:33', '2022-03-02 23:32:23'),
(2, 'Exchange Money', 'money-exchange', '{\"percent_charge\":\"1\",\"fixed_charge\":\"2\",\"minimum\":\"10\",\"maximum\":\"1000\"}', '2021-12-20 06:20:33', '2021-12-20 03:06:30'),
(3, 'Request Money', 'request-money', '{\"percent_charge\":\"1\",\"fixed_charge\":\"2\",\"minimum\":\"10\",\"maximum\":\"2000\"}', '2021-12-20 06:20:33', '2022-03-03 00:30:39'),
(4, 'Driver Payment', 'driver-payment', '{\"percent_charge\":\"5\",\"fixed_charge\":\"2\"}', '2021-12-20 06:20:33', '2022-03-02 23:32:43'),
(5, 'Create Voucher', 'create-voucher', '{\"percent_charge\":\"2\",\"fixed_charge\":\"2\",\"minimum\":\"10\",\"maximum\":\"2000\",\"commission\":\"10\"}', '2021-12-20 06:20:33', '2022-03-03 00:51:53'),
(6, 'Create Invoice', 'create-invoice', '{\"percent_charge\":\"5\",\"fixed_charge\":\"2\"}', '2021-12-20 06:20:33', '2022-03-02 23:33:11'),
(8, 'Make Escrow', 'make-escrow', '{\"percent_charge\":\"5\",\"fixed_charge\":\"2\"}', '2021-12-20 06:20:33', '2022-03-02 23:33:06'),
(9, 'API Driver Payment', 'api-payment', '{\"percent_charge\":\"5\",\"fixed_charge\":\"2\"}', '2021-12-20 06:20:33', '2022-03-02 23:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_key` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `unique_key`, `name`, `code`, `dial_code`, `currency_id`, `flag`, `created_at`, `updated_at`) VALUES
(1, 190, 'United States', 'US', '+1', 1, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/US.svg', '2022-03-02 21:39:20', '2022-03-02 21:39:20'),
(2, 67, 'Germany', 'DE', '+49', 4, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DE.svg', '2022-03-02 21:39:30', '2022-03-02 21:39:30'),
(3, 189, 'United Kingdom', 'GB', '+44', 5, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GB.svg', '2022-03-02 21:39:42', '2022-03-02 21:39:42'),
(4, 135, 'Nigeria', 'NG', '+234', 13, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NG.svg', '2022-03-02 21:39:55', '2022-03-02 21:39:55'),
(5, 15, 'Bangladesh', 'BD', '+880', 6, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BD.svg', '2022-03-02 21:40:06', '2022-03-02 21:40:06'),
(6, 92, 'Japan', 'JP', '+81', 11, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/JP.svg', '2022-03-02 21:40:23', '2022-03-02 21:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default` int(10) UNSIGNED NOT NULL COMMENT '1 => default, 0 => not default',
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(10) UNSIGNED NOT NULL COMMENT '1 => fiat, 2 => crypto',
  `status` int(10) UNSIGNED NOT NULL COMMENT '1 => active, 0 => inactive',
  `rate` decimal(20,10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `default`, `symbol`, `code`, `curr_name`, `type`, `status`, `rate`, `created_at`, `updated_at`) VALUES
(1, 1, '$', 'USD', 'United State Dollar', 1, 1, '1.0000000000', '2021-12-20 04:12:58', '2022-02-16 03:02:37'),
(4, 0, '€', 'EUR', 'European Currency', 1, 1, '0.8790350000', '2021-12-20 04:12:58', '2022-02-16 03:02:35'),
(5, 0, '£', 'GBP', 'Greate British Pound', 1, 1, '0.7376150000', '2021-12-21 00:45:51', '2022-02-16 03:02:35'),
(6, 0, '৳', 'BDT', 'Bangladeshi Taka', 1, 1, '85.9261900000', '2021-12-21 00:48:53', '2022-02-16 03:02:35'),
(9, 0, '₿', 'BTC', 'Bitcoin', 2, 1, '0.0000225947', '2021-12-21 00:48:53', '2022-02-16 03:02:36'),
(10, 0, '₹', 'INR', 'Indian Rupee', 1, 1, '75.0096000000', '2022-01-26 02:28:23', '2022-02-16 03:02:35'),
(11, 0, '¥', 'JPY', 'Japanese Yen', 1, 1, '115.6425010000', '2022-01-26 02:30:04', '2022-02-16 03:02:35'),
(13, 0, '₦', 'NGN', 'Nigerian naira', 1, 1, '415.7594650000', '2022-02-06 05:41:35', '2022-02-16 03:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` tinyint(1) NOT NULL,
  `user_info` text DEFAULT NULL,
  `status` varchar(111) DEFAULT NULL,
  `txn_id` varchar(222) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `method` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `invoice` int(11) DEFAULT NULL,
  `currency_info` text NOT NULL,
  `trx_details` varchar(255) DEFAULT NULL,
  `charge` decimal(20,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE `disputes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `escrow_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified` tinyint(1) DEFAULT NULL,
  `verification_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_code` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_status` tinyint(1) NOT NULL DEFAULT 0,
  `kyc_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_reject_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_fa_status` tinyint(1) NOT NULL DEFAULT 0,
  `two_fa` tinyint(1) DEFAULT 0,
  `two_fa_code` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_payments`
--

CREATE TABLE `driver_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `driver_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `amount` decimal(20,10) NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_hook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `mode` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `codes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `sms`, `codes`, `status`) VALUES
(1, 'transfer_money', 'Money has been transferred successfully.', '<p>Hello <b>{name}</b>,</p><p>Transfer money <b>{amount} {curr}</b> to <b>{trans_to}</b> is successful.</p><p><b><u><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Transfer details:</font></u></b></p><ul><li style=\"margin-left: 25px;\">Amount :&nbsp; <b>{amount} {curr}</b></li><li style=\"margin-left: 25px;\">Charge: <b>{charge} {curr}</b></li><li style=\"margin-left: 25px;\">Remaining Balance : <b>{after_balance} {curr}</b></li><li style=\"margin-left: 25px;\">Transaction ID : <b>{trnx}</b></li></ul><p>Time : {date_time}</p><p><br></p>', 'Hello {name},\n\nTransfer money {amount} {curr} to {trans_to} is successful.\n\nTransfer details:\n\nAmount :  {amount} {curr}\nCharge: {charge} {curr}\nRemaining Balance : {after_balance} {curr}\nTransaction ID : {trnx}\nTime : {date_time}\n\n', '{\"name\":\"User name\",\"trnx\":\"Transaction Id\",\"amount\":\"Amount\",\"curr\":\"currency code\",\"charge\":\"transfer charge\",\"after_balance\":\"remaining balance\",\"trans_to\":\"transfer to whom\",\"date_time\":\"Date and Time\"}', 1),
(2, 'received_money', 'Money received successfully', '<p>Hello&nbsp;<span style=\"font-weight: bolder;\">{name}</span>,</p><p>Received money&nbsp;<span style=\"font-weight: bolder;\">{amount} {curr}</span>&nbsp; from&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{trans_from}</span>&nbsp;is successful.</p><p><span style=\"font-weight: bolder;\"><u><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Transfer details:</font></u></span></p><ul><li style=\"margin-left: 25px;\">Amount :&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{amount} {curr}</span></li><li style=\"margin-left: 25px;\">Charge:&nbsp;<span style=\"font-weight: bolder;\">{charge} {curr}</span></li><li style=\"margin-left: 25px;\">Remaining Balance :&nbsp;<span style=\"font-weight: bolder;\">{after_balance} {curr}</span></li><li style=\"margin-left: 25px;\">Transaction ID :&nbsp;<span style=\"font-weight: bolder;\">{trnx}</span></li></ul><p>Time : {date_time}</p><p><br></p>', 'Hello {name},\n\nReceived money {amount} {curr}  from  {trans_from} is successful.\n\nTransfer details:\n\nAmount :  {amount} {curr}\nCharge: {charge} {curr}\nRemaining Balance : {after_balance} {curr}\nTransaction ID : {trnx}\nTime : {date_time}', '{\"trnx\":\"Transaction Id\",\"amount\":\"Amount\",\"curr\":\"currency code\",\"charge\":\"transfer charge\",\"after_balance\":\"remaining balance\",\"trans_from\":\"received from whom\",\"date_time\":\"Date and Time\"}', 1),
(6, 'exchange_money', 'Money exchanged successfully', '<p>Hello&nbsp;<span style=\"font-weight: bolder;\">{name}</span>,</p><p>Currency Exchange <span style=\"font-weight: bolder;\">{from_amount} {from_curr}</span>&nbsp; to <b>{to_amount}</b>&nbsp;<span style=\"font-weight: 700;\">{to_curr}</span>&nbsp;is successful.</p><p><span style=\"font-weight: bolder;\"><u><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Exchange details:</font></u></span></p><ul><li style=\"margin-left: 25px;\">Amount&nbsp; from&nbsp;<span style=\"font-weight: 700;\">{from_curr}</span>:&nbsp;&nbsp;<span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">{from_amount}</span>&nbsp;{from_curr}</span></li><li style=\"margin-left: 25px;\">Amount from <b>{to_curr}&nbsp; &nbsp; :&nbsp;&nbsp;</b><span style=\"font-weight: bolder;\">{to_amount}</span>&nbsp;<span style=\"font-weight: 700;\">{to_curr}</span></li><li style=\"margin-left: 25px;\">Charge:&nbsp;<span style=\"font-weight: bolder;\">{charge} {from_curr}</span></li></ul><p>Time : {date_time}</p><p><br></p>', 'Hello {name},\n\nCurrency Exchange {from_amount} {from_curr}  to {to_amount} {to_curr} is successful.\n\nExchange details:\n\nAmount  from {from_curr}:  {from_amount} {from_curr}\nAmount from {to_curr}    :  {to_amount} {to_curr}\nCharge: {charge} {from_curr}\nTime : {date_time}', '{\"from_curr\":\"from currency\",\"to_curr\":\"to currency\",\"from_amount\":\"from currency amount\",\"to_amount\":\"to currency amount\",\"charge\":\"exchange charge\",\"data_time\":\"data and time\"}', 1),
(7, 'accept_request_money', 'Money request accepted', '<p>Hello&nbsp;<span style=\"font-weight: bolder;\">{name}</span>,</p><p>Your money request <b>{amount}</b> <b>{curr}</b> to <b>{to_user}</b> has been accepted. Check your new balance.&nbsp;</p><p><span style=\"font-weight: bolder;\"><u><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Transaction details:</font></u></span></p><ul><li style=\"margin-left: 25px;\">Amount&nbsp; :&nbsp;&nbsp;<span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">{amount}</span>&nbsp;{curr}</span></li><li style=\"margin-left: 25px;\">Charge:&nbsp;<span style=\"font-weight: bolder;\">{charge} {curr}</span></li><li style=\"margin-left: 25px;\">Transaction ID : <b>{trnx}</b></li></ul><p>Time : {date_time}</p><p><br></p>', 'Hello {name},\n\nYour money request {amount} {curr} to {to_user} has been accepted. Check your new balance. \n\nTransaction details:\n\nAmount  :  {amount} {curr}\nCharge: {charge} {curr}\nTransaction ID : {trnx}\nTime : {date_time}', '{\"amount\":\"request amount\",\"trnx\":\"transaction id\",\"to_user\":\"to whom request sent\",\"charge\":\"charge\",\"date_time\":\"date and time\",\"curr\":\"currency\"}', 1),
(8, 'make_payment', 'Make Payment', '<p>Hello&nbsp;<span style=\"font-weight: bolder;\">{name}</span>,</p><p>Your payment of&nbsp;<b>{amount}</b> <b>{curr}</b> to <b>{to_driver}</b> is successful. .&nbsp;</p><p><span style=\"font-weight: bolder;\"><u><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Payment details:</font></u></span></p><ul><li style=\"margin-left: 25px;\">Amount&nbsp; :&nbsp;&nbsp;<span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">{amount}</span>&nbsp;{curr}</span></li><li style=\"margin-left: 25px;\">Transaction ID : <b>{trnx}</b></li><li style=\"margin-left: 25px;\">Remaining balance<b> : {after_balance}</b></li></ul><p>Time : {date_time}</p><p><br></p>', 'Hello {name},\n\nYour payment of {amount} {curr} to {to_driver} is successful. . \n\nPayment details:\n\nAmount  :  {amount} {curr}\nTransaction ID : {trnx}\nRemaining balance : {after_balance}\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"to_driver\":\"To driver\",\"curr\":\"currency\",\"after_balance\":\"after payment remaining balance\",\"data_time\":\"date and time\"}', 1),
(9, 'receive_payment', 'Receive Payment', '<p>Hello&nbsp;<span style=\"font-weight: bolder;\">{name}</span>,</p><p>You have received payment of&nbsp;<b>{amount}</b> <b>{curr}</b>&nbsp;from&nbsp;<b>{from_user}</b>&nbsp; successfully. .&nbsp;</p><p><span style=\"font-weight: bolder;\"><u><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Payment details:</font></u></span></p><ul><li style=\"margin-left: 25px;\">Amount&nbsp; :&nbsp;&nbsp;<span style=\"font-weight: bolder;\"><span style=\"font-weight: bolder;\">{amount}</span>&nbsp;{curr}</span></li><li style=\"margin-left: 25px;\">Transaction ID : <b>{trnx}</b></li><li style=\"margin-left: 25px;\">New balance<b> : {after_balance}</b></li></ul><p>Time : {date_time}</p><p><br></p>', 'Hello {name},\n\nYou have received payment of {amount} {curr} from {from_user}  successfully. . \n\nPayment details:\n\nAmount  :  {amount} {curr}\nTransaction ID : {trnx}\nNew balance : {after_balance}\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"from_user\":\"From user\",\"curr\":\"currency\",\"after_balance\":\"after geting payment remaining balance\",\"data_time\":\"date and time\",\"charge\":\"charge\"}', 1),
(11, 'received_invoice_payment', 'Received Invoice Payment', '<p>Hello {name},\r\n</p><p>\r\nYou have received an invoice ({inv_num}) payment of {amount} {curr} from {from_user}  successfully. . </p><p><b>\r\n\r\nPayment details:</b></p><ul><li>\r\nInvoice Number : {inv_num}</li><li>\r\nAmount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}</li><li>\r\nNew balance : {after_balance}</li></ul><p>Time : {date_time}</p>', 'Hello {name},\r\n\r\nYou have received an invoice ({inv_num}) payment of {amount} {curr} from {from_user}  successfully. . \r\n\r\nPayment details:\r\nInvoice Number : {inv_num}\r\nAmount  :  {amount} {curr}\r\nCharge  : {charge} {curr}\r\nTransaction ID : {trnx}\r\nNew balance : {after_balance}\r\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"from_user\":\"From user\",\"curr\":\"currency\",\"after_balance\":\"after geting payment remaining balance\",\"data_time\":\"date and time\",\"charge\":\"charge\",\"inv_num\":\"invoice number\"}', 1),
(12, 'add_balance', 'Balance added by system', '<p>Hello {name},\r\n</p><p>\r\nBalance added {amount} {curr} in your wallet ({curr}) by system successfully.\r\n</p><p>\r\nTransaction details:\r\n</p><ul><li>Amount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>New balance : {after_balance}\r\n</li><li>Time : {date_time}</li></ul>', 'Hello {name},\r\n\r\nBalance added {amount} {curr} in your wallet ({curr}) from system successfully.\r\n\r\nTransaction details:\r\nAmount  :  {amount} {curr}\r\nTransaction ID : {trnx}\r\nNew balance : {after_balance}\r\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"after_balance\":\"after geting payment remaining balance\",\"data_time\":\"date and time\"}', 1),
(13, 'subtract_balance', 'Balance subtracted by system', '<p>Hello {name},\r\n</p><p>\r\nBalance subtracted {amount} {curr} from your wallet ({curr}) by system successfully.\r\n</p><p>\r\nTransaction details:\r\n</p><ul><li>Amount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>New balance : {after_balance}\r\n</li><li>Time : {date_time}</li></ul>', 'Hello {name},\r\n\r\nBalance subtracted {amount} {curr} from your wallet ({curr}) by system successfully.\r\n\r\nTransaction details:\r\nAmount  :  {amount} {curr}\r\nTransaction ID : {trnx}\r\nNew balance : {after_balance}\r\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"after_balance\":\"after geting payment remaining balance\",\"data_time\":\"date and time\"}', 1),
(14, 'accept_withdraw', 'Withdraw request accepted', '<p>Hello <b>{name}</b>,\r\n</p><p>\r\nYour withdraw request <b>{amount} {curr}</b> is accepted via <b>{method}</b>.\r\n</p><p>\r\nWithdraw details:\r\n</p><ul><li>Amount  :  {amount} {curr}\r\n</li><li>Charge  : {charge}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>Withdraw Method : {method}\r\n</li><li>Time : {date_time}</li></ul>', 'Hello {name},\r\n\r\nYour withdraw request {amount} {curr} is accepted via {method}.\r\n\r\nWithdraw details:\r\nAmount  :  {amount} {curr}\r\nCharge  : {charge}\r\nTransaction ID : {trnx}\r\nWithdraw Method : {method}\r\nTime : {date_time}', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"charge\":\"charge\",\"method\":\"Withdraw method\"}', 1),
(15, 'reject_withdraw', 'Withdraw request rejected', '<p>Hello {name},\r\n</p><p>\r\nYour withdraw request {amount} {curr} is rejected. The withdraw amount {amount} {curr} has been returned to your balance.</p><p>\r\nWithdraw details:\r\n</p><ul><li>Amount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>Withdraw Method : {method}\r\n</li></ul><p><u>\r\nRejection reason </u>:\r\n</p><p>{reason}\r\n</p><p>\r\nTime : {date_time}\r\n</p>', 'Hello {name},\n\nYour withdraw request {amount} {curr} is rejected.\n\nWithdraw details:\nAmount  :  {amount} {curr}\nTransaction ID : {trnx}\nWithdraw Method : {method}\n\nRejection reason :\n{reason}\n\nTime : {date_time}\n', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"method\":\"Withdraw method\",\"reason\":\"reject reason\"}', 1),
(16, 'escrow_return', 'Escrow fund returned', '<p>Hello {name},\r\n</p><p>\r\nYour escrow fund {amount} {curr} has been added to your balance.\r\n</p><p>\r\nTransaction details:\r\n</p><ul><li>\r\nAmount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx} .</li><li>Time : {date_time}\r\n</li></ul>', 'Hello {name},\r\n\r\nYour escrow fund {amount} {curr} has been returned to your balance.\r\n\r\nTransaction details:\r\n\r\nAmount  :  {amount} {curr}\r\nTransaction ID : {trnx}\r\nTime : {date_time}\r\n', '{\"amount\":\"return  amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\"}', 1),
(17, 'deposit_approve', 'Approve Deposit', '<p>Hello {name},\r\n</p><p>\r\nYour deposit request {amount} {curr} via {method} is approved.\r\n</p><p><b>\r\nTransaction details:\r\n</b></p><ul><li>\r\nAmount  :  {amount} {curr}\r\n</li><li>Charge  : {charge} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>New Balance  : {new_balance} {curr}</li></ul><p>Time : {date_time}\r\n</p>', 'Hello {name},\n\nYour deposit request {amount} {curr} via {method} is approved.\n\nTransaction details:\n\nAmount  :  {amount} {curr}\nCharge  : {charge} {curr}\nTransaction ID : {trnx}\nNew Balance  : {new_balance}\nTime : {date_time}\n', '{\"amount\":\"deposit amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"method\":\"deposit method name\",\"new_balance\":\"New balance\",\"charge\":\"Charge\"}', 1),
(18, 'deposit_reject', 'Reject Deposit', '<p>Hello {name},\r\n</p><p>\r\nYour deposit request {amount} {curr} via {method} is rejected.\r\n</p><p><b>\r\nTransaction details:\r\n</b></p><ul><li>\r\nAmount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>Charge  : {charge}\r\n</li><li>\r\nReject Reason :\r\n{reject_reason}\r\n</li></ul><p>\r\nTime : {date_time}\r\n</p>', 'Hello {name},\r\n\r\nYour deposit request {amount} {curr} via {method} is rejected.\r\n\r\nTransaction details:\r\n\r\nAmount  :  {amount} {curr}\r\nTransaction ID : {trnx}\r\nCharge  : {charge}\r\n\r\nRject Reason :\r\n{reject_reason}\r\n\r\nTime : {date_time}\r\n', '{\"amount\":\"deposit amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"method\":\"deposit method name\",\"charge\":\"charge\",\"reject_reason\":\" reason of reject\"}', 1),
(19, 'api_payment_user', 'Payment confirmation', '<p>Hello {name},\r\n</p><p>\r\nYour payment {amount} {curr} to {driver} is successful.\r\n</p><p><b>\r\nTransaction details:\r\n</b></p><ul><li>\r\nAmount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>Charge  : {charge}\r\n</li><li> Time : {date_time}\r\n\r\n</li></ul>', 'Hello {name},\n\nYour payment {amount} {curr} to {driver} is successful.\n\nTransaction details:\n\nAmount  :  {amount} {curr}\nTransaction ID : {trnx}\nTime : {date_time}\n', '{\"amount\":\"deposit amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"driver\":\"driver\"}', 1),
(20, 'api_payment_driver', 'Payment confirmation', '<p>Hello {name},\r\n</p>\r\n\r\n<p>\r\nYour have successfully received payment {amount} {curr} from {user}.\r\n</p>\r\n\r\n<p><b>\r\nTransaction details:\r\n</b></p>\r\n\r\n<ul><li>\r\nAmount  :  {amount} {curr}\r\n</li><li>Transaction ID : {trnx}\r\n</li><li>Charge  : {charge}\r\n</li><li><p> Time : {date_time}</p>\r\n\r\n</li></ul>', 'Hello {name},\n\nYour have successfully received payment {amount} {curr} from {user}.\n\nTransaction details:\n\nAmount  :  {amount} {curr}\nTransaction ID : {trnx}\nCharge  : {charge}\nTime : {date_time}\n', '{\"amount\":\"payment amount\",\"trnx\":\"Transaction ID\",\"curr\":\"currency\",\"data_time\":\"date and time\",\"charge\":\"charge\",\"user\":\"from user\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `escrows`
--

CREATE TABLE `escrows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trnx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(20,10) NOT NULL,
  `pay_charge` tinyint(1) NOT NULL COMMENT '1 = sender pay charge, 0 = receiver pa charge',
  `charge` decimal(20,10) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = on-hold, 1 = release, 3 = disputed\r\n',
  `dispute_created` int(11) DEFAULT NULL,
  `returned_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchange_money`
--

CREATE TABLE `exchange_money` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trnx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_currency` int(11) NOT NULL,
  `to_currency` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `charge` decimal(20,10) NOT NULL,
  `from_amount` decimal(20,10) NOT NULL,
  `to_amount` decimal(20,10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `curr_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `curr_sym` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawk` tinyint(4) NOT NULL DEFAULT 0,
  `tawk_id` varchar(222) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verify` tinyint(4) DEFAULT 0,
  `is_cookie` tinyint(4) NOT NULL DEFAULT 0,
  `cookie_btn_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_maintenance` tinyint(4) DEFAULT 0,
  `maintenance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT 1,
  `kyc` tinyint(1) NOT NULL DEFAULT 1,
  `sms_notify` tinyint(1) NOT NULL DEFAULT 1,
  `email_notify` tinyint(1) NOT NULL DEFAULT 1,
  `allowed_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha` tinyint(1) NOT NULL DEFAULT 0,
  `recaptcha_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fiat_access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crypto_access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_fa` tinyint(1) NOT NULL DEFAULT 1,
  `menu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `curr_code`, `curr_sym`, `logo`, `header_logo`, `favicon`, `title`, `loader`, `smtp_host`, `mail_type`, `smtp_port`, `smtp_user`, `smtp_pass`, `mail_encryption`, `from_email`, `from_name`, `theme_color`, `is_tawk`, `tawk_id`, `is_verify`, `is_cookie`, `cookie_btn_text`, `cookie_text`, `is_maintenance`, `maintenance`, `registration`, `kyc`, `sms_notify`, `email_notify`, `allowed_email`, `contact_no`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `fiat_access_key`, `crypto_access_key`, `cookie`, `two_fa`, `menu`) VALUES
(1, 'USD', '$', '1571567292logo.png', '1558572841646281442.png', '5480339181644482400.png', 'Genius Admin', '1564224328loading3.gif', 'mail.dev.geniusocean.net', 'php_mailer', '465', 'test@dev.geniusocean.net', 'QQ-cwi{%;F2~', 'ssl', 'geniustest11@gmail.com', 'GeniusTest', '5B53F1', 0, '6124fa49d6e7610a49b1c136/1fds73cxyZ', 0, 0, 'cookie_btn_text', NULL, 0, 'Site Down', 1, 1, 0, 0, NULL, '+88000000000', 1, '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI', NULL, 'e02535b70998cade1035fbe04e50b8dd', '91b63a445b659202b6449e8611f231f9', '{\"status\":\"1\",\"button_text\":\"Allow Cookie\",\"cookie_text\":\"Our site use cookies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the site and improve your experience.\"}', 0, '{\"Home\":{\"title\":\"Home\",\"dropdown\":\"no\",\"href\":\"\\/\",\"target\":\"self\"},\"About\":{\"title\":\"About\",\"dropdown\":\"yes\",\"href\":\"\\/about\",\"target\":\"self\"},\"API\":{\"title\":\"API\",\"dropdown\":\"yes\",\"href\":\"\\/api-documentation\",\"target\":\"self\"},\"Blogs\":{\"title\":\"Blogs\",\"dropdown\":\"yes\",\"href\":\"\\/blogs\",\"target\":\"self\"},\"Contact\":{\"title\":\"Contact\",\"dropdown\":\"yes\",\"href\":\"\\/contact\",\"target\":\"self\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` int(11) NOT NULL,
  `invoice_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(20,10) NOT NULL,
  `final_amount` decimal(20,10) NOT NULL,
  `get_amount` decimal(20,10) NOT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 => paid, 0 => not paid',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 => published, 0 => not published , 2 => cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_items`
--

CREATE TABLE `inv_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(20,10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_forms`
--

CREATE TABLE `kyc_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` tinyint(4) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 = input, 2 = file, 3 = textarea',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` int(11) NOT NULL COMMENT '1 = yes, 0 = no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kyc_forms`
--

INSERT INTO `kyc_forms` (`id`, `user_type`, `type`, `label`, `name`, `required`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'NID', 'nid', 1, '2022-01-04 04:54:19', '2022-01-04 23:44:04'),
(2, 1, 2, 'NID Screenshot', 'nid_screenshot', 0, '2022-01-04 04:56:07', '2022-01-04 04:56:07'),
(3, 1, 3, 'Description of address', 'description_of_address', 1, '2022-01-04 04:58:14', '2022-01-04 04:58:14'),
(4, 2, 1, 'Business Name', 'business_name', 1, '2022-01-04 05:04:01', '2022-01-04 05:04:01'),
(6, 2, 1, 'Trade License', 'trade_license', 1, '2022-02-02 00:25:05', '2022-02-02 00:25:05'),
(7, 2, 2, 'License Screenshot', 'license_screenshot', 1, '2022-02-02 00:25:22', '2022-02-02 00:25:22'),
(8, 2, 3, 'Adress of your Business Institute', 'adress_of_your_business_institute', 1, '2022-02-02 00:25:44', '2022-02-02 00:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `code`, `file`) VALUES
(12, 1, 'English', 'en', 'en.json'),
(15, 0, 'Hindi', 'hn', 'hn.json'),
(16, 0, 'Bengali', 'bn', 'bn.json'),
(17, 0, 'Spanish', 'es', 'es.json');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Unknown',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Unknown',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2021_09_25_053316_create_admins_table', 2),
(6, '2021_12_19_042602_create_site_contents_table', 3),
(7, '2021_12_20_032716_create_currencies_table', 4),
(8, '2021_12_20_041453_create_wallets_table', 5),
(9, '2021_12_20_061743_create_charges_table', 6),
(10, '2021_12_21_041624_create_countries_table', 7),
(11, '2021_12_21_095225_create_transactions_table', 8),
(12, '2021_12_22_044221_create_request_money_table', 9),
(13, '2021_12_23_053336_create_exchange_money_table', 10),
(14, '2021_12_28_083959_create_modules_table', 11),
(15, '2021_12_29_035701_create_vouchers_table', 12),
(16, '2021_12_30_050418_create_withdraws_table', 13),
(17, '2021_12_30_111614_create_withdrawals_table', 14),
(18, '2022_01_02_102323_create_payments_table', 15),
(19, '2022_01_03_032851_create_invoices_table', 16),
(20, '2022_01_03_034414_create_inv_items_table', 17),
(21, '2022_01_04_092638_create_k_y_c_s_table', 18),
(22, '2022_01_04_103906_create_kyc_forms_table', 18),
(23, '2022_01_09_035144_create_escrows_table', 19),
(24, '2022_01_09_064757_create_disputes_table', 20),
(25, '2022_01_16_053729_create_api_creds_table', 21),
(26, '2022_01_16_060854_create_driver_payments_table', 22),
(27, '2022_01_17_100203_create_permission_tables', 23),
(28, '2022_01_20_050330_create_sms_gateways_table', 24),
(29, '2022_01_30_031517_create_login_logs_table', 25),
(30, '2022_02_02_091116_create_support_tickets_table', 26),
(31, '2022_02_02_091130_create_ticket_messages_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(3, 'App\\Models\\Admin', 2),
(3, 'App\\Models\\Admin', 3),
(4, 'App\\Models\\Admin', 4);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `kyc` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module`, `status`, `kyc`, `created_at`, `updated_at`) VALUES
(1, 'transfer-money', 0, 0, NULL, '2022-03-03 00:14:02'),
(2, 'request-money', 1, 0, NULL, '2022-03-02 23:58:21'),
(3, 'exchange-money', 1, 0, NULL, '2022-02-16 05:49:16'),
(4, 'make-payment', 1, 0, NULL, '2022-01-20 02:41:19'),
(5, 'create-voucher', 1, 0, NULL, '2022-02-06 04:39:38'),
(6, 'withdraw-money', 1, 0, NULL, '2022-02-02 00:03:33'),
(7, 'create-invoice', 1, 0, NULL, '2022-02-17 01:56:10'),
(8, 'make-escrow', 1, 0, NULL, '2022-01-11 05:46:09'),
(9, 'deposit', 1, 0, NULL, '2022-02-02 00:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `lang`) VALUES
(13, 'About', 'about', '<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><br></span></p>', 'en'),
(14, 'Announcement', 'announcement', '<h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard Lorem Ipsum passage, used since the 1500s</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>', 'en'),
(15, 'ঘোষনা', 'ghoshna', '২০১৬-১৮ সালের দিকে যুক্তরাষ্ট্রে আলোচিত এক নাম ছিলেন অটো ওয়ার্মবিয়ার। রোমাঞ্চের স্বাদ নিতে ২০১৬ সালকে স্বাগত জানাতে গিয়েছিলেন উত্তর কোরিয়া সফরে। কিন্তু সেটাই যে তার জীবনে কাল হয়ে দাঁড়াবে, তা কি কখনো ভাবতে পেরেছিলেন? উত্তর কোরিয়ার প্রোপাগান্ডা পোস্টার চুরির দায়ে তাকে গ্রেপ্তার করা হয়। তারপর অনেক জল ঘোলা হয়। যুক্তরাষ্ট্র-উত্তর কোরিয়া যুদ্ধ লেগে যাওয়ার মতো অবস্থা হয়। তাকে নিয়ে তৎকালীন মার্কিন প্রেসিডেন্ট ডোনাল্ড ট্রাম্প ও উত্তর কোরিয়ার শাসক কিম জং উন উভয়ই নিজেদের স্বার্থে রাজনীতি করেছেন। কিন্তু এতে প্রাণ হারিয়েছেন অটো। তার মৃত্যু নিয়ে ছিল বেশ জল্পনা-কল্পনা। অনুসন্ধানী সাংবাদিক ডগ বক ক্লার্ক ২০১৮ সালে পুরো ঘটনার এক চিত্র তুলে ধরেন। রোর বাংলার পাঠকদের জন্য তার সেই প্রতিবেদন বাংলায় তুলে ধরা হলো।', 'bn');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `gateway_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `trnx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_trx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(20,10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(20,10) DEFAULT NULL,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '0',
  `checkout` int(191) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `subscription` int(191) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `fixed_charge`, `percent_charge`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `status`, `subscription`) VALUES
(2, '(5 - 6 days)', 'Mobile Money', NULL, NULL, '<b>Payment Number: </b>69234324233423', 'Mobile Money', 'manual', NULL, 'mobile-money', '[\"4\"]', 1, 1, 1),
(7, NULL, NULL, NULL, NULL, NULL, 'Mercadopago', 'automatic', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"text\":\"Pay Via MercadoPago\",\"sandbox_check\":1}', 'mercadopago', '[\"1\"]', 1, 1, 1),
(8, NULL, NULL, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"text\":\"Pay Via Authorize.Net\",\"sandbox_check\":1}', 'authorize', '[\"1\",\"4\"]', 1, 1, 1),
(9, NULL, NULL, NULL, NULL, NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"10\"]', 1, 1, 1),
(11, NULL, NULL, NULL, NULL, NULL, 'Paytm', 'automatic', '{\"driver\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your Paytm account.\",\"sandbox_check\":1}', 'paytm', '[\"1\"]', 1, 1, 1),
(12, NULL, NULL, NULL, NULL, NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"1\"]', 1, 1, 1),
(13, NULL, NULL, NULL, NULL, NULL, 'Instamojo', 'automatic', '{\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\",\"text\":\"Pay via your Instamojo account.\",\"sandbox_check\":1}', 'instamojo', '[\"1\",\"10\"]', 1, 1, 1),
(14, NULL, NULL, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\",\"4\"]', 1, 1, 1),
(15, NULL, NULL, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":0,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\",\"4\"]', 1, 1, 1),
(19, '5-6 days', 'Wire Bank', '5.0000000000', '2.00', '<p>Description</p>', 'Wire Bank', 'manual', NULL, 'manual', '[\"1\",\"4\",\"6\"]', 1, 1, 1),
(20, '', 'Coin Gate', NULL, NULL, '<p>Wire bank&nbsp;</p><p>ACC NO. : 268653464646546465.</p><p>Deep branch</p>', 'Coin Gate', 'automatic', '{\"secret_string\":\"B46P1XMf388193hz-sqrDJPhNprKy8xaZ3Sb2dt2\",\"text\":\"Pay via your Coin gate account.\"}', 'coingate', '[\"1\",\"9\"]', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(209, 'dashboard info', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(210, 'profit report', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(211, 'transactions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(212, 'manage user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(213, 'edit user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(214, 'update user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(215, 'user balance modify', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(216, 'user login', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(217, 'user login logs', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(218, 'manage driver', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(219, 'edit driver', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(220, 'update driver', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(221, 'driver balance modify', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(222, 'driver login', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(223, 'driver login logs', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(224, 'manage currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(225, 'add currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(226, 'edit currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(227, 'update currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(228, 'update currency api', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(229, 'manage charges', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(230, 'edit charge', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(231, 'update charge', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(232, 'manage country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(233, 'add country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(234, 'update country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(235, 'manage modules', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(236, 'update module', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(237, 'manage kyc', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(238, 'manage kyc form', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(239, 'kyc form add', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(240, 'kyc form update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(241, 'kyc form delete', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(242, 'kyc info', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(243, 'kyc details', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(244, 'kyc approve', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(245, 'kyc reject', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(246, 'manage escrow', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(247, 'escrow on-hold', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(248, 'escrow disputed', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(249, 'escrow details', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(250, 'dispute store', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(251, 'escrow return payment', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(252, 'escrow file download', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(253, 'escrow close', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(254, 'manage role', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(255, 'create role', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(256, 'edit permissions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(257, 'update permissions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(258, 'manage staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(259, 'add staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(260, 'update staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(261, 'general setting', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(262, 'general settings update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(263, 'general settings logo favicon', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(264, 'general settings status update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(265, 'menu builder', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(266, 'maintainance', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(267, 'email templates', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(268, 'template edit', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(269, 'template update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(270, 'email config', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(271, 'group email', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(272, 'sms gateways', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(273, 'sms gateway edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(274, 'sms gateway update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(275, 'sms templates', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(276, 'sms template edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(277, 'sms template update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(278, 'site contents', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(279, 'edit site contents', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(280, 'site content update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(281, 'site sub-content update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(282, 'section status update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(283, 'withdraw method', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(284, 'withdraw method search', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(285, 'withdraw method create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(286, 'withdraw method edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(287, 'withdraw method update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(288, 'pending withdraw', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(289, 'accepted withdraw', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(290, 'rejected withdraw', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(291, 'withdraw accept', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(292, 'withdraw reject', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(293, 'manage payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(294, 'add payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(295, 'store payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(296, 'edit payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(297, 'update payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(298, 'manage deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(299, 'approve deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(300, 'reject deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(301, 'manage page', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(302, 'page create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(303, 'page store', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(304, 'page edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(305, 'page update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(306, 'page remove', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(307, 'manage cookie', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(308, 'update cookie', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(309, 'manage blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(310, 'store blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(311, 'update blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(312, 'manage blog', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(313, 'blog create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(314, 'blog store', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(315, 'blog edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(316, 'blog update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(317, 'blog destroy', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(318, 'manage language', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(319, 'manage ticket', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(320, 'reply ticket', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(321, 'seo settings', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(322, 'manage addon', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(323, 'system update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26');

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
-- Table structure for table `request_money`
--

CREATE TABLE `request_money` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `request_amount` decimal(20,10) NOT NULL,
  `charge` decimal(20,10) NOT NULL,
  `final_amount` decimal(20,10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => pending, 1 => accepted, 2 => rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2022-01-17 04:25:50', '2022-01-17 04:25:50'),
(3, 'moderator', 'admin', '2022-01-17 05:23:47', '2022-01-17 05:23:47'),
(4, 'Ticket Handler', 'admin', '2022-02-16 23:55:38', '2022-02-16 23:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(319, 4),
(320, 1),
(320, 4),
(321, 1),
(322, 1),
(323, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `title`, `meta_tag`, `meta_description`, `meta_image`) VALUES
(1, 'Genius Wallet - Advanced Wallet CMS with Payment Gateway API', 'wallet,wallet cms,Genius,Genius Wallet', 'Genius Wallet - Advanced Wallet CMS with Payment Gateway API', '15339411471646279600.png');

-- --------------------------------------------------------

--
-- Table structure for table `site_contents`
--

CREATE TABLE `site_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_contents`
--

INSERT INTO `site_contents` (`id`, `name`, `slug`, `content`, `sub_content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banner', 'banner', '{\"title\":\"Simple. Quick. Secure.\",\"heading\":\"Make Online Banking Easier & Comfortable\",\"sub_heading\":\"An international account to send money to over 60 countries around the world, up to 7x cheaper the bank\",\"button_1_name\":\"Get Started\",\"button_1_url\":\"\\/user\\/register\",\"button_2_name\":\"Contact Us\",\"button_2_url\":\"\\/contact\",\"image\":\"7430732421644388266.jpg\"}', NULL, 1, NULL, '2022-02-16 03:21:33'),
(2, 'about\r\n', 'about', '{\"title\":\"We Are Secure\",\"heading\":\"We are Secure and Stable Platform\",\"short_details\":\"Porro illum impedit nemo hic, similique at, qui ducimus praesentium ullam voluptatem culpa temporibus eveniet, esse accusamus? Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni esse quibusdam numquam.\",\"feature_1_icon\":\"fas fa-shipping-fast\",\"feature_1_title\":\"Faster And Cheaper\",\"feature_1_details\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam\",\"feature_2_icon\":\"fas fa-user-shield\",\"feature_2_title\":\"Trusted & Secure\",\"feature_2_details\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam\",\"image_size\":\"700x570\",\"image\":\"12626417021644473699.png\"}', NULL, 1, NULL, '2022-02-17 01:54:20'),
(3, 'service\r\n', 'service', '{\"title\":\"Services\",\"heading\":\"What We Serve to You\",\"sub_heading\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.\"}', '[{\"icon\":\"far fa-money-bill-alt\",\"title\":\"Complete Wallet\",\"details\":\"Alias, tempore reiciendis deserunt beatae voluptatum quo quae cumque animi, excepturi maxime est.\"},{\"icon\":\"fas fa-download\",\"title\":\"Complete Wallet\",\"details\":\"Alias, tempore reiciendis deserunt beatae voluptatum quo quae cumque animi, excepturi maxime est.\"},{\"icon\":\"fas fa-upload\",\"title\":\"Complete Wallet\",\"details\":\"Alias, tempore reiciendis deserunt beatae voluptatum quo quae cumque animi, excepturi maxime est.\"},{\"icon\":\"far fa-check-circle\",\"title\":\"Complete Wallet\",\"details\":\"Alias, tempore reiciendis deserunt beatae voluptatum quo quae cumque animi, excepturi maxime est.\"},{\"icon\":\"fas fa-qrcode\",\"title\":\"Complete Wallet\",\"details\":\"Alias, tempore reiciendis deserunt beatae voluptatum quo quae cumque animi, excepturi maxime est.\"},{\"icon\":\"fas fa-wallet\",\"title\":\"Complete Wallet\",\"details\":\"Alias, tempore reiciendis deserunt beatae voluptatum quo quae cumque animi, excepturi maxime est.\"}]', 1, NULL, '2022-02-17 01:54:14'),
(4, 'how to\n', 'how', '{\"title\":\"How To Start\",\"heading\":\"We have some easy steps!\",\"sub_heading\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.\",\"image\":\"8838201231644403288.png\",\"image_size\":\"720x700\"}', '[{\"icon\":\"fas fa-user-plus\",\"title\":\"Register to Genious Wallet\",\"details\":\"Repellendus consequuntur vel nam numquam labore reiciendis rem neque eveniet, dicta molestias.\"},{\"icon\":\"fas fa-user-check\",\"title\":\"Verify Your Account\",\"details\":\"Repellendus consequuntur vel nam numquam labore reiciendis rem neque eveniet, dicta molestias.\"},{\"icon\":\"fas fa-exchange-alt\",\"title\":\"Make Unlimited Transactions\",\"details\":\"Repellendus consequuntur vel nam numquam labore reiciendis rem neque eveniet, dicta molestias.\"}]', 1, NULL, '2022-02-16 03:27:47'),
(5, 'Counter', 'counter', '{\"title\":\"Our Statistics\",\"heading\":\"We are here since 1998\",\"sub_heading\":\"Porro illum impedit nemo hic, similique at, qui ducimus praesentium ullam voluptatem culpa temporibus eveniet, esse accusamus? Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis\",\"button_name\":\"Get Started\",\"button_url\":\"\\/user\\/register\"}', '[{\"icon\":\"fas fa-users\",\"title\":\"Happy Clients\",\"counter\":\"890M\"},{\"icon\":\"fas fa-exchange-alt\",\"title\":\"Total Transactions\",\"counter\":\"96M\"},{\"icon\":\"fas fa-dollar-sign\",\"title\":\"Total Deposit\",\"counter\":\"$890M\"},{\"icon\":\"fas fa-money-check-alt\",\"title\":\"Total Withdraw\",\"counter\":\"$456M\"}]', 1, NULL, '2022-02-17 00:55:45'),
(6, 'Feature\r\n', 'feature', '{\"title\":\"Your Benefits\",\"heading\":\"Take The Stress Out Of Managing Your Wallet\",\"sub_heading\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.\"}', '[{\"image_size\":\"128x128\",\"title\":\"Global Coverage\",\"details\":\"Minus quasi quis nesciunt, porro sunt soluta laborum dolore voluptas natus ratione iste vel, rem neque earum, repellendus voluptate! Quam, soluta.\",\"image\":\"11228532431644465552.png\"},{\"image\":\"9520810491646279362.png\",\"image_size\":\"128x128\",\"title\":\"Lowest Fee\",\"details\":\"Minus quasi quis nesciunt, porro sunt soluta laborum dolore voluptas natus ratione iste vel, rem neque earum, repellendus voluptate! Quam, soluta.\"},{\"image\":\"4080473251644466179.png\",\"image_size\":\"128x128\",\"title\":\"Simple Transfer Methods\",\"details\":\"Minus quasi quis nesciunt, porro sunt soluta laborum dolore voluptas natus ratione iste vel, rem neque earum, repellendus voluptate! Quam, soluta.\"},{\"image\":\"4808291231644466203.png\",\"image_size\":\"128x128\",\"title\":\"Instant Processing\",\"details\":\"Minus quasi quis nesciunt, porro sunt soluta laborum dolore voluptas natus ratione iste vel, rem neque earum, repellendus voluptate! Quam, soluta.\"},{\"image\":\"18431945771644466228.png\",\"image_size\":\"128x128\",\"title\":\"Bank-level Security\",\"details\":\"Minus quasi quis nesciunt, porro sunt soluta laborum dolore voluptas natus ratione iste vel, rem neque earum, repellendus voluptate! Quam, soluta.\"},{\"image\":\"13995404631644466245.png\",\"image_size\":\"128x128\",\"title\":\"Global 24\\/7 Support\",\"details\":\"Minus quasi quis nesciunt, porro sunt soluta laborum dolore voluptas natus ratione iste vel, rem neque earum, repellendus voluptate! Quam, soluta.\"}]', 1, NULL, '2022-03-02 21:49:22'),
(7, 'FAQs\r\n', 'faq', '{\"title\":\"FAQs\",\"heading\":\"Frequently Asked Questions\",\"sub_heading\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.\"}', '[{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"},{\"question\":\"Deserunt hic consequatur ex placeat?\",\"answer\":\"First : Aut, expedita optio? Quis ab laudantium, facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo?\\r\\n\\r\\nSecond : Facilis similique est alias, possimus expedita dolorum fugit mollitia, optio quo? Dignissimos beatae officia repellat maiores!\"}]', 1, NULL, '2022-02-09 22:20:01'),
(8, 'Testimonial', 'testimonial', '{\"title\":\"Testimonials\",\"heading\":\"What Clients Say About Us\",\"sub_heading\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.\"}', '[{\"image\":\"17542701511644467352.png\",\"image_size\":\"120x120\",\"name\":\"Peter Parker\",\"quote\":\"Incidunt maxime necessitatibus maiores voluptate, error vero velit, consequuntur ut porro  cumque beatae sed repellendus in non nulla at\"},{\"image\":\"17081516131644467428.png\",\"image_size\":\"120x120\",\"name\":\"John Doe\",\"quote\":\"Incidunt maxime necessitatibus maiores voluptate, error vero velit, consequuntur ut porro  cumque beatae sed repellendus in non nulla at\"},{\"image\":\"13860206431644467446.png\",\"image_size\":\"120x120\",\"name\":\"Stephen Rodrick\",\"quote\":\"Incidunt maxime necessitatibus maiores voluptate, error vero velit, consequuntur ut porro  cumque beatae sed repellendus in non nulla at\"},{\"image\":\"7314344801644467467.png\",\"image_size\":\"120x120\",\"name\":\"Matt Damon\",\"quote\":\"Incidunt maxime necessitatibus maiores voluptate, error vero velit, consequuntur ut porro  cumque beatae sed repellendus in non nulla at\"}]', 1, NULL, '2022-02-17 01:54:26'),
(9, 'Blog', 'blog', '{\"title\":\"Blog Posts\",\"heading\":\"Our Latest News & Tips\",\"sub_heading\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.\"}', NULL, 1, NULL, '2022-02-16 03:27:29'),
(10, 'Sponsors', 'sponsors', '{\"title\":\"Sponsors\",\"heading\":\"Genious Wallet Brand Sponsors\",\"sub_heading\":\"Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.\"}', '[{\"image\":\"4506843581646279391.png\",\"image_size\":\"260x200\"},{\"image\":\"4240436131646279399.png\",\"image_size\":\"260x200\"},{\"image\":\"6956855071646279421.png\",\"image_size\":\"260x200\"},{\"image\":\"3515199711644469859.png\",\"image_size\":\"260x200\"},{\"image\":\"18874078061644469864.png\",\"image_size\":\"260x200\"},{\"image\":\"5588095611644469870.png\",\"image_size\":\"260x200\"},{\"image\":\"8676066221646279428.png\",\"image_size\":\"260x200\"},{\"image\":\"13654331771646279436.png\",\"image_size\":\"260x200\"},{\"image\":\"2093287281644469889.png\",\"image_size\":\"260x200\"}]', 1, NULL, '2022-03-02 21:50:36'),
(11, 'Social Links', 'social', NULL, '[{\"icon\":\"fab fa-facebook-f\",\"url\":\"https:\\/\\/facebook.com\"},{\"icon\":\"fab fa-twitter\",\"url\":\"https:\\/\\/twiiter.com\"},{\"icon\":\"fab fa-instagram\",\"url\":\"https:\\/\\/instagram.com\"},{\"icon\":\"fab fa-linkedin-in\",\"url\":\"https:\\/\\/linkedin.com\"},{\"icon\":\"fab fa-youtube\",\"url\":\"https:\\/\\/youtube.com\"}]', 1, NULL, '2022-02-13 02:49:01'),
(12, 'Policies And Terms', 'policies', NULL, '[{\"lang\":\"en\",\"title\":\"Privacy\",\"description\":\"<h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><strong style=\\\"margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-weight: 400; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain; color: rgb(0, 0, 0);\\\">What is Lorem Ipsum?<\\/h2><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"font-weight: bolder; margin: 0px; padding: 0px;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p style=\\\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><br><\\/p>\"},{\"lang\":\"en\",\"title\":\"Terms and Condition\",\"description\":\"<p><br><\\/p><p>What is Lorem Ipsum?<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\"><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p>What is Lorem Ipsum?<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\"><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p>What is Lorem Ipsum?<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\"><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p>What is Lorem Ipsum?<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\"><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p>What is Lorem Ipsum?<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\"><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p>What is Lorem Ipsum?<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\\\"><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\"},{\"lang\":\"en\",\"title\":\"Refund Policy\",\"description\":\"<p>What is Lorem Ipsum?<br><\\/p><p><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p>What is Lorem Ipsum?<\\/p><p><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p>What is Lorem Ipsum?<\\/p><p><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p>What is Lorem Ipsum?<\\/p><p><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p><p>What is Lorem Ipsum?<\\/p><p><span style=\\\"font-weight:bolder;\\\">Lorem Ipsum<\\/span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\"},{\"lang\":\"bn\",\"title\":\"Privacy\",\"description\":\"<p><span style=\\\"color:rgb(0,0,0);font-family:Inter, sans-serif;font-size:18px;text-align:justify;\\\">\\u09aa\\u09cd\\u09b0\\u09be\\u099a\\u09c0\\u09a8 \\u0997\\u09cd\\u09b0\\u09bf\\u09b8\\u09c7\\u09b0 \\u09a8\\u09be\\u09ac\\u09bf\\u0995 \\u09ac\\u09be \\u099c\\u09c7\\u09b2\\u09c7\\u09b0\\u09be \\u0989\\u09a4\\u09cd\\u09a4\\u09be\\u09b2 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7 \\u09aa\\u09cd\\u09b0\\u099a\\u09a3\\u09cd\\u09a1 \\u099d\\u09dc \\u09ac\\u09be \\u09a2\\u09c7\\u0989\\u09df\\u09c7\\u09b0 \\u0995\\u09ac\\u09b2\\u09c7 \\u09aa\\u09dc\\u09b2\\u09c7 \\u0995\\u09b0\\u099c\\u09cb\\u09dc\\u09c7 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0-\\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u09c7\\u09b0 \\u09a8\\u09bf\\u0995\\u099f \\u09b8\\u09be\\u09b9\\u09be\\u09af\\u09cd\\u09af \\u09aa\\u09cd\\u09b0\\u09be\\u09b0\\u09cd\\u09a5\\u09a8\\u09be \\u0995\\u09b0\\u09a4\\u0964 \\u0995\\u09be\\u09b0\\u09a3, \\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u0989\\u09aa\\u0995\\u09a5\\u09be\\u09b0 \\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u099c\\u09be\\u09df\\u0997\\u09be\\u099c\\u09c1\\u09dc\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u0995\\u09c7 \\u09ac\\u09bf\\u09b8\\u09cd\\u09a4\\u09c0\\u09b0\\u09cd\\u09a3 \\u099c\\u09b2\\u09b0\\u09be\\u09b6\\u09bf\\u09b0 \\u09ae\\u09a4\\u09cb \\u099b\\u09dc\\u09bf\\u09df\\u09c7 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09c7\\u09a8 \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u0964 \\u09aa\\u09a6 \\u0993 \\u09ac\\u09bf\\u09b6\\u09bf\\u09b7\\u09cd\\u099f\\u09a4\\u09be \\u0985\\u09a8\\u09c1\\u09b8\\u09be\\u09b0\\u09c7, \\u09a6\\u09c7\\u09ac\\u09b0\\u09be\\u099c \\u099c\\u09bf\\u0989\\u09b8\\u09c7\\u09b0 \\u09aa\\u09b0\\u0987 \\u09a4\\u09be\\u09b0 \\u0985\\u09ac\\u09b8\\u09cd\\u09a5\\u09be\\u09a8\\u0964 \\u099c\\u09bf\\u0989\\u09b8 \\u09af\\u09c7\\u09ad\\u09be\\u09ac\\u09c7 \\u09b8\\u09cd\\u09ac\\u09b0\\u09cd\\u0997\\u09c7\\u09b0 \\u09af\\u09be\\u09ac\\u09a4\\u09c0\\u09df \\u099c\\u09bf\\u09a8\\u09bf\\u09b8 \\u09b8\\u09be\\u09ae\\u09b2\\u09be\\u09a8, \\u09b9\\u09c7\\u09a1\\u09bf\\u09b8 \\u09af\\u09c7\\u09ad\\u09be\\u09ac\\u09c7 \\u09aa\\u09be\\u09a4\\u09be\\u09b2\\u09aa\\u09c1\\u09b0\\u09c0\\u09b0 \\u0998\\u09c1\\u099f\\u0998\\u09c1\\u099f\\u09c7 \\u0985\\u09a8\\u09cd\\u09a7\\u0995\\u09be\\u09b0\\u09c7 \\u0997\\u09c1\\u09b0\\u09c1\\u09a6\\u09be\\u09df\\u09bf\\u09a4\\u09cd\\u09ac \\u09aa\\u09be\\u09b2\\u09a8 \\u0995\\u09b0\\u09c7 \\u0986\\u09b8\\u099b\\u09c7\\u09a8, \\u09a4\\u09c7\\u09ae\\u09a8\\u09bf \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7\\u09b0 \\u098f\\u0995\\u099a\\u09cd\\u099b\\u09a4\\u09cd\\u09b0 \\u0985\\u09a7\\u09bf\\u09aa\\u09a4\\u09bf \\u09b9\\u09bf\\u09b8\\u09c7\\u09ac\\u09c7 \\u0985\\u09a5\\u09c8 \\u099c\\u09b2\\u09c7\\u09b0 \\u09a2\\u09c7\\u0989 \\u09ad\\u09c7\\u0999\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09b0 \\u09b0\\u09be\\u099c\\u09a4\\u09cd\\u09ac \\u0995\\u09be\\u09df\\u09c7\\u09ae \\u09b0\\u09be\\u0996\\u09c7\\u09a8 \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u0964 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be\\u09a6\\u09c7\\u09b0 \\u09ae\\u09a7\\u09cd\\u09af \\u09a4\\u09bf\\u09a8\\u09bf\\u0987 \\u09aa\\u09cd\\u09b0\\u09a5\\u09ae \\u0998\\u09cb\\u09dc\\u09be\\u0995\\u09c7 \\u09aa\\u09cb\\u09b7 \\u09ae\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u09c7\\u09a8 \\u09ac\\u09b2\\u09c7 \\u09a4\\u09be\\u0995\\u09c7 \\u0998\\u09cb\\u09dc\\u09be\\u09b0 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09ac\\u09b2\\u09c7\\u0993 \\u09a1\\u09be\\u0995\\u09be \\u09b9\\u09df\\u0964<\\/span><br><\\/p>\\r\\n\\r\\n<p><br><\\/p>\\r\\n\\r\\n<p style=\\\"font-size:18px;color:rgb(0,0,0);font-family:Inter, sans-serif;text-align:justify;\\\">\\u098f\\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09aa\\u09c1\\u09b0\\u09be\\u09a3\\u09c7 \\u09a4\\u09bf\\u09a8\\u09bf \\u09ac\\u09a8\\u09cd\\u09af\\u09be, \\u0996\\u09b0\\u09be, \\u0993 \\u09ad\\u09c2\\u09ae\\u09bf\\u0995\\u09ae\\u09cd\\u09aa\\u09c7\\u09b0 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09b9\\u09bf\\u09b8\\u09c7\\u09ac\\u09c7\\u0993 \\u09b8\\u09c1\\u09aa\\u09b0\\u09bf\\u099a\\u09bf\\u09a4\\u0964 \\u099a\\u09cb\\u0996\\u09a7\\u09be\\u0981\\u09a7\\u09be\\u09a8\\u09cb \\u09b8\\u09c1\\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u098f\\u0995 \\u09b0\\u09be\\u099c\\u09aa\\u09cd\\u09b0\\u09be\\u09b8\\u09be\\u09a6\\u09c7 \\u09a4\\u09be\\u09b0 \\u09b0\\u09be\\u099c\\u0995\\u09c0\\u09df \\u09ac\\u09b8\\u09ac\\u09be\\u09b8, \\u09af\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09bf\\u099a\\u09c7 \\u0985\\u09ac\\u09b8\\u09cd\\u09a5\\u09bf\\u09a4\\u0964 \\u09aa\\u09cd\\u09b0\\u09be\\u09b8\\u09be\\u09a6\\u09c7\\u09b0 \\u09ac\\u09c3\\u09b9\\u09ce \\u098f\\u0995 \\u0986\\u09b8\\u09cd\\u09a4\\u09be\\u09ac\\u09b2\\u09c7 \\u09a4\\u09be\\u09b0 \\u09b8\\u09be\\u09a6\\u09be \\u09b0\\u0999\\u09c7\\u09b0 \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a4\\u09be\\u09ae\\u09be\\u099f\\u09c7 \\u0996\\u09c1\\u09b0 \\u09a8\\u09bf\\u09df\\u09c7 \\u09a0\\u09be\\u0981\\u0987 \\u09a6\\u09be\\u0981\\u09dc\\u09bf\\u09df\\u09c7 \\u09a5\\u09be\\u0995\\u09c7\\u0964 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0 \\u09a8\\u09bf\\u099c\\u09c7\\u09b0 \\u0995\\u09cd\\u09b0\\u09cb\\u09a7 \\u09aa\\u09cd\\u09b0\\u0995\\u09be\\u09b6\\u09c7\\u09b0 \\u09ae\\u09be\\u09a7\\u09cd\\u09af\\u09ae\\u09c7 \\u0985\\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u09b0\\u09c2\\u09aa \\u09a7\\u09be\\u09b0\\u09a3 \\u0995\\u09b0\\u09b2\\u09c7 \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a8\\u09bf\\u09df\\u09c7 \\u098f\\u0995 \\u09b8\\u09cb\\u09a8\\u09be\\u09b2\\u09bf \\u09b0\\u09a5 \\u09aa\\u09cd\\u09b0\\u09b8\\u09cd\\u09a4\\u09c1\\u09a4 \\u0995\\u09b0\\u09c7\\u09a8 \\u09a4\\u09bf\\u09a8\\u09bf\\u0964 \\u09ae\\u09be\\u099b\\u09c7\\u09b0 \\u09ae\\u09a4\\u09cb \\u09b2\\u09c7\\u099c\\u09ac\\u09bf\\u09b6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u0995\\u099c\\u09cb\\u09dc\\u09be \\u0998\\u09cb\\u09dc\\u09be \\u09a4\\u09be\\u09b0 \\u09b0\\u09a5 \\u099f\\u09be\\u09a8\\u09be\\u09b0 \\u09a6\\u09be\\u09df\\u09bf\\u09a4\\u09cd\\u09ac \\u09aa\\u09be\\u09b2\\u09a8 \\u0995\\u09b0\\u09c7\\u0964 \\u09b9\\u09be\\u0993\\u09df\\u09be\\u09b0 \\u09ac\\u09c7\\u0997\\u09c7 \\u099b\\u09c1\\u099f\\u09c7 \\u099a\\u09b2\\u09be \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a6\\u09bf\\u09df\\u09c7 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u0995\\u09c7 \\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u0995\\u09b0\\u09be\\u09b0 \\u099a\\u09c7\\u09b7\\u09cd\\u099f\\u09be \\u0995\\u09b0\\u09c7\\u09a8 \\u09a4\\u09bf\\u09a8\\u09bf\\u0964 \\u09ab\\u09c1\\u09b2\\u09c7-\\u09ab\\u09c7\\u0981\\u09aa\\u09c7 \\u0993\\u09a0\\u09be \\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u099c\\u09b2\\u09b0\\u09be\\u09b6\\u09bf \\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u09b9\\u09df\\u09c7 \\u0997\\u09c7\\u09b2\\u09c7\\u0987 \\u099c\\u09b2\\u099c \\u09aa\\u09cd\\u09b0\\u09be\\u09a3\\u09c0\\u09b0\\u09be \\u09b0\\u09a5\\u09c7\\u09b0 \\u09aa\\u09c7\\u099b\\u09a8\\u09c7 \\u0996\\u09c1\\u09b6\\u09bf\\u09a4\\u09c7 \\u09a1\\u0997\\u09ae\\u0997 \\u09b9\\u09df\\u09c7 \\u09a8\\u09c7\\u099a\\u09c7-\\u0997\\u09c7\\u09df\\u09c7 \\u0986\\u09a8\\u09a8\\u09cd\\u09a6 \\u09aa\\u09cd\\u09b0\\u0995\\u09be\\u09b6 \\u0995\\u09b0\\u09c7\\u0964<\\/p>\\r\\n\\r\\n<p><br><\\/p>\\r\\n\\r\\n<p style=\\\"font-size:18px;color:rgb(0,0,0);font-family:Inter, sans-serif;text-align:justify;\\\">\\u09aa\\u09cd\\u09b0\\u09be\\u099a\\u09c0\\u09a8 \\u0997\\u09cd\\u09b0\\u09bf\\u09b8\\u09c7\\u09b0 \\u09a8\\u09be\\u09ac\\u09bf\\u0995 \\u09ac\\u09be \\u099c\\u09c7\\u09b2\\u09c7\\u09b0\\u09be \\u0989\\u09a4\\u09cd\\u09a4\\u09be\\u09b2 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7 \\u09aa\\u09cd\\u09b0\\u099a\\u09a3\\u09cd\\u09a1 \\u099d\\u09dc \\u09ac\\u09be \\u09a2\\u09c7\\u0989\\u09df\\u09c7\\u09b0 \\u0995\\u09ac\\u09b2\\u09c7 \\u09aa\\u09dc\\u09b2\\u09c7 \\u0995\\u09b0\\u099c\\u09cb\\u09dc\\u09c7 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0-\\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u09c7\\u09b0 \\u09a8\\u09bf\\u0995\\u099f \\u09b8\\u09be\\u09b9\\u09be\\u09af\\u09cd\\u09af \\u09aa\\u09cd\\u09b0\\u09be\\u09b0\\u09cd\\u09a5\\u09a8\\u09be \\u0995\\u09b0\\u09a4\\u0964 \\u0995\\u09be\\u09b0\\u09a3, \\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u0989\\u09aa\\u0995\\u09a5\\u09be\\u09b0 \\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u099c\\u09be\\u09df\\u0997\\u09be\\u099c\\u09c1\\u09dc\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u0995\\u09c7 \\u09ac\\u09bf\\u09b8\\u09cd\\u09a4\\u09c0\\u09b0\\u09cd\\u09a3 \\u099c\\u09b2\\u09b0\\u09be\\u09b6\\u09bf\\u09b0 \\u09ae\\u09a4\\u09cb \\u099b\\u09dc\\u09bf\\u09df\\u09c7 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09c7\\u09a8 \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u0964 \\u09aa\\u09a6 \\u0993 \\u09ac\\u09bf\\u09b6\\u09bf\\u09b7\\u09cd\\u099f\\u09a4\\u09be \\u0985\\u09a8\\u09c1\\u09b8\\u09be\\u09b0\\u09c7, \\u09a6\\u09c7\\u09ac\\u09b0\\u09be\\u099c \\u099c\\u09bf\\u0989\\u09b8\\u09c7\\u09b0 \\u09aa\\u09b0\\u0987 \\u09a4\\u09be\\u09b0 \\u0985\\u09ac\\u09b8\\u09cd\\u09a5\\u09be\\u09a8\\u0964 \\u099c\\u09bf\\u0989\\u09b8 \\u09af\\u09c7\\u09ad\\u09be\\u09ac\\u09c7 \\u09b8\\u09cd\\u09ac\\u09b0\\u09cd\\u0997\\u09c7\\u09b0 \\u09af\\u09be\\u09ac\\u09a4\\u09c0\\u09df \\u099c\\u09bf\\u09a8\\u09bf\\u09b8 \\u09b8\\u09be\\u09ae\\u09b2\\u09be\\u09a8, \\u09b9\\u09c7\\u09a1\\u09bf\\u09b8 \\u09af\\u09c7\\u09ad\\u09be\\u09ac\\u09c7 \\u09aa\\u09be\\u09a4\\u09be\\u09b2\\u09aa\\u09c1\\u09b0\\u09c0\\u09b0 \\u0998\\u09c1\\u099f\\u0998\\u09c1\\u099f\\u09c7 \\u0985\\u09a8\\u09cd\\u09a7\\u0995\\u09be\\u09b0\\u09c7 \\u0997\\u09c1\\u09b0\\u09c1\\u09a6\\u09be\\u09df\\u09bf\\u09a4\\u09cd\\u09ac \\u09aa\\u09be\\u09b2\\u09a8 \\u0995\\u09b0\\u09c7 \\u0986\\u09b8\\u099b\\u09c7\\u09a8, \\u09a4\\u09c7\\u09ae\\u09a8\\u09bf \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7\\u09b0 \\u098f\\u0995\\u099a\\u09cd\\u099b\\u09a4\\u09cd\\u09b0 \\u0985\\u09a7\\u09bf\\u09aa\\u09a4\\u09bf \\u09b9\\u09bf\\u09b8\\u09c7\\u09ac\\u09c7 \\u0985\\u09a5\\u09c8 \\u099c\\u09b2\\u09c7\\u09b0 \\u09a2\\u09c7\\u0989 \\u09ad\\u09c7\\u0999\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09b0 \\u09b0\\u09be\\u099c\\u09a4\\u09cd\\u09ac \\u0995\\u09be\\u09df\\u09c7\\u09ae \\u09b0\\u09be\\u0996\\u09c7\\u09a8 \\u09aa\\u09b8\\u09be\\u0987\\u09a1\\u09a8\\u0964 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be\\u09a6\\u09c7\\u09b0 \\u09ae\\u09a7\\u09cd\\u09af \\u09a4\\u09bf\\u09a8\\u09bf\\u0987 \\u09aa\\u09cd\\u09b0\\u09a5\\u09ae \\u0998\\u09cb\\u09dc\\u09be\\u0995\\u09c7 \\u09aa\\u09cb\\u09b7 \\u09ae\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u09c7\\u09a8 \\u09ac\\u09b2\\u09c7 \\u09a4\\u09be\\u0995\\u09c7 \\u0998\\u09cb\\u09dc\\u09be\\u09b0 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09ac\\u09b2\\u09c7\\u0993 \\u09a1\\u09be\\u0995\\u09be \\u09b9\\u09df\\u0964<\\/p>\\r\\n\\r\\n<p style=\\\"font-size:18px;color:rgb(0,0,0);font-family:Inter, sans-serif;text-align:justify;\\\"><br><\\/p>\\r\\n\\r\\n<p style=\\\"font-size:18px;color:rgb(0,0,0);font-family:Inter, sans-serif;text-align:justify;\\\">\\u098f\\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0997\\u09cd\\u09b0\\u09bf\\u0995 \\u09aa\\u09c1\\u09b0\\u09be\\u09a3\\u09c7 \\u09a4\\u09bf\\u09a8\\u09bf \\u09ac\\u09a8\\u09cd\\u09af\\u09be, \\u0996\\u09b0\\u09be, \\u0993 \\u09ad\\u09c2\\u09ae\\u09bf\\u0995\\u09ae\\u09cd\\u09aa\\u09c7\\u09b0 \\u09a6\\u09c7\\u09ac\\u09a4\\u09be \\u09b9\\u09bf\\u09b8\\u09c7\\u09ac\\u09c7\\u0993 \\u09b8\\u09c1\\u09aa\\u09b0\\u09bf\\u099a\\u09bf\\u09a4\\u0964 \\u099a\\u09cb\\u0996\\u09a7\\u09be\\u0981\\u09a7\\u09be\\u09a8\\u09cb \\u09b8\\u09c1\\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u098f\\u0995 \\u09b0\\u09be\\u099c\\u09aa\\u09cd\\u09b0\\u09be\\u09b8\\u09be\\u09a6\\u09c7 \\u09a4\\u09be\\u09b0 \\u09b0\\u09be\\u099c\\u0995\\u09c0\\u09df \\u09ac\\u09b8\\u09ac\\u09be\\u09b8, \\u09af\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09bf\\u099a\\u09c7 \\u0985\\u09ac\\u09b8\\u09cd\\u09a5\\u09bf\\u09a4\\u0964 \\u09aa\\u09cd\\u09b0\\u09be\\u09b8\\u09be\\u09a6\\u09c7\\u09b0 \\u09ac\\u09c3\\u09b9\\u09ce \\u098f\\u0995 \\u0986\\u09b8\\u09cd\\u09a4\\u09be\\u09ac\\u09b2\\u09c7 \\u09a4\\u09be\\u09b0 \\u09b8\\u09be\\u09a6\\u09be \\u09b0\\u0999\\u09c7\\u09b0 \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a4\\u09be\\u09ae\\u09be\\u099f\\u09c7 \\u0996\\u09c1\\u09b0 \\u09a8\\u09bf\\u09df\\u09c7 \\u09a0\\u09be\\u0981\\u0987 \\u09a6\\u09be\\u0981\\u09dc\\u09bf\\u09df\\u09c7 \\u09a5\\u09be\\u0995\\u09c7\\u0964 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0 \\u09a8\\u09bf\\u099c\\u09c7\\u09b0 \\u0995\\u09cd\\u09b0\\u09cb\\u09a7 \\u09aa\\u09cd\\u09b0\\u0995\\u09be\\u09b6\\u09c7\\u09b0 \\u09ae\\u09be\\u09a7\\u09cd\\u09af\\u09ae\\u09c7 \\u0985\\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u09b0\\u09c2\\u09aa \\u09a7\\u09be\\u09b0\\u09a3 \\u0995\\u09b0\\u09b2\\u09c7 \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a8\\u09bf\\u09df\\u09c7 \\u098f\\u0995 \\u09b8\\u09cb\\u09a8\\u09be\\u09b2\\u09bf \\u09b0\\u09a5 \\u09aa\\u09cd\\u09b0\\u09b8\\u09cd\\u09a4\\u09c1\\u09a4 \\u0995\\u09b0\\u09c7\\u09a8 \\u09a4\\u09bf\\u09a8\\u09bf\\u0964 \\u09ae\\u09be\\u099b\\u09c7\\u09b0 \\u09ae\\u09a4\\u09cb \\u09b2\\u09c7\\u099c\\u09ac\\u09bf\\u09b6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u0995\\u099c\\u09cb\\u09dc\\u09be \\u0998\\u09cb\\u09dc\\u09be \\u09a4\\u09be\\u09b0 \\u09b0\\u09a5 \\u099f\\u09be\\u09a8\\u09be\\u09b0 \\u09a6\\u09be\\u09df\\u09bf\\u09a4\\u09cd\\u09ac \\u09aa\\u09be\\u09b2\\u09a8 \\u0995\\u09b0\\u09c7\\u0964 \\u09b9\\u09be\\u0993\\u09df\\u09be\\u09b0 \\u09ac\\u09c7\\u0997\\u09c7 \\u099b\\u09c1\\u099f\\u09c7 \\u099a\\u09b2\\u09be \\u0998\\u09cb\\u09dc\\u09be\\u0997\\u09c1\\u09b2\\u09cb \\u09a6\\u09bf\\u09df\\u09c7 \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u0995\\u09c7 \\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u0995\\u09b0\\u09be\\u09b0 \\u099a\\u09c7\\u09b7\\u09cd\\u099f\\u09be \\u0995\\u09b0\\u09c7\\u09a8 \\u09a4\\u09bf\\u09a8\\u09bf\\u0964 \\u09ab\\u09c1\\u09b2\\u09c7-\\u09ab\\u09c7\\u0981\\u09aa\\u09c7 \\u0993\\u09a0\\u09be \\u09ac\\u09bf\\u09b6\\u09be\\u09b2 \\u099c\\u09b2\\u09b0\\u09be\\u09b6\\u09bf \\u09b6\\u09be\\u09a8\\u09cd\\u09a4 \\u09b9\\u09df\\u09c7 \\u0997\\u09c7\\u09b2\\u09c7\\u0987 \\u099c\\u09b2\\u099c \\u09aa\\u09cd\\u09b0\\u09be\\u09a3\\u09c0\\u09b0\\u09be \\u09b0\\u09a5\\u09c7\\u09b0 \\u09aa\\u09c7\\u099b\\u09a8\\u09c7 \\u0996\\u09c1\\u09b6\\u09bf\\u09a4\\u09c7 \\u09a1\\u0997\\u09ae\\u0997 \\u09b9\\u09df\\u09c7 \\u09a8\\u09c7\\u099a\\u09c7-\\u0997\\u09c7\\u09df\\u09c7 \\u0986\\u09a8\\u09a8\\u09cd\\u09a6 \\u09aa\\u09cd\\u09b0\\u0995\\u09be\\u09b6 \\u0995\\u09b0\\u09c7\\u0964<\\/p>\"}]', 1, NULL, '2022-03-14 04:07:22'),
(13, 'Contact Us', 'contact', '{\"title\":\"Contact Us\",\"heading\":\"Get In Touch\",\"sub_heading\":\"Porro illum impedit nemo hic, similique at, qui ducimus praesentium ullam voluptatem culpa temporibus eveniet, esse accusamus\",\"phone\":\"+1 (631) 593-5927\",\"email\":\"geniuswallet@gmail.com\",\"address\":\"7058 Najrul Islam Road, Dhaka.\"}', NULL, 1, NULL, '2022-02-14 05:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `name`, `config`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Twilio', '{\r\n\"sid\":\"\",\"token\":\"\",\"from_number\":\"\"\r\n}', 0, NULL, '2022-01-19 23:56:26'),
(2, 'Nexmo', '{\"api_key\":\"f0842415\",\"api_secret\":\"5FqSGPgFIKbf8nDr\"}', 1, NULL, '2022-01-20 02:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` tinyint(1) NOT NULL,
  `guest_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = replied. ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` tinyint(1) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trnx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` tinyint(4) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  `charge` decimal(20,10) NOT NULL DEFAULT 0.0000000000,
  `amount` decimal(20,10) NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified` tinyint(1) DEFAULT 0,
  `verification_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_code` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_status` tinyint(1) DEFAULT 0,
  `kyc_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_reject_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_fa_status` tinyint(1) NOT NULL DEFAULT 0,
  `two_fa` tinyint(1) NOT NULL DEFAULT 0,
  `two_fa_code` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(20,10) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => unused, 1 => used',
  `reedemed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` tinyint(1) NOT NULL COMMENT '1 => user, 2 => ''driver'', 3  => ''agent''',
  `currency_id` int(11) NOT NULL,
  `balance` decimal(20,10) NOT NULL DEFAULT 0.0000000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `method_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `amount` decimal(20,10) NOT NULL,
  `charge` decimal(20,10) NOT NULL,
  `total_amount` decimal(20,10) NOT NULL,
  `user_data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => pending, 1 => accepted, 2 => rejected\r\n',
  `reject_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` decimal(20,10) NOT NULL,
  `max_amount` decimal(20,10) NOT NULL,
  `fixed_charge` decimal(20,10) NOT NULL,
  `percent_charge` decimal(5,2) NOT NULL,
  `user_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `currency_id`, `name`, `withdraw_instruction`, `min_amount`, `max_amount`, `fixed_charge`, `percent_charge`, `user_data`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 'Demo -USD', '<p>Withdraw</p>', '30.0000000000', '1000.0000000000', '2.0000000000', '1.00', NULL, 1, '2022-03-07 02:21:57', '2022-03-07 02:21:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_creds`
--
ALTER TABLE `api_creds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `charges_slug_unique` (`slug`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_symbol_unique` (`symbol`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `driver_payments`
--
ALTER TABLE `driver_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escrows`
--
ALTER TABLE `escrows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_money`
--
ALTER TABLE `exchange_money`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_items`
--
ALTER TABLE `inv_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_forms`
--
ALTER TABLE `kyc_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modules_module_unique` (`module`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `request_money`
--
ALTER TABLE `request_money`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_contents`
--
ALTER TABLE `site_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `api_creds`
--
ALTER TABLE `api_creds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_payments`
--
ALTER TABLE `driver_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `escrows`
--
ALTER TABLE `escrows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchange_money`
--
ALTER TABLE `exchange_money`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_items`
--
ALTER TABLE `inv_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc_forms`
--
ALTER TABLE `kyc_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_money`
--
ALTER TABLE `request_money`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_contents`
--
ALTER TABLE `site_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
