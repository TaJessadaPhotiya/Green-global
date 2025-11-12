-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2025 at 09:06 AM
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
-- Database: `green_global`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `admin_level` int(11) NOT NULL DEFAULT 4,
  `admin_status` int(11) NOT NULL DEFAULT 2,
  `language` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `line_id` varchar(255) DEFAULT NULL,
  `apple_id` varchar(255) DEFAULT NULL,
  `admin_note` varchar(255) DEFAULT NULL,
  `admin_verify_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_accounts`
--

INSERT INTO `admin_accounts` (`id`, `account_id`, `admin_level`, `admin_status`, `language`, `display_name`, `firstname`, `lastname`, `gender`, `birthday`, `cover_image`, `profile_image`, `facebook_id`, `google_id`, `line_id`, `apple_id`, `admin_note`, `admin_verify_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'th,en,ar', 'Tester', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Account devmode', '2025-07-25 05:03:44', NULL, NULL),
(2, 2, 4, 1, 'th,en,ar', 'papa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-25 06:26:27', '2025-07-24 23:26:27', '2025-07-24 23:26:27'),
(7, 7, 2, 1, 'th,en,ar', 'paspa2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-15 10:31:58', '2025-07-25 02:59:46', '2025-09-15 03:31:58'),
(9, 9, 4, 2, NULL, 'paspa3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-30 19:23:57', '2025-07-30 19:23:57'),
(10, 62, 2, 1, 'th,en,ar', 'park', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-15 10:34:25', '2025-09-15 03:34:05', '2025-09-15 03:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(2, 'Admin', '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(3, 'Officer', '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(4, 'User', '2025-07-25 05:03:44', '2025-07-25 05:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `ad_slides`
--

CREATE TABLE `ad_slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT 0,
  `ad_image` varchar(255) NOT NULL,
  `ad_image_alt` varchar(255) DEFAULT NULL,
  `ad_image_title` varchar(255) DEFAULT NULL,
  `ad_title` varchar(255) DEFAULT NULL,
  `ad_description` varchar(255) DEFAULT NULL,
  `ad_type` int(11) NOT NULL DEFAULT 1 COMMENT '1: ภาพหน้าหลัก, 2: ภาพโฆษณา',
  `ad_position_id` int(11) NOT NULL DEFAULT 1,
  `ad_priority` int(11) NOT NULL DEFAULT 1,
  `ad_link` varchar(255) DEFAULT NULL,
  `ad_redirect` varchar(255) DEFAULT NULL,
  `ad_h1` varchar(255) DEFAULT NULL,
  `ad_h2` varchar(255) DEFAULT NULL,
  `ad_status_display` tinyint(1) NOT NULL DEFAULT 1,
  `ad_date_display` datetime DEFAULT NULL,
  `ad_date_hidden` datetime DEFAULT NULL,
  `language` varchar(255) NOT NULL DEFAULT 'th',
  `defaults` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_slides`
--

INSERT INTO `ad_slides` (`id`, `page_id`, `ad_image`, `ad_image_alt`, `ad_image_title`, `ad_title`, `ad_description`, `ad_type`, `ad_position_id`, `ad_priority`, `ad_link`, `ad_redirect`, `ad_h1`, `ad_h2`, `ad_status_display`, `ad_date_display`, `ad_date_hidden`, `language`, `defaults`, `created_at`, `updated_at`) VALUES
(1, 0, 'upload/2025/08/28/Rectangle 2.png', 'slide1', NULL, 'slide1', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'th', '1', '2025-08-28 01:42:46', '2025-08-28 01:42:46'),
(2, 0, 'upload/2025/08/28/grasshopper-7575278_1280.jpg', 'slide2', NULL, 'slide2', NULL, 1, 1, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'th', '1', '2025-08-28 01:52:26', '2025-08-28 01:52:26'),
(3, 0, 'upload/2025/08/28/flower-4700969_1280.jpg', 'slide3', NULL, 'slide3', NULL, 1, 1, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'th', '1', '2025-08-28 01:52:42', '2025-08-28 01:52:42'),
(4, 0, 'upload/2025/09/15/ai-generated-8200709_1280.png', 'T1234', NULL, 'T1234', NULL, 1, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'th', '1', '2025-09-15 00:44:33', '2025-09-15 00:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `ad_slide_positions`
--

CREATE TABLE `ad_slide_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dimension` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_slide_positions`
--

INSERT INTO `ad_slide_positions` (`id`, `position`, `name`, `dimension`, `created_at`, `updated_at`) VALUES
(1, 'banner', 'banner', '1600*500', NULL, NULL),
(2, 'slide', 'slide', '1600*500', NULL, NULL),
(3, 'intro', 'intro', '768*768', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_infos`
--

CREATE TABLE `bank_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_image` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_account` varchar(255) NOT NULL,
  `bank_number` varchar(255) NOT NULL,
  `bank_ref` varchar(255) NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail_link` varchar(255) DEFAULT NULL,
  `thumbnail_title` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `is_brand` tinyint(1) NOT NULL DEFAULT 1,
  `display` tinyint(1) NOT NULL DEFAULT 1,
  `defaults` tinyint(1) NOT NULL DEFAULT 1,
  `language` varchar(255) NOT NULL DEFAULT 'th',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_products`
--

CREATE TABLE `cart_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL COMMENT 'id member_account',
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'จำนวนสินค้า',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_name` varchar(255) DEFAULT NULL,
  `cate_title` varchar(255) DEFAULT NULL,
  `cate_keyword` varchar(255) DEFAULT NULL,
  `cate_description` varchar(255) DEFAULT NULL,
  `cate_thumbnail` varchar(255) DEFAULT NULL,
  `cate_thumbnail_title` varchar(255) DEFAULT NULL,
  `cate_thumbnail_alt` varchar(255) DEFAULT NULL,
  `cate_url` varchar(255) DEFAULT NULL,
  `cate_h1` varchar(255) DEFAULT NULL,
  `cate_h2` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `cate_topic` varchar(255) DEFAULT NULL,
  `cate_freetag` varchar(255) DEFAULT NULL,
  `cate_attr` varchar(255) DEFAULT NULL,
  `cate_redirect` varchar(255) DEFAULT NULL,
  `cate_parent_id` int(11) NOT NULL DEFAULT 0,
  `cate_root_id` int(11) NOT NULL DEFAULT 0,
  `cate_level` int(11) NOT NULL DEFAULT 0,
  `cate_status_display` tinyint(1) NOT NULL DEFAULT 1,
  `is_menu` tinyint(1) NOT NULL DEFAULT 0,
  `is_topside` tinyint(1) NOT NULL DEFAULT 0,
  `is_leftside` tinyint(1) NOT NULL DEFAULT 0,
  `is_rightside` tinyint(1) NOT NULL DEFAULT 0,
  `is_bottomside` tinyint(1) NOT NULL DEFAULT 0,
  `cate_priority` int(11) NOT NULL DEFAULT 1,
  `cate_position` int(11) NOT NULL DEFAULT 1,
  `on_product` tinyint(1) NOT NULL DEFAULT 0,
  `is_main_page` tinyint(1) NOT NULL DEFAULT 1,
  `is_product_cate` tinyint(1) NOT NULL DEFAULT 0,
  `cate_date_display` datetime DEFAULT NULL,
  `cate_date_hidden` datetime DEFAULT NULL,
  `language` varchar(255) NOT NULL DEFAULT 'th',
  `defaults` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `cate_title`, `cate_keyword`, `cate_description`, `cate_thumbnail`, `cate_thumbnail_title`, `cate_thumbnail_alt`, `cate_url`, `cate_h1`, `cate_h2`, `meta_title`, `meta_description`, `meta_keyword`, `cate_topic`, `cate_freetag`, `cate_attr`, `cate_redirect`, `cate_parent_id`, `cate_root_id`, `cate_level`, `cate_status_display`, `is_menu`, `is_topside`, `is_leftside`, `is_rightside`, `is_bottomside`, `cate_priority`, `cate_position`, `on_product`, `is_main_page`, `is_product_cate`, `cate_date_display`, `cate_date_hidden`, `language`, `defaults`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Home', 'HOME', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar', 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, 'ar', 0, '2025-08-13 04:44:02', '2025-08-13 00:08:55'),
(1, NULL, 'Home', 'HOME', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en', 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-13 04:44:02', '2025-08-13 00:08:55'),
(1, NULL, 'หน้าหลัก', 'HOME', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th', 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:20:13', '2025-08-13 01:00:47'),
(2, NULL, 'VISION', 'VISION', NULL, NULL, NULL, NULL, '/vision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/vision', 0, 2, 0, 1, 1, 1, 0, 0, 0, 2, 1, 0, 1, 0, NULL, NULL, 'ar', 0, '2025-08-14 03:22:35', '2025-08-13 06:55:23'),
(2, NULL, 'VISION', 'VISION', NULL, NULL, NULL, NULL, '/vision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/vision', 0, 2, 0, 1, 1, 1, 0, 0, 0, 2, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 03:22:35', '2025-08-13 06:55:23'),
(2, NULL, 'วิสัยทัศน์', 'VISION', NULL, NULL, NULL, NULL, '/vision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/vision', 0, 2, 0, 1, 1, 1, 0, 0, 0, 2, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:22:37', '2025-08-13 01:01:28'),
(3, NULL, 'PRODUCT', 'PRODUCT', NULL, NULL, NULL, NULL, '/product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/product', 0, 3, 0, 1, 1, 1, 0, 0, 0, 4, 1, 0, 1, 0, NULL, NULL, 'ar', 0, '2025-08-14 03:30:59', '2025-08-13 00:01:29'),
(3, NULL, 'PRODUCT', 'PRODUCT', NULL, NULL, NULL, NULL, '/product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/product', 0, 3, 0, 1, 1, 1, 0, 0, 0, 4, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 03:30:59', '2025-08-13 00:01:29'),
(3, NULL, 'ผลิตภัณฑ์', 'PRODUCT', NULL, NULL, NULL, NULL, '/product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/product', 0, 3, 0, 1, 1, 1, 0, 0, 0, 4, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:31:00', '2025-08-13 01:01:48'),
(4, NULL, 'NEWS', 'NEWS', NULL, NULL, NULL, NULL, '/news', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/news', 0, 4, 0, 1, 1, 1, 0, 0, 0, 3, 1, 0, 1, 0, NULL, NULL, 'ar', 0, '2025-08-14 03:32:02', '2025-08-13 00:01:09'),
(4, NULL, 'NEWS', 'NEWS', NULL, NULL, NULL, NULL, '/news', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/news', 0, 4, 0, 1, 1, 1, 0, 0, 0, 3, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 03:32:02', '2025-08-13 00:01:09'),
(4, NULL, 'ข่าว', 'NEWS', NULL, NULL, NULL, NULL, '/news', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/news', 0, 4, 0, 1, 1, 1, 0, 0, 0, 3, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:32:03', '2025-08-13 01:01:34'),
(5, NULL, 'TERM&CONDITION', 'TERM&CONDITION', NULL, NULL, NULL, NULL, '/term', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/term', 0, 5, 0, 1, 1, 1, 0, 0, 0, 5, 1, 0, 1, 0, NULL, NULL, 'ar', 0, '2025-08-14 04:03:58', '2025-08-12 23:59:16'),
(5, NULL, 'TERM&CONDITION', 'TERM&CONDITION', NULL, NULL, NULL, NULL, '/term', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/term', 0, 5, 0, 1, 1, 1, 0, 0, 0, 5, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 04:03:58', '2025-08-12 23:59:16'),
(5, NULL, 'ข้อกำหนด/เงื่อนไข', 'TERM&CONDITION', NULL, NULL, NULL, NULL, '/term', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/term', 0, 5, 0, 1, 1, 1, 0, 0, 0, 5, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 04:03:59', '2025-08-13 01:02:23'),
(6, NULL, 'تسجيل دخول', 'CONTACT US', NULL, NULL, NULL, NULL, '/contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/contact', 0, 6, 0, 1, 1, 1, 0, 0, 0, 6, 1, 0, 1, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:11:47'),
(6, NULL, 'CONTACT US', 'CONTACT US', NULL, NULL, NULL, NULL, '/contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/contact', 0, 6, 0, 1, 1, 1, 0, 0, 0, 6, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 04:04:20', '2025-08-13 00:02:05'),
(6, NULL, 'ติดต่อเรา', 'CONTACT US', NULL, NULL, NULL, NULL, '/contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/contact', 0, 6, 0, 1, 1, 1, 0, 0, 0, 6, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 04:04:12', '2025-08-13 01:02:31'),
(7, NULL, 'MEMBER', 'MEMBER', NULL, NULL, NULL, NULL, 'member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 0, 1, 1, 1, 0, 0, 0, 7, 2, 0, 1, 0, NULL, NULL, 'ar', 0, '2025-08-14 04:07:50', '2025-08-13 00:02:19'),
(7, NULL, 'MEMBER', 'MEMBER', NULL, NULL, NULL, NULL, 'member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 0, 1, 1, 1, 0, 0, 0, 7, 2, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 04:07:50', '2025-08-13 00:02:19'),
(7, NULL, 'สมาชิก', 'MEMBER', NULL, NULL, NULL, NULL, 'member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 0, 1, 1, 1, 0, 0, 0, 7, 2, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 04:07:49', '2025-08-13 01:02:48'),
(8, NULL, 'ลงทะเบียน', 'REGISTER', NULL, NULL, NULL, NULL, 'register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 0, 1, 1, 1, 0, 0, 0, 8, 2, 0, 1, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:40:57'),
(8, NULL, 'Register', 'REGISTER', NULL, NULL, NULL, NULL, 'register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 0, 1, 1, 1, 0, 0, 0, 8, 2, 0, 1, 0, NULL, NULL, 'en', 0, NULL, '2025-08-25 00:15:47'),
(8, NULL, 'ลงทะเบียน', 'REGISTER', NULL, '', NULL, NULL, 'register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 8, 0, 1, 1, 1, 0, 0, 0, 8, 2, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-11 03:18:30', '2025-08-13 01:08:30'),
(9, NULL, 'SignIn', 'Sign In', NULL, NULL, NULL, NULL, 'register/sign in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/login', 8, 8, 1, 1, 1, 1, 0, 0, 0, 9, 2, 0, 0, 0, NULL, NULL, 'ar', 0, NULL, '2025-08-25 00:50:27'),
(9, NULL, 'SignIn', 'Sign In', NULL, NULL, NULL, NULL, 'register/sign in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/login', 8, 8, 1, 1, 1, 1, 0, 0, 0, 9, 2, 0, 0, 0, NULL, NULL, 'en', 0, NULL, '2025-08-25 00:50:27'),
(9, NULL, 'เข้าสู่ระบบ', 'Sign In', NULL, '', NULL, NULL, 'register/sign in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/login', 8, 8, 1, 1, 1, 1, 0, 0, 0, 9, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-11 03:19:17', '2025-08-13 00:26:22'),
(12, NULL, 'Register', 'Register', NULL, NULL, NULL, NULL, 'register/register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/register', 8, 8, 1, 1, 1, 1, 0, 0, 0, 10, 1, 0, 0, 0, NULL, NULL, 'ar', 0, '2025-09-09 09:50:34', '2025-08-26 03:19:56'),
(12, NULL, 'Register', 'Register', NULL, NULL, NULL, NULL, 'register/register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/register', 8, 8, 1, 1, 1, 1, 0, 0, 0, 10, 1, 0, 0, 0, NULL, NULL, 'en', 0, '2025-09-09 09:49:49', '2025-08-26 03:19:56'),
(12, NULL, 'ลงทะเบียน', 'Register', NULL, '', NULL, NULL, 'register/register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/register', 8, 8, 1, 1, 1, 1, 0, 0, 0, 10, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-11 03:20:23', '2025-08-13 01:08:39'),
(13, NULL, 'Profile', 'Profile', NULL, '', NULL, NULL, 'member/Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar/profile', 7, 7, 1, 1, 1, 1, 0, 0, 0, 11, 2, 0, 0, 0, NULL, NULL, 'ar', 0, '2025-08-13 02:53:37', '2025-08-13 02:55:28'),
(13, NULL, 'Profile', 'Profile', NULL, '', NULL, NULL, 'member/Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en/profile', 7, 7, 1, 1, 1, 1, 0, 0, 0, 11, 2, 0, 0, 0, NULL, NULL, 'en', 0, '2025-08-13 02:53:37', '2025-08-13 02:55:28'),
(13, NULL, 'โปรไฟล์', 'Profile', NULL, '', NULL, NULL, 'member/Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'th/profile', 7, 7, 1, 1, 1, 1, 0, 0, 0, 11, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-13 02:53:37', '2025-08-13 02:55:28'),
(14, NULL, 'Sign Out', 'Sign out', NULL, '', NULL, NULL, 'member/sign out', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar/logout', 7, 7, 1, 1, 1, 1, 0, 0, 0, 12, 2, 0, 0, 0, NULL, NULL, 'ar', 0, '2025-08-13 02:54:50', '2025-08-13 02:57:54'),
(14, NULL, 'Sign Out', 'Sign out', NULL, '', NULL, NULL, 'member/sign out', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en/logout', 7, 7, 1, 1, 1, 1, 0, 0, 0, 12, 2, 0, 0, 0, NULL, NULL, 'en', 0, '2025-08-13 02:54:50', '2025-08-13 02:57:54'),
(14, NULL, 'ออกจากระบบ', 'Sign out', NULL, '', NULL, NULL, 'member/sign out', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'th/logout', 7, 7, 1, 1, 1, 1, 0, 0, 0, 12, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-13 02:54:50', '2025-08-13 02:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `countries_configs`
--

CREATE TABLE `countries_configs` (
  `id` bigint(20) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `english` varchar(100) DEFAULT NULL,
  `thai` varchar(100) DEFAULT NULL,
  `arabic` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries_configs`
--

INSERT INTO `countries_configs` (`id`, `code`, `english`, `thai`, `arabic`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 'อัฟกานิสถาน', 'أفغانستان', '2025-09-10 06:53:45', '2025-09-10 06:59:02'),
(2, 'AL', 'Albania', 'แอลเบเนีย', 'ألبانيا', '2025-09-10 06:53:51', '2025-09-10 06:59:02'),
(3, 'DZ', 'Algeria', 'แอลจีเรีย', 'الجزائر', '2025-09-10 06:53:55', '2025-09-10 06:59:02'),
(4, 'AS', 'American Samoa', 'อเมริกันซามัว', 'ساموا الأمريكية', '2025-09-10 06:54:00', '2025-09-10 06:59:01'),
(5, 'AD', 'Andorra', 'อันดอร์รา', 'أندورا', '2025-09-10 06:54:01', '2025-09-10 06:59:01'),
(6, 'AO', 'Angola', 'แองโกลา', 'أنغولا', '2025-09-10 06:54:01', '2025-09-10 06:59:01'),
(7, 'AI', 'Anguilla', 'แองกวิลลา', 'أنغويلا', '2025-09-10 06:54:02', '2025-09-10 06:58:59'),
(8, 'AQ', 'Antarctica', 'แอนตาร์กติกา', 'أنتاركتيكا', '2025-09-10 06:54:02', '2025-09-10 06:58:56'),
(9, 'AG', 'Antigua and Barbuda', 'แอนติกาและบาร์บูดา', 'أنتيغوا وبربودا', '2025-09-10 06:54:03', '2025-09-10 06:58:56'),
(10, 'AR', 'Argentina', 'อาร์เจนตินา', 'الأرجنتين', '2025-09-10 06:54:03', '2025-09-10 06:58:55'),
(11, 'AM', 'Armenia', 'อาร์เมเนีย', 'أرمينيا', '2025-09-10 06:54:03', '2025-09-10 06:58:55'),
(12, 'AW', 'Aruba', 'อารูบา', 'أروبا', '2025-09-10 06:54:04', '2025-09-10 06:58:55'),
(13, 'AU', 'Australia', 'ออสเตรเลีย', 'أستراليا', '2025-09-10 06:54:05', '2025-09-10 06:58:55'),
(14, 'AT', 'Austria', 'ออสเตรีย', 'النمسا', '2025-09-10 06:54:05', '2025-09-10 06:58:54'),
(15, 'AZ', 'Azerbaijan', 'อาเซอร์ไบจาน', 'أذربيجان', '2025-09-10 06:54:05', '2025-09-10 06:58:54'),
(16, 'BS', 'Bahamas', 'บาฮามาส', 'جزر البهاما', '2025-09-10 06:54:06', '2025-09-10 06:58:54'),
(17, 'BH', 'Bahrain', 'บาห์เรน', 'البحرين', '2025-09-10 06:54:07', '2025-09-10 06:58:54'),
(18, 'BD', 'Bangladesh', 'บังกลาเทศ', 'بنغلاديش', '2025-09-10 06:54:07', '2025-09-10 06:58:53'),
(19, 'BB', 'Barbados', 'บาร์เบโดส', 'بربادوس', '2025-09-10 06:54:08', '2025-09-10 06:58:53'),
(20, 'BY', 'Belarus', 'เบลารุส', 'بيلاروس', '2025-09-10 06:54:08', '2025-09-10 06:58:53'),
(21, 'BE', 'Belgium', 'เบลเยียม', 'بلجيكا', '2025-09-10 06:54:09', '2025-09-10 06:58:53'),
(22, 'BZ', 'Belize', 'เบลีซ', 'بليز', '2025-09-10 06:54:09', '2025-09-10 06:58:52'),
(23, 'BJ', 'Benin', 'เบนิน', 'بنين', '2025-09-10 06:54:10', '2025-09-10 06:58:52'),
(24, 'BM', 'Bermuda', 'เบอร์มิวดา', 'برمودا', '2025-09-10 06:54:10', '2025-09-10 06:58:52'),
(25, 'BT', 'Bhutan', 'ภูฏาน', 'بوتان', '2025-09-10 06:54:11', '2025-09-10 06:58:51'),
(26, 'BO', 'Bolivia, Plurinational State of', 'โบลิเวีย', 'بوليفيا', '2025-09-10 06:54:11', '2025-09-10 06:58:50'),
(27, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'เนเธอร์แลนด์แคริบเบียน', 'هولندا الكاريبية', '2025-09-10 06:54:12', '2025-09-10 06:58:49'),
(28, 'BA', 'Bosnia and Herzegovina', 'บอสเนียและเฮอร์เซโกวีนา', 'البوسنة والهرسك', '2025-09-10 06:54:12', '2025-09-10 06:58:49'),
(29, 'BW', 'Botswana', 'บอตสวานา', 'بوتسوانا', '2025-09-10 06:54:13', '2025-09-10 06:58:49'),
(30, 'BV', 'Bouvet Island', 'เกาะบูเว', 'جزيرة بوفيه', '2025-09-10 06:54:13', '2025-09-10 06:58:48'),
(31, 'BR', 'Brazil', 'บราซิล', 'البرازيل', '2025-09-10 06:54:14', '2025-09-10 06:58:48'),
(32, 'IO', 'British Indian Ocean Territory', 'บริติชอินเดียนโอเชียนเทร์ริทอรี', 'الإقليم البريطاني في المحيط الهندي', '2025-09-10 06:54:15', '2025-09-10 06:58:48'),
(33, 'BN', 'Brunei Darussalam', 'บรูไน', 'بروناي', '2025-09-10 06:54:15', '2025-09-10 06:58:48'),
(34, 'BG', 'Bulgaria', 'บัลแกเรีย', 'بلغاريا', '2025-09-10 06:54:16', '2025-09-10 06:58:47'),
(35, 'BF', 'Burkina Faso', 'บูร์กินาฟาโซ', 'بوركينا فاسو', '2025-09-10 06:54:17', '2025-09-10 06:58:47'),
(36, 'BI', 'Burundi', 'บุรุนดี', 'بوروندي', '2025-09-10 06:54:17', '2025-09-10 06:58:47'),
(37, 'CV', 'Cabo Verde', 'เคปเวิร์ด', 'الرأس الأخضر', '2025-09-10 06:54:18', '2025-09-10 06:58:47'),
(38, 'KH', 'Cambodia', 'กัมพูชา', 'كمبوديا', '2025-09-10 06:54:18', '2025-09-10 06:58:46'),
(39, 'CM', 'Cameroon', 'แคเมอรูน', 'الكاميرون', '2025-09-10 06:54:19', '2025-09-10 06:58:46'),
(40, 'CA', 'Canada', 'แคนาดา', 'كندا', '2025-09-10 06:54:19', '2025-09-10 06:58:46'),
(41, 'KY', 'Cayman Islands', 'หมู่เกาะเคย์แมน', 'جزر كايمان', '2025-09-10 06:54:20', '2025-09-10 06:58:45'),
(42, 'CF', 'Central African Republic', 'สาธารณรัฐแอฟริกากลาง', 'جمهورية أفريقيا الوسطى', '2025-09-10 06:54:20', '2025-09-10 06:58:45'),
(43, 'TD', 'Chad', 'ชาด', 'تشاد', '2025-09-10 06:54:21', '2025-09-10 06:58:45'),
(44, 'CL', 'Chile', 'ชิลี', 'تشيلي', '2025-09-10 06:54:21', '2025-09-10 06:58:45'),
(45, 'CN', 'China', 'จีน', 'الصين', '2025-09-10 06:54:22', '2025-09-10 06:58:44'),
(46, 'CX', 'Christmas Island', 'เกาะคริสต์มาส', 'جزيرة كريسماس', '2025-09-10 06:54:23', '2025-09-10 06:58:44'),
(47, 'CC', 'Cocos (Keeling) Islands', 'หมู่เกาะโคโคส (คีลิง)', 'جزر كوكوس (كيلينغ)', '2025-09-10 06:54:23', '2025-09-10 06:58:44'),
(48, 'CO', 'Colombia', 'โคลอมเบีย', 'كولومبيا', '2025-09-10 06:54:24', '2025-09-10 06:58:43'),
(49, 'KM', 'Comoros', 'คอโมโรส', 'جزر القمر', '2025-09-10 06:54:24', '2025-09-10 06:58:42'),
(50, 'CG', 'Congo', 'คองโก - บราซซาวิล', 'الكونغو - برازافيل', '2025-09-10 06:54:25', '2025-09-10 06:58:39'),
(51, 'CD', 'Congo, The Democratic Republic of the', 'คองโก - กินชาซา', 'الكونغو - كينشاسا', '2025-09-10 06:54:25', '2025-09-10 06:58:38'),
(52, 'CK', 'Cook Islands', 'หมู่เกาะคุก', 'جزر كوك', '2025-09-10 06:54:26', '2025-09-10 06:58:38'),
(53, 'CR', 'Costa Rica', 'คอสตาริกา', 'كوستاريكا', '2025-09-10 06:54:26', '2025-09-10 06:58:38'),
(54, 'HR', 'Croatia', 'โครเอเชีย', 'كرواتيا', '2025-09-10 06:54:27', '2025-09-10 06:58:38'),
(55, 'CU', 'Cuba', 'คิวบา', 'كوبا', '2025-09-10 06:54:27', '2025-09-10 06:58:37'),
(56, 'CW', 'Curaçao', 'คูราเซา', 'كوراساو', '2025-09-10 06:54:28', '2025-09-10 06:58:37'),
(57, 'CY', 'Cyprus', 'ไซปรัส', 'قبرص', '2025-09-10 06:54:29', '2025-09-10 06:58:37'),
(58, 'CZ', 'Czechia', 'เช็ก', 'التشيك', '2025-09-10 06:54:29', '2025-09-10 06:58:37'),
(59, 'CI', 'Côte d\'Ivoire', 'โกตดิวัวร์', 'ساحل العاج', '2025-09-10 06:54:30', '2025-09-10 06:58:36'),
(60, 'DK', 'Denmark', 'เดนมาร์ก', 'الدانمرك', '2025-09-10 06:54:30', '2025-09-10 06:58:36'),
(61, 'DJ', 'Djibouti', 'จิบูตี', 'جيبوتي', '2025-09-10 06:54:31', '2025-09-10 06:58:36'),
(62, 'DM', 'Dominica', 'โดมินิกา', 'دومينيكا', '2025-09-10 06:54:32', '2025-09-10 06:58:36'),
(63, 'DO', 'Dominican Republic', 'สาธารณรัฐโดมินิกัน', 'جمهورية الدومينيكان', '2025-09-10 06:54:32', '2025-09-10 06:58:35'),
(64, 'EC', 'Ecuador', 'เอกวาดอร์', 'الإكوادور', '2025-09-10 06:54:34', '2025-09-10 06:58:35'),
(65, 'EG', 'Egypt', 'อียิปต์', 'مصر', '2025-09-10 06:54:34', '2025-09-10 06:58:35'),
(66, 'SV', 'El Salvador', 'เอลซัลวาดอร์', 'السلفادور', '2025-09-10 06:54:38', '2025-09-10 06:58:35'),
(67, 'GQ', 'Equatorial Guinea', 'อิเควทอเรียลกินี', 'غينيا الاستوائية', '2025-09-10 06:54:35', '2025-09-10 06:58:35'),
(68, 'ER', 'Eritrea', 'เอริเทรีย', 'إريتريا', '2025-09-10 06:54:35', '2025-09-10 06:58:34'),
(69, 'EE', 'Estonia', 'เอสโตเนีย', 'إستونيا', '2025-09-10 06:54:36', '2025-09-10 06:58:34'),
(70, 'SZ', 'Eswatini', 'เอสวาตีนี', 'إسواتيني', '2025-09-10 06:54:36', '2025-09-10 06:58:33'),
(71, 'ET', 'Ethiopia', 'เอธิโอเปีย', 'إثيوبيا', '2025-09-10 06:54:36', '2025-09-10 06:58:31'),
(72, 'FK', 'Falkland Islands (Malvinas)', 'หมู่เกาะฟอล์กแลนด์', 'جزر فوكلاند', '2025-09-10 06:54:36', '2025-09-10 06:58:30'),
(73, 'FO', 'Faroe Islands', 'หมู่เกาะแฟโร', 'جزر فارو', '2025-09-10 06:54:37', '2025-09-10 06:58:30'),
(74, 'FJ', 'Fiji', 'ฟิจิ', 'فيجي', '2025-09-10 06:54:37', '2025-09-10 06:58:30'),
(75, 'FI', 'Finland', 'ฟินแลนด์', 'فنلندا', '2025-09-10 06:54:43', '2025-09-10 06:58:30'),
(76, 'FR', 'France', 'ฝรั่งเศส', 'فرنسا', '2025-09-10 06:54:42', '2025-09-10 06:58:29'),
(77, 'GF', 'French Guiana', 'เฟรนช์เกียนา', 'غويانا الفرنسية', '2025-09-10 06:54:44', '2025-09-10 06:58:29'),
(78, 'PF', 'French Polynesia', 'เฟรนช์โปลินีเซีย', 'بولينيزيا الفرنسية', '2025-09-10 06:54:45', '2025-09-10 06:58:29'),
(79, 'TF', 'French Southern Territories', 'เฟรนช์เซาเทิร์นเทร์ริทอรีส์', 'الأقاليم الجنوبية الفرنسية', '2025-09-10 06:54:45', '2025-09-10 06:58:29'),
(80, 'GA', 'Gabon', 'กาบอง', 'الغابون', '2025-09-10 06:54:45', '2025-09-10 06:58:28'),
(81, 'GM', 'Gambia', 'แกมเบีย', 'غامبيا', '2025-09-10 06:54:46', '2025-09-10 06:58:28'),
(82, 'GE', 'Georgia', 'จอร์เจีย', 'جورجيا', '2025-09-10 06:54:46', '2025-09-10 06:58:28'),
(83, 'DE', 'Germany', 'เยอรมนี', 'ألمانيا', '2025-09-10 06:54:47', '2025-09-10 06:58:28'),
(84, 'GH', 'Ghana', 'กานา', 'غانا', '2025-09-10 06:54:47', '2025-09-10 06:58:27'),
(85, 'GI', 'Gibraltar', 'ยิบรอลตาร์', 'جبل طارق', '2025-09-10 06:54:47', '2025-09-10 06:58:27'),
(86, 'GR', 'Greece', 'กรีซ', 'اليونان', '2025-09-10 06:54:48', '2025-09-10 06:58:27'),
(87, 'GL', 'Greenland', 'กรีนแลนด์', 'غرينلاند', '2025-09-10 06:54:48', '2025-09-10 06:58:27'),
(88, 'GD', 'Grenada', 'เกรเนดา', 'غرينادا', '2025-09-10 06:54:48', '2025-09-10 06:58:26'),
(89, 'GP', 'Guadeloupe', 'กวาเดอลูป', 'غوادلوب', '2025-09-10 06:54:48', '2025-09-10 06:58:25'),
(90, 'GU', 'Guam', 'กวม', 'غوام', '2025-09-10 06:54:49', '2025-09-10 06:58:21'),
(91, 'GT', 'Guatemala', 'กัวเตมาลา', 'غواتيمالا', '2025-09-10 06:54:49', '2025-09-10 06:58:20'),
(92, 'GG', 'Guernsey', 'เกิร์นซีย์', 'غيرنزي', '2025-09-10 06:54:49', '2025-09-10 06:58:20'),
(93, 'GN', 'Guinea', 'กินี', 'غينيا', '2025-09-10 06:54:50', '2025-09-10 06:58:20'),
(94, 'GW', 'Guinea-Bissau', 'กินี-บิสเซา', 'غينيا بيساو', '2025-09-10 06:54:50', '2025-09-10 06:58:22'),
(95, 'GY', 'Guyana', 'กายอานา', 'غيانا', '2025-09-10 06:54:50', '2025-09-10 06:58:15'),
(96, 'HT', 'Haiti', 'เฮติ', 'هايتي', '2025-09-10 06:54:51', '2025-09-10 06:58:15'),
(97, 'HM', 'Heard Island and McDonald Islands', 'เกาะเฮิร์ดและหมู่เกาะแมกดอนัลด์', 'جزيرة هيرد وجزر ماكدونالد', '2025-09-10 06:54:51', '2025-09-10 06:58:15'),
(98, 'VA', 'Holy See (Vatican City State)', 'นครวาติกัน', 'الفاتيكان', '2025-09-10 06:54:51', '2025-09-10 06:58:15'),
(99, 'HN', 'Honduras', 'ฮอนดูรัส', 'هندوراس', '2025-09-10 06:55:08', '2025-09-10 06:58:14'),
(100, 'HK', 'Hong Kong', 'เขตปกครองพิเศษฮ่องกงแห่งสาธารณรัฐประชาชนจีน', 'هونغ كونغ الصينية (منطقة إدارية خاصة)', '2025-09-10 06:55:12', '2025-09-10 06:58:14'),
(101, 'HU', 'Hungary', 'ฮังการี', 'هنغاريا', '2025-09-10 06:55:12', '2025-09-10 06:58:14'),
(102, 'IS', 'Iceland', 'ไอซ์แลนด์', 'آيسلندا', '2025-09-10 06:55:12', '2025-09-10 06:58:14'),
(103, 'IN', 'India', 'อินเดีย', 'الهند', '2025-09-10 06:55:13', '2025-09-10 06:58:13'),
(104, 'ID', 'Indonesia', 'อินโดนีเซีย', 'إندونيسيا', '2025-09-10 06:55:13', '2025-09-10 06:58:13'),
(105, 'IR', 'Iran, Islamic Republic of', 'อิหร่าน', 'إيران', '2025-09-10 06:55:13', '2025-09-10 06:58:13'),
(106, 'IQ', 'Iraq', 'อิรัก', 'العراق', '2025-09-10 06:55:14', '2025-09-10 06:58:12'),
(107, 'IE', 'Ireland', 'ไอร์แลนด์', 'أيرلندا', '2025-09-10 06:55:14', '2025-09-10 06:58:12'),
(108, 'IM', 'Isle of Man', 'เกาะแมน', 'جزيرة مان', '2025-09-10 06:55:14', '2025-09-10 06:58:12'),
(109, 'IL', 'Israel', 'อิสราเอล', 'إسرائيل', '2025-09-10 06:55:14', '2025-09-10 06:58:12'),
(110, 'IT', 'Italy', 'อิตาลี', 'إيطاليا', '2025-09-10 06:55:15', '2025-09-10 06:58:11'),
(111, 'JM', 'Jamaica', 'จาเมกา', 'جامايكا', '2025-09-10 06:55:15', '2025-09-10 06:58:11'),
(112, 'JP', 'Japan', 'ญี่ปุ่น', 'اليابان', '2025-09-10 06:55:15', '2025-09-10 06:58:11'),
(113, 'JE', 'Jersey', 'เจอร์ซีย์', 'جيرسي', '2025-09-10 06:55:15', '2025-09-10 06:58:10'),
(114, 'JO', 'Jordan', 'จอร์แดน', 'الأردن', '2025-09-10 06:55:16', '2025-09-10 06:58:10'),
(115, 'KZ', 'Kazakhstan', 'คาซัคสถาน', 'كازاخستان', '2025-09-10 06:55:16', '2025-09-10 06:58:10'),
(116, 'KE', 'Kenya', 'เคนยา', 'كينيا', '2025-09-10 06:55:16', '2025-09-10 06:58:09'),
(117, 'KI', 'Kiribati', 'คิริบาส', 'كيريباتي', '2025-09-10 06:55:16', '2025-09-10 06:58:09'),
(118, 'KP', 'Korea, Democratic People\'s Republic of', 'เกาหลีเหนือ', 'كوريا الشمالية', '2025-09-10 06:55:17', '2025-09-10 06:58:08'),
(119, 'KR', 'Korea, Republic of', 'เกาหลีใต้', 'كوريا الجنوبية', '2025-09-10 06:55:17', '2025-09-10 06:58:04'),
(120, 'KW', 'Kuwait', 'คูเวต', 'الكويت', '2025-09-10 06:55:17', '2025-09-10 06:58:03'),
(121, 'KG', 'Kyrgyzstan', 'คีร์กีซสถาน', 'قيرغيزستان', '2025-09-10 06:55:17', '2025-09-10 06:58:03'),
(122, 'LA', 'Lao People\'s Democratic Republic', 'ลาว', 'لاوس', '2025-09-10 06:55:17', '2025-09-10 06:58:03'),
(123, 'LV', 'Latvia', 'ลัตเวีย', 'لاتفيا', '2025-09-10 06:55:18', '2025-09-10 06:58:02'),
(124, 'LB', 'Lebanon', 'เลบานอน', 'لبنان', '2025-09-10 06:55:18', '2025-09-10 06:58:02'),
(125, 'LS', 'Lesotho', 'เลโซโท', 'ليسوتو', '2025-09-10 06:55:18', '2025-09-10 06:58:02'),
(126, 'LR', 'Liberia', 'ไลบีเรีย', 'ليبيريا', '2025-09-10 06:55:18', '2025-09-10 06:58:01'),
(127, 'LY', 'Libya', 'ลิเบีย', 'ليبيا', '2025-09-10 06:55:19', '2025-09-10 06:58:01'),
(128, 'LI', 'Liechtenstein', 'ลิกเตนสไตน์', 'ليختنشتاين', '2025-09-10 06:55:19', '2025-09-10 06:58:00'),
(129, 'LT', 'Lithuania', 'ลิทัวเนีย', 'ليتوانيا', '2025-09-10 06:55:19', '2025-09-10 06:58:00'),
(130, 'LU', 'Luxembourg', 'ลักเซมเบิร์ก', 'لوكسمبورغ', '2025-09-10 06:55:19', '2025-09-10 06:58:00'),
(131, 'MO', 'Macao', 'เขตปกครองพิเศษมาเก๊าแห่งสาธารณรัฐประชาชนจีน', 'منطقة ماكاو الإدارية الخاصة', '2025-09-10 06:55:19', '2025-09-10 06:57:59'),
(132, 'MG', 'Madagascar', 'มาดากัสการ์', 'مدغشقر', '2025-09-10 06:55:20', '2025-09-10 06:57:59'),
(133, 'MW', 'Malawi', 'มาลาวี', 'ملاوي', '2025-09-10 06:55:20', '2025-09-10 06:57:58'),
(134, 'MY', 'Malaysia', 'มาเลเซีย', 'ماليزيا', '2025-09-10 06:55:20', '2025-09-10 06:57:58'),
(135, 'MV', 'Maldives', 'มัลดีฟส์', 'جزر المالديف', '2025-09-10 06:55:20', '2025-09-10 06:57:58'),
(136, 'ML', 'Mali', 'มาลี', 'مالي', '2025-09-10 06:55:21', '2025-09-10 06:57:57'),
(137, 'MT', 'Malta', 'มอลตา', 'مالطا', '2025-09-10 06:55:21', '2025-09-10 06:57:56'),
(138, 'MH', 'Marshall Islands', 'หมู่เกาะมาร์แชลล์', 'جزر مارشال', '2025-09-10 06:55:21', '2025-09-10 06:57:56'),
(139, 'MQ', 'Martinique', 'มาร์ตินีก', 'جزر المارتينيك', '2025-09-10 06:55:21', '2025-09-10 06:57:55'),
(140, 'MR', 'Mauritania', 'มอริเตเนีย', 'موريتانيا', '2025-09-10 06:55:21', '2025-09-10 06:57:55'),
(141, 'MU', 'Mauritius', 'มอริเชียส', 'موريشيوس', '2025-09-10 06:55:22', '2025-09-10 06:57:55'),
(142, 'YT', 'Mayotte', 'มายอต', 'مايوت', '2025-09-10 06:55:22', '2025-09-10 06:57:54'),
(143, 'MX', 'Mexico', 'เม็กซิโก', 'المكسيك', '2025-09-10 06:55:22', '2025-09-10 06:57:53'),
(144, 'FM', 'Micronesia, Federated States of', 'ไมโครนีเซีย', 'ميكرونيزيا', '2025-09-10 06:55:22', '2025-09-10 06:57:53'),
(145, 'MD', 'Moldova, Republic of', 'มอลโดวา', 'مولدوفا', '2025-09-10 06:55:23', '2025-09-10 06:57:53'),
(146, 'MC', 'Monaco', 'โมนาโก', 'موناكو', '2025-09-10 06:55:23', '2025-09-10 06:57:52'),
(147, 'MN', 'Mongolia', 'มองโกเลีย', 'منغوليا', '2025-09-10 06:55:23', '2025-09-10 06:57:52'),
(148, 'ME', 'Montenegro', 'มอนเตเนโกร', 'الجبل الأسود', '2025-09-10 06:55:23', '2025-09-10 06:57:51'),
(149, 'MS', 'Montserrat', 'มอนต์เซอร์รัต', 'مونتسرات', '2025-09-10 06:55:29', '2025-09-10 06:57:47'),
(150, 'MA', 'Morocco', 'โมร็อกโก', 'المغرب', '2025-09-10 06:55:36', '2025-09-10 06:57:46'),
(151, 'MZ', 'Mozambique', 'โมซัมบิก', 'موزمبيق', '2025-09-10 06:55:36', '2025-09-10 06:57:46'),
(152, 'MM', 'Myanmar', 'เมียนมา (พม่า)', 'ميانمار (بورما)', '2025-09-10 06:55:37', '2025-09-10 06:57:45'),
(153, 'NA', 'Namibia', 'นามิเบีย', 'ناميبيا', '2025-09-10 06:55:37', '2025-09-10 06:57:45'),
(154, 'NR', 'Nauru', 'นาอูรู', 'ناورو', '2025-09-10 06:55:37', '2025-09-10 06:57:44'),
(155, 'NP', 'Nepal', 'เนปาล', 'نيبال', '2025-09-10 06:55:37', '2025-09-10 06:57:44'),
(156, 'NL', 'Netherlands', 'เนเธอร์แลนด์', 'هولندا', '2025-09-10 06:55:38', '2025-09-10 06:57:43'),
(157, 'NC', 'New Caledonia', 'นิวแคลิโดเนีย', 'كاليدونيا الجديدة', '2025-09-10 06:55:38', '2025-09-10 06:57:43'),
(158, 'NZ', 'New Zealand', 'นิวซีแลนด์', 'نيوزيلندا', '2025-09-10 06:55:38', '2025-09-10 06:57:42'),
(159, 'NI', 'Nicaragua', 'นิการากัว', 'نيكاراغوا', '2025-09-10 06:55:38', '2025-09-10 06:57:42'),
(160, 'NE', 'Niger', 'ไนเจอร์', 'النيجر', '2025-09-10 06:55:38', '2025-09-10 06:57:41'),
(161, 'NG', 'Nigeria', 'ไนจีเรีย', 'نيجيريا', '2025-09-10 06:55:39', '2025-09-10 06:57:41'),
(162, 'NU', 'Niue', 'นีอูเอ', 'نيوي', '2025-09-10 06:55:39', '2025-09-10 06:57:40'),
(163, 'NF', 'Norfolk Island', 'เกาะนอร์ฟอล์ก', 'جزيرة نورفولك', '2025-09-10 06:55:39', '2025-09-10 06:57:40'),
(164, 'MK', 'North Macedonia', 'มาซิโดเนียเหนือ', 'مقدونيا الشمالية', '2025-09-10 06:55:39', '2025-09-10 06:57:38'),
(165, 'MP', 'Northern Mariana Islands', 'หมู่เกาะนอร์เทิร์นมาเรียนา', 'جزر ماريانا الشمالية', '2025-09-10 06:55:40', '2025-09-10 06:57:38'),
(166, 'NO', 'Norway', 'นอร์เวย์', 'النرويج', '2025-09-10 06:55:40', '2025-09-10 06:57:37'),
(167, 'OM', 'Oman', 'โอมาน', 'عُمان', '2025-09-10 06:55:40', '2025-09-10 06:57:36'),
(168, 'PK', 'Pakistan', 'ปากีสถาน', 'باكستان', '2025-09-10 06:55:40', '2025-09-10 06:57:36'),
(169, 'PW', 'Palau', 'ปาเลา', 'بالاو', '2025-09-10 06:55:41', '2025-09-10 06:57:35'),
(170, 'PS', 'Palestine, State of', 'ดินแดนปาเลสไตน์', 'الأراضي الفلسطينية', '2025-09-10 06:55:41', '2025-09-10 06:57:32'),
(171, 'PA', 'Panama', 'ปานามา', 'بنما', '2025-09-10 06:55:42', '2025-09-10 06:57:32'),
(172, 'PG', 'Papua New Guinea', 'ปาปัวนิวกินี', 'بابوا غينيا الجديدة', '2025-09-10 06:55:42', '2025-09-10 06:57:30'),
(173, 'PY', 'Paraguay', 'ปารากวัย', 'باراغواي', '2025-09-10 06:55:43', '2025-09-10 06:57:30'),
(174, 'PE', 'Peru', 'เปรู', 'بيرو', '2025-09-10 06:55:43', '2025-09-10 06:57:29'),
(175, 'PH', 'Philippines', 'ฟิลิปปินส์', 'الفلبين', '2025-09-10 06:55:44', '2025-09-10 06:57:29'),
(176, 'PN', 'Pitcairn', 'หมู่เกาะพิตแคร์น', 'جزر بيتكيرن', '2025-09-10 06:55:44', '2025-09-10 06:57:28'),
(177, 'PL', 'Poland', 'โปแลนด์', 'بولندا', '2025-09-10 06:55:45', '2025-09-10 06:57:28'),
(178, 'PT', 'Portugal', 'โปรตุเกส', 'البرتغال', '2025-09-10 06:55:45', '2025-09-10 06:57:27'),
(179, 'PR', 'Puerto Rico', 'เปอร์โตริโก', 'بورتوريكو', '2025-09-10 06:55:46', '2025-09-10 06:57:27'),
(180, 'QA', 'Qatar', 'กาตาร์', 'قطر', '2025-09-10 06:55:46', '2025-09-10 06:57:26'),
(181, 'RO', 'Romania', 'โรมาเนีย', 'رومانيا', '2025-09-10 06:55:47', '2025-09-10 06:57:25'),
(182, 'RU', 'Russian Federation', 'รัสเซีย', 'روسيا', '2025-09-10 06:55:47', '2025-09-10 06:57:25'),
(183, 'RW', 'Rwanda', 'รวันดา', 'رواندا', '2025-09-10 06:55:48', '2025-09-10 06:57:25'),
(184, 'RE', 'Réunion', 'เรอูนียง', 'روينيون', '2025-09-10 06:55:48', '2025-09-10 06:57:24'),
(185, 'BL', 'Saint Barthélemy', 'เซนต์บาร์เธเลมี', 'سان بارتليمي', '2025-09-10 06:55:49', '2025-09-10 06:57:24'),
(186, 'SH', 'Saint Helena, Ascension and Tristan da Cunha', 'เซนต์เฮเลนา', 'سانت هيلينا', '2025-09-10 06:55:49', '2025-09-10 06:57:23'),
(187, 'KN', 'Saint Kitts and Nevis', 'เซนต์คิตส์และเนวิส', 'سانت كيتس ونيفيس', '2025-09-10 06:55:50', '2025-09-10 06:57:23'),
(188, 'LC', 'Saint Lucia', 'เซนต์ลูเซีย', 'سانت لوسيا', '2025-09-10 06:55:50', '2025-09-10 06:57:22'),
(189, 'MF', 'Saint Martin (French part)', 'เซนต์มาร์ติน', 'سان مارتن', '2025-09-10 06:55:51', '2025-09-10 06:57:22'),
(190, 'PM', 'Saint Pierre and Miquelon', 'แซงปีแยร์และมีเกอลง', 'سان بيير ومكويلون', '2025-09-10 06:55:51', '2025-09-10 06:57:21'),
(191, 'VC', 'Saint Vincent and the Grenadines', 'เซนต์วินเซนต์และเกรนาดีนส์', 'سانت فنسنت وجزر غرينادين', '2025-09-10 06:55:52', '2025-09-10 06:57:19'),
(192, 'WS', 'Samoa', 'ซามัว', 'ساموا', '2025-09-10 06:55:52', '2025-09-10 06:57:18'),
(193, 'SM', 'San Marino', 'ซานมาริโน', 'سان مارينو', '2025-09-10 06:55:53', '2025-09-10 06:57:18'),
(194, 'ST', 'Sao Tome and Principe', 'เซาตูเมและปรินซิปี', 'ساو تومي وبرينسيبي', '2025-09-10 06:55:53', '2025-09-10 06:57:17'),
(195, 'SA', 'Saudi Arabia', 'ซาอุดีอาระเบีย', 'المملكة العربية السعودية', '2025-09-10 06:55:54', '2025-09-10 06:57:17'),
(196, 'SN', 'Senegal', 'เซเนกัล', 'السنغال', '2025-09-10 06:55:54', '2025-09-10 06:57:16'),
(197, 'RS', 'Serbia', 'เซอร์เบีย', 'صربيا', '2025-09-10 06:55:55', '2025-09-10 06:57:16'),
(198, 'SC', 'Seychelles', 'เซเชลส์', 'سيشل', '2025-09-10 06:55:55', '2025-09-10 06:57:15'),
(199, 'SL', 'Sierra Leone', 'เซียร์ราลีโอน', 'سيراليون', '2025-09-10 06:56:05', '2025-09-10 06:57:14'),
(200, 'SG', 'Singapore', 'สิงคโปร์', 'سنغافورة', '2025-09-10 06:56:00', '2025-09-10 06:57:14'),
(201, 'SX', 'Sint Maarten (Dutch part)', 'ซินต์มาร์เทน', 'سانت مارتن', '2025-09-10 06:56:04', '2025-09-10 06:57:13'),
(202, 'SK', 'Slovakia', 'สโลวะเกีย', 'سلوفاكيا', '2025-09-10 06:56:07', '2025-09-10 06:57:13'),
(203, 'SI', 'Slovenia', 'สโลวีเนีย', 'سلوفينيا', '2025-09-10 06:56:08', '2025-09-10 06:57:13'),
(204, 'SB', 'Solomon Islands', 'หมู่เกาะโซโลมอน', 'جزر سليمان', '2025-09-10 06:56:08', '2025-09-10 06:57:12'),
(205, 'SO', 'Somalia', 'โซมาเลีย', 'الصومال', '2025-09-10 06:56:09', '2025-09-10 06:57:12'),
(206, 'ZA', 'South Africa', 'แอฟริกาใต้', 'جنوب أفريقيا', '2025-09-10 06:56:09', '2025-09-10 06:57:11'),
(207, 'GS', 'South Georgia and the South Sandwich Islands', 'เกาะเซาท์จอร์เจียและหมู่เกาะเซาท์แซนด์วิช', 'جورجيا الجنوبية وجزر ساندويتش الجنوبية', '2025-09-10 06:56:09', '2025-09-10 06:57:11'),
(208, 'SS', 'South Sudan', 'ซูดานใต้', 'جنوب السودان', '2025-09-10 06:56:10', '2025-09-10 06:57:10'),
(209, 'ES', 'Spain', 'สเปน', 'إسبانيا', '2025-09-10 06:56:12', '2025-09-10 06:57:10'),
(210, 'LK', 'Sri Lanka', 'ศรีลังกา', 'سريلانكا', '2025-09-10 06:56:11', '2025-09-10 06:57:05'),
(211, 'SD', 'Sudan', 'ซูดาน', 'السودان', '2025-09-10 06:56:13', '2025-09-10 06:57:05'),
(212, 'SR', 'Suriname', 'ซูรินาเม', 'سورينام', '2025-09-10 06:56:12', '2025-09-10 06:57:04'),
(213, 'SJ', 'Svalbard and Jan Mayen', 'สฟาลบาร์และยานไมเอน', 'سفالبارد وجان ماين', '2025-09-10 06:56:14', '2025-09-10 06:57:04'),
(214, 'SE', 'Sweden', 'สวีเดน', 'السويد', '2025-09-10 06:56:14', '2025-09-10 06:57:03'),
(215, 'CH', 'Switzerland', 'สวิตเซอร์แลนด์', 'سويسرا', '2025-09-10 06:56:16', '2025-09-10 06:57:02'),
(216, 'SY', 'Syrian Arab Republic', 'ซีเรีย', 'سوريا', '2025-09-10 06:56:15', '2025-09-10 06:57:02'),
(217, 'TW', 'Taiwan, Province of China', 'ไต้หวัน', 'تايوان', '2025-09-10 06:56:16', '2025-09-10 06:57:01'),
(218, 'TJ', 'Tajikistan', 'ทาจิกิสถาน', 'طاجيكستان', '2025-09-10 06:56:17', '2025-09-10 06:57:00'),
(219, 'TZ', 'Tanzania, United Republic of', 'แทนซาเนีย', 'تنزانيا', '2025-09-10 06:56:17', '2025-09-10 06:56:59'),
(220, 'TH', 'Thailand', 'ไทย', 'تايلاند', '2025-09-10 06:56:18', '2025-09-10 06:56:59'),
(221, 'TL', 'Timor-Leste', 'ติมอร์-เลสเต', 'تيمور - ليشتي', '2025-09-10 06:56:18', '2025-09-10 06:56:58'),
(222, 'TG', 'Togo', 'โตโก', 'توغو', '2025-09-10 06:56:19', '2025-09-10 06:56:57'),
(223, 'TK', 'Tokelau', 'โตเกเลา', 'توكيلاو', '2025-09-10 06:56:19', '2025-09-10 06:56:57'),
(224, 'TO', 'Tonga', 'ตองกา', 'تونغا', '2025-09-10 06:56:20', '2025-09-10 06:56:56'),
(225, 'TT', 'Trinidad and Tobago', 'ตรินิแดดและโตเบโก', 'ترينيداد وتوباغو', '2025-09-10 06:56:20', '2025-09-10 06:56:56'),
(226, 'TN', 'Tunisia', 'ตูนิเซีย', 'تونس', '2025-09-10 06:56:21', '2025-09-10 06:56:55'),
(227, 'TR', 'Turkey', 'ตุรกี', 'تركيا', '2025-09-10 06:56:21', '2025-09-10 06:56:54'),
(228, 'TM', 'Turkmenistan', 'เติร์กเมนิสถาน', 'تركمانستان', '2025-09-10 06:56:22', '2025-09-10 06:56:54'),
(229, 'TC', 'Turks and Caicos Islands', 'หมู่เกาะเติกส์และหมู่เกาะเคคอส', 'جزر توركس وكايكوس', '2025-09-10 06:56:22', '2025-09-10 06:56:53'),
(230, 'TV', 'Tuvalu', 'ตูวาลู', 'توفالو', '2025-09-10 06:56:23', '2025-09-10 06:56:52'),
(231, 'UG', 'Uganda', 'ยูกันดา', 'أوغندا', '2025-09-10 06:56:24', '2025-09-10 06:56:52'),
(232, 'UA', 'Ukraine', 'ยูเครน', 'أوكرانيا', '2025-09-10 06:56:24', '2025-09-10 06:56:51'),
(233, 'AE', 'United Arab Emirates', 'สหรัฐอาหรับเอมิเรตส์', 'الإمارات العربية المتحدة', '2025-09-10 06:56:25', '2025-09-10 06:56:51'),
(234, 'GB', 'United Kingdom', 'สหราชอาณาจักร', 'المملكة المتحدة', '2025-09-10 06:56:25', '2025-09-10 06:56:50'),
(235, 'US', 'United States', 'สหรัฐอเมริกา', 'الولايات المتحدة', '2025-09-10 06:56:26', '2025-09-10 06:56:50'),
(236, 'UM', 'United States Minor Outlying Islands', 'หมู่เกาะรอบนอกของสหรัฐอเมริกา', 'جزر الولايات المتحدة النائية', '2025-09-10 06:56:26', '2025-09-10 06:56:49'),
(237, 'UY', 'Uruguay', 'อุรุกวัย', 'أورغواي', '2025-09-10 06:56:27', '2025-09-10 06:56:49'),
(238, 'UZ', 'Uzbekistan', 'อุซเบกิสถาน', 'أوزبكستان', '2025-09-10 06:56:28', '2025-09-10 06:56:49'),
(239, 'VU', 'Vanuatu', 'วานูอาตู', 'فانواتو', '2025-09-10 06:56:28', '2025-09-10 06:56:48'),
(240, 'VE', 'Venezuela, Bolivarian Republic of', 'เวเนซุเอลา', 'فنزويلا', '2025-09-10 06:56:29', '2025-09-10 06:56:48'),
(241, 'VN', 'Viet Nam', 'เวียดนาม', 'فيتنام', '2025-09-10 06:56:29', '2025-09-10 06:56:47'),
(242, 'VG', 'Virgin Islands, British', 'หมู่เกาะบริติชเวอร์จิน', 'جزر فيرجن البريطانية', '2025-09-10 06:56:30', '2025-09-10 06:56:47'),
(243, 'VI', 'Virgin Islands, U.S.', 'หมู่เกาะเวอร์จินของสหรัฐอเมริกา', 'جزر فيرجن الأمريكية', '2025-09-10 06:56:31', '2025-09-10 06:56:46'),
(244, 'WF', 'Wallis and Futuna', 'วาลลิสและฟุตูนา', 'جزر والس وفوتونا', '2025-09-10 06:56:31', '2025-09-10 06:56:46'),
(245, 'EH', 'Western Sahara', 'ซาฮาราตะวันตก', 'الصحراء الغربية', '2025-09-10 06:56:32', '2025-09-10 06:56:45'),
(246, 'YE', 'Yemen', 'เยเมน', 'اليمن', '2025-09-10 06:56:33', '2025-09-10 06:56:45'),
(247, 'ZM', 'Zambia', 'แซมเบีย', 'زامبيا', '2025-09-10 06:56:35', '2025-09-10 06:56:44'),
(248, 'ZW', 'Zimbabwe', 'ซิมบับเว', 'زيمبابوي', '2025-09-10 06:56:36', '2025-09-10 06:56:44'),
(249, 'AX', 'Åland Islands', 'หมู่เกาะโอลันด์', 'جزر آلاند', '2025-09-10 06:56:37', '2025-09-10 06:56:42');

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
-- Table structure for table `language_availables`
--

CREATE TABLE `language_availables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `abbv_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `defaults` tinyint(1) NOT NULL DEFAULT 0,
  `display` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_availables`
--

INSERT INTO `language_availables` (`id`, `abbv_name`, `name`, `flag`, `defaults`, `display`, `created_at`, `updated_at`) VALUES
(1, 'th', 'ไทย', 'image/TH.png', 1, 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(2, 'en', 'English', 'image/EN.png', 0, 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(3, 'ar', 'Arabic', 'image/AR.png', 0, 1, '2025-08-14 04:22:19', '2025-08-14 04:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `language_configs`
--

CREATE TABLE `language_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `param` varchar(255) NOT NULL,
  `title` text DEFAULT NULL,
  `language` varchar(255) NOT NULL,
  `page_control` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_configs`
--

INSERT INTO `language_configs` (`id`, `param`, `title`, `language`, `page_control`, `created_at`, `updated_at`) VALUES
(1, 'Register_User name', '*ชื่อผู้ใช้', 'th', '8', '2025-09-06 01:52:01', '2025-09-06 01:52:01'),
(2, 'Register_User name', '*User name', 'en', '8', '2025-09-06 01:52:01', '2025-09-06 01:52:01'),
(3, 'Register_User name', '*اسم المستخدم', 'ar', '8', '2025-09-06 01:52:02', '2025-09-06 01:52:02'),
(4, 'Register_First Name', '*ชื่อ', 'th', '8', '2025-09-09 21:15:39', '2025-09-09 21:15:39'),
(5, 'Register_First Name', '*First Name', 'en', '8', '2025-09-09 21:15:39', '2025-09-09 21:15:39'),
(6, 'Register_First Name', '*اسم', 'ar', '8', '2025-09-09 21:15:39', '2025-09-09 21:15:39'),
(7, 'Register_Last Name', '*นามสกุล', 'th', '8', '2025-09-09 21:16:51', '2025-09-09 21:19:29'),
(8, 'Register_Last Name', '*Last Name', 'en', '8', '2025-09-09 21:16:51', '2025-09-09 21:19:29'),
(9, 'Register_Last Name', '*اسم العائلة', 'ar', '8', '2025-09-09 21:16:51', '2025-09-09 21:19:29'),
(10, 'Register_Telephone Number', '*เบอร์โทรศัพท์', 'th', '8', '2025-09-09 21:19:19', '2025-09-09 21:19:19'),
(11, 'Register_Telephone Number', '*Telephone Number', 'en', '8', '2025-09-09 21:19:19', '2025-09-09 21:19:19'),
(12, 'Register_Telephone Number', '*رقم الهاتف', 'ar', '8', '2025-09-09 21:19:19', '2025-09-09 21:19:19'),
(13, 'Register_Email', '*อีเมล', 'th', '8', '2025-09-09 21:29:05', '2025-09-09 21:55:47'),
(14, 'Register_Email', '*Email', 'en', '8', '2025-09-09 21:29:05', '2025-09-09 21:55:47'),
(15, 'Register_Email', '*بريد إلكتروني', 'ar', '8', '2025-09-09 21:29:05', '2025-09-09 21:55:47'),
(16, 'Register_Password', '*รหัสผ่าน', 'th', '8', '2025-09-09 21:35:26', '2025-09-09 21:35:26'),
(17, 'Register_Password', '*Password', 'en', '8', '2025-09-09 21:35:26', '2025-09-09 21:35:26'),
(18, 'Register_Password', '*كلمة المرور', 'ar', '8', '2025-09-09 21:35:26', '2025-09-09 21:35:26'),
(19, 'Register_Confirm Password', '*ยืนยันรหัสผ่าน', 'th', '8', '2025-09-09 21:58:58', '2025-09-09 21:59:06'),
(20, 'Register_Confirm Password', '*Confirm Password', 'en', '8', '2025-09-09 21:58:58', '2025-09-09 21:59:06'),
(21, 'Register_Confirm Password', '*تأكيد كلمة المرور', 'ar', '8', '2025-09-09 21:58:58', '2025-09-09 21:59:06'),
(22, 'Register_information', 'ข้อมูล', 'th', '8', '2025-09-09 22:00:19', '2025-09-09 22:00:19'),
(23, 'Register_information', 'INFORMATION', 'en', '8', '2025-09-09 22:00:19', '2025-09-09 22:00:19'),
(24, 'Register_information', 'استعلامات', 'ar', '8', '2025-09-09 22:00:19', '2025-09-09 22:00:19'),
(25, 'Register_Text_Heading3', 'คุณทำอาชีพอะไร?', 'th', '8', '2025-09-09 22:05:12', '2025-09-09 23:23:41'),
(26, 'Register_Text_Heading3', 'What is your occupation?', 'en', '8', '2025-09-09 22:05:12', '2025-09-09 23:23:41'),
(27, 'Register_Text_Heading3', 'ما هي مهنتك؟', 'ar', '8', '2025-09-09 22:05:12', '2025-09-09 23:23:41'),
(28, 'Register_Text_Heading4', 'คุณมาจากประเทศไหน?', 'th', '8', '2025-09-10 00:39:41', '2025-09-10 00:39:41'),
(29, 'Register_Text_Heading4', 'Which country are you from?', 'en', '8', '2025-09-10 00:39:41', '2025-09-10 00:39:41'),
(30, 'Register_Text_Heading4', 'من أي بلد أنت؟', 'ar', '8', '2025-09-10 00:39:41', '2025-09-10 00:39:41'),
(31, 'Register_Text_Heading1', 'ลงทะเบียนเพื่อรับรหัสผ่านเพื่อการเติบโตทางธุรกิจร่วมกัน (B2B)', 'th', '8', '2025-09-10 00:41:15', '2025-09-10 00:41:15'),
(32, 'Register_Text_Heading1', 'Register To Get Password For Business Growth Together (B2B)', 'en', '8', '2025-09-10 00:41:15', '2025-09-10 00:41:15'),
(33, 'Register_Text_Heading1', 'سجل للحصول على كلمة مرور لنمو الأعمال معًا (B2B)', 'ar', '8', '2025-09-10 00:41:15', '2025-09-10 00:41:15'),
(34, 'Register_Text_Heading2', 'กรุณากรอกข้อมูลให้ครบถ้วนเพื่อสมัครสมาชิก', 'th', '8', '2025-09-10 00:41:59', '2025-09-10 00:41:59'),
(35, 'Register_Text_Heading2', 'Please fill out the information completely to get member.', 'en', '8', '2025-09-10 00:41:59', '2025-09-10 00:41:59'),
(36, 'Register_Text_Heading2', 'يرجى ملء المعلومات كاملة للحصول على العضوية.', 'ar', '8', '2025-09-10 00:41:59', '2025-09-10 00:41:59'),
(37, 'Register_Text_Heading5', '\"ข้อมูลส่วนบุคคลของคุณมีความสำคัญต่อเรา เราต้องการข้อมูลของคุณเพื่อการประมวลผลและปรับปรุงบริการของเราเท่านั้น โปรดให้ความยินยอม หากคุณยินยอม ถือว่าคุณยอมรับข้อกำหนดการใช้งานตามระเบียบ PDPA ของประเทศไทย โปรดอ่านข้อกำหนดในนโยบายความเป็นส่วนตัวของเรา\"', 'th', '8', '2025-09-10 00:51:09', '2025-09-10 00:51:09'),
(38, 'Register_Text_Heading5', '\"Your personal information is important to us. We need your information solely for processing and improving the services we provide. Please give your consent. If you agree, you accept the terms of use in accordance with Thailand\'s PDPA regulations. Read the terms of our privacy policy.\"', 'en', '8', '2025-09-10 00:51:09', '2025-09-10 00:51:09'),
(39, 'Register_Text_Heading5', '\"معلوماتك الشخصية مهمة بالنسبة لنا. نحتاجها فقط لمعالجة وتحسين الخدمات التي نقدمها. يُرجى الموافقة. بموافقتك، فإنك تقبل شروط الاستخدام وفقًا للوائح قانون حماية البيانات الشخصية في تايلاند. اقرأ شروط سياسة الخصوصية الخاصة بنا.\"', 'ar', '8', '2025-09-10 00:51:09', '2025-09-10 00:51:09'),
(40, 'Register_Select_Country', 'กรุณาเลือกประเทศ', 'th', '8', '2025-09-10 01:08:14', '2025-09-10 01:08:14'),
(41, 'Register_Select_Country', 'Please select a country', 'en', '8', '2025-09-10 01:08:14', '2025-09-10 01:08:14'),
(42, 'Register_Select_Country', 'الرجاء اختيار البلد', 'ar', '8', '2025-09-10 01:08:14', '2025-09-10 01:08:14'),
(43, 'Register_Text_ACCEPT', 'ยอมรับ', 'th', '8', '2025-09-10 01:20:00', '2025-09-10 01:20:00'),
(44, 'Register_Text_ACCEPT', 'ACCEPT', 'en', '8', '2025-09-10 01:20:00', '2025-09-10 01:20:00'),
(45, 'Register_Text_ACCEPT', 'يقبل', 'ar', '8', '2025-09-10 01:20:00', '2025-09-10 01:20:00'),
(46, 'Register_Text_REJECT', 'ปฏิเสธ', 'th', '8', '2025-09-10 01:20:32', '2025-09-10 01:20:32'),
(47, 'Register_Text_REJECT', 'REJECT', 'en', '8', '2025-09-10 01:20:32', '2025-09-10 01:20:32'),
(48, 'Register_Text_REJECT', 'يرفض', 'ar', '8', '2025-09-10 01:20:32', '2025-09-10 01:20:32'),
(49, 'SignIn_Text_Heading1', 'ป้อนรหัสผ่านและเลือกผลิตภัณฑ์สำหรับตลาดของคุณ', 'th', '8', '2025-09-10 01:24:58', '2025-09-10 01:24:58'),
(50, 'SignIn_Text_Heading1', 'Key in password and selecting product for your market', 'en', '8', '2025-09-10 01:24:58', '2025-09-10 01:24:58'),
(51, 'SignIn_Text_Heading1', 'أدخل كلمة المرور واختر المنتج المناسب لسوقك', 'ar', '8', '2025-09-10 01:24:58', '2025-09-10 01:24:58'),
(52, 'SignIn_Text_Heading2', 'กรุณากรอกรายละเอียดของคุณ', 'th', '8', '2025-09-10 01:29:36', '2025-09-10 01:29:36'),
(53, 'SignIn_Text_Heading2', 'Please enter your details.', 'en', '8', '2025-09-10 01:29:36', '2025-09-10 01:29:36'),
(54, 'SignIn_Text_Heading2', 'الرجاء إدخال بياناتك.', 'ar', '8', '2025-09-10 01:29:36', '2025-09-10 01:29:36'),
(55, 'SignIn_User name', '*ชื่อผู้ใช้', 'th', '8', '2025-09-10 01:30:29', '2025-09-10 01:30:29'),
(56, 'SignIn_User name', '*User name', 'en', '8', '2025-09-10 01:30:29', '2025-09-10 01:30:29'),
(57, 'SignIn_User name', '*اسم المستخدم', 'ar', '8', '2025-09-10 01:30:29', '2025-09-10 01:30:29'),
(58, 'SignIn_Password', '*รหัสผ่าน', 'th', '8', '2025-09-10 01:31:06', '2025-09-10 01:31:06'),
(59, 'SignIn_Password', '*Password', 'en', '8', '2025-09-10 01:31:06', '2025-09-10 01:31:06'),
(60, 'SignIn_Password', '*كلمة المرور', 'ar', '8', '2025-09-10 01:31:06', '2025-09-10 01:31:06'),
(61, 'SignIn_RememberMe', 'คงอยู่ในระบบ', 'th', '8', '2025-09-10 01:33:35', '2025-09-10 01:33:35'),
(62, 'SignIn_RememberMe', 'Remember Me', 'en', '8', '2025-09-10 01:33:35', '2025-09-10 01:33:35'),
(63, 'SignIn_RememberMe', 'تذكرنى', 'ar', '8', '2025-09-10 01:33:35', '2025-09-10 01:33:35'),
(64, 'SignIn_Forgot', 'ลืมรหัสผ่าน?', 'th', '8', '2025-09-10 01:34:13', '2025-09-10 01:34:13'),
(65, 'SignIn_Forgot', 'Forgot password?', 'en', '8', '2025-09-10 01:34:13', '2025-09-10 01:34:13'),
(66, 'SignIn_Forgot', 'هل نسيت كلمة السر؟', 'ar', '8', '2025-09-10 01:34:13', '2025-09-10 01:34:13'),
(67, 'SignIn_Register', 'ลงทะเบียนเพื่อรับรหัสผ่านเพื่อการเติบโตทางธุรกิจร่วมกัน (B2B)', 'th', '8', '2025-09-10 01:35:04', '2025-09-10 01:35:04'),
(68, 'SignIn_Register', 'Register to get password for business growth together (B2B)', 'en', '8', '2025-09-10 01:35:04', '2025-09-10 01:35:04'),
(69, 'SignIn_Register', 'سجل للحصول على كلمة المرور لنمو الأعمال معًا (B2B)', 'ar', '8', '2025-09-10 01:35:04', '2025-09-10 01:35:04'),
(70, 'SignIn_SIGN', 'เข้าสู่ระบบ', 'th', '8', '2025-09-10 01:40:57', '2025-09-10 01:40:57'),
(71, 'SignIn_SIGN', 'SIGN IN', 'en', '8', '2025-09-10 01:40:57', '2025-09-10 01:40:57'),
(72, 'SignIn_SIGN', 'تسجيل الدخول', 'ar', '8', '2025-09-10 01:40:57', '2025-09-10 01:40:57'),
(73, 'Profile_MEMBER', 'โปรไฟล์ สมาชิก', 'th', '7', '2025-09-10 02:14:27', '2025-09-10 02:14:27'),
(74, 'Profile_MEMBER', 'PROFILE MEMBER', 'en', '7', '2025-09-10 02:14:27', '2025-09-10 02:14:27'),
(75, 'Profile_MEMBER', 'الملف الشخصي للعضو', 'ar', '7', '2025-09-10 02:14:27', '2025-09-10 02:14:27'),
(76, 'Profile_UserName', '*ชื่อผู้ใช้', 'th', '7', '2025-09-10 02:15:28', '2025-09-10 02:15:28'),
(77, 'Profile_UserName', '*User name', 'en', '7', '2025-09-10 02:15:28', '2025-09-10 02:15:28'),
(78, 'Profile_UserName', 'اسم المستخدم', 'ar', '7', '2025-09-10 02:15:28', '2025-09-10 02:15:28'),
(79, 'Profile_FirstName', '*ชื่อ', 'th', '7', '2025-09-10 02:16:16', '2025-09-10 02:16:16'),
(80, 'Profile_FirstName', '*First Name', 'en', '7', '2025-09-10 02:16:16', '2025-09-10 02:16:16'),
(81, 'Profile_FirstName', '*الاسم الأول', 'ar', '7', '2025-09-10 02:16:16', '2025-09-10 02:16:16'),
(82, 'Profile_LastName', '*นามสกุล', 'th', '7', '2025-09-10 02:17:05', '2025-09-10 02:17:05'),
(83, 'Profile_LastName', '*Last Name', 'en', '7', '2025-09-10 02:17:05', '2025-09-10 02:17:05'),
(84, 'Profile_LastName', '*اسم العائلة', 'ar', '7', '2025-09-10 02:17:05', '2025-09-10 02:17:05'),
(85, 'Profile_Telephone', '*หมายเลขโทรศัพท์', 'th', '7', '2025-09-10 02:20:53', '2025-09-10 02:20:53'),
(86, 'Profile_Telephone', '*Telephone Number', 'en', '7', '2025-09-10 02:20:53', '2025-09-10 02:20:53'),
(87, 'Profile_Telephone', '*رقم الهاتف', 'ar', '7', '2025-09-10 02:20:53', '2025-09-10 02:20:53'),
(88, 'Profile_Email', '*อีเมล', 'th', '7', '2025-09-10 02:21:23', '2025-09-10 02:21:23'),
(89, 'Profile_Email', '*Email', 'en', '7', '2025-09-10 02:21:23', '2025-09-10 02:21:23'),
(90, 'Profile_Email', '*بريد إلكتروني', 'ar', '7', '2025-09-10 02:21:23', '2025-09-10 02:21:23'),
(91, 'Profile_Password', '*รหัสผ่าน', 'th', '7', '2025-09-10 02:26:38', '2025-09-10 02:26:38'),
(92, 'Profile_Password', '*Password', 'en', '7', '2025-09-10 02:26:38', '2025-09-10 02:26:38'),
(93, 'Profile_Password', '*كلمة المرور', 'ar', '7', '2025-09-10 02:26:38', '2025-09-10 02:26:38'),
(94, 'Profile_ConfirmPassword', '*ยืนยันรหัสผ่าน', 'th', '7', '2025-09-10 02:27:24', '2025-09-10 02:27:24'),
(95, 'Profile_ConfirmPassword', '*Confirm Password', 'en', '7', '2025-09-10 02:27:24', '2025-09-10 02:27:24'),
(96, 'Profile_ConfirmPassword', '*تأكيد كلمة المرور', 'ar', '7', '2025-09-10 02:27:24', '2025-09-10 02:27:24'),
(97, 'Profile_SAVE', 'บันทึก', 'th', '7', '2025-09-10 02:28:43', '2025-09-10 02:28:43'),
(98, 'Profile_SAVE', 'SAVE', 'en', '7', '2025-09-10 02:28:43', '2025-09-10 02:28:43'),
(99, 'Profile_SAVE', 'يحفظ', 'ar', '7', '2025-09-10 02:28:43', '2025-09-10 02:28:43'),
(100, 'Profile_CANCEL', 'ยกเลิก', 'th', '7', '2025-09-10 02:29:37', '2025-09-10 02:29:37'),
(101, 'Profile_CANCEL', 'CANCEL', 'en', '7', '2025-09-10 02:29:37', '2025-09-10 02:29:37'),
(102, 'Profile_CANCEL', 'يلغي', 'ar', '7', '2025-09-10 02:29:37', '2025-09-10 02:29:37'),
(103, 'Contact_Text_Heading1', 'ติดต่อเรา', 'th', '6', '2025-09-11 20:15:43', '2025-09-11 20:15:43'),
(104, 'Contact_Text_Heading1', 'CONTACT US', 'en', '6', '2025-09-11 20:15:43', '2025-09-11 20:15:43'),
(105, 'Contact_Text_Heading1', 'اتصل بنا', 'ar', '6', '2025-09-11 20:15:43', '2025-09-11 20:15:43'),
(106, 'Contact_Text_Phone', 'โทรศัพท์', 'th', '6', '2025-09-11 20:17:21', '2025-09-11 20:17:21'),
(107, 'Contact_Text_Phone', 'Phone', 'en', '6', '2025-09-11 20:17:21', '2025-09-11 20:17:21'),
(108, 'Contact_Text_Phone', 'هاتف', 'ar', '6', '2025-09-11 20:17:21', '2025-09-11 20:17:21'),
(109, 'Contact_Text_Website', 'เว็บไซต์', 'th', '6', '2025-09-11 20:20:56', '2025-09-11 20:20:56'),
(110, 'Contact_Text_Website', 'Website', 'en', '6', '2025-09-11 20:20:56', '2025-09-11 20:20:56'),
(111, 'Contact_Text_Website', 'موقع إلكتروني', 'ar', '6', '2025-09-11 20:20:56', '2025-09-11 20:20:56'),
(112, 'Contact_Text_Email', 'อีเมล', 'th', '6', '2025-09-11 20:21:25', '2025-09-11 20:21:25'),
(113, 'Contact_Text_Email', 'Email', 'en', '6', '2025-09-11 20:21:25', '2025-09-11 20:21:25'),
(114, 'Contact_Text_Email', 'بريد إلكتروني', 'ar', '6', '2025-09-11 20:21:25', '2025-09-11 20:21:25'),
(115, 'Contact_Text_Address', 'ที่อยู่', 'th', '6', '2025-09-11 20:21:55', '2025-09-11 20:21:55'),
(116, 'Contact_Text_Address', 'Address', 'en', '6', '2025-09-11 20:21:55', '2025-09-11 20:21:55'),
(117, 'Contact_Text_Address', 'عنوان', 'ar', '6', '2025-09-11 20:21:55', '2025-09-11 20:21:55'),
(118, 'Contact_Text_Heading2', 'บอกเราข้อความของคุณ', 'th', '6', '2025-09-11 20:27:52', '2025-09-11 20:27:52'),
(119, 'Contact_Text_Heading2', 'Tell Us Your Message', 'en', '6', '2025-09-11 20:27:52', '2025-09-11 20:27:52'),
(120, 'Contact_Text_Heading2', 'أخبرنا برسالتك', 'ar', '6', '2025-09-11 20:27:52', '2025-09-11 20:27:52'),
(121, 'Contact_Title_Name', 'ชื่อ:', 'th', '6', '2025-09-11 20:30:32', '2025-09-11 20:30:32'),
(122, 'Contact_Title_Name', 'Name:', 'en', '6', '2025-09-11 20:30:32', '2025-09-11 20:30:32'),
(123, 'Contact_Title_Name', 'اسم:', 'ar', '6', '2025-09-11 20:30:32', '2025-09-11 20:30:32'),
(124, 'Contact_Title_Email', 'อีเมล:', 'th', '6', '2025-09-11 20:31:52', '2025-09-11 20:31:52'),
(125, 'Contact_Title_Email', 'Email:', 'en', '6', '2025-09-11 20:31:52', '2025-09-11 20:31:52'),
(126, 'Contact_Title_Email', 'بريد إلكتروني:', 'ar', '6', '2025-09-11 20:31:52', '2025-09-11 20:31:52'),
(127, 'Contact_Title_Phone', 'โทรศัพท์:', 'th', '6', '2025-09-11 20:32:27', '2025-09-11 20:32:27'),
(128, 'Contact_Title_Phone', 'Phone:', 'en', '6', '2025-09-11 20:32:27', '2025-09-11 20:32:27'),
(129, 'Contact_Title_Phone', 'هاتف:', 'ar', '6', '2025-09-11 20:32:27', '2025-09-11 20:32:27'),
(130, 'Contact_Title_Message', 'ข้อความ:', 'th', '6', '2025-09-11 20:33:15', '2025-09-11 20:33:15'),
(131, 'Contact_Title_Message', 'Message:', 'en', '6', '2025-09-11 20:33:15', '2025-09-11 20:33:15'),
(132, 'Contact_Title_Message', 'رسالة:', 'ar', '6', '2025-09-11 20:33:15', '2025-09-11 20:33:15'),
(133, 'Contact_Title_Send', 'ส่ง', 'th', '6', '2025-09-11 20:37:42', '2025-09-11 20:37:42'),
(134, 'Contact_Title_Send', 'send', 'en', '6', '2025-09-11 20:37:42', '2025-09-11 20:37:42'),
(135, 'Contact_Title_Send', 'يرسل', 'ar', '6', '2025-09-11 20:37:42', '2025-09-11 20:37:42'),
(136, 'Product_text1', 'การเจริญเติบโตของพืช', 'th', '3', '2025-09-19 07:45:50', '2025-09-19 07:46:06'),
(137, 'Product_text1', 'Plant Growth', 'en', '3', '2025-09-19 07:45:56', '2025-09-19 07:46:07'),
(138, 'Product_text1', 'نمو النبات', 'ar', '3', '2025-09-19 07:45:57', '2025-09-19 07:46:07'),
(139, 'Product_text2', 'ชมวิดีโอ', 'th', '3', '2025-09-19 07:45:59', '2025-09-19 07:46:08'),
(140, 'Product_text2', 'Watch Video', 'en', '3', '2025-09-19 07:46:01', '2025-09-19 07:46:08'),
(141, 'Product_text2', 'شاهد الفيديو', 'ar', '3', '2025-09-19 07:46:02', '2025-09-19 07:46:09'),
(142, 'Product_text3', 'ดู PDF', 'th', '3', '2025-09-19 07:46:02', '2025-09-19 07:46:10'),
(143, 'Product_text3', 'Watch PDF', 'en', '3', '2025-09-19 07:46:03', '2025-09-19 07:46:10'),
(144, 'Product_text3', 'مشاهدة ملف PDF', 'ar', '3', '2025-09-19 07:46:03', '2025-09-19 07:46:11'),
(145, 'Product_text4', 'ปลูก', 'th', '3', '2025-09-19 07:46:11', '2025-09-19 07:46:12'),
(146, 'Product_text4', 'PLANT', 'en', '3', '2025-09-19 07:46:13', '2025-09-19 07:46:14'),
(147, 'Product_text4', 'نبات', 'ar', '3', '2025-09-19 07:46:14', '2025-09-19 07:46:15'),
(148, 'Product_text5', 'ผลไม้', 'th', '3', '2025-09-19 07:46:16', '2025-09-19 07:46:16'),
(149, 'Product_text5', 'FRUIT', 'en', '3', '2025-09-19 07:46:18', '2025-09-19 07:46:19'),
(150, 'Product_text5', 'فاكهة', 'ar', '3', '2025-09-19 07:46:19', '2025-09-19 07:46:20'),
(151, 'Product_text_TASTE', 'รสชาติ', 'th', '3', '2025-09-19 07:46:21', '2025-09-19 07:46:21'),
(152, 'Product_text_TASTE', 'TASTE', 'en', '3', '2025-09-19 07:46:22', '2025-09-19 07:46:23'),
(153, 'Product_text_TASTE', 'ذوق', 'ar', '3', '2025-09-19 07:46:24', '2025-09-19 07:46:25'),
(154, 'Product_text_DISEASE', 'โรค', 'th', '3', '2025-09-19 07:46:26', '2025-09-19 07:46:26'),
(155, 'Product_text_DISEASE', 'DISEASE', 'en', '3', '2025-09-19 07:46:27', '2025-09-19 07:46:28'),
(156, 'Product_text_DISEASE', 'مرض', 'ar', '3', '2025-09-19 07:46:29', '2025-09-19 07:46:29'),
(157, 'Product_text_BACK', 'กลับ', 'th', '3', '2025-09-19 08:47:39', '2025-09-19 08:47:43'),
(158, 'Product_text_BACK', 'BACK', 'en', '3', '2025-09-19 08:47:45', '2025-09-19 08:47:47'),
(159, 'Product_text_BACK', 'خلف', 'ar', '3', '2025-09-19 08:47:49', '2025-09-19 08:47:52'),
(160, 'new_text_NEWS', 'ข่าว', 'th', '4', '2025-09-20 02:59:53', '2025-09-20 02:59:53'),
(161, 'new_text_NEWS', 'NEWS', 'en', '4', '2025-09-20 02:59:53', '2025-09-20 02:59:53'),
(162, 'new_text_NEWS', 'أخبار', 'ar', '4', '2025-09-20 02:59:53', '2025-09-20 02:59:53'),
(163, 'new_text_Detail', 'รายละเอียด', 'th', '4', '2025-09-20 03:01:51', '2025-09-20 03:01:51'),
(164, 'new_text_Detail', 'Detail', 'en', '4', '2025-09-20 03:01:51', '2025-09-20 03:01:51'),
(165, 'new_text_Detail', 'التفاصيل', 'ar', '4', '2025-09-20 03:01:51', '2025-09-20 03:01:51'),
(166, 'new_text_NEW PRODUCT', 'สินค้าใหม่', 'th', '4', '2025-09-20 03:02:54', '2025-09-20 03:02:54'),
(167, 'new_text_NEW PRODUCT', 'NEW PRODUCT', 'en', '4', '2025-09-20 03:02:54', '2025-09-20 03:02:54'),
(168, 'new_text_NEW PRODUCT', 'منتج جديد', 'ar', '4', '2025-09-20 03:02:54', '2025-09-20 03:02:54'),
(169, 'new_text_BACK', 'กลับ', 'th', '4', '2025-09-21 21:39:55', '2025-09-21 21:39:55'),
(170, 'new_text_BACK', 'BACK', 'en', '4', '2025-09-21 21:39:55', '2025-09-21 21:39:55'),
(171, 'new_text_BACK', 'خلف', 'ar', '4', '2025-09-21 21:39:55', '2025-09-21 21:39:55'),
(172, 'Register_Placeholder_User name', 'กรุณากรอกชื่อผู้ใช้ของคุณ', 'th', '8', '2025-09-21 21:45:47', '2025-09-21 22:00:58'),
(173, 'Register_Placeholder_User name', 'Please enter your user name', 'en', '8', '2025-09-21 21:45:47', '2025-09-21 22:00:58'),
(174, 'Register_Placeholder_User name', 'الرجاء إدخال اسم المستخدم الخاص بك', 'ar', '8', '2025-09-21 21:45:47', '2025-09-21 22:00:58'),
(175, 'Register_Placeholder_First Name', 'กรุณากรอกชื่อของคุณ', 'th', '8', '2025-09-21 21:46:32', '2025-09-21 21:46:32'),
(176, 'Register_Placeholder_First Name', 'Please enter your first name', 'en', '8', '2025-09-21 21:46:32', '2025-09-21 21:46:32'),
(177, 'Register_Placeholder_First Name', 'الرجاء إدخال اسمك الأول', 'ar', '8', '2025-09-21 21:46:32', '2025-09-21 21:46:32'),
(178, 'Register_Placeholder_Last Name', 'กรุณากรอกนามสกุลของคุณ', 'th', '8', '2025-09-21 21:47:12', '2025-09-21 21:47:12'),
(179, 'Register_Placeholder_Last Name', 'Please enter your last name', 'en', '8', '2025-09-21 21:47:12', '2025-09-21 21:47:12'),
(180, 'Register_Placeholder_Last Name', 'الرجاء إدخال اسمك الأخير', 'ar', '8', '2025-09-21 21:47:12', '2025-09-21 21:47:12'),
(181, 'Register_Placeholder_Telephone Number', 'กรุณากรอกหมายเลขโทรศัพท์ของคุณ เช่น 000-000-0000', 'th', '8', '2025-09-21 21:49:52', '2025-09-21 21:49:52'),
(182, 'Register_Placeholder_Telephone Number', 'Please enter your phone number, for example 000-000-0000.', 'en', '8', '2025-09-21 21:49:52', '2025-09-21 21:49:52'),
(183, 'Register_Placeholder_Telephone Number', 'الرجاء إدخال رقم هاتفك، على سبيل المثال 000-000-0000.', 'ar', '8', '2025-09-21 21:49:52', '2025-09-21 21:49:52'),
(184, 'Register_Placeholder_Email', 'กรุณากรอกที่อยู่อีเมลของคุณ เช่น \"sample@gmail.com\"', 'th', '8', '2025-09-21 21:51:16', '2025-09-21 21:51:16'),
(185, 'Register_Placeholder_Email', 'Please enter your email address for example \"sample@gmail.com\"', 'en', '8', '2025-09-21 21:51:16', '2025-09-21 21:51:16'),
(186, 'Register_Placeholder_Email', 'الرجاء إدخال عنوان بريدك الإلكتروني على سبيل المثال \"sample@gmail.com\"', 'ar', '8', '2025-09-21 21:51:16', '2025-09-21 21:51:16'),
(187, 'Register_Placeholder_Password', '••••••••', 'th', '8', '2025-09-21 21:51:58', '2025-09-21 21:51:58'),
(188, 'Register_Placeholder_Password', '••••••••', 'en', '8', '2025-09-21 21:51:58', '2025-09-21 21:51:58'),
(189, 'Register_Placeholder_Password', '••••••••', 'ar', '8', '2025-09-21 21:51:58', '2025-09-21 21:51:58'),
(190, 'Register_Placeholder_Confirm Password', '••••••••', 'th', '8', '2025-09-21 21:52:25', '2025-09-21 21:52:25'),
(191, 'Register_Placeholder_Confirm Password', '••••••••', 'en', '8', '2025-09-21 21:52:26', '2025-09-21 21:52:26'),
(192, 'Register_Placeholder_Confirm Password', '••••••••', 'ar', '8', '2025-09-21 21:52:26', '2025-09-21 21:52:26'),
(193, 'Register_Placeholder_occupation', 'กรุณาระบุอาชีพของคุณ', 'th', '8', '2025-09-21 21:54:03', '2025-09-21 21:54:03'),
(194, 'Register_Placeholder_occupation', 'Please specify your occupation', 'en', '8', '2025-09-21 21:54:03', '2025-09-21 21:54:03'),
(195, 'Register_Placeholder_occupation', 'الرجاء تحديد مهنتك', 'ar', '8', '2025-09-21 21:54:03', '2025-09-21 21:54:03'),
(196, 'SignIn_placeholder_User Name', 'ชื่อผู้ใช้', 'th', '8', '2025-09-21 22:06:53', '2025-09-21 22:06:53'),
(197, 'SignIn_placeholder_User Name', 'User Name', 'en', '8', '2025-09-21 22:06:53', '2025-09-21 22:06:53'),
(198, 'SignIn_placeholder_User Name', 'اسم المستخدم', 'ar', '8', '2025-09-21 22:06:53', '2025-09-21 22:06:53'),
(199, 'SignIn_placeholder_password', '••••••••', 'th', '8', '2025-09-21 23:08:06', '2025-09-21 23:08:06'),
(200, 'SignIn_placeholder_password', '••••••••', 'en', '8', '2025-09-21 23:08:06', '2025-09-21 23:08:06'),
(201, 'SignIn_placeholder_password', '••••••••', 'ar', '8', '2025-09-21 23:08:06', '2025-09-21 23:08:06'),
(202, 'Profile_placeholder_User Name', 'ชื่อผู้ใช้', 'th', '7', '2025-09-21 23:15:57', '2025-09-21 23:15:57'),
(203, 'Profile_placeholder_User Name', 'User Name', 'en', '7', '2025-09-21 23:15:57', '2025-09-21 23:15:57'),
(204, 'Profile_placeholder_User Name', 'اسم المستخدم', 'ar', '7', '2025-09-21 23:15:57', '2025-09-21 23:15:57'),
(205, 'Profile_placeholder_First Name', 'ชื่อจริง', 'th', '7', '2025-09-21 23:16:26', '2025-09-21 23:16:26'),
(206, 'Profile_placeholder_First Name', 'First Name', 'en', '7', '2025-09-21 23:16:26', '2025-09-21 23:16:26'),
(207, 'Profile_placeholder_First Name', 'الاسم الأول', 'ar', '7', '2025-09-21 23:16:26', '2025-09-21 23:16:26'),
(208, 'Profile_placeholder_Last Name', 'นามสกุล', 'th', '7', '2025-09-21 23:16:55', '2025-09-21 23:16:55'),
(209, 'Profile_placeholder_Last Name', 'Last Name', 'en', '7', '2025-09-21 23:16:55', '2025-09-21 23:16:55'),
(210, 'Profile_placeholder_Last Name', 'اسم العائلة', 'ar', '7', '2025-09-21 23:16:55', '2025-09-21 23:16:55'),
(211, 'Profile_placeholder_telephone', '000-000-0000', 'th', '7', '2025-09-21 23:17:18', '2025-09-21 23:17:18'),
(212, 'Profile_placeholder_telephone', '000-000-0000', 'en', '7', '2025-09-21 23:17:18', '2025-09-21 23:17:18'),
(213, 'Profile_placeholder_telephone', '000-000-0000', 'ar', '7', '2025-09-21 23:17:18', '2025-09-21 23:17:18'),
(214, 'Profile_placeholder_email', 'sample@gmail.com', 'th', '7', '2025-09-21 23:17:41', '2025-09-21 23:17:41'),
(215, 'Profile_placeholder_email', 'sample@gmail.com', 'en', '7', '2025-09-21 23:17:41', '2025-09-21 23:17:41'),
(216, 'Profile_placeholder_email', 'sample@gmail.com', 'ar', '7', '2025-09-21 23:17:41', '2025-09-21 23:17:41'),
(217, 'Profile_placeholder_password', '••••••••', 'th', '7', '2025-09-21 23:17:59', '2025-09-21 23:17:59'),
(218, 'Profile_placeholder_password', '••••••••', 'en', '7', '2025-09-21 23:17:59', '2025-09-21 23:17:59'),
(219, 'Profile_placeholder_password', '••••••••', 'ar', '7', '2025-09-21 23:17:59', '2025-09-21 23:17:59'),
(220, 'Profile_placeholder_password_confirmation', '••••••••', 'th', '7', '2025-09-21 23:18:19', '2025-09-21 23:18:19'),
(221, 'Profile_placeholder_password_confirmation', '••••••••', 'en', '7', '2025-09-21 23:18:19', '2025-09-21 23:18:19'),
(222, 'Profile_placeholder_password_confirmation', '••••••••', 'ar', '7', '2025-09-21 23:18:19', '2025-09-21 23:18:19'),
(223, 'PRODUCT_head1', 'พืชผลผลิตภัณฑ์', 'th', '3', '2025-09-21 23:52:59', '2025-09-21 23:52:59'),
(224, 'PRODUCT_head1', 'PRODUCT CROP', 'en', '3', '2025-09-21 23:52:59', '2025-09-21 23:52:59'),
(225, 'PRODUCT_head1', 'محصول المنتج', 'ar', '3', '2025-09-21 23:52:59', '2025-09-21 23:52:59'),
(226, 'Popup_ACPPECT', 'ACPPECT [th]', 'th', '0', '2025-09-22 00:27:24', '2025-09-24 02:48:35'),
(227, 'Popup_ACPPECT', 'ACPPECT [en]', 'en', '0', '2025-09-22 00:27:24', '2025-09-24 02:48:35'),
(228, 'Popup_ACPPECT', 'ACPPECT [ar]', 'ar', '0', '2025-09-22 00:27:24', '2025-09-24 02:48:35'),
(229, 'Contact_placeholder_name', 'กรุณากรอกชื่อของคุณ', 'th', '6', '2025-09-22 09:19:57', '2025-09-22 09:19:59'),
(230, 'Contact_placeholder_name', 'Enter your name', 'en', '6', '2025-09-22 09:21:04', '2025-09-22 09:21:07'),
(231, 'Contact_placeholder_name', 'أدخل اسمك', 'ar', '6', '2025-09-22 09:21:10', '2025-09-22 09:21:12'),
(232, 'Contact_placeholder_email', 'กรอกอีเมล์ของคุณ', 'th', '6', '2025-09-22 09:21:15', '2025-09-22 09:21:17'),
(233, 'Contact_placeholder_email', 'Enter your email', 'en', '6', '2025-09-22 09:21:19', '2025-09-22 09:21:21'),
(234, 'Contact_placeholder_email', 'أدخل بريدك الإلكتروني', 'ar', '6', '2025-09-22 09:21:23', '2025-09-22 09:21:26'),
(235, 'Contact_placeholder_phone', 'กรอกเบอร์โทรศัพท์ของคุณ', 'th', '6', '2025-09-22 02:22:16', '2025-09-22 02:22:16'),
(236, 'Contact_placeholder_phone', 'Enter your phone number', 'en', '6', '2025-09-22 02:22:16', '2025-09-22 02:22:16'),
(237, 'Contact_placeholder_phone', 'أدخل رقم هاتفك', 'ar', '6', '2025-09-22 02:22:16', '2025-09-22 02:22:16'),
(238, 'Contact_placeholder_message', 'เขียนข้อความของคุณที่นี่', 'th', '6', '2025-09-22 02:22:51', '2025-09-22 02:22:51'),
(239, 'Contact_placeholder_message', 'Write your message here', 'en', '6', '2025-09-22 02:22:51', '2025-09-22 02:22:51'),
(240, 'Contact_placeholder_message', 'اكتب رسالتك هنا', 'ar', '6', '2025-09-22 02:22:51', '2025-09-22 02:22:51'),
(241, 'Register_Text_Other', 'อื่นๆ (โปรดระบุ)', 'th', '8', '2025-09-22 10:35:45', '2025-09-22 10:35:47'),
(242, 'Register_Text_Other', 'Other (please specify)', 'en', '8', '2025-09-22 10:35:49', '2025-09-22 10:35:51'),
(243, 'Register_Text_Other', 'أخرى (يرجى التحديد)', 'ar', '8', '2025-09-22 10:35:53', '2025-09-22 10:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `leave_messages`
--

CREATE TABLE `leave_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `favorite` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(255) NOT NULL DEFAULT 'th',
  `defaults` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_messages`
--

INSERT INTO `leave_messages` (`id`, `fullname`, `email`, `phone_number`, `topic`, `message`, `status`, `favorite`, `language`, `defaults`, `created_at`, `updated_at`) VALUES
(1, 'จาตุรนต์', 'parklovepark112@gmail.com', '0988465760', NULL, 'xxzzz', 'new', 0, 'th', 1, '2025-08-19 20:58:52', '2025-08-19 20:58:52'),
(2, 'จาตุรนต์', 'parklovepark112@gmail.com', '0988465760', NULL, 'ggg', 'new', 0, 'th', 1, '2025-08-23 01:56:03', '2025-08-23 01:56:03'),
(3, 'จาตุรนต์', 'parklovepark112@gmail.com', '0988465760', NULL, 'daqq', 'new', 0, 'th', 1, '2025-08-23 02:11:45', '2025-08-23 02:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `member_accounts`
--

CREATE TABLE `member_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `profiles_id` int(11) DEFAULT NULL,
  `member_status` tinyint(1) NOT NULL DEFAULT 0,
  `member_verify_at` datetime DEFAULT NULL,
  `member_expire_at` datetime DEFAULT NULL,
  `member_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `line_id` varchar(255) DEFAULT NULL,
  `apple_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_accounts`
--

INSERT INTO `member_accounts` (`id`, `users_id`, `profiles_id`, `member_status`, `member_verify_at`, `member_expire_at`, `member_note`, `created_at`, `updated_at`, `facebook_id`, `google_id`, `line_id`, `apple_id`) VALUES
(2, 14, 4, 3, '2025-08-21 07:49:14', '2025-08-22 07:49:14', 'inactive', '2025-08-20 21:30:48', '2025-08-21 00:49:14', NULL, NULL, NULL, NULL),
(3, 16, 5, 3, '2025-08-21 08:03:25', '2025-08-31 08:03:25', 'active', '2025-08-20 21:38:06', '2025-08-21 01:03:25', NULL, NULL, NULL, NULL),
(4, 17, 6, 0, NULL, NULL, NULL, '2025-08-20 21:54:58', '2025-08-20 21:54:58', NULL, NULL, NULL, NULL),
(5, 18, 7, 0, NULL, NULL, NULL, '2025-08-20 23:13:21', '2025-08-20 23:13:21', NULL, NULL, NULL, NULL),
(6, 19, 8, 0, NULL, NULL, NULL, '2025-08-20 23:33:50', '2025-08-20 23:33:50', NULL, NULL, NULL, NULL),
(7, 20, 9, 1, '2025-08-22 07:17:05', '2025-11-30 07:17:05', 'active', '2025-08-22 00:16:33', '2025-08-22 00:17:05', NULL, NULL, NULL, NULL),
(33, 61, 35, 0, NULL, NULL, NULL, '2025-09-07 21:02:30', '2025-09-07 21:02:30', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_favors`
--

CREATE TABLE `member_favors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_occupations`
--

CREATE TABLE `member_occupations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `occupations` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_occupations`
--

INSERT INTO `member_occupations` (`id`, `member_id`, `occupations`, `created_at`, `updated_at`) VALUES
(3, 3, 'Seedling nursery', '2025-08-20 21:24:03', '2025-08-20 21:24:03'),
(4, 4, 'Seedling nursery', '2025-08-20 21:30:48', '2025-08-20 21:30:48'),
(5, 5, 'Farmer', '2025-08-20 21:38:06', '2025-08-20 21:38:06'),
(6, 5, 'Seed Company', '2025-08-20 21:38:06', '2025-08-20 21:38:06'),
(7, 5, 'Seed Distributor', '2025-08-20 21:38:06', '2025-08-20 21:38:06'),
(8, 6, 'Seed Distributor', '2025-08-20 21:54:58', '2025-08-20 21:54:58'),
(9, 6, 'Chemical or fertilizer', '2025-08-20 21:54:58', '2025-08-20 21:54:58'),
(10, 6, 'zxx', '2025-08-20 21:54:58', '2025-08-20 21:54:58'),
(11, 7, 'Seed Company', '2025-08-20 23:13:21', '2025-08-20 23:13:21'),
(12, 7, 'Seed Distributor', '2025-08-20 23:13:21', '2025-08-20 23:13:21'),
(13, 7, 'Chemical or fertilizer', '2025-08-20 23:13:21', '2025-08-20 23:13:21'),
(14, 8, 'Farmer', '2025-08-20 23:33:50', '2025-08-20 23:33:50'),
(15, 8, 'Seed Company', '2025-08-20 23:33:50', '2025-08-20 23:33:50'),
(16, 8, 'Seed Distributor', '2025-08-20 23:33:50', '2025-08-20 23:33:50'),
(17, 8, 'Chemical or fertilizer', '2025-08-20 23:33:50', '2025-08-20 23:33:50'),
(18, 9, 'Farmer', '2025-08-22 00:16:33', '2025-08-22 00:16:33'),
(19, 9, 'Agriculture-related business', '2025-08-22 00:16:33', '2025-08-22 00:16:33'),
(20, 9, 'Seed Distributor', '2025-08-22 00:16:33', '2025-08-22 00:16:33'),
(21, 10, 'Seed Company', '2025-08-22 23:20:05', '2025-08-22 23:20:05'),
(22, 10, 'Seed Distributor', '2025-08-22 23:20:05', '2025-08-22 23:20:05'),
(23, 11, 'Farmer', '2025-08-25 21:57:02', '2025-08-25 21:57:02'),
(24, 11, 'Seed Company', '2025-08-25 21:57:02', '2025-08-25 21:57:02'),
(25, 12, 'Farmer', '2025-09-06 01:14:05', '2025-09-06 01:14:05'),
(26, 12, 'Seed Company', '2025-09-06 01:14:05', '2025-09-06 01:14:05'),
(27, 13, 'Farmer', '2025-09-06 01:17:35', '2025-09-06 01:17:35'),
(28, 13, 'Agriculture-related business', '2025-09-06 01:17:35', '2025-09-06 01:17:35'),
(51, 32, 'Seed Company', '2025-09-07 20:36:45', '2025-09-07 20:36:45'),
(54, 35, 'Seed Company', '2025-09-07 21:02:30', '2025-09-07 21:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `member_profiles`
--

CREATE TABLE `member_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profiles_image` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subdistrict` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `coin` int(11) NOT NULL DEFAULT 0,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_profiles`
--

INSERT INTO `member_profiles` (`id`, `profiles_image`, `display_name`, `first_name`, `last_name`, `phone_number`, `occupation`, `country`, `created_at`, `updated_at`, `subdistrict`, `province`, `zipcode`, `coin`, `note`) VALUES
(4, NULL, 'park2', 'parl', 'love', '123-876-5432', NULL, 'thailand', '2025-08-20 21:30:48', '2025-08-20 21:30:48', NULL, NULL, NULL, 0, NULL),
(5, NULL, 'park3', 'parl', 'love', '123-876-5432', NULL, 'thailand', '2025-08-20 21:38:06', '2025-08-20 21:38:06', NULL, NULL, NULL, 0, NULL),
(6, NULL, 'park4', 'parl', 'love', '123-876-5432', NULL, 'thailand', '2025-08-20 21:54:58', '2025-08-20 21:54:58', NULL, NULL, NULL, 0, NULL),
(7, NULL, 'park5', 'parl', 'love', '123-876-5432', NULL, 'thailand', '2025-08-20 23:13:21', '2025-08-20 23:13:21', NULL, NULL, NULL, 0, NULL),
(8, NULL, 'park6', 'parl', 'love', '123-876-5432', NULL, 'thailand', '2025-08-20 23:33:50', '2025-08-20 23:33:50', NULL, NULL, NULL, 0, NULL),
(9, NULL, 'parktest01', 'test01', 'test01', '083-876-543200', NULL, 'thailand', '2025-08-22 00:16:33', '2025-08-28 21:36:55', NULL, NULL, NULL, 0, NULL),
(35, NULL, 'parksetemailtest', 'parktest2', 'lovelove', '065-346-6760', NULL, 'thailand', '2025-09-07 21:02:30', '2025-09-07 21:02:30', NULL, NULL, NULL, 0, NULL);

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
(63, '2014_10_12_000000_create_users_table', 1),
(64, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(65, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(66, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(67, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(68, '2016_06_01_000004_create_oauth_clients_table', 1),
(69, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(70, '2019_08_19_000000_create_failed_jobs_table', 1),
(71, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(72, '2024_09_11_092338_create_admin_accounts_table', 1),
(73, '2024_09_12_071258_create_admin_roles_table', 1),
(74, '2024_09_12_082356_create_language_availables_table', 1),
(75, '2024_09_12_083239_create_categories_table', 1),
(76, '2024_09_14_050418_create_web_infos_table', 1),
(77, '2024_09_14_060844_create_web_info_types_table', 1),
(79, '2024_10_10_043429_create_products_images_table', 1),
(80, '2024_10_30_085626_create_ad_slide_positions_table', 1),
(81, '2024_10_30_095036_create_ad_slides_table', 1),
(82, '2024_11_05_085051_create_posts_table', 1),
(83, '2024_11_05_094625_create_post_images_table', 1),
(84, '2024_11_08_035729_create_brands_table', 1),
(85, '2024_11_16_044335_create_member_accounts_table', 1),
(86, '2024_11_16_044412_create_member_profiles_table', 1),
(87, '2024_11_16_044528_create_member_favors_table', 1),
(88, '2024_11_30_035119_create_cart_products_table', 1),
(89, '2024_12_04_080420_create_orders_table', 1),
(90, '2024_12_04_092156_create_order_items_table', 1),
(91, '2024_12_06_033214_create_leave_messages_table', 1),
(92, '2024_12_11_162322_create_bank_infos_table', 1),
(93, '2024_12_24_071121_create_shipping_rates_table', 1),
(94, '2025_07_29_071705_create_product_cates_table', 2),
(95, '2025_07_30_071536_create_language_configs_table', 3),
(96, '2024_10_09_090501_create_products_table', 4),
(97, '2025_08_02_083343_create_segments_table', 5),
(98, '2025_08_20_164546_create_member_occupations_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0a043282ebbc0a197643b0d9fb423358c84faec0bd99ea6c7910931191dd2efc4d4c679e47507d64', 62, 1, 'AuthToken', '[]', 0, '2025-09-16 02:40:52', '2025-09-16 02:40:52', '2026-09-16 09:40:52'),
('0a0dc9c9c5dd5a490d4e427707598ace1774f7e534560126ca2c1318572d948850032c1b171b0dc1', 1, 1, 'AuthToken', '[]', 0, '2025-09-05 01:12:58', '2025-09-05 01:12:58', '2026-09-05 08:12:58'),
('0aefe5f52b68ee3244ac57b96e38b09dc5f2c63ed5ffb96c37368cf70f437bf271126a1dd5742d56', 62, 1, 'AuthToken', '[]', 0, '2025-09-16 00:10:36', '2025-09-16 00:10:36', '2026-09-16 07:10:36'),
('1256b37d1635a5770642b77540760ba4bd33e58c8556d13b05523d3a79ec08146c5103908d999e6d', 1, 1, 'AuthToken', '[]', 0, '2025-09-05 20:04:33', '2025-09-05 20:04:33', '2026-09-06 03:04:33'),
('2800c6325808c8de6daad7a6545e21c94166f1474e034e0a8f8de907f37bd4ede523588d594b5e0f', 1, 1, 'AuthToken', '[]', 0, '2025-09-16 03:23:28', '2025-09-16 03:23:28', '2026-09-16 10:23:28'),
('3471281ed9a98a1b1608fb4aee71efc5c7c6aca201f6703a5d081e4a623ce9b8540802a3e5b0322c', 1, 1, 'AuthToken', '[]', 0, '2025-09-15 00:22:03', '2025-09-15 00:22:03', '2026-09-15 07:22:03'),
('392e4c0661f96ccdc49a695493d0bbabd14bff0e235ed4f4da7fd99f47c6787f6cf9bd2f071699cc', 1, 1, 'AuthToken', '[]', 0, '2025-09-16 02:01:25', '2025-09-16 02:01:25', '2026-09-16 09:01:25'),
('3931420863a31e41d7892fc2892c7714661f34bafbdf28a51225d5bf63142815b0c3ec204964d65c', 1, 1, 'AuthToken', '[]', 0, '2025-09-05 23:38:35', '2025-09-05 23:38:35', '2026-09-06 06:38:35'),
('3aab8667efaaa53b38fbf7d7195cea2a708365111814befd07a78019b5159eb29f3cfef9adc274c3', 1, 1, 'AuthToken', '[]', 0, '2025-09-01 23:30:38', '2025-09-01 23:30:39', '2026-09-02 06:30:38'),
('3aed4a8c02534a6842b38e7717302259978bf6c0af62424ab1d4f5e35f2125420a8f1ee6c3d8c61a', 1, 1, 'AuthToken', '[]', 0, '2025-09-09 00:19:31', '2025-09-09 00:19:31', '2026-09-09 07:19:31'),
('3f873f08c176a67c47b85c828e54c3b767b62cbed93f2f6ee7d4de39f4988eda5363f6d411e3ce11', 1, 1, 'AuthToken', '[]', 0, '2025-09-11 21:37:43', '2025-09-11 21:37:43', '2026-09-12 04:37:43'),
('41eb278a8ad96595cceb841dce8f74714ad4afb1ccffef468b4f0a4765bc8f67520bfc14df5cc43c', 62, 1, 'AuthToken', '[]', 0, '2025-09-15 03:34:34', '2025-09-15 03:34:34', '2026-09-15 10:34:34'),
('45cff27c699f42381e213813e165c5dcd82802048dda7dab731e69017a992540c024e45f6317a438', 1, 1, 'AuthToken', '[]', 0, '2025-09-15 20:12:45', '2025-09-15 20:12:45', '2026-09-16 03:12:45'),
('541fc88b2ca204efeba642a9d52b48194883d1c9e7a0ec4b5a6c939f245416ded2f6087ce375177e', 1, 1, 'AuthToken', '[]', 0, '2025-09-03 23:11:18', '2025-09-03 23:11:19', '2026-09-04 06:11:18'),
('58ef266dbbca349831e7a251fae59b30b176c325da169c41cd2c3acb861d431386975e3384a511cc', 1, 1, 'AuthToken', '[]', 0, '2025-09-15 01:12:06', '2025-09-15 01:12:06', '2026-09-15 08:12:06'),
('5a510f2b5b0244319436419452246087834ef2fc7f4ced2bfe8cd70adfd92c26e8aa3d30b4e5a6ed', 1, 1, 'AuthToken', '[]', 0, '2025-09-06 01:07:55', '2025-09-06 01:07:55', '2026-09-06 08:07:55'),
('5ffc9c5a6648db8e7672063a6e0fccc1576d3ecac79c506d80811cf31f00aa5d316fe2fca8e3d7d1', 1, 1, 'AuthToken', '[]', 0, '2025-09-19 21:06:22', '2025-09-19 21:06:22', '2026-09-20 04:06:22'),
('61014f936ec6d015751a634df8067a82c6fcce09eb5e5f36eba85fb568d7f4ad8cf678ff20b24fba', 62, 1, 'AuthToken', '[]', 0, '2025-09-15 21:44:12', '2025-09-15 21:44:12', '2026-09-16 04:44:12'),
('657248456ce8d7ed91d5022f647abf73c99592e5ef3e6ca85fc4e59737e829a568f740da6a45ec63', 1, 1, 'AuthToken', '[]', 0, '2025-07-30 21:18:29', '2025-07-30 21:18:30', '2026-07-31 04:18:29'),
('75eb5f763c0556a3253507784cb29e8216c348c6e6eb0cd4bc875a5f5e7fed426bb7ce029b102bac', 1, 1, 'AuthToken', '[]', 0, '2025-09-29 22:02:44', '2025-09-29 22:02:44', '2026-09-30 05:02:44'),
('7e554e8b266ba06b32fc2e9c48203220e85b64dac6aa9e5625ac5d7c10bd56193b7491b3afd882d4', 2, 1, 'AuthToken', '[]', 0, '2025-07-30 21:03:26', '2025-07-30 21:03:26', '2026-07-31 04:03:26'),
('8574d3c3b94fe0a7b7effb9ef946145137719fd69940fbab2c0275bc5f5c6b21f41f44be57cbac15', 1, 1, 'AuthToken', '[]', 0, '2025-09-11 20:04:46', '2025-09-11 20:04:46', '2026-09-12 03:04:46'),
('9583776806921f2aa83c8cbee650a4b666d02809d1f37d87d5630401979ccb41aaa7a17c767d2341', 1, 1, 'AuthToken', '[]', 0, '2025-11-10 21:37:09', '2025-11-10 21:37:09', '2026-11-11 04:37:09'),
('96a59451a43a93b9bbcfa9ac6ecbe6e7c646f019e95834d569cf6dea671ebb5d6e3a835a9b16f8db', 1, 1, 'AuthToken', '[]', 0, '2025-09-22 22:03:03', '2025-09-22 22:03:04', '2026-09-23 05:03:03'),
('a7114efd66d5ceede6575d095802073e6579866a21bd703b229e66bd2965d155db1460c6ddc900c0', 1, 1, 'AuthToken', '[]', 0, '2025-09-11 03:14:56', '2025-09-11 03:14:56', '2026-09-11 10:14:56'),
('a81d38d3d5298bc7e73fdcc88c756c447e93f5fc4b7436e56d31b0e3ae15bfacd604a51bd5239bf6', 1, 1, 'AuthToken', '[]', 0, '2025-08-10 20:08:11', '2025-08-10 20:08:12', '2026-08-11 03:08:11'),
('aa62e36cca11c9de03e695642a27d43d978c362b7bc1180b67369614bfa4c2977d0035ab29e64da6', 1, 1, 'AuthToken', '[]', 0, '2025-09-03 23:39:49', '2025-09-03 23:39:49', '2026-09-04 06:39:49'),
('aba09b0764343ad8c5c8fe4b606f06116e86160689dc926ee8e9b6271501221f687c4c54220615b1', 1, 1, 'AuthToken', '[]', 0, '2025-09-08 19:57:34', '2025-09-08 19:57:34', '2026-09-09 02:57:34'),
('c64cff1ae871205c88142d99e53c2a52df4df1b99d689c1c145a3fca255f00c1fc34ea75bfcb24cb', 1, 1, 'AuthToken', '[]', 0, '2025-09-16 00:11:00', '2025-09-16 00:11:00', '2026-09-16 07:11:00'),
('cb81637e3fdd13d38babc8904d4db0ec6f51def2df0309da1de66040c295383235cb7db009a89108', 1, 1, 'AuthToken', '[]', 0, '2025-09-15 03:34:08', '2025-09-15 03:34:08', '2026-09-15 10:34:08'),
('ce984dfa8d462052cc35080c73efdd01f17ad68dde9c64f6741ec3ab2dc5411a28849d8c7bdd3333', 1, 1, 'AuthToken', '[]', 0, '2025-09-12 03:11:53', '2025-09-12 03:11:53', '2026-09-12 10:11:53'),
('dee975c0c3ddae0b162be8ef38eeae4e90a1b9f2d011122a506e329870d6da2daddc2c9498e0d6d2', 1, 1, 'AuthToken', '[]', 0, '2025-09-24 01:40:40', '2025-09-24 01:40:41', '2026-09-24 08:40:40'),
('e12829dd6ebbf9e9aeddd909f0ad589c02ed4e5b3d1fee3744a9b72b6e9717200ea319b354a8cefa', 1, 1, 'AuthToken', '[]', 0, '2025-08-03 20:18:38', '2025-08-03 20:18:38', '2026-08-04 03:18:38'),
('e3f5ebcdb10635c788b544b01661cdd107d71a42fc738d15203aad6013aa1309b3b0bd538d9ada43', 1, 1, 'AuthToken', '[]', 0, '2025-07-31 00:26:32', '2025-07-31 00:26:32', '2026-07-31 07:26:32'),
('e977d27929717b86a1a8d572f94706ca4d9264017457931e3ff09316547576879f929d513770a8e8', 1, 1, 'AuthToken', '[]', 0, '2025-09-09 02:55:38', '2025-09-09 02:55:38', '2026-09-09 09:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'tL5zocwQ2X7PQGplAmQSJZwzRZnNd495QOnVNXWU', NULL, 'http://localhost', 1, 0, 0, '2025-07-30 21:02:36', '2025-07-30 21:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-07-30 21:02:36', '2025-07-30 21:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occupations_configs`
--

CREATE TABLE `occupations_configs` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `language` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `occupations_configs`
--

INSERT INTO `occupations_configs` (`id`, `name`, `language`, `created_at`, `updated_at`) VALUES
(1, 'เกษตรกร', 'th', '2025-09-22 09:59:46', '2025-09-22 09:59:48'),
(2, 'Farmer', 'en', '2025-09-22 09:59:50', '2025-09-22 09:59:51'),
(3, 'مزارع', 'ar', '2025-09-22 09:59:53', '2025-09-22 09:59:54'),
(4, 'บริษัทเมล็ดพันธุ์', 'th', '2025-09-22 09:59:46', '2025-09-22 09:59:48'),
(5, 'Seed Company', 'en', '2025-09-22 09:59:50', '2025-09-22 09:59:51'),
(6, 'شركة بذور', 'ar', '2025-09-22 09:59:53', '2025-09-22 09:59:54'),
(7, 'ธุรกิจเกี่ยวกับการเกษตร', 'th', '2025-09-22 09:59:46', '2025-09-22 09:59:48'),
(8, 'Agriculture-related business', 'en', '2025-09-22 09:59:50', '2025-09-22 09:59:51'),
(9, 'اعمال متعلقة بالزراعة ', 'ar', '2025-09-22 09:59:53', '2025-09-22 09:59:54'),
(10, 'จำหน่ายเมล็ดพันธุ์', 'th', '2025-09-22 09:59:46', '2025-09-22 09:59:48'),
(11, 'Seed Distributor', 'en', '2025-09-22 09:59:50', '2025-09-22 09:59:51'),
(12, 'موزع بذور ', 'ar', '2025-09-22 09:59:53', '2025-09-22 09:59:54'),
(13, 'จำหน่ายต้นกล้า', 'th', '2025-09-22 09:59:46', '2025-09-22 09:59:48'),
(14, 'Seedling nursery', 'en', '2025-09-22 09:59:50', '2025-09-22 09:59:51'),
(15, ' مشتل بذور ', 'ar', '2025-09-22 09:59:53', '2025-09-22 09:59:54'),
(16, 'เคมีภัณฑ์หรือปุ๋ยเคมี', 'th', '2025-09-22 09:59:46', '2025-09-22 09:59:48'),
(17, 'Chemical or fertilizer', 'en', '2025-09-22 09:59:50', '2025-09-22 09:59:51'),
(18, 'كيميائي او اسمدة ', 'ar', '2025-09-22 09:59:53', '2025-09-22 09:59:54'),
(19, 'เคมีภัณฑ์หรือปุ๋ยเคมี', 'th', '2025-09-22 09:59:46', '2025-09-22 09:59:48'),
(20, 'Chemical or fertilizer', 'en', '2025-09-22 09:59:50', '2025-09-22 09:59:51'),
(21, 'كيميائي او اسمدة ', 'ar', '2025-09-22 09:59:53', '2025-09-22 09:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `subdistrict` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `moredetails` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) NOT NULL,
  `images_card` varchar(255) DEFAULT NULL,
  `images_card_people` varchar(255) DEFAULT NULL,
  `images_slip` varchar(255) DEFAULT NULL,
  `payment_method` int(11) NOT NULL COMMENT '''1'' ปลายทาง , ''2'' โอนชำระ	',
  `order_date` datetime DEFAULT NULL COMMENT 'วันที่สั่งซื้อ',
  `shipping_date` datetime DEFAULT NULL COMMENT 'วันที่จัดส่ง',
  `order_carrier` varchar(255) DEFAULT NULL COMMENT 'ประเภทขนส่ง',
  `tracking_number` varchar(255) DEFAULT NULL COMMENT 'เลขติดตามพัสดุ',
  `total_price` double(8,2) NOT NULL COMMENT 'ราคารวม',
  `total_coin` double(8,2) NOT NULL COMMENT 'coinรวม',
  `last_coin` double(8,2) NOT NULL COMMENT 'coin ล่าสุด',
  `shipping_cost` double(8,2) DEFAULT NULL,
  `coin_use` int(11) NOT NULL DEFAULT 0,
  `discount` double(8,2) DEFAULT NULL COMMENT 'ส่วนลด',
  `info_bank_id` int(11) NOT NULL,
  `update_by` int(11) DEFAULT NULL COMMENT 'เก็บไอดีบัญชีที่ update',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_coin` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'test-token', '1621ef6bda7f3d18f3cf83b661eb8f238e0e6a2fa76fbe8ea8f6db5f6dc3ca77', '[\"*\"]', NULL, NULL, '2025-07-25 03:27:14', '2025-07-25 03:27:14'),
(2, 'App\\Models\\User', 2, 'AuthToken', 'b7337d823053d515a0faa08e964411dc8025ba564b6970e78f1a3d2b9f6d03f4', '[\"*\"]', NULL, NULL, '2025-07-25 03:27:28', '2025-07-25 03:27:28'),
(4, 'App\\Models\\User', 2, 'AuthToken', 'b13f10debe5c48f0e8c949a2298f984fef72d9b3c1710d9ba0a1a495ddfd95c5', '[\"*\"]', NULL, NULL, '2025-07-29 02:54:52', '2025-07-29 02:54:52'),
(5, 'App\\Models\\User', 1, 'AuthToken', '9d8e109f72d17d3573adae42d87ac225c3f235e518530f1a3dd2932706091c47', '[\"*\"]', NULL, NULL, '2025-07-30 01:03:33', '2025-07-30 01:03:33'),
(6, 'App\\Models\\User', 1, 'AuthToken', '13921f42046467fc8854b89068c8e563c96078fbcab101e52231234c6a8cc3db', '[\"*\"]', NULL, NULL, '2025-07-30 01:55:00', '2025-07-30 01:55:00'),
(7, 'App\\Models\\User', 1, 'AuthToken', '4602a831d034cb389763343741fc56d72f2d291140e7a57a671f826af92d3419', '[\"*\"]', NULL, NULL, '2025-07-30 01:58:00', '2025-07-30 01:58:00'),
(8, 'App\\Models\\User', 2, 'AuthToken', '3bb1c7a666c7604f1d9bae5fe6cec17eda5336a1fc5ccb36b5dae122f22d4166', '[\"*\"]', NULL, NULL, '2025-07-30 02:07:42', '2025-07-30 02:07:42'),
(9, 'App\\Models\\User', 2, 'AuthToken', '05378c1adf7e06212b1f659fb804beb6c93702364d5524d613b8a1d2bec9429e', '[\"*\"]', NULL, NULL, '2025-07-30 02:08:04', '2025-07-30 02:08:04'),
(10, 'App\\Models\\User', 1, 'AuthToken', '43c0d72330875813e51af8abb54df3cd62f877af872bd565dfcb80a68ad13225', '[\"*\"]', NULL, NULL, '2025-07-30 02:09:10', '2025-07-30 02:09:10'),
(11, 'App\\Models\\User', 1, 'AuthToken', 'd1761c188fa07ed4b98555ce8a26e230d9bbd46596f5b0732ccb9a24ee0bb545', '[\"*\"]', NULL, NULL, '2025-07-30 02:10:16', '2025-07-30 02:10:16'),
(12, 'App\\Models\\User', 1, 'AuthToken', '6e1b05749f3ff71964498aa4f337e1f916146ecfff830f1e5ac42b6543d884c0', '[\"*\"]', NULL, NULL, '2025-07-30 02:12:27', '2025-07-30 02:12:27'),
(13, 'App\\Models\\User', 1, 'AuthToken', '3741f6f0377def3a9cc5580051a527a9713c5fad9f0ac8147672ae19c0cc81ec', '[\"*\"]', NULL, NULL, '2025-07-30 02:12:56', '2025-07-30 02:12:56'),
(14, 'App\\Models\\User', 2, 'AuthToken', '0fe13ebccf73a55f5571e8b0b29159e74cb60f650ad06f39274be834442c9e4c', '[\"*\"]', NULL, NULL, '2025-07-30 03:00:26', '2025-07-30 03:00:26'),
(15, 'App\\Models\\User', 1, 'AuthToken', 'b7b1303b2ef545870d1f0e54760fa65b08227c26bb4a56456a10d64a875aa92a', '[\"*\"]', NULL, NULL, '2025-07-30 03:00:37', '2025-07-30 03:00:37'),
(16, 'App\\Models\\User', 2, 'AuthToken', '109344ec99de52d5af4973b7e40d51cd319b9145a625d8ec7e4952e3d6e94ff4', '[\"*\"]', NULL, NULL, '2025-07-30 03:04:08', '2025-07-30 03:04:08'),
(17, 'App\\Models\\User', 1, 'AuthToken', 'ade9a50dc61e73a129471cd4243a8af4f653c5696c5543fde1c3c43cc0dda55c', '[\"*\"]', NULL, NULL, '2025-07-30 03:13:51', '2025-07-30 03:13:51'),
(18, 'App\\Models\\User', 2, 'AuthToken', 'cee86eb568055d68062fff9828ef01117245072fa0f4d5a27c7a71f628ac04f4', '[\"*\"]', '2025-07-30 19:28:14', NULL, '2025-07-30 19:23:43', '2025-07-30 19:28:14'),
(19, 'App\\Models\\User', 9, 'AuthToken', 'a09428e6cdf609ef40c5e5d7d9ac192b0bc7f37db39e6836f3a6531e8a59e712', '[\"*\"]', NULL, NULL, '2025-07-30 19:23:57', '2025-07-30 19:23:57'),
(20, 'App\\Models\\User', 2, 'AuthToken', '0e3f152ca4d08d3529c95c490be971dc4250086823334e159e57182c56d0bae3', '[\"*\"]', NULL, NULL, '2025-07-30 20:30:59', '2025-07-30 20:30:59'),
(21, 'App\\Models\\User', 2, 'AuthToken', 'a743c82678064a4700ab4fe52b0c3f5ea71bd4f4bae21568c9029759c293a226', '[\"*\"]', NULL, NULL, '2025-07-30 20:44:09', '2025-07-30 20:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `freetag` text DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `h2` varchar(255) DEFAULT NULL,
  `short_url` text DEFAULT NULL,
  `thumbnail_title` varchar(255) DEFAULT NULL,
  `thumbnail_link` varchar(255) DEFAULT NULL,
  `thumbnail_size` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `iframe` text DEFAULT NULL,
  `category` text NOT NULL,
  `tags` text DEFAULT NULL,
  `redirect` text DEFAULT NULL,
  `link_facebook` text DEFAULT NULL,
  `link_twitter` text DEFAULT NULL,
  `link_instagram` text DEFAULT NULL,
  `link_youtube` text DEFAULT NULL,
  `link_line` text DEFAULT NULL,
  `status_display` tinyint(1) NOT NULL DEFAULT 0,
  `pin` tinyint(1) NOT NULL DEFAULT 0,
  `defaults` tinyint(1) NOT NULL DEFAULT 0,
  `post_view` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 1,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `allow_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'ถ้าเป็น true ลบได้เฉพาะ SuperAdmin',
  `is_maincontent` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'ถ้าเป็น false = dynamic content',
  `language` varchar(255) NOT NULL,
  `date_begin_display` datetime DEFAULT NULL,
  `date_end_display` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `keyword`, `description`, `freetag`, `h1`, `h2`, `short_url`, `thumbnail_title`, `thumbnail_link`, `thumbnail_size`, `thumbnail_alt`, `topic`, `content`, `iframe`, `category`, `tags`, `redirect`, `link_facebook`, `link_twitter`, `link_instagram`, `link_youtube`, `link_line`, `status_display`, `pin`, `defaults`, `post_view`, `priority`, `meta_tag`, `meta_title`, `meta_description`, `allow_delete`, `is_maincontent`, `language`, `date_begin_display`, `date_end_display`, `created_at`, `updated_at`) VALUES
(1, 'HOME', '“Premium seed for high yield and good taste”', NULL, 'Since 2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Global population increasing special for emerging&nbsp;markets, but food will short in coming year due to climate change and global warming make grower difficult and yield lower than before. Green Global seeds company with business partnership development hybrids and market for wide adaptability variety for climate change and meet demand of provisional grower, food collectors, super market, new generation of consumer for healthy and good taste. Green global seeds company focus delivery innovation product seeds to food by &ldquo;Premium seed for high yield and good taste&rdquo; since 2013.</p>', NULL, ',1,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, '2025-08-09 02:19:13', '2025-08-13 19:53:40'),
(1, 'HOME', '“Premium seed for high yield and good taste”', NULL, 'Since 2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-size:18px\"><span style=\"color:#098c46\">Global population increasing special for emerging&nbsp;markets, but food will short in coming year due to climate change and global warming make grower difficult and yield lower than before. Green Global seeds company with business partnership development hybrids and market for wide adaptability variety for climate change and meet demand of provisional grower, food collectors, super market, new generation of consumer for healthy and good taste. Green global seeds company focus delivery innovation product seeds to food by &ldquo;Premium seed for high yield and good taste&rdquo; since 2013.</span></span></p>', NULL, ',1,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-09 02:19:13', '2025-08-13 23:47:09'),
(3, 'VISION', 'Our Company', NULL, '“Premium seed for high yield and good taste” \r\n</br>\r\n Since 2013', NULL, NULL, NULL, NULL, NULL, 'upload/2025/08/14/Rectangle 156 (1)(1).png', NULL, NULL, NULL, '<p><span style=\"font-size:18px\"><span style=\"color:#2ecc71\">Global population increasing special for emerging markets,&nbsp; but food will short in coming year done climate change&nbsp; and global warming make grower difficult and yield lower than before&nbsp; ,Green&nbsp; Global seeds company with business partnership development hybrids and market for wide adaptability variety for climate change&nbsp; and meet demand&nbsp; of provisional&nbsp; grower&nbsp; , food collectors , supper market , new generation of consumer&nbsp; for healthy and good taste . Green global seeds &nbsp; company focus delivery innovation product seeds to food by &ldquo;Premium seed for&nbsp; high yield and good taste &rdquo; since 2013 climate change&nbsp; and global warming make grower difficult and yield lower than before&nbsp; ,Green&nbsp; Global seeds company with business partnership development hybrids and market for wide adaptability variety for climate change&nbsp; and meet demand&nbsp; of provisional&nbsp; grower&nbsp; , food collectors , supper market , new generation of consumer&nbsp; for healthy and good taste . Green global seeds &nbsp; company focus delivery innovation product seeds to food by &ldquo;Premium seed for&nbsp; high yield and good taste &rdquo; since 2013</span></span></p>', NULL, ',2,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, NULL, '2025-08-25 00:08:49'),
(3, 'VISION', 'Our Company', NULL, '“Premium seed for high yield and good taste” \r\n</br>\r\n Since 2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-size:18px\"><span style=\"color:#2ecc71\">Global population increasing special for emerging markets,&nbsp; but food will short in coming year done climate change&nbsp; and global warming make grower difficult and yield lower than before&nbsp; ,Green&nbsp; Global seeds company with business partnership development hybrids and market for wide adaptability variety for climate change&nbsp; and meet demand&nbsp; of provisional&nbsp; grower&nbsp; , food collectors , supper market , new generation of consumer&nbsp; for healthy and good taste . Green global seeds &nbsp; company focus delivery innovation product seeds to food by &ldquo;Premium seed for&nbsp; high yield and good taste &rdquo; since 2013 climate change&nbsp; and global warming make grower difficult and yield lower than before&nbsp; ,Green&nbsp; Global seeds company with business partnership development hybrids and market for wide adaptability variety for climate change&nbsp; and meet demand&nbsp; of provisional&nbsp; grower&nbsp; , food collectors , supper market , new generation of consumer&nbsp; for healthy and good taste . Green global seeds &nbsp; company focus delivery innovation product seeds to food by &ldquo;Premium seed for&nbsp; high yield and good taste &rdquo; since 2013</span></span></p>', NULL, ',2,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 2, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-14 00:24:36', '2025-09-20 00:02:59'),
(4, 'NEWSACTIVTY', 'Children\'s Day activities 2024', NULL, 'The company participated in the Children\'s Day activity and gave away many prizes.', NULL, NULL, NULL, NULL, NULL, 'upload/2025/08/14/Rectangle169.png', NULL, NULL, NULL, '<p><span style=\"color:#2ecc71\"><span style=\"font-size:18px\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim</span></span></p>', 'en/news-detail/4', ',4,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, NULL, '2025-08-25 00:51:54'),
(4, 'NEWSACTIVTY', 'กิจกรรมวันเด็ก ปี 2567', NULL, 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย', NULL, NULL, NULL, NULL, NULL, 'upload/2025/08/14/Rectangle169.png', NULL, NULL, NULL, '<p><span style=\"color:#2ecc71\"><span style=\"font-size:18px\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim</span></span></p>', 'th/news-detail/4', ',4,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 3, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-14 01:39:21', '2025-08-15 01:11:25'),
(5, 'NEWSPRODUCT', 'Product news', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en/news-detail/5', ',4,', NULL, 'ARQ 1004', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, NULL, '2025-09-12 01:33:58'),
(5, 'NEWSPRODUCT', 'ข่าวสินค้า', NULL, 'Product highlights: Tropical area and well adaptation in dry\r\nseason Very long a size ear hybrids,excelleng gloden yellow color.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'th/news-detail/5', ',4,', NULL, 'ARQ 1004', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 4, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-15 00:50:52', '2025-09-12 01:27:32'),
(6, 'TERM', 'TERMS OF CONDITIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, quidem cumque! Necessitatibus</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quidem laudantium aperiam, illo natus qui impedit ex laborum dignissimos perferendis in quisquam error</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; nobis veritatis veniam officiis!</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, quidem cumque! Necessitatibus</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quidem laudantium aperiam, illo natus qui impedit ex laborum dignissimos perferendis in quisquam error</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; nobis veritatis veniam officiis!</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, quidem cumque! Necessitatibus</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quidem laudantium aperiam, illo natus qui impedit ex laborum dignissimos perferendis in quisquam error</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; nobis veritatis veniam officiis!</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, quidem cumque! Necessitatibus</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quidem laudantium aperiam, illo natus qui impedit ex laborum dignissimos perferendis in quisquam error</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; nobis veritatis veniam officiis!</span></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"color:#098c46\"><span style=\"font-size:18px\">qqqq</span></span></li>\r\n	<li><span style=\"color:#098c46\"><span style=\"font-size:18px\">aaaaa</span></span></li>\r\n	<li><span style=\"color:#098c46\"><span style=\"font-size:18px\">zzzz</span></span></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><span style=\"color:#098c46\"><span style=\"font-size:18px\">wwww</span></span>\r\n\r\n	<ul>\r\n		<li><span style=\"color:#098c46\"><span style=\"font-size:18px\">ssss</span></span>\r\n\r\n		<ul>\r\n			<li><span style=\"color:#098c46\"><span style=\"font-size:18px\">xxxx</span></span></li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>', NULL, ',5,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 5, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-18 03:11:54', '2025-09-05 02:13:47'),
(7, 'REGISTER', 'การรับประกันและการจำกัดความรับผิดชอบ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"color:#d1d5dc\"><span style=\"font-size:14px\">&nbsp;</span><span style=\"font-size:18px\">The Company warrants that the seed in this package conforms to the Company&rsquo;s standard specifications</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; and</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; labeling.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; To the extent permissible under applicable law, the Company hereby disclaims all express or implied</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; warranties,</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; including warranties of merchantability and fitness for a particular purpose.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">There are no other warranties, including warranties of crop performance or freedom from disease</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (even if</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; seed-borne).</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Weather conditions, soil, farming experience, and other variables &mdash; including new and mutated</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; diseases</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; and chemicals &mdash;</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; can have a major effect on the successful farming of any seeds. Therefore, no warranty against</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; disease,</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; variety,</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; or crop performance is given or implied.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp;The Company&rsquo;s total liability in relation to this seed &mdash; however such liability may arise &mdash; is</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; limited</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; in amount</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; to the purchase price of the seed. The Company shall not be liable to the buyer for any direct,</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; special,</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; incidental,</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; or consequential losses or damages, regardless of whether such damages are claimed in contract, tort</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#d1d5dc\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (including negligence or breach of statutory duty), misrepresentation, or otherwise.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#d1d5dc\"><strong>Notice of Claim</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#d1d5dc\"><span style=\"font-size:14px\">Notice of any claim in connection with the warranty expressly made herein shall be given within a reasonable time after discovery. Notice given after the point in time at which the Company cannot physically inspect or examine the seed or the resulting crops shall be deemed not to be reasonable notice hereunder.</span></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"color:#d1d5dc\"><strong>Product &amp; Variety Disclaimer</strong></span></span></h3>\r\n\r\n<p><span style=\"color:#d1d5dc\"><span style=\"font-size:14px\">Weather conditions, soil, farming experience, and other variables &mdash; including new and mutated diseases and chemicals &mdash; can have a major effect on the successful farming of any seeds. Therefore, no warranty against disease, variety, or crop performance is provided. load Weather conditions, soil, farming experience, and other variables &mdash; including new and mutated diseases and chemicals &mdash; can have a major effect on the successful farming of any seeds. Therefore, no warranty against disease, variety, or crop performance is provided. load Weather conditions, soil, farming experience, and other variables &mdash; including new and mutated diseases and chemicals &mdash; can have a major effect on the successful farming of any seeds. Therefore, no warranty against disease, variety, or crop performance is provided. load Weather conditions, soil, farming experience, and other variables &mdash; including new and mutated diseases and chemicals &mdash; can have a major effect on the successful farming of any seeds. Therefore, no warranty against disease, variety, or crop performance is provided. load</span></span></p>', NULL, ',5,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 6, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-19 21:44:06', '2025-09-15 01:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `image_link` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `language` varchar(255) DEFAULT NULL,
  `defaults` varchar(255) NOT NULL DEFAULT '0',
  `update_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`id`, `post_id`, `image_link`, `alt`, `title`, `description`, `position`, `language`, `defaults`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'upload/2025/09/20/489393.jpg', '', '', NULL, 0, 'th', '1', NULL, NULL, NULL),
(2, 3, 'upload/2025/09/20/1268523.jpg', '', '', NULL, 1, 'th', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_url` varchar(255) DEFAULT NULL,
  `thumbnail_link` varchar(255) DEFAULT NULL,
  `thumbnail_title` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `thumbnail_size` varchar(255) DEFAULT NULL,
  `thumbnail_second_link` varchar(100) DEFAULT NULL,
  `thumbnail_second_title` varchar(100) DEFAULT NULL,
  `thumbnail_second_alt` varchar(100) DEFAULT NULL,
  `thumbnail_second_size` varchar(100) DEFAULT NULL,
  `seement` varchar(255) NOT NULL DEFAULT 'N/A',
  `plant_1` varchar(255) DEFAULT NULL,
  `plant_2` varchar(255) DEFAULT NULL,
  `plant_3` varchar(255) DEFAULT NULL,
  `fruit_1` varchar(255) DEFAULT NULL,
  `fruit_2` varchar(255) DEFAULT NULL,
  `fruit_3` varchar(255) DEFAULT NULL,
  `taste_1` varchar(255) DEFAULT NULL,
  `taste_2` varchar(255) DEFAULT NULL,
  `disease_1` varchar(255) DEFAULT NULL,
  `disease_2` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `redirect` text DEFAULT NULL,
  `link_youtube` text DEFAULT NULL,
  `doc_link` text DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0,
  `language` varchar(255) NOT NULL,
  `defaults` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `freetag` text DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `h2` varchar(255) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `link_facebook` text DEFAULT NULL,
  `link_twitter` text DEFAULT NULL,
  `link_instagram` text DEFAULT NULL,
  `link_line` text DEFAULT NULL,
  `post_view` int(11) DEFAULT 0,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `last_update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_url`, `thumbnail_link`, `thumbnail_title`, `thumbnail_alt`, `thumbnail_size`, `thumbnail_second_link`, `thumbnail_second_title`, `thumbnail_second_alt`, `thumbnail_second_size`, `seement`, `plant_1`, `plant_2`, `plant_3`, `fruit_1`, `fruit_2`, `fruit_3`, `taste_1`, `taste_2`, `disease_1`, `disease_2`, `category`, `description`, `redirect`, `link_youtube`, `doc_link`, `display`, `pin`, `priority`, `language`, `defaults`, `created_at`, `updated_at`, `slug`, `keyword`, `freetag`, `h1`, `h2`, `tags`, `link_facebook`, `link_twitter`, `link_instagram`, `link_line`, `post_view`, `meta_tag`, `meta_title`, `meta_description`, `last_update_by`) VALUES
(1, 'RLL 001 AR', 'ar/product-detail/1', 'upload/2025/08/18/402ccbf6eb7da72e00ecda8313a91b96(1).jpg', NULL, NULL, NULL, 'upload/2025/08/18/96632777b703aa6c16f43d1e58aca6bb(1).jpg', NULL, NULL, NULL, '19', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '- Cost management via early maturity and open field practice.', '- The fruit weighs 100–120 grams.', '- It has a square shape.', '- It has very good transportation ability.', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '9', NULL, NULL, 'https://www.youtube.com/embed/em-RtqAwuj8', 'pdf/docs/2025/08/18/chap4th1755501556.pdf', 1, 1, 6, 'ar', 0, NULL, '2025-08-25 02:49:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(1, 'RLL 001 EN', 'en/product-detail/1', 'upload/2025/08/18/402ccbf6eb7da72e00ecda8313a91b96(1).jpg', NULL, NULL, NULL, 'upload/2025/08/18/96632777b703aa6c16f43d1e58aca6bb(1).jpg', NULL, NULL, NULL, '19', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '- Cost management via early maturity and open field practice.', '- The fruit weighs 100–120 grams.', '- It has a square shape.', '- It has very good transportation ability.', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '9', NULL, NULL, 'https://www.youtube.com/embed/em-RtqAwuj8', 'pdf/docs/2025/08/18/chap4th1755501556.pdf', 1, 1, 6, 'en', 0, NULL, '2025-08-25 02:48:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(1, 'RLL 001 TH', 'th/product-detail/1', 'upload/2025/08/18/402ccbf6eb7da72e00ecda8313a91b96(1).jpg', NULL, NULL, NULL, 'upload/2025/08/18/96632777b703aa6c16f43d1e58aca6bb(1).jpg', NULL, NULL, NULL, '19', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '- Cost management via early maturity and open field practice.', '- The fruit weighs 100–120 grams.', '- It has a square shape.', '- It has very good transportation ability.', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '9', NULL, NULL, 'https://www.youtube.com/embed/em-RtqAwuj8', 'pdf/docs/2025/08/18/chap4th1755501556.pdf', 1, 1, 1, 'th', 1, '2025-08-18 00:19:16', '2025-09-08 00:50:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(2, 'ARM 001 TH', 'th/product-detail/2', 'upload/2025/08/25/3b2f255753a3c96a7254304b2d69dce6.jpg', NULL, NULL, NULL, 'upload/2025/08/25/6c7b568ceaa09859f004c6a176a49637.jpg', NULL, NULL, NULL, '1', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '8', NULL, NULL, 'https://www.youtube.com/embed/9m81GlfA1BE', 'pdf/docs/2025/08/25/Tomatoes_PDFth1756116382.pdf', 1, 0, 1, 'th', 1, '2025-08-25 03:06:22', '2025-09-08 00:21:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(3, 'ARQ 009en', 'en/product-detail/3', 'upload/2025/09/06/521767fd2d86f27cd2c1781eb161ac9a.jpg', NULL, NULL, NULL, 'upload/2025/09/06/cf150492cbb05fd7f52870bf8f018e94.jpg', NULL, NULL, NULL, '3', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '7', NULL, NULL, 'https://www.youtube.com/embed/9m81GlfA1BE', NULL, 1, 0, 1, 'en', 0, NULL, '2025-09-20 01:53:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(3, 'ARQ 009', 'th/product-detail/3', 'upload/2025/09/06/521767fd2d86f27cd2c1781eb161ac9a.jpg', NULL, NULL, NULL, 'upload/2025/09/06/cf150492cbb05fd7f52870bf8f018e94.jpg', NULL, NULL, NULL, '3', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '7', NULL, NULL, 'https://www.youtube.com/embed/9m81GlfA1BE', NULL, 1, 0, 1, 'th', 1, '2025-09-05 20:07:11', '2025-09-08 00:21:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(4, 'SLL qq', 'th/product-detail/4', 'upload/2025/09/06/ce3f100e0b4a2a91f152e9ab58625788.jpg', NULL, NULL, NULL, 'upload/2025/09/06/dd8048585e316b170db7dd68b82d1e02.jpg', NULL, NULL, NULL, '17', '- Good branching plant with heat setting.', 'f/k', 'f/kv', 'f/k', 'f/k', 'f/k', 'f/k', 'f/k', 'f/k', 'f/k', '11', NULL, NULL, NULL, 'pdf/docs/2025/09/06/WHEATth1757131069.pdf', 1, 0, 1, 'th', 1, '2025-09-05 20:32:51', '2025-09-08 01:01:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(5, 'MLL sss', 'th/product-detail/5', 'upload/2025/09/06/aafe468b2d90e95d15e742e4c4d4f6d6.jpg', NULL, NULL, NULL, 'upload/2025/09/06/110ae3c5a13c3973a4487df6184bbf5e.jpg', NULL, NULL, NULL, '14', '- Good branching plant with heat setting.', 'ee/OO', 'ee/OO', 'ee/OO', 'ee/OO', 'ee/OO', 'ee/OO', 'ee/OO', 'ee/OO', 'ee/OO', '14', NULL, NULL, NULL, NULL, 1, 0, 3, 'th', 1, '2025-09-05 21:04:23', '2025-09-07 21:51:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(6, 'BLL 1009', 'th/product-detail/6', 'upload/2025/09/08/cf150492cbb05fd7f52870bf8f018e94.jpg', NULL, NULL, NULL, 'upload/2025/09/08/47549471dc54feb8acd4b3de3a27ea8e9e9fd25c.png', NULL, NULL, NULL, '16', '- banana banana banana banana banana setting.', '- banana banana banana banana banana setting.', '- banana banana banana banana banana setting.', '- banana banana banana banana banana setting.', '- banana banana banana banana banana setting.', '- banana banana banana banana banana setting.', '- banana banana banana banana banana setting.', '- banana banana banana banana banana setting.', '- banana banana banana banana banana setting.', '- banana banana banana banana banana setting.', '12', NULL, NULL, 'https://www.youtube.com/embed/ex0URF-hWj4', 'pdf/docs/2025/09/08/Banana_and_its_by-products_A_comprehensive_review_th1757305838.pdf', 1, 0, 1, 'th', 1, '2025-09-07 21:30:38', '2025-09-07 21:30:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(7, 'RLL 20001', 'th/product-detail/7', 'upload/2025/09/08/96632777b703aa6c16f43d1e58aca6bb.jpg', NULL, NULL, NULL, 'upload/2025/09/08/a61acffe0e03c6529110865a91f4aaef.jpg', NULL, NULL, NULL, '19', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '9', NULL, NULL, 'https://www.youtube.com/embed/YiiLg_KbZDM', 'pdf/docs/2025/09/08/Tomatoes_PDFth1757306025.pdf', 1, 0, 4, 'th', 1, '2025-09-07 21:33:45', '2025-09-08 00:58:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(8, 'RLL 30003', 'th/product-detail/8', 'upload/2025/09/08/101-1014904_free-popsicle-clipart-12-buy-clip-art-ไอ-ติ-ม-ไม่มี-พื้น.png.jpg', NULL, NULL, NULL, 'upload/2025/09/08/521767fd2d86f27cd2c1781eb161ac9a.jpg', NULL, NULL, NULL, '19', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '9', NULL, NULL, 'https://www.youtube.com/embed/YiiLg_KbZDM', NULL, 1, 1, 5, 'th', 1, '2025-09-07 21:36:36', '2025-09-08 00:58:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(9, 'RLL 4004', 'th/product-detail/9', 'upload/2025/09/08/67ca3591aaef2c31c18e6a12b334258e.jpg', NULL, NULL, NULL, 'upload/2025/09/08/101-1014904_free-popsicle-clipart-12-buy-clip-art-ไอ-ติ-ม-ไม่มี-พื้น.png(1).jpg', NULL, NULL, NULL, '19', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '9', NULL, NULL, 'https://www.youtube.com/embed/YiiLg_KbZDM', NULL, 1, 0, 2, 'th', 1, '2025-09-07 21:53:29', '2025-09-08 00:57:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(10, 'RLL 50005', 'th/product-detail/10', 'upload/2025/09/08/71e699d8715604977d08407c38abd375.jpg', NULL, NULL, NULL, 'upload/2025/09/08/6c7b568ceaa09859f004c6a176a49637.jpg', NULL, NULL, NULL, '19', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '-rice rice rice rice rice  heat setting.', '9', NULL, NULL, 'https://www.youtube.com/embed/YiiLg_KbZDM', NULL, 1, 0, 3, 'th', 1, '2025-09-07 21:54:32', '2025-09-08 00:50:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(11, 'ARQ 1004en', 'en/product-detail/11', 'upload/2025/09/09/c132e591009c501e815a106583818a7d.jpg', NULL, NULL, NULL, 'upload/2025/09/09/101-1014904_free-popsicle-clipart-12-buy-clip-art-ไอ-ติ-ม-ไม่มี-พื้น.png.jpg', NULL, NULL, NULL, '3', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '7', NULL, NULL, 'https://youtu.be/DHZQmOWTCKc?si=JmyLhAKbU1MoBAah', NULL, 1, 0, 2, 'en', 0, NULL, '2025-09-20 01:53:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(11, 'ARQ 1004', 'th/product-detail/11', 'upload/2025/09/09/c132e591009c501e815a106583818a7d.jpg', NULL, NULL, NULL, 'upload/2025/09/09/101-1014904_free-popsicle-clipart-12-buy-clip-art-ไอ-ติ-ม-ไม่มี-พื้น.png.jpg', NULL, NULL, NULL, '3', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '-sweetcorn sweetcorn sweetcorn sweetcorn sweetcorn setting.', '7', NULL, NULL, 'https://youtu.be/DHZQmOWTCKc?si=JmyLhAKbU1MoBAah', '', 1, 0, 2, 'th', 1, '2025-09-09 00:25:56', '2025-09-09 00:25:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(12, 'wy 001en', 'en/product-detail/12', 'upload/2025/09/20/71e699d8715604977d08407c38abd375.jpg', NULL, NULL, NULL, 'upload/2025/09/20/3e5b0d7c43991bad0ebeb9592074f6a7.jpg', NULL, NULL, NULL, '13', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '7', NULL, NULL, NULL, NULL, 1, 0, 3, 'en', 0, NULL, '2025-09-20 01:53:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(12, 'wy 001', 'th/product-detail/12', 'upload/2025/09/20/71e699d8715604977d08407c38abd375.jpg', NULL, NULL, NULL, 'upload/2025/09/20/3e5b0d7c43991bad0ebeb9592074f6a7.jpg', NULL, NULL, NULL, '13', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '- Good branching plant with heat setting.', '7', NULL, NULL, NULL, '', 1, 0, 3, 'th', 1, '2025-09-20 01:29:58', '2025-09-20 01:29:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `segment_id` varchar(100) DEFAULT NULL,
  `thumbnail_link` varchar(255) DEFAULT NULL,
  `thumbnail_title` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `details_content` text DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT 0,
  `display` tinyint(1) NOT NULL DEFAULT 1,
  `defaults` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(255) NOT NULL DEFAULT 'th',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `title`, `details`, `description`, `segment_id`, `thumbnail_link`, `thumbnail_title`, `thumbnail_alt`, `details_content`, `priority`, `pin`, `display`, `defaults`, `language`, `created_at`, `updated_at`) VALUES
(7, 'ข้าวโพด{AR}', 'null', 'null', '3,13,', 'upload/2025/08/04/521767fd2d86f27cd2c1781eb161ac9a.jpg', 'null', 'null', NULL, 1, 0, 1, 0, 'ar', NULL, '2025-11-10 21:38:02'),
(7, 'sweetcorn', 'null', 'null', '3,13,', 'upload/2025/08/04/521767fd2d86f27cd2c1781eb161ac9a.jpg', 'null', 'null', NULL, 1, 0, 1, 0, 'en', NULL, '2025-09-22 21:00:41'),
(7, 'ข้าวโพด', 'null', 'null', '13,3,', 'upload/2025/08/04/521767fd2d86f27cd2c1781eb161ac9a.jpg', 'null', 'null', NULL, 1, 0, 1, 1, 'th', '2025-08-03 23:45:21', '2025-08-04 19:12:44'),
(8, 'มะเขือเทศ{AR}', 'null', 'null', '1,', 'upload/2025/08/04/มะเขียเทสเดินเล่น(3).png', 'null', 'null', NULL, 2, 0, 1, 0, 'ar', NULL, '2025-11-10 21:38:07'),
(8, 'tomato', 'null', 'null', '1,', 'upload/2025/08/04/มะเขียเทสเดินเล่น(3).png', 'null', 'null', NULL, 2, 0, 1, 0, 'en', NULL, '2025-09-22 21:01:02'),
(8, 'มะเขือเทศ', 'null', 'null', '1,', 'upload/2025/08/04/มะเขียเทสเดินเล่น(3).png', 'null', 'null', NULL, 2, 0, 1, 1, 'th', '2025-08-04 00:51:24', '2025-08-14 21:34:28'),
(9, 'ข้าว{AR}', 'null', 'null', '19,', 'upload/2025/08/15/97aaf347be8722733b292088d765bb4e.jpg', 'null', 'null', NULL, 3, 0, 1, 0, 'ar', NULL, '2025-11-10 21:38:12'),
(9, 'rice', 'null', 'null', '19,', 'upload/2025/08/15/97aaf347be8722733b292088d765bb4e.jpg', 'null', 'null', NULL, 3, 0, 1, 0, 'en', NULL, '2025-08-25 00:11:24'),
(9, 'ข้าว', 'null', 'null', '19,', 'upload/2025/08/15/97aaf347be8722733b292088d765bb4e.jpg', 'null', 'null', NULL, 3, 0, 1, 1, 'th', '2025-08-14 21:39:39', '2025-08-14 21:53:24'),
(10, 'ข้าวสาลี', 'null', 'null', '18,', 'upload/2025/08/15/96632777b703aa6c16f43d1e58aca6bb.jpg', 'null', 'null', NULL, 4, 0, 1, 1, 'th', '2025-08-14 21:40:28', '2025-08-14 21:53:14'),
(11, 'ถั่วเหลือง', 'null', 'null', '17,', 'upload/2025/08/15/dd8048585e316b170db7dd68b82d1e02.jpg', 'null', 'null', NULL, 5, 0, 1, 1, 'th', '2025-08-14 21:40:48', '2025-08-14 21:53:01'),
(12, 'กล้วย', 'null', 'null', '16,', 'upload/2025/08/15/cf150492cbb05fd7f52870bf8f018e94.jpg', 'null', 'null', NULL, 6, 0, 1, 1, 'th', '2025-08-14 21:41:12', '2025-08-14 21:52:50'),
(13, 'พริกหวาน', 'null', 'null', '15,', 'upload/2025/08/15/450169a73eb4fb48d2e8d5f01f2ba314.jpg', 'null', 'null', NULL, 7, 0, 1, 1, 'th', '2025-08-14 21:41:35', '2025-08-14 21:52:37'),
(14, 'เมล่อน', 'null', 'null', '14,', 'upload/2025/08/15/110ae3c5a13c3973a4487df6184bbf5e.jpg', 'null', 'null', NULL, 8, 0, 1, 1, 'th', '2025-08-14 21:43:09', '2025-08-14 21:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `segments`
--

CREATE TABLE `segments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `segments`
--

INSERT INTO `segments` (`id`, `title`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ARM', 1, '2025-08-02 09:16:52', '2025-08-02 09:17:00'),
(2, 'ASQ', 1, '2025-08-02 09:16:56', '2025-08-02 09:17:01'),
(3, 'ARQ', 1, '2025-08-02 09:16:58', '2025-08-02 09:17:03'),
(4, 'aa1', 1, '2025-08-02 02:11:42', '2025-09-05 00:28:18'),
(6, 'qq', 1, '2025-08-03 21:29:24', '2025-08-03 21:29:24'),
(8, 'f2', 1, '2025-08-03 21:29:24', '2025-08-03 21:29:24'),
(12, 'u5', 1, '2025-08-04 00:51:24', '2025-08-04 00:51:24'),
(13, 'wy', 1, '2025-08-04 01:51:07', '2025-08-04 01:51:07'),
(14, 'MLL', 1, '2025-08-14 21:52:02', '2025-08-14 21:52:02'),
(15, 'SPL', 1, '2025-08-14 21:52:37', '2025-08-14 21:52:37'),
(16, 'BLL', 1, '2025-08-14 21:52:50', '2025-08-14 21:52:50'),
(17, 'SLL', 1, '2025-08-14 21:53:01', '2025-08-14 21:53:01'),
(18, 'CLL', 1, '2025-08-14 21:53:14', '2025-08-14 21:53:14'),
(19, 'RLL', 1, '2025-08-14 21:53:24', '2025-08-14 21:53:24'),
(20, 'tt', 1, '2025-09-04 01:36:09', '2025-09-04 01:36:09'),
(23, 'aa2', 1, '2025-09-04 20:29:04', '2025-09-04 20:29:04'),
(24, 'aa33', 1, '2025-09-04 20:30:11', '2025-09-12 03:12:14'),
(26, 'aaaa ffffff ggggg xxxxxx', 1, '2025-09-22 23:31:08', '2025-09-22 23:31:08'),
(27, 'ssc1', 1, '2025-09-23 01:46:20', '2025-09-23 01:46:20'),
(28, 'eqq2', 1, '2025-09-23 01:46:35', '2025-09-23 01:46:35'),
(29, 'cc123', 1, '2025-09-23 01:47:12', '2025-09-23 01:47:12'),
(30, 'asd1', 1, '2025-09-23 02:16:15', '2025-09-23 02:17:43'),
(31, 'asd', 1, '2025-09-23 02:18:56', '2025-09-23 02:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rates`
--

CREATE TABLE `shipping_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rates` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `account_role` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `account_role`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2y$10$s15yQn3lPYMKX03FjQor9.8Lah4FBHlJ6tSyQx9fZitwpaMaUtmm.', 'admin@example.com', 'backoffice', NULL, NULL, NULL, NULL),
(2, 'papap@gmail.com', '$2y$12$VkMASWZU1giR9seGU0C9ZeB18WwP98ibvKCRGsenb4fKQy8cxyFry', 'papap@gmail.com', 'backoffice', NULL, NULL, '2025-07-24 23:26:27', '2025-07-24 23:26:27'),
(7, 'papsap2@gmail.com', '$2y$12$oXa2faZPAG1ThJAAO3XtJO2L/GfFxHjeIv1lVkSRhThm3kNUynami', 'papsap2@gmail.com', 'backoffice', NULL, NULL, '2025-07-25 02:59:45', '2025-07-25 02:59:45'),
(9, 'papsap3@gmail.com', '$2y$12$8SMggMHwUa8qCuMzVzaEjeHHR1YZkyGx45WXAbVdWzKufCRLCDFYq', 'papsap3@gmail.com', 'backoffice', NULL, NULL, '2025-07-30 19:23:57', '2025-07-30 19:23:57'),
(14, 'park2', '$2y$12$8GEUtH2Oi9sB6lpPSmSkSeHWVDb7gl/G2HwYqg7.doDpxVXsYyxHy', '123q@321.ddd', 'member', NULL, NULL, '2025-08-20 21:30:48', '2025-08-20 21:30:48'),
(16, 'park3', '$2y$12$oXa2faZPAG1ThJAAO3XtJO2L/GfFxHjeIv1lVkSRhThm3kNUynami', '12e3q@321.ddd', 'member', NULL, NULL, '2025-08-20 21:38:06', '2025-08-20 21:38:06'),
(17, 'park4', '$2y$12$5Rea8KTNPumHCMR/Tv3E5.d34l9sM611nN.S5PxKIrlUlDgLu7XpS', '1qr23q@321.ddd', 'member', NULL, NULL, '2025-08-20 21:54:58', '2025-08-20 21:54:58'),
(18, 'park5', '$2y$12$VVcIH6hqkU/tVh4p4Tu/6.jPtPKDkZTz0YUgJ/qEz0U1nUiCnQ5My', 's1qr23q@321.ddd', 'member', NULL, NULL, '2025-08-20 23:13:21', '2025-08-20 23:13:21'),
(19, 'park6', '$2y$12$3vp7u1JMktIczPbz/FkpEOZSCpfUCifgxNl7XGqhdDUVEoF.5q8/W', 'xxr23q@321.ddd', 'member', NULL, NULL, '2025-08-20 23:33:50', '2025-08-20 23:33:50'),
(20, 'parktest1', '$2y$12$l34nDd729p4ak39VxFgUf.nasQS6ls8Hn0li8G4GPGuL5UYweP4We', 'xxr23q@4321.com', 'member', NULL, NULL, '2025-08-22 00:16:33', '2025-08-28 21:37:13'),
(61, 'parksetemailtest', '$2y$12$cB4DfTSvNYA12JHu0bixbe.v15bjh1Vq006MSkeBe.WewTVwQykv.', 'hpxaxrxkh51617@gmail.com', 'member', NULL, NULL, '2025-09-07 21:02:30', '2025-09-07 21:02:30'),
(62, 'park@example.com', '$2y$12$f2vGPhe3KhUYeanYRcQ/cu2fV0p/.IJHQBczcwbS4FH8vszxE3dBO', 'parklovepark112@gmail.com', 'backoffice', NULL, NULL, '2025-09-15 03:34:05', '2025-09-16 01:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `web_infos`
--

CREATE TABLE `web_infos` (
  `info_id` bigint(20) UNSIGNED NOT NULL,
  `info_type` varchar(255) DEFAULT NULL,
  `info_param` varchar(255) NOT NULL,
  `info_title` varchar(255) DEFAULT NULL,
  `info_value` text DEFAULT NULL,
  `info_link` text DEFAULT NULL,
  `info_iframe` text DEFAULT NULL,
  `info_attribute` varchar(255) DEFAULT NULL,
  `info_priority` int(11) NOT NULL DEFAULT 1,
  `info_display` tinyint(1) NOT NULL DEFAULT 1,
  `admin_level` tinyint(1) NOT NULL COMMENT 'สิทธิ์เข้าถึงข้อมูล',
  `language` varchar(255) NOT NULL,
  `defaults` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_infos`
--

INSERT INTO `web_infos` (`info_id`, `info_type`, `info_param`, `info_title`, `info_value`, `info_link`, `info_iframe`, `info_attribute`, `info_priority`, `info_display`, `admin_level`, `language`, `defaults`, `created_at`, `updated_at`) VALUES
(1, '1', 'webname', 'ชื่อเว็บไซต์ #1', 'Green Global', NULL, '', '', 1, 0, 3, 'th', 1, '2025-07-25 05:03:44', '2025-09-16 00:11:14'),
(2, '1', 'companyname', 'ชื่อบริษัท / ชื่อร้านค้า', NULL, NULL, '', '', 3, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(3, '1', 'image_1', 'Image #1 (Logo)', NULL, 'image\\catering-img3.png', '', '', 3, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(4, '1', 'favicon', 'Image favicon (Primary)', NULL, 'image\\logo-GGS.png 1.png', '', '', 6, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(5, '1', 'extraname', 'ชื่อเว็บไซต์ #2', 'Company', NULL, NULL, NULL, 2, 1, 3, 'th', 1, '2025-08-01 03:33:18', '2025-08-01 03:33:18'),
(6, '1', 'image_2', 'Image #2 (Qrcode)', NULL, 'upload/2025/08/19/217555798770.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(7, '1', 'image_3', 'Image #3 (#1)', NULL, 'upload/2025/08/19/317555799570.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(8, '1', 'image_4', 'Image #4 (#2)', NULL, 'upload/2025/08/19/417555799570.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(9, '1', 'image_5', 'Image #5 (#3)', NULL, 'upload/2025/08/19/517555863240.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(10, '2', 'email', 'Email', 'parklovepark112@gmail.com', NULL, NULL, NULL, 3, 1, 3, 'ar', 0, '2025-08-19 07:13:03', '2025-08-19 00:14:51'),
(10, '2', 'email', 'Email', 'parklovepark112@gmail.com', NULL, NULL, NULL, 3, 1, 3, 'en', 0, '2025-08-19 07:13:03', '2025-08-19 00:14:51'),
(10, '2', 'email', 'อีเมล', 'parklovepark112@gmail.com', NULL, NULL, NULL, 3, 1, 3, 'th', 1, '2025-08-19 07:13:03', '2025-08-19 00:14:51'),
(11, '2', 'phone', 'Phone', '0933365675', NULL, NULL, NULL, 1, 1, 3, 'ar', 0, '2025-08-19 00:14:22', '2025-08-19 00:14:42'),
(11, '2', 'phone', 'Phone', '0933365675', NULL, NULL, NULL, 1, 1, 3, 'en', 0, '2025-08-19 00:14:22', '2025-08-19 00:14:42'),
(11, '2', 'phone', 'เบอร์โทรศัพท์', '0933365675', NULL, NULL, NULL, 1, 1, 3, 'th', 1, '2025-08-19 00:14:22', '2025-08-19 00:14:42'),
(12, '2', 'website', 'Website', 'WWW.REENGLOBLSEEDS.COM', NULL, NULL, NULL, 2, 1, 3, 'ar', 0, '2025-08-19 00:15:35', '2025-08-19 00:29:13'),
(12, '2', 'website', 'Website', 'WWW.REENGLOBLSEEDS.COM', NULL, NULL, NULL, 2, 1, 3, 'en', 0, '2025-08-19 00:15:35', '2025-08-19 00:29:13'),
(12, '2', 'website', 'เว็บไซต์', 'WWW.REENGLOBLSEEDS.COM', NULL, NULL, NULL, 2, 1, 3, 'th', 1, '2025-08-19 00:15:35', '2025-08-19 00:29:13'),
(13, '2', 'address', 'Address', 'GREEN GLOBAL SEEDS COMPANY 199/376, Moo 4, Rangsit Sub-district, Thanyaburi District, Pathum Thani 12110. Thailand', NULL, NULL, NULL, 4, 1, 3, 'ar', 0, '2025-08-19 00:18:42', '2025-08-19 00:18:42'),
(13, '2', 'address', 'Address', 'GREEN GLOBAL SEEDS COMPANY 199/376, Moo 4, Rangsit Sub-district, Thanyaburi District, Pathum Thani 12110. Thailand', NULL, NULL, NULL, 4, 1, 3, 'en', 0, '2025-08-19 00:18:42', '2025-08-19 00:18:42'),
(13, '2', 'address', 'ที่อยู่', 'GREEN GLOBAL SEEDS COMPANY 199/376, Moo 4, Rangsit Sub-district, Thanyaburi District, Pathum Thani 12110. Thailand', NULL, NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-19 00:18:42', '2025-08-19 00:18:42'),
(22, '4', 'copy_right', 'copy right', '© 2023 by Tamarind Thai Restaurant.com', '', '', '', 1, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `web_info_types`
--

CREATE TABLE `web_info_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT 1,
  `language` varchar(255) NOT NULL,
  `defaults` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_info_types`
--

INSERT INTO `web_info_types` (`id`, `type_name`, `title`, `display`, `language`, `defaults`, `created_at`, `updated_at`) VALUES
(1, 'detail', 'Web Info', 1, 'ar', 0, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(1, 'detail', 'Web Info', 1, 'en', 0, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(1, 'detail', 'ข้อมูลเว็บไซต์', 1, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(2, 'contact', 'Contact', 1, 'ar', 0, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(2, 'contact', 'Contact', 1, 'en', 0, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(2, 'contact', 'ข้อมูลติดต่อ', 1, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(3, 'website', 'เปิดใช้งานเว็บไซต์', 0, 'th', 0, '2025-09-30 09:11:48', '2025-09-30 09:11:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_slides`
--
ALTER TABLE `ad_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_slide_positions`
--
ALTER TABLE `ad_slide_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_infos`
--
ALTER TABLE `bank_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_products`
--
ALTER TABLE `cart_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`,`language`) USING BTREE,
  ADD UNIQUE KEY `categories_language_cate_url_unique` (`language`,`cate_url`);

--
-- Indexes for table `countries_configs`
--
ALTER TABLE `countries_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `language_availables`
--
ALTER TABLE `language_availables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_configs`
--
ALTER TABLE `language_configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `language_configs_param_language_unique` (`param`,`language`);

--
-- Indexes for table `leave_messages`
--
ALTER TABLE `leave_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_accounts`
--
ALTER TABLE `member_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_favors`
--
ALTER TABLE `member_favors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_occupations`
--
ALTER TABLE `member_occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_profiles`
--
ALTER TABLE `member_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `occupations_configs`
--
ALTER TABLE `occupations_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`,`language`) USING BTREE;

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`,`language`) USING BTREE;

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`,`language`) USING BTREE,
  ADD UNIQUE KEY `product_category_language_id_unique` (`language`,`id`);

--
-- Indexes for table `segments`
--
ALTER TABLE `segments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`,`account_role`) USING BTREE;

--
-- Indexes for table `web_infos`
--
ALTER TABLE `web_infos`
  ADD PRIMARY KEY (`info_id`,`language`) USING BTREE,
  ADD UNIQUE KEY `web_infos_language_info_param_unique` (`language`,`info_param`);

--
-- Indexes for table `web_info_types`
--
ALTER TABLE `web_info_types`
  ADD PRIMARY KEY (`id`,`language`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ad_slides`
--
ALTER TABLE `ad_slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ad_slide_positions`
--
ALTER TABLE `ad_slide_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank_infos`
--
ALTER TABLE `bank_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_products`
--
ALTER TABLE `cart_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `countries_configs`
--
ALTER TABLE `countries_configs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language_availables`
--
ALTER TABLE `language_availables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language_configs`
--
ALTER TABLE `language_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `leave_messages`
--
ALTER TABLE `leave_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member_accounts`
--
ALTER TABLE `member_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `member_favors`
--
ALTER TABLE `member_favors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_occupations`
--
ALTER TABLE `member_occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `member_profiles`
--
ALTER TABLE `member_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `occupations_configs`
--
ALTER TABLE `occupations_configs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `segments`
--
ALTER TABLE `segments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `web_infos`
--
ALTER TABLE `web_infos`
  MODIFY `info_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `web_info_types`
--
ALTER TABLE `web_info_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
