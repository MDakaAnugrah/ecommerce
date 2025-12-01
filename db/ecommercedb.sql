-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 01:13 PM
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
-- Database: `ecommercedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `zip` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'home',
  `isdefault` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `phone`, `locality`, `address`, `city`, `state`, `country`, `landmark`, `zip`, `type`, `isdefault`, `created_at`, `updated_at`) VALUES
(1, 2, 'username123', '1234567892', 'Jl. Kenangan', 'asjdawkjd', 'South City', 'Kulon', 'Indonesia', 'Tower ABCD', '123456', 'home', 1, '2024-11-24 16:23:48', '2024-11-24 16:23:48'),
(2, 3, 'daka1', '0123456789', 'JL. Cinta', 'Jl. H. Kodja Raya No.55, Kukusan, Kecamatan Beji,', 'depok', 'Indonesia', 'Indonesia', 'tower ikod', '101010', 'home', 1, '2024-12-07 22:39:03', '2024-12-07 22:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Nike', 'nike', '1734199256.jpg', '2024-11-23 04:20:48', '2024-12-14 11:00:56'),
(2, 'Adidas', 'adidas', '1734199219.jpg', '2024-11-24 01:55:16', '2024-12-14 11:00:19'),
(3, 'New Balance', 'new-balance', '1734199178.jpg', '2024-11-24 04:52:45', '2024-12-14 10:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin|127.0.0.1', 'i:2;', 1734198165),
('admin|127.0.0.1:timer', 'i:1734198165;', 1734198165);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Man', 'man', '1734199517.jpg', NULL, '2024-11-23 04:21:28', '2024-12-14 11:05:17'),
(2, 'Woman', 'woman', '1734199495.jpg', NULL, '2024-11-24 01:54:47', '2024-12-14 11:04:55'),
(3, 'Children', 'children', '1734199466.jpg', NULL, '2024-11-24 04:52:30', '2024-12-14 11:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', '1234567890', 'Test Comment', '2024-11-27 20:15:32', '2024-11-27 20:15:32'),
(3, 'Daka', 'daka@gmail.com', '0123456789', 'Hello i want to ask, when my order can get delivered? Thank you.', '2024-12-07 22:46:15', '2024-12-07 22:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('fixed','percent') NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `expiry_date` date NOT NULL DEFAULT cast(current_timestamp() as date),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, 'OFF10', 'fixed', 30.00, 50.00, '2024-11-27', '2024-11-24 13:36:50', '2024-11-24 14:41:52'),
(2, 'OFF20', 'fixed', 20.00, 250.00, '2024-11-30', '2024-11-24 13:37:34', '2024-11-24 13:37:34'),
(3, 'OFF50', 'fixed', 50.00, 600.00, '2025-07-01', '2024-11-24 13:38:52', '2024-11-24 13:52:31'),
(5, 'PLG1', 'percent', 10.00, 500.00, '2025-01-15', '2024-12-14 12:27:23', '2024-12-14 12:27:23');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(13, '0001_01_01_000000_create_users_table', 1),
(14, '0001_01_01_000001_create_cache_table', 1),
(15, '0001_01_01_000002_create_jobs_table', 1),
(16, '2024_11_21_015953_create_brands_table', 1),
(17, '2024_11_22_181329_create_categories_table', 1),
(18, '2024_11_22_221823_create_products_table', 1),
(19, '2024_11_24_191740_create_orders_table', 2),
(20, '2024_11_24_191758_create_order_items_table', 2),
(21, '2024_11_24_191815_create_addresses_table', 2),
(22, '2024_11_24_191840_create_transactions_table', 2),
(23, '2024_11_24_200333_create_coupons_table', 3),
(24, '2024_11_27_024139_create_slides_table', 4),
(25, '2024_11_27_042641_create_month_names_table', 5),
(26, '2024_11_28_025823_create_contacts_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `month_names`
--

CREATE TABLE `month_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `month_names`
--

