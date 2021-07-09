-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 18, 2019 at 04:23 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `med`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE IF NOT EXISTS `aboutus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `intro` text COLLATE utf8mb4_unicode_ci,
  `vision` text COLLATE utf8mb4_unicode_ci,
  `mission` text COLLATE utf8mb4_unicode_ci,
  `goals` text COLLATE utf8mb4_unicode_ci,
  `history` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `intro`, `vision`, `mission`, `goals`, `history`, `created_at`, `updated_at`) VALUES
(1, 'intro', 'vision', 'mission', 'goals', 'history', '2019-06-01 04:55:00', '2019-06-01 04:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-05-11 05:26:20', '2019-05-11 05:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(62, 8, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(63, 8, 'title1', 'text', 'Title1', 0, 1, 1, 1, 1, 1, '{}', 2),
(64, 8, 'title2', 'text', 'Title2', 0, 1, 1, 1, 1, 1, '{}', 3),
(65, 8, 'paragraph', 'text', 'Paragraph', 0, 1, 1, 1, 1, 1, '{}', 4),
(66, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(67, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(68, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(69, 9, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(70, 9, 'intro', 'code_editor', 'Intro', 0, 1, 1, 1, 1, 0, '{}', 2),
(71, 9, 'vision', 'code_editor', 'Vision', 0, 1, 1, 1, 1, 0, '{}', 3),
(72, 9, 'mission', 'code_editor', 'Mission', 0, 1, 1, 1, 1, 0, '{}', 4),
(73, 9, 'goals', 'code_editor', 'Goals', 0, 1, 1, 1, 1, 0, '{}', 5),
(74, 9, 'history', 'code_editor', 'History', 0, 1, 1, 1, 1, 0, '{}', 6),
(75, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '{}', 7),
(76, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(77, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(78, 10, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(79, 10, 'paragraph', 'rich_text_box', 'Paragraph', 1, 1, 1, 1, 1, 1, '{}', 3),
(80, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(81, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(8, 'slider', 'slider', 'Slider', 'Sliders', 'voyager-images', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-05-16 04:54:35', '2019-05-29 14:13:02'),
(9, 'aboutus', 'aboutus', 'about Us', 'about us', 'voyager-info-circled', 'App\\aboutus', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-01 04:50:37', '2019-06-01 05:02:00'),
(10, 'our_works', 'our-works', 'Our Work', 'Our Works', 'voyager-hammer', 'App\\OurWork', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-18 05:31:05', '2019-06-18 05:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-05-11 05:26:17', '2019-05-11 05:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'الرئيسية', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2019-05-11 05:26:17', '2019-05-11 05:47:54', 'voyager.dashboard', 'null'),
(3, 1, 'المستخدمين', '', '_self', 'voyager-person', '#000000', NULL, 3, '2019-05-11 05:26:17', '2019-05-11 05:48:37', 'voyager.users.index', 'null'),
(4, 1, 'الصلاحيات', '', '_self', 'voyager-lock', '#000000', NULL, 2, '2019-05-11 05:26:17', '2019-05-11 05:48:23', 'voyager.roles.index', 'null'),
(5, 1, 'الأدوات', '', '_self', 'voyager-tools', '#000000', NULL, 4, '2019-05-11 05:26:17', '2019-05-11 05:48:47', NULL, ''),
(6, 1, 'صانع القوائم', '', '_self', 'voyager-list', '#000000', 5, 1, '2019-05-11 05:26:17', '2019-05-11 05:48:58', 'voyager.menus.index', 'null'),
(7, 1, 'إدارة قاعدة البيانات', '', '_self', 'voyager-data', '#000000', 5, 2, '2019-05-11 05:26:17', '2019-05-11 05:49:21', 'voyager.database.index', 'null'),
(8, 1, 'البوصلة الخاصة بلوحة التحكم', '', '_self', 'voyager-compass', '#000000', 5, 3, '2019-05-11 05:26:17', '2019-05-11 05:49:37', 'voyager.compass.index', 'null'),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-05-11 05:26:17', '2019-05-11 05:45:26', 'voyager.bread.index', NULL),
(10, 1, 'الإعدادات', '', '_self', 'voyager-settings', '#000000', NULL, 5, '2019-05-11 05:26:17', '2019-05-11 05:49:49', 'voyager.settings.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-05-11 05:26:20', '2019-05-11 05:45:26', 'voyager.hooks', NULL),
(16, 1, 'Sliders', '', '_self', 'voyager-images', NULL, NULL, 6, '2019-05-16 04:54:35', '2019-05-16 04:54:35', 'voyager.slider.index', NULL),
(17, 1, 'Aboutuses', '', '_self', NULL, NULL, NULL, 7, '2019-06-01 04:50:38', '2019-06-01 04:50:38', 'voyager.aboutus.index', NULL),
(18, 1, 'Our Works', '', '_self', 'voyager-hammer', NULL, NULL, 8, '2019-06-18 05:31:05', '2019-06-18 05:31:05', 'voyager.our-works.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2019_06_18_082539_create_our_works_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `our_works`
--

DROP TABLE IF EXISTS `our_works`;
CREATE TABLE IF NOT EXISTS `our_works` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `our_works`
--

INSERT INTO `our_works` (`id`, `image`, `paragraph`, `created_at`, `updated_at`) VALUES
(1, 'our-works\\June2019\\ylR7KncxnPT4OTXhP9fO.jpg', '<p style=\"direction: rtl;\">التسويق والترويج</p>\n<p style=\"direction: rtl;\">نتيجة لخبرة طاقم التسويق لدينا ووجودنا في سوق الأدوية ، يعرف المقداد فارما تمامًا كيفية الترويج وكيفية الطلب على المنتج.</p>\n<p style=\"direction: rtl;\">بشكل عام ، يتبع المقداد فارما بعض الاستراتيجيات التسويقية:</p>\n<p style=\"direction: rtl;\"><strong>استراتيجية التسويق العلمي.</strong></p>\n<p style=\"direction: rtl;\">يدار التسويق ويشرف عليه مكتب علمي مسؤول عن تحقيق الأهداف.</p>\n<p style=\"direction: rtl;\">نتبع خطة تسويقية علمية من خلال زيارات منتظمة للأطباء من قبل ممثلينا الطبيين. باستخدام جميع الطرق والمواد المتاحة والممكنة ، تتمثل مهمة reps الطبية في ترويج المنتجات للأطباء والمتخصصين من أجل وصف منتجنا للمرضى. نستهدف تختلف من الأطباء والمستشفيات العامة والمستشفيات الخاصة والمراكز الطبية وغيرها.</p>\n<p style=\"direction: rtl;\">قم بإنشاء نقاط بيع علمية فريدة وحاجات وفوائد لمنتجاتنا من خلال الأدوات والأساليب العلمية المختلفة المستخدمة سابقًا.</p>\n<p style=\"direction: rtl;\">كان للمقداد فارما علاقة جيدة مع الأطباء وجميع العاملين في القطاع الصحي الذين يعتبرون عامل الأولوية في التسويق ، من خلال رعاية الحملات والأنشطة الطبية والفعاليات الأكاديمية ذات الصلة.</p>\n<p style=\"direction: rtl;\"><strong>&nbsp;استراتيجية تسويق منتجات OTC.</strong></p>\n<p style=\"direction: rtl;\">المنتجات الصيدلانية خارج البورصة لديها استراتيجية فريدة للوصول إلى جميع مناطق البلاد من خلال التعاقد مع موزع البائع بالكامل وتزويدهم بأفضل العروض وهامش خاص في الأسعار لمنحنا الأولوية لنا والانتشار في أعمال ثنائية.</p>\n<p style=\"direction: rtl;\"><strong>استراتيجيتنا للمستقبل القريب.</strong></p>\n<p style=\"direction: rtl;\">سنقوم بإجراء دراسات تحليل تلوي مستمرة لتوفير التسويق المعتمد على الأدلة (EBM) لمنتجاتنا الموجهة نحو السوق وسنقوم بإجراءها من قبل شريكنا الصيدلي السريري المؤهل بالتعاون مع مركز الأبحاث الحكومي.</p>\n<p style=\"direction: rtl;\">تتطلع إلى المستقبل ، تطمح للوصول إلى القمة مع ضمان البقاء على القمة من خلال ضمان أفضل المستهلكين يحتاجون إلى الرضا.</p>', '2019-06-18 06:47:10', '2019-06-18 06:47:10'),
(2, 'our-works\\June2019\\XdyAg0RHWwzqjwwyahsz.png', '<p style=\"direction: rtl;\"><strong>الخدمات والأنشطة</strong></p>\n<p style=\"direction: rtl;\">* يشارك المقداد فارما في مبيعات كاملة وكذلك في المناقصات.</p>\n<p style=\"direction: rtl;\">* الاستيراد ، شؤون التسجيل ، التسويق ، الترويج والتوزيع.</p>\n<p style=\"direction: rtl;\"><strong>مجموعة من المنتجات التي يتم تضمينها في عملنا:</strong></p>\n<ul style=\"direction: rtl;\">\n<li style=\"direction: rtl;\">الأدوية بدون وصفة طبية.</li>\n<li style=\"direction: rtl;\">أدوية المستشفى.</li>\n<li style=\"direction: rtl;\">الأدوية العشبية والطبيعية.</li>\n<li style=\"direction: rtl;\">منتجات صحة الطفل.</li>\n<li style=\"direction: rtl;\">مستحضرات التجميل.</li>\n<li style=\"direction: rtl;\">الأجهزة الطبية.</li>\n<li style=\"direction: rtl;\">المنتجات الصحية الأخرى.</li>\n</ul>', '2019-06-18 06:56:03', '2019-06-18 06:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-05-11 05:26:20', '2019-05-11 05:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(2, 'browse_bread', NULL, '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(3, 'browse_database', NULL, '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(4, 'browse_media', NULL, '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(5, 'browse_compass', NULL, '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(6, 'browse_menus', 'menus', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(7, 'read_menus', 'menus', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(8, 'edit_menus', 'menus', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(9, 'add_menus', 'menus', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(10, 'delete_menus', 'menus', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(11, 'browse_roles', 'roles', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(12, 'read_roles', 'roles', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(13, 'edit_roles', 'roles', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(14, 'add_roles', 'roles', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(15, 'delete_roles', 'roles', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(16, 'browse_users', 'users', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(17, 'read_users', 'users', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(18, 'edit_users', 'users', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(19, 'add_users', 'users', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(20, 'delete_users', 'users', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(21, 'browse_settings', 'settings', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(22, 'read_settings', 'settings', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(23, 'edit_settings', 'settings', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(24, 'add_settings', 'settings', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(25, 'delete_settings', 'settings', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(26, 'browse_categories', 'categories', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(27, 'read_categories', 'categories', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(28, 'edit_categories', 'categories', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(29, 'add_categories', 'categories', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(30, 'delete_categories', 'categories', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(31, 'browse_posts', 'posts', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(32, 'read_posts', 'posts', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(33, 'edit_posts', 'posts', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(34, 'add_posts', 'posts', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(35, 'delete_posts', 'posts', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(36, 'browse_pages', 'pages', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(37, 'read_pages', 'pages', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(38, 'edit_pages', 'pages', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(39, 'add_pages', 'pages', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(40, 'delete_pages', 'pages', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(41, 'browse_hooks', NULL, '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(47, 'browse_slider', 'slider', '2019-05-16 04:54:35', '2019-05-16 04:54:35'),
(48, 'read_slider', 'slider', '2019-05-16 04:54:35', '2019-05-16 04:54:35'),
(49, 'edit_slider', 'slider', '2019-05-16 04:54:35', '2019-05-16 04:54:35'),
(50, 'add_slider', 'slider', '2019-05-16 04:54:35', '2019-05-16 04:54:35'),
(51, 'delete_slider', 'slider', '2019-05-16 04:54:35', '2019-05-16 04:54:35'),
(52, 'browse_aboutus', 'aboutus', '2019-06-01 04:50:37', '2019-06-01 04:50:37'),
(53, 'read_aboutus', 'aboutus', '2019-06-01 04:50:37', '2019-06-01 04:50:37'),
(54, 'edit_aboutus', 'aboutus', '2019-06-01 04:50:37', '2019-06-01 04:50:37'),
(55, 'add_aboutus', 'aboutus', '2019-06-01 04:50:37', '2019-06-01 04:50:37'),
(56, 'delete_aboutus', 'aboutus', '2019-06-01 04:50:37', '2019-06-01 04:50:37'),
(57, 'browse_our_works', 'our_works', '2019-06-18 05:31:05', '2019-06-18 05:31:05'),
(58, 'read_our_works', 'our_works', '2019-06-18 05:31:05', '2019-06-18 05:31:05'),
(59, 'edit_our_works', 'our_works', '2019-06-18 05:31:05', '2019-06-18 05:31:05'),
(60, 'add_our_works', 'our_works', '2019-06-18 05:31:05', '2019-06-18 05:31:05'),
(61, 'delete_our_works', 'our_works', '2019-06-18 05:31:05', '2019-06-18 05:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(16, 1),
(17, 1),
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
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-05-11 05:26:20', '2019-05-11 05:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-05-11 05:26:17', '2019-05-11 05:26:17'),
(2, 'user', 'Normal User', '2019-05-11 05:26:17', '2019-05-11 05:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title1` text COLLATE utf8mb4_unicode_ci,
  `title2` text COLLATE utf8mb4_unicode_ci,
  `paragraph` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title1`, `title2`, `paragraph`, `created_at`, `updated_at`, `image`) VALUES
(4, 'مرحبا بكم في موقع مؤسسة المقداد فارما لإستيراد الأدوية والمستلزمات الطبية ', '', '  في مؤسسة المقداد فارما نحن نعمل على استيراد وتسويق الادوية والمستلزمات الطبية ذات الجودة العالية والتكلفة الاقتصادية المنافسة؛ التي من شأنها المساهمة الفعالة بالارتقاء بالوضع الصحي في مجتمعنا اليمني.', '2019-06-14 13:14:00', '2019-06-18 07:13:42', 'slider\\June2019\\zdJ5KhdjXDgDsaiY5Lqv.png');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-05-11 05:26:20', '2019-05-11 05:26:20'),
(31, 'menu_items', 'title', 1, 'ar', 'Dashboard', '2019-05-11 05:47:54', '2019-05-11 05:47:54'),
(32, 'menu_items', 'title', 4, 'ar', 'Roles', '2019-05-11 05:48:23', '2019-05-11 05:48:23'),
(33, 'menu_items', 'title', 3, 'ar', 'Users', '2019-05-11 05:48:37', '2019-05-11 05:48:37'),
(34, 'menu_items', 'title', 5, 'ar', 'Tools', '2019-05-11 05:48:47', '2019-05-11 05:48:47'),
(35, 'menu_items', 'title', 6, 'ar', 'Menu Builder', '2019-05-11 05:48:58', '2019-05-11 05:48:58'),
(36, 'menu_items', 'title', 7, 'ar', 'Database', '2019-05-11 05:49:21', '2019-05-11 05:49:21'),
(37, 'menu_items', 'title', 8, 'ar', 'Compass', '2019-05-11 05:49:37', '2019-05-11 05:49:37'),
(38, 'menu_items', 'title', 10, 'ar', 'Settings', '2019-05-11 05:49:49', '2019-05-11 05:49:49'),
(48, 'data_types', 'display_name_singular', 8, 'ar', 'Slider', '2019-05-29 14:13:02', '2019-05-29 14:13:02'),
(49, 'data_types', 'display_name_plural', 8, 'ar', 'Sliders', '2019-05-29 14:13:02', '2019-05-29 14:13:02'),
(50, 'data_types', 'display_name_singular', 9, 'ar', 'Aboutus', '2019-06-01 04:51:31', '2019-06-01 04:51:31'),
(51, 'data_types', 'display_name_plural', 9, 'ar', 'Aboutuses', '2019-06-01 04:51:31', '2019-06-01 04:51:31'),
(52, 'aboutus', 'intro', 1, 'ar', 'مقدمه', '2019-06-01 04:55:00', '2019-06-01 04:55:00'),
(53, 'aboutus', 'vision', 1, 'ar', 'رؤية', '2019-06-01 04:55:00', '2019-06-01 04:55:00'),
(54, 'aboutus', 'mission', 1, 'ar', 'رساله', '2019-06-01 04:55:00', '2019-06-01 04:55:00'),
(55, 'aboutus', 'goals', 1, 'ar', 'اهداف', '2019-06-01 04:55:00', '2019-06-01 04:55:00'),
(56, 'aboutus', 'history', 1, 'ar', 'نبذه', '2019-06-01 04:55:00', '2019-06-01 04:55:00'),
(57, 'slider', 'title1', 4, 'ar', 'مرحبا بكم في موقع مؤسسة المقداد فارما لإستيراد الأدوية والمستلزمات الطبية ', '2019-06-14 13:14:22', '2019-06-17 06:45:46'),
(58, 'slider', 'title2', 4, 'ar', '', '2019-06-14 13:14:22', '2019-06-14 13:14:22'),
(59, 'slider', 'paragraph', 4, 'ar', ' في مؤسسة المقداد فارما نحن نعمل على استيراد وتسويق الادوية والمستلزمات الطبية ذات الجودة العالية والتكلفة الاقتصادية المنافسة؛ التي من شأنها المساهمة الفعالة بالارتقاء بالوضع الصحي في مجتمعنا اليمني.', '2019-06-14 13:14:22', '2019-06-17 06:45:46'),
(60, 'data_types', 'display_name_singular', 10, 'ar', 'Our Work', '2019-06-18 05:40:13', '2019-06-18 05:40:13'),
(61, 'data_types', 'display_name_plural', 10, 'ar', 'Our Works', '2019-06-18 05:40:13', '2019-06-18 05:40:13'),
(62, 'slider', 'title1', 4, 'en', 'Welcome to Al-Miqdad Pharma Corporation to Import Medicines and Medical Supplies (MPCIMMS) website.', '2019-06-18 06:39:54', '2019-06-18 06:39:54'),
(63, 'slider', 'title2', 4, 'en', '', '2019-06-18 06:39:54', '2019-06-18 06:39:54'),
(64, 'slider', 'paragraph', 4, 'en', 'At Al Miqdad Pharma Corporation We are working on the importation and marketing of high-quality medical medicines and supplies and competitive economic cost, which will contribute effectively to the improvement of health status in our Yemeni society.', '2019-06-18 06:39:54', '2019-06-18 06:39:54'),
(65, 'our_works', 'paragraph', 1, 'en', '<p><strong>Marketing &amp; Promotion</strong></p>\n<p>As a result of the experience of our marketing staff and our presence in the pharmaceutical market, Almiqdad Pharma totally knows how to promote and how to make a demand for the product.&nbsp;</p>\n<p>Generally, Almiqdad Pharma is following some marketing strategies:</p>\n<ul>\n<li><strong>Scientific Marketing Strategy.</strong></li>\n</ul>\n<p>Marketing is managed and supervised by a scientific office which is responsible for achieving targets.</p>\n<p>We follow a scientific marketing plan through regular visits to doctors by our medical representatives. Using all available and possible ways and materials, medical reps job is to promote the products to doctors and specialists in order to have our product prescribed for patients. We target vary from doctors, public hospitals, private hospitals, medical centers and others.</p>\n<p>Create a unique scientific selling points, need and benefits to our products by different scientific tools and methods used previously.</p>\n<p>Almiqdad Pharma had a good relation with doctors and all people in Health sector who are considered the factor of priority in marketing, through sponsoring medical campaigns and activities and related academic events.</p>\n<ul>\n<li>&nbsp;<strong>OTC products Marketing Strategy.</strong></li>\n</ul>\n<p>OTC pharmaceutical products have unique strategy to reach to all country regions by contracting with whole seller distributor and providing them best offers and special margin in prices to be given priority for us and to spread in dual actions.</p>\n<ul>\n<li><strong>Our Strategy for the near Future.</strong></li>\n</ul>\n<p>We are going to conduct ongoing meta-analysis studies to provide significance evidence based marketing (EBM) for our market oriented products and will be conducting by our qualified clinical pharmacist partner with collaboration with government research center.</p>\n<p>Looks forward to the future, aspiring to reach to the top with ensuring to remain on the top by ensuring the best consumers need satisfaction.</p>\n<p>&nbsp;</p>', '2019-06-18 06:47:10', '2019-06-18 06:47:10'),
(66, 'our_works', 'paragraph', 2, 'en', '<p><strong>Services and Activities&nbsp;</strong></p>\n<p>* Almiqdad Pharma is involved in whole sales and also in tenders.</p>\n<p>* Import, registration affairs, marketing, promotion and distribution.</p>\n<ul>\n<li>The range of products which are included in our work:</li>\n<li>OTC &amp; Prescription pharmaceuticals.</li>\n<li>Hospital medicines.</li>\n<li>Herbal and natural medicines.</li>\n<li>Baby health products.</li>\n<li>Cosmetics.</li>\n<li>Medical appliances.</li>\n<li>Other health products.</li>\n</ul>\n<p>&nbsp;</p>', '2019-06-18 06:56:03', '2019-06-18 06:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` text COLLATE utf8mb4_unicode_ci,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `lang`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$Har5AMQKX6vLzKUasnMWQ.pg1LZPeIa10P7aRhI.JLvwmRnBanhR6', 'pWHgkgPp7LEkTInkjkwMB8f8VH0EWTqrNmg6ibqHDBdcuwg1ZKXl8aO0Bl4W', 'ar', '{\"locale\":\"en\"}', '2019-05-11 05:26:20', '2019-06-18 07:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
