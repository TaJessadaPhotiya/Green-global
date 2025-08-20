-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2025 at 12:37 PM
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
(7, 7, 4, 2, NULL, 'paspa2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-25 02:59:46', '2025-07-25 02:59:46'),
(9, 9, 4, 2, NULL, 'paspa3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-30 19:23:57', '2025-07-30 19:23:57');

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
(1, NULL, 'Home', 'HOME', NULL, NULL, NULL, NULL, 'home', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en', 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-13 04:44:02', '2025-08-13 00:08:55'),
(1, NULL, 'หน้าหลัก', 'HOME', NULL, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th', 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:20:13', '2025-08-13 01:00:47'),
(2, NULL, 'VISION', 'VISION', NULL, NULL, NULL, NULL, 'vision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/vision', 0, 2, 0, 1, 1, 1, 0, 0, 0, 2, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 03:22:35', '2025-08-13 06:55:23'),
(2, NULL, 'วิสัยทัศน์', 'VISION', NULL, NULL, NULL, NULL, '/vision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/vision', 0, 2, 0, 1, 1, 1, 0, 0, 0, 2, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:22:37', '2025-08-13 01:01:28'),
(3, NULL, 'PRODUCT', 'PRODUCT', NULL, NULL, NULL, NULL, 'product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/product', 0, 3, 0, 1, 1, 1, 0, 0, 0, 4, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 03:30:59', '2025-08-13 00:01:29'),
(3, NULL, 'ผลิตภัณฑ์', 'PRODUCT', NULL, NULL, NULL, NULL, '/product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/product', 0, 3, 0, 1, 1, 1, 0, 0, 0, 4, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:31:00', '2025-08-13 01:01:48'),
(4, NULL, 'NEWS', 'NEWS', NULL, NULL, NULL, NULL, 'news', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/news', 0, 4, 0, 1, 1, 1, 0, 0, 0, 3, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 03:32:02', '2025-08-13 00:01:09'),
(4, NULL, 'ข่าว', 'NEWS', NULL, NULL, NULL, NULL, '/news', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/news', 0, 4, 0, 1, 1, 1, 0, 0, 0, 3, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 03:32:03', '2025-08-13 01:01:34'),
(5, NULL, 'TERM&CONDITION', 'TERM&CONDITION', NULL, NULL, NULL, NULL, 'terms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/terms', 0, 5, 0, 1, 1, 1, 0, 0, 0, 5, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 04:03:58', '2025-08-12 23:59:16'),
(5, NULL, 'ข้อกำหนด/เงื่อนไข', 'TERM&CONDITION', NULL, NULL, NULL, NULL, '/term', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/term', 0, 5, 0, 1, 1, 1, 0, 0, 0, 5, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 04:03:59', '2025-08-13 01:02:23'),
(6, NULL, 'CONTACT US', 'CONTACT US', NULL, NULL, NULL, NULL, 'contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/en/contact', 0, 6, 0, 1, 1, 1, 0, 0, 0, 6, 1, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 04:04:20', '2025-08-13 00:02:05'),
(6, NULL, 'ติดต่อเรา', 'CONTACT US', NULL, NULL, NULL, NULL, '/contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/contact', 0, 6, 0, 1, 1, 1, 0, 0, 0, 6, 1, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 04:04:12', '2025-08-13 01:02:31'),
(7, NULL, 'MEMBER', 'MEMBER', NULL, NULL, NULL, NULL, 'member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 0, 1, 1, 1, 0, 0, 0, 7, 2, 0, 1, 0, NULL, NULL, 'en', 0, '2025-08-14 04:07:50', '2025-08-13 00:02:19'),
(7, NULL, 'สมาชิก', 'MEMBER', NULL, NULL, NULL, NULL, 'member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 0, 1, 1, 1, 0, 0, 0, 7, 2, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-14 04:07:49', '2025-08-13 01:02:48'),
(8, NULL, 'ลงทะเบียน', 'REGISTER', NULL, '', NULL, NULL, 'register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 8, 0, 1, 1, 1, 0, 0, 0, 8, 2, 0, 1, 0, NULL, NULL, 'th', 1, '2025-08-11 03:18:30', '2025-08-13 01:08:30'),
(9, NULL, 'เข้าสู่ระบบ', 'Sign In', NULL, '', NULL, NULL, 'register/sign in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/login', 8, 8, 1, 1, 1, 1, 0, 0, 0, 9, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-11 03:19:17', '2025-08-13 00:26:22'),
(12, NULL, 'ลงทะเบียน', 'Register', NULL, '', NULL, NULL, 'register/register', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/th/register', 8, 8, 1, 1, 1, 1, 0, 0, 0, 10, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-11 03:20:23', '2025-08-13 01:08:39'),
(13, NULL, 'โปรไฟล์', 'Profile', NULL, '', NULL, NULL, 'member/Profile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'th/profile', 7, 7, 1, 1, 1, 1, 0, 0, 0, 11, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-13 02:53:37', '2025-08-13 02:55:28'),
(14, NULL, 'ออกจากระบบ', 'Sign out', NULL, '', NULL, NULL, 'member/sign out', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'th/#', 7, 7, 1, 1, 1, 1, 0, 0, 0, 12, 2, 0, 0, 0, NULL, NULL, 'th', 1, '2025-08-13 02:54:50', '2025-08-13 02:57:54');

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

-- --------------------------------------------------------

--
-- Table structure for table `member_accounts`
--

CREATE TABLE `member_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `profiles_id` int(11) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `line_id` varchar(255) DEFAULT NULL,
  `apple_id` varchar(255) DEFAULT NULL,
  `member_status` tinyint(1) NOT NULL DEFAULT 1,
  `member_note` varchar(255) DEFAULT NULL,
  `member_verify_at` datetime DEFAULT NULL,
  `member_expire_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `member_profiles`
--

CREATE TABLE `member_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profiles_image` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `subdistrict` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `coin` int(11) NOT NULL DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(97, '2025_08_02_083343_create_segments_table', 5);

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
('657248456ce8d7ed91d5022f647abf73c99592e5ef3e6ca85fc4e59737e829a568f740da6a45ec63', 1, 1, 'AuthToken', '[]', 0, '2025-07-30 21:18:29', '2025-07-30 21:18:30', '2026-07-31 04:18:29'),
('7e554e8b266ba06b32fc2e9c48203220e85b64dac6aa9e5625ac5d7c10bd56193b7491b3afd882d4', 2, 1, 'AuthToken', '[]', 0, '2025-07-30 21:03:26', '2025-07-30 21:03:26', '2026-07-31 04:03:26'),
('a81d38d3d5298bc7e73fdcc88c756c447e93f5fc4b7436e56d31b0e3ae15bfacd604a51bd5239bf6', 1, 1, 'AuthToken', '[]', 0, '2025-08-10 20:08:11', '2025-08-10 20:08:12', '2026-08-11 03:08:11'),
('e12829dd6ebbf9e9aeddd909f0ad589c02ed4e5b3d1fee3744a9b72b6e9717200ea319b354a8cefa', 1, 1, 'AuthToken', '[]', 0, '2025-08-03 20:18:38', '2025-08-03 20:18:38', '2026-08-04 03:18:38'),
('e3f5ebcdb10635c788b544b01661cdd107d71a42fc738d15203aad6013aa1309b3b0bd538d9ada43', 1, 1, 'AuthToken', '[]', 0, '2025-07-31 00:26:32', '2025-07-31 00:26:32', '2026-07-31 07:26:32');

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
(1, 'HOME', '“Premium seed for high yield and good taste”', NULL, 'Since 2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-size:18px\"><span style=\"color:#098c46\">Global population increasing special for emerging&nbsp;markets, but food will short in coming year due to climate change and global warming make grower difficult and yield lower than before. Green Global seeds company with business partnership development hybrids and market for wide adaptability variety for climate change and meet demand of provisional grower, food collectors, super market, new generation of consumer for healthy and good taste. Green global seeds company focus delivery innovation product seeds to food by &ldquo;Premium seed for high yield and good taste&rdquo; since 2013.</span></span></p>', NULL, ',1,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-09 02:19:13', '2025-08-13 23:47:09'),
(2, 'HOME', '“Premium seed for high yield and good taste”', NULL, 'Since 2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Global population increasing special for emerging&nbsp;markets, but food will short in coming year due to climate change and global warming make grower difficult and yield lower than before. Green Global seeds company with business partnership development hybrids and market for wide adaptability variety for climate change and meet demand of provisional grower, food collectors, super market, new generation of consumer for healthy and good taste. Green global seeds company focus delivery innovation product seeds to food by &ldquo;Premium seed for high yield and good taste&rdquo; since 2013.</p>', NULL, ',1,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, NULL, NULL, NULL, 0, 1, 'en', NULL, NULL, '2025-08-09 02:19:13', '2025-08-13 19:53:40'),
(3, 'VISION', 'Our Company', NULL, '“Premium seed for high yield and good taste” \r\n</br>\r\n Since 2013', NULL, NULL, NULL, NULL, NULL, 'upload/2025/08/14/Rectangle 156 (1)(1).png', NULL, NULL, NULL, '<p><span style=\"font-size:18px\"><span style=\"color:#2ecc71\">Global population increasing special for emerging markets,&nbsp; but food will short in coming year done climate change&nbsp; and global warming make grower difficult and yield lower than before&nbsp; ,Green&nbsp; Global seeds company with business partnership development hybrids and market for wide adaptability variety for climate change&nbsp; and meet demand&nbsp; of provisional&nbsp; grower&nbsp; , food collectors , supper market , new generation of consumer&nbsp; for healthy and good taste . Green global seeds &nbsp; company focus delivery innovation product seeds to food by &ldquo;Premium seed for&nbsp; high yield and good taste &rdquo; since 2013 climate change&nbsp; and global warming make grower difficult and yield lower than before&nbsp; ,Green&nbsp; Global seeds company with business partnership development hybrids and market for wide adaptability variety for climate change&nbsp; and meet demand&nbsp; of provisional&nbsp; grower&nbsp; , food collectors , supper market , new generation of consumer&nbsp; for healthy and good taste . Green global seeds &nbsp; company focus delivery innovation product seeds to food by &ldquo;Premium seed for&nbsp; high yield and good taste &rdquo; since 2013</span></span></p>', NULL, ',2,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 2, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-14 00:24:36', '2025-08-14 00:46:42'),
(4, 'NEWSACTIVTY', 'กิจกรรมวันเด็ก ปี 2567', NULL, 'บริษัทร่วมกิจกรรมสร้างความสุขในวันเด็กแจกของรางวัลมากมาย', NULL, NULL, NULL, NULL, NULL, 'upload/2025/08/14/Rectangle169.png', NULL, NULL, NULL, '<p><span style=\"color:#2ecc71\"><span style=\"font-size:18px\">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim nihil quis harum animi? Lorem ipsum dolor sit amet consectetur, adipisicing elit. Esse ipsum beatae natus quasi aperiam accusamus. Voluptates doloremque aperiam minima architecto velit. Aliquid, et. Neque magni, enim</span></span></p>', 'th/news-detail/4', ',4,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 3, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-14 01:39:21', '2025-08-15 01:11:25'),
(5, 'NEWSPRODUCT', 'ข่าวสินค้า', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'th/news-detail/5', ',4,', NULL, 'th/product-detail/1', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 4, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-15 00:50:52', '2025-08-15 00:55:25'),
(6, 'TERM', 'TERMS OF CONDITIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, quidem cumque! Necessitatibus</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quidem laudantium aperiam, illo natus qui impedit ex laborum dignissimos perferendis in quisquam error</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; nobis veritatis veniam officiis!</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, quidem cumque! Necessitatibus</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quidem laudantium aperiam, illo natus qui impedit ex laborum dignissimos perferendis in quisquam error</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; nobis veritatis veniam officiis!</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, quidem cumque! Necessitatibus</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quidem laudantium aperiam, illo natus qui impedit ex laborum dignissimos perferendis in quisquam error</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; nobis veritatis veniam officiis!</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, quidem cumque! Necessitatibus</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; quidem laudantium aperiam, illo natus qui impedit ex laborum dignissimos perferendis in quisquam error</span></span></p>\r\n\r\n<p><span style=\"color:#098c46\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; nobis veritatis veniam officiis!</span></span></p>', NULL, ',5,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 5, NULL, NULL, NULL, 0, 1, 'th', NULL, NULL, '2025-08-18 03:11:54', '2025-08-18 03:13:46');

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
  `redirect` text DEFAULT NULL,
  `link_youtube` text NOT NULL,
  `doc_link` text NOT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `pin` tinyint(1) NOT NULL DEFAULT 0,
  `priority` varchar(255) NOT NULL DEFAULT '1',
  `language` varchar(255) NOT NULL,
  `defaults` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
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

INSERT INTO `products` (`id`, `title`, `short_url`, `thumbnail_link`, `thumbnail_title`, `thumbnail_alt`, `thumbnail_size`, `thumbnail_second_link`, `thumbnail_second_title`, `thumbnail_second_alt`, `thumbnail_second_size`, `seement`, `plant_1`, `plant_2`, `plant_3`, `fruit_1`, `fruit_2`, `fruit_3`, `taste_1`, `taste_2`, `disease_1`, `disease_2`, `category`, `redirect`, `link_youtube`, `doc_link`, `display`, `pin`, `priority`, `language`, `defaults`, `created_at`, `updated_at`, `slug`, `keyword`, `description`, `freetag`, `h1`, `h2`, `tags`, `link_facebook`, `link_twitter`, `link_instagram`, `link_line`, `post_view`, `meta_tag`, `meta_title`, `meta_description`, `last_update_by`) VALUES
(1, 'RLL 001', 'th/product-detail/1', 'upload/2025/08/18/402ccbf6eb7da72e00ecda8313a91b96(1).jpg', NULL, NULL, NULL, 'upload/2025/08/18/96632777b703aa6c16f43d1e58aca6bb(1).jpg', NULL, NULL, NULL, '19', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '- Cost management via early maturity and open field practice.', '- The fruit weighs 100–120 grams.', '- It has a square shape.', '- It has very good transportation ability.', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '- Good branching plant with heat setting.', '- Good leaf covering plant, and early maturity.', '9', NULL, 'https://www.youtube.com/embed/em-RtqAwuj8', 'pdf/docs/2025/08/18/chap4th1755501556.pdf', 1, 1, '1', 'th', 1, '2025-08-18 00:19:16', '2025-08-18 00:19:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);

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
(7, 'ข้าวโพด', 'null', 'null', '13,3,', 'upload/2025/08/04/521767fd2d86f27cd2c1781eb161ac9a.jpg', 'null', 'null', NULL, 1, 0, 1, 1, 'th', '2025-08-03 23:45:21', '2025-08-04 19:12:44'),
(8, 'มะเขือเทศ', 'null', 'null', '1,', 'upload/2025/08/04/มะเขียเทสเดินเล่น(3).png', 'null', 'null', NULL, 2, 0, 1, 1, 'th', '2025-08-04 00:51:24', '2025-08-14 21:34:28'),
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
(4, 'aa', 1, '2025-08-02 02:11:42', '2025-08-02 02:11:42'),
(6, 'qq', 1, '2025-08-03 21:29:24', '2025-08-03 21:29:24'),
(8, 'f2', 1, '2025-08-03 21:29:24', '2025-08-03 21:29:24'),
(12, 'u5', 1, '2025-08-04 00:51:24', '2025-08-04 00:51:24'),
(13, 'wy', 1, '2025-08-04 01:51:07', '2025-08-04 01:51:07'),
(14, 'MLL', 1, '2025-08-14 21:52:02', '2025-08-14 21:52:02'),
(15, 'SPL', 1, '2025-08-14 21:52:37', '2025-08-14 21:52:37'),
(16, 'BLL', 1, '2025-08-14 21:52:50', '2025-08-14 21:52:50'),
(17, 'SLL', 1, '2025-08-14 21:53:01', '2025-08-14 21:53:01'),
(18, 'CLL', 1, '2025-08-14 21:53:14', '2025-08-14 21:53:14'),
(19, 'RLL', 1, '2025-08-14 21:53:24', '2025-08-14 21:53:24');

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
(7, 'papsap2@gmail.com', '$2y$12$IFucwmYLFkXHBMJO.fWcXu6Igjxd6IzJN8//HFc/jUTy12kVFyN62', 'papsap2@gmail.com', 'backoffice', NULL, NULL, '2025-07-25 02:59:45', '2025-07-25 02:59:45'),
(9, 'papsap3@gmail.com', '$2y$12$8SMggMHwUa8qCuMzVzaEjeHHR1YZkyGx45WXAbVdWzKufCRLCDFYq', 'papsap3@gmail.com', 'backoffice', NULL, NULL, '2025-07-30 19:23:57', '2025-07-30 19:23:57');

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
(1, '1', 'webname', 'ชื่อเว็บไซต์ #1', 'Agro Star Seeds', NULL, '', '', 1, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(2, '1', 'companyname', 'ชื่อบริษัท / ชื่อร้านค้า', NULL, NULL, '', '', 3, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(3, '1', 'image_1', 'Image #1 (Logo)', NULL, 'image\\catering-img3.png', '', '', 3, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(4, '1', 'favicon', 'Image favicon (Primary)', NULL, 'image\\logo-GGS.png 1.png', '', '', 6, 1, 3, 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(5, '1', 'extraname', 'ชื่อเว็บไซต์ #2', NULL, NULL, NULL, NULL, 2, 1, 3, 'th', 1, '2025-08-01 03:33:18', '2025-08-01 03:33:18'),
(6, '1', 'image_2', 'Image #2 (Qrcode)', NULL, 'upload/2025/08/19/217555798770.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(7, '1', 'image_3', 'Image #3 (#1)', NULL, 'upload/2025/08/19/317555799570.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(8, '1', 'image_4', 'Image #4 (#2)', NULL, 'upload/2025/08/19/417555799570.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(9, '1', 'image_5', 'Image #5 (#3)', NULL, 'upload/2025/08/19/517555863240.png', NULL, NULL, 4, 1, 3, 'th', 1, '2025-08-01 03:42:32', '2025-08-01 03:42:32'),
(10, '2', 'email', 'อีเมล', 'ggs.web@greenglobalseeds.com', NULL, NULL, NULL, 3, 1, 3, 'th', 1, '2025-08-19 07:13:03', '2025-08-19 00:14:51'),
(11, '2', 'phone', 'เบอร์โทรศัพท์', '0933365675', NULL, NULL, NULL, 1, 1, 3, 'th', 1, '2025-08-19 00:14:22', '2025-08-19 00:14:42'),
(12, '2', 'website', 'เว็บไซต์', 'WWW.REENGLOBLSEEDS.COM', NULL, NULL, NULL, 2, 1, 3, 'th', 1, '2025-08-19 00:15:35', '2025-08-19 00:29:13'),
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
  `language` varchar(255) NOT NULL,
  `defaults` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_info_types`
--

INSERT INTO `web_info_types` (`id`, `type_name`, `title`, `language`, `defaults`, `created_at`, `updated_at`) VALUES
(1, 'detail', 'ข้อมูลเว็บไซต์', 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(2, 'contact', 'ข้อมูลติดต่อ', 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(3, 'location', 'ข้อมูลที่อยู่', 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(4, 'footer', 'ข้อมูลส่วนท้าย', 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44'),
(5, 'related websites', 'เว็บไซต์ที่เกี่ยวข้อง', 'th', 1, '2025-07-25 05:03:44', '2025-07-25 05:03:44');

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ad_slides`
--
ALTER TABLE `ad_slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_messages`
--
ALTER TABLE `leave_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_accounts`
--
ALTER TABLE `member_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_favors`
--
ALTER TABLE `member_favors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_profiles`
--
ALTER TABLE `member_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
