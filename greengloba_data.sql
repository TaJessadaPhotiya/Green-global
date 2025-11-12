-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2025 at 03:01 PM
-- Server version: 5.7.37-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greengloba_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `admin_level` int(11) NOT NULL DEFAULT '4',
  `admin_status` int(11) NOT NULL DEFAULT '2',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apple_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(7, 7, 2, 1, 'th,en,ar', 'paspa2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-12 09:24:40', '2025-07-25 02:59:46', '2025-09-12 02:24:40'),
(9, 9, 4, 2, NULL, 'paspa3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-30 19:23:57', '2025-07-30 19:23:57'),
(10, 37, 1, 1, 'th,en,ar', 'Nun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-04 04:13:43', '2025-09-03 21:13:24', '2025-09-03 21:13:43'),
(11, 67, 2, 1, 'th,en,ar', 'Apo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-12 09:09:49', '2025-09-12 02:09:19', '2025-09-12 02:09:49'),
(12, 71, 2, 1, 'th,en,ar', 'Admin-Greenglobal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-16 08:53:07', '2025-09-16 01:45:11', '2025-09-16 01:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `page_id` int(11) NOT NULL DEFAULT '0',
  `ad_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_image_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_image_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_type` int(11) NOT NULL DEFAULT '1' COMMENT '1: ภาพหน้าหลัก, 2: ภาพโฆษณา',
  `ad_position_id` int(11) NOT NULL DEFAULT '1',
  `ad_priority` int(11) NOT NULL DEFAULT '1',
  `ad_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_h2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_status_display` tinyint(1) NOT NULL DEFAULT '1',
  `ad_date_display` datetime DEFAULT NULL,
  `ad_date_hidden` datetime DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'th',
  `defaults` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_slides`
--

INSERT INTO `ad_slides` (`id`, `page_id`, `ad_image`, `ad_image_alt`, `ad_image_title`, `ad_title`, `ad_description`, `ad_type`, `ad_position_id`, `ad_priority`, `ad_link`, `ad_redirect`, `ad_h1`, `ad_h2`, `ad_status_display`, `ad_date_display`, `ad_date_hidden`, `language`, `defaults`, `created_at`, `updated_at`) VALUES
(1, 0, 'upload/2025/09/06/ภาพslide.jpg', 'slide1', NULL, 'slide1', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'th', '1', '2025-08-28 01:42:46', '2025-09-05 21:27:37'),
(4, 0, 'upload/2025/09/23/ภาพslide-2.jpg', NULL, NULL, 'slide2', NULL, 1, 1, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'th', '1', '2025-09-19 23:12:44', '2025-09-22 21:36:13'),
(5, 0, 'upload/2025/09/23/ภาพslide-3.jpg', NULL, NULL, 'slide 3', NULL, 1, 1, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'th', '1', '2025-09-19 23:16:08', '2025-09-22 21:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `ad_slide_positions`
--

CREATE TABLE `ad_slide_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `bank_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `is_brand` tinyint(1) NOT NULL DEFAULT '1',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `defaults` tinyint(1) NOT NULL DEFAULT '1',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'th',
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
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_thumbnail_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_thumbnail_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_h2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_topic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_freetag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_attr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_parent_id` int(11) NOT NULL DEFAULT '0',
  `cate_root_id` int(11) NOT NULL DEFAULT '0',
  `cate_level` int(11) NOT NULL DEFAULT '0',
  `cate_status_display` tinyint(1) NOT NULL DEFAULT '1',
  `is_menu` tinyint(1) NOT NULL DEFAULT '0',
  `is_topside` tinyint(1) NOT NULL DEFAULT '0',
  `is_leftside` tinyint(1) NOT NULL DEFAULT '0',
  `is_rightside` tinyint(1) NOT NULL DEFAULT '0',
  `is_bottomside` tinyint(1) NOT NULL DEFAULT '0',
  `cate_priority` int(11) NOT NULL DEFAULT '1',
  `cate_position` int(11) NOT NULL DEFAULT '1',
  `on_product` tinyint(1) NOT NULL DEFAULT '0',
  `is_main_page` tinyint(1) NOT NULL DEFAULT '1',
  `is_product_cate` tinyint(1) NOT NULL DEFAULT '0',
  `cate_date_display` datetime DEFAULT NULL,
  `cate_date_hidden` datetime DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'th',
  `defaults` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `cate_title`, `cate_keyword`, `cate_description`, `cate_thumbnail`, `cate_thumbnail_title`, `cate_thumbnail_alt`, `cate_url`, `cate_h1`, `cate_h2`, `meta_title`, `meta_description`, `meta_keyword`, `cate_topic`, `cate_freetag`, `cate_attr`, `cate_redirect`, `cate_parent_id`, `cate_root_id`, `cate_level`, `cate_status_display`, `is_menu`, `is_topside`, `is_leftside`, `is_rightside`, `is_bottomside`, `cate_priority`, `cate_position`, `on_product`, `is_main_page`, `is_product_cate`, `cate_date_display`, `cate_date_hidden`, `language`, `defaults`, `created_at`, `updated_at`) VALUES
