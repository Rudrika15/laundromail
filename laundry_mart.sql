-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 28, 2023 at 01:22 PM
-- Server version: 8.0.35-0ubuntu0.22.04.1
-- PHP Version: 8.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `additionals`
--

CREATE TABLE `additionals` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `description_bn` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `additional_orders`
--

CREATE TABLE `additional_orders` (
  `order_id` bigint UNSIGNED NOT NULL,
  `additional_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `store_id` bigint UNSIGNED DEFAULT NULL,
  `address_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flat_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_district_id` bigint UNSIGNED DEFAULT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_note` text COLLATE utf8mb4_unicode_ci,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_device_keys`
--

CREATE TABLE `admin_device_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_id` bigint UNSIGNED DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'ltr',
  `currency_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'prefix'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `name`, `title`, `logo`, `fav_icon`, `city`, `road`, `area`, `mobile`, `address`, `signature_id`, `currency`, `created_at`, `updated_at`, `direction`, `currency_position`) VALUES
(1, 'Laundry Mart', 'laundryMart Admin Dashboard', NULL, NULL, 'East Maureenborough', '5', 'West Roderickshire', '978.482.5201', '93415 Jasen Burgs\nLegrosville, LA 37515', NULL, '$', '2023-12-28 13:22:15', '2023-12-28 13:22:15', 'ltr', 'prefix');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areas_lat_lng`
--

CREATE TABLE `areas_lat_lng` (
  `area_id` bigint UNSIGNED NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `thumbnail_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_banner` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branch_price_lists`
--

CREATE TABLE `branch_price_lists` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_infos`
--

CREATE TABLE `card_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_no` int DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_month` int NOT NULL,
  `exp_year` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `min_amount` double(8,2) NOT NULL,
  `started_at` timestamp NOT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_users`
--

CREATE TABLE `coupon_users` (
  `id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `stripe_customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_keys`
--

CREATE TABLE `device_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_device_keys`
--

CREATE TABLE `driver_device_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_histories`
--

CREATE TABLE `driver_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_notifications`
--

CREATE TABLE `driver_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_orders`
--

CREATE TABLE `driver_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `assign_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_accept` tinyint(1) NOT NULL DEFAULT '0',
  `is_approve` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_manages`
--

CREATE TABLE `invoice_manages` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'invoice1',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `map_api_keys`
--