INSERT INTO `month_names` (`id`, `name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `zip` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'home',
  `status` enum('ordered','delivered','canceled') NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `name`, `phone`, `locality`, `address`, `city`, `state`, `country`, `landmark`, `zip`, `type`, `status`, `is_shipping_different`, `delivered_date`, `canceled_date`, `created_at`, `updated_at`) VALUES
(1, 2, 30.00, 30.00, 6.30, 36.30, 'username123', '1234567892', 'Jl. Kenangan', 'asjdawkjd', 'South City', 'Kulon', 'Indonesia', 'Tower ABCD', '123456', 'home', 'ordered', 0, NULL, NULL, '2024-11-24 16:23:48', '2024-11-24 16:23:48'),
(5, 2, 510.00, 0.00, 107.10, 617.10, 'username123', '1234567892', 'Jl. Kenangan', 'asjdawkjd', 'South City', 'Kulon', 'Indonesia', 'Tower ABCD', '123456', 'home', 'canceled', 0, '2024-11-27', '2024-11-27', '2024-11-24 17:10:59', '2024-11-26 19:35:57'),
(8, 3, 408.00, 0.00, 85.68, 493.68, 'daka1', '0123456789', 'JL. Cinta', 'Jl. H. Kodja Raya No.55, Kukusan, Kecamatan Beji,', 'depok', 'Indonesia', 'Indonesia', 'tower ikod', '101010', 'home', 'delivered', 0, '2024-12-08', NULL, '2024-12-07 22:41:13', '2024-12-07 22:43:15'),
(9, 2, 517.50, 57.50, 108.68, 626.18, 'username123', '1234567892', 'Jl. Kenangan', 'asjdawkjd', 'South City', 'Kulon', 'Indonesia', 'Tower ABCD', '123456', 'home', 'delivered', 0, '2024-12-14', NULL, '2024-12-14 12:28:50', '2024-12-14 12:30:04'),
(10, 2, 247.00, 0.00, 51.87, 298.87, 'username123', '1234567892', 'Jl. Kenangan', 'asjdawkjd', 'South City', 'Kulon', 'Indonesia', 'Tower ABCD', '123456', 'home', 'ordered', 0, NULL, NULL, '2024-12-14 20:56:48', '2024-12-14 20:56:48'),
(11, 2, 71.00, 0.00, 14.91, 85.91, 'username123', '1234567892', 'Jl. Kenangan', 'asjdawkjd', 'South City', 'Kulon', 'Indonesia', 'Tower ABCD', '123456', 'home', 'ordered', 0, NULL, NULL, '2024-12-14 21:27:22', '2024-12-14 21:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `options` longtext DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `options`, `rstatus`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 60.00, 1, NULL, 0, '2024-11-24 16:23:48', '2024-11-24 16:23:48'),
(10, 5, 5, 60.00, 1, NULL, 0, '2024-11-24 17:10:59', '2024-11-24 17:10:59'),
(11, 4, 5, 300.00, 1, NULL, 0, '2024-11-24 17:10:59', '2024-11-24 17:10:59'),
(12, 3, 5, 150.00, 1, NULL, 0, '2024-11-24 17:10:59', '2024-11-24 17:10:59'),
(17, 3, 8, 204.00, 2, NULL, 0, '2024-12-07 22:41:13', '2024-12-07 22:41:13'),
(18, 12, 9, 61.00, 1, NULL, 0, '2024-12-14 12:28:50', '2024-12-14 12:28:50'),
(19, 9, 9, 104.00, 1, NULL, 0, '2024-12-14 12:28:50', '2024-12-14 12:28:50'),
(20, 10, 9, 410.00, 1, NULL, 0, '2024-12-14 12:28:50', '2024-12-14 12:28:50'),
(21, 9, 10, 104.00, 1, NULL, 0, '2024-12-14 20:56:48', '2024-12-14 20:56:48'),
(22, 5, 10, 143.00, 1, NULL, 0, '2024-12-14 20:56:48', '2024-12-14 20:56:48'),
(23, 4, 11, 71.00, 1, NULL, 0, '2024-12-14 21:27:22', '2024-12-14 21:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(2, 'Air Jordan 1 Low', 'air-jordan-1-low', 'Size 10', 'LOW ON THE GO.\r\n\r\nAlways in, always fresh. The Air Jordan 1 Low sets you up with a piece of Jordan history and heritage that\'s comfortable all day. Choose your colours, then step out in the iconic profile that\'s built with a high-end mix of materials and encapsulated Air in the heel.\r\n\r\nHigh-End Materials\r\nFor this go, the Low features a high-end mix of leather and synthetic materials in the upper.\r\n\r\nAir Within\r\nAn Air unit is encapsulated in the heel, giving you lightweight cushioning that\'s been a sensation for more than a generation.\r\n\r\nTimeless Trims\r\nThe Wings logo on the heel and a Jumpman design on the tongue make this a shoe with iconic details.\r\n\r\nProduct details\r\nWings logo on the heel\r\nStitched Swoosh design\r\nPerforated toe\r\nFoam midsole\r\nRubber traction\r\nColour Shown: White/White/Black\r\nStyle: DC0774-101\r\nCountry/Region of Origin: Indonesia, Vietnam', 200.00, 100.00, 'NKW001', 'instock', 1, 15, '1733333879.jpg', '1733454956-1.png,1733454956-2.png', 2, 1, '2024-11-23 15:20:24', '2024-12-05 20:15:56'),
(3, 'Air Jordan 9 Retro \'Powder Blue\'', 'air-jordan-9-retro-powder-blue', 'Size 11', 'In celebration of its 30th anniversary—and the first release with original design specs since its \'93 debut—we give you the AJ9. It\'s only right that it features comfortable Air cushioning and crisp leather. The classic colour scheme is here too, with clean white and black accented with bold hits of blue. With a shoe this good-looking, your \'fit is sure to be fresh.\r\n\r\nBenefits\r\nFull-grain leather in the upper offers durability and structure.\r\nNike Air technology absorbs impact for cushioning with every step.\r\nRubber in the outsole helps give you everyday traction.\r\nProduct details\r\nColour Shown: Summit White/Dark Powder Blue/Black\r\nStyle: FQ8992-101\r\nCountry/Region of Origin: Vietnam', 204.00, NULL, 'PKT1002', 'instock', 1, 15, '1733335605.png', '1733454946-1.png,1733454946-2.png', 1, 1, '2024-11-24 01:56:12', '2024-12-05 20:53:41'),
(4, 'Nike SB Day One', 'nike-sb-day-one', 'Older Kids\' Skate Shoes', 'Finally, a skate shoe made just for you! The Nike SB Day One is the first Nike skate shoe made from the ground up specifically for kids. Its skate-specific tread and Air Zoom cushioning help you keep pushing and trying new tricks, while breathable mesh and suede overlays offer comfort and durability.\r\n\r\n\r\nColour Shown: Coconut Milk/Coconut Milk/Seafoam/Baroque Brown\r\nStyle: HQ3475-121\r\nCountry/Region of Origin: Vietnam', 71.00, NULL, 'NKC001', 'instock', 1, 14, '1734200793.png', '1734200064-1.png,1734200064-2.png,1734200064-3.png', 3, 1, '2024-11-24 01:56:56', '2024-12-14 11:26:34'),
(5, 'NEW BALANCE M1000CA', 'new-balance-m1000ca', 'SEA SALT/HERON BLUE', 'The reissued 1000 brings a turn of the millennium classic out of the archives. Originally released in 1999, the 1000 embodied the era’s bold, futuristic styling with a streamlined, yet intricately detailed design. The standard mesh upper and leather overlay design is inverted, with mesh underlays, emerging from the more prominent overlay panels, for a refined, tech-inspired look. A segmented sole unit features ABZORB cushioning at the heel and forefoot, with a Stability Web midfoot shank.', 163.00, 143.00, 'NBW001', 'instock', 1, 11, '1734201592.png', '1734201592-1.jpg,1734201592-2.jpg,1734201592-3.jpg', 2, 3, '2024-11-24 04:53:24', '2024-12-14 11:39:53'),
(8, 'New Balance 550 Men Sneakers - White/Black', 'new-balance-550-men-sneakers-whiteblack', 'Initially used by professionals.', 'About Size:\r\n\r\nA 1-2cm difference may occur due to the development and manufacturing process.\r\n\r\nAbout Color:\r\n\r\nActual colors may vary. This is because each monitor has different capabilities to display colors, we cannot guarantee that the color you see accurately depicts the true color of the product.', 125.00, NULL, 'NBM001', 'outofstock', 0, 0, '1734201230.png', '1734201151-1.png,1734201151-2.png,1734201151-3.png', 1, 3, '2024-12-14 11:32:31', '2024-12-15 03:14:33'),
(9, 'New Balance 550 (Grade School)', 'new-balance-550-grade-school', 'White Vintage Teal', 'The New Balance 550 now arrives in a white and green colourway. This model features a basketball-inspired silhouette made from soft suede and enhanced with a signature \'N\' logo on the sides. Underneath, the rubber outsole adds traction and durability.\r\n\r\nThese styles are supplied by a premium sneaker marketplace. Stocking only the most sought-after footwear, they source and curate some of the most hard to find sneakers from around the world.', 147.00, 104.00, 'NBC003', 'instock', 1, 10, '1734201926.png', '1734201926-1.png,1734201926-2.png', 3, 3, '2024-12-14 11:45:27', '2024-12-14 11:45:27'),
(10, 'Adidas X Wales Bonner Samba', 'adidas-x-wales-bonner-samba', 'Suede White', 'With one of adidas\' timeless silhouette as a canvas, the Wales Bonner MN Samba Shoes channel a collegiate aesthetic through different materials and contrasting tones. The split is done with white and brown combination.', 430.00, 410.00, 'ADM001', 'instock', 1, 1, '1734202423.jpg', '1734202423-1.jpg,1734202423-2.jpg,1734202423-3.jpg', 1, 2, '2024-12-14 11:53:44', '2024-12-14 11:53:44'),
(11, 'ADIDAS SL 72 OG W', 'adidas-sl-72-og-w', 'OFF WHITE (JH7394)', 'For those who value simplicity and comfort, these adidas SL 72 OG shoes are a perfect match. The low-cut nylon upper with suede overlays and slender silhouette provide retro running-inspired style. An EVA midsole cushions your stride while the rubber outsole offers dependable traction.', 200.00, NULL, 'ADW002', 'instock', 1, 2, '1734203020.png', '1734203020-1.jpg,1734203020-2.jpg,1734203020-3.jpg', 2, 2, '2024-12-14 12:03:40', '2024-12-14 12:03:40'),
(12, 'Anthony Edwards 1 Low Basketball Shoes Kids', 'anthony-edwards-1-low-basketball-shoes-kids', 'Multicolor/Black/Multicolor [JI4076]', 'Lace up in the style of one of the game\'s emerging superstars. These juniors\' signature trainers from adidas Basketball and Anthony Edwards are built for certified bucket-getters. The BOOST midsole with Lightstrike is ultra-lightweight and adds outstanding energy return to your most explosive moves. A rubber outsole provides all the support you need to attack the hoop, while signature Anthony Edwards branding completes the look.', 87.00, 61.00, 'ADC001', 'instock', 1, 1, '1734203748.jpg', '1734203748-1.jpeg,1734203748-2.jpeg,1734203748-3.jpeg', 3, 2, '2024-12-14 12:15:49', '2024-12-14 12:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('67hbdY4ELkTOABAsU0eOcD1RDmtm4puv2Ac95xwo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1NpREM2d1ZJQVdzUnYxMFB4aEY0NXVnaGpNS0NmcVM1YjRNZGVTUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0LXVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734247576),
('oSzcADRYnP4atvhNGS7kW5cFw8I41P3E22wAqDPx', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiblJRQTZuTFVIQ3NndW01S2lnMVBBVHYyQjBSSnlxV3JsQlI3dllmdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wL25ldy1iYWxhbmNlLTU1MC1tZW4tc25lYWtlcnMtd2hpdGVibGFjayI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzM0MjU3NjI0O319', 1734257715);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `tagline`, `title`, `subtitle`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'New Collection', 'Nike', 'Nike Jordan', 'http://localhost:8000/shop', '1734205220.png', 1, '2024-11-26 20:49:58', '2024-12-14 12:40:20'),
(3, 'New Collection', 'New Balance', 'Sale Up to 60%', 'http://localhost:8000/shop', '1732949862.png', 1, '2024-11-26 20:56:27', '2024-12-14 12:22:58'),
(4, 'Last Product', 'Adidas', 'Last Product', 'http://localhost:8000/shop', '1732949675.png', 1, '2024-11-26 20:59:04', '2024-12-14 12:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') NOT NULL,
  `status` enum('pending','approved','declined','refunded') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'cod', 'pending', '2024-11-24 16:23:48', '2024-11-24 16:23:48'),
(5, 2, 5, 'cod', 'approved', '2024-11-24 17:10:59', '2024-11-26 18:08:51'),
(7, 3, 8, 'cod', 'approved', '2024-12-07 22:41:13', '2024-12-07 22:43:15'),
(8, 2, 9, 'cod', 'approved', '2024-12-14 12:28:50', '2024-12-14 12:30:04'),
(9, 2, 10, 'cod', 'pending', '2024-12-14 20:56:48', '2024-12-14 20:56:48'),
(10, 2, 11, 'cod', 'pending', '2024-12-14 21:27:22', '2024-12-14 21:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '1234567890', NULL, '$2y$12$qED1o8bIMx2II/4hs4PRYOsFy/eiAVr28Drg.9KVZ32QJceWj.5zy', 'ADM', NULL, '2024-11-23 04:19:06', '2024-11-23 04:19:06'),
(2, 'user', 'user@gmail.com', '1234567891', NULL, '$2y$12$SRVEUXtoJKOpC3I13GMcqueQBNQOawSZHwQnbiTYuk27.z6tRpsKe', 'USR', NULL, '2024-11-23 15:29:07', '2024-11-23 15:29:07'),
(3, 'daka', 'daka@gmail.com', '0123456789', NULL, '$2y$12$5.g6KfTD0J5XwsbLin2Tbecp16ksU8v4zBBTZrCIOxPLQv6yquwUu', 'USR', NULL, '2024-12-07 22:34:09', '2024-12-07 22:34:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month_names`
--
ALTER TABLE `month_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `month_names`
--
ALTER TABLE `month_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