(1, NULL, 'الصفحة الرئيسية', 'HOME', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar', 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:10:35'),
(1, NULL, 'HOME', 'HOME', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en', 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-13 04:44:02', '2025-09-05 21:16:38'),
(1, NULL, 'หน้าหลัก', 'HOME', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th', 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:20:13', '2025-08-13 01:00:47'),
(2, NULL, 'الرؤية', 'VISION', NULL, NULL, NULL, NULL, '/vision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/vision', 0, 2, 0, 1, 1, 1, 0, 0, 0, 2, 1, 0, 1, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:11:06'),
(2, NULL, 'VISION', 'VISION', NULL, NULL, NULL, NULL, '/vision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/vision', 0, 2, 0, 1, 1, 1, 0, 0, 0, 2, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 03:22:35', '2025-08-13 06:55:23'),
(2, NULL, 'วิสัยทัศน์', 'VISION', NULL, NULL, NULL, NULL, '/vision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/vision', 0, 2, 0, 1, 1, 1, 0, 0, 0, 2, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:22:37', '2025-08-13 01:01:28'),
(3, NULL, 'المنتج', 'PRODUCT', NULL, NULL, NULL, NULL, '/product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/product', 0, 3, 0, 1, 1, 1, 0, 0, 0, 4, 1, 0, 1, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:08:24'),
(3, NULL, 'PRODUCT', 'PRODUCT', NULL, NULL, NULL, NULL, '/product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/product', 0, 3, 0, 1, 1, 1, 0, 0, 0, 4, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 03:30:59', '2025-08-13 00:01:29'),
(3, NULL, 'ผลิตภัณฑ์', 'PRODUCT', NULL, NULL, NULL, NULL, '/product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/product', 0, 3, 0, 1, 1, 1, 0, 0, 0, 4, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:31:00', '2025-08-13 01:01:48'),
(4, NULL, 'الأخبار', 'NEWS', NULL, NULL, NULL, NULL, '/news', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/news', 0, 4, 0, 1, 1, 1, 0, 0, 0, 3, 1, 0, 1, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-09 00:48:55'),
(4, NULL, 'NEWS', 'NEWS', NULL, NULL, NULL, NULL, '/news', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/news', 0, 4, 0, 1, 1, 1, 0, 0, 0, 3, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 03:32:02', '2025-08-13 00:01:09'),
(4, NULL, 'ข่าว', 'NEWS', NULL, NULL, NULL, NULL, '/news', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/news', 0, 4, 0, 1, 1, 1, 0, 0, 0, 3, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:32:03', '2025-08-13 01:01:34'),
(5, NULL, 'الشروط والأحكام', 'TERM&CONDITION', NULL, NULL, NULL, NULL, '/term', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/term', 0, 5, 0, 1, 1, 1, 0, 0, 0, 5, 1, 0, 1, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:11:57'),
(5, NULL, 'TERM&CONDITION', 'TERM&CONDITION', NULL, NULL, NULL, NULL, '/term', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/term', 0, 5, 0, 1, 1, 1, 0, 0, 0, 5, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 04:03:58', '2025-08-12 23:59:16'),
(5, NULL, 'ข้อกำหนด/เงื่อนไข', 'TERM&CONDITION', NULL, NULL, NULL, NULL, '/term', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/term', 0, 5, 0, 1, 1, 1, 0, 0, 0, 5, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 04:03:59', '2025-08-13 01:02:23'),
(6, NULL, 'اتصل بنا', 'CONTACT US', NULL, NULL, NULL, NULL, '/contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/contact', 0, 6, 0, 1, 1, 1, 0, 0, 0, 6, 1, 0, 1, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:04:03'),
(6, NULL, 'CONTACT US', 'CONTACT US', NULL, NULL, NULL, NULL, '/contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/contact', 0, 6, 0, 1, 1, 1, 0, 0, 0, 6, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 04:04:20', '2025-08-13 00:02:05'),
(6, NULL, 'ติดต่อเรา', 'CONTACT US', NULL, NULL, NULL, NULL, '/contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/contact', 0, 6, 0, 1, 1, 1, 0, 0, 0, 6, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 04:04:12', '2025-08-13 01:02:31'),
(7, NULL, 'تسجيل دخول', 'MEMBER', NULL, NULL, NULL, NULL, 'member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 0, 1, 1, 1, 0, 0, 0, 7, 2, 0, 1, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:14:21'),
(7, NULL, 'MEMBER', 'MEMBER', NULL, NULL, NULL, NULL, 'member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 0, 1, 1, 1, 0, 0, 0, 7, 2, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 04:07:50', '2025-08-13 00:02:19'),
(7, NULL, 'สมาชิก', 'MEMBER', NULL, NULL, NULL, NULL, 'member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 0, 1, 1, 1, 0, 0, 0, 7, 2, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 04:07:49', '2025-08-13 01:02:48'),
(8, NULL, 'تسجيل الاشتراك', 'REGISTER', NULL, NULL, NULL, NULL, 'register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 0, 1, 1, 1, 0, 0, 0, 8, 2, 0, 1, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:13:22'),
(8, NULL, 'REGISTER', 'REGISTER', NULL, NULL, NULL, NULL, 'register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 0, 1, 1, 1, 0, 0, 0, 8, 2, 0, 1, 0, NULL, NULL, 'en', 0, NULL, '2025-09-05 21:17:55'),
(8, NULL, 'ลงทะเบียน', 'REGISTER', NULL, '', NULL, NULL, 'register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 8, 0, 1, 1, 1, 0, 0, 0, 8, 2, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-11 03:18:30', '2025-08-13 01:08:30'),
(9, NULL, 'تسجيل دخول', 'Sign In', NULL, NULL, NULL, NULL, 'register/sign in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/login', 8, 8, 1, 1, 1, 1, 0, 0, 0, 9, 1, 0, 0, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:07:49'),
(9, NULL, 'Sign In', 'Sign In', NULL, NULL, NULL, NULL, 'register/sign in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/login', 8, 8, 1, 1, 1, 1, 0, 0, 0, 9, 1, 0, 0, 0, NULL, NULL, 'en', 0, NULL, '2025-09-05 21:20:04'),
(9, NULL, 'เข้าสู่ระบบ', 'Sign In', NULL, '', NULL, NULL, 'register/sign in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/login', 8, 8, 1, 1, 1, 1, 0, 0, 0, 9, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-11 03:19:17', '2025-08-13 00:26:22'),
(12, NULL, 'تسجيل الاشتراك', 'Register', NULL, NULL, NULL, NULL, 'register/register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/ar/register', 8, 8, 1, 1, 1, 1, 0, 0, 0, 10, 1, 0, 0, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-05 21:07:33'),
(12, NULL, 'Register', 'Register', NULL, NULL, NULL, NULL, 'register/register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/register', 8, 8, 1, 1, 1, 1, 0, 0, 0, 10, 1, 0, 0, 0, NULL, NULL, 'en', 0, NULL, '2025-08-26 03:19:56'),
(12, NULL, 'ลงทะเบียน', 'Register', NULL, '', NULL, NULL, 'register/register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/register', 8, 8, 1, 1, 1, 1, 0, 0, 0, 10, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-11 03:20:23', '2025-08-13 01:08:39'),
(13, NULL, 'حساب تعريفي', 'Profile', NULL, NULL, NULL, NULL, 'member/Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar/profile', 7, 7, 1, 1, 1, 1, 0, 0, 0, 11, 1, 0, 0, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-19 00:03:30'),
(13, NULL, 'Profile', 'Profile', NULL, NULL, NULL, NULL, 'member/Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en/profile', 7, 7, 1, 1, 1, 1, 0, 0, 0, 11, 1, 0, 0, 0, NULL, NULL, 'en', 0, NULL, '2025-09-05 21:16:03'),
(13, NULL, 'โปรไฟล์', 'Profile', NULL, '', NULL, NULL, 'member/Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'th/profile', 7, 7, 1, 1, 1, 1, 0, 0, 0, 11, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-13 02:53:37', '2025-08-13 02:55:28'),
(14, NULL, 'تسجيل الخروج', 'Sign out', NULL, NULL, NULL, NULL, 'member/sign out', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar/logout', 7, 7, 1, 1, 1, 1, 0, 0, 0, 12, 1, 0, 0, 0, NULL, NULL, 'ar', 0, NULL, '2025-09-19 00:03:46'),
(14, NULL, 'Sign out', 'Sign out', NULL, NULL, NULL, NULL, 'member/sign out', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en/logout', 7, 7, 1, 1, 1, 1, 0, 0, 0, 12, 1, 0, 0, 0, NULL, NULL, 'en', 0, NULL, '2025-09-05 21:16:18'),
(14, NULL, 'ออกจากระบบ', 'Sign out', NULL, '', NULL, NULL, 'member/sign out', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'th/logout', 7, 7, 1, 1, 1, 1, 0, 0, 0, 12, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-13 02:54:50', '2025-08-13 02:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `countries_configs`
--

CREATE TABLE `countries_configs` (
  `id` bigint(20) NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `english` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thai` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_availables`
--

CREATE TABLE `language_availables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `abbv_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaults` tinyint(1) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `param` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_control` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(37, 'Register_Text_Heading5', '\"ข้อมูลส่วนบุคคลของคุณมีความสำคัญต่อเรา เราต้องการข้อมูลของคุณเพื่อการประมวลผลและปรับปรุงบริการของเราเท่านั้', 'th', '8', '2025-09-10 00:51:09', '2025-11-06 01:05:12'),
(38, 'Register_Text_Heading5', '\"Your personal information is important to us. We need your information solely for processing and improving the services we provide. Please give your consent. If you agree, you accept the terms of use in accordance with Thailand\'s PDPA regulations. Read the terms of our privacy policy.\"', 'en', '8', '2025-09-10 00:51:09', '2025-11-06 01:05:12'),
(39, 'Register_Text_Heading5', '\"معلوماتكم الشخصية مهمة لنا. نحتاج معلوماتكم فقط  لاكمال وتحسين الخدمات التي نوفرها. الرجاء اعطاءنا الموافقة اذا كنت موافقا على شروط العمل وفقا لاحكام وشروط سياسة البيانات الشخصية في  تايلاند. اقرأ احكام سياسة الخصوصية .\"', 'ar', '8', '2025-09-10 00:51:09', '2025-11-06 01:05:13'),
(40, 'Register_Select_Country', 'กรุณาเลือกประเทศ', 'th', '8', '2025-09-10 01:08:14', '2025-09-10 01:08:14'),
(41, 'Register_Select_Country', 'Please select a country', 'en', '8', '2025-09-10 01:08:14', '2025-09-10 01:08:14'),
(42, 'Register_Select_Country', 'الرجاء اختيار البلد', 'ar', '8', '2025-09-10 01:08:14', '2025-09-10 01:08:14'),
(43, 'Register_Text_ACCEPT', 'ยอมรับ', 'th', '8', '2025-09-10 01:20:00', '2025-09-24 02:36:09'),
(44, 'Register_Text_ACCEPT', 'ACCEPT', 'en', '8', '2025-09-10 01:20:00', '2025-09-24 02:36:09'),
(45, 'Register_Text_ACCEPT', 'يقبل', 'ar', '8', '2025-09-10 01:20:00', '2025-09-24 02:36:09'),
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
(139, 'Product_text2', 'วิดีโอ', 'th', '3', '2025-09-19 07:45:59', '2025-09-24 02:04:29'),
(140, 'Product_text2', 'Video', 'en', '3', '2025-09-19 07:46:01', '2025-09-24 02:04:29'),
(141, 'Product_text2', 'فيديو', 'ar', '3', '2025-09-19 07:46:02', '2025-09-24 02:04:29'),
(142, 'Product_text3', 'ดาวน์โหลดเอกสาร', 'th', '3', '2025-09-19 07:46:02', '2025-09-29 20:24:49'),
(143, 'Product_text3', 'PDF', 'en', '3', '2025-09-19 07:46:03', '2025-09-29 20:24:49'),
(144, 'Product_text3', 'PDF', 'ar', '3', '2025-09-19 07:46:03', '2025-09-29 20:24:49'),
(145, 'Product_text4', 'ลักษณะพืช', 'th', '3', '2025-09-19 07:46:11', '2025-09-24 02:26:04'),
(146, 'Product_text4', 'PLANT', 'en', '3', '2025-09-19 07:46:13', '2025-09-24 02:26:04'),
(147, 'Product_text4', 'نبات', 'ar', '3', '2025-09-19 07:46:14', '2025-09-24 02:26:04'),
(148, 'Product_text5', 'ลักษณะผล', 'th', '3', '2025-09-19 07:46:16', '2025-09-24 02:26:10'),
(149, 'Product_text5', 'FRUIT', 'en', '3', '2025-09-19 07:46:18', '2025-09-24 02:26:11'),
(150, 'Product_text5', 'فاكهة', 'ar', '3', '2025-09-19 07:46:19', '2025-09-24 02:26:11'),
(151, 'Product_text_TASTE', 'รสชาติ', 'th', '3', '2025-09-19 07:46:21', '2025-09-19 07:46:21'),
(152, 'Product_text_TASTE', 'TASTE', 'en', '3', '2025-09-19 07:46:22', '2025-09-19 07:46:23'),
(153, 'Product_text_TASTE', 'ذوق', 'ar', '3', '2025-09-19 07:46:24', '2025-09-19 07:46:25'),
(154, 'Product_text_DISEASE', 'โรคพืช', 'th', '3', '2025-09-19 07:46:26', '2025-09-24 02:26:20'),
(155, 'Product_text_DISEASE', 'DISEASE', 'en', '3', '2025-09-19 07:46:27', '2025-09-24 02:26:20'),
(156, 'Product_text_DISEASE', 'مرض', 'ar', '3', '2025-09-19 07:46:29', '2025-09-24 02:26:20'),
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
(181, 'Register_Placeholder_Telephone Number', 'กรุณากรอกหมายเลขโทรศัพท์ของคุณ', 'th', '8', '2025-09-21 21:49:52', '2025-09-29 20:34:37'),
(182, 'Register_Placeholder_Telephone Number', 'Please enter your phone number', 'en', '8', '2025-09-21 21:49:52', '2025-09-29 20:34:37'),
(183, 'Register_Placeholder_Telephone Number', 'الرجاء إدخال رقم هاتفك، على سبيل المثال .', 'ar', '8', '2025-09-21 21:49:52', '2025-09-29 20:34:37'),
(184, 'Register_Placeholder_Email', 'กรุณากรอกที่อยู่อีเมลของคุณ', 'th', '8', '2025-09-21 21:51:16', '2025-09-29 20:35:47'),
(185, 'Register_Placeholder_Email', 'Please enter your email address', 'en', '8', '2025-09-21 21:51:16', '2025-09-29 20:35:47'),
(186, 'Register_Placeholder_Email', 'الرجاء إدخال عنوان بريدك الإلكتروني على سبيل المثال', 'ar', '8', '2025-09-21 21:51:16', '2025-09-29 20:35:48'),
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
(223, 'PRODUCT_head1', 'ผลิตภัณฑ์', 'th', '3', '2025-09-21 23:52:59', '2025-09-24 02:03:17'),
(224, 'PRODUCT_head1', 'PRODUCT CROP', 'en', '3', '2025-09-21 23:52:59', '2025-09-24 02:03:17'),
(225, 'PRODUCT_head1', 'محصول المنتج', 'ar', '3', '2025-09-21 23:52:59', '2025-09-24 02:03:17'),
(226, 'Popup_ACPPECT', 'ยอมรับ', 'th', '0', '2025-09-22 00:27:24', '2025-09-24 02:38:51'),
(227, 'Popup_ACPPECT', 'ACPPECT', 'en', '0', '2025-09-22 00:27:24', '2025-09-24 02:38:52'),
(228, 'Popup_ACPPECT', 'يقبل', 'ar', '0', '2025-09-22 00:27:24', '2025-09-24 02:38:52'),
(229, 'Contact_placeholder_name', 'กรอกชื่อของคุณ', 'th', '6', '2025-09-22 09:19:57', '2025-11-12 00:01:29'),
(230, 'Contact_placeholder_name', 'Enter your name', 'en', '6', '2025-09-22 09:21:04', '2025-11-12 00:01:29'),
(231, 'Contact_placeholder_name', 'أدخل اسمك', 'ar', '6', '2025-09-22 09:21:10', '2025-11-12 00:01:29'),
(232, 'Contact_placeholder_email', 'กรอกอีเมลของคุณ', 'th', '6', '2025-09-22 09:21:15', '2025-09-22 02:38:08'),
(233, 'Contact_placeholder_email', 'Enter your email', 'en', '6', '2025-09-22 09:21:19', '2025-09-22 02:38:08'),
(234, 'Contact_placeholder_email', 'أدخل بريدك الإلكتروني', 'ar', '6', '2025-09-22 09:21:23', '2025-09-22 02:38:08'),
(235, 'Contact_placeholder_phone', 'กรอกเบอร์โทรศัพท์ของคุณ', 'th', '6', '2025-09-22 02:22:16', '2025-09-22 02:40:21'),
(236, 'Contact_placeholder_phone', 'Enter your phone number', 'en', '6', '2025-09-22 02:22:16', '2025-09-22 02:40:21'),
(237, 'Contact_placeholder_phone', 'أدخل رقم هاتفك', 'ar', '6', '2025-09-22 02:22:16', '2025-09-22 02:40:21'),
(238, 'Contact_placeholder_message', 'เขียนข้อความของคุณที่นี่', 'th', '6', '2025-09-22 02:22:51', '2025-09-22 02:22:51'),
(239, 'Contact_placeholder_message', 'Write your message here', 'en', '6', '2025-09-22 02:22:51', '2025-09-22 02:22:51'),
(240, 'Contact_placeholder_message', 'اكتب رسالتك هنا', 'ar', '6', '2025-09-22 02:22:51', '2025-09-22 02:22:51'),
(241, 'Register_Text_Other', 'อื่นๆ (โปรดระบุ)', 'th', '8', '2025-09-22 03:25:54', '2025-09-22 03:25:54'),
(242, 'Register_Text_Other', 'Other (please specify)', 'en', '8', '2025-09-22 03:25:54', '2025-09-22 03:25:54'),
(243, 'Register_Text_Other', 'أخرى (يرجى التحديد)', 'ar', '8', '2025-09-22 03:25:54', '2025-09-22 03:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `leave_messages`
--

CREATE TABLE `leave_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `favorite` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'th',
  `defaults` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_messages`
--

INSERT INTO `leave_messages` (`id`, `fullname`, `email`, `phone_number`, `topic`, `message`, `status`, `favorite`, `language`, `defaults`, `created_at`, `updated_at`) VALUES
(1, 'จาตุรนต์', 'parklovepark112@gmail.com', '0988465760', NULL, 'xxzzz', 'new', 0, 'th', 1, '2025-08-19 20:58:52', '2025-08-19 20:58:52'),
(2, 'จาตุรนต์', 'parklovepark112@gmail.com', '0988465760', NULL, 'ggg', 'new', 0, 'th', 1, '2025-08-23 01:56:03', '2025-08-23 01:56:03'),
(3, 'จาตุรนต์', 'parklovepark112@gmail.com', '0988465760', NULL, 'daqq', 'new', 0, 'th', 1, '2025-08-23 02:11:45', '2025-08-23 02:11:45'),
(4, 'ta', 'ta@gmail.com', '0237473423', NULL, 'wdwd', 'new', 0, 'th', 1, '2025-09-04 02:46:41', '2025-09-04 02:46:41'),
(5, 'wdwd', 'ta@gmail.com', 'wwd', NULL, 'wdwd', 'new', 0, 'en', 1, '2025-09-05 21:21:49', '2025-09-05 21:21:49'),
(6, 'ABID SABI', 'abidsabi@hotmail.com', '00970599771968', NULL, 'Dear Sir / Madame \n\nWe are a Palestinian company who is interested in the seeds you are producing and willing to co-operate with you to distribute your seeds in Palestine. \n\nRegards', 'new', 0, 'th', 1, '2025-09-06 02:34:53', '2025-09-06 02:34:53'),
(7, 'test', 'nunta1613@gmail.com', '0123456789', NULL, 'test', 'new', 0, 'en', 1, '2025-09-08 21:34:51', '2025-09-08 21:34:51'),
(8, 'abid', 'abidsabi@hotmail.com', '00970599771968', NULL, 'Dear Sir / Madame\nWe are a Palestinian company who is interested in the seeds you are producing and looking forward to co-operating with you to make these seeds available to the Palestinian farmers.\n\nRegards,\nAbid Sabi', 'new', 0, 'th', 1, '2025-09-13 03:32:21', '2025-09-13 03:32:21'),
(9, 'Abid Sabi', 'abidsabi@hotmail.com', '00970599771968', NULL, 'Dear Sir / Madame\n\nWe are a Palestinian company who is interested in the seeds you are producing and willing to cooperate with you to make these seeds available the Palestinian farmers.\n\nRegards', 'new', 0, 'en', 1, '2025-09-22 01:07:12', '2025-09-22 01:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `member_accounts`
--

CREATE TABLE `member_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `profiles_id` int(11) DEFAULT NULL,
  `member_status` tinyint(1) NOT NULL DEFAULT '0',
  `member_verify_at` datetime DEFAULT NULL,
  `member_expire_at` datetime DEFAULT NULL,
  `member_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apple_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_accounts`
--

INSERT INTO `member_accounts` (`id`, `users_id`, `profiles_id`, `member_status`, `member_verify_at`, `member_expire_at`, `member_note`, `created_at`, `updated_at`, `facebook_id`, `google_id`, `line_id`, `apple_id`) VALUES
(7, 20, 9, 1, '2025-08-22 07:17:05', '2025-11-30 07:17:05', 'active', '2025-08-22 00:16:33', '2025-08-22 00:17:05', NULL, NULL, NULL, NULL),
(33, 66, 35, 1, '2025-09-08 04:10:00', '2025-12-17 04:10:00', 'active', '2025-09-07 21:07:33', '2025-09-07 21:10:00', NULL, NULL, NULL, NULL),
(34, 68, 36, 1, '2025-09-13 02:55:23', '2027-01-26 02:55:23', 'active', '2025-09-12 19:54:32', '2025-09-12 19:55:23', NULL, NULL, NULL, NULL),
(35, 69, 37, 1, '2025-09-15 09:47:20', '2025-11-19 09:32:03', 'active', '2025-09-15 02:41:01', '2025-10-20 02:32:03', NULL, NULL, NULL, NULL),
(36, 72, 38, 0, NULL, NULL, NULL, '2025-09-16 04:21:40', '2025-09-16 04:21:40', NULL, NULL, NULL, NULL),
(37, 76, 39, 0, NULL, NULL, NULL, '2025-09-26 00:15:24', '2025-09-26 00:15:24', NULL, NULL, NULL, NULL),
(38, 78, 40, 0, NULL, NULL, NULL, '2025-09-26 00:21:23', '2025-09-26 00:21:23', NULL, NULL, NULL, NULL);

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
  `occupations` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(50, 34, 'Agriculture-related business', '2025-09-07 20:58:25', '2025-09-07 20:58:25'),
(51, 35, 'graf', '2025-09-07 21:07:33', '2025-09-07 21:07:33'),
(52, 36, 'Farmer', '2025-09-12 19:54:32', '2025-09-12 19:54:32'),
(53, 37, 'Seed Company', '2025-09-15 02:41:01', '2025-09-15 02:41:01'),
(54, 38, 'Seed Distributor', '2025-09-16 04:21:40', '2025-09-16 04:21:40'),
(55, 39, 'مزارع', '2025-09-26 00:15:24', '2025-09-26 00:15:24'),
(56, 40, 'مزارع', '2025-09-26 00:21:23', '2025-09-26 00:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `member_profiles`
--

CREATE TABLE `member_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profiles_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subdistrict` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` int(11) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_profiles`
--

INSERT INTO `member_profiles` (`id`, `profiles_image`, `display_name`, `first_name`, `last_name`, `phone_number`, `occupation`, `country`, `created_at`, `updated_at`, `subdistrict`, `province`, `zipcode`, `coin`, `note`) VALUES
(9, NULL, 'parktest01', 'test01', 'test01', '083-876-543200', NULL, 'thailand', '2025-08-22 00:16:33', '2025-08-28 21:36:55', NULL, NULL, NULL, 0, NULL),
(35, NULL, 'Nunta', 'Nunta', 'Nunta', '0911027209', NULL, 'thailand', '2025-09-07 21:07:32', '2025-09-07 21:07:32', NULL, NULL, NULL, 0, NULL),
(36, NULL, 'ta', 'ta', 'ta', '0999999990', NULL, 'china', '2025-09-12 19:54:32', '2025-09-12 19:54:32', NULL, NULL, NULL, 0, NULL),
(37, NULL, 'Wirawan Wongsuwan', 'wirawan', 'wongsuwan', '0953656431', NULL, 'thailand', '2025-09-15 02:41:01', '2025-09-15 02:41:01', NULL, NULL, NULL, 0, NULL),
(38, NULL, 'abidsabi', 'Abid', 'Sabi', '0599771968', NULL, 'palestine, state of', '2025-09-16 04:21:40', '2025-09-16 04:21:40', NULL, NULL, NULL, 0, NULL),
(39, NULL, 'حمزة', 'حمزة', 'معادات', '0780707091', NULL, 'kuwait', '2025-09-26 00:15:24', '2025-09-26 00:15:24', NULL, NULL, NULL, 0, NULL),
(40, NULL, 'Hamza Maadat', 'Hamza', 'Maadat', '0780707091', NULL, 'jordan', '2025-09-26 00:21:23', '2025-09-26 00:21:23', NULL, NULL, NULL, 0, NULL);

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
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('012c95c0ffd41a3f8fa27377660c6796ca7d22ae7e22658bc8846a9e5072e889177ac4f67e40565f', 67, 1, 'AuthToken', '[]', 0, '2025-09-12 02:43:55', '2025-09-12 02:43:55', '2026-09-12 09:43:55'),
('0265fd5d9dd1cc5b1d665fa6afc76a05b0e62ca5697297b9d665567eff93e69b36be4d5638aa368b', 71, 1, 'AuthToken', '[]', 0, '2025-09-16 01:54:38', '2025-09-16 01:54:38', '2026-09-16 08:54:38'),
('0eca17cee676c1f1211ede401eb0c52bd99475cf7caab7c7ae4f6ee694314316574403b5ce25b072', 1, 1, 'AuthToken', '[]', 0, '2025-09-08 19:29:30', '2025-09-08 19:29:30', '2026-09-09 02:29:30'),
('0fd952bfacd59cfa7cc81fc9d9ddd46543386ca1747073d7e7f72c2d7ea77d2b9647f9488ed17d82', 1, 1, 'AuthToken', '[]', 0, '2025-09-02 20:52:22', '2025-09-02 20:52:22', '2026-09-03 03:52:22'),
('1220141eda49c4514147352b42e04e4a50756b4c80fac446ecbe98dd9d4ba5332d1169b52ba268b9', 37, 1, 'AuthToken', '[]', 0, '2025-09-03 21:13:47', '2025-09-03 21:13:47', '2026-09-04 04:13:47'),
('2d39dda6dbad327eae4ab9c3f05a0f7a9f54133e694282649aff0a1096e6f0634f7c02e36de24825', 37, 1, 'AuthToken', '[]', 0, '2025-09-19 20:34:59', '2025-09-19 20:34:59', '2026-09-20 03:34:59'),
('3508bea0aed3e476eb2da158e1bbfe175a2979940cee48e0cac78a10db74f09b8baf92ab7e7aab79', 71, 1, 'AuthToken', '[]', 0, '2025-10-20 02:31:42', '2025-10-20 02:31:42', '2026-10-20 09:31:42'),
('37f7f5ca1ef4cf4ebb8361bb005e1a021cd183ee04f0bf4a8aa2bde4bc26d23ee6ec0cd4e85f1e43', 1, 1, 'AuthToken', '[]', 0, '2025-09-02 20:54:42', '2025-09-02 20:54:42', '2026-09-03 03:54:42'),
('3c5d4033470baa3410c9aeff27e5f93c69962e90bedd6dfaf88217fa43302e7969d593b387230e70', 1, 1, 'AuthToken', '[]', 0, '2025-09-02 21:13:11', '2025-09-02 21:13:11', '2026-09-03 04:13:11'),
('46f4f09a1371da2692b52bce90fe3c7480820900b91f878e2268dbacbe6382c6e0ca19fea3218111', 67, 1, 'AuthToken', '[]', 0, '2025-09-12 02:09:54', '2025-09-12 02:09:55', '2026-09-12 09:09:54'),
('4c4c010ab47727953d6fb0bb96c4417486c0c303936bdbb595899a7c3e8cbcfbde9751919e47e9d5', 37, 1, 'AuthToken', '[]', 0, '2025-09-16 01:51:49', '2025-09-16 01:51:49', '2026-09-16 08:51:49'),
('63e15d63380b2ec38efe42391e16d377b81e2d6605b90658b960df3b2b07971fb0c499269bc8287e', 37, 1, 'AuthToken', '[]', 0, '2025-11-06 03:08:26', '2025-11-06 03:08:26', '2026-11-06 10:08:26'),
('657248456ce8d7ed91d5022f647abf73c99592e5ef3e6ca85fc4e59737e829a568f740da6a45ec63', 1, 1, 'AuthToken', '[]', 0, '2025-07-30 21:18:29', '2025-07-30 21:18:30', '2026-07-31 04:18:29'),
('77228cc857f8e02c7ae703a5aee32b608e81841918060c84a8570e8e3ff2396ae92cad21277f839d', 1, 1, 'AuthToken', '[]', 0, '2025-09-16 02:50:05', '2025-09-16 02:50:05', '2026-09-16 09:50:05'),
('7a96bdbff60cf1471dd8cd87428de130220552d2cae93971efbcddd80f5223741f046b1f66eb7c10', 1, 1, 'AuthToken', '[]', 0, '2025-09-16 01:51:36', '2025-09-16 01:51:36', '2026-09-16 08:51:36'),
('7e554e8b266ba06b32fc2e9c48203220e85b64dac6aa9e5625ac5d7c10bd56193b7491b3afd882d4', 2, 1, 'AuthToken', '[]', 0, '2025-07-30 21:03:26', '2025-07-30 21:03:26', '2026-07-31 04:03:26'),
('81474d485353ccb5875855dff41827351f88f9327d5bb8b40b1c2dc9fe8e0ceb84ca5c21c442d316', 1, 1, 'AuthToken', '[]', 0, '2025-09-03 18:56:50', '2025-09-03 18:56:50', '2026-09-04 01:56:50'),
('8a22aaf5a87bd6558f81aa305ce53fd107c9655f81ae4a74df30f5bb74eda16064160ab83aafd099', 1, 1, 'AuthToken', '[]', 0, '2025-09-03 20:18:13', '2025-09-03 20:18:13', '2026-09-04 03:18:13'),
('8e748ff7af505be738ba7c4153231458cc2533ed68824cac9d56f08031638076c46e567d863db8e2', 37, 1, 'AuthToken', '[]', 0, '2025-09-12 01:40:26', '2025-09-12 01:40:26', '2026-09-12 08:40:26'),
('8f1f9ead942975f73e6915f388731300c247fcdf5cdc1194da989ea4c44b23df2d0c77ffd62b5a3a', 1, 1, 'AuthToken', '[]', 0, '2025-09-02 20:25:46', '2025-09-02 20:25:46', '2026-09-03 03:25:46'),
('95817f08f29856673eba90d09053cb1e8070a4fd6f65f115e5d1fb6eee335c274be51c811dbb324c', 37, 1, 'AuthToken', '[]', 0, '2025-09-29 20:15:59', '2025-09-29 20:15:59', '2026-09-30 03:15:59'),
('a3c2bde5bdd2794508d6cf80965efe3c085e2a27becf68141ff86b620b0f6fce67592916c813261d', 1, 1, 'AuthToken', '[]', 0, '2025-09-03 19:13:11', '2025-09-03 19:13:11', '2026-09-04 02:13:11'),
('a81d38d3d5298bc7e73fdcc88c756c447e93f5fc4b7436e56d31b0e3ae15bfacd604a51bd5239bf6', 1, 1, 'AuthToken', '[]', 0, '2025-08-10 20:08:11', '2025-08-10 20:08:12', '2026-08-11 03:08:11'),
('a9bd2db130094a187e714feeeb41a3523265d90b08f9db2a871a91db10953f91f49daa0360e1a6ea', 1, 1, 'AuthToken', '[]', 0, '2025-09-09 01:29:31', '2025-09-09 01:29:31', '2026-09-09 08:29:31'),
('aa80edbb3b4d07bf8d91bed8708553ba73b24249d703e457a57c9535100e7501fc8cc4933f2fc0c1', 67, 1, 'AuthToken', '[]', 0, '2025-09-14 21:24:00', '2025-09-14 21:24:00', '2026-09-15 04:24:00'),
('ad2fb2e5ec4761a731a7ae3f634a7e54c56f66c381d612614e3929108f62139e0a484700fbb2af97', 67, 1, 'AuthToken', '[]', 0, '2025-09-15 18:38:16', '2025-09-15 18:38:16', '2026-09-16 01:38:16'),
('ae597ea19eaff51ae8fef1c357b93a054f9b0119d5b3534bf6e965da047086323443b2aeeceb4461', 1, 1, 'AuthToken', '[]', 0, '2025-09-05 23:19:10', '2025-09-05 23:19:11', '2026-09-06 06:19:10'),
('ae8838c6e72cf11b7796ef7e2eae0d5770b848fb7e1f6064e678ba35f3f1a70c6c812dd0e4b2c05f', 1, 1, 'AuthToken', '[]', 0, '2025-09-04 02:20:03', '2025-09-04 02:20:03', '2026-09-04 09:20:03'),
('b1f4ba7fe372a97d63472903643a41af100689642a96f4680c0189de3bfba483703a2af915a54490', 1, 1, 'AuthToken', '[]', 0, '2025-09-02 21:12:41', '2025-09-02 21:12:41', '2026-09-03 04:12:41'),
('b64c42c7a2b96658c006c22c6a5884640a1e2f2193250b1f0f121fb4c56927edf601bffeed770069', 1, 1, 'AuthToken', '[]', 0, '2025-09-11 02:57:39', '2025-09-11 02:57:40', '2026-09-11 09:57:39'),
('b68b595ed58bb82b4e6e5f95e7977c0142dd2b7c39bf761e3c2e8675e702a188185687086f179278', 1, 1, 'AuthToken', '[]', 0, '2025-09-02 19:52:40', '2025-09-02 19:52:41', '2026-09-03 02:52:40'),
('baa1aa27e43b5a0a5f597d9851317bec2ba224653956721a83553b9aa8d0f25cd36a33c68e65174a', 1, 1, 'AuthToken', '[]', 0, '2025-09-01 23:23:15', '2025-09-01 23:23:15', '2026-09-02 06:23:15'),
('c43d99bbb722e8ee7a9c2a59dc6fdc2c29b846daa441a3ab09e04ee567bc009784e2aad8f4d50f94', 1, 1, 'AuthToken', '[]', 0, '2025-09-12 02:42:40', '2025-09-12 02:42:40', '2026-09-12 09:42:40'),
('e12829dd6ebbf9e9aeddd909f0ad589c02ed4e5b3d1fee3744a9b72b6e9717200ea319b354a8cefa', 1, 1, 'AuthToken', '[]', 0, '2025-08-03 20:18:38', '2025-08-03 20:18:38', '2026-08-04 03:18:38'),
('e3f5ebcdb10635c788b544b01661cdd107d71a42fc738d15203aad6013aa1309b3b0bd538d9ada43', 1, 1, 'AuthToken', '[]', 0, '2025-07-31 00:26:32', '2025-07-31 00:26:32', '2026-07-31 07:26:32'),
('ebc30346020deaf4bf23ed3e1e51a58402b168a6501e18cd73ce35ec1115457a9c5a14ab2233108a', 1, 1, 'AuthToken', '[]', 0, '2025-09-11 21:14:55', '2025-09-11 21:14:56', '2026-09-12 04:14:55'),
('f938fbb07fdbba8cdfd59348a3610ba38c8861eb62bd7d2978726002ed9512f5127255bbfa868043', 1, 1, 'AuthToken', '[]', 0, '2025-09-02 20:54:07', '2025-09-02 20:54:07', '2026-09-03 03:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occupations_configs`
--

CREATE TABLE `occupations_configs` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdistrict` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moredetails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images_card_people` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images_slip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` int(11) NOT NULL COMMENT '''1'' ปลายทาง , ''2'' โอนชำระ	',
  `order_date` datetime DEFAULT NULL COMMENT 'วันที่สั่งซื้อ',
  `shipping_date` datetime DEFAULT NULL COMMENT 'วันที่จัดส่ง',
  `order_carrier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ประเภทขนส่ง',
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'เลขติดตามพัสดุ',
  `total_price` double(8,2) NOT NULL COMMENT 'ราคารวม',
  `total_coin` double(8,2) NOT NULL COMMENT 'coinรวม',
  `last_coin` double(8,2) NOT NULL COMMENT 'coin ล่าสุด',
  `shipping_cost` double(8,2) DEFAULT NULL,
  `coin_use` int(11) NOT NULL DEFAULT '0',
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
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_coin` int(11) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('parklovepark112@gmail.com', '7e3a65b32d1c4b5660c26fd15c8dbfcd', '2025-09-16 00:45:20');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `freetag` text COLLATE utf8mb4_unicode_ci,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_url` text COLLATE utf8mb4_unicode_ci,
  `thumbnail_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `iframe` text COLLATE utf8mb4_unicode_ci,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `redirect` text COLLATE utf8mb4_unicode_ci,
  `link_facebook` text COLLATE utf8mb4_unicode_ci,
  `link_twitter` text COLLATE utf8mb4_unicode_ci,
  `link_instagram` text COLLATE utf8mb4_unicode_ci,
  `link_youtube` text COLLATE utf8mb4_unicode_ci,
  `link_line` text COLLATE utf8mb4_unicode_ci,
  `status_display` tinyint(1) NOT NULL DEFAULT '0',
  `pin` tinyint(1) NOT NULL DEFAULT '0',
  `defaults` tinyint(1) NOT NULL DEFAULT '0',
  `post_view` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '1',
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ถ้าเป็น true ลบได้เฉพาะ SuperAdmin',
  `is_maincontent` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ถ้าเป็น false = dynamic content',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_begin_display` datetime DEFAULT NULL,
  `date_end_display` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `keyword`, `description`, `freetag`, `h1`, `h2`, `short_url`, `thumbnail_title`, `thumbnail_link`, `thumbnail_size`, `thumbnail_alt`, `topic`, `content`, `iframe`, `category`, `tags`, `redirect`, `link_facebook`, `link_twitter`, `link_instagram`, `link_youtube`, `link_line`, `status_display`, `pin`, `defaults`, `post_view`, `priority`, `meta_tag`, `meta_title`, `meta_description`, `allow_delete`, `is_maincontent`, `language`, `date_begin_display`, `date_end_display`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'الصفحة الرئيسي', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:20px\"><span style=\"color:#098c46\"><span style=\"font-family:\'Times New Roman\',serif\">طوّرت شركة &quot;جرين جلوبال سيد&quot; استراتيجية مستدامة طويلة الأمد لأبحاث البذور الهجينة، ويتمثل تطويرنا الرئيسي في التكيف الحراري أو التكيف الواسع لبذور البذور الهجينة، وذلك لتوفير أصناف هجينة جيدة تتكيف مع ظاهرة الاحتباس الحراري للمزارعين، مما يُمكّنهم من إنتاج محصول جيد وطعم جيد للمستهلك. وهذا ما نركز عليه:<br />\r\n&quot;نبحث ونطور بذورًا هجينة عالية الغلة وذات مذاق جيد، تتكيف مع تغير المناخ الحالي&quot;<br />\r\n&quot;ننتج بذورًا عالية الجودة لدعم المزارعين&quot;<br />\r\nلا يقتصر الأمر على رسالتنا فحسب، بل نقود الشركة أيضًا من خلال قيمنا الأساسية. نعمل بشكل أفضل على خمس قيم أساسية، وهي: العمل الجماعي، والثقة، والشفافية، والتعاون، والتسامح، لننمو معًا مع شريك تجاري.<br />\r\nتركز شركة &quot;جرين جلوبال سيدز&quot; على العمل بشكل وثيق مع مناطق آسيا، والشرق الأوسط، وأفريقيا، لدعم أعمالنا وشراكاتنا في هذه المناطق.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>', NULL, ',1,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'ar', NULL, NULL, NULL, '2025-11-04 20:09:55'),
(1, 'HOME', '“Premium seed for high yield and good taste”', NULL, 'Since 2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-size:18px\"><span style=\"color:#098c46\"><strong>The Green Global Seed company&nbsp;</strong>have been developed a long-term sustainability for the hybrids research and our main development is for heat setting adaptation or wide adaptation of the hybrids seed in order to supply the good adapted to a global warming hybrids variety to the farmers to produce a good yield and good taste product to the consumer, that are what We focus on:</span></span></p>\r\n\r\n<p><br />\r\n<em><span style=\"font-size:18px\"><span style=\"color:#098c46\">&ldquo;We research and develop hybrids for high yield and good taste good adaptation in a currently climate changed.&rdquo;</span></span></em></p>\r\n\r\n<p><br />\r\n<em><span style=\"font-size:18px\"><span style=\"color:#098c46\">&ldquo;We produce seeds with premium quality seeds to support the grower.&rdquo;</span></span></em></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:18px\"><span style=\"color:#098c46\">Not only the mission but also driving the organization with the CORE VALUE. We are working best on 5 core value that consists, Teamwork, Trust, Transparency, Collaboration and Forgiveness to be growth together with a business partner.</span></span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:18px\"><span style=\"color:#098c46\">The Green Global Seeds company focus to work very closely with Asia, Medel East and Africa regions in order to support the business together with the partnership in these area.&nbsp;</span></span></p>', NULL, ',1,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, '2025-08-09 02:19:13', '2025-10-28 00:01:28'),
(1, 'HOME', 'พันธกิจของเรา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#098c46\"><strong>&nbsp; &nbsp; &nbsp;บริษัท กรีน โกลบอล ซีดส์ จำกัด</strong> ได้พัฒนาสายพันธุ์ลูกผสมแบบยั่งยืน โดยสายพันธุ์ที่เรามุ่งพัฒนา&nbsp;คือ เน้นปรับตัวให้เข้ากับสภาพอากาศร้อนได้ดี&nbsp;เพื่อส่งเสริมให้พืชมีความสามารถในการปรับตัวในสภาวะโลกร้อน ทั้งนี้เพื่อสนับสนุนให้เกษตรกรได้ปลูกพืชที่ให้ผลผลิตสูง รสชาติดี&nbsp;เพื่อส่งมอบไปยังผู้บริโภค&nbsp;โดยสิ่งที่บริษัทมุ่งเน้นมีดังนี้</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#098c46\"><em>&nbsp; &nbsp; &nbsp; &ldquo;มุ่งเน้นการพัฒนาสายพันธุ์ลูกผสมที่สามารถให้ผลผลิตสูง รสชาติดี รวมถึงสามารถปรับตัวได้แม้ในสภาวะอากาศเปลี่ยนแปลง&rdquo;</em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#098c46\"><em>&nbsp; &nbsp; &nbsp; &ldquo;มุ่งเน้นผลิตเมล็ดพันธุ์คุณภาพระดับดีเยี่ยมเพื่อสนับสนุนเกษตรกร&rdquo;</em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#098c46\">&nbsp; &nbsp; &nbsp;เพื่อให้พันธกิจดำเนินไปได้ด้วยดีเราจึงขับเคลื่อนองค์กรด้วย &ldquo;ค่านิยมขององค์กร&rdquo; ซึ่งประกอบไปด้วย 5 ค่านิยม&nbsp;คือ การทำงานเป็นทีม, การไว้วางใจซึ่งกันและกัน, ความโปร่งใสในการทำงาน, ความร่วมมือเป็นอันหนึ่งอันเดียวกัน และการรู้จักให้อภัยซึ่งกันและกัน ซึ่งค่านิยมเหล่านี้จะขับเคลื่อนให้เราเติบโตไปพร้อมกับคู่ค้าของเราต่อไป</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#098c46\">ขอบเขตที่บริษัท กรีน โกลบอล ซีดส์ จำกัด มุ่งเน้น&nbsp;คือ&nbsp;การทำธุกิจกับคู่ค้าที่อยู่ในส่วนของภูมิภาคเอเชีย, ตะวันออกกลาง&nbsp;และแถบแอฟริกา</span></span></span></p>', NULL, ',1,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-09 02:19:13', '2025-10-28 00:09:27'),
(3, 'VISION', 'الرؤية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:20px\"><span style=\"color:#098c46\"><span style=\"font-family:\'Times New Roman\',serif\">يتزايد عدد سكان العالم يومًا بعد يوم، لا سيما في آسيا وشرق آسيا وأفريقيا، في ظل حاجة السكان المتزايدة إلى الغذاء، وتغير المناخ، والاحتباس الحراري الذي أثر على إنتاج الغذاء. وقد سعى المزارعون، الذين كانوا يمتلكون أراضيهم لإنتاج الغذاء لأسرهم، إلى تقليل استهلاك المياه للزراعة، مما قد يؤثر على نقص الغذاء في السنوات القادمة</span></span></span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:20px\"><span style=\"color:#098c46\"><span style=\"font-family:\'Times New Roman\',serif\">ستقوم شركة &quot;البذور العالمية الخضراء&quot;، من خلال شراكتها التجارية، ببحث وتطوير أنواع هجينة من البذور لتلبية احتياجات المزارعين، وجامعي الطعام، وجيل جديد من المستهلكين المهتمين بحياة صحية ومذاقًا لذيذًا. وستركز شركة &quot;البذور العالمية الخضراء&quot; على إنتاج بذور عالية الجودة ذات مذاق جيد لتحقيق الأمن الغذائي العالمي</span></span></span></p>', NULL, ',2,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'ar', NULL, NULL, NULL, '2025-11-04 20:16:14'),
(3, 'VISION', 'Our Company', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-size:18px\"><span style=\"color:#098c46\">The Global population is increasing every single day especially in Asia, Medel East, Africa regions while the population need more food, the climate is getting change done the global warming that effected to the food production. &nbsp;The farmer who was owned their area to produce the food for family, they have gotten that effected in order to reduce the water supply for the farming that might be affected to shortage food supply in coming years.&nbsp;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:#098c46\">The Green Global Seeds with the business partnership will research and develop hybrids of seeds for wide adaptability to solving the demand of the growers, the food collectors till a supermarket to a new generation of consumer who concern about a healthy life and to consumed a good taste. The Green global seeds company will focus on a &ldquo;Premium quality seeds for high yield and good taste&rdquo; for a global food security. &nbsp;</span></span></p>', NULL, ',2,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, NULL, '2025-11-11 23:59:35'),
(3, 'VISION', 'วิสัยทัศน์ของเรา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-size:18px\"><span style=\"color:#098c46\">&nbsp; &nbsp; &nbsp; &nbsp;ประชากรโลกเพิ่มขึ้นในทุกๆวันโดยเฉพาะอย่างยิ่งประชากรในแถบเอเชีย, ตะวันออกกลาง และแอฟริกา ความต้องการอาหารก็เพิ่มสูงขึ้นเช่นกัน แต่ในปัจจุบันโลกกำลังเผชิญกับสภาพอากาศที่เปลี่ยนแปลงเนื่องจากผลกระทบจากสภาวะโลกร้อนซึ่งมีผลกระทบต่อการผลิตอาหาร&nbsp;โดยเกษตรกรผู้ผลิตพืชผลทางการเกษตรได้รับผลกระทบจากความแห้งแล้งที่เกิดขึ้นส่งผลให้ผลผลิตทางการเกษตรลดลงและไม่เพียงพอต่อความต้องการของผู้บริโภค</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#098c46\">&nbsp; &nbsp; &nbsp; &nbsp;บริษัท กรีน โกลบอล ซีดส์ จำกัด และคู่ค้า&nbsp;จึงมุ่งวิจัยและพัฒนาสายพันธุ์ลูกผสมที่สามารถปรับตัวให้อยู่รอดภายใต้สภาวะการเปลี่ยนแปลงดังกล่าวและตรงตามความต้องการของเกษตรกร เพื่อให้เรามีอาหารสุขภาพสู่ท้องตลาดและส่งต่อให้ถึงมือผู้บริโภคที่ต้องการรักษาสุขภาพ&nbsp;เพื่อคุณภาพชีวิตที่ดีและได้ลิ้มรสชาติความอร่อยของผลผลิตทางการเกษตรกรที่เราตั้งใจผลิต</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#098c46\">&nbsp; &nbsp; &nbsp; &nbsp;บริษัท กรีน โกลบอล ซีดส์ จำกัด &ldquo;เราจะมุ่งเน้นการผลิตเมล็ดพันธุ์คุณภาพดีเยี่ยม&nbsp;เพื่อให้ได้ผลผลิตสูง และรสชาติดี เพื่อรักษาไว้ซึ่งแหล่งอาหารของโลกเราต่อไป&rdquo;&nbsp;</span></span></span></p>', NULL, ',2,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 2, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-14 00:24:36', '2025-11-12 00:36:59'),
(4, 'NEWSACTIVTY', 'กิจกรรมวันเด็ก ปี 2567', NULL, 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย', NULL, NULL, NULL, NULL, NULL, 'upload/2025/08/14/Rectangle169.png', NULL, NULL, NULL, '<p><span style=\"color:#2ecc71\"><span style=\"font-size:18px\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim</span></span></p>', 'ar/news-detail/4', ',4,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'ar', NULL, NULL, NULL, '2025-09-24 02:30:32'),
(4, 'NEWSACTIVTY', 'Children\'s Day activities 2024', NULL, 'The company participated in the Children\'s Day activity and gave away many prizes.', NULL, NULL, NULL, NULL, NULL, 'upload/2025/08/14/Rectangle169.png', NULL, NULL, NULL, '<p><span style=\"color:#2ecc71\"><span style=\"font-size:18px\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim</span></span></p>', 'en/news-detail/4', ',4,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, NULL, '2025-08-25 00:51:54'),
(4, 'NEWSACTIVTY', 'กิจกรรมวันเด็ก ปี 2567', NULL, 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย', NULL, NULL, NULL, NULL, NULL, 'upload/2025/08/14/Rectangle169.png', NULL, NULL, NULL, '<p><span style=\"color:#2ecc71\"><span style=\"font-size:18px\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim</span></span></p>', 'th/news-detail/4', ',4,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 3, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-14 01:39:21', '2025-08-15 01:11:25'),
(5, 'NEWSPRODUCT', 'Product news', NULL, 'Product highlights: Strong TYLCV resistance, best to high yield for hot and humidity codition.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en/news-detail/5', ',4,', NULL, 'GSR 1102', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, NULL, '2025-09-12 01:41:53'),
(5, 'NEWSPRODUCT', 'ข่าวสินค้า', NULL, 'Product highlights: Strong TYLCV resistance, best to high yield for hot and humidity codition.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'th/news-detail/5', ',4,', NULL, 'GSR 1102', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 4, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-15 00:50:52', '2025-09-15 20:37:23'),
(6, 'TERM', 'الشروط والأحكام', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>قيود الاستخدام &ndash; الشروط والأحكام</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\">: بقبول البذور المرفقة أو بفتح عبوة الشركة، يقرّ المستخدم بأنه قد قرأ وفهم الشروط والأحكام التالية، ويوافق على الالتزام بها كما هو موضح أدناه</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:22px\"><strong>الضمان وحدود المسؤولية</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\">تضمن الشركة أن البذور الموجودة في هذه العبوة تتوافق مع المواصفات والمعايير القياسية الخاصة بالشركة وبما هو مذكور على الملصق. وذلك إلى الحد المسموح به بموجب القوانين المعمول بها.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">١. تُخلي الشركة مسؤوليتها بموجب هذا عن: جميع الضمانات الصريحة أو الضمنية، بما في ذلك ضمانات قابلية التسويق والملاءمة لغرض مُحدد. لا توجد أي ضمانات أخرى، بما في ذلك ضمانات أداء المحصول أو خلوه من الأمراض (حتى لو كانت البذور منقولة)</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٢. الظروف الجوية: قد تُؤثر خبرة التربة والزراعة، بالإضافة إلى المتغيرات الأخرى، بما في ذلك الأمراض الجديدة والمتحولة والمواد الكيميائية، بشكل كبير على نجاح زراعة أي بذور. لذلك، لا يُقدم أو يُطبق أي ضمان ضد الأمراض أو الأصناف أو أداء المحصول. تقتصر مسؤولية الشركة الإجمالية فيما يتعلق بهذه البذور، مهما كانت طبيعة هذه المسؤولية، على سعر شرائها. ولن تكون الشركة مسؤولة تجاه المشتري عن أي توجيه أو خسارة أو أضرار خاصة أو عرضية أو تبعية، بغض النظر عما إذا كانت هذه الأضرار مُطالب بها بموجب عقد (بما في ذلك الإهمال أو الإخلال بالواجب القانوني) أو مُضلِّلة أو غير ذل</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٣. إشعار المطالبة: يُبلّغ عن أي مطالبة تتعلق بالضمان المنصوص عليه صراحةً في هذه الوثيقة خلال فترة زمنية معقولة من تاريخ اكتشافها. ويُعتبر الإشعار المُقدّم بعد الفترة الزمنية التي لا تستطيع فيها الشركة فحص أو فحص هذه البذور أو المحاصيل الناتجة عنها ماديًا إشعارًا غير معقول بموجب هذه الوثيقة</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٤. إخلاء مسؤولية المنتج والصنف: قد يكون للظروف الجوية، والتربة، والخبرة الزراعية، والمتغيرات الأخرى، بما في ذلك الأمراض الجديدة والمتحوّرة، والمواد الكيميائية، تأثير كبير على نجاح زراعة أي بذور. لذلك، لا يُقدّم أو يُطبّق أي ضمان ضد المرض أو الصنف أو أداء المحصول. انظر &quot;الضمان وحدود المسؤولية&quot;، القسم الفرعي ضمن الشروط والأحكام</span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:16px\">٥. مقاومة الأمراض: مقاومة عالية/قياسية: أصناف نباتية تُقيّد بشدة نمو وتطور الآفة أو العامل المُمرض المُحدّد تحت ضغط طبيعي للآفة أو العامل المُمرض، مقارنةً بالأصناف الحساسة. ومع ذلك، قد تُظهر هذه الأصناف النباتية بعض الأعراض أو التلف تحت ضغط شديد للآفة أو العامل المُمرض</span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:16px\">مقاومة متوسطة/متوسطة : أصناف نباتية تُعيق نمو وتطور الآفة أو المُمْرِض المُحدد، ولكنها قد تُظهر نطاقًا أوسع من الأعراض أو الأضرار مُقارنةً بالأصناف عالية/القياسية المقاومة. أما الأصناف النباتية متوسطة/المقاومة، فستُظهر أعراضًا أو أضرارًا أقل حدةً من الأصناف النباتية المُعرّضة عند زراعتها في ظروف بيئية مُماثلة و/أو ضغط آفات أو مُمْرِضات. قد يعتمد الأداء على الظروف البيئية المحلية</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٦. إخلاء مسؤولية بشأن الصور: تُستخدم الصور على عبواتنا وموقعنا الإلكتروني وجميع المواد المطبوعة لأغراض التوضيح فقط. ولا تُمثل الصنف الفعلي.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">الصور فقط لتوضيح نوع الفاكهة أو الخضراوات، مثل البطيخ أو الطماطم Green Global Seeds Co., Ltd تستخدم شركة<br />\r\nهذا لا يضمن جودة النوع أو الصنف أو أي تمثيل للمحصول الفعلي&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٧. تنزيل معلومات المنتج: بتنزيل أي معلومات عن المنتج أو مواد أو مستندات من هذا الموقع الإلكتروني، يُؤكد المستخدم أنه قد قرأ وفهم ووافق على الالتزام القانوني بالشروط والأحكام التالية<br />\r\nGreen Global Seeds Co., Ltd &nbsp;يُحظر تمامًا استخدام المواد أو إعادة إنتاجها أو توزيعها دون موافقة كتابية مسبقة من شركة</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٨. أمن البيانات والخصوصية: نظرًا لطبيعة الإنترنت، لا يمكن استبعاد خطر الاستخدام غير المصرح به، والإفصاح، واعتراض الاتصالات أو المواد التي ترسلها إلى شركة عبر الإنترنت Green Global Seeds Co, Ltd<br />\r\nعبر الإنترنت Green Global Seeds Co,Ltd يجب على المستخدمين إدراك هذه المخاطر قبل التواصل مع شركة &nbsp;<br />\r\nإضافةً إلى ذلك، لا يمكننا ضمان استمرارية توافر هذا الموقع الإلكتروني وخلوه من الأخطاء. قد يتم تعليق أو تقييد وصولك إلى الموقع الإلكتروني أحيانًا لأسباب متعددة، منها على سبيل المثال، السماح بإجراء الصيانة أو تقديم خدمات جديد</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٩. إشعار حقوق النشر: محتوى هذا الموقع الإلكتروني ملك لنا ويخضع لقوانين حقوق النشر الخاصة بالتسجيلات الإقليمية مع الاحتفاظ بجميع الحقوق. يمكنك تنزيل أو طباعة أقسام فردية من الموقع الإلكتروني للاستخدام الشخصي وللحصول على المعلومات فقط، بشرط احتفاظك بجميع حقوق النشر وإشعارات الملكية الأخرى. لا يجوز لك إعادة إنتاج (كليًا أو جزئيًا)، أو تعديل، أو فك، أو تفكيك، أو إرسال، أو استخدام أي معلومات من هذا الموقع الإلكتروني لأي غرض تجاري، دون الاتصال بنا والحصول على موافقتنا الكتابية المسبقة</span></p>\r\n\r\n<p><br />\r\n١٠.<span style=\"font-size:16px\"> القانون المعمول به: تخضع أي مطالبات قانونية أو دعاوى قضائية تتعلق بهذا الموقع الإلكتروني أو استخدام منتجاته لتفسير قوانين تايلاند فقط<br />\r\n، ونرجو منك الاطلاع عليها قبل فتح العبوة Green Global Seeds نشكرك على قراءة وفهم شروط وأحكام</span></p>\r\n\r\n<p>&nbsp;</p>', NULL, ',5,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'ar', NULL, NULL, NULL, '2025-11-12 00:56:43'),
(6, 'TERM', 'TERMS OF CONDITIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p style=\"text-align:center\"><span style=\"font-size:18px\"><strong>USE RESTRICTIONS TEMS AND CONDITION</strong></span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BY ACCEPTANCE OF SEED ACCOMPANYING OR OPENNING THE PACKAGE OF THE COMPANY USER ACKNOWLEDGE THAT USER HAS READ AND UNDERSTOOD THE FOLLOWING TERMS AND CONDITIONS AND AGREES TO BE BOUND BY TERM AS BELOW.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>WARRANTY &nbsp;AND &nbsp;LIMITATION OF &nbsp;LIABILITY</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The Company warrants that the seed in this package conforms to company&rsquo;s standard specifications and labeling. To the extent permissible under applicable law,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1. <strong>Company hereby disclaims</strong>: All express or implied warranties, including warranties of merchantability and fitness for a particular purpose. There are no other warranties, including warranties of crop performance or freedom from disease (Even if seed borne).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2. <strong>Weather Conditions</strong>: Soil and farming experience and other variants including new and mutated diseases and chemicals can have a major effect in the successful farming of any seeds. Therefore, no warranty against disease, variety or crop performance is therefore given or applied.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Company&rsquo;s total liability in relation to this seed, however such liability may arise, is &nbsp;limited in &nbsp;amount to the purchase price of the seed, Company shall not be liable to buyer for any direct, special incidental or consequential lose or damages regardless of whether such damages are claimed in contract tort (including negligence or breach of statutory duty) , and misrepresentative or otherwise.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3. <strong>Notice of Claim</strong>: Notice of any claim in connection with warranty expressly made herein shall be given within a reasonable time after discovery.<br />\r\nNotice given after the point in time in which the company cannot &nbsp;physically inspect or examine this seed or the resulting crops from this seed &nbsp;shall be deemed to not be reasonable notice hereunder.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4. <strong>Product &amp; Variety Disclaimer</strong>: Weather conditions, soil, and farming experience and other variants including new and mutated diseases and chemicals can have a major effect in the successful farming of any seeds. Therefore, no warranty against disease, variety or crop performance is therefore given or applied. See the Warranty and Limitation of Liability, subheading under the terms and conditions.</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5. <strong>Disease resistance of communication no warranty</strong>: High/standard resistance (HR): plant varieties that highly restrict the growth and development of the specified pest or pathogen under normal pest or pathogen pressure when compared to susceptible varieties. These plant varieties may, however, exhibit some symptoms or damage under heavy pest or pathogen pressure.</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Moderate/intermediate resistance (IR): plant varieties that restrict the growth and development of the specified pest or pathogen, but may exhibit a greater range of symptoms or damage compared to high/standard resistant varieties. Moderately/intermediately resistant plant varieties will still show less severe symptoms or damage than susceptible plant varieties when grown under similar environmental conditions and/or pest or pathogen pressure. Performance may depend on local envirnoment conditions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6. <strong>Picture Disclaimer</strong>: Pictures on our packaging and website and all printed material are used solely for illustrative purposes only. They make no representation of the actual variety. Green global seeds Co Ltd only use the pictures to demonstrate type of fruit or vegetable, example watermelon or tomato. This does not warrant or guarantee type variety quality or any representation of the actual crop.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7. <strong>Product information downloading</strong>: By downloading any product information, materials, or documents from this website, the user confirms that they have read, understood, and agreed to be legally bound by the following terms and conditions already.<br />\r\nUnauthorized use, reproduction, or distribution of the materials without prior written consent from Green Global seeds Co Ltd is strictly prohibited.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8. <strong>Data Security and Privacy</strong>: Due to the nature of the Internet, the risk of unauthorized use, disclosure, and interception of communications or materials you send to Green Global Seeds Co Ltd &nbsp;via the Internet can never be eliminated, and users should be aware of these risks before communicating with Green Global seeds Co Ltd via the Internet. Additionally, we cannot guarantee that the availability of this website will be uninterrupted and that transmissions will be error-free. Your access to the website may be occasionally suspended or restricted for a variety of reasons including, for example, to allow for maintenance or the introduction of new services.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9. <strong>Copyright notice</strong>: The content of this web site is the property of us and is subject to the copyright laws of regional registrations with all rights reserved. You may download or print individual sections of the web site for personal use and information only provided that you retain all copyright and other proprietary notices. You may not reproduce (in whole or in part), modify, decompile, disassemble or transmit or use for any commercial purpose whatsoever any information from this web site without contacting us and obtaining our prior written consent.</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 10. <strong>Applicable law</strong>: Any legal claims or lawsuits in conjunction with this website or its product use are subject to the interpretation of the laws of Thailand only. Thanks, you to read and understanding green global seeds terms and conditions and excepted on this before open package.</p>', NULL, ',5,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, NULL, '2025-11-04 20:04:25'),
(6, 'TERM', 'ข้อกำหนดและเงื่อนไข', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p style=\"text-align:center\"><span style=\"font-size:18px\"><strong>ข้อจำกัดการใช้ &ndash; เงื่อนไขและข้อตกลง</strong></span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; เมื่อผู้ใช้ยอมรับเมล็ดพันธุ์ที่จัดส่งมาพร้อมบรรจุภัณฑ์นี้ หรือเมื่อมีการเปิดบรรจุภัณฑ์ของบริษัท ถือว่าผู้ใช้ได้อ่านทำความเข้าใจและตกลงยอมรับข้อกำหนดและเงื่อนไขต่อไปนี้โดยสมบูรณ์ และผูกพันตามเงื่อนไขทุกประการ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>การรับประกันและข้อจำกัดความรับผิด</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; บริษัทขอรับรองว่าเมล็ดพันธุ์ที่บรรจุอยู่ในบรรจุภัณฑ์นี้เป็นไปตามมาตรฐานข้อกำหนด และการติดฉลากของบริษัท ทั้งนี้ภายใต้ขอบเขตกฎหมายที่เกี่ยวข้องอนุญาตบริษัทขอสงวนสิทธิ์ และปฏิเสธความรับผิดในกรณี ดังต่อไปนี้</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1. <strong>บริษัทไม่รับประกัน</strong>: บริษัทไม่รับประกันไม่ว่าด้วยถ้อยคำโดยชัดเจนหรือโดยนัย รวมถึงการรับประกันความเหมาะสมในการซื้อขาย และความเหมาะสมเพื่อวัตถุประสงค์เฉพาะใดๆ ทั้งสิ้น รวมทั้งไม่รับประกันผลผลิตทางการเกษตรหรือการปราศจากโรค (ไม่ว่ามีต้นกำเนิดจากเมล็ดพันธุ์หรือไม่ก็ตาม)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2. <strong>สภาพอากาศ</strong>: สภาพอากาศ ลักษณะดิน ประสบการณ์การเพาะปลูก รวมถึงปัจจัยแปรผันอื่นๆ เช่น โรคใหม่หรือโรคกลายพันธุ์ และการใช้สารเคมีอาจส่งผลกระทบต่อความสำเร็จของการเพาะปลูก บริษัทจึงไม่อาจให้คำรับรองใดๆ เกี่ยวกับการปลอดโรค ความคงที่ของสายพันธุ์ หรือผลผลิต</p>\r\n\r\n<p>ความรับผิดชอบของบริษัทที่เกี่ยวข้องกับเมล็ดพันธุ์นี้ไม่ว่าด้วยเหตุใดก็ตามจำกัดเพียงราคาซื้อขายของเมล็ดพันธุ์เท่านั้น บริษัทจะไม่รับผิดชอบต่อความเสียหายหรือความสูญเสียใดๆ ไม่ว่าทางตรง โดยบังเอิญ หรือสืบเนื่อง ไม่ว่าจะมีการเรียกร้องตามสัญญา การละเมิด (รวมถึงความประมาทเลินเล่อหรือการฝ่าฝืนหน้าที่ตามกฎหมาย) การแสดงข้อความอันเป็นเท็จ หรือด้วยเหตุอื่นใด</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3. <strong>การบอกกล่าวการเรียกร้อง</strong>: การบอกกล่าวการเรียกร้องใดๆ ที่เกี่ยวข้องกับการรับประกันซึ่งได้ระบุไว้อย่างชัดเจนในที่นี้ จะต้องมีขึ้นภายในระยะเวลาอันสมควรภายหลังจากการพบเหตุ ทั้งนี้หากมีการบอกกล่าวภายหลังจากระยะเวลาที่บริษัทไม่สามารถตรวจสอบหรือพิจารณาเมล็ดพันธุ์ดังกล่าวหรือผลผลิตที่ได้จากเมล็ดพันธุ์นั้นได้โดยตรง การบอกกล่าวดังกล่าวจะถือว่าไม่เป็นการบอกกล่าวโดยสมควรตามเงื่อนไขนี้</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4. <strong>ข้อสงวนสิทธิ์เกี่ยวกับผลิตภัณฑ์ และสายพันธุ์</strong>: สภาพอากาศ ลักษณะดิน ประสบการณ์ทางการเกษตร และปัจจัยแปรผันอื่นๆ รวมถึงโรคชนิดใหม่หรือโรคที่กลายพันธุ์ และสารเคมี อาจส่งผลกระทบต่อความสำเร็จของการเพาะปลูกเมล็ดพันธุ์ ดังนั้นบริษัทจึงไม่สามารถให้การรับประกันใดๆ เกี่ยวกับการปราศจากโรค ลักษณะพันธุ์ หรือผลผลิตทางการเกษตร ทั้งนี้โปรดดูรายละเอียดเพิ่มเติมภายใต้หัวข้อการรับประกันและข้อจำกัดความรับผิด ในหมวดเงื่อนไขและข้อตกลง</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5. <strong>การสื่อสารเรื่องความต้านทานโรคมิใช่การรับประกัน</strong>: การต้านทานโรคในระดับสูงหรือมาตรฐาน (High/Standard Resistance: HR) หมายถึง พันธุ์พืชที่สามารถจำกัดการเจริญเติบโตและการพัฒนาของศัตรูพืชหรือเชื้อโรคที่ระบุไว้ภายใต้สภาวะการรบกวนตามปกติเมื่อเปรียบเทียบกับพันธุ์ที่อ่อนแอต่อโรค อย่างไรก็ตามพันธุ์พืชดังกล่าวอาจจะแสดงอาการหรือเกิดความเสียหายได้ภายใต้สภาวะที่มีการรบกวนจากศัตรูพืชหรือเชื้อโรคอย่างรุนแรง<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; การต้านทานโรคในระดับปานกลางหรือระดับกึ่งต้านทาน: พันธุ์พืชที่มีคุณลักษณะต้านทานโรคในระดับปานกลางหรือกึ่งต้านทาน หมายถึง พันธุ์พืชที่สามารถจำกัดการเจริญเติบโตและการพัฒนาของศัตรูพืชหรือเชื้อโรคที่ระบุไว้ แต่ยังคงอาจแสดงอาการหรือเกิดความเสียหายได้ในระดับที่มากกว่าพันธุ์ที่มีความต้านทานสูงหรือมาตรฐาน ทั้งนี้พันธุ์พืชที่มีความต้านทานปานกลางหรือกึ่งต้านทานยังคงแสดงอาการหรือความเสียหายที่รุนแรงน้อยกว่าพันธุ์ที่อ่อนแอต่อโรคภายใต้สภาพแวดล้อม ศัตรูพืช หรือเชื้อโรค โดยประสิทธิภาพการต้านทานอาจขึ้นอยู่กับสภาพแวดล้อมในแต่ละพื้นที่</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6. <strong>ข้อสงวนสิทธิ์เกี่ยวกับรูปภาพ</strong>: รูปภาพที่ปรากฏบนบรรจุภัณฑ์ เว็บไซต์ และสื่อสิ่งพิมพ์ทั้งหมดของบริษัทใช้เพื่อวัตถุประสงค์ในการสาธิตประกอบเท่านั้น ไม่ได้เป็นการรับรองหรือยืนยันว่าตรงกับสายพันธุ์จริง บริษัท กรีน โกลบอล ซีดส์ จำกัด ใช้รูปภาพดังกล่าวเพื่อแสดงลักษณะผลหรือลักษณะทั่วไป เช่น แตงโมหรือมะเขือเทศ ทั้งนี้รูปภาพดังกล่าวไม่ใช่การรับประกันหรือคำรับรองใดๆ เกี่ยวกับชนิด สายพันธุ์ คุณภาพ หรือผลผลิต</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7. <strong>การดาวน์โหลดข้อมูลผลิตภัณฑ์</strong>: การดาวน์โหลดข้อมูลผลิตภัณฑ์ เอกสาร หรือวัสดุใดๆ จากเว็บไซต์นี้แสดงว่าผู้ใช้ยืนยันว่าได้อ่านทำความเข้าใจ และตกลงที่จะผูกพันตนตามเงื่อนไขและข้อตกลงที่กำหนดไว้แล้วทุกประการ ดังนั้นการนำข้อมูล วัสดุ หรือเอกสารดังกล่าวไปใช้ ทำซ้ำ หรือเผยแพร่ โดยไม่ได้รับความยินยอมเป็นลายลักษณ์อักษรล่วงหน้าจากบริษัท กรีน โกลบอล ซีดส์ จำกัด ถือเป็นการต้องห้ามโดยเด็ดขาด</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8. <strong>ความมั่นคงปลอดภัยของข้อมูลและความเป็นส่วนตัว</strong>: เนื่องจากลักษณะของเครือข่ายอินเทอร์เน็ต ความเสี่ยงจากการใช้งาน การเปิดเผย หรือการถูกดักจับข้อมูลหรือเอกสารที่ผู้ใช้งานส่งถึงบริษัท กรีน โกลบอล ซีดส์ จำกัด ผ่านทางอินเทอร์เน็ตไม่อาจถูกขจัดออกไปได้โดยสิ้นเชิง ผู้ใช้งานจึงควรตระหนักถึงความเสี่ยงดังกล่าวก่อนติดต่อสื่อสารกับบริษัทฯ ผ่านทางช่องทางอินเทอร์เน็ต นอกจากนี้บริษัทไม่อาจรับประกันได้ว่าการให้บริการเว็บไซต์นี้จะดำเนินไปโดยปราศจากการหยุดชะงัก หรือการส่งข้อมูลจะปราศจากข้อผิดพลาด การเข้าถึงเว็บไซต์ของท่านอาจถูกระงับหรือจำกัดเป็นครั้งคราวด้วยเหตุผลหลายประการ เช่น การบำรุงรักษาระบบ หรือการจัดให้มีบริการใหม่</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9. <strong>ข้อสงวนสิทธิ์ลิขสิทธิ์</strong>: เนื้อหาทั้งหมดบนเว็บไซต์นี้เป็นทรัพย์สินของบริษัท และอยู่ภายใต้การคุ้มครองตามกฎหมายลิขสิทธิ์ในเขตอำนาจที่เกี่ยวข้องโดยสงวนสิทธิ์ทั้งหมด ผู้ใช้งานสามารถดาวน์โหลดหรือพิมพ์เนื้อหาบางส่วนของเว็บไซต์เพื่อใช้ส่วนบุคคลและเพื่อการรับทราบข้อมูลเท่านั้น โดยมีเงื่อนไขว่าจะต้องคงไว้ซึ่งข้อความแสดงลิขสิทธิ์และข้อความแสดงสิทธิอื่นๆ ที่เกี่ยวข้อง ห้ามมิให้ผู้ใช้งานทำซ้ำ (ไม่ว่าทั้งหมดหรือบางส่วน) ดัดแปลง ทำการถอดรหัส (decompile) แยกส่วน (disassemble) ส่งต่อ หรือใช้ประโยชน์เพื่อวัตถุประสงค์ทางการค้าใดๆ จากข้อมูลบนเว็บไซต์นี้ เว้นแต่จะได้รับความยินยอมเป็นลายลักษณ์อักษรล่วงหน้าจากบริษัท</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 10. <strong>กฎหมายที่ใช้บังคับ</strong>: ข้อเรียกร้องทางกฎหมายหรือการดำเนินคดีใดๆ ที่เกี่ยวข้องกับเว็บไซต์นี้ หรือการใช้ผลิตภัณฑ์ของบริษัทให้แปลความหมายและอยู่ภายใต้กฎหมายแห่งราชอาณาจักรไทยแต่เพียงผู้เดียว บริษัทฯ ขอขอบคุณท่านที่ได้อ่านและทำความเข้าใจเงื่อนไขและข้อกำหนดของบริษัท กรีน โกลบอล ซีดส์ จำกัด และถือว่าท่านได้ยอมรับข้อกำหนดดังกล่าวก่อนเปิดบรรจุภัณฑ์</p>', NULL, ',5,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 5, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-18 03:11:54', '2025-09-24 01:23:21'),
(7, 'REGISTER', 'الشروط والأحكام', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>قيود الاستخدام &ndash; الشروط والأحكام</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\">: بقبول البذور المرفقة أو بفتح عبوة الشركة، يقرّ المستخدم بأنه قد قرأ وفهم الشروط والأحكام التالية، ويوافق على الالتزام بها كما هو موضح أدناه</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:22px\"><strong>الضمان وحدود المسؤولية</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\">تضمن الشركة أن البذور الموجودة في هذه العبوة تتوافق مع المواصفات والمعايير القياسية الخاصة بالشركة وبما هو مذكور على الملصق. وذلك إلى الحد المسموح به بموجب القوانين المعمول بها.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">١. تُخلي الشركة مسؤوليتها بموجب هذا عن: جميع الضمانات الصريحة أو الضمنية، بما في ذلك ضمانات قابلية التسويق والملاءمة لغرض مُحدد. لا توجد أي ضمانات أخرى، بما في ذلك ضمانات أداء المحصول أو خلوه من الأمراض (حتى لو كانت البذور منقولة)</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٢. الظروف الجوية: قد تُؤثر خبرة التربة والزراعة، بالإضافة إلى المتغيرات الأخرى، بما في ذلك الأمراض الجديدة والمتحولة والمواد الكيميائية، بشكل كبير على نجاح زراعة أي بذور. لذلك، لا يُقدم أو يُطبق أي ضمان ضد الأمراض أو الأصناف أو أداء المحصول. تقتصر مسؤولية الشركة الإجمالية فيما يتعلق بهذه البذور، مهما كانت طبيعة هذه المسؤولية، على سعر شرائها. ولن تكون الشركة مسؤولة تجاه المشتري عن أي توجيه أو خسارة أو أضرار خاصة أو عرضية أو تبعية، بغض النظر عما إذا كانت هذه الأضرار مُطالب بها بموجب عقد (بما في ذلك الإهمال أو الإخلال بالواجب القانوني) أو مُضلِّلة أو غير ذل</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٣. إشعار المطالبة: يُبلّغ عن أي مطالبة تتعلق بالضمان المنصوص عليه صراحةً في هذه الوثيقة خلال فترة زمنية معقولة من تاريخ اكتشافها. ويُعتبر الإشعار المُقدّم بعد الفترة الزمنية التي لا تستطيع فيها الشركة فحص أو فحص هذه البذور أو المحاصيل الناتجة عنها ماديًا إشعارًا غير معقول بموجب هذه الوثيقة</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٤. إخلاء مسؤولية المنتج والصنف: قد يكون للظروف الجوية، والتربة، والخبرة الزراعية، والمتغيرات الأخرى، بما في ذلك الأمراض الجديدة والمتحوّرة، والمواد الكيميائية، تأثير كبير على نجاح زراعة أي بذور. لذلك، لا يُقدّم أو يُطبّق أي ضمان ضد المرض أو الصنف أو أداء المحصول. انظر &quot;الضمان وحدود المسؤولية&quot;، القسم الفرعي ضمن الشروط والأحكام</span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:16px\">٥. مقاومة الأمراض: مقاومة عالية/قياسية: أصناف نباتية تُقيّد بشدة نمو وتطور الآفة أو العامل المُمرض المُحدّد تحت ضغط طبيعي للآفة أو العامل المُمرض، مقارنةً بالأصناف الحساسة. ومع ذلك، قد تُظهر هذه الأصناف النباتية بعض الأعراض أو التلف تحت ضغط شديد للآفة أو العامل المُمرض</span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:16px\">مقاومة متوسطة/متوسطة : أصناف نباتية تُعيق نمو وتطور الآفة أو المُمْرِض المُحدد، ولكنها قد تُظهر نطاقًا أوسع من الأعراض أو الأضرار مُقارنةً بالأصناف عالية/القياسية المقاومة. أما الأصناف النباتية متوسطة/المقاومة، فستُظهر أعراضًا أو أضرارًا أقل حدةً من الأصناف النباتية المُعرّضة عند زراعتها في ظروف بيئية مُماثلة و/أو ضغط آفات أو مُمْرِضات. قد يعتمد الأداء على الظروف البيئية المحلية</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٦. إخلاء مسؤولية بشأن الصور: تُستخدم الصور على عبواتنا وموقعنا الإلكتروني وجميع المواد المطبوعة لأغراض التوضيح فقط. ولا تُمثل الصنف الفعلي.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">الصور فقط لتوضيح نوع الفاكهة أو الخضراوات، مثل البطيخ أو الطماطم Green Global Seeds Co., Ltd تستخدم شركة<br />\r\nهذا لا يضمن جودة النوع أو الصنف أو أي تمثيل للمحصول الفعلي&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٧. تنزيل معلومات المنتج: بتنزيل أي معلومات عن المنتج أو مواد أو مستندات من هذا الموقع الإلكتروني، يُؤكد المستخدم أنه قد قرأ وفهم ووافق على الالتزام القانوني بالشروط والأحكام التالية<br />\r\nGreen Global Seeds Co., Ltd &nbsp;يُحظر تمامًا استخدام المواد أو إعادة إنتاجها أو توزيعها دون موافقة كتابية مسبقة من شركة</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٨. أمن البيانات والخصوصية: نظرًا لطبيعة الإنترنت، لا يمكن استبعاد خطر الاستخدام غير المصرح به، والإفصاح، واعتراض الاتصالات أو المواد التي ترسلها إلى شركة عبر الإنترنت Green Global Seeds Co, Ltd<br />\r\nعبر الإنترنت Green Global Seeds Co,Ltd يجب على المستخدمين إدراك هذه المخاطر قبل التواصل مع شركة &nbsp;<br />\r\nإضافةً إلى ذلك، لا يمكننا ضمان استمرارية توافر هذا الموقع الإلكتروني وخلوه من الأخطاء. قد يتم تعليق أو تقييد وصولك إلى الموقع الإلكتروني أحيانًا لأسباب متعددة، منها على سبيل المثال، السماح بإجراء الصيانة أو تقديم خدمات جديد</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">٩. إشعار حقوق النشر: محتوى هذا الموقع الإلكتروني ملك لنا ويخضع لقوانين حقوق النشر الخاصة بالتسجيلات الإقليمية مع الاحتفاظ بجميع الحقوق. يمكنك تنزيل أو طباعة أقسام فردية من الموقع الإلكتروني للاستخدام الشخصي وللحصول على المعلومات فقط، بشرط احتفاظك بجميع حقوق النشر وإشعارات الملكية الأخرى. لا يجوز لك إعادة إنتاج (كليًا أو جزئيًا)، أو تعديل، أو فك، أو تفكيك، أو إرسال، أو استخدام أي معلومات من هذا الموقع الإلكتروني لأي غرض تجاري، دون الاتصال بنا والحصول على موافقتنا الكتابية المسبقة</span></p>\r\n\r\n<p><br />\r\n١٠.<span style=\"font-size:16px\"> القانون المعمول به: تخضع أي مطالبات قانونية أو دعاوى قضائية تتعلق بهذا الموقع الإلكتروني أو استخدام منتجاته لتفسير قوانين تايلاند فقط<br />\r\n، ونرجو منك الاطلاع عليها قبل فتح العبوة Green Global Seeds نشكرك على قراءة وفهم شروط وأحكام</span></p>\r\n\r\n<p>&nbsp;</p>', NULL, ',5,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'ar', NULL, NULL, NULL, '2025-11-12 01:00:35'),
(7, 'REGISTER', 'USE RESTRICTIONS TEMS AND CONDITION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p style=\"text-align:center\"><span style=\"font-size:18px\"><strong>USE RESTRICTIONS TEMS AND CONDITION</strong></span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; BY ACCEPTANCE OF SEED ACCOMPANYING OR OPENNING THE PACKAGE OF THE COMPANY USER ACKNOWLEDGE THAT USER HAS READ AND UNDERSTOOD THE FOLLOWING TERMS AND CONDITIONS AND AGREES TO BE BOUND BY TERM AS BELOW.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>WARRANTY &nbsp;AND &nbsp;LIMITATION OF &nbsp;LIABILITY</strong></p>\r\n\r\n<p>The Company warrants that the seed in this package conforms to company&rsquo;s standard specifications and labeling. To the extent permissible under applicable law,</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. <strong>Company hereby disclaims</strong>: All express or implied warranties, including warranties of merchantability and fitness for a particular purpose. There are no other warranties, including warranties of crop performance or freedom from disease (Even if seed borne).</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2. <strong>Weather Conditions</strong>: Soil and farming experience and other variants including new and mutated diseases and chemicals can have a major effect in the successful farming of any seeds. Therefore, no warranty against disease, variety or crop performance is therefore given or applied.</p>\r\n\r\n<p>Company&rsquo;s total liability in relation to this seed, however such liability may arise, is &nbsp;limited in &nbsp;amount to the purchase price of the seed, Company shall not be liable to buyer for any direct, special incidental or consequential lose or damages regardless of whether such damages are claimed in contract tort (including negligence or breach of statutory duty) , and misrepresentative or otherwise.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3. <strong>Notice of Claim</strong>: Notice of any claim in connection with warranty expressly made herein shall be given within a reasonable time after discovery.<br />\r\nNotice given after the point in time in which the company cannot &nbsp;physically inspect or examine this seed or the resulting crops from this seed &nbsp;shall be deemed to not be reasonable notice hereunder.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4. <strong>Product &amp; Variety Disclaimer</strong>: Weather conditions, soil, and farming experience and other variants including new and mutated diseases and chemicals can have a major effect in the successful farming of any seeds. Therefore, no warranty against disease, variety or crop performance is therefore given or applied. See the Warranty and Limitation of Liability, subheading under the terms and conditions.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5. <strong>Disease resistance of communication no warranty</strong>: High/standard resistance (HR): plant varieties that highly restrict the growth and development of the specified pest or pathogen under normal pest or pathogen pressure when compared to susceptible varieties. These plant varieties may, however, exhibit some symptoms or damage under heavy pest or pathogen pressure.<br />\r\n&nbsp;&nbsp;<br />\r\nModerate/intermediate resistance (IR): plant varieties that restrict the growth and development of the specified pest or pathogen, but may exhibit a greater range of symptoms or damage compared to high/standard resistant varieties. Moderately/intermediately resistant plant varieties will still show less severe symptoms or damage than susceptible plant varieties when grown under similar environmental conditions and/or pest or pathogen pressure. Performance may depend on local envirnoment conditions.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6. <strong>Picture Disclaimer</strong>: Pictures on our packaging and website and all printed material are used solely for illustrative purposes only. They make no representation of the actual variety. Green global seeds Co Ltd only use the pictures to demonstrate type of fruit or vegetable, example watermelon or tomato. This does not warrant or guarantee type variety quality or any representation of the actual crop.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;7. <strong>Product information downloading</strong>: By downloading any product information, materials, or documents from this website, the user confirms that they have read, understood, and agreed to be legally bound by the following terms and conditions already.<br />\r\nUnauthorized use, reproduction, or distribution of the materials without prior written consent from Green Global seeds Co Ltd is strictly prohibited.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8. <strong>Data Security and Privacy</strong>: Due to the nature of the Internet, the risk of unauthorized use, disclosure, and interception of communications or materials you send to Green Global Seeds Co Ltd &nbsp;via the Internet can never be eliminated, and users should be aware of these risks before communicating with Green Global seeds Co Ltd via the Internet. Additionally, we cannot guarantee that the availability of this website will be uninterrupted and that transmissions will be error-free. Your access to the website may be occasionally suspended or restricted for a variety of reasons including, for example, to allow for maintenance or the introduction of new services.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;9. <strong>Copyright notice</strong>: The content of this web site is the property of us and is subject to the copyright laws of regional registrations with all rights reserved. You may download or print individual sections of the web site for personal use and information only provided that you retain all copyright and other proprietary notices. You may not reproduce (in whole or in part), modify, decompile, disassemble or transmit or use for any commercial purpose whatsoever any information from this web site without contacting us and obtaining our prior written consent.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10. <strong>Applicable law</strong>: Any legal claims or lawsuits in conjunction with this website or its product use are subject to the interpretation of the laws of Thailand only. Thanks, you to read and understanding green global seeds terms and conditions and excepted on this before open package.</p>', NULL, ',5,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, NULL, '2025-11-04 20:05:29');
INSERT INTO `posts` (`id`, `slug`, `title`, `keyword`, `description`, `freetag`, `h1`, `h2`, `short_url`, `thumbnail_title`, `thumbnail_link`, `thumbnail_size`, `thumbnail_alt`, `topic`, `content`, `iframe`, `category`, `tags`, `redirect`, `link_facebook`, `link_twitter`, `link_instagram`, `link_youtube`, `link_line`, `status_display`, `pin`, `defaults`, `post_view`, `priority`, `meta_tag`, `meta_title`, `meta_description`, `allow_delete`, `is_maincontent`, `language`, `date_begin_display`, `date_end_display`, `created_at`, `updated_at`) VALUES
(7, 'REGISTER', 'ข้อกำหนดและเงื่อนไข', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p style=\"text-align:center\"><span style=\"font-size:18px\"><strong>ข้อจำกัดการใช้ &ndash; เงื่อนไขและข้อตกลง</strong></span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; เมื่อผู้ใช้ยอมรับเมล็ดพันธุ์ที่จัดส่งมาพร้อมบรรจุภัณฑ์นี้ หรือเมื่อมีการเปิดบรรจุภัณฑ์ของบริษัท ถือว่าผู้ใช้ได้อ่านทำความเข้าใจและตกลงยอมรับข้อกำหนดและเงื่อนไขต่อไปนี้โดยสมบูรณ์ และผูกพันตามเงื่อนไขทุกประการ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>การรับประกันและข้อจำกัดความรับผิด</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; บริษัทขอรับรองว่าเมล็ดพันธุ์ที่บรรจุอยู่ในบรรจุภัณฑ์นี้เป็นไปตามมาตรฐานข้อกำหนด และการติดฉลากของบริษัท ทั้งนี้ภายใต้ขอบเขตกฎหมายที่เกี่ยวข้องอนุญาตบริษัทขอสงวนสิทธิ์ และปฏิเสธความรับผิดในกรณี ดังต่อไปนี้</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1. <strong>บริษัทไม่รับประกัน</strong>: บริษัทไม่รับประกันไม่ว่าด้วยถ้อยคำโดยชัดเจนหรือโดยนัย รวมถึงการรับประกันความเหมาะสมในการซื้อขาย และความเหมาะสมเพื่อวัตถุประสงค์เฉพาะใดๆ ทั้งสิ้น รวมทั้งไม่รับประกันผลผลิตทางการเกษตรหรือการปราศจากโรค (ไม่ว่ามีต้นกำเนิดจากเมล็ดพันธุ์หรือไม่ก็ตาม)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2. <strong>สภาพอากาศ</strong>: สภาพอากาศ ลักษณะดิน ประสบการณ์การเพาะปลูก รวมถึงปัจจัยแปรผันอื่นๆ เช่น โรคใหม่หรือโรคกลายพันธุ์ และการใช้สารเคมีอาจส่งผลกระทบต่อความสำเร็จของการเพาะปลูก บริษัทจึงไม่อาจให้คำรับรองใดๆ เกี่ยวกับการปลอดโรค ความคงที่ของสายพันธุ์ หรือผลผลิต</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ความรับผิดชอบของบริษัทที่เกี่ยวข้องกับเมล็ดพันธุ์นี้ไม่ว่าด้วยเหตุใดก็ตามจำกัดเพียงราคาซื้อขายของเมล็ดพันธุ์เท่านั้น บริษัทจะไม่รับผิดชอบต่อความเสียหายหรือความสูญเสียใดๆ ไม่ว่าทางตรง โดยบังเอิญ หรือสืบเนื่อง ไม่ว่าจะมีการเรียกร้องตามสัญญา การละเมิด (รวมถึงความประมาทเลินเล่อหรือการฝ่าฝืนหน้าที่ตามกฎหมาย) การแสดงข้อความอันเป็นเท็จ หรือด้วยเหตุอื่นใด</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3. <strong>การบอกกล่าวการเรียกร้อง</strong>: การบอกกล่าวการเรียกร้องใดๆ ที่เกี่ยวข้องกับการรับประกันซึ่งได้ระบุไว้อย่างชัดเจนในที่นี้ จะต้องมีขึ้นภายในระยะเวลาอันสมควรภายหลังจากการพบเหตุ ทั้งนี้หากมีการบอกกล่าวภายหลังจากระยะเวลาที่บริษัทไม่สามารถตรวจสอบหรือพิจารณาเมล็ดพันธุ์ดังกล่าวหรือผลผลิตที่ได้จากเมล็ดพันธุ์นั้นได้โดยตรง การบอกกล่าวดังกล่าวจะถือว่าไม่เป็นการบอกกล่าวโดยสมควรตามเงื่อนไขนี้</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4. <strong>ข้อสงวนสิทธิ์เกี่ยวกับผลิตภัณฑ์ และสายพันธุ์</strong>: สภาพอากาศ ลักษณะดิน ประสบการณ์ทางการเกษตร และปัจจัยแปรผันอื่นๆ รวมถึงโรคชนิดใหม่หรือโรคที่กลายพันธุ์ และสารเคมี อาจส่งผลกระทบต่อความสำเร็จของการเพาะปลูกเมล็ดพันธุ์ ดังนั้นบริษัทจึงไม่สามารถให้การรับประกันใดๆ เกี่ยวกับการปราศจากโรค ลักษณะพันธุ์ หรือผลผลิตทางการเกษตร ทั้งนี้โปรดดูรายละเอียดเพิ่มเติมภายใต้หัวข้อการรับประกันและข้อจำกัดความรับผิด ในหมวดเงื่อนไขและข้อตกลง</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5. <strong>การสื่อสารเรื่องความต้านทานโรคมิใช่การรับประกัน</strong>: การต้านทานโรคในระดับสูงหรือมาตรฐาน (High/Standard Resistance: HR) หมายถึง พันธุ์พืชที่สามารถจำกัดการเจริญเติบโตและการพัฒนาของศัตรูพืชหรือเชื้อโรคที่ระบุไว้ภายใต้สภาวะการรบกวนตามปกติเมื่อเปรียบเทียบกับพันธุ์ที่อ่อนแอต่อโรค อย่างไรก็ตามพันธุ์พืชดังกล่าวอาจจะแสดงอาการหรือเกิดความเสียหายได้ภายใต้สภาวะที่มีการรบกวนจากศัตรูพืชหรือเชื้อโรคอย่างรุนแรง<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; การต้านทานโรคในระดับปานกลางหรือระดับกึ่งต้านทาน: พันธุ์พืชที่มีคุณลักษณะต้านทานโรคในระดับปานกลางหรือกึ่งต้านทาน หมายถึง พันธุ์พืชที่สามารถจำกัดการเจริญเติบโตและการพัฒนาของศัตรูพืชหรือเชื้อโรคที่ระบุไว้ แต่ยังคงอาจแสดงอาการหรือเกิดความเสียหายได้ในระดับที่มากกว่าพันธุ์ที่มีความต้านทานสูงหรือมาตรฐาน ทั้งนี้พันธุ์พืชที่มีความต้านทานปานกลางหรือกึ่งต้านทานยังคงแสดงอาการหรือความเสียหายที่รุนแรงน้อยกว่าพันธุ์ที่อ่อนแอต่อโรคภายใต้สภาพแวดล้อม ศัตรูพืช หรือเชื้อโรค โดยประสิทธิภาพการต้านทานอาจขึ้นอยู่กับสภาพแวดล้อมในแต่ละพื้นที่</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6. <strong>ข้อสงวนสิทธิ์เกี่ยวกับรูปภาพ</strong>: รูปภาพที่ปรากฏบนบรรจุภัณฑ์ เว็บไซต์ และสื่อสิ่งพิมพ์ทั้งหมดของบริษัทใช้เพื่อวัตถุประสงค์ในการสาธิตประกอบเท่านั้น ไม่ได้เป็นการรับรองหรือยืนยันว่าตรงกับสายพันธุ์จริง บริษัท กรีน โกลบอล ซีดส์ จำกัด ใช้รูปภาพดังกล่าวเพื่อแสดงลักษณะผลหรือลักษณะทั่วไป เช่น แตงโมหรือมะเขือเทศ ทั้งนี้รูปภาพดังกล่าวไม่ใช่การรับประกันหรือคำรับรองใดๆ เกี่ยวกับชนิด สายพันธุ์ คุณภาพ หรือผลผลิต</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7. <strong>การดาวน์โหลดข้อมูลผลิตภัณฑ์</strong>: การดาวน์โหลดข้อมูลผลิตภัณฑ์ เอกสาร หรือวัสดุใดๆ จากเว็บไซต์นี้แสดงว่าผู้ใช้ยืนยันว่าได้อ่านทำความเข้าใจ และตกลงที่จะผูกพันตนตามเงื่อนไขและข้อตกลงที่กำหนดไว้แล้วทุกประการ ดังนั้นการนำข้อมูล วัสดุ หรือเอกสารดังกล่าวไปใช้ ทำซ้ำ หรือเผยแพร่ โดยไม่ได้รับความยินยอมเป็นลายลักษณ์อักษรล่วงหน้าจากบริษัท กรีน โกลบอล ซีดส์ จำกัด ถือเป็นการต้องห้ามโดยเด็ดขาด</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8. <strong>ความมั่นคงปลอดภัยของข้อมูลและความเป็นส่วนตัว</strong>: เนื่องจากลักษณะของเครือข่ายอินเทอร์เน็ต ความเสี่ยงจากการใช้งาน การเปิดเผย หรือการถูกดักจับข้อมูลหรือเอกสารที่ผู้ใช้งานส่งถึงบริษัท กรีน โกลบอล ซีดส์ จำกัด ผ่านทางอินเทอร์เน็ตไม่อาจถูกขจัดออกไปได้โดยสิ้นเชิง ผู้ใช้งานจึงควรตระหนักถึงความเสี่ยงดังกล่าวก่อนติดต่อสื่อสารกับบริษัทฯ ผ่านทางช่องทางอินเทอร์เน็ต นอกจากนี้บริษัทไม่อาจรับประกันได้ว่าการให้บริการเว็บไซต์นี้จะดำเนินไปโดยปราศจากการหยุดชะงัก หรือการส่งข้อมูลจะปราศจากข้อผิดพลาด การเข้าถึงเว็บไซต์ของท่านอาจถูกระงับหรือจำกัดเป็นครั้งคราวด้วยเหตุผลหลายประการ เช่น การบำรุงรักษาระบบ หรือการจัดให้มีบริการใหม่</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9. <strong>ข้อสงวนสิทธิ์ลิขสิทธิ์</strong>: เนื้อหาทั้งหมดบนเว็บไซต์นี้เป็นทรัพย์สินของบริษัท และอยู่ภายใต้การคุ้มครองตามกฎหมายลิขสิทธิ์ในเขตอำนาจที่เกี่ยวข้องโดยสงวนสิทธิ์ทั้งหมด ผู้ใช้งานสามารถดาวน์โหลดหรือพิมพ์เนื้อหาบางส่วนของเว็บไซต์เพื่อใช้ส่วนบุคคลและเพื่อการรับทราบข้อมูลเท่านั้น โดยมีเงื่อนไขว่าจะต้องคงไว้ซึ่งข้อความแสดงลิขสิทธิ์และข้อความแสดงสิทธิอื่นๆ ที่เกี่ยวข้อง ห้ามมิให้ผู้ใช้งานทำซ้ำ (ไม่ว่าทั้งหมดหรือบางส่วน) ดัดแปลง ทำการถอดรหัส (decompile) แยกส่วน (disassemble) ส่งต่อ หรือใช้ประโยชน์เพื่อวัตถุประสงค์ทางการค้าใดๆ จากข้อมูลบนเว็บไซต์นี้ เว้นแต่จะได้รับความยินยอมเป็นลายลักษณ์อักษรล่วงหน้าจากบริษัท</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 10. <strong>กฎหมายที่ใช้บังคับ</strong>: ข้อเรียกร้องทางกฎหมายหรือการดำเนินคดีใดๆ ที่เกี่ยวข้องกับเว็บไซต์นี้ หรือการใช้ผลิตภัณฑ์ของบริษัทให้แปลความหมายและอยู่ภายใต้กฎหมายแห่งราชอาณาจักรไทยแต่เพียงผู้เดียว บริษัทฯ ขอขอบคุณท่านที่ได้อ่านและทำความเข้าใจเงื่อนไขและข้อกำหนดของบริษัท กรีน โกลบอล ซีดส์ จำกัด และถือว่าท่านได้ยอมรับข้อกำหนดดังกล่าวก่อนเปิดบรรจุภัณฑ์</p>', NULL, ',5,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 6, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-19 21:44:06', '2025-09-24 02:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `image_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaults` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `update_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`id`, `post_id`, `image_link`, `alt`, `title`, `description`, `position`, `language`, `defaults`, `update_by`, `created_at`, `updated_at`) VALUES
(59, 3, 'upload/2025/09/22/Rectangle 156 (1)(2).png', '', '', NULL, 1, 'ar', '0', NULL, NULL, NULL),
(60, 3, 'upload/2025/09/22/ภาพslide(1).jpg', '', '', NULL, 2, 'ar', '0', NULL, NULL, NULL),
(61, 3, 'upload/2025/09/22/test-1(2).jpg', '', '', NULL, 3, 'ar', '0', NULL, NULL, NULL),
(62, 3, 'upload/2025/09/22/test-2(2).jpg', '', '', NULL, 4, 'ar', '0', NULL, NULL, NULL),
(63, 3, 'upload/2025/09/22/Rectangle 156 (1)(1).png', '', '', NULL, 1, 'en', '0', NULL, NULL, NULL),
(64, 3, 'upload/2025/09/22/ภาพslide.jpg', '', '', NULL, 2, 'en', '0', NULL, NULL, NULL),
(65, 3, 'upload/2025/09/22/test-1(1).jpg', '', '', NULL, 3, 'en', '0', NULL, NULL, NULL),
(66, 3, 'upload/2025/09/22/test-2(1).jpg', '', '', NULL, 4, 'en', '0', NULL, NULL, NULL),
(71, 3, 'upload/2025/09/22/Rectangle 156 (1).png', '', '', NULL, 1, 'th', '0', NULL, NULL, NULL),
(72, 3, 'upload/2025/09/22/Rectangle 2.png', '', '', NULL, 2, 'th', '0', NULL, NULL, NULL),
(73, 3, 'upload/2025/09/22/test-1.jpg', '', '', NULL, 3, 'th', '0', NULL, NULL, NULL),
(74, 3, 'upload/2025/09/22/test-2.jpg', '', '', NULL, 4, 'th', '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_second_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_second_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_second_alt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_second_size` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `plant_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plant_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plant_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fruit_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fruit_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fruit_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taste_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taste_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disease_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disease_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci,
  `link_youtube` text COLLATE utf8mb4_unicode_ci,
  `doc_link` text COLLATE utf8mb4_unicode_ci,
  `display` tinyint(1) DEFAULT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int(255) NOT NULL DEFAULT '0',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `defaults` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `freetag` text COLLATE utf8mb4_unicode_ci,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `link_facebook` text COLLATE utf8mb4_unicode_ci,
  `link_twitter` text COLLATE utf8mb4_unicode_ci,
  `link_instagram` text COLLATE utf8mb4_unicode_ci,
  `link_line` text COLLATE utf8mb4_unicode_ci,
  `post_view` int(11) DEFAULT '0',
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_url`, `thumbnail_link`, `thumbnail_title`, `thumbnail_alt`, `thumbnail_size`, `thumbnail_second_link`, `thumbnail_second_title`, `thumbnail_second_alt`, `thumbnail_second_size`, `seement`, `plant_1`, `plant_2`, `plant_3`, `fruit_1`, `fruit_2`, `fruit_3`, `taste_1`, `taste_2`, `disease_1`, `disease_2`, `category`, `redirect`, `link_youtube`, `doc_link`, `display`, `pin`, `priority`, `language`, `defaults`, `created_at`, `updated_at`, `slug`, `keyword`, `description`, `freetag`, `h1`, `h2`, `tags`, `link_facebook`, `link_twitter`, `link_instagram`, `link_line`, `post_view`, `meta_tag`, `meta_title`, `meta_description`, `last_update_by`) VALUES
(3, 'GBR 1005', 'en/product-detail/3', 'upload/2025/09/05/Tomato-GBR-1005.jpg', NULL, NULL, NULL, 'upload/2025/09/05/ต้นTomato-GBR-1005.jpg', NULL, NULL, NULL, '20', '- Semi-determinate plant type.', '- Very good leaf coverage.', '- Early maturity.', '- Strong vigorous plant and good leaf coverage.', '- 200-250 grams weight.', '- Uniformity round shape.', '- Beef tomato taste.', '- Solid texture.', '- HR: TYLCV, ToMV, Fol: 1', '- IR: TYLCV, Ff: A-E, P', '9', NULL, 'https://www.youtube.com/embed/iJBCs7ezK_E?si=Mf1IfkvSxl1j3ymV', 'pdf/docs/2025/09/05/4th1757067381.pdf', 1, 0, 1, 'en', 0, NULL, '2025-10-30 19:20:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(3, 'GBR 1005', 'th/product-detail/3', 'upload/2025/09/05/Tomato-GBR-1005.jpg', NULL, NULL, NULL, 'upload/2025/09/05/ต้นTomato-GBR-1005.jpg', NULL, NULL, NULL, '20', '- Semi-determinate plant type.', '- Very good leaf coverage.', '- Early maturity.', '- Strong vigorous plant and good leaf coverage.', '- 200-250 grams weight.', '- Uniformity round shape.', '- Beef tomato taste.', '- Solid texture.', '- HR: TYLCV, ToMV, Fol: 1', '- IR: TYLCV, Ff: A-E, P', '9', NULL, 'https://www.youtube.com/embed/iJBCs7ezK_E?si=Mf1IfkvSxl1j3ymV', 'pdf/docs/2025/09/05/4th1757067381.pdf', 1, 0, 1, 'th', 1, '2025-09-05 03:16:13', '2025-09-05 03:16:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(4, 'GBR 1008', 'en/product-detail/4', 'upload/2025/09/06/Tomato-GBR-1008(6).jpg', NULL, NULL, NULL, 'upload/2025/09/06/รูปต้น--GBR-1008.jpg', NULL, NULL, NULL, '20', '- Determinate with stonge plant.', '- Very good leaf coverage.', '- Medium maturity.', '- Very good quality fruits and transportation.', '- 200-250 grams weight.', '- Highest yield and uniformity round shape.', '- Beef tomato taste.', '- Solid texture.', '- HR: ToMV, Fol: 1', '- IR: N/A', '9', NULL, 'https://www.youtube.com/embed/-db6gERON4U?si=D2Qq6qz7gqfZ186U', 'pdf/docs/2025/09/06/GBR 1008th1757133367.pdf', 1, 0, 2, 'en', 0, NULL, '2025-10-30 19:20:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(4, 'GBR 1008', 'th/product-detail/4', 'upload/2025/09/06/Tomato-GBR-1008(6).jpg', NULL, NULL, NULL, 'upload/2025/09/06/รูปต้น--GBR-1008.jpg', NULL, NULL, NULL, '20', '- Determinate with stonge plant.', '- Very good leaf coverage.', '- Medium maturity.', '- Very good quality fruits and transportation.', '- 200-250 grams weight.', '- Highest yield and uniformity round shape.', '- Beef tomato taste.', '- Solid texture.', '- HR: ToMV, Fol: 1', '- IR: N/A', '9', NULL, 'https://www.youtube.com/embed/-db6gERON4U?si=D2Qq6qz7gqfZ186U', 'pdf/docs/2025/09/06/GBR 1008th1757133367.pdf', 1, 0, 2, 'th', 1, '2025-09-05 20:00:11', '2025-09-07 21:55:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(5, 'GBR 1011', 'en/product-detail/5', 'upload/2025/09/06/GBR-1011.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GBR-1011.jpg', NULL, NULL, NULL, '20', '- Semi-determinate plant type.', '- Good adaptation from cold to warm season.', '- Early maturity.', '- Strong vigorous plant and good leaf coverage.', '- 200-250 grams weight.', '- Highest yield and uniformity round shape.', '- Beef tomato taste.', '- Solid texture.', '- HR: TYLCV, ToMV, Fol: 1', '- IR: N/A', '9', NULL, 'https://www.youtube.com/embed/nN7ykuSDbMQ?si=zAIZqLO6aOu1Px5c', 'pdf/docs/2025/09/06/3th1757133895.pdf', 1, 0, 3, 'en', 0, NULL, '2025-10-30 19:21:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(5, 'GBR 1011', 'th/product-detail/5', 'upload/2025/09/06/GBR-1011.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GBR-1011.jpg', NULL, NULL, NULL, '20', '- Semi-determinate plant type.', '- Good adaptation from cold to warm season.', '- Early maturity.', '- Strong vigorous plant and good leaf coverage.', '- 200-250 grams weight.', '- Highest yield and uniformity round shape.', '- Beef tomato taste.', '- Solid texture.', '- HR: TYLCV, ToMV, Fol: 1', '- IR: N/A', '9', NULL, 'https://www.youtube.com/embed/nN7ykuSDbMQ?si=zAIZqLO6aOu1Px5c', 'pdf/docs/2025/09/06/3th1757133895.pdf', 1, 0, 3, 'th', 1, '2025-09-05 21:44:55', '2025-09-07 21:54:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(6, 'GBR 1095', 'en/product-detail/6', 'upload/2025/09/06/GBR-1095.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น--GBR-1095.jpg', NULL, NULL, NULL, '20', '- Semi-determinate plant type.', '- Very good leaf coverage.', '- Early maturity.', '- Strong vigorous plant and good leaf coverage.', '- 200-250 grams weight.', '- Uniformity round shape.', '- Beef tomato taste.', '- Solid texture.', '- HR: TYLCV, ToMV, Fol: 1', '- IR: TYLCV, Ff: A-E, P', '9', NULL, 'https://www.youtube.com/embed/iJBCs7ezK_E?si=Mf1IfkvSxl1j3ymV', 'pdf/docs/2025/09/06/1th1757134423.pdf', 1, 0, 4, 'en', 0, NULL, '2025-10-30 19:22:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(6, 'GBR 1095', 'th/product-detail/6', 'upload/2025/09/06/GBR-1095.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น--GBR-1095.jpg', NULL, NULL, NULL, '20', '- Semi-determinate plant type.', '- Very good leaf coverage.', '- Early maturity.', '- Strong vigorous plant and good leaf coverage.', '- 200-250 grams weight.', '- Uniformity round shape.', '- Beef tomato taste.', '- Solid texture.', '- HR: TYLCV, ToMV, Fol: 1', '- IR: TYLCV, Ff: A-E, P', '9', NULL, 'https://www.youtube.com/embed/iJBCs7ezK_E?si=Mf1IfkvSxl1j3ymV', 'pdf/docs/2025/09/06/1th1757134423.pdf', 1, 0, 4, 'th', 1, '2025-09-05 21:53:43', '2025-09-07 21:55:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(7, 'GCI 1012', 'en/product-detail/7', 'upload/2025/09/06/GCL-1012.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GCL-1012.jpg', NULL, NULL, NULL, '21', '- Indeterminate plant with long crop cycle.', '- Very good growth in dry condition under protected cultivation.', '- Best for spring, autumn at midland and highland in plastic house.', '- Very good cutter setting.', '- 20-25 grams weight.', '- Light yellow color oval shape.', '- Excellenge sweetness.', '- Good aroma.', '- HR: N/A', '- IR: N/A\"', '9', NULL, '-', 'pdf/docs/2025/09/06/6th1757139038.pdf', 1, 0, 5, 'en', 0, NULL, '2025-10-30 19:22:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(7, 'GCI 1012', 'th/product-detail/7', 'upload/2025/09/06/GCL-1012.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GCL-1012.jpg', NULL, NULL, NULL, '21', '- Indeterminate plant with long crop cycle.', '- Very good growth in dry condition under protected cultivation.', '- Best for spring, autumn at midland and highland in plastic house.', '- Very good cutter setting.', '- 20-25 grams weight.', '- Light yellow color oval shape.', '- Excellenge sweetness.', '- Good aroma.', '- HR: N/A', '- IR: N/A\"', '9', NULL, '-', 'pdf/docs/2025/09/06/6th1757139038.pdf', 1, 0, 5, 'th', 1, '2025-09-05 23:10:38', '2025-09-07 21:56:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(8, 'GCI 1013', 'en/product-detail/8', 'upload/2025/09/06/GCL-1013.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GCL-1013.jpg', NULL, NULL, NULL, '21', '- Indeterminate plant with long crop cycle.', '- Good on spring, autumn.', '- Best for highland and midland in plastic house. Indeterminate plant type.', '- Cutter setting and harvested.', '- 20-25 grams weight.', '- Orange color oval shape.', '- Hight Sweetness.', '- Good aroma.', '- HR: N/A', '- IR: N/A', '9', NULL, '-', 'pdf/docs/2025/09/06/5th1757141406.pdf', 1, 0, 6, 'en', 0, NULL, '2025-10-30 19:22:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(8, 'GCI 1013', 'th/product-detail/8', 'upload/2025/09/06/GCL-1013.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GCL-1013.jpg', NULL, NULL, NULL, '21', '- Indeterminate plant with long crop cycle.', '- Good on spring, autumn.', '- Best for highland and midland in plastic house. Indeterminate plant type.', '- Cutter setting and harvested.', '- 20-25 grams weight.', '- Orange color oval shape.', '- Hight Sweetness.', '- Good aroma.', '- HR: N/A', '- IR: N/A', '9', NULL, '-', 'pdf/docs/2025/09/06/5th1757141406.pdf', 1, 0, 6, 'th', 1, '2025-09-05 23:50:06', '2025-09-05 23:50:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(9, 'GCI 1014', 'en/product-detail/9', 'upload/2025/09/06/GCL-1014.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น--GCL-1014.jpg', NULL, NULL, NULL, '21', '- Indeterminate plant with long crop cycle.', '- Very good growth in dry condition under protected cultivation.', '- Best for spring, autumn at midland and highland in plastic house.', '- Red color round shape 18-20 fruits per cluster.', '- 15-20 grams weight.', '- Big green calyx cause to look fresh with good shelf-life.', '- Sweetness.', '- Good aroma.', '- HR: TYLCV', '- IR: ToMV, Fol:1', '9', NULL, '-', 'pdf/docs/2025/09/06/7th1757141604.pdf', 1, 0, 7, 'en', 0, NULL, '2025-10-30 19:22:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(9, 'GCI 1014', 'th/product-detail/9', 'upload/2025/09/06/GCL-1014.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น--GCL-1014.jpg', NULL, NULL, NULL, '21', '- Indeterminate plant with long crop cycle.', '- Very good growth in dry condition under protected cultivation.', '- Best for spring, autumn at midland and highland in plastic house.', '- Red color round shape 18-20 fruits per cluster.', '- 15-20 grams weight.', '- Big green calyx cause to look fresh with good shelf-life.', '- Sweetness.', '- Good aroma.', '- HR: TYLCV', '- IR: ToMV, Fol:1', '9', NULL, '-', 'pdf/docs/2025/09/06/7th1757141604.pdf', 1, 0, 7, 'th', 1, '2025-09-05 23:53:24', '2025-09-05 23:53:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(10, 'GTC 1149', 'en/product-detail/10', 'upload/2025/09/06/GCL-1149.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น--GCL-1149.jpg', NULL, NULL, NULL, '22', '- Indeterminate plant with long crop cycle.', '- Early to medium muturity.', '- Short internode.', '- Oval chocolate color round shape 10-15 fruits per cluster.', '- Hardness with 15-20 grams weight.', '- Thin skin and big green calyx cause to look fresh with good shelf-life.', '- Cripy taste.', '- Medium sweetness.', '- HR: TYLCV', '- IR: ToMV, Fol:1', '9', NULL, '-', 'pdf/docs/2025/09/23/8th1758594758.pdf', 1, 0, 8, 'en', 0, NULL, '2025-10-30 19:23:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(10, 'GTC 1149', 'th/product-detail/10', 'upload/2025/09/06/GCL-1149.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น--GCL-1149.jpg', NULL, NULL, NULL, '22', '- Indeterminate plant with long crop cycle.', '- Early to medium muturity.', '- Short internode.', '- Oval chocolate color round shape 10-15 fruits per cluster.', '- Hardness with 15-20 grams weight.', '- Thin skin and big green calyx cause to look fresh with good shelf-life.', '- Cripy taste.', '- Medium sweetness.', '- HR: TYLCV', '- IR: ToMV, Fol:1', '9', NULL, '-', 'pdf/docs/2025/09/23/8th1758594758.pdf', 1, 0, 8, 'th', 1, '2025-09-06 00:25:33', '2025-09-22 19:32:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(11, 'GIR 1016', 'en/product-detail/11', 'upload/2025/09/06/GIR-1016.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GIR-1016.jpg', NULL, NULL, NULL, '23', '- Indeterminate plant type.', '- Medium internode.', '- Short cycle.', '- Globe shape.', '- Fruit size, 200-250 grams since first to end cluster.', '- Uniform green with globe shape.', '- Firmness taste.', '- Standard taste.', '- HR: TYLCV, TM2, V, F2, TSWV', '- IR: ToMV, Fol: 1', '9', NULL, '-', 'pdf/docs/2025/09/06/25th1757144329.pdf', 1, 0, 9, 'en', 0, NULL, '2025-10-30 19:23:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(11, 'GIR 1016', 'th/product-detail/11', 'upload/2025/09/06/GIR-1016.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GIR-1016.jpg', NULL, NULL, NULL, '23', '- Indeterminate plant type.', '- Medium internode.', '- Short cycle.', '- Globe shape.', '- Fruit size, 200-250 grams since first to end cluster.', '- Uniform green with globe shape.', '- Firmness taste.', '- Standard taste.', '- HR: TYLCV, TM2, V, F2, TSWV', '- IR: ToMV, Fol: 1', '9', NULL, '-', 'pdf/docs/2025/09/06/25th1757144329.pdf', 1, 0, 9, 'th', 1, '2025-09-06 00:38:49', '2025-09-06 00:38:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(12, 'GIR 1017', 'en/product-detail/12', 'upload/2025/09/06/GIR-1017.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น--GIR-1017.jpg', NULL, NULL, NULL, '23', '- Indeterminate plant type.', '- Medium internode.', '- Short cycle.', '- Globe shape.', '- Fruit size, 200-250 grams since first to end cluster.', '- Green shoulder globe shape.', '- Firmness taste.', '- Standard taste.', '- HR: TYLCV, TM2, V, F2', '- IR: ToMV, Fol: 1', '9', NULL, '-', 'pdf/docs/2025/09/06/24th1757147093.pdf', 1, 0, 10, 'en', 0, NULL, '2025-10-30 19:23:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(12, 'GIR 1017', 'th/product-detail/12', 'upload/2025/09/06/GIR-1017.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น--GIR-1017.jpg', NULL, NULL, NULL, '23', '- Indeterminate plant type.', '- Medium internode.', '- Short cycle.', '- Globe shape.', '- Fruit size, 200-250 grams since first to end cluster.', '- Green shoulder globe shape.', '- Firmness taste.', '- Standard taste.', '- HR: TYLCV, TM2, V, F2', '- IR: ToMV, Fol: 1', '9', NULL, '-', 'pdf/docs/2025/09/06/24th1757147093.pdf', 1, 0, 10, 'th', 1, '2025-09-06 01:24:53', '2025-09-06 01:24:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(13, 'GIR 1045', 'en/product-detail/13', 'upload/2025/09/06/GIR-1045.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GIR-1045.jpg', NULL, NULL, NULL, '23', '- Indeterminate plant type.', '- Short internode.', '- Short cycle.', '- Globe shape.', '- Fruit size, 160-180 grams since first to end cluster.', '- Uniform green with globe shape.', '- Firmness taste.', '- Standard taste.', '- HR: TYLCV, TM2, V, F2', '- IR: ToMV, Fol: 1', '9', NULL, '-', 'pdf/docs/2025/09/06/26th1757147800.pdf', 1, 0, 11, 'en', 0, NULL, '2025-10-30 19:23:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(13, 'GIR 1045', 'th/product-detail/13', 'upload/2025/09/06/GIR-1045.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GIR-1045.jpg', NULL, NULL, NULL, '23', '- Indeterminate plant type.', '- Short internode.', '- Short cycle.', '- Globe shape.', '- Fruit size, 160-180 grams since first to end cluster.', '- Uniform green with globe shape.', '- Firmness taste.', '- Standard taste.', '- HR: TYLCV, TM2, V, F2', '- IR: ToMV, Fol: 1', '9', NULL, '-', 'pdf/docs/2025/09/06/26th1757147800.pdf', 1, 0, 11, 'th', 1, '2025-09-06 01:36:40', '2025-09-06 01:36:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(14, 'GIR 1165', 'en/product-detail/14', 'upload/2025/09/06/GIR-1165.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GIR-1165.jpg', NULL, NULL, NULL, '23', '- Indeterminate plant type.', '- Medium internode.', '- Short cycle.', '- Globe shape.', '- Fruit size, 180-200 grams since first to end cluster.', '- Uniform green with globe shape.', '- Firmness taste.', '- Standard taste.', '- HR: TYLCV, TM2, V, F2', '- IR: TSWV', '9', NULL, 'https://www.youtube.com/embed/Z3SadfWnMzQ?si=LVLQdlNvGb95l5Ah', NULL, 1, 0, 12, 'en', 0, NULL, '2025-10-30 19:36:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(14, 'GIR 1165', 'th/product-detail/14', 'upload/2025/09/06/GIR-1165.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น-GIR-1165.jpg', NULL, NULL, NULL, '23', '- Indeterminate plant type.', '- Medium internode.', '- Short cycle.', '- Globe shape.', '- Fruit size, 180-200 grams since first to end cluster.', '- Uniform green with globe shape.', '- Firmness taste.', '- Standard taste.', '- HR: TYLCV, TM2, V, F2', '- IR: TSWV', '9', NULL, 'https://www.youtube.com/embed/Z3SadfWnMzQ?si=LVLQdlNvGb95l5Ah', '', 1, 0, 12, 'th', 1, '2025-09-06 01:41:32', '2025-09-06 01:41:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(15, 'GRM 1105', 'en/product-detail/15', 'upload/2025/09/06/GRM-1105.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น--GRM-1105.jpg', NULL, NULL, NULL, '68', '- Semi-determinate type.', '- Wide adaptation hybrids.', '- Good branching and medium maturity.', '- Very good firmness.', '- 150-160 grams weight.', '- Deep red roma shape.', '- Firmness taste.', '- Firmness and chiny as market', '- HR: TYLCV', '- IR: N/A', '9', NULL, 'https://www.youtube.com/embed/D_UKUgIkpU0?si=NxKZi8igQyGBYr1D', 'pdf/docs/2025/09/06/16th1757148327.pdf', 1, 0, 13, 'en', 0, NULL, '2025-10-30 19:37:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(15, 'GRM 1105', 'th/product-detail/15', 'upload/2025/09/06/GRM-1105.jpg', NULL, NULL, NULL, 'upload/2025/09/06/ต้น--GRM-1105.jpg', NULL, NULL, NULL, '68', '- Semi-determinate type.', '- Wide adaptation hybrids.', '- Good branching and medium maturity.', '- Very good firmness.', '- 150-160 grams weight.', '- Deep red roma shape.', '- Firmness taste.', '- Firmness and chiny as market', '- HR: TYLCV', '- IR: N/A', '9', NULL, 'https://www.youtube.com/embed/D_UKUgIkpU0?si=NxKZi8igQyGBYr1D', 'pdf/docs/2025/09/06/16th1757148327.pdf', 1, 0, 13, 'th', 1, '2025-09-06 01:45:27', '2025-09-25 19:54:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(16, 'GRM 1128', 'en/product-detail/16', 'upload/2025/09/08/GRM-1128.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น--GRM-1128.jpg', NULL, NULL, NULL, '68', '- Semi-determinate type with exellent branching plant.', '- Good heat setting with cold and warm season.', '- Medium maturity behavior grow.', '- Very good deep red and frimness fruit.', '- 110-120 grams weight.', '- Very good shelf-life ability.', '- Firmness taste.', '- Deep red and chiny as market.', '- HR: TYLCV, TM2, V, F2', '- IR: Bacterial wilt', '9', NULL, '-', 'pdf/docs/2025/09/08/15th1757300529.pdf', 1, 0, 14, 'en', 0, NULL, '2025-10-30 19:37:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(16, 'GRM 1128', 'th/product-detail/16', 'upload/2025/09/08/GRM-1128.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น--GRM-1128.jpg', NULL, NULL, NULL, '68', '- Semi-determinate type with exellent branching plant.', '- Good heat setting with cold and warm season.', '- Medium maturity behavior grow.', '- Very good deep red and frimness fruit.', '- 110-120 grams weight.', '- Very good shelf-life ability.', '- Firmness taste.', '- Deep red and chiny as market.', '- HR: TYLCV, TM2, V, F2', '- IR: Bacterial wilt', '9', NULL, '-', 'pdf/docs/2025/09/08/15th1757300529.pdf', 1, 0, 14, 'th', 1, '2025-09-07 20:02:09', '2025-09-25 19:53:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(17, 'GRM 1158', 'en/product-detail/17', 'upload/2025/09/08/GRM-1158.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GRM-1158.jpg', NULL, NULL, NULL, '68', '- Semi-determinate type.', '- Wide adaptation hybrids.', '- Good branching and medium maturity.', '- Very good firmness.', '- 180-200 grams weight.', '- Deep red roma shape.', '- Firmness taste.', '- Firmness and chiny as market', '- HR: TYLCV', '- IR: N/A', '9', NULL, '-', 'pdf/docs/2025/09/08/17th1757302711.pdf', 1, 0, 15, 'en', 0, NULL, '2025-10-30 19:37:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(17, 'GRM 1158', 'th/product-detail/17', 'upload/2025/09/08/GRM-1158.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GRM-1158.jpg', NULL, NULL, NULL, '68', '- Semi-determinate type.', '- Wide adaptation hybrids.', '- Good branching and medium maturity.', '- Very good firmness.', '- 180-200 grams weight.', '- Deep red roma shape.', '- Firmness taste.', '- Firmness and chiny as market', '- HR: TYLCV', '- IR: N/A', '9', NULL, '-', 'pdf/docs/2025/09/08/17th1757302711.pdf', 1, 0, 15, 'th', 1, '2025-09-07 20:38:31', '2025-09-25 19:56:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(18, 'GBR 1008', 'en/product-detail/18', 'upload/2025/09/08/GBR-1008.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GBR-1008.jpg', NULL, NULL, NULL, '54', '- Short internode.', '- Strong plant variety.', '- Embrella shape.', '- Fruit weight is 180-220 grams.', '- Attractive color green to deep red.', '- Blocky shape.', '- Sweet taste.', '- Good keeping ability.', '- HR: TSWV', '- IR: N/A', '15', NULL, 'https://www.youtube.com/embed/rEifyQlw3-s?si=9cxKoYDZdCptmkqA', 'pdf/docs/2025/09/26/GBR 1008th1758880633.pdf', 1, 0, 16, 'en', 0, NULL, '2025-10-30 19:37:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(18, 'GBR 1008', 'th/product-detail/18', 'upload/2025/09/08/GBR-1008.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GBR-1008.jpg', NULL, NULL, NULL, '54', '- Short internode.', '- Strong plant variety.', '- Embrella shape.', '- Fruit weight is 180-220 grams.', '- Attractive color green to deep red.', '- Blocky shape.', '- Sweet taste.', '- Good keeping ability.', '- HR: TSWV', '- IR: N/A', '15', NULL, 'https://www.youtube.com/embed/rEifyQlw3-s?si=9cxKoYDZdCptmkqA', 'pdf/docs/2025/09/26/GBR 1008th1758880633.pdf', 1, 0, 16, 'th', 1, '2025-09-07 23:29:40', '2025-09-26 02:57:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(19, 'GBY 1004', 'en/product-detail/19', 'upload/2025/09/08/GBY-1004.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GBY-1004.jpg', NULL, NULL, NULL, '29', '- Short internode.', '- Strong plant variety.', '- Embrella shape.', '- Fruit weight is 180-250 grams.', '- Attractive color green to yellow.', '- Blocky shape.', '- Sweet taste.', '- Good keeping ability.', '- HR: TSWV', '- IR: N/A', '15', NULL, 'https://www.youtube.com/embed/SlhYV111o_A?si=l-ZBDiDb91QFKFub', 'pdf/docs/2025/09/08/3th1757313534.pdf', 1, 1, 17, 'en', 0, NULL, '2025-10-30 19:37:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(19, 'GBY 1004', 'th/product-detail/19', 'upload/2025/09/08/GBY-1004.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GBY-1004.jpg', NULL, NULL, NULL, '29', '- Short internode.', '- Strong plant variety.', '- Embrella shape.', '- Fruit weight is 180-250 grams.', '- Attractive color green to yellow.', '- Blocky shape.', '- Sweet taste.', '- Good keeping ability.', '- HR: TSWV', '- IR: N/A', '15', NULL, 'https://www.youtube.com/embed/SlhYV111o_A?si=l-ZBDiDb91QFKFub', 'pdf/docs/2025/09/08/3th1757313534.pdf', 1, 1, 17, 'th', 1, '2025-09-07 23:38:54', '2025-09-16 01:35:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(20, 'GLS 1015', 'en/product-detail/20', 'upload/2025/09/08/GLG-1015.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GLG-1015.jpg', NULL, NULL, NULL, '31', '- Short internode.', '- Strong plant variety.', '- Good continuer flowering and setting in green house.', '- Fruit length 20-25 cm.', '- Conical shape.', '- Light green color skin.', '- Sweet taste.', '- Smoot and crispy skin.', '- HR: N/A', '- IR: N/A', '15', NULL, 'https://www.youtube.com/embed/fOdXOe4leS8?si=ovXX2wT3pPiCtWVh', 'pdf/docs/2025/09/26/GLS 1015 ข้อมูล PDFth1758870336.pdf', 1, 0, 18, 'en', 0, NULL, '2025-10-30 19:37:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(20, 'GLS 1015', 'th/product-detail/20', 'upload/2025/09/08/GLG-1015.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GLG-1015.jpg', NULL, NULL, NULL, '31', '- Short internode.', '- Strong plant variety.', '- Good continuer flowering and setting in green house.', '- Fruit length 20-25 cm.', '- Conical shape.', '- Light green color skin.', '- Sweet taste.', '- Smoot and crispy skin.', '- HR: N/A', '- IR: N/A', '15', NULL, 'https://www.youtube.com/embed/fOdXOe4leS8?si=ovXX2wT3pPiCtWVh', 'pdf/docs/2025/09/26/GLS 1015 ข้อมูล PDFth1758870336.pdf', 1, 0, 18, 'th', 1, '2025-09-07 23:42:34', '2025-09-26 02:59:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(21, 'GLS 1045', 'en/product-detail/21', 'upload/2025/09/08/GLG-1045.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GLG-1045.jpg', NULL, NULL, NULL, '31', '- Short internode.', '- Strong plant variety.', '- Good continuer flowering and setting in green house.', '- Fruit length 18- 20 cm.', '- Conical shape.', '- White and yellow color.', '- Sweet taste.', '- Smoot and crispy skin.', '- HR: N/A', '- IR: N/A', '15', NULL, 'https://www.youtube.com/embed/sRzRtoq5xMw?si=Yiaj-ulWPrVWh5Wu', 'pdf/docs/2025/09/26/GLS  1045 ข้อมูล PDFth1758869909.pdf', 1, 1, 19, 'en', 0, NULL, '2025-10-30 19:38:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(21, 'GLS 1045', 'th/product-detail/21', 'upload/2025/09/08/GLG-1045.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GLG-1045.jpg', NULL, NULL, NULL, '31', '- Short internode.', '- Strong plant variety.', '- Good continuer flowering and setting in green house.', '- Fruit length 18- 20 cm.', '- Conical shape.', '- White and yellow color.', '- Sweet taste.', '- Smoot and crispy skin.', '- HR: N/A', '- IR: N/A', '15', NULL, 'https://www.youtube.com/embed/sRzRtoq5xMw?si=Yiaj-ulWPrVWh5Wu', 'pdf/docs/2025/09/26/GLS  1045 ข้อมูล PDFth1758869909.pdf', 1, 1, 19, 'th', 1, '2025-09-07 23:46:04', '2025-09-26 02:59:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(22, 'GLG 1069', 'en/product-detail/22', 'upload/2025/09/08/GLG-1069.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GLG-1069.jpg', NULL, NULL, NULL, '30', '- Medium tall plant.', '- Long-term growth and continuous flowering.', '- Well adaptability for Asia.', '- Fruit length 18-20 cm.', '- smooth skin with light yellow color good for marketable color.', '-', '- Medium spicy.', '- Chinny skill.', '- HR: N/A', '- IR: N/A', '16', NULL, 'https://www.youtube.com/embed/8vinKuWGfO8?si=NlGzRNmzfgiGBy3b', 'pdf/docs/2025/09/08/Product info (PDF) GLG 1069th1757319974.pdf', 1, 0, 1, 'en', 0, NULL, '2025-10-30 19:20:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(22, 'GLG 1069', 'th/product-detail/22', 'upload/2025/09/08/GLG-1069.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GLG-1069.jpg', NULL, NULL, NULL, '30', '- Medium tall plant.', '- Long-term growth and continuous flowering.', '- Well adaptability for Asia.', '- Fruit length 18-20 cm.', '- smooth skin with light yellow color good for marketable color.', '-', '- Medium spicy.', '- Chinny skill.', '- HR: N/A', '- IR: N/A', '16', NULL, 'https://www.youtube.com/embed/8vinKuWGfO8?si=NlGzRNmzfgiGBy3b', 'pdf/docs/2025/09/08/Product info (PDF) GLG 1069th1757319974.pdf', 1, 0, 1, 'th', 1, '2025-09-08 01:26:14', '2025-09-26 00:36:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(23, 'GUR 1011', 'en/product-detail/23', 'upload/2025/09/08/GUR-1011.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GUR-1011.jpg', NULL, NULL, NULL, '36', '- Medium maturity.', '- Big leaf that good for leaf covering.', '- Continues flowering after harvested.', '- Drak green Fruit.', '- Length 9-10 cm and big size fruit.', '- Medium firmness good for dried market.', '- Hight spicy.', '- Aroma taste.', '- HR: BW', '- IR: N/A', '16', NULL, 'https://www.youtube.com/embed/fPoAzKpV2SE?si=3-e6ZgZerJHM5FTZ', 'pdf/docs/2025/09/26/ข้อมูล GUR 1011th1758872886.pdf', 1, 0, 2, 'en', 0, NULL, '2025-10-30 19:20:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(23, 'GUR 1011', 'th/product-detail/23', 'upload/2025/09/08/GUR-1011.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GUR-1011.jpg', NULL, NULL, NULL, '36', '- Medium maturity.', '- Big leaf that good for leaf covering.', '- Continues flowering after harvested.', '- Drak green Fruit.', '- Length 9-10 cm and big size fruit.', '- Medium firmness good for dried market.', '- Hight spicy.', '- Aroma taste.', '- HR: BW', '- IR: N/A', '16', NULL, 'https://www.youtube.com/embed/fPoAzKpV2SE?si=3-e6ZgZerJHM5FTZ', 'pdf/docs/2025/09/26/ข้อมูล GUR 1011th1758872886.pdf', 1, 0, 2, 'th', 1, '2025-09-08 01:45:10', '2025-09-26 00:48:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(24, 'GUR 1064', 'en/product-detail/24', 'upload/2025/09/08/GUR-1064.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GUR-1064.jpg', NULL, NULL, NULL, '36', '- Ealry maturity.', '- Medium plant hight.', '- Well adaptability for Asia.', '- Medium green fruit.', '- Length 11-12 cm with smooth skin.', '- Good firmness that good fruit weight.', '- Medium spicy.', '- aroma taste.', '- HR: BW', '- IR: N/A', '16', NULL, 'https://www.youtube.com/embed/oGJJLAiH7XU?si=LWzKxia1q7-jQHdd', 'pdf/docs/2025/09/26/Product info (PDF) GUR 1064th1758877866.pdf', 1, 0, 3, 'en', 0, NULL, '2025-10-30 19:21:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(24, 'GUR 1064', 'th/product-detail/24', 'upload/2025/09/08/GUR-1064.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GUR-1064.jpg', NULL, NULL, NULL, '36', '- Ealry maturity.', '- Medium plant hight.', '- Well adaptability for Asia.', '- Medium green fruit.', '- Length 11-12 cm with smooth skin.', '- Good firmness that good fruit weight.', '- Medium spicy.', '- aroma taste.', '- HR: BW', '- IR: N/A', '16', NULL, 'https://www.youtube.com/embed/oGJJLAiH7XU?si=LWzKxia1q7-jQHdd', 'pdf/docs/2025/09/26/Product info (PDF) GUR 1064th1758877866.pdf', 1, 0, 3, 'th', 1, '2025-09-08 01:46:59', '2025-09-26 02:11:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(25, 'GCS 1010', 'en/product-detail/25', 'upload/2025/09/08/GCS-1010.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GCS-1010.jpg', NULL, NULL, NULL, '44', '- Medium maturity.', '- Short internode.', '- Strong plant vigor.', '- 12-15 Kg weight.', '- Oval round to longer shape.', '- Deep red color and good transpontation.', '- Sweetness.', '- Crispy texture.', '- HR: For 0,1', '- IR: Anthracnose (Co)', '17', NULL, 'https://www.youtube.com/embed/Mhx_NIPl-_I?si=CQzcIdMc2yaFC4_s', 'pdf/docs/2025/09/08/Product info (PDF) GCS 1010th1757321399.pdf', 1, 1, 1, 'en', 0, NULL, '2025-10-30 19:19:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(25, 'GCS 1010', 'th/product-detail/25', 'upload/2025/09/08/GCS-1010.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GCS-1010.jpg', NULL, NULL, NULL, '44', '- Medium maturity.', '- Short internode.', '- Strong plant vigor.', '- 12-15 Kg weight.', '- Oval round to longer shape.', '- Deep red color and good transpontation.', '- Sweetness.', '- Crispy texture.', '- HR: For 0,1', '- IR: Anthracnose (Co)', '17', NULL, 'https://www.youtube.com/embed/Mhx_NIPl-_I?si=CQzcIdMc2yaFC4_s', 'pdf/docs/2025/09/08/Product info (PDF) GCS 1010th1757321399.pdf', 1, 1, 1, 'th', 1, '2025-09-08 01:49:59', '2025-09-12 00:30:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(26, 'GCS 1011', 'en/product-detail/26', 'upload/2025/09/08/GCS-1011.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GCS-1011.jpg', NULL, NULL, NULL, '44', '- Exceedingly early maturity.', '- Very good leaf covering protected sunburn.', '- Up right leaf strong plant vigor.', '- 12-15 Kg weight.', '- Oval round shape.', '- Red fresh color with good firmness.', '- Sweetness.', '- Crispy texture.', '- HR: For 0,1', '- IR: Anthracnose (Co)', '17', NULL, 'https://www.youtube.com/embed/kABJpBlUZWo?si=1hBcxncSdAKUM_1G', 'pdf/docs/2025/09/08/Product info (PDF) GCS 1011th1757321518.pdf', 1, 0, 2, 'en', 0, NULL, '2025-10-30 19:20:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(26, 'GCS 1011', 'th/product-detail/26', 'upload/2025/09/08/GCS-1011.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GCS-1011.jpg', NULL, NULL, NULL, '44', '- Exceedingly early maturity.', '- Very good leaf covering protected sunburn.', '- Up right leaf strong plant vigor.', '- 12-15 Kg weight.', '- Oval round shape.', '- Red fresh color with good firmness.', '- Sweetness.', '- Crispy texture.', '- HR: For 0,1', '- IR: Anthracnose (Co)', '17', NULL, 'https://www.youtube.com/embed/kABJpBlUZWo?si=1hBcxncSdAKUM_1G', 'pdf/docs/2025/09/08/Product info (PDF) GCS 1011th1757321518.pdf', 1, 0, 2, 'th', 1, '2025-09-08 01:51:58', '2025-09-08 01:55:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(27, 'GCS 1035', 'en/product-detail/27', 'upload/2025/09/08/GCS-1035.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GCS-1035.jpg', NULL, NULL, NULL, '44', '- Very good leaf covering.', '- Big leaf.', '- Up right strong plant vigor.', '- 12-15 Kg weight.', '- Elonger shape with dark skill crimson.', '- Very good firmness and red fresh.', '- Sweetness.', '- Crispy texture.', '- HR: For 0,1', '- IR: Anthracnose (Co)', '17', NULL, 'https://www.youtube.com/embed/V1QKSQrrmJw?si=boBs0SUv7ssHBRWS', 'pdf/docs/2025/09/08/Product info (PDF) GCS 1035th1757321852.pdf', 1, 0, 3, 'en', 0, NULL, '2025-10-30 19:21:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(27, 'GCS 1035', 'th/product-detail/27', 'upload/2025/09/08/GCS-1035.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GCS-1035.jpg', NULL, NULL, NULL, '44', '- Very good leaf covering.', '- Big leaf.', '- Up right strong plant vigor.', '- 12-15 Kg weight.', '- Elonger shape with dark skill crimson.', '- Very good firmness and red fresh.', '- Sweetness.', '- Crispy texture.', '- HR: For 0,1', '- IR: Anthracnose (Co)', '17', NULL, 'https://www.youtube.com/embed/V1QKSQrrmJw?si=boBs0SUv7ssHBRWS', 'pdf/docs/2025/09/08/Product info (PDF) GCS 1035th1757321852.pdf', 1, 0, 3, 'th', 1, '2025-09-08 01:57:32', '2025-09-08 01:57:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(28, 'GSL 1040', 'en/product-detail/28', 'upload/2025/09/08/GSL-1040.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GSL-1040.jpg', NULL, NULL, NULL, '45', '- Exceedingly ealry maturity.', '- Short internode.', '- Easy fruit setting seedless.', '- 3-4 Kg weight.', '- High eating quality with black and glossy skill color.', '- Very deep red fresh color.', '- Hight sweetness', '- Crispy texture.', '- HR: For 0,1', '- IR: Anthracnose (Co)', '17', NULL, 'https://www.youtube.com/embed/iJnegljsS8E?si=vItoWw4i8tGiHTss', 'pdf/docs/2025/09/08/Product info (PDF) GSL 1040th1757321949.pdf', 1, 0, 4, 'en', 0, NULL, '2025-10-30 19:22:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(28, 'GSL 1040', 'th/product-detail/28', 'upload/2025/09/08/GSL-1040.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GSL-1040.jpg', NULL, NULL, NULL, '45', '- Exceedingly ealry maturity.', '- Short internode.', '- Easy fruit setting seedless.', '- 3-4 Kg weight.', '- High eating quality with black and glossy skill color.', '- Very deep red fresh color.', '- Hight sweetness', '- Crispy texture.', '- HR: For 0,1', '- IR: Anthracnose (Co)', '17', NULL, 'https://www.youtube.com/embed/iJnegljsS8E?si=vItoWw4i8tGiHTss', 'pdf/docs/2025/09/08/Product info (PDF) GSL 1040th1757321949.pdf', 1, 0, 4, 'th', 1, '2025-09-08 01:59:09', '2025-09-08 01:59:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(29, 'GLW 1004', 'en/product-detail/29', 'upload/2025/09/08/GLW-1004.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GLW-1004.jpg', NULL, NULL, NULL, '47', '- Short internode.', '- Early maturity.', '- well adaptation for cool condition.', '- Cylindrical shape 16-20 cm fruit.', '- High setting under cool conditions.', '- Cutter setting.', '- Cooking taste.', '- Firmness taste.', '- HR: N/A', '- IR: N/A', '18', NULL, 'https://www.youtube.com/embed/KbHroY6mqCs?si=VAIfM7BezhjWMALK', 'pdf/docs/2025/09/08/Product info (PDF) GLW 1004th1757322188.pdf', 1, 0, 1, 'en', 0, NULL, '2025-10-30 19:19:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(29, 'GLW 1004', 'th/product-detail/29', 'upload/2025/09/08/GLW-1004.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GLW-1004.jpg', NULL, NULL, NULL, '47', '- Short internode.', '- Early maturity.', '- well adaptation for cool condition.', '- Cylindrical shape 16-20 cm fruit.', '- High setting under cool conditions.', '- Cutter setting.', '- Cooking taste.', '- Firmness taste.', '- HR: N/A', '- IR: N/A', '18', NULL, 'https://www.youtube.com/embed/KbHroY6mqCs?si=VAIfM7BezhjWMALK', 'pdf/docs/2025/09/08/Product info (PDF) GLW 1004th1757322188.pdf', 1, 0, 1, 'th', 1, '2025-09-08 02:03:08', '2025-09-08 02:03:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(30, 'GRP 1001', 'en/product-detail/30', 'upload/2025/09/08/GRP-1001-2.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GRP-1001.jpg', NULL, NULL, NULL, '48', '- Mid-internode.', '- Strong plant.', '- Umbrella plant shape.', '- 8-10 cm fruit size.', '- Green calyx.', '- Slower seeds development that good meat.', '- Meat fresh.', '- Soft texture.', '- HR: N/A', '- IR: N/A', '18', NULL, 'https://www.youtube.com/embed/7McJgaf5t3k?si=iYFZuc2GeYoZu6yl', 'pdf/docs/2025/09/08/Product info (PDF) GRP 1001th1757322933.pdf', 1, 0, 2, 'en', 0, NULL, '2025-10-30 19:20:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(30, 'GRP 1001', 'th/product-detail/30', 'upload/2025/09/08/GRP-1001-2.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GRP-1001.jpg', NULL, NULL, NULL, '48', '- Mid-internode.', '- Strong plant.', '- Umbrella plant shape.', '- 8-10 cm fruit size.', '- Green calyx.', '- Slower seeds development that good meat.', '- Meat fresh.', '- Soft texture.', '- HR: N/A', '- IR: N/A', '18', NULL, 'https://www.youtube.com/embed/7McJgaf5t3k?si=iYFZuc2GeYoZu6yl', 'pdf/docs/2025/09/08/Product info (PDF) GRP 1001th1757322933.pdf', 1, 0, 2, 'th', 1, '2025-09-08 02:15:33', '2025-09-08 02:15:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(31, 'GHB 1002', 'en/product-detail/31', 'upload/2025/09/08/GLP-1002.jpg', NULL, NULL, NULL, 'upload/2025/09/26/ต้น-GLP-1002(1).jpg', NULL, NULL, NULL, '56', '- Mid-internode.', '- Strong plant.', '- Umbrella plant shape.', '- 12-18 cm medium long.', '- Green calyx.', '- Back color with glossy skill.', '- Cooking taste.', '- Firmness taste.', '- HR: N/A', '- IR: N/A', '18', NULL, 'https://www.youtube.com/embed/b_SjnuGRcP8?si=xyKPEkq6EkKijeW0', 'pdf/docs/2025/09/26/GHB 1002 -Product infoth1758876351.pdf', 1, 0, 3, 'en', 0, NULL, '2025-10-30 19:21:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(31, 'GHB 1002', 'th/product-detail/31', 'upload/2025/09/08/GLP-1002.jpg', NULL, NULL, NULL, 'upload/2025/09/26/ต้น-GLP-1002(1).jpg', NULL, NULL, NULL, '56', '- Mid-internode.', '- Strong plant.', '- Umbrella plant shape.', '- 12-18 cm medium long.', '- Green calyx.', '- Back color with glossy skill.', '- Cooking taste.', '- Firmness taste.', '- HR: N/A', '- IR: N/A', '18', NULL, 'https://www.youtube.com/embed/b_SjnuGRcP8?si=xyKPEkq6EkKijeW0', 'pdf/docs/2025/09/26/GHB 1002 -Product infoth1758876351.pdf', 1, 0, 3, 'th', 1, '2025-09-08 02:17:37', '2025-09-26 01:45:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(32, 'GHP 1XXX', 'en/product-detail/32', 'upload/2025/09/08/GLP-1XXX.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GLP-1XXX.jpg', NULL, NULL, NULL, '58', '- Short internode.', '- Early maturity.', '- Umbrella plant shape.', '- 16-20 cm medium long.', '- Green calyx.', '- Very glossy pink skill color.', '- Cooking taste.', '- Firmness texture.', '- HR: N/A', '- IR: BW', '18', NULL, '-', 'pdf/docs/2025/10/03/GHP 1XXX ข้อมูล PDFth1759478728.pdf', 1, 0, 4, 'en', 0, NULL, '2025-10-30 19:22:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(32, 'GHP 1XXX', 'th/product-detail/32', 'upload/2025/09/08/GLP-1XXX.jpg', NULL, NULL, NULL, 'upload/2025/09/08/ต้น-GLP-1XXX.jpg', NULL, NULL, NULL, '58', '- Short internode.', '- Early maturity.', '- Umbrella plant shape.', '- 16-20 cm medium long.', '- Green calyx.', '- Very glossy pink skill color.', '- Cooking taste.', '- Firmness texture.', '- HR: N/A', '- IR: BW', '18', NULL, '-', 'pdf/docs/2025/10/03/GHP 1XXX ข้อมูล PDFth1759478728.pdf', 1, 0, 4, 'th', 1, '2025-09-08 02:19:41', '2025-10-03 01:05:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(33, 'GCL 1046', 'en/product-detail/33', 'upload/2025/09/09/GCL-1046.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GCL-1046.jpg', NULL, NULL, NULL, '49', '- Early maturity.', '- Very good leaf covering.', '- Well adaptation on stake and ground culture.', '- 1.5 -2 kg weight.', '- Oval round shape with next skill with color.', '- Good and eary fruit setting hybrids.', '- High sweetness about 14-15 % sugar brix.', '- Orange fresh and crispy texture.', '- HR: PM, DM', '- IR: N/A', '19', NULL, 'https://www.youtube.com/embed/QuHsOYmAcPQ?si=IipxO_pmRugXIQ28', 'pdf/docs/2025/09/09/ข้อมูล GCL 1046th1757386555.pdf', 1, 0, 1, 'en', 0, NULL, '2025-10-30 19:19:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(33, 'GCL 1046', 'th/product-detail/33', 'upload/2025/09/09/GCL-1046.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GCL-1046.jpg', NULL, NULL, NULL, '49', '- Early maturity.', '- Very good leaf covering.', '- Well adaptation on stake and ground culture.', '- 1.5 -2 kg weight.', '- Oval round shape with next skill with color.', '- Good and eary fruit setting hybrids.', '- High sweetness about 14-15 % sugar brix.', '- Orange fresh and crispy texture.', '- HR: PM, DM', '- IR: N/A', '19', NULL, 'https://www.youtube.com/embed/QuHsOYmAcPQ?si=IipxO_pmRugXIQ28', 'pdf/docs/2025/09/09/ข้อมูล GCL 1046th1757386555.pdf', 1, 0, 1, 'th', 1, '2025-09-08 19:55:55', '2025-09-08 19:55:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(34, 'GCL 1062', 'en/product-detail/34', 'upload/2025/09/09/GCL-1062.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GCL-1062.jpg', NULL, NULL, NULL, '49', '- Early maturity.', '- Big leaf with good foliage cover.', '- Well adaptation on stake and ground culture.', '- 1.5 -2 kg weight.', '- Oval round shape with small skill with color.', '- Good and eary fruit setting hybrids.', '- High sweetness about 14-16 % sugar brix.', '- Orange fresh and good keeping ability.', '- HR: PM, DM', '- IR: N/A', '19', NULL, 'https://www.youtube.com/embed/vt6DQik7Vtg?si=9dL8tD-8Fd6d5SKO', 'pdf/docs/2025/09/09/ข้อมูล GCL 1062th1757386934.pdf', 1, 0, 2, 'en', 0, NULL, '2025-10-30 19:20:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(34, 'GCL 1062', 'th/product-detail/34', 'upload/2025/09/09/GCL-1062.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GCL-1062.jpg', NULL, NULL, NULL, '49', '- Early maturity.', '- Big leaf with good foliage cover.', '- Well adaptation on stake and ground culture.', '- 1.5 -2 kg weight.', '- Oval round shape with small skill with color.', '- Good and eary fruit setting hybrids.', '- High sweetness about 14-16 % sugar brix.', '- Orange fresh and good keeping ability.', '- HR: PM, DM', '- IR: N/A', '19', NULL, 'https://www.youtube.com/embed/vt6DQik7Vtg?si=9dL8tD-8Fd6d5SKO', 'pdf/docs/2025/09/09/ข้อมูล GCL 1062th1757386934.pdf', 1, 0, 2, 'th', 1, '2025-09-08 20:02:14', '2025-09-08 20:02:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(35, 'GGL 1022', 'en/product-detail/35', 'upload/2025/09/09/GGL-1022.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GGL-1022.jpg', NULL, NULL, NULL, '50', '- Early maturity.', '- Short internode.', '- Strong leaf and good branching.', '- 0.8-1 kg weight.', '- Round shape good tuning skill.', '- Good setting about 4-6 fruit per plant.', '- Creamy fresh and soft texture.', '- Very hight aroma.', '- HR: PM, DM', '- IR: N/A', '19', NULL, '-', 'pdf/docs/2025/09/09/ข้อมูล GGL 1022th1757387956.pdf', 1, 0, 3, 'en', 0, NULL, '2025-10-30 19:20:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(35, 'GGL 1022', 'th/product-detail/35', 'upload/2025/09/09/GGL-1022.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GGL-1022.jpg', NULL, NULL, NULL, '50', '- Early maturity.', '- Short internode.', '- Strong leaf and good branching.', '- 0.8-1 kg weight.', '- Round shape good tuning skill.', '- Good setting about 4-6 fruit per plant.', '- Creamy fresh and soft texture.', '- Very hight aroma.', '- HR: PM, DM', '- IR: N/A', '19', NULL, '-', 'pdf/docs/2025/09/09/ข้อมูล GGL 1022th1757387956.pdf', 1, 0, 3, 'th', 1, '2025-09-08 20:19:16', '2025-09-08 20:19:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(36, 'GGL 1038', 'en/product-detail/36', 'upload/2025/09/09/GGL-1038.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GGL-1038.jpg', NULL, NULL, NULL, '50', '- Early maturity.', '- Short internode.', '- Upright leaf and good branching.', '- 0.8-1 kg weight.', '- Round shape will yellow net skill color.', '- Good setting about 4-6 fruit per plant.', '- Creamy fresh and soft texture.', '- Very hight aroma.', '- HR: PM, DM', '- IR: N/A', '19', NULL, NULL, 'pdf/docs/2025/09/09/ข้อมูล GGL 1038th1757389215.pdf', 1, 0, 4, 'en', 0, NULL, '2025-10-30 19:21:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(36, 'GGL 1038', 'th/product-detail/36', 'upload/2025/09/09/GGL-1038.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GGL-1038.jpg', NULL, NULL, NULL, '50', '- Early maturity.', '- Short internode.', '- Upright leaf and good branching.', '- 0.8-1 kg weight.', '- Round shape will yellow net skill color.', '- Good setting about 4-6 fruit per plant.', '- Creamy fresh and soft texture.', '- Very hight aroma.', '- HR: PM, DM', '- IR: N/A', '19', NULL, NULL, 'pdf/docs/2025/09/09/ข้อมูล GGL 1038th1757389215.pdf', 1, 0, 4, 'th', 1, '2025-09-08 20:40:15', '2025-09-08 20:40:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(37, 'GSQ 1019', 'en/product-detail/37', 'upload/2025/09/09/GSQ-1019.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น--GSQ-1019.jpg', NULL, NULL, NULL, '25', '- Semi-determinate type.', '- Good heat setting hybrids.', '- Have good heat set and foliar tolerance.', '- Square shape white deep red and excelenge frimness.', '- 100-120 grams weight.', '- Ealry maturity.', '- Deep red chiny as market.', '- Firmness taste.', '- HR: TYLCV', '- IR: ToMV, Fol:1', '9', NULL, 'https://www.youtube.com/embed/U3xRaa8lqQ8?si=u3jEc-guKuEs1XX4', 'pdf/docs/2025/09/09/GSQ 1019th1757389775.pdf', 1, 0, 16, 'en', 0, NULL, '2025-10-30 19:37:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(37, 'GSQ 1019', 'th/product-detail/37', 'upload/2025/09/09/GSQ-1019.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น--GSQ-1019.jpg', NULL, NULL, NULL, '25', '- Semi-determinate type.', '- Good heat setting hybrids.', '- Have good heat set and foliar tolerance.', '- Square shape white deep red and excelenge frimness.', '- 100-120 grams weight.', '- Ealry maturity.', '- Deep red chiny as market.', '- Firmness taste.', '- HR: TYLCV', '- IR: ToMV, Fol:1', '9', NULL, 'https://www.youtube.com/embed/U3xRaa8lqQ8?si=u3jEc-guKuEs1XX4', 'pdf/docs/2025/09/09/GSQ 1019th1757389775.pdf', 1, 0, 16, 'th', 1, '2025-09-08 20:49:35', '2025-09-08 20:49:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(38, 'GSQ 1090', 'en/product-detail/38', 'upload/2025/09/09/GSQ-1090.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GSQ-1090.jpg', NULL, NULL, NULL, '25', '- Determinate plant.', '- Good heat setting hybrids.', '- Strong TYLCV disease resistance.', '- Square shape white deep red and excelenge frimness.', '- 90-100 grams weight.', '- Super ealry maturity.', '- Firmness taste.', '- Firmness and chiny as market.', '- HR: TYLCV, TM2, V, F2', '- IR: N/A', '9', NULL, 'https://www.youtube.com/embed/FZWKSGan7wA?si=oeJHI7CkVRCr-e7Y', 'pdf/docs/2025/09/09/22th1757389966.pdf', 1, 0, 17, 'en', 0, NULL, '2025-10-30 19:37:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `title`, `short_url`, `thumbnail_link`, `thumbnail_title`, `thumbnail_alt`, `thumbnail_size`, `thumbnail_second_link`, `thumbnail_second_title`, `thumbnail_second_alt`, `thumbnail_second_size`, `seement`, `plant_1`, `plant_2`, `plant_3`, `fruit_1`, `fruit_2`, `fruit_3`, `taste_1`, `taste_2`, `disease_1`, `disease_2`, `category`, `redirect`, `link_youtube`, `doc_link`, `display`, `pin`, `priority`, `language`, `defaults`, `created_at`, `updated_at`, `slug`, `keyword`, `description`, `freetag`, `h1`, `h2`, `tags`, `link_facebook`, `link_twitter`, `link_instagram`, `link_line`, `post_view`, `meta_tag`, `meta_title`, `meta_description`, `last_update_by`) VALUES
(38, 'GSQ 1090', 'th/product-detail/38', 'upload/2025/09/09/GSQ-1090.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GSQ-1090.jpg', NULL, NULL, NULL, '25', '- Determinate plant.', '- Good heat setting hybrids.', '- Strong TYLCV disease resistance.', '- Square shape white deep red and excelenge frimness.', '- 90-100 grams weight.', '- Super ealry maturity.', '- Firmness taste.', '- Firmness and chiny as market.', '- HR: TYLCV, TM2, V, F2', '- IR: N/A', '9', NULL, 'https://www.youtube.com/embed/FZWKSGan7wA?si=oeJHI7CkVRCr-e7Y', 'pdf/docs/2025/09/09/22th1757389966.pdf', 1, 0, 17, 'th', 1, '2025-09-08 20:52:46', '2025-09-09 01:31:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(39, 'GSQ 1093', 'en/product-detail/39', 'upload/2025/09/09/GSQ-1093.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น--GSQ-1093.jpg', NULL, NULL, NULL, '25', '- Determinate plant.', '- Good hot and humidity fruit setting hybrids.', '- Vigorous green healthy and good blanching with good leaf foliage cover.', '- Square shape white deep red and excelenge frimness.', '- 90-100 grams weight.', '- Super ealry maturity.', '- Firmness taste.', '- Deep red chiny as market.', '- HR: TYLCV, TM2, V, F2', '- IR: Bacterial wilt', '9', NULL, 'https://www.youtube.com/embed/6j6-7jH9DYM?si=gVTppl_6No85okdG', 'pdf/docs/2025/09/09/23th1757390161.pdf', 1, 0, 18, 'en', 0, NULL, '2025-10-30 19:37:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(39, 'GSQ 1093', 'th/product-detail/39', 'upload/2025/09/09/GSQ-1093.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น--GSQ-1093.jpg', NULL, NULL, NULL, '25', '- Determinate plant.', '- Good hot and humidity fruit setting hybrids.', '- Vigorous green healthy and good blanching with good leaf foliage cover.', '- Square shape white deep red and excelenge frimness.', '- 90-100 grams weight.', '- Super ealry maturity.', '- Firmness taste.', '- Deep red chiny as market.', '- HR: TYLCV, TM2, V, F2', '- IR: Bacterial wilt', '9', NULL, 'https://www.youtube.com/embed/6j6-7jH9DYM?si=gVTppl_6No85okdG', 'pdf/docs/2025/09/09/23th1757390161.pdf', 1, 0, 18, 'th', 1, '2025-09-08 20:56:01', '2025-09-08 20:56:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(40, 'GSQ 1123', 'en/product-detail/40', 'upload/2025/09/09/GSQ-1123.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GSQ-1123.jpg', NULL, NULL, NULL, '25', '- Semi-determinate type.', '- Wide adaptation hybrids.', '- Good branching and medium maturity.', '- Square shape white deep red.', '- 100-120 grams weight.', '- Medium maturity.', '- Firmness taste.', '- Deep red chiny as market.', '- HR: TYLCV,TM2, V, F2', '- IR: Bacterial wilt.', '9', NULL, 'https://www.youtube.com/embed/AW0z7EmzgXk?si=EeK6sA_vP2fJl-xU', 'pdf/docs/2025/09/09/18th1757390344.pdf', 1, 0, 19, 'en', 0, NULL, '2025-10-30 19:38:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(40, 'GSQ 1123', 'th/product-detail/40', 'upload/2025/09/09/GSQ-1123.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GSQ-1123.jpg', NULL, NULL, NULL, '25', '- Semi-determinate type.', '- Wide adaptation hybrids.', '- Good branching and medium maturity.', '- Square shape white deep red.', '- 100-120 grams weight.', '- Medium maturity.', '- Firmness taste.', '- Deep red chiny as market.', '- HR: TYLCV,TM2, V, F2', '- IR: Bacterial wilt.', '9', NULL, 'https://www.youtube.com/embed/AW0z7EmzgXk?si=EeK6sA_vP2fJl-xU', 'pdf/docs/2025/09/09/18th1757390344.pdf', 1, 0, 19, 'th', 1, '2025-09-08 20:59:04', '2025-09-08 20:59:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(42, 'GSQ 1124', 'en/product-detail/42', 'upload/2025/09/09/GSQ-1124.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น--GSQ-1124.jpg', NULL, NULL, NULL, '25', '- Semi-determinate type.', '- Good heat setting hybrids.', '- Have good heat set and foliar tolerance.', '- Square shape white deep red and excelenge frimness.', '- 100-120 grams weight.', '- Medium maturity.', '- Firmness taste.', '- Firmness and chiny as market.', '- HR: TYLCV', '- IR: ToMV, Fol:1', '9', NULL, '-', 'pdf/docs/2025/09/09/GSQ 1124th1757410271.pdf', 1, 0, 20, 'en', 0, NULL, '2025-10-30 19:39:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(42, 'GSQ 1124', 'th/product-detail/42', 'upload/2025/09/09/GSQ-1124.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น--GSQ-1124.jpg', NULL, NULL, NULL, '25', '- Semi-determinate type.', '- Good heat setting hybrids.', '- Have good heat set and foliar tolerance.', '- Square shape white deep red and excelenge frimness.', '- 100-120 grams weight.', '- Medium maturity.', '- Firmness taste.', '- Firmness and chiny as market.', '- HR: TYLCV', '- IR: ToMV, Fol:1', '9', NULL, '-', 'pdf/docs/2025/09/09/GSQ 1124th1757410271.pdf', 1, 0, 20, 'th', 1, '2025-09-09 01:21:44', '2025-09-09 02:31:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(43, 'GSQ 1160', 'en/product-detail/43', 'upload/2025/09/09/GSQ-1160.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GSQ-1160-1.jpg', NULL, NULL, NULL, '25', '- Determinate plant.', '- Good heat setting hybrids.', '- Strong TYLCV disease resistance.', '- Square shape white deep red and excelenge frimness.', '- 90-100 grams weight.', '- Super ealry maturity.', '- Firmness taste.', '- Deep red chiny as market.', '- HR: TYLCV, TM2, V, F2', '- IR: Bacterial wilt', '9', NULL, '-', 'pdf/docs/2025/09/09/21th1757410413.pdf', 1, 0, 21, 'en', 0, NULL, '2025-10-30 19:39:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(43, 'GSQ 1160', 'th/product-detail/43', 'upload/2025/09/09/GSQ-1160.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GSQ-1160-1.jpg', NULL, NULL, NULL, '25', '- Determinate plant.', '- Good heat setting hybrids.', '- Strong TYLCV disease resistance.', '- Square shape white deep red and excelenge frimness.', '- 90-100 grams weight.', '- Super ealry maturity.', '- Firmness taste.', '- Deep red chiny as market.', '- HR: TYLCV, TM2, V, F2', '- IR: Bacterial wilt', '9', NULL, '-', 'pdf/docs/2025/09/09/21th1757410413.pdf', 1, 0, 21, 'th', 1, '2025-09-09 02:33:33', '2025-09-09 02:34:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(44, 'GSR 1002', 'en/product-detail/44', 'upload/2025/09/09/GSR-1002.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GSR-1002.jpg', NULL, NULL, NULL, '26', '- Semi-determinate plant type.', '- Strong TYLCV resistance.', '- Medium maturity.', '- Ovel round shape.', '- 100-120 grams weight.', '- light green showder color.', '- Firmness taste.', '- Medium red color.', '- HR: TYLCV', '- IR: BW, For', '9', NULL, 'https://www.youtube.com/embed/6L1waMxCZV4?si=OVgSw1zvh5ynjL4W', 'pdf/docs/2025/09/09/13th1757410608.pdf', 1, 0, 22, 'en', 0, NULL, '2025-10-30 19:39:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(44, 'GSR 1002', 'th/product-detail/44', 'upload/2025/09/09/GSR-1002.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GSR-1002.jpg', NULL, NULL, NULL, '26', '- Semi-determinate plant type.', '- Strong TYLCV resistance.', '- Medium maturity.', '- Ovel round shape.', '- 100-120 grams weight.', '- light green showder color.', '- Firmness taste.', '- Medium red color.', '- HR: TYLCV', '- IR: BW, For', '9', NULL, 'https://www.youtube.com/embed/6L1waMxCZV4?si=OVgSw1zvh5ynjL4W', 'pdf/docs/2025/09/09/13th1757410608.pdf', 1, 0, 22, 'th', 1, '2025-09-09 02:36:48', '2025-09-09 02:36:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(45, 'GSR 1092', 'en/product-detail/45', 'upload/2025/09/09/GSR-1092.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GSR-1092.jpg', NULL, NULL, NULL, '26', '- Determinate plant type.', '- Strong TYLCV resistance.', '- Super ealry maturity.', '- Ovel round shape.', '- 120-140 grams weight.', '- Excelleng firmness.', '- Firmness taste.', '- Medium red color.', '- HR: TYLCV,TM2, V, F2 ,PM', '- IR: N/A', '9', NULL, 'https://www.youtube.com/embed/DUBBKfV8DzI?si=i6TkV8Dgw_AvNyg7', 'pdf/docs/2025/09/09/12th1757410784.pdf', 1, 0, 23, 'en', 0, NULL, '2025-10-30 19:39:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(45, 'GSR 1092', 'th/product-detail/45', 'upload/2025/09/09/GSR-1092.jpg', NULL, NULL, NULL, 'upload/2025/09/09/ต้น-GSR-1092.jpg', NULL, NULL, NULL, '26', '- Determinate plant type.', '- Strong TYLCV resistance.', '- Super ealry maturity.', '- Ovel round shape.', '- 120-140 grams weight.', '- Excelleng firmness.', '- Firmness taste.', '- Medium red color.', '- HR: TYLCV,TM2, V, F2 ,PM', '- IR: N/A', '9', NULL, 'https://www.youtube.com/embed/DUBBKfV8DzI?si=i6TkV8Dgw_AvNyg7', 'pdf/docs/2025/09/09/12th1757410784.pdf', 1, 0, 23, 'th', 1, '2025-09-09 02:39:44', '2025-09-09 02:39:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(46, 'GSR 1094', 'en/product-detail/46', 'upload/2025/09/10/GSR-1094.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GSR-1094.jpg', NULL, NULL, NULL, '26', '- Early to medium maturity.', '- Semi-determinate plant.', '- Strong TYLCV resistance.', '- Uniformity fruit with 120-130 grams, square round shape.', '- Excellent firmness and shiny red color.', '- Good for cold to hot condition and long shelf-life.', '- Firmness taste.', '- Good keeping ability.', '- HR: TYLCV', '- IR: BW, For', '9', NULL, 'https://www.youtube.com/embed/R4srAGjpznM?si=z6r7BSELk0TEI1em', 'pdf/docs/2025/09/10/10th1757482907.pdf', 1, 0, 24, 'en', 0, NULL, '2025-10-30 19:39:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(46, 'GSR 1094', 'th/product-detail/46', 'upload/2025/09/10/GSR-1094.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GSR-1094.jpg', NULL, NULL, NULL, '26', '- Early to medium maturity.', '- Semi-determinate plant.', '- Strong TYLCV resistance.', '- Uniformity fruit with 120-130 grams, square round shape.', '- Excellent firmness and shiny red color.', '- Good for cold to hot condition and long shelf-life.', '- Firmness taste.', '- Good keeping ability.', '- HR: TYLCV', '- IR: BW, For', '9', NULL, 'https://www.youtube.com/embed/R4srAGjpznM?si=z6r7BSELk0TEI1em', 'pdf/docs/2025/09/10/10th1757482907.pdf', 1, 0, 24, 'th', 1, '2025-09-09 22:41:47', '2025-09-09 22:41:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(47, 'GSR-1097', 'en/product-detail/47', 'upload/2025/09/10/GSR-1097.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GSR-1097.jpg', NULL, NULL, NULL, '26', '- Semi-determinate plant type.', '- Early to medium muturity.', '- Best for spring, autumn at open field.', '- Oval round shape and deep red.', '- 120-140 grams weight.', '- Highest frimness.', '- Cripy taste.', '- Good keeping ability.', '- HR: TYLCV', '- IR: ToMV, Fol:1', '9', NULL, 'https://www.youtube.com/embed/1bCO3VOm668?si=TL62p0w2NuwdQ3zr', 'pdf/docs/2025/09/10/9th1757485936.pdf', 1, 0, 25, 'en', 0, NULL, '2025-10-30 19:39:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(47, 'GSR-1097', 'th/product-detail/47', 'upload/2025/09/10/GSR-1097.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GSR-1097.jpg', NULL, NULL, NULL, '26', '- Semi-determinate plant type.', '- Early to medium muturity.', '- Best for spring, autumn at open field.', '- Oval round shape and deep red.', '- 120-140 grams weight.', '- Highest frimness.', '- Cripy taste.', '- Good keeping ability.', '- HR: TYLCV', '- IR: ToMV, Fol:1', '9', NULL, 'https://www.youtube.com/embed/1bCO3VOm668?si=TL62p0w2NuwdQ3zr', 'pdf/docs/2025/09/10/9th1757485936.pdf', 1, 0, 25, 'th', 1, '2025-09-09 23:32:16', '2025-09-09 23:32:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(48, 'GSR 1100', 'en/product-detail/48', 'upload/2025/09/10/GSR-1100.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GSR-1100.jpg', NULL, NULL, NULL, '26', '- Very good branching plant.', '- Semi-determinate. Good for heat setting and on cold to warm season.', '- Medium maturity plant.', '- Uniformity with firmness oval round shape of 110-120 grams.', '- Good shiny deep red color.', '- Good for cold to hot condition planting.', '- Firmness taste.', '- Deep red and chiny as market.', '- HR: TYLCV,TM2, V, F2 ,PM', '- IR: BW, For', '9', NULL, '-', 'pdf/docs/2025/09/10/11th1757489070.pdf', 1, 0, 26, 'en', 0, NULL, '2025-10-30 19:39:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(48, 'GSR 1100', 'th/product-detail/48', 'upload/2025/09/10/GSR-1100.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GSR-1100.jpg', NULL, NULL, NULL, '26', '- Very good branching plant.', '- Semi-determinate. Good for heat setting and on cold to warm season.', '- Medium maturity plant.', '- Uniformity with firmness oval round shape of 110-120 grams.', '- Good shiny deep red color.', '- Good for cold to hot condition planting.', '- Firmness taste.', '- Deep red and chiny as market.', '- HR: TYLCV,TM2, V, F2 ,PM', '- IR: BW, For', '9', NULL, '-', 'pdf/docs/2025/09/10/11th1757489070.pdf', 1, 0, 26, 'th', 1, '2025-09-10 00:24:30', '2025-09-10 00:24:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(49, 'GSR 1102', 'en/product-detail/49', 'upload/2025/09/10/GSR-1102.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GSR-1102.jpg', NULL, NULL, NULL, '26', '- Semi-determinate plant type.', '- Strong TYLCV resistance.', '- Medium maturity.', '- Ovel round shape.', '- 100-120 grams weight.', '- Deep red color.', '- Firmness taste.', '- Deep red and chiny as market.', '- HR: TYLCV', '- IR: BW, For', '9', NULL, NULL, 'pdf/docs/2025/09/10/14th1757489950.pdf', 1, 1, 27, 'en', 0, NULL, '2025-10-30 19:39:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(49, 'GSR 1102', 'th/product-detail/49', 'upload/2025/09/10/GSR-1102.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GSR-1102.jpg', NULL, NULL, NULL, '26', '- Semi-determinate plant type.', '- Strong TYLCV resistance.', '- Medium maturity.', '- Ovel round shape.', '- 100-120 grams weight.', '- Deep red color.', '- Firmness taste.', '- Deep red and chiny as market.', '- HR: TYLCV', '- IR: BW, For', '9', NULL, NULL, 'pdf/docs/2025/09/10/14th1757489950.pdf', 1, 1, 27, 'th', 1, '2025-09-10 00:39:10', '2025-09-19 20:57:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(50, 'GWS 1002', 'en/product-detail/50', 'upload/2025/09/10/GWS-1002.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GWS-1002.jpg', NULL, NULL, NULL, '51', '- Plant high about 1.90-2.20 m.', '- Ear position above ground about 90-100 cm.', '- Well adaptability hybrids in wet season.', '- Dark husk and good husk covering.', '- Kernel color white clear mix with pink color.', '- Row county 16-18 ,Ear green weight 450 gm, and de husk weight 300-350 gm. Cylindrical shape.', '- Waxy sweet.', '- Tender taste.', '- HR: N/A', '- IR: NCLB ,DM ,Rust', '20', NULL, 'https://www.youtube.com/embed/XaO63AoDyJM?si=CU5GaFiJOPVb2VCg', 'pdf/docs/2025/09/10/ข้อมูลGWS 1002th1757495813.pdf', 1, 0, 3, 'en', 0, NULL, '2025-10-30 19:20:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(50, 'GWS 1002', 'th/product-detail/50', 'upload/2025/09/10/GWS-1002.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GWS-1002.jpg', NULL, NULL, NULL, '51', '- Plant high about 1.90-2.20 m.', '- Ear position above ground about 90-100 cm.', '- Well adaptability hybrids in wet season.', '- Dark husk and good husk covering.', '- Kernel color white clear mix with pink color.', '- Row county 16-18 ,Ear green weight 450 gm, and de husk weight 300-350 gm. Cylindrical shape.', '- Waxy sweet.', '- Tender taste.', '- HR: N/A', '- IR: NCLB ,DM ,Rust', '20', NULL, 'https://www.youtube.com/embed/XaO63AoDyJM?si=CU5GaFiJOPVb2VCg', 'pdf/docs/2025/09/10/ข้อมูลGWS 1002th1757495813.pdf', 1, 0, 3, 'th', 1, '2025-09-10 02:16:53', '2025-09-10 02:16:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(51, 'GPS 1024', 'en/product-detail/51', 'upload/2025/09/10/GPS-1024.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GPS-1024.jpg', NULL, NULL, NULL, '52', '- Plant high about 1.90-2.10 m.', '- Ear position above ground about 90-100 cm.', '- Well adaptability hybrids in dry season.', '- Dark husk and good husk covering.', '- Kernel color white clear mix with pink color.', '- 16-18 ,Ear green weight 450 gm, and de husk weight 300-350 gm.', '- Waxy sweetness.', '- Excellenge sweet and tender taste.', '- HR: N/A', '- IR:NCLB', '20', NULL, 'https://www.youtube.com/embed/X0eJ8-n1Oro?si=g1JffyoSCHffN_Ej', 'pdf/docs/2025/09/10/ข้อมูล GPS 1024th1757496150.pdf', 1, 0, 4, 'en', 0, NULL, '2025-10-30 19:21:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(51, 'GPS 1024', 'th/product-detail/51', 'upload/2025/09/10/GPS-1024.jpg', NULL, NULL, NULL, 'upload/2025/09/10/ต้น-GPS-1024.jpg', NULL, NULL, NULL, '52', '- Plant high about 1.90-2.10 m.', '- Ear position above ground about 90-100 cm.', '- Well adaptability hybrids in dry season.', '- Dark husk and good husk covering.', '- Kernel color white clear mix with pink color.', '- 16-18 ,Ear green weight 450 gm, and de husk weight 300-350 gm.', '- Waxy sweetness.', '- Excellenge sweet and tender taste.', '- HR: N/A', '- IR:NCLB', '20', NULL, 'https://www.youtube.com/embed/X0eJ8-n1Oro?si=g1JffyoSCHffN_Ej', 'pdf/docs/2025/09/10/ข้อมูล GPS 1024th1757496150.pdf', 1, 0, 4, 'th', 1, '2025-09-10 02:22:30', '2025-09-10 02:22:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(52, 'GFC 1003', 'en/product-detail/52', 'upload/2025/09/12/GFC-1003.jpg', NULL, NULL, NULL, 'upload/2025/09/12/ต้น-GFC-1003.jpg', NULL, NULL, NULL, '53', '- 190-200 cm plant hight.', '- Strong plant and long stand ability as the field.', '- Medium maturity', '- Cylindrical cob shape.', '- 14,400-17,600 kg per Ha ear without husk yield.', '- 84-85 % shelling seeds yield.', '- Golden yellow color flint kernel.', '- Stage green plant very good for corn silage after harvested.', '- HR: Rust ,stock rot', '- IR: NCLB', '21', NULL, 'https://www.youtube.com/embed/DFJT6-6lfP4?si=YCGfPbxm0bNf3FK5', 'pdf/docs/2025/09/12/ข้อมูล GFC 1003th1757652997.pdf', 1, 0, 1, 'en', 0, NULL, '2025-10-30 19:19:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(52, 'GFC 1003', 'th/product-detail/52', 'upload/2025/09/12/GFC-1003.jpg', NULL, NULL, NULL, 'upload/2025/09/12/ต้น-GFC-1003.jpg', NULL, NULL, NULL, '53', '- 190-200 cm plant hight.', '- Strong plant and long stand ability as the field.', '- Medium maturity', '- Cylindrical cob shape.', '- 14,400-17,600 kg per Ha ear without husk yield.', '- 84-85 % shelling seeds yield.', '- Golden yellow color flint kernel.', '- Stage green plant very good for corn silage after harvested.', '- HR: Rust ,stock rot', '- IR: NCLB', '21', NULL, 'https://www.youtube.com/embed/DFJT6-6lfP4?si=YCGfPbxm0bNf3FK5', 'pdf/docs/2025/09/12/ข้อมูล GFC 1003th1757652997.pdf', 1, 0, 1, 'th', 1, '2025-09-11 21:56:37', '2025-09-16 01:35:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(53, 'GFC 1007', 'en/product-detail/53', 'upload/2025/09/12/GFC-1007.jpg', NULL, NULL, NULL, 'upload/2025/09/12/ต้น-GFC-1007.jpg', NULL, NULL, NULL, '53', '- 200-210 cm plant hight.', '- Very good root system.', '- Medium maturity.', '- Slender and long ear shape with good husk covering.', '- 15,500 – 18,700 Kg per Ha without husk yield.', '- 83-85 % shelling seeds yield.', '- Golden yellow color flint kernel.', '- Stage green plant very good for corn silage after harvested.', '- HR: Rust ,stock rot', '- IR: NCLB', '21', NULL, 'https://www.youtube.com/embed/Avujlt8mkEU?si=wx1uiKJOlNenzgLY', 'pdf/docs/2025/09/12/ข้อมูล GFC 1007th1757656988.pdf', 1, 0, 2, 'en', 0, NULL, '2025-10-30 19:20:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(53, 'GFC 1007', 'th/product-detail/53', 'upload/2025/09/12/GFC-1007.jpg', NULL, NULL, NULL, 'upload/2025/09/12/ต้น-GFC-1007.jpg', NULL, NULL, NULL, '53', '- 200-210 cm plant hight.', '- Very good root system.', '- Medium maturity.', '- Slender and long ear shape with good husk covering.', '- 15,500 – 18,700 Kg per Ha without husk yield.', '- 83-85 % shelling seeds yield.', '- Golden yellow color flint kernel.', '- Stage green plant very good for corn silage after harvested.', '- HR: Rust ,stock rot', '- IR: NCLB', '21', NULL, 'https://www.youtube.com/embed/Avujlt8mkEU?si=wx1uiKJOlNenzgLY', 'pdf/docs/2025/09/12/ข้อมูล GFC 1007th1757656988.pdf', 1, 0, 2, 'th', 1, '2025-09-11 23:03:08', '2025-09-11 23:40:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(54, 'GFC 1009', 'en/product-detail/54', 'upload/2025/09/12/GFC-1009.jpg', NULL, NULL, NULL, 'upload/2025/09/12/ต้น-GFC-1009.jpg', NULL, NULL, NULL, '53', '- 200-210 cm plant hight.', '- Very good adaptability hybrids.', '- Medium maturity.', '- Slender shape with big ear and good husk covering.', '- 15,500 – 18,900 Kg per Ha without husk yield.', '- 84-86 % shelling seeds yield.', '- Golden yellow color flint kernel.', '- Stage green plant very good for corn silage after harvested.', '- HR: Rust ,stock rot', '- IR: NCLB', '21', NULL, 'https://www.youtube.com/embed/P0shcZVskJY?si=EIxaeekeA_5Q1xAV', 'pdf/docs/2025/09/12/ข้อมูล GFC 1009th1757661650.pdf', 1, 0, 3, 'en', 0, NULL, '2025-10-30 19:20:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(54, 'GFC 1009', 'th/product-detail/54', 'upload/2025/09/12/GFC-1009.jpg', NULL, NULL, NULL, 'upload/2025/09/12/ต้น-GFC-1009.jpg', NULL, NULL, NULL, '53', '- 200-210 cm plant hight.', '- Very good adaptability hybrids.', '- Medium maturity.', '- Slender shape with big ear and good husk covering.', '- 15,500 – 18,900 Kg per Ha without husk yield.', '- 84-86 % shelling seeds yield.', '- Golden yellow color flint kernel.', '- Stage green plant very good for corn silage after harvested.', '- HR: Rust ,stock rot', '- IR: NCLB', '21', NULL, 'https://www.youtube.com/embed/P0shcZVskJY?si=EIxaeekeA_5Q1xAV', 'pdf/docs/2025/09/12/ข้อมูล GFC 1009th1757661650.pdf', 1, 0, 3, 'th', 1, '2025-09-12 00:20:50', '2025-09-12 00:20:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(55, 'GGY 1047', 'en/product-detail/55', 'upload/2025/09/26/GGY-1047.jpg', NULL, NULL, NULL, 'upload/2025/09/26/ต้น-GGY-1047.jpg', NULL, NULL, NULL, '71', '- Plastic house ,Parthenocarpy carry multibranched.', '- Very good setting.', '- Drak gren leaf.', '- 16-18 cm fruit long.', '- Dark green flesh color with lossy fruit.', '- 2-3 fruit setting nod.', '- Crispy and sweet texture.', '- Medium keeping.', '- HR: PM', '- IR: CMV', '23', NULL, 'https://youtu.be/4ftcAXf4jLU', 'pdf/docs/2025/09/26/GGY 1047 pdfth1758882076.pdf', 1, 0, 1, 'en', 0, NULL, '2025-10-30 19:19:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(55, 'GGY 1047', 'th/product-detail/55', 'upload/2025/09/26/GGY-1047.jpg', NULL, NULL, NULL, 'upload/2025/09/26/ต้น-GGY-1047.jpg', NULL, NULL, NULL, '71', '- Plastic house ,Parthenocarpy carry multibranched.', '- Very good setting.', '- Drak gren leaf.', '- 16-18 cm fruit long.', '- Dark green flesh color with lossy fruit.', '- 2-3 fruit setting nod.', '- Crispy and sweet texture.', '- Medium keeping.', '- HR: PM', '- IR: CMV', '23', NULL, 'https://youtu.be/4ftcAXf4jLU', 'pdf/docs/2025/09/26/GGY 1047 pdfth1758882076.pdf', 1, 0, 1, 'th', 1, '2025-09-26 03:21:16', '2025-09-26 03:23:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `segment_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_content` text COLLATE utf8mb4_unicode_ci,
  `priority` int(11) DEFAULT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `defaults` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'th',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `title`, `details`, `description`, `segment_id`, `thumbnail_link`, `thumbnail_title`, `thumbnail_alt`, `details_content`, `priority`, `pin`, `display`, `defaults`, `language`, `created_at`, `updated_at`) VALUES
(9, 'طماطم', 'null', 'null', '20,21,23,68,25,26,22,', 'upload/2025/09/23/tomato-1.jpg', 'null', 'null', NULL, 1, 0, 1, 0, 'ar', NULL, '2025-11-05 02:10:13'),
(9, 'Tomato', 'null', 'null', '20,21,23,68,25,26,22,82,', 'upload/2025/09/23/tomato-1.jpg', 'null', 'null', NULL, 1, 0, 1, 0, 'en', NULL, '2025-10-30 19:47:02'),
(9, 'มะเขือเทศ', 'null', 'null', '20,21,22,26,68,25,23,', 'upload/2025/09/23/tomato-1.jpg', 'null', 'null', NULL, 1, 0, 1, 1, 'th', '2025-08-14 21:39:39', '2025-09-25 23:22:11'),
(15, 'فلفل حلو', 'null', 'null', '72,73,54,29,55,32,31,74,34,', 'upload/2025/09/23/Sweet-pepper-1.jpg', 'null', 'null', NULL, 2, 0, 1, 0, 'ar', NULL, '2025-11-05 23:34:48'),
(15, 'Sweet Pepper', 'null', 'null', '31,29,54,72,73,32,74,55,34,', 'upload/2025/09/23/Sweet-pepper-1.jpg', 'null', 'null', NULL, 2, 0, 1, 0, 'en', NULL, '2025-10-02 20:02:13'),
(15, 'พริกหวาน', 'null', 'null', '72,73,54,29,32,31,74,55,34,', 'upload/2025/09/23/Sweet-pepper-1.jpg', 'null', 'null', NULL, 2, 0, 1, 1, 'th', '2025-09-03 22:53:31', '2025-10-02 20:01:06'),
(16, 'فلفل حار', 'null', 'null', '69,70,30,24,37,39,36,', 'upload/2025/09/23/Hot-Pepper-1.jpg', 'null', 'null', NULL, 3, 0, 1, 0, 'ar', NULL, '2025-11-05 23:35:04'),
(16, 'Hot Pepper', 'null', 'null', '69,30,24,37,39,36,70,', 'upload/2025/09/23/Hot-Pepper-1.jpg', 'null', 'null', NULL, 3, 0, 1, 0, 'en', NULL, '2025-09-26 01:25:11'),
(16, 'พริกเผ็ด', 'null', 'null', '69,30,24,37,39,36,70,', 'upload/2025/09/23/Hot-Pepper-1.jpg', 'null', 'null', NULL, 3, 0, 1, 1, 'th', '2025-09-07 21:32:14', '2025-09-26 01:24:58'),
(17, 'بطيخ', 'null', 'null', '59,44,62,63,64,45,61,60,', 'upload/2025/09/23/Watermelon-1.jpg', 'null', 'null', NULL, 4, 0, 1, 0, 'ar', NULL, '2025-11-06 00:53:17'),
(17, 'Watermelon', 'null', 'null', '59,44,62,63,64,45,61,60,', 'upload/2025/09/23/Watermelon-1.jpg', 'null', 'null', NULL, 4, 0, 1, 0, 'en', NULL, '2025-09-22 21:28:06'),
(17, 'แตงโม', 'null', 'null', '59,44,62,63,64,45,61,60,', 'upload/2025/09/23/Watermelon-1.jpg', NULL, NULL, NULL, 4, 0, 1, 1, 'th', '2025-09-08 00:21:58', '2025-09-22 21:18:04'),
(18, 'باذنجان', 'null', 'null', '56,58,57,46,47,48,', 'upload/2025/09/23/Eggplant-1.jpg', 'null', 'null', NULL, 5, 0, 1, 0, 'ar', NULL, '2025-11-06 00:56:32'),
(18, 'Eggplant', 'null', 'null', '56,58,57,46,47,48,', 'upload/2025/09/23/Eggplant-1.jpg', 'null', 'null', NULL, 5, 0, 1, 0, 'en', NULL, '2025-09-22 21:28:13'),
(18, 'มะเขือยาว', 'null', 'null', '56,58,57,46,47,48,', 'upload/2025/09/23/Eggplant-1.jpg', NULL, NULL, NULL, 5, 0, 1, 1, 'th', '2025-09-08 01:03:51', '2025-09-22 21:17:56'),
(19, 'شمام', 'null', 'null', '65,49,50,', 'upload/2025/09/23/Melon-1.jpg', 'null', 'null', NULL, 6, 0, 1, 0, 'ar', NULL, '2025-11-05 20:30:54'),
(19, 'Melon', 'null', 'null', '65,49,50,', 'upload/2025/09/23/Melon-1.jpg', 'null', 'null', NULL, 6, 0, 1, 0, 'en', NULL, '2025-09-22 21:28:25'),
(19, 'เมล่อน', 'null', 'null', '65,49,50,', 'upload/2025/09/23/Melon-1.jpg', NULL, NULL, NULL, 6, 0, 1, 1, 'th', '2025-09-08 01:04:42', '2025-09-22 21:18:18'),
(20, 'ذرة شمعية', 'null', 'null', '52,51,', 'upload/2025/09/23/Waxy-Corn-1.jpg', 'null', 'null', NULL, 7, 0, 1, 0, 'ar', NULL, '2025-11-05 20:31:31'),
(20, 'Waxy Corn', 'null', 'null', '52,51,', 'upload/2025/09/23/Waxy-Corn-1.jpg', 'null', 'null', NULL, 7, 0, 1, 0, 'en', NULL, '2025-10-03 01:14:03'),
(20, 'ข้าวโพดข้าวเหนียว', 'null', 'null', '52,51,', 'upload/2025/09/23/Waxy-Corn-1.jpg', 'null', 'null', NULL, 7, 0, 1, 1, 'th', '2025-09-09 21:34:32', '2025-10-03 01:15:19'),
(21, 'ذرة العلف', 'null', 'null', '53,', 'upload/2025/09/23/Field-corn-1.jpg', 'null', 'null', NULL, 8, 0, 1, 0, 'ar', NULL, '2025-11-05 23:35:25'),
(21, 'Field Corn', 'null', 'null', '53,', 'upload/2025/09/23/Field-corn-1.jpg', 'null', 'null', NULL, 8, 0, 1, 0, 'en', NULL, '2025-09-22 21:32:58'),
(21, 'ข้าวโพดไร่', 'null', 'null', '53,', 'upload/2025/09/23/Field-corn-1.jpg', NULL, NULL, NULL, 8, 0, 1, 1, 'th', '2025-09-11 23:39:53', '2025-09-22 21:32:21'),
(22, 'قرع مر', 'null', 'null', '27,75,', 'upload/2025/09/23/Bitter-gourd.jpg', 'null', 'null', NULL, 10, 0, 1, 0, 'ar', NULL, '2025-11-05 20:29:26'),
(22, 'Bitter Gourd', 'null', 'null', '27,75,', 'upload/2025/09/23/Bitter-gourd.jpg', 'null', 'null', NULL, 10, 0, 1, 0, 'en', NULL, '2025-10-03 01:57:18'),
(22, 'มะระขี้นก', 'null', 'null', '27,75,', 'upload/2025/09/23/Bitter-gourd.jpg', 'null', 'null', NULL, 10, 0, 1, 1, 'th', '2025-09-19 23:45:05', '2025-10-03 02:11:47'),
(23, 'خيار', 'null', 'null', '66,71,67,', 'upload/2025/09/23/Cucumber.jpg', 'null', 'null', NULL, 11, 0, 1, 0, 'ar', NULL, '2025-11-05 20:30:32'),
(23, 'Cucumber', 'null', 'null', '66,71,67,', 'upload/2025/09/23/Cucumber.jpg', 'null', 'null', NULL, 11, 0, 1, 0, 'en', NULL, '2025-10-03 01:37:00'),
(23, 'แตงกวา', 'null', 'null', '66,71,67,', 'upload/2025/09/23/Cucumber.jpg', 'null', 'null', NULL, 11, 0, 1, 1, 'th', '2025-09-20 01:20:27', '2025-10-03 01:37:25'),
(24, 'ذرة حلوة', 'null', 'null', '34,', 'upload/2025/10/03/Sweet-corn.jpg', 'null', 'null', NULL, 9, 0, 1, 0, 'ar', NULL, '2025-11-05 23:34:25'),
(24, 'Sweet Corn', 'null', 'null', '34,76,77,', 'upload/2025/10/03/Sweet-corn.jpg', 'null', 'null', NULL, 9, 0, 1, 0, 'en', NULL, '2025-10-03 01:59:53'),
(24, 'ข้าวโพดหวาน', 'null', 'null', '34,', 'upload/2025/10/03/Sweet-corn.jpg', 'null', 'null', NULL, 9, 0, 1, 1, 'th', '2025-09-20 01:20:42', '2025-11-05 21:06:30'),
(25, 'Ridge Gourd', 'null', 'null', '78,', 'upload/2025/09/20/หมวดหมู่-1(3).jpg', 'null', 'null', NULL, 12, 0, 1, 1, 'th', '2025-09-20 01:21:56', '2025-10-03 02:22:01'),
(26, 'قرع جوزي', 'null', 'null', '79,', 'upload/2025/09/20/หมวดหมู่-1(4).jpg', 'null', 'null', NULL, 13, 0, 1, 0, 'ar', NULL, '2025-11-06 03:13:38'),
(26, 'Butternut gourd', 'null', 'null', '79,', 'upload/2025/09/20/หมวดหมู่-1(4).jpg', 'null', 'null', NULL, 13, 0, 1, 0, 'en', NULL, '2025-11-05 21:58:54'),
(26, 'ฟักทองบัตเตอร์นัท', 'null', 'null', '79,', 'upload/2025/09/20/หมวดหมู่-1(4).jpg', 'null', 'null', NULL, 13, 0, 1, 1, 'th', '2025-09-20 01:22:11', '2025-11-05 21:59:26'),
(27, 'Grass Seeds', 'null', 'null', '80,81,', 'upload/2025/09/20/หมวดหมู่-1(5).jpg', 'null', 'null', NULL, 14, 0, 1, 0, 'en', NULL, '2025-11-05 23:17:58'),
(27, 'หญ้า', 'null', 'null', '80,81,', 'upload/2025/09/20/หมวดหมู่-1(5).jpg', 'null', 'null', NULL, 14, 0, 1, 1, 'th', '2025-09-20 01:26:11', '2025-11-05 23:18:13'),
(28, 'สควอช', 'null', 'null', ',', 'upload/2025/09/20/หมวดหมู่-1(6).jpg', 'null', 'null', NULL, 15, 0, 0, 0, 'ar', NULL, '2025-11-06 03:10:59'),
(28, 'Squash', 'null', 'null', ',', 'upload/2025/09/20/หมวดหมู่-1(6).jpg', 'null', 'null', NULL, 15, 0, 1, 0, 'en', NULL, '2025-11-05 23:32:04'),
(28, 'สควอช', 'null', 'null', ',', 'upload/2025/09/20/หมวดหมู่-1(6).jpg', 'null', 'null', NULL, 15, 0, 1, 1, 'th', '2025-09-20 01:26:34', '2025-11-05 23:33:01'),
(29, 'Test-Crop 16', NULL, NULL, ',', 'upload/2025/09/20/หมวดหมู่-1(7).jpg', NULL, NULL, NULL, 24, 0, 0, 1, 'th', '2025-09-20 01:26:51', '2025-11-12 00:32:40'),
(30, 'Test-Crop 17', NULL, NULL, ',', 'upload/2025/09/20/หมวดหมู่-1(8).jpg', NULL, NULL, NULL, 25, 0, 0, 1, 'th', '2025-09-20 01:27:11', '2025-11-12 00:32:41'),
(31, 'Test-Crop 18', NULL, NULL, ',', 'upload/2025/09/20/หมวดหมู่-1(9).jpg', NULL, NULL, NULL, 26, 0, 0, 1, 'th', '2025-09-20 01:27:26', '2025-11-12 00:33:04'),
(32, 'Test-Crop 19', NULL, NULL, ',', 'upload/2025/09/20/หมวดหมู่-1(10).jpg', NULL, NULL, NULL, 27, 0, 0, 1, 'th', '2025-09-20 01:27:44', '2025-11-12 00:33:05'),
(33, 'Test-Crop 20', NULL, NULL, ',', 'upload/2025/09/20/หมวดหมู่-1(11).jpg', NULL, NULL, NULL, 28, 0, 0, 1, 'th', '2025-09-20 01:28:05', '2025-11-12 00:33:07'),
(34, 'Test-Crop 21', NULL, NULL, ',', 'upload/2025/09/20/หมวดหมู่-1(12).jpg', NULL, NULL, NULL, 29, 0, 0, 1, 'th', '2025-09-20 01:28:23', '2025-11-12 00:33:07'),
(35, 'Test-Crop 22', NULL, NULL, ',', 'upload/2025/09/20/หมวดหมู่-1(13).jpg', NULL, NULL, NULL, 30, 0, 0, 1, 'th', '2025-09-20 01:28:34', '2025-11-12 00:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `segments`
--

CREATE TABLE `segments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `segments`
--

INSERT INTO `segments` (`id`, `title`, `is_active`, `created_at`, `updated_at`) VALUES
(20, 'BEEF RED', 1, '2025-09-03 21:49:46', '2025-09-22 02:50:09'),
(21, 'CHERRY INDETER', 1, '2025-09-03 21:49:46', '2025-09-22 02:50:23'),
(22, 'TIGER CHERRY', 1, '2025-09-05 02:29:58', '2025-09-22 19:31:16'),
(23, 'INDETERMINATE RED', 1, '2025-09-05 02:30:19', '2025-09-22 02:52:30'),
(24, 'BIG FRUIT MEDIUM GREEN', 1, '2025-09-05 02:31:58', '2025-09-23 00:09:46'),
(25, 'SQUARE', 1, '2025-09-05 02:32:15', '2025-09-22 19:42:39'),
(26, 'SR SHAPE', 1, '2025-09-05 02:33:12', '2025-09-22 19:33:19'),
(27, 'CHINA TYPE', 1, '2025-09-05 02:34:32', '2025-10-03 01:55:07'),
(29, 'BLOCKY YELLOW', 1, '2025-09-07 23:03:51', '2025-09-22 02:59:31'),
(30, 'BIG FRUIT LIGHT GREEN', 1, '2025-09-07 23:04:07', '2025-09-22 20:56:43'),
(31, 'LIGHT SWEET', 1, '2025-09-07 23:04:33', '2025-09-22 02:59:12'),
(32, 'LAMAYO', 1, '2025-09-07 23:08:51', '2025-09-22 19:46:15'),
(33, 'MEDIUM SWEET', 1, '2025-09-07 23:09:06', '2025-09-22 19:46:39'),
(34, 'TOP ONE', 1, '2025-09-07 23:09:18', '2025-09-22 19:44:18'),
(36, 'UP RIGHT', 1, '2025-09-08 01:06:52', '2025-09-22 23:35:01'),
(37, 'BULLET TYPE', 1, '2025-09-08 01:08:57', '2025-09-23 00:11:34'),
(39, 'KRITING TYPE', 1, '2025-09-08 01:09:32', '2025-09-23 00:08:21'),
(43, 'ZAZ', 1, '2025-09-08 01:12:11', '2025-09-08 01:12:11'),
(44, 'CRIMSON SWEET', 1, '2025-09-08 01:14:27', '2025-09-22 20:58:23'),
(45, 'SEEDLESS', 1, '2025-09-08 01:14:45', '2025-09-22 20:59:22'),
(46, 'LONG PINK COLOR', 1, '2025-09-08 01:15:57', '2025-09-22 21:01:00'),
(47, 'LONG WHITE', 1, '2025-09-08 01:16:05', '2025-09-22 21:00:18'),
(48, 'OVEL ROUND BACK', 1, '2025-09-08 01:16:12', '2025-09-22 21:00:41'),
(49, 'CANTALUP', 1, '2025-09-08 01:17:29', '2025-09-22 21:06:39'),
(50, 'GALIA', 1, '2025-09-08 01:17:33', '2025-09-22 21:06:50'),
(51, 'WAXY SWEET', 1, '2025-09-10 02:10:50', '2025-10-03 01:16:38'),
(52, 'PINK WAXY SWEET', 1, '2025-09-10 02:11:00', '2025-10-03 01:16:49'),
(53, 'FIELD CORN', 1, '2025-09-11 21:53:29', '2025-10-03 01:52:50'),
(54, 'BLOCKY RED', 1, '2025-09-22 03:01:34', '2025-09-22 03:01:34'),
(55, 'CABANELLE', 1, '2025-09-22 20:17:43', '2025-09-22 20:17:43'),
(56, 'HALF LONG BACK', 1, '2025-09-22 21:01:57', '2025-09-22 21:01:57'),
(57, 'LONG BACK COLOR', 1, '2025-09-22 21:02:04', '2025-09-22 21:02:04'),
(58, 'HALF LONG PINK', 1, '2025-09-22 21:02:08', '2025-09-22 21:02:08'),
(59, 'CHARLESTON GRAY', 1, '2025-09-22 21:04:18', '2025-09-22 21:04:18'),
(60, 'TORPEDO', 1, '2025-09-22 21:04:22', '2025-09-22 21:04:22'),
(61, 'SUGAR BABY', 1, '2025-09-22 21:04:26', '2025-09-22 21:04:26'),
(62, 'DARK CRIMSON', 1, '2025-09-22 21:04:31', '2025-09-22 21:04:31'),
(63, 'DARK JUBILEE', 1, '2025-09-22 21:04:35', '2025-09-22 21:04:35'),
(64, 'LIGHT JUBILEE', 1, '2025-09-22 21:04:40', '2025-09-22 21:04:40'),
(65, 'ANNANAS', 1, '2025-09-22 21:07:03', '2025-09-22 21:07:03'),
(66, 'GYNOECIOUS', 1, '2025-09-23 01:37:28', '2025-09-23 01:37:28'),
(67, 'MONOECIOUS SIZE L', 1, '2025-09-23 01:38:49', '2025-09-23 01:38:49'),
(68, 'ROMA SHAPE', 1, '2025-09-25 19:22:15', '2025-09-25 19:22:15'),
(69, 'BIG FRUIT DARK GREEN', 1, '2025-09-26 00:57:02', '2025-09-26 00:57:02'),
(70, 'BIG FRUIT GREEN', 1, '2025-09-26 01:24:39', '2025-09-26 01:24:39'),
(71, 'MEDIUM GUY', 1, '2025-09-26 03:21:40', '2025-09-26 03:21:40'),
(72, 'BLOCKY GREEN', 1, '2025-10-02 19:56:21', '2025-10-02 19:56:21'),
(73, 'BLOCKY LIGHT', 1, '2025-10-02 19:56:29', '2025-10-02 19:56:29'),
(74, 'MACRONE', 1, '2025-10-02 19:58:39', '2025-10-02 19:58:39'),
(75, 'INDIA TYPE', 1, '2025-10-03 01:55:19', '2025-10-03 01:55:19'),
(76, 'TEMPERATE', 1, '2025-10-03 01:59:07', '2025-10-03 01:59:07'),
(77, 'SUB TROPICAL', 1, '2025-10-03 01:59:26', '2025-10-03 01:59:26'),
(78, 'DARK GREEN', 1, '2025-10-03 02:18:13', '2025-10-03 02:18:13'),
(79, 'BUTTERNUT', 1, '2025-10-03 02:23:31', '2025-10-03 02:23:31'),
(80, 'ITALIAN FAST GREEN', 1, '2025-10-03 02:24:52', '2025-10-03 02:24:52'),
(81, 'SWEET JUMBO', 1, '2025-10-03 02:24:56', '2025-10-03 02:24:56');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rates`
--

CREATE TABLE `shipping_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rates` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `account_role`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2y$10$s15yQn3lPYMKX03FjQor9.8Lah4FBHlJ6tSyQx9fZitwpaMaUtmm.', 'admin@example.com', 'backoffice', NULL, NULL, NULL, NULL),
(2, 'papap@gmail.com', '$2y$12$VkMASWZU1giR9seGU0C9ZeB18WwP98ibvKCRGsenb4fKQy8cxyFry', 'papap@gmail.com', 'backoffice', NULL, NULL, '2025-07-24 23:26:27', '2025-07-24 23:26:27'),
(7, 'papsap2@gmail.com', '$2y$12$IFucwmYLFkXHBMJO.fWcXu6Igjxd6IzJN8//HFc/jUTy12kVFyN62', 'papsap2@gmail.com', 'backoffice', NULL, NULL, '2025-07-25 02:59:45', '2025-07-25 02:59:45'),
(9, 'papsap3@gmail.com', '$2y$12$8SMggMHwUa8qCuMzVzaEjeHHR1YZkyGx45WXAbVdWzKufCRLCDFYq', 'parklovepark112@gmail.com', 'backoffice', NULL, NULL, '2025-07-30 19:23:57', '2025-07-30 19:23:57'),
(20, 'parktest1', '$2y$12$l34nDd729p4ak39VxFgUf.nasQS6ls8Hn0li8G4GPGuL5UYweP4We', 'parklovepark112@gmail.com', 'member', NULL, NULL, '2025-08-22 00:16:33', '2025-08-28 21:37:13'),
(37, 'nunta1613@gmail.com', '$2y$12$BliJXtMVwIbNxr415CLGQep/tv2b/rH1uHQaFVttikswmCuxv1mry', 'nunta1613@gmail.com', 'backoffice', NULL, NULL, '2025-09-03 21:13:24', '2025-09-03 21:13:24'),
(66, 'Nunta', '$2y$12$u0JfT7csFaCU7kl.8g8gie4xZtWOH0n4M7nZczddn.WYJGLmeIGnW', 'nunta1613@gmail.com', 'member', NULL, NULL, '2025-09-07 21:07:32', '2025-09-07 21:07:32'),
(67, 'nichawynnsoft@gmail.com', '$2y$12$LehYwwHJ9EKsdswX0ddmy.iafz0WC6rUjYcXe4LIxpY5e24fpGlmm', 'nichawynnsoft@gmail.com', 'backoffice', NULL, NULL, '2025-09-12 02:09:19', '2025-09-12 02:09:19'),
(68, 'ta', '$2y$12$C8to.2jhLmRPwfPGPI86i.tjl2b1.gLc.ja9JyQMxTHgswDWylIxu', 'ta@gmail.com', 'member', NULL, NULL, '2025-09-12 19:54:32', '2025-09-12 19:54:32'),
(69, 'Wirawan Wongsuwan', '$2y$12$Y.Qnu4YQKJOgLuodcxc.auC3tpa4DgmM0QtsiQcpbP2JRu2mCbCom', 'faiwirawan24431@gmail.com', 'member', NULL, NULL, '2025-09-15 02:41:01', '2025-09-15 02:41:01'),
(71, 'admin@gmail.com', '$2y$12$vYaW.k1zh1dtqErEgW7XCuPPqmIVHY/tTSnrEMWOJLckMuU9ZinLu', 'admin@gmail.com', 'backoffice', NULL, NULL, '2025-09-16 01:45:11', '2025-09-16 01:45:11'),
(72, 'abidsabi', '$2y$12$7Q1du7EzGGYr8JV5bbSG8.nW2qhd5YjDbIyGGZUTy7AZVCw/2/OIS', 'abidsabi@hotmail.com', 'member', NULL, NULL, '2025-09-16 04:21:40', '2025-09-16 04:21:40'),
(76, 'حمزة', '$2y$12$2ORCzYd9xlhme51w60li9O1gqMkH3IV4BtlxOem/Dh4yNsnQwAFRy', 'hamzaaahalmaadat@gmail.com', 'member', NULL, NULL, '2025-09-26 00:15:24', '2025-09-26 00:15:24'),
(78, 'Hamza Maadat', '$2y$12$pbPY1U/Tj8GBbd3Y9i3tuei8VVtWRktDpoyKWxxR2XCUuvG6aSVmS', 'hamzamaadat@gmail.com', 'member', NULL, NULL, '2025-09-26 00:21:23', '2025-09-26 00:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `web_infos`
--

CREATE TABLE `web_infos` (
  `info_id` bigint(20) UNSIGNED NOT NULL,
  `info_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_param` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_value` text COLLATE utf8mb4_unicode_ci,
  `info_link` text COLLATE utf8mb4_unicode_ci,
  `info_iframe` text COLLATE utf8mb4_unicode_ci,
  `info_attribute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_priority` int(11) NOT NULL DEFAULT '1',
  `info_display` tinyint(1) NOT NULL DEFAULT '1',
  `admin_level` tinyint(1) NOT NULL COMMENT 'สิทธิ์เข้าถึงข้อมูล',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `defaults` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_infos`
--

INSERT INTO `web_infos` (`info_id`, `info_type`, `info_param`, `info_title`, `info_value`, `info_link`, `info_iframe`, `info_attribute`, `info_priority`, `info_display`, `admin_level`, `language`, `defaults`, `created_at`, `updated_at`) VALUES
(1, '1', 'webname', 'ชื่อเว็บไซต์ #1', 'Green Global', NULL, '', '', 1, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(2, '1', 'companyname', 'ชื่อบริษัท / ชื่อร้านค้า', NULL, NULL, '', '', 3, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(3, '1', 'image_1', 'Image #1 (Logo)', NULL, 'upload/2025/09/09/117574030520.png', '', '', 3, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(4, '1', 'favicon', 'Image favicon (Primary)', NULL, 'image\\logo-GGS.png 1.png', '', '', 6, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(5, '1', 'extraname', 'ชื่อเว็บไซต์ #2', NULL, NULL, NULL, NULL, 2, 1, 3, 'th', 1, '2025-08-01 03:33:18', '2025-08-01 03:33:18'),
(6, '1', 'image_2', 'Image #2 (Qrcode)', NULL, 'upload/2025/10/01/217592841780.jpg', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(7, '1', 'image_3', 'Image #3 (#1)', NULL, 'upload/2025/08/19/317555799570.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(8, '1', 'image_4', 'Image #4 (#2)', NULL, 'upload/2025/08/19/417555799570.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(9, '1', 'image_5', 'Image #5 (#3)', NULL, 'upload/2025/08/19/517555863240.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(10, '2', 'email', 'Email', 'ggs.web@greenglobalseeds.com', NULL, NULL, NULL, 3, 0, 3, 'ar', 0, '2025-08-19 07:13:03', '2025-09-08 01:07:53'),
(10, '2', 'email', 'Email', 'ggs.web@greenglobalseeds.com', NULL, NULL, NULL, 3, 0, 3, 'en', 0, '2025-08-19 07:13:03', '2025-09-08 01:07:46'),
(10, '2', 'email', 'อีเมล', 'ggs.web@greenglobalseeds.com', NULL, NULL, NULL, 3, 0, 3, 'th', 1, '2025-08-19 07:13:03', '2025-09-08 01:07:36'),
(11, '2', 'phone', 'Phone', '095-9567965', NULL, NULL, NULL, 1, 0, 3, 'ar', 0, '2025-08-19 00:14:22', '2025-09-20 01:32:57'),
(11, '2', 'phone', 'Phone', '095-9567965', NULL, NULL, NULL, 1, 0, 3, 'en', 0, '2025-08-19 00:14:22', '2025-09-20 01:32:20'),
(11, '2', 'phone', 'เบอร์โทรศัพท์', '095-9567965', NULL, NULL, NULL, 1, 0, 3, 'th', 1, '2025-08-19 00:14:22', '2025-09-20 01:30:09'),
(12, '2', 'website', 'Website', 'WWW.GREENGLOBALSEEDS.COM', NULL, NULL, NULL, 1, 0, 3, 'ar', 0, '2025-08-19 00:15:35', '2025-09-05 20:40:54'),
(12, '2', 'website', 'Website', 'WWW.GREENGLOBALSEEDS.COM', NULL, NULL, NULL, 1, 0, 3, 'en', 0, '2025-08-19 00:15:35', '2025-09-05 20:40:25'),
(12, '2', 'website', 'เว็บไซต์', 'WWW.GREENGLOBALSEEDS.COM', NULL, NULL, NULL, 1, 0, 3, 'th', 1, '2025-08-19 00:15:35', '2025-09-05 02:50:19'),
(13, '2', 'address', 'Address', 'GREEN GLOBAL SEEDS COMPANY 199/376, Moo 4, Rangsit Sub-district, Thanyaburi District, Pathum Thani 12110. Thailand', NULL, NULL, NULL, 1, 0, 3, 'ar', 0, '2025-08-19 00:18:42', '2025-09-05 20:40:44'),
(13, '2', 'address', 'Address', 'GREEN GLOBAL SEEDS COMPANY 199/376, Moo 4, Rangsit Sub-district, Thanyaburi District, Pathum Thani 12110. Thailand', NULL, NULL, NULL, 1, 0, 3, 'en', 0, '2025-08-19 00:18:42', '2025-09-05 20:40:37'),
(13, '2', 'address', 'ที่อยู่', '199/376 หมู่ 4 ตำบลรังสิต อำเภอธัญบุรี จังหวัดปทุมธานี 12110', NULL, NULL, NULL, 1, 0, 3, 'th', 1, '2025-08-19 00:18:42', '2025-11-04 19:21:25'),
(22, '4', 'copy_right', 'copy right', '© 2023 by Tamarind Thai Restaurant.com', '', '', '', 1, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `web_info_types`
--

CREATE TABLE `web_info_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `defaults` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(2, 'contact', 'ข้อมูลติดต่อ', 1, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `member_accounts`
--
ALTER TABLE `member_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `member_favors`
--
ALTER TABLE `member_favors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_occupations`
--
ALTER TABLE `member_occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `member_profiles`
--
ALTER TABLE `member_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `segments`
--
ALTER TABLE `segments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `web_infos`
--
ALTER TABLE `web_infos`
  MODIFY `info_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `web_info_types`
--
ALTER TABLE `web_info_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