CREATE TABLE `map_api_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `type` enum('image','audio','video','docs','excel','pdf','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `src` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extention` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `type`, `name`, `src`, `extention`, `description`, `path`, `created_at`, `updated_at`) VALUES
(1, 'image', 'nihil', 'images/dummy/dummy-placeholder.png', 'png', 'Et in dolores nihil hic quas voluptas.', 'images/dummy/', '2023-12-28 13:22:15', '2023-12-28 13:22:15'),
(2, 'image', 'vel', 'images/dummy/dummy-placeholder.png', 'png', 'Aut minima earum rerum in eos.', 'images/dummy/', '2023-12-28 13:22:18', '2023-12-28 13:22:18'),
(3, 'image', 'numquam', 'images/dummy/dummy-placeholder.png', 'png', 'Nemo autem eveniet dolorem mollitia eum.', 'images/dummy/', '2023-12-28 13:22:18', '2023-12-28 13:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2021_09_01_000000_create_media_table', 1),
(8, '2021_09_01_100000_create_users_table', 1),
(9, '2021_09_01_200000_create_password_resets_table', 1),
(10, '2021_09_02_131940_create_failed_jobs_table', 1),
(11, '2021_09_02_131953_create_permission_tables', 1),
(12, '2021_09_08_162725_create_services_table', 1),
(13, '2021_09_11_085103_create_customers_table', 1),
(14, '2021_09_11_093146_create_stors_table', 1),
(15, '2021_09_13_171450_create_variants_table', 1),
(16, '2021_09_15_064533_create_products_table', 1),
(17, '2021_09_20_052130_create_addresses_table', 1),
(18, '2021_09_21_045821_create_banners_table', 1),
(19, '2021_09_21_045849_create_coupons_table', 1),
(20, '2021_09_21_045910_create_orders_table', 1),
(21, '2021_09_22_051934_create_order_products_table', 1),
(22, '2021_10_20_105127_create_verification_codes_table', 1),
(23, '2021_10_26_163146_create_settings_table', 1),
(24, '2021_11_02_115237_create_ratings_table', 1),
(25, '2021_11_20_072845_create_coupon_users_table', 1),
(26, '2022_03_05_120307_create_additionals_table', 1),
(27, '2022_03_06_103410_create_additional_orders_table', 1),
(28, '2022_04_13_123324_create_contacts_table', 1),
(29, '2022_06_30_152555_create_mobile_app_urls_table', 1),
(30, '2022_07_05_123925_create_payments_table', 1),
(31, '2022_08_03_114942_create_device_keys_table', 1),
(32, '2022_08_11_120358_create_notifications_table', 1),
(33, '2022_08_11_163235_create_admin_device_key_table', 1),
(34, '2022_08_21_180225_create_card_infos_table', 1),
(35, '2022_09_21_182517_create_drivers_table', 1),
(36, '2022_09_22_125851_create_driver_orders_table', 1),
(37, '2022_09_26_162755_create_driver_device_key_table', 1),
(38, '2022_09_28_170609_create_driver_notifications_table', 1),
(39, '2022_10_30_152931_create_social_link_table', 1),
(40, '2023_01_12_104744_create_stripe_keys_table', 1),
(41, '2023_01_12_114626_create_app_settings_table', 1),
(42, '2023_02_01_164032_create_order_schedules_table', 1),
(43, '2023_02_11_122549_create_invoice_manages_table', 1),
(44, '2023_03_31_115106_create_areas_table', 1),
(45, '2023_04_01_111037_create_driver_histories_table', 1),
(46, '2023_05_08_093157_create_wallets_table', 1),
(47, '2023_05_08_093206_create_transactions_table', 1),
(48, '2023_06_07_064343_add_is_withdrow_column_to_transaction_table', 1),
(49, '2023_06_20_045614_create_store_services_table', 1),
(50, '2023_07_23_104415_add_shop_id_to_address_table', 1),
(51, '2023_07_25_050825_add_invoice_path_to_order_table', 1),
(52, '2023_07_26_053821_add_is_default_to_address_table', 1),
(53, '2023_08_10_051912_add_qrcode_url_to_product_table', 1),
(54, '2023_08_29_091920_create_branch_price_lists_table', 1),
(55, '2023_10_25_092944_add_user_id_to_invoice_manages_table', 1),
(56, '2023_11_14_042507_create_abouts_table', 1),
(57, '2023_11_18_043429_create_languages_table', 1),
(58, '2023_11_18_065741_add_column_to_app_setting_table', 1),
(59, '2023_12_12_130451_add_store_id_column_to_drivers_table', 1),
(60, '2023_12_12_131915_add_vehicle_type_column_to_users_table', 1),
(61, '2023_12_13_130741_add_column_to_driver_orders_table', 1),
(62, '2023_12_26_015817_add_invoice_name_column_to_invoice_manages_table', 1),
(63, '2023_12_27_164653_create_areas_lat_lng_table', 1),
(64, '2023_12_27_185524_add_store_id_to_areas_table', 1),
(65, '2023_12_28_133221_create_map_api_keys_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_app_urls`
--

CREATE TABLE `mobile_app_urls` (
  `id` bigint UNSIGNED NOT NULL,
  `android_url` text COLLATE utf8mb4_unicode_ci,
  `ios_url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 1),
(15, 'App\\Models\\User', 1),
(16, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 1),
(18, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 1),
(20, 'App\\Models\\User', 1),
(21, 'App\\Models\\User', 1),
(22, 'App\\Models\\User', 1),
(23, 'App\\Models\\User', 1),
(24, 'App\\Models\\User', 1),
(25, 'App\\Models\\User', 1),
(26, 'App\\Models\\User', 1),
(27, 'App\\Models\\User', 1),
(28, 'App\\Models\\User', 1),
(29, 'App\\Models\\User', 1),
(30, 'App\\Models\\User', 1),
(31, 'App\\Models\\User', 1),
(32, 'App\\Models\\User', 1),
(33, 'App\\Models\\User', 1),
(34, 'App\\Models\\User', 1),
(35, 'App\\Models\\User', 1),
(36, 'App\\Models\\User', 1),
(37, 'App\\Models\\User', 1),
(38, 'App\\Models\\User', 1),
(39, 'App\\Models\\User', 1),
(40, 'App\\Models\\User', 1),
(41, 'App\\Models\\User', 1),
(42, 'App\\Models\\User', 1),
(43, 'App\\Models\\User', 1),
(44, 'App\\Models\\User', 1),
(45, 'App\\Models\\User', 1),
(46, 'App\\Models\\User', 1),
(47, 'App\\Models\\User', 1),
(48, 'App\\Models\\User', 1),
(49, 'App\\Models\\User', 1),
(50, 'App\\Models\\User', 1),
(51, 'App\\Models\\User', 1),
(52, 'App\\Models\\User', 1),
(53, 'App\\Models\\User', 1),
(54, 'App\\Models\\User', 1),
(55, 'App\\Models\\User', 1),
(56, 'App\\Models\\User', 1),
(57, 'App\\Models\\User', 1),
(58, 'App\\Models\\User', 1),
(59, 'App\\Models\\User', 1),
(60, 'App\\Models\\User', 1),
(61, 'App\\Models\\User', 1),
(62, 'App\\Models\\User', 1),
(63, 'App\\Models\\User', 1),
(64, 'App\\Models\\User', 1),
(65, 'App\\Models\\User', 1),
(66, 'App\\Models\\User', 1),
(67, 'App\\Models\\User', 1),
(68, 'App\\Models\\User', 1),
(69, 'App\\Models\\User', 1),
(70, 'App\\Models\\User', 1),
(71, 'App\\Models\\User', 1),
(72, 'App\\Models\\User', 1),
(73, 'App\\Models\\User', 1),
(74, 'App\\Models\\User', 1),
(75, 'App\\Models\\User', 1),
(76, 'App\\Models\\User', 1),
(77, 'App\\Models\\User', 1),
(78, 'App\\Models\\User', 1),
(79, 'App\\Models\\User', 1),
(80, 'App\\Models\\User', 1),
(81, 'App\\Models\\User', 1),
(82, 'App\\Models\\User', 1),
(83, 'App\\Models\\User', 1),
(84, 'App\\Models\\User', 1),
(85, 'App\\Models\\User', 1),
(86, 'App\\Models\\User', 1),
(87, 'App\\Models\\User', 1),
(88, 'App\\Models\\User', 1),
(89, 'App\\Models\\User', 1),
(90, 'App\\Models\\User', 1),
(91, 'App\\Models\\User', 1),
(92, 'App\\Models\\User', 1),
(93, 'App\\Models\\User', 1),
(94, 'App\\Models\\User', 1),
(95, 'App\\Models\\User', 1),
(96, 'App\\Models\\User', 1),
(97, 'App\\Models\\User', 1),
(98, 'App\\Models\\User', 1),
(99, 'App\\Models\\User', 1),
(100, 'App\\Models\\User', 1),
(101, 'App\\Models\\User', 1),
(102, 'App\\Models\\User', 1),
(103, 'App\\Models\\User', 1),
(104, 'App\\Models\\User', 1),
(105, 'App\\Models\\User', 1),
(106, 'App\\Models\\User', 1),
(107, 'App\\Models\\User', 1),
(108, 'App\\Models\\User', 1),
(109, 'App\\Models\\User', 1),
(110, 'App\\Models\\User', 1),
(111, 'App\\Models\\User', 1),
(112, 'App\\Models\\User', 1),
(113, 'App\\Models\\User', 1),
(114, 'App\\Models\\User', 1),
(115, 'App\\Models\\User', 1),
(116, 'App\\Models\\User', 1),
(117, 'App\\Models\\User', 1),
(118, 'App\\Models\\User', 1),
(119, 'App\\Models\\User', 1),
(120, 'App\\Models\\User', 1),
(121, 'App\\Models\\User', 1),
(122, 'App\\Models\\User', 1),
(123, 'App\\Models\\User', 1),
(124, 'App\\Models\\User', 1),
(125, 'App\\Models\\User', 1),
(126, 'App\\Models\\User', 1),
(127, 'App\\Models\\User', 1),
(128, 'App\\Models\\User', 1),
(129, 'App\\Models\\User', 1),
(130, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(7, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
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
(1, NULL, 'laundryMart Personal Access Client', 'ru0cZ1m7dwQ0blIe6isFsAeIjxq2iDHKcrK2E2g7', NULL, 'http://localhost', 1, 0, 0, '2023-12-28 13:22:20', '2023-12-28 13:22:20'),
(2, NULL, 'laundryMart Password Grant Client', 'qkszDqi6Anv5KxyE8ccD90eiVCZOmqZlnIH5ZhJZ', 'users', 'http://localhost', 0, 1, 0, '2023-12-28 13:22:20', '2023-12-28 13:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-28 13:22:20', '2023-12-28 13:22:20');

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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED DEFAULT NULL,
  `pick_date` date NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `pick_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payable_amount` double(8,2) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `delivery_charge` double(8,2) NOT NULL DEFAULT '0.00',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` bigint UNSIGNED NOT NULL,
  `instruction` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_schedules`
--

CREATE TABLE `order_schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` int NOT NULL,
  `end_time` int NOT NULL,
  `per_hour` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `type` enum('pickup','delivery') COLLATE utf8mb4_unicode_ci NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp` date NOT NULL,
  `last_no` int NOT NULL,
  `transaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'root', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(2, 'service.index', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(3, 'service.create', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(4, 'service.store', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(5, 'service.edit', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(6, 'service.update', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(7, 'service.status.toggle', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(8, 'additional.index', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(9, 'additional.create', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(10, 'additional.store', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(11, 'additional.edit', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(12, 'additional.update', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(13, 'additional.status.toggle', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(14, 'variant.index', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(15, 'variant.update', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(16, 'variant.create', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(17, 'variant.store', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(18, 'variant.products', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(19, 'notification.index', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(20, 'notification.send', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(21, 'customer.index', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(22, 'customer.show', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(23, 'customer.create', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(24, 'customer.store', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(25, 'customer.edit', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(26, 'customer.update', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(27, 'customer.change.password', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(28, 'customer.update.password', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(29, 'product.index', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(30, 'product.create', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(31, 'product.store', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(32, 'product.show', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(33, 'product.edit', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(34, 'product.update', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(35, 'product.status.toggle', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(36, 'banner.index', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(37, 'banner.promotional', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(38, 'banner.store', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(39, 'banner.edit', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(40, 'banner.update', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(41, 'banner.destroy', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(42, 'banner.status.toggle', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(43, 'order.index', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(44, 'order.show', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(45, 'order.status.change', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(46, 'order.print.labels', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(47, 'order.print.invioce', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(48, 'orderIncomplete.index', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(49, 'orderIncomplete.paid', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(50, 'revenue.index', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(51, 'revenue.generate.pdf', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(52, 'report.generate.pdf', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(53, 'coupon.index', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(54, 'coupon.create', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(55, 'coupon.store', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(56, 'coupon.edit', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(57, 'coupon.update', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(58, 'contact', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(59, 'driver.index', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(60, 'driver.create', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(61, 'driver.store', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(62, 'driverAssign', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(63, 'driver.details', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(64, 'profile.index', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(65, 'profile.update', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(66, 'profile.edit', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(67, 'profile.change-password', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(68, 'schedule.index', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(69, 'toggole.status.update', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(70, 'schedule.update', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(71, 'dashboard.calculation', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(72, 'dashboard.revenue', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(73, 'dashboard.overview', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(74, 'setting.show', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(75, 'setting.edit', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(76, 'setting.update', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(77, 'vendor.index', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(78, 'vendor.create', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(79, 'vendor.store', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(80, 'vendor.edit', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(81, 'vendor.update', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(82, 'vendor.delete', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(83, 'vendor.wallet', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(84, 'vendor.shop', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(85, 'vendor.shop.transaction', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(86, 'vendor.status.toggle', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(87, 'vendor.shop.details', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(88, 'vendor.commissionUpdate', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(89, 'shop.index', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(90, 'shop.create', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(91, 'shop.store', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(92, 'shop.edit', 'web', '2023-12-28 13:22:11', '2023-12-28 13:22:11'),
(93, 'shop.update', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(94, 'shop.delete', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(95, 'shop.wallet', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(96, 'shop.transaction', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(97, 'shop.order', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(98, 'shop.status.toggle', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(99, 'shop.show', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(100, 'shoplist.index', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(101, 'shoplist.details', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(102, 'shop.service', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(103, 'shop.service.update', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(104, 'shop.product', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(105, 'shop.product.approve', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(106, 'shop.variant', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(107, 'shop.variant.approve', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(108, 'shop.commissionUpdate', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(109, 'shop.generateReport', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(110, 'shop.order.export', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(111, 'shop.store.export', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(112, 'wallet.index', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(113, 'wallet.store', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(114, 'wallet.update', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(115, 'wallet.transction', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(116, 'wallet.withdraw', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(117, 'store.location-update', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(118, 'store.index', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(119, 'store.edit', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(120, 'store.update', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(121, 'store.user.update', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(122, 'store.address', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(123, 'store.address.update', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(124, 'shops.map-view', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(125, 'invoiceManage.index', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(126, 'invoiceManage.update', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(127, 'language.index', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(128, 'language.edit', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(129, 'language.update', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12'),
(130, 'language.delete', 'web', '2023-12-28 13:22:12', '2023-12-28 13:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `variant_id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `thumbnail_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` double(8,2) DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `order` bigint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qrcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'root', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(2, 'admin', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(3, 'vendor', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(4, 'store', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(5, 'employe', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(6, 'customer', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(7, 'visitor', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10'),
(8, 'driver', 'web', '2023-12-28 13:22:10', '2023-12-28 13:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(114, 1),
(117, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(1, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(1, 3),
(2, 3),
(43, 3),
(50, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(100, 3),
(101, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(124, 3),
(125, 3),
(126, 3),
(1, 4),
(2, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(57, 4),
(59, 4),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(68, 4),
(69, 4),
(70, 4),
(71, 4),
(72, 4),
(73, 4),
(112, 4),
(115, 4),
(116, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 4),
(121, 4),
(122, 4),
(123, 4),
(125, 4),
(126, 4),
(127, 4),
(128, 4),
(129, 4),
(130, 4);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `description_bn` longtext COLLATE utf8mb4_unicode_ci,
  `thumbnail_id` bigint UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', 'privacy-policy', 'Voluptate sit ea sed aut saepe voluptas fugiat. Optio est ipsum perspiciatis doloribus quia tenetur. Voluptas ut libero placeat saepe voluptatem delectus aut.\n\nFacilis est autem laboriosam. Dolorem incidunt tempora quia. Voluptate vitae accusamus dolore.\n\nAt ut occaecati velit. Voluptatem iste animi est. Non et esse qui et sint aut iste. Dolore voluptatibus non quam repellat.\n\nAssumenda totam consequatur nam et voluptates a voluptatum. Debitis vero molestiae aut est. Reiciendis aut vero dolores. Quas eos dolor explicabo unde.\n\nRatione est qui enim exercitationem ipsa aut. Est eaque et odit ex quia dolore voluptates. Sapiente odio quisquam odit ipsum illo provident perspiciatis.', '2023-12-28 13:22:15', '2023-12-28 13:22:15'),
(2, 'Trams of service', 'trams-of-service', 'Omnis ea et voluptatum sed ipsa laboriosam beatae. Laborum sunt sit repudiandae et esse omnis blanditiis. Exercitationem necessitatibus sapiente debitis provident error cupiditate minus. Aspernatur ut quis deleniti accusantium.\n\nRepellat sit aspernatur aut. Culpa veritatis deleniti non voluptas aut assumenda. Voluptatem non cumque vel dolores non. Repudiandae placeat est quia sapiente molestiae laboriosam.\n\nLabore voluptas ea hic unde voluptate. Id quidem vel quam necessitatibus eius inventore. Iste molestiae vitae laudantium consectetur sunt. Ut ullam et deleniti odit sint ab ea. Ipsa suscipit unde facere enim iure non.\n\nDistinctio repellendus eius sed id. Quis quae est aut repellat. Et labore illum blanditiis rerum odit est eos. Commodi reprehenderit iusto velit quo natus.\n\nId odit ullam enim voluptas aliquam mollitia qui. Eum sit provident enim facere sequi. Nam saepe placeat sit eos delectus. Nesciunt minus reprehenderit doloribus ratione unde.', '2023-12-28 13:22:15', '2023-12-28 13:22:15'),
(3, 'Contact us', 'contact-us', 'Enim possimus qui beatae placeat enim unde. Et eum vero et reiciendis maxime quisquam iure. Non possimus blanditiis quaerat magni assumenda voluptatem. Aliquam et eum vero.\n\nInventore velit ad eius maiores laudantium aut ea. Voluptatem amet corporis aut in minus rerum nisi. Minus repudiandae non qui autem consectetur.\n\nFugiat accusantium et ad quo officia. Voluptatem et velit quia inventore dignissimos. Animi qui voluptatem at praesentium corporis quo quia.\n\nCum nam minima quibusdam animi consequatur. At quo ipsam ut adipisci. Ad et impedit est labore aut sapiente. Quo et expedita voluptatibus vel delectus accusantium.\n\nSuscipit sed voluptatem hic omnis nam. Similique similique praesentium quia. Quos quos provident atque quis commodi dolore odit.', '2023-12-28 13:22:15', '2023-12-28 13:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint UNSIGNED NOT NULL,
  `media_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint UNSIGNED NOT NULL,
  `shop_owner` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_id` bigint UNSIGNED DEFAULT NULL,
  `banner_id` bigint UNSIGNED DEFAULT NULL,
  `delivery_charge` double(8,2) DEFAULT '0.00',
  `min_order_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `max_order_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` double(8,2) NOT NULL DEFAULT '0.00',
  `prifix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MV',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_services`
--

CREATE TABLE `store_services` (
  `store_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_keys`
--

CREATE TABLE `stripe_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED DEFAULT NULL,
  `wallet_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `transition_id` bigint DEFAULT NULL,
  `transition_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'credit',
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_withdraw` tinyint(1) NOT NULL DEFAULT '0',
  `accept` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo_id` bigint UNSIGNED DEFAULT NULL,
  `gender` enum('Male','Female','Others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driving_lience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `mobile`, `email`, `email_verified_at`, `mobile_verified_at`, `is_active`, `password`, `profile_photo_id`, `gender`, `alternative_phone`, `driving_lience`, `date_of_birth`, `vehicle_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Root', 'Dickens', '01000000001', 'root@laundrymart.com', '2023-12-28 13:22:15', '2023-12-28 13:22:15', 1, '$2y$10$fHi6dPTpsWeEkOP4QAOxaen2310H.a45Rm2kRiS2uugPUM1lbWaHa', 1, NULL, NULL, NULL, NULL, NULL, 'KVVi9r9cMS', '2023-12-28 13:22:15', '2023-12-28 13:22:15'),
(2, 'Admin', 'Fadel', '01000000002', 'admin@laundrymart.com', '2023-12-28 13:22:18', '2023-12-28 13:22:18', 1, '$2y$10$Pp25mMlsfqDBCxgITf1fP.WExnLeMnIENLv8Ei1qd7v1XmIhgK.s6', 2, NULL, NULL, NULL, NULL, NULL, 'vuYBbFtz8Y', '2023-12-28 13:22:18', '2023-12-28 13:22:18'),
(3, 'Visitor', 'Spinka', '01000000003', 'visitor@laundrymart.com', '2023-12-28 13:22:18', '2023-12-28 13:22:18', 1, '$2y$10$gOQJdKKbnnQe1Yboa6Iq7.MGrSBd3hWdBj/5ZpDrtYIfmCxm7obWm', 3, NULL, NULL, NULL, NULL, NULL, '6Na1J1opam', '2023-12-28 13:22:18', '2023-12-28 13:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verification_codes`
--

CREATE TABLE `verification_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 43.61, '2023-12-28 13:22:15', '2023-12-28 13:22:15'),
(2, 2, 68.67, '2023-12-28 13:22:18', '2023-12-28 13:22:18'),
(3, 3, 87.42, '2023-12-28 13:22:18', '2023-12-28 13:22:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `additionals`
--
ALTER TABLE `additionals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `additionals_service_id_foreign` (`service_id`),
  ADD KEY `additionals_store_id_foreign` (`store_id`);

--
-- Indexes for table `additional_orders`
--
ALTER TABLE `additional_orders`
  ADD KEY `additional_orders_order_id_foreign` (`order_id`),
  ADD KEY `additional_orders_additional_id_foreign` (`additional_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `addresses_store_id_foreign` (`store_id`);

--
-- Indexes for table `admin_device_keys`
--
ALTER TABLE `admin_device_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_device_keys_user_id_foreign` (`user_id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_store_id_foreign` (`store_id`);

--
-- Indexes for table `areas_lat_lng`
--
ALTER TABLE `areas_lat_lng`
  ADD KEY `areas_lat_lng_area_id_foreign` (`area_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_thumbnail_id_foreign` (`thumbnail_id`);

--
-- Indexes for table `branch_price_lists`
--
ALTER TABLE `branch_price_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_infos`
--
ALTER TABLE `card_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_infos_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_store_id_foreign` (`store_id`);

--
-- Indexes for table `coupon_users`
--
ALTER TABLE `coupon_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_users_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `device_keys`
--
ALTER TABLE `device_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_keys_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`),
  ADD KEY `drivers_store_id_foreign` (`store_id`);

--
-- Indexes for table `driver_device_keys`
--
ALTER TABLE `driver_device_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_device_keys_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `driver_histories`
--
ALTER TABLE `driver_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_histories_driver_id_foreign` (`driver_id`),
  ADD KEY `driver_histories_order_id_foreign` (`order_id`);

--
-- Indexes for table `driver_notifications`
--
ALTER TABLE `driver_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_notifications_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `driver_orders`
--
ALTER TABLE `driver_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_orders_order_id_foreign` (`order_id`),
  ADD KEY `driver_orders_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoice_manages`
--
ALTER TABLE `invoice_manages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_manages_user_id_foreign` (`user_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map_api_keys`
--
ALTER TABLE `map_api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_app_urls`
--
ALTER TABLE `mobile_app_urls`
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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_customer_id_foreign` (`customer_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_store_id_foreign` (`store_id`),
  ADD KEY `orders_coupon_id_foreign` (`coupon_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_schedules`
--
ALTER TABLE `order_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_schedules_store_id_foreign` (`store_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_service_id_foreign` (`service_id`),
  ADD KEY `products_variant_id_foreign` (`variant_id`),
  ADD KEY `products_store_id_foreign` (`store_id`),
  ADD KEY `products_thumbnail_id_foreign` (`thumbnail_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_order_id_foreign` (`order_id`),
  ADD KEY `ratings_store_id_foreign` (`store_id`),
  ADD KEY `ratings_customer_id_foreign` (`customer_id`);

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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_thumbnail_id_foreign` (`thumbnail_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_links_media_id_foreign` (`media_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_shop_owner_foreign` (`shop_owner`),
  ADD KEY `stores_logo_id_foreign` (`logo_id`),
  ADD KEY `stores_banner_id_foreign` (`banner_id`);

--
-- Indexes for table `store_services`
--
ALTER TABLE `store_services`
  ADD KEY `store_services_store_id_foreign` (`store_id`),
  ADD KEY `store_services_service_id_foreign` (`service_id`);

--
-- Indexes for table `stripe_keys`
--
ALTER TABLE `stripe_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_store_id_foreign` (`store_id`),
  ADD KEY `transactions_wallet_id_foreign` (`wallet_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_profile_photo_id_foreign` (`profile_photo_id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_service_id_foreign` (`service_id`),
  ADD KEY `variants_store_id_foreign` (`store_id`);

--
-- Indexes for table `verification_codes`
--
ALTER TABLE `verification_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `verification_codes_otp_unique` (`otp`),
  ADD UNIQUE KEY `verification_codes_token_unique` (`token`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `additionals`
--
ALTER TABLE `additionals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_device_keys`
--
ALTER TABLE `admin_device_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch_price_lists`
--
ALTER TABLE `branch_price_lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_infos`
--
ALTER TABLE `card_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_users`
--
ALTER TABLE `coupon_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_keys`
--
ALTER TABLE `device_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_device_keys`
--
ALTER TABLE `driver_device_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_histories`
--
ALTER TABLE `driver_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_notifications`
--
ALTER TABLE `driver_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_orders`
--
ALTER TABLE `driver_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_manages`
--
ALTER TABLE `invoice_manages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `map_api_keys`
--
ALTER TABLE `map_api_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `mobile_app_urls`
--
ALTER TABLE `mobile_app_urls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_schedules`
--
ALTER TABLE `order_schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_keys`
--
ALTER TABLE `stripe_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verification_codes`
--
ALTER TABLE `verification_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `additionals`
--
ALTER TABLE `additionals`
  ADD CONSTRAINT `additionals_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `additionals_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `additional_orders`
--
ALTER TABLE `additional_orders`
  ADD CONSTRAINT `additional_orders_additional_id_foreign` FOREIGN KEY (`additional_id`) REFERENCES `additionals` (`id`),
  ADD CONSTRAINT `additional_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `addresses_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `admin_device_keys`
--
ALTER TABLE `admin_device_keys`
  ADD CONSTRAINT `admin_device_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `areas_lat_lng`
--
ALTER TABLE `areas_lat_lng`
  ADD CONSTRAINT `areas_lat_lng_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_thumbnail_id_foreign` FOREIGN KEY (`thumbnail_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `card_infos`
--
ALTER TABLE `card_infos`
  ADD CONSTRAINT `card_infos_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `coupon_users`
--
ALTER TABLE `coupon_users`
  ADD CONSTRAINT `coupon_users_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `coupon_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `device_keys`
--
ALTER TABLE `device_keys`
  ADD CONSTRAINT `device_keys_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `driver_device_keys`
--
ALTER TABLE `driver_device_keys`
  ADD CONSTRAINT `driver_device_keys_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`);

--
-- Constraints for table `driver_histories`
--
ALTER TABLE `driver_histories`
  ADD CONSTRAINT `driver_histories_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `driver_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `driver_notifications`
--
ALTER TABLE `driver_notifications`
  ADD CONSTRAINT `driver_notifications_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`);

--
-- Constraints for table `driver_orders`
--
ALTER TABLE `driver_orders`
  ADD CONSTRAINT `driver_orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `driver_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `invoice_manages`
--
ALTER TABLE `invoice_manages`
  ADD CONSTRAINT `invoice_manages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `order_schedules`
--
ALTER TABLE `order_schedules`
  ADD CONSTRAINT `order_schedules_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `products_thumbnail_id_foreign` FOREIGN KEY (`thumbnail_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `products_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ratings_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_thumbnail_id_foreign` FOREIGN KEY (`thumbnail_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `social_links`
--
ALTER TABLE `social_links`
  ADD CONSTRAINT `social_links_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_banner_id_foreign` FOREIGN KEY (`banner_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `stores_logo_id_foreign` FOREIGN KEY (`logo_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `stores_shop_owner_foreign` FOREIGN KEY (`shop_owner`) REFERENCES `users` (`id`);

--
-- Constraints for table `store_services`
--
ALTER TABLE `store_services`
  ADD CONSTRAINT `store_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `store_services_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `transactions_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_profile_photo_id_foreign` FOREIGN KEY (`profile_photo_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `variants_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
