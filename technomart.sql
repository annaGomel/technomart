-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 19 2019 г., 17:39
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `technomart`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_config`
--

CREATE TABLE `admin_config` (
    `id` int(10) UNSIGNED NOT NULL,
    `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
    `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` text COLLATE utf8mb4_unicode_ci,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_config`
--

INSERT INTO `admin_config` (`id`, `name`, `value`, `description`, `created_at`, `updated_at`) VALUES
                                                                                                     (1, 'text_on_home', '<h3>Our Shop</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellente', 'Text on home', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (2, 'products_count', '6', 'Products on page', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (3, 'search_count', '6', 'Search results on page', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (4, 'tel_1', '+91 7568543012', 'telephone 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (5, 'tel_2', '+91 7568543012', 'telephone 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (6, 'email', 'admin@admin.com', 'Contacts Email', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (7, 'address', '798 South Park Avenue, Jaipur, Raj', 'Contact Address', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (8, 'text_on_footer', 'We are an award-winning creative agency, dedicated to the best result in web design, promotion, business consulting, and marketing.', 'Text on footer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (9, 'template', 'default', 'Folder with template', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (10, 'image_product_big', '800,600', 'Big products picture', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (11, 'image_product_medium', '350,200', 'Medium products image', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (12, 'image_product_small', '100,50', 'Small products images', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                     (13, 'rate', '2', 'Price rate', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_menu`
--

CREATE TABLE `admin_menu` (
    `id` int(10) UNSIGNED NOT NULL,
    `parent_id` int(11) NOT NULL DEFAULT '0',
    `order` int(11) NOT NULL DEFAULT '0',
    `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
                                                                                                                 (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL),
                                                                                                                 (2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
                                                                                                                 (3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
                                                                                                                 (4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
                                                                                                                 (5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL),
                                                                                                                 (6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
                                                                                                                 (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
                                                                                                                 (8, 0, 2, 'Shop', 'fa-shopping-basket', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                                 (9, 8, 3, 'Products', 'fa-product-hunt', '/shop/products', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                                 (10, 8, 4, 'Categories', 'fa-building', '/shop/categories', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                                 (11, 8, 5, 'Orders', 'fa-shopping-cart', '/shop/orders', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                                 (12, 0, 6, 'Pages', 'fa-list-alt', '/pages', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                                 (14, 0, 8, 'Config', 'fa-toggle-on', 'config', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                                 (15, 0, 9, 'Backup', 'fa-copy', 'backup', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
                                                                                                                 (17, 0, 7, 'Media manager', 'fa-file', 'media', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
    `id` int(10) UNSIGNED NOT NULL,
    `user_id` int(11) NOT NULL,
    `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
    `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
    `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
                                                                                                                        (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:02:38', '2019-09-15 21:02:38'),
                                                                                                                        (2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:02:43', '2019-09-15 21:02:43'),
                                                                                                                        (3, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:02:56', '2019-09-15 21:02:56'),
                                                                                                                        (4, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:02:58', '2019-09-15 21:02:58'),
                                                                                                                        (5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:02:59', '2019-09-15 21:02:59'),
                                                                                                                        (6, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-15 21:02:59', '2019-09-15 21:02:59'),
                                                                                                                        (7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:03:01', '2019-09-15 21:03:01'),
                                                                                                                        (8, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-09-15 21:03:01', '2019-09-15 21:03:01'),
                                                                                                                        (9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:03:04', '2019-09-15 21:03:04'),
                                                                                                                        (10, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:03:07', '2019-09-15 21:03:07'),
                                                                                                                        (11, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:03:08', '2019-09-15 21:03:08'),
                                                                                                                        (12, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:03:10', '2019-09-15 21:03:10'),
                                                                                                                        (13, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:03:13', '2019-09-15 21:03:13'),
                                                                                                                        (14, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:03:49', '2019-09-15 21:03:49'),
                                                                                                                        (15, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:04:13', '2019-09-15 21:04:13'),
                                                                                                                        (16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:04:15', '2019-09-15 21:04:15'),
                                                                                                                        (17, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-09-15 21:04:16', '2019-09-15 21:04:16'),
                                                                                                                        (18, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:04:39', '2019-09-15 21:04:39'),
                                                                                                                        (19, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:04:56', '2019-09-15 21:04:56'),
                                                                                                                        (20, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:04:59', '2019-09-15 21:04:59'),
                                                                                                                        (21, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:05:52', '2019-09-15 21:05:52'),
                                                                                                                        (22, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:06:04', '2019-09-15 21:06:04'),
                                                                                                                        (23, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:06:10', '2019-09-15 21:06:10'),
                                                                                                                        (24, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:06:10', '2019-09-15 21:06:10'),
                                                                                                                        (25, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:06:11', '2019-09-15 21:06:11'),
                                                                                                                        (26, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:06:13', '2019-09-15 21:06:13'),
                                                                                                                        (27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:11:35', '2019-09-15 21:11:35'),
                                                                                                                        (28, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:11:50', '2019-09-15 21:11:50'),
                                                                                                                        (29, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:11:52', '2019-09-15 21:11:52'),
                                                                                                                        (30, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:11:53', '2019-09-15 21:11:53'),
                                                                                                                        (31, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:11:59', '2019-09-15 21:11:59'),
                                                                                                                        (32, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:12:18', '2019-09-15 21:12:18'),
                                                                                                                        (33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:16:37', '2019-09-15 21:16:37'),
                                                                                                                        (34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:19:16', '2019-09-15 21:19:16'),
                                                                                                                        (35, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:19:43', '2019-09-15 21:19:43'),
                                                                                                                        (36, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:20:45', '2019-09-15 21:20:45'),
                                                                                                                        (37, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:20:49', '2019-09-15 21:20:49'),
                                                                                                                        (38, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:22:41', '2019-09-15 21:22:41'),
                                                                                                                        (39, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:23:06', '2019-09-15 21:23:06'),
                                                                                                                        (40, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:23:10', '2019-09-15 21:23:10'),
                                                                                                                        (41, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:23:14', '2019-09-15 21:23:14'),
                                                                                                                        (42, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:40:21', '2019-09-15 21:40:21'),
                                                                                                                        (43, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:44:06', '2019-09-15 21:44:06'),
                                                                                                                        (44, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:46:22', '2019-09-15 21:46:22'),
                                                                                                                        (45, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-09-15 21:46:24', '2019-09-15 21:46:24'),
                                                                                                                        (46, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:47:22', '2019-09-15 21:47:22'),
                                                                                                                        (47, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:47:28', '2019-09-15 21:47:28'),
                                                                                                                        (48, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:48:59', '2019-09-15 21:48:59'),
                                                                                                                        (49, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-09-15 21:49:04', '2019-09-15 21:49:04'),
                                                                                                                        (50, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:52:02', '2019-09-15 21:52:02'),
                                                                                                                        (51, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:55:15', '2019-09-15 21:55:15'),
                                                                                                                        (52, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:55:17', '2019-09-15 21:55:17'),
                                                                                                                        (53, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:55:58', '2019-09-15 21:55:58'),
                                                                                                                        (54, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:56:01', '2019-09-15 21:56:01'),
                                                                                                                        (55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:56:34', '2019-09-15 21:56:34'),
                                                                                                                        (56, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 21:56:45', '2019-09-15 21:56:45'),
                                                                                                                        (57, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 21:57:09', '2019-09-15 21:57:09'),
                                                                                                                        (58, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 22:28:14', '2019-09-15 22:28:14'),
                                                                                                                        (59, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-09-15 22:28:19', '2019-09-15 22:28:19'),
                                                                                                                        (60, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 22:28:28', '2019-09-15 22:28:28'),
                                                                                                                        (61, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 22:32:05', '2019-09-15 22:32:05'),
                                                                                                                        (62, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-09-15 22:32:11', '2019-09-15 22:32:11'),
                                                                                                                        (63, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 22:39:15', '2019-09-15 22:39:15'),
                                                                                                                        (64, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 22:39:23', '2019-09-15 22:39:23'),
                                                                                                                        (65, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 22:48:03', '2019-09-15 22:48:03'),
                                                                                                                        (66, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 22:48:04', '2019-09-15 22:48:04'),
                                                                                                                        (67, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 22:48:05', '2019-09-15 22:48:05'),
                                                                                                                        (68, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 22:48:12', '2019-09-15 22:48:12'),
                                                                                                                        (69, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 22:48:13', '2019-09-15 22:48:13'),
                                                                                                                        (70, 1, 'admin/auth/roles/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 22:48:20', '2019-09-15 22:48:20'),
                                                                                                                        (71, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 22:48:24', '2019-09-15 22:48:24'),
                                                                                                                        (72, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:11:25', '2019-09-15 23:11:25'),
                                                                                                                        (73, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:11:52', '2019-09-15 23:11:52'),
                                                                                                                        (74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:12:04', '2019-09-15 23:12:04'),
                                                                                                                        (75, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:12:20', '2019-09-15 23:12:20'),
                                                                                                                        (76, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:12:33', '2019-09-15 23:12:33'),
                                                                                                                        (77, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:12:34', '2019-09-15 23:12:34'),
                                                                                                                        (78, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:12:35', '2019-09-15 23:12:35'),
                                                                                                                        (79, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-09-15 23:12:35', '2019-09-15 23:12:35'),
                                                                                                                        (80, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:12:37', '2019-09-15 23:12:37'),
                                                                                                                        (81, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-09-15 23:12:37', '2019-09-15 23:12:37'),
                                                                                                                        (82, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:12:51', '2019-09-15 23:12:51'),
                                                                                                                        (83, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-09-15 23:12:52', '2019-09-15 23:12:52'),
                                                                                                                        (84, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:12:55', '2019-09-15 23:12:55'),
                                                                                                                        (85, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:13:02', '2019-09-15 23:13:02'),
                                                                                                                        (86, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:13:02', '2019-09-15 23:13:02'),
                                                                                                                        (87, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:13:05', '2019-09-15 23:13:05'),
                                                                                                                        (88, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"Victor\",\"name\":\"vic\",\"password\":\"Victor\",\"password_confirmation\":\"Victor\",\"roles\":[null],\"permissions\":[null],\"_token\":\"VtfUXYUODdWdPGqytuZc8JdkTaVS20wA6SlMz97P\",\"after-save\":\"3\",\"_previous_\":\"http:\\/\\/technomart\\/public\\/admin\\/auth\\/users\"}', '2019-09-15 23:15:04', '2019-09-15 23:15:04'),
                                                                                                                        (89, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '[]', '2019-09-15 23:15:04', '2019-09-15 23:15:04'),
                                                                                                                        (90, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:15:14', '2019-09-15 23:15:14'),
                                                                                                                        (91, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:15:23', '2019-09-15 23:15:23'),
                                                                                                                        (92, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:15:27', '2019-09-15 23:15:27'),
                                                                                                                        (93, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:15:36', '2019-09-15 23:15:36'),
                                                                                                                        (94, 2, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2019-09-15 23:15:36', '2019-09-15 23:15:36'),
                                                                                                                        (95, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:18:26', '2019-09-15 23:18:26'),
                                                                                                                        (96, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:18:32', '2019-09-15 23:18:32'),
                                                                                                                        (97, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:18:49', '2019-09-15 23:18:49'),
                                                                                                                        (98, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:18:54', '2019-09-15 23:18:54'),
                                                                                                                        (99, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:18:58', '2019-09-15 23:18:58'),
                                                                                                                        (100, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"user\",\"permissions\":[null],\"_token\":\"mqg7cq1V9BjtXBBXrN8A53d51abMPoqTMBsuWdlm\",\"_previous_\":\"http:\\/\\/technomart\\/public\\/admin\\/auth\\/roles\"}', '2019-09-15 23:19:55', '2019-09-15 23:19:55'),
                                                                                                                        (101, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-09-15 23:19:56', '2019-09-15 23:19:56'),
                                                                                                                        (102, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:20:08', '2019-09-15 23:20:08'),
                                                                                                                        (103, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:20:11', '2019-09-15 23:20:11'),
                                                                                                                        (104, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"Victor\",\"name\":\"vic\",\"password\":\"$2y$10$K8pHMdg\\/EFJ\\/NekviVZAaOj9ujWLYgijtgBmkbWRG6enFiJ5uOKKS\",\"password_confirmation\":\"$2y$10$K8pHMdg\\/EFJ\\/NekviVZAaOj9ujWLYgijtgBmkbWRG6enFiJ5uOKKS\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"mqg7cq1V9BjtXBBXrN8A53d51abMPoqTMBsuWdlm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/technomart\\/public\\/admin\\/auth\\/users\"}', '2019-09-15 23:20:21', '2019-09-15 23:20:21'),
                                                                                                                        (105, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-09-15 23:20:21', '2019-09-15 23:20:21'),
                                                                                                                        (106, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:20:48', '2019-09-15 23:20:48'),
                                                                                                                        (107, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:20:51', '2019-09-15 23:20:51'),
                                                                                                                        (108, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:20:54', '2019-09-15 23:20:54'),
                                                                                                                        (109, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:21:06', '2019-09-15 23:21:06'),
                                                                                                                        (110, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:21:12', '2019-09-15 23:21:12'),
                                                                                                                        (111, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:21:12', '2019-09-15 23:21:12'),
                                                                                                                        (112, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:21:43', '2019-09-15 23:21:43'),
                                                                                                                        (113, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:21:44', '2019-09-15 23:21:44'),
                                                                                                                        (114, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:23:42', '2019-09-15 23:23:42'),
                                                                                                                        (115, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-09-15 23:23:50', '2019-09-15 23:23:50'),
                                                                                                                        (116, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:23:55', '2019-09-15 23:23:55'),
                                                                                                                        (117, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:23:59', '2019-09-15 23:23:59'),
                                                                                                                        (118, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:40:25', '2019-09-15 23:40:25'),
                                                                                                                        (119, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:43:00', '2019-09-15 23:43:00'),
                                                                                                                        (120, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:44:26', '2019-09-15 23:44:26'),
                                                                                                                        (121, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:52:35', '2019-09-15 23:52:35'),
                                                                                                                        (122, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:52:47', '2019-09-15 23:52:47'),
                                                                                                                        (123, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:53:29', '2019-09-15 23:53:29'),
                                                                                                                        (124, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:53:33', '2019-09-15 23:53:33'),
                                                                                                                        (125, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-15 23:54:03', '2019-09-15 23:54:03'),
                                                                                                                        (126, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:54:06', '2019-09-15 23:54:06'),
                                                                                                                        (127, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:54:20', '2019-09-15 23:54:20'),
                                                                                                                        (128, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:54:32', '2019-09-15 23:54:32'),
                                                                                                                        (129, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:54:42', '2019-09-15 23:54:42'),
                                                                                                                        (130, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:54:43', '2019-09-15 23:54:43'),
                                                                                                                        (131, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:54:46', '2019-09-15 23:54:46'),
                                                                                                                        (132, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:54:52', '2019-09-15 23:54:52'),
                                                                                                                        (133, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:54:58', '2019-09-15 23:54:58'),
                                                                                                                        (134, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:55:04', '2019-09-15 23:55:04'),
                                                                                                                        (135, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:55:22', '2019-09-15 23:55:22'),
                                                                                                                        (136, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:55:46', '2019-09-15 23:55:46'),
                                                                                                                        (137, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:55:58', '2019-09-15 23:55:58'),
                                                                                                                        (138, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 11:05:40', '2019-09-16 11:05:40'),
                                                                                                                        (139, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 11:05:43', '2019-09-16 11:05:43'),
                                                                                                                        (140, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 11:05:44', '2019-09-16 11:05:44'),
                                                                                                                        (141, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 11:21:42', '2019-09-16 11:21:42'),
                                                                                                                        (142, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 11:22:00', '2019-09-16 11:22:00'),
                                                                                                                        (143, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 11:22:03', '2019-09-16 11:22:03'),
                                                                                                                        (144, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 17:40:08', '2019-09-17 17:40:08'),
                                                                                                                        (145, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 17:40:12', '2019-09-17 17:40:12'),
                                                                                                                        (146, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:24:25', '2019-09-17 19:24:25'),
                                                                                                                        (147, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:24:34', '2019-09-17 19:24:34'),
                                                                                                                        (148, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:24:35', '2019-09-17 19:24:35'),
                                                                                                                        (149, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:29:17', '2019-09-17 19:29:17'),
                                                                                                                        (150, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:30:58', '2019-09-17 19:30:58'),
                                                                                                                        (151, 1, 'admin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:31:03', '2019-09-17 19:31:03'),
                                                                                                                        (152, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:31:04', '2019-09-17 19:31:04'),
                                                                                                                        (153, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:31:07', '2019-09-17 19:31:07'),
                                                                                                                        (154, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:31:07', '2019-09-17 19:31:07'),
                                                                                                                        (155, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:31:09', '2019-09-17 19:31:09'),
                                                                                                                        (156, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:31:09', '2019-09-17 19:31:09'),
                                                                                                                        (157, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:31:10', '2019-09-17 19:31:10'),
                                                                                                                        (158, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:31:11', '2019-09-17 19:31:11'),
                                                                                                                        (159, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:32:05', '2019-09-17 19:32:05'),
                                                                                                                        (160, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:32:06', '2019-09-17 19:32:06'),
                                                                                                                        (161, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:32:08', '2019-09-17 19:32:08'),
                                                                                                                        (162, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:32:09', '2019-09-17 19:32:09'),
                                                                                                                        (163, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:43:44', '2019-09-17 19:43:44'),
                                                                                                                        (164, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:43:45', '2019-09-17 19:43:45'),
                                                                                                                        (165, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:43:47', '2019-09-17 19:43:47'),
                                                                                                                        (166, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:43:47', '2019-09-17 19:43:47'),
                                                                                                                        (167, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:43:49', '2019-09-17 19:43:49'),
                                                                                                                        (168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:43:49', '2019-09-17 19:43:49'),
                                                                                                                        (169, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:43:50', '2019-09-17 19:43:50'),
                                                                                                                        (170, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:43:51', '2019-09-17 19:43:51'),
                                                                                                                        (171, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:46:32', '2019-09-17 19:46:32'),
                                                                                                                        (172, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:46:33', '2019-09-17 19:46:33'),
                                                                                                                        (173, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:46:34', '2019-09-17 19:46:34'),
                                                                                                                        (174, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:46:35', '2019-09-17 19:46:35'),
                                                                                                                        (175, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:46:35', '2019-09-17 19:46:35'),
                                                                                                                        (176, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:46:36', '2019-09-17 19:46:36'),
                                                                                                                        (177, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:46:43', '2019-09-17 19:46:43'),
                                                                                                                        (178, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:46:44', '2019-09-17 19:46:44'),
                                                                                                                        (179, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:46:44', '2019-09-17 19:46:44'),
                                                                                                                        (180, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:46:45', '2019-09-17 19:46:45'),
                                                                                                                        (181, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:46:59', '2019-09-17 19:46:59'),
                                                                                                                        (182, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:47:02', '2019-09-17 19:47:02'),
                                                                                                                        (183, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:47:02', '2019-09-17 19:47:02'),
                                                                                                                        (184, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:47:04', '2019-09-17 19:47:04'),
                                                                                                                        (185, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:47:04', '2019-09-17 19:47:04'),
                                                                                                                        (186, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:47:13', '2019-09-17 19:47:13'),
                                                                                                                        (187, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:47:13', '2019-09-17 19:47:13'),
                                                                                                                        (188, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:47:21', '2019-09-17 19:47:21'),
                                                                                                                        (189, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:47:21', '2019-09-17 19:47:21'),
                                                                                                                        (190, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:47:27', '2019-09-17 19:47:27'),
                                                                                                                        (191, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:47:27', '2019-09-17 19:47:27'),
                                                                                                                        (192, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:47:30', '2019-09-17 19:47:30'),
                                                                                                                        (193, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:47:31', '2019-09-17 19:47:31'),
                                                                                                                        (194, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:47:40', '2019-09-17 19:47:40'),
                                                                                                                        (195, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:47:40', '2019-09-17 19:47:40'),
                                                                                                                        (196, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:48:14', '2019-09-17 19:48:14'),
                                                                                                                        (197, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:48:38', '2019-09-17 19:48:38'),
                                                                                                                        (198, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:48:39', '2019-09-17 19:48:39'),
                                                                                                                        (199, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:51:38', '2019-09-17 19:51:38'),
                                                                                                                        (200, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:51:41', '2019-09-17 19:51:41'),
                                                                                                                        (201, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:51:48', '2019-09-17 19:51:48'),
                                                                                                                        (202, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 19:51:49', '2019-09-17 19:51:49'),
                                                                                                                        (203, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:52:14', '2019-09-17 19:52:14'),
                                                                                                                        (204, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:52:43', '2019-09-17 19:52:43'),
                                                                                                                        (205, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:52:43', '2019-09-17 19:52:43'),
                                                                                                                        (206, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 19:55:25', '2019-09-17 19:55:25'),
                                                                                                                        (207, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:55:32', '2019-09-17 19:55:32'),
                                                                                                                        (208, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:56:01', '2019-09-17 19:56:01'),
                                                                                                                        (209, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 19:56:01', '2019-09-17 19:56:01'),
                                                                                                                        (210, 1, 'admin/shop/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:56:08', '2019-09-17 19:56:08'),
                                                                                                                        (211, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 19:56:08', '2019-09-17 19:56:08'),
                                                                                                                        (212, 1, 'admin/shop/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:56:15', '2019-09-17 19:56:15'),
                                                                                                                        (213, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 19:56:16', '2019-09-17 19:56:16'),
                                                                                                                        (214, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:56:36', '2019-09-17 19:56:36'),
                                                                                                                        (215, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:56:45', '2019-09-17 19:56:45'),
                                                                                                                        (216, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 19:56:45', '2019-09-17 19:56:45'),
                                                                                                                        (217, 1, 'admin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:57:00', '2019-09-17 19:57:00'),
                                                                                                                        (218, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 19:57:00', '2019-09-17 19:57:00'),
                                                                                                                        (219, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:57:02', '2019-09-17 19:57:02'),
                                                                                                                        (220, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 19:57:02', '2019-09-17 19:57:02'),
                                                                                                                        (221, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 19:59:19', '2019-09-17 19:59:19'),
                                                                                                                        (222, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 19:59:22', '2019-09-17 19:59:22'),
                                                                                                                        (223, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 19:59:22', '2019-09-17 19:59:22'),
                                                                                                                        (224, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 20:03:25', '2019-09-17 20:03:25'),
                                                                                                                        (225, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:03:30', '2019-09-17 20:03:30'),
                                                                                                                        (226, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:03:33', '2019-09-17 20:03:33'),
                                                                                                                        (227, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:03:34', '2019-09-17 20:03:34'),
                                                                                                                        (228, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:04:36', '2019-09-17 20:04:36'),
                                                                                                                        (229, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:04:39', '2019-09-17 20:04:39'),
                                                                                                                        (230, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:04:50', '2019-09-17 20:04:50'),
                                                                                                                        (231, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:04:55', '2019-09-17 20:04:55'),
                                                                                                                        (232, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:04:58', '2019-09-17 20:04:58'),
                                                                                                                        (233, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:04:58', '2019-09-17 20:04:58'),
                                                                                                                        (234, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:06:09', '2019-09-17 20:06:09'),
                                                                                                                        (235, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:06:11', '2019-09-17 20:06:11'),
                                                                                                                        (236, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:19:27', '2019-09-17 20:19:27'),
                                                                                                                        (237, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:19:27', '2019-09-17 20:19:27'),
                                                                                                                        (238, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:19:29', '2019-09-17 20:19:29'),
                                                                                                                        (239, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:19:29', '2019-09-17 20:19:29'),
                                                                                                                        (240, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:19:35', '2019-09-17 20:19:35'),
                                                                                                                        (241, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:19:38', '2019-09-17 20:19:38'),
                                                                                                                        (242, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:19:38', '2019-09-17 20:19:38'),
                                                                                                                        (243, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:20:09', '2019-09-17 20:20:09'),
                                                                                                                        (244, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:20:11', '2019-09-17 20:20:11'),
                                                                                                                        (245, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:20:11', '2019-09-17 20:20:11'),
                                                                                                                        (246, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:05', '2019-09-17 20:21:05'),
                                                                                                                        (247, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:21:05', '2019-09-17 20:21:05'),
                                                                                                                        (248, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:10', '2019-09-17 20:21:10'),
                                                                                                                        (249, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:21:14', '2019-09-17 20:21:14'),
                                                                                                                        (250, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:16', '2019-09-17 20:21:16'),
                                                                                                                        (251, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:17', '2019-09-17 20:21:17'),
                                                                                                                        (252, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:20', '2019-09-17 20:21:20'),
                                                                                                                        (253, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:21:20', '2019-09-17 20:21:20'),
                                                                                                                        (254, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:23', '2019-09-17 20:21:23'),
                                                                                                                        (255, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:25', '2019-09-17 20:21:25'),
                                                                                                                        (256, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-17 20:21:25', '2019-09-17 20:21:25'),
                                                                                                                        (257, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:27', '2019-09-17 20:21:27'),
                                                                                                                        (258, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:52', '2019-09-17 20:21:52'),
                                                                                                                        (259, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-17 20:21:53', '2019-09-17 20:21:53'),
                                                                                                                        (260, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:54', '2019-09-17 20:21:54'),
                                                                                                                        (261, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:21:55', '2019-09-17 20:21:55'),
                                                                                                                        (262, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:21:56', '2019-09-17 20:21:56'),
                                                                                                                        (263, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:25:01', '2019-09-17 20:25:01'),
                                                                                                                        (264, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:25:03', '2019-09-17 20:25:03'),
                                                                                                                        (265, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:25:04', '2019-09-17 20:25:04'),
                                                                                                                        (266, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:29:55', '2019-09-17 20:29:55'),
                                                                                                                        (267, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:29:58', '2019-09-17 20:29:58'),
                                                                                                                        (268, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-17 20:30:33', '2019-09-17 20:30:33'),
                                                                                                                        (269, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:30:41', '2019-09-17 20:30:41'),
                                                                                                                        (270, 1, 'admin/shop/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:30:44', '2019-09-17 20:30:44'),
                                                                                                                        (271, 1, 'admin/shop/categories', 'POST', '127.0.0.1', '{\"_token\":\"LsCsQWJRlBGqGs772HUlOKYJ4SLNZ5wqwkz2UzxE\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/technomart\\/public\\/admin\\/shop\\/categories\"}', '2019-09-17 20:30:55', '2019-09-17 20:30:55'),
                                                                                                                        (272, 1, 'admin/shop/categories/create', 'GET', '127.0.0.1', '[]', '2019-09-17 20:30:55', '2019-09-17 20:30:55'),
                                                                                                                        (273, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:31:18', '2019-09-17 20:31:18'),
                                                                                                                        (274, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:31:21', '2019-09-17 20:31:21'),
                                                                                                                        (275, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-17 20:31:46', '2019-09-17 20:31:46'),
                                                                                                                        (276, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:31:57', '2019-09-17 20:31:57'),
                                                                                                                        (277, 1, 'admin/shop/products/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:32:10', '2019-09-17 20:32:10'),
                                                                                                                        (278, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:32:10', '2019-09-17 20:32:10'),
                                                                                                                        (279, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:34:56', '2019-09-17 20:34:56'),
                                                                                                                        (280, 1, 'admin/shop/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:34:59', '2019-09-17 20:34:59'),
                                                                                                                        (281, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:35:02', '2019-09-17 20:35:02'),
                                                                                                                        (282, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:35:05', '2019-09-17 20:35:05'),
                                                                                                                        (283, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:35:05', '2019-09-17 20:35:05'),
                                                                                                                        (284, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:41:05', '2019-09-17 20:41:05'),
                                                                                                                        (285, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:41:05', '2019-09-17 20:41:05'),
                                                                                                                        (286, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:41:06', '2019-09-17 20:41:06'),
                                                                                                                        (287, 1, 'admin/shop/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:41:13', '2019-09-17 20:41:13'),
                                                                                                                        (288, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:43:34', '2019-09-17 20:43:34'),
                                                                                                                        (289, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:43:38', '2019-09-17 20:43:38'),
                                                                                                                        (290, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:43:57', '2019-09-17 20:43:57'),
                                                                                                                        (291, 1, 'admin/shop/products', 'POST', '127.0.0.1', '{\"title\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"slug\":\"animi-iure-officiis-officia-new\",\"cat_id\":\"2\",\"fulldesc\":null,\"cost\":\"134\",\"meta_desc\":\"Test\",\"meta_key\":\"test1\",\"status\":\"off\",\"_token\":\"LsCsQWJRlBGqGs772HUlOKYJ4SLNZ5wqwkz2UzxE\",\"after-save\":\"3\",\"_previous_\":\"http:\\/\\/technomart\\/public\\/admin\\/shop\\/products\"}', '2019-09-17 20:45:05', '2019-09-17 20:45:05'),
                                                                                                                        (292, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 20:45:05', '2019-09-17 20:45:05'),
                                                                                                                        (293, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 20:59:07', '2019-09-17 20:59:07'),
                                                                                                                        (294, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 20:59:10', '2019-09-17 20:59:10'),
                                                                                                                        (295, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 21:00:46', '2019-09-17 21:00:46'),
                                                                                                                        (296, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 21:02:42', '2019-09-17 21:02:42'),
                                                                                                                        (297, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 21:02:59', '2019-09-17 21:02:59'),
                                                                                                                        (298, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 21:04:00', '2019-09-17 21:04:00'),
                                                                                                                        (299, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 21:05:43', '2019-09-17 21:05:43'),
                                                                                                                        (300, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 21:07:31', '2019-09-17 21:07:31'),
                                                                                                                        (301, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 21:08:16', '2019-09-17 21:08:16'),
                                                                                                                        (302, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 21:12:35', '2019-09-17 21:12:35'),
                                                                                                                        (303, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 21:21:43', '2019-09-17 21:21:43'),
                                                                                                                        (304, 1, 'admin/shop/products', 'POST', '127.0.0.1', '{\"title\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"slug\":\"animi-iure-officiis-officia-new\",\"category_id\":\"2\",\"content\":\"\\u0414\\u0440\\u0435\\u043b\\u044c \\u043d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u043e\\u0439 \\u0444\\u0438\\u0440\\u043c\\u044b\",\"price\":\"120\",\"meta_description\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"LsCsQWJRlBGqGs772HUlOKYJ4SLNZ5wqwkz2UzxE\"}', '2019-09-17 21:23:15', '2019-09-17 21:23:15'),
                                                                                                                        (305, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 21:23:15', '2019-09-17 21:23:15'),
                                                                                                                        (306, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 21:24:52', '2019-09-17 21:24:52'),
                                                                                                                        (307, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:25:30', '2019-09-17 21:25:30'),
                                                                                                                        (308, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:26:34', '2019-09-17 21:26:34'),
                                                                                                                        (309, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '[]', '2019-09-17 21:28:02', '2019-09-17 21:28:02'),
                                                                                                                        (310, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:28:10', '2019-09-17 21:28:10'),
                                                                                                                        (311, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-17 21:30:38', '2019-09-17 21:30:38'),
                                                                                                                        (312, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:32:10', '2019-09-17 21:32:10'),
                                                                                                                        (313, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:32:15', '2019-09-17 21:32:15'),
                                                                                                                        (314, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:32:18', '2019-09-17 21:32:18'),
                                                                                                                        (315, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-17 21:32:45', '2019-09-17 21:32:45'),
                                                                                                                        (316, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:32:49', '2019-09-17 21:32:49'),
                                                                                                                        (317, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:32:52', '2019-09-17 21:32:52'),
                                                                                                                        (318, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:32:55', '2019-09-17 21:32:55'),
                                                                                                                        (319, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:32:58', '2019-09-17 21:32:58'),
                                                                                                                        (320, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:33:00', '2019-09-17 21:33:00'),
                                                                                                                        (321, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:33:01', '2019-09-17 21:33:01'),
                                                                                                                        (322, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:33:02', '2019-09-17 21:33:02'),
                                                                                                                        (323, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:33:04', '2019-09-17 21:33:04'),
                                                                                                                        (324, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:33:05', '2019-09-17 21:33:05'),
                                                                                                                        (325, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:33:07', '2019-09-17 21:33:07'),
                                                                                                                        (326, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-17 21:34:17', '2019-09-17 21:34:17'),
                                                                                                                        (327, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:34:24', '2019-09-17 21:34:24'),
                                                                                                                        (328, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:34:26', '2019-09-17 21:34:26'),
                                                                                                                        (329, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:34:29', '2019-09-17 21:34:29'),
                                                                                                                        (330, 1, 'admin/shop/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:34:50', '2019-09-17 21:34:50'),
                                                                                                                        (331, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:34:55', '2019-09-17 21:34:55'),
                                                                                                                        (332, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2019-09-17 21:35:17', '2019-09-17 21:35:17'),
                                                                                                                        (333, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\",\"page\":\"2\"}', '2019-09-17 21:35:20', '2019-09-17 21:35:20'),
                                                                                                                        (334, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:35:57', '2019-09-17 21:35:57'),
                                                                                                                        (335, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 21:39:00', '2019-09-17 21:39:00'),
                                                                                                                        (336, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:39:10', '2019-09-17 21:39:10'),
                                                                                                                        (337, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 21:39:55', '2019-09-17 21:39:55'),
                                                                                                                        (338, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{\"username\":\"user\",\"password\":\"user\",\"_token\":\"zZ7DH9e4nw2kQeaaPTiyScmkwxc3F5sZOv5546Rc\"}', '2019-09-17 21:40:36', '2019-09-17 21:40:36'),
                                                                                                                        (339, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:40:53', '2019-09-17 21:40:53'),
                                                                                                                        (340, 1, 'admin/auth/login', 'POST', '127.0.0.1', '{\"username\":\"Victor\",\"password\":\"Victor\",\"_token\":\"zZ7DH9e4nw2kQeaaPTiyScmkwxc3F5sZOv5546Rc\"}', '2019-09-17 21:41:09', '2019-09-17 21:41:09'),
                                                                                                                        (341, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 21:41:10', '2019-09-17 21:41:10'),
                                                                                                                        (342, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:42:14', '2019-09-17 21:42:14'),
                                                                                                                        (343, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:42:15', '2019-09-17 21:42:15'),
                                                                                                                        (344, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:42:20', '2019-09-17 21:42:20'),
                                                                                                                        (345, 1, 'admin/media/upload', 'POST', '127.0.0.1', '{\"dir\":\"\\/\",\"_token\":\"Xiy89rtUx6GjMavlS3C18AwYaQytWCFQc7guOWTZ\"}', '2019-09-17 21:42:26', '2019-09-17 21:42:26'),
                                                                                                                        (346, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2019-09-17 21:42:26', '2019-09-17 21:42:26'),
                                                                                                                        (347, 2, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:42:53', '2019-09-17 21:42:53'),
                                                                                                                        (348, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:43:01', '2019-09-17 21:43:01'),
                                                                                                                        (349, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 21:43:10', '2019-09-17 21:43:10'),
                                                                                                                        (350, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:43:16', '2019-09-17 21:43:16'),
                                                                                                                        (351, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:43:21', '2019-09-17 21:43:21'),
                                                                                                                        (352, 1, 'admin/shop/products/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:43:27', '2019-09-17 21:43:27'),
                                                                                                                        (353, 1, 'admin/shop/products/11', 'PUT', '127.0.0.1', '{\"title\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"slug\":\"animi-iure-officiis-officia-new\",\"category_id\":\"2\",\"content\":\"\\u0414\\u0440\\u0435\\u043b\\u044c \\u043d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u043e\\u0439 \\u0444\\u0438\\u0440\\u043c\\u044b\",\"price\":\"120.00\",\"meta_description\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 21:43:40', '2019-09-17 21:43:40'),
                                                                                                                        (354, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 21:43:40', '2019-09-17 21:43:40'),
                                                                                                                        (355, 1, 'admin/shop/products/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 21:43:45', '2019-09-17 21:43:45'),
                                                                                                                        (356, 1, 'admin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:00:11', '2019-09-17 22:00:11'),
                                                                                                                        (357, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 22:00:11', '2019-09-17 22:00:11'),
                                                                                                                        (358, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:00:22', '2019-09-17 22:00:22'),
                                                                                                                        (359, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:00:31', '2019-09-17 22:00:31'),
                                                                                                                        (360, 1, 'admin/shop/products/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:00:35', '2019-09-17 22:00:35'),
                                                                                                                        (361, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:00:57', '2019-09-17 22:00:57'),
                                                                                                                        (362, 1, 'admin/shop/products/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:01:03', '2019-09-17 22:01:03'),
                                                                                                                        (363, 1, 'admin/shop/products/11', 'PUT', '127.0.0.1', '{\"title\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"slug\":\"animi-iure-officiis-officia-new\",\"category_id\":\"2\",\"content\":\"\\u0414\\u0440\\u0435\\u043b\\u044c \\u043d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u043e\\u0439 \\u0444\\u0438\\u0440\\u043c\\u044b\",\"price\":\"120.00\",\"meta_description\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 22:01:20', '2019-09-17 22:01:20'),
                                                                                                                        (364, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:01:21', '2019-09-17 22:01:21'),
                                                                                                                        (365, 1, 'admin/shop/products/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:01:24', '2019-09-17 22:01:24'),
                                                                                                                        (366, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:01:59', '2019-09-17 22:01:59'),
                                                                                                                        (367, 1, 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\"76a595337e8c78b21983aae090553e90.jpg\"}', '2019-09-17 22:02:02', '2019-09-17 22:02:02'),
                                                                                                                        (368, 1, 'admin/media/folder', 'POST', '127.0.0.1', '{\"name\":\"test\",\"dir\":\"\\/\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\"}', '2019-09-17 22:02:29', '2019-09-17 22:02:29'),
                                                                                                                        (369, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:02:29', '2019-09-17 22:02:29'),
                                                                                                                        (370, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/test\",\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:02:32', '2019-09-17 22:02:32'),
                                                                                                                        (371, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/test\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:02:37', '2019-09-17 22:02:37'),
                                                                                                                        (372, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/test\",\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:02:40', '2019-09-17 22:02:40'),
                                                                                                                        (373, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:02:41', '2019-09-17 22:02:41'),
                                                                                                                        (374, 1, 'admin/media/folder', 'POST', '127.0.0.1', '{\"name\":\"img\",\"dir\":\"\\/\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\"}', '2019-09-17 22:03:38', '2019-09-17 22:03:38'),
                                                                                                                        (375, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:03:39', '2019-09-17 22:03:39'),
                                                                                                                        (376, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/img\",\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:03:42', '2019-09-17 22:03:42'),
                                                                                                                        (377, 1, 'admin/media/upload', 'POST', '127.0.0.1', '{\"dir\":\"\\/img\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\"}', '2019-09-17 22:03:47', '2019-09-17 22:03:47'),
                                                                                                                        (378, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/img\"}', '2019-09-17 22:03:47', '2019-09-17 22:03:47'),
                                                                                                                        (379, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:04:11', '2019-09-17 22:04:11'),
                                                                                                                        (380, 1, 'admin/media/folder', 'POST', '127.0.0.1', '{\"name\":\"image\",\"dir\":\"\\/\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\"}', '2019-09-17 22:04:20', '2019-09-17 22:04:20'),
                                                                                                                        (381, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:04:20', '2019-09-17 22:04:20'),
                                                                                                                        (382, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/image\",\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:04:22', '2019-09-17 22:04:22'),
                                                                                                                        (383, 1, 'admin/media/upload', 'POST', '127.0.0.1', '{\"dir\":\"\\/image\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\"}', '2019-09-17 22:04:27', '2019-09-17 22:04:27'),
                                                                                                                        (384, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/image\"}', '2019-09-17 22:04:28', '2019-09-17 22:04:28'),
                                                                                                                        (385, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/image\"}', '2019-09-17 22:10:46', '2019-09-17 22:10:46'),
                                                                                                                        (386, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 22:20:27', '2019-09-17 22:20:27'),
                                                                                                                        (387, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:20:36', '2019-09-17 22:20:36'),
                                                                                                                        (388, 1, 'admin/shop/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:20:39', '2019-09-17 22:20:39'),
                                                                                                                        (389, 1, 'admin/shop/products/1', 'PUT', '127.0.0.1', '{\"title\":\"Mrs. - \\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 Makita\",\"slug\":\"doloribus-quo-autem-fugiat-eligendi-quaerat-excepturi\",\"category_id\":\"1\",\"content\":\"<p>Itaque in asperiores sunt eaque molestiae. Inventore a commodi eos eos vero deserunt aut. Aut odit velit saepe ut.<\\/p>\",\"price\":\"21.20\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"C7OuW2NHhqOoIa13FsJsiZ26qqngfsrr0k1EU2yU\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/technomart\\/public\\/admin\\/shop\\/products\"}', '2019-09-17 22:22:31', '2019-09-17 22:22:31'),
                                                                                                                        (390, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:22:31', '2019-09-17 22:22:31'),
                                                                                                                        (391, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2019-09-17 22:24:00', '2019-09-17 22:24:00'),
                                                                                                                        (392, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:24:03', '2019-09-17 22:24:03'),
                                                                                                                        (393, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:24:05', '2019-09-17 22:24:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
                                                                                                                        (394, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:24:05', '2019-09-17 22:24:05'),
                                                                                                                        (395, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/image\",\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:24:09', '2019-09-17 22:24:09'),
                                                                                                                        (396, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/image\",\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:24:12', '2019-09-17 22:24:12'),
                                                                                                                        (397, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/image\",\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:24:14', '2019-09-17 22:24:14'),
                                                                                                                        (398, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:24:19', '2019-09-17 22:24:19'),
                                                                                                                        (399, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/img\",\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:24:21', '2019-09-17 22:24:21'),
                                                                                                                        (400, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:32:26', '2019-09-17 22:32:26'),
                                                                                                                        (401, 1, 'admin/shop/products/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:32:29', '2019-09-17 22:32:29'),
                                                                                                                        (402, 1, 'admin/shop/products/11', 'PUT', '127.0.0.1', '{\"title\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"slug\":\"animi-iure-officiis-officia-new\",\"category_id\":\"2\",\"content\":\"\\u0414\\u0440\\u0435\\u043b\\u044c \\u043d\\u0435\\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u043e\\u0439 \\u0444\\u0438\\u0440\\u043c\\u044b\",\"price\":\"120.00\",\"meta_description\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 22:32:58', '2019-09-17 22:32:58'),
                                                                                                                        (403, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:32:59', '2019-09-17 22:32:59'),
                                                                                                                        (404, 1, 'admin/shop/products/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:33:02', '2019-09-17 22:33:02'),
                                                                                                                        (405, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:34:52', '2019-09-17 22:34:52'),
                                                                                                                        (406, 1, 'admin/shop/products/10', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:36:14', '2019-09-17 22:36:14'),
                                                                                                                        (407, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:36:14', '2019-09-17 22:36:14'),
                                                                                                                        (408, 1, 'admin/shop/products/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:36:21', '2019-09-17 22:36:21'),
                                                                                                                        (409, 1, 'admin/shop/products/10', 'PUT', '127.0.0.1', '{\"title\":\"Dr. - \\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 Bosh\",\"slug\":\"illo-tempora-a-facere-quam\",\"category_id\":\"1\",\"content\":\"Alias laboriosam laborum illum qui. Et est ipsam rerum facilis pariatur. Nihil perferendis libero amet accusantium et. Magnam rem soluta tenetur natus eos ullam aut et. Deleniti magni sunt atque ea.\",\"price\":null,\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 22:36:32', '2019-09-17 22:36:32'),
                                                                                                                        (410, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:36:32', '2019-09-17 22:36:32'),
                                                                                                                        (411, 1, 'admin/shop/products/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:37:22', '2019-09-17 22:37:22'),
                                                                                                                        (412, 1, 'admin/shop/products/9', 'PUT', '127.0.0.1', '{\"title\":\"Dr. - \\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 Bosh\",\"slug\":\"esse-accusamus-architecto-est-voluptates-minus-sit\",\"category_id\":\"1\",\"content\":\"Facere quasi eaque dolore. Et doloribus voluptatibus aut enim non. Sit aut earum veniam molestiae et nemo totam.\",\"price\":null,\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 22:37:33', '2019-09-17 22:37:33'),
                                                                                                                        (413, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:37:34', '2019-09-17 22:37:34'),
                                                                                                                        (414, 1, 'admin/shop/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:38:35', '2019-09-17 22:38:35'),
                                                                                                                        (415, 1, 'admin/shop/products/1', 'PUT', '127.0.0.1', '{\"title\":\"Mrs. - \\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 Makita\",\"slug\":\"doloribus-quo-autem-fugiat-eligendi-quaerat-excepturi\",\"category_id\":\"1\",\"content\":\"<p>Itaque in asperiores sunt eaque molestiae. Inventore a commodi eos eos vero deserunt aut. Aut odit velit saepe ut.<\\/p>\",\"price\":\"21.20\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 22:38:42', '2019-09-17 22:38:42'),
                                                                                                                        (416, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:38:42', '2019-09-17 22:38:42'),
                                                                                                                        (417, 1, 'admin/shop/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:39:20', '2019-09-17 22:39:20'),
                                                                                                                        (418, 1, 'admin/shop/products/1', 'PUT', '127.0.0.1', '{\"title\":\"Mrs. - \\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 Makita\",\"slug\":\"doloribus-quo-autem-fugiat-eligendi-quaerat-excepturi\",\"category_id\":\"1\",\"content\":\"<p>Itaque in asperiores sunt eaque molestiae. Inventore a commodi eos eos vero deserunt aut. Aut odit velit saepe ut.<\\/p>\",\"price\":\"21.20\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 22:39:29', '2019-09-17 22:39:29'),
                                                                                                                        (419, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:39:30', '2019-09-17 22:39:30'),
                                                                                                                        (420, 1, 'admin/shop/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:40:53', '2019-09-17 22:40:53'),
                                                                                                                        (421, 1, 'admin/shop/products/1', 'PUT', '127.0.0.1', '{\"title\":\"Mrs. - \\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 Makita\",\"slug\":\"doloribus-quo-autem-fugiat-eligendi-quaerat-excepturi\",\"category_id\":\"1\",\"content\":\"<p>Itaque in asperiores sunt eaque molestiae. Inventore a commodi eos eos vero deserunt aut. Aut odit velit saepe ut.<\\/p>\",\"price\":\"21.20\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 22:41:08', '2019-09-17 22:41:08'),
                                                                                                                        (422, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:41:09', '2019-09-17 22:41:09'),
                                                                                                                        (423, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:41:28', '2019-09-17 22:41:28'),
                                                                                                                        (424, 1, 'admin/shop/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:41:58', '2019-09-17 22:41:58'),
                                                                                                                        (425, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:42:03', '2019-09-17 22:42:03'),
                                                                                                                        (426, 1, 'admin/shop/products/2/edit', 'GET', '127.0.0.1', '[]', '2019-09-17 22:42:03', '2019-09-17 22:42:03'),
                                                                                                                        (427, 1, 'admin/shop/products/2', 'PUT', '127.0.0.1', '{\"title\":\"Prof. - \\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 Bosh\",\"slug\":\"animi-iure-officiis-officia\",\"category_id\":\"2\",\"content\":\"Sunt voluptatem architecto fugit est sequi laboriosam. Impedit autem cum aut tempora mollitia totam vero impedit. In sunt molestiae amet repellendus nihil aperiam deserunt voluptas.\",\"price\":\"35.80\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\"}', '2019-09-17 22:42:12', '2019-09-17 22:42:12'),
                                                                                                                        (428, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:42:12', '2019-09-17 22:42:12'),
                                                                                                                        (429, 1, 'admin/shop/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:43:10', '2019-09-17 22:43:10'),
                                                                                                                        (430, 1, 'admin/shop/products/3', 'PUT', '127.0.0.1', '{\"title\":\"Mrs. - \\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 Bosh\",\"slug\":\"tempore-est-suscipit-ut-maxime-et-officiis-doloribus-maxime\",\"category_id\":\"2\",\"content\":\"Quasi debitis impedit officia eum earum voluptas ducimus sunt. Nostrum et dolorum explicabo sunt et quis iusto. Placeat magni sed voluptatum nihil. Quaerat unde eum dolore fuga iure placeat aperiam.\",\"price\":\"23.29\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 22:43:17', '2019-09-17 22:43:17'),
                                                                                                                        (431, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:43:18', '2019-09-17 22:43:18'),
                                                                                                                        (432, 1, 'admin/shop/products/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:43:39', '2019-09-17 22:43:39'),
                                                                                                                        (433, 1, 'admin/shop/products/3', 'PUT', '127.0.0.1', '{\"title\":\"Mrs. - \\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 Bosh\",\"slug\":\"tempore-est-suscipit-ut-maxime-et-officiis-doloribus-maxime\",\"category_id\":\"2\",\"content\":\"Quasi debitis impedit officia eum earum voluptas ducimus sunt. Nostrum et dolorum explicabo sunt et quis iusto. Placeat magni sed voluptatum nihil. Quaerat unde eum dolore fuga iure placeat aperiam.\",\"price\":\"23.29\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 22:43:48', '2019-09-17 22:43:48'),
                                                                                                                        (434, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:43:48', '2019-09-17 22:43:48'),
                                                                                                                        (435, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:44:08', '2019-09-17 22:44:08'),
                                                                                                                        (436, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:44:08', '2019-09-17 22:44:08'),
                                                                                                                        (437, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:46:23', '2019-09-17 22:46:23'),
                                                                                                                        (438, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:46:23', '2019-09-17 22:46:23'),
                                                                                                                        (439, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:46:25', '2019-09-17 22:46:25'),
                                                                                                                        (440, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:46:26', '2019-09-17 22:46:26'),
                                                                                                                        (441, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:46:41', '2019-09-17 22:46:41'),
                                                                                                                        (442, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:46:41', '2019-09-17 22:46:41'),
                                                                                                                        (443, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:46:43', '2019-09-17 22:46:43'),
                                                                                                                        (444, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:46:43', '2019-09-17 22:46:43'),
                                                                                                                        (445, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:46:45', '2019-09-17 22:46:45'),
                                                                                                                        (446, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:46:57', '2019-09-17 22:46:57'),
                                                                                                                        (447, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:47:02', '2019-09-17 22:47:02'),
                                                                                                                        (448, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:47:04', '2019-09-17 22:47:04'),
                                                                                                                        (449, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:47:14', '2019-09-17 22:47:14'),
                                                                                                                        (450, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-09-17 22:47:14', '2019-09-17 22:47:14'),
                                                                                                                        (451, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:47:23', '2019-09-17 22:47:23'),
                                                                                                                        (452, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-09-17 22:47:23', '2019-09-17 22:47:23'),
                                                                                                                        (453, 1, 'admin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:47:31', '2019-09-17 22:47:31'),
                                                                                                                        (454, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-09-17 22:47:31', '2019-09-17 22:47:31'),
                                                                                                                        (455, 1, 'admin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:47:33', '2019-09-17 22:47:33'),
                                                                                                                        (456, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-09-17 22:47:34', '2019-09-17 22:47:34'),
                                                                                                                        (457, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2019-09-17 22:48:18', '2019-09-17 22:48:18'),
                                                                                                                        (458, 1, 'admin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:48:20', '2019-09-17 22:48:20'),
                                                                                                                        (459, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:48:42', '2019-09-17 22:48:42'),
                                                                                                                        (460, 1, 'admin/shop/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:48:49', '2019-09-17 22:48:49'),
                                                                                                                        (461, 1, 'admin/shop/products/4', 'PUT', '127.0.0.1', '{\"title\":\"Prof. - \\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 Bosh\",\"slug\":\"ipsum-ab-voluptatem-consequatur-numquam-dolore-veniam-perspiciatis\",\"category_id\":\"2\",\"content\":\"Ut cum voluptas omnis nostrum placeat. Voluptatem delectus commodi iusto dignissimos. Aut non et quas facere consequatur sed provident.\",\"price\":\"12.10\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 22:49:19', '2019-09-17 22:49:19'),
                                                                                                                        (462, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:49:20', '2019-09-17 22:49:20'),
                                                                                                                        (463, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:49:57', '2019-09-17 22:49:57'),
                                                                                                                        (464, 1, 'admin/shop/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:49:59', '2019-09-17 22:49:59'),
                                                                                                                        (465, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:50:04', '2019-09-17 22:50:04'),
                                                                                                                        (466, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:50:08', '2019-09-17 22:50:08'),
                                                                                                                        (467, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:50:08', '2019-09-17 22:50:08'),
                                                                                                                        (468, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:51:22', '2019-09-17 22:51:22'),
                                                                                                                        (469, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:51:26', '2019-09-17 22:51:26'),
                                                                                                                        (470, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:51:26', '2019-09-17 22:51:26'),
                                                                                                                        (471, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:56:45', '2019-09-17 22:56:45'),
                                                                                                                        (472, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:56:48', '2019-09-17 22:56:48'),
                                                                                                                        (473, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:56:49', '2019-09-17 22:56:49'),
                                                                                                                        (474, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:56:56', '2019-09-17 22:56:56'),
                                                                                                                        (475, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:56:57', '2019-09-17 22:56:57'),
                                                                                                                        (476, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:56:58', '2019-09-17 22:56:58'),
                                                                                                                        (477, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:56:59', '2019-09-17 22:56:59'),
                                                                                                                        (478, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 22:57:24', '2019-09-17 22:57:24'),
                                                                                                                        (479, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 22:57:27', '2019-09-17 22:57:27'),
                                                                                                                        (480, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:01:30', '2019-09-17 23:01:30'),
                                                                                                                        (481, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:02:27', '2019-09-17 23:02:27'),
                                                                                                                        (482, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:02:28', '2019-09-17 23:02:28'),
                                                                                                                        (483, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:02:47', '2019-09-17 23:02:47'),
                                                                                                                        (484, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:03:20', '2019-09-17 23:03:20'),
                                                                                                                        (485, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 23:03:27', '2019-09-17 23:03:27'),
                                                                                                                        (486, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:03:32', '2019-09-17 23:03:32'),
                                                                                                                        (487, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:03:35', '2019-09-17 23:03:35'),
                                                                                                                        (488, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:05:34', '2019-09-17 23:05:34'),
                                                                                                                        (489, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-17 23:06:06', '2019-09-17 23:06:06'),
                                                                                                                        (490, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:06:09', '2019-09-17 23:06:09'),
                                                                                                                        (491, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:06:12', '2019-09-17 23:06:12'),
                                                                                                                        (492, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:08:02', '2019-09-17 23:08:02'),
                                                                                                                        (493, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:08:06', '2019-09-17 23:08:06'),
                                                                                                                        (494, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:09:12', '2019-09-17 23:09:12'),
                                                                                                                        (495, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:11:34', '2019-09-17 23:11:34'),
                                                                                                                        (496, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:13:09', '2019-09-17 23:13:09'),
                                                                                                                        (497, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '[]', '2019-09-17 23:14:34', '2019-09-17 23:14:34'),
                                                                                                                        (498, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:14:43', '2019-09-17 23:14:43'),
                                                                                                                        (499, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:14:44', '2019-09-17 23:14:44'),
                                                                                                                        (500, 1, 'admin/shop/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:14:46', '2019-09-17 23:14:46'),
                                                                                                                        (501, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:14:55', '2019-09-17 23:14:55'),
                                                                                                                        (502, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:14:58', '2019-09-17 23:14:58'),
                                                                                                                        (503, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '[]', '2019-09-17 23:18:52', '2019-09-17 23:18:52'),
                                                                                                                        (504, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '[]', '2019-09-17 23:20:43', '2019-09-17 23:20:43'),
                                                                                                                        (505, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '[]', '2019-09-17 23:21:02', '2019-09-17 23:21:02'),
                                                                                                                        (506, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '[]', '2019-09-17 23:21:03', '2019-09-17 23:21:03'),
                                                                                                                        (507, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:21:09', '2019-09-17 23:21:09'),
                                                                                                                        (508, 1, 'admin/shop/products/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:21:13', '2019-09-17 23:21:13'),
                                                                                                                        (509, 1, 'admin/shop/products/3', 'GET', '127.0.0.1', '[]', '2019-09-17 23:23:33', '2019-09-17 23:23:33'),
                                                                                                                        (510, 1, 'admin/shop/products/3', 'GET', '127.0.0.1', '[]', '2019-09-17 23:24:19', '2019-09-17 23:24:19'),
                                                                                                                        (511, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:24:25', '2019-09-17 23:24:25'),
                                                                                                                        (512, 1, 'admin/shop/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:24:28', '2019-09-17 23:24:28'),
                                                                                                                        (513, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:24:32', '2019-09-17 23:24:32'),
                                                                                                                        (514, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:24:34', '2019-09-17 23:24:34'),
                                                                                                                        (515, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:24:34', '2019-09-17 23:24:34'),
                                                                                                                        (516, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:25:08', '2019-09-17 23:25:08'),
                                                                                                                        (517, 1, 'admin/shop/products/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:25:12', '2019-09-17 23:25:12'),
                                                                                                                        (518, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:25:12', '2019-09-17 23:25:12'),
                                                                                                                        (519, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:27:33', '2019-09-17 23:27:33'),
                                                                                                                        (520, 1, 'admin/shop/products/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:27:36', '2019-09-17 23:27:36'),
                                                                                                                        (521, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:27:37', '2019-09-17 23:27:37'),
                                                                                                                        (522, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:28:54', '2019-09-17 23:28:54'),
                                                                                                                        (523, 1, 'admin/shop/products/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:28:57', '2019-09-17 23:28:57'),
                                                                                                                        (524, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:28:57', '2019-09-17 23:28:57'),
                                                                                                                        (525, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:29:50', '2019-09-17 23:29:50'),
                                                                                                                        (526, 1, 'admin/shop/products/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:29:53', '2019-09-17 23:29:53'),
                                                                                                                        (527, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:29:54', '2019-09-17 23:29:54'),
                                                                                                                        (528, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:30:25', '2019-09-17 23:30:25'),
                                                                                                                        (529, 1, 'admin/shop/products/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:30:28', '2019-09-17 23:30:28'),
                                                                                                                        (530, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:30:29', '2019-09-17 23:30:29'),
                                                                                                                        (531, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:30:51', '2019-09-17 23:30:51'),
                                                                                                                        (532, 1, 'admin/shop/products/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:30:53', '2019-09-17 23:30:53'),
                                                                                                                        (533, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:31:15', '2019-09-17 23:31:15'),
                                                                                                                        (534, 1, 'admin/shop/products/9', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:31:20', '2019-09-17 23:31:20'),
                                                                                                                        (535, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:31:23', '2019-09-17 23:31:23'),
                                                                                                                        (536, 1, 'admin/shop/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:31:33', '2019-09-17 23:31:33'),
                                                                                                                        (537, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:31:44', '2019-09-17 23:31:44'),
                                                                                                                        (538, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:33:36', '2019-09-17 23:33:36'),
                                                                                                                        (539, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:33:40', '2019-09-17 23:33:40'),
                                                                                                                        (540, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:33:48', '2019-09-17 23:33:48'),
                                                                                                                        (541, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:33:50', '2019-09-17 23:33:50'),
                                                                                                                        (542, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:33:56', '2019-09-17 23:33:56'),
                                                                                                                        (543, 1, 'admin/shop/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:33:58', '2019-09-17 23:33:58'),
                                                                                                                        (544, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:34:03', '2019-09-17 23:34:03'),
                                                                                                                        (545, 1, 'admin/shop/products/11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\"}', '2019-09-17 23:34:11', '2019-09-17 23:34:11'),
                                                                                                                        (546, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:34:12', '2019-09-17 23:34:12'),
                                                                                                                        (547, 1, 'admin/shop/products/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\"}', '2019-09-17 23:39:13', '2019-09-17 23:39:13'),
                                                                                                                        (548, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:39:13', '2019-09-17 23:39:13'),
                                                                                                                        (549, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:41:15', '2019-09-17 23:41:15'),
                                                                                                                        (550, 1, 'admin/shop/products/11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\"}', '2019-09-17 23:41:22', '2019-09-17 23:41:22'),
                                                                                                                        (551, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:41:22', '2019-09-17 23:41:22'),
                                                                                                                        (552, 1, 'admin/shop/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:41:36', '2019-09-17 23:41:36'),
                                                                                                                        (553, 1, 'admin/shop/products', 'POST', '127.0.0.1', '{\"title\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"slug\":\"animi-iure-officiis-officia-new\",\"category_id\":\"1\",\"content\":\"\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 AEG KH24IE (4935451555) \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0441\\u0432\\u0435\\u0440\\u043b\\u0435\\u043d\\u0438\\u044f \\u043e\\u0441\\u043e\\u0431\\u043e \\u0442\\u0432\\u0435\\u0440\\u0434\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432, \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442 \\u0432\\u0435\\u043b\\u0438\\u043a\\u043e\\u043b\\u0435\\u043f\\u043d\\u043e \\u0441\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u0441 \\u0431\\u0435\\u0442\\u043e\\u043d\\u043e\\u043c \\u0438 \\u043a\\u0438\\u0440\\u043f\\u0438\\u0447\\u043e\\u043c. \\u0410\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442 \\u0441\\u043d\\u0430\\u0431\\u0436\\u0435\\u043d \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043e\\u0439 Roto-stop, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u044f\\u0442\\u044c \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u043f\\u043e \\u0434\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0443 \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u043b\\u043e\\u0442\\u043a\\u0430. \\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c \\u0437\\u0430 \\u0441\\u0447\\u0435\\u0442 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u044f \\u0434\\u0432\\u043e\\u0439\\u043d\\u043e\\u0439 \\u0438\\u0437\\u043e\\u043b\\u044f\\u0446\\u0438\\u0438 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u0435\\u043d \\u0432\\u044b\\u0434\\u0435\\u0440\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u0441\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043d\\u0430\\u0433\\u0440\\u0443\\u0437\\u043a\\u0438 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0442\\u044f\\u0436\\u0435\\u043d\\u0438\\u0438 \\u0434\\u043b\",\"price\":\"120\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"off\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 23:42:41', '2019-09-17 23:42:41'),
                                                                                                                        (554, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:42:41', '2019-09-17 23:42:41'),
                                                                                                                        (555, 1, 'admin/shop/products/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:43:57', '2019-09-17 23:43:57'),
                                                                                                                        (556, 1, 'admin/shop/products/12', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:44:01', '2019-09-17 23:44:01'),
                                                                                                                        (557, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:44:07', '2019-09-17 23:44:07'),
                                                                                                                        (558, 1, 'admin/shop/products/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:44:12', '2019-09-17 23:44:12'),
                                                                                                                        (559, 1, 'admin/shop/products/12', 'PUT', '127.0.0.1', '{\"title\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"slug\":\"animi-iure-officiis-officia-new\",\"category_id\":\"2\",\"content\":\"\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 AEG KH24IE (4935451555) \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0441\\u0432\\u0435\\u0440\\u043b\\u0435\\u043d\\u0438\\u044f \\u043e\\u0441\\u043e\\u0431\\u043e \\u0442\\u0432\\u0435\\u0440\\u0434\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432, \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442 \\u0432\\u0435\\u043b\\u0438\\u043a\\u043e\\u043b\\u0435\\u043f\\u043d\\u043e \\u0441\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u0441 \\u0431\\u0435\\u0442\\u043e\\u043d\\u043e\\u043c \\u0438 \\u043a\\u0438\\u0440\\u043f\\u0438\\u0447\\u043e\\u043c. \\u0410\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442 \\u0441\\u043d\\u0430\\u0431\\u0436\\u0435\\u043d \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043e\\u0439 Roto-stop, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u044f\\u0442\\u044c \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u043f\\u043e \\u0434\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0443 \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u043b\\u043e\\u0442\\u043a\\u0430. \\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c \\u0437\\u0430 \\u0441\\u0447\\u0435\\u0442 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u044f \\u0434\\u0432\\u043e\\u0439\\u043d\\u043e\\u0439 \\u0438\\u0437\\u043e\\u043b\\u044f\\u0446\\u0438\\u0438 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u0435\\u043d \\u0432\\u044b\\u0434\\u0435\\u0440\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u0441\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043d\\u0430\\u0433\\u0440\\u0443\\u0437\\u043a\\u0438 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0442\\u044f\\u0436\\u0435\\u043d\\u0438\\u0438 \\u0434\\u043b\",\"price\":\"120.00\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"off\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 23:44:18', '2019-09-17 23:44:18'),
                                                                                                                        (560, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:44:18', '2019-09-17 23:44:18'),
                                                                                                                        (561, 1, 'admin/shop/products/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:45:04', '2019-09-17 23:45:04'),
                                                                                                                        (562, 1, 'admin/shop/products/12', 'PUT', '127.0.0.1', '{\"title\":\"\\u0414\\u0440\\u0435\\u043b\\u044c\",\"slug\":\"animi-iure-officiis-officia-new\",\"category_id\":\"2\",\"content\":\"\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 AEG KH24IE (4935451555) \\u043f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0441\\u0432\\u0435\\u0440\\u043b\\u0435\\u043d\\u0438\\u044f \\u043e\\u0441\\u043e\\u0431\\u043e \\u0442\\u0432\\u0435\\u0440\\u0434\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432, \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442 \\u0432\\u0435\\u043b\\u0438\\u043a\\u043e\\u043b\\u0435\\u043f\\u043d\\u043e \\u0441\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u0441 \\u0431\\u0435\\u0442\\u043e\\u043d\\u043e\\u043c \\u0438 \\u043a\\u0438\\u0440\\u043f\\u0438\\u0447\\u043e\\u043c. \\u0410\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442 \\u0441\\u043d\\u0430\\u0431\\u0436\\u0435\\u043d \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043e\\u0439 Roto-stop, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u044f\\u0442\\u044c \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u043f\\u043e \\u0434\\u0435\\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0443 \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u043b\\u043e\\u0442\\u043a\\u0430. \\u042d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c \\u0437\\u0430 \\u0441\\u0447\\u0435\\u0442 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u044f \\u0434\\u0432\\u043e\\u0439\\u043d\\u043e\\u0439 \\u0438\\u0437\\u043e\\u043b\\u044f\\u0446\\u0438\\u0438 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u0435\\u043d \\u0432\\u044b\\u0434\\u0435\\u0440\\u0436\\u0438\\u0432\\u0430\\u0442\\u044c \\u0441\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043d\\u0430\\u0433\\u0440\\u0443\\u0437\\u043a\\u0438 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0442\\u044f\\u0436\\u0435\\u043d\\u0438\\u0438 \\u0434\\u043b\",\"price\":\"120.00\",\"meta_description\":null,\"seo_title\":null,\"is_active\":\"on\",\"_token\":\"iZRbHgazm5yxhKJld9pB1wUzG3VwiBX2aghWFlDE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/products\"}', '2019-09-17 23:45:09', '2019-09-17 23:45:09'),
                                                                                                                        (563, 1, 'admin/shop/products', 'GET', '127.0.0.1', '[]', '2019-09-17 23:45:09', '2019-09-17 23:45:09'),
                                                                                                                        (564, 1, 'admin/shop/products/12', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:45:26', '2019-09-17 23:45:26'),
                                                                                                                        (565, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:45:40', '2019-09-17 23:45:40'),
                                                                                                                        (566, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:45:51', '2019-09-17 23:45:51'),
                                                                                                                        (567, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:45:57', '2019-09-17 23:45:57'),
                                                                                                                        (568, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:45:59', '2019-09-17 23:45:59'),
                                                                                                                        (569, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:46:00', '2019-09-17 23:46:00'),
                                                                                                                        (570, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:46:02', '2019-09-17 23:46:02'),
                                                                                                                        (571, 1, 'admin/shop/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:46:07', '2019-09-17 23:46:07'),
                                                                                                                        (572, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:46:24', '2019-09-17 23:46:24'),
                                                                                                                        (573, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:47:29', '2019-09-17 23:47:29'),
                                                                                                                        (574, 1, 'admin/shop/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-17 23:47:30', '2019-09-17 23:47:30'),
                                                                                                                        (575, 1, 'admin/shop/categories/create', 'GET', '127.0.0.1', '[]', '2019-09-17 23:49:08', '2019-09-17 23:49:08'),
                                                                                                                        (576, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-09-18 18:20:52', '2019-09-18 18:20:52'),
                                                                                                                        (577, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:20:58', '2019-09-18 18:20:58'),
                                                                                                                        (578, 1, 'admin/shop/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:21:01', '2019-09-18 18:21:01'),
                                                                                                                        (579, 1, 'admin/shop/categories/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u044b\",\"slug\":\"material\",\"description\":\"\\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 \\u2014 \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442. \\u041f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0441\\u0432\\u0435\\u0440\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0434\\u043e\\u043b\\u0431\\u043b\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0432\\u0435\\u0440\\u0441\\u0442\\u0438\\u0439 \\u0432 \\u043a\\u0438\\u0440\\u043f\\u0438\\u0447\\u0435, \\u0431\\u0435\\u0442\\u043e\\u043d\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u043d\\u0435. \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438 \\u043f\\u043d\\u0435\\u0432\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b. \\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442\\u044c \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0435\\u043b\\u0438, \\u0448\\u0443\\u0440\\u0443\\u043f\\u043e\\u0432\\u0435\\u0440\\u0442\\u0430 \\u0438 \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u043b\\u043e\\u0442\\u043a\\u0430. \\u0412 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043d\\u043e\\u043c \\u0440\\u044f\\u0434\\u0443 \\u0435\\u0441\\u0442\\u044c \\u0432\\u044b\\u0431\\u043e\\u0440 \\u00ab\\u0442\\u0440\\u0435\\u0445\\u0440\\u0435\\u0436\\u0438\\u043c\\u043d\\u0438\\u043a\\u043e\\u0432\\u00bb: \\u0432 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0441\\u043e\\u0432\\u043c\\u0435\\u0449\\u0435\\u043d\\u044b \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u044b\\u0439 \\u043c\\u043e\\u043b\\u043e\\u0442\\u043e\\u043a \\u0438 \\u0443\\u0434\\u0430\\u0440\\u043d\\u0430\\u044f \\u0434\\u0440\\u0435\\u043b\\u044c.\",\"_token\":\"3aAs4L2SfY2DDM2ybzoRAtj7b7AQE27jvrrm6AnT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/categories\"}', '2019-09-18 18:21:31', '2019-09-18 18:21:31'),
                                                                                                                        (580, 1, 'admin/shop/categories/1/edit', 'GET', '127.0.0.1', '[]', '2019-09-18 18:21:32', '2019-09-18 18:21:32'),
                                                                                                                        (581, 1, 'admin/shop/categories/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u044b\",\"slug\":\"material\",\"description\":\"\\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 \\u2014 \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442. \\u041f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0441\\u0432\\u0435\\u0440\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0434\\u043e\\u043b\\u0431\\u043b\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0432\\u0435\\u0440\\u0441\\u0442\\u0438\\u0439 \\u0432 \\u043a\\u0438\\u0440\\u043f\\u0438\\u0447\\u0435, \\u0431\\u0435\\u0442\\u043e\\u043d\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u043d\\u0435. \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438 \\u043f\\u043d\\u0435\\u0432\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b. \\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442\\u044c \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0435\\u043b\\u0438, \\u0448\\u0443\\u0440\\u0443\\u043f\\u043e\\u0432\\u0435\\u0440\\u0442\\u0430 \\u0438 \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u043b\\u043e\\u0442\\u043a\\u0430. \\u0412 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043d\\u043e\\u043c \\u0440\\u044f\\u0434\\u0443 \\u0435\\u0441\\u0442\\u044c \\u0432\\u044b\\u0431\\u043e\\u0440 \\u00ab\\u0442\\u0440\\u0435\\u0445\\u0440\\u0435\\u0436\\u0438\\u043c\\u043d\\u0438\\u043a\\u043e\\u0432\\u00bb: \\u0432 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0441\\u043e\\u0432\\u043c\\u0435\\u0449\\u0435\\u043d\\u044b \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u044b\\u0439 \\u043c\\u043e\\u043b\\u043e\\u0442\\u043e\\u043a \\u0438 \\u0443\\u0434\\u0430\\u0440\\u043d\\u0430\\u044f \\u0434\\u0440\\u0435\\u043b\\u044c.\",\"_token\":\"3aAs4L2SfY2DDM2ybzoRAtj7b7AQE27jvrrm6AnT\",\"_method\":\"PUT\"}', '2019-09-18 18:25:10', '2019-09-18 18:25:10'),
                                                                                                                        (582, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 18:25:10', '2019-09-18 18:25:10'),
                                                                                                                        (583, 1, 'admin/shop/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:25:16', '2019-09-18 18:25:16'),
                                                                                                                        (584, 1, 'admin/shop/categories/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0422\\u0435\\u0445\\u043d\\u0438\\u043a\\u0430\",\"slug\":\"equipment\",\"description\":\"\\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 \\u2014 \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442. \\u041f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0441\\u0432\\u0435\\u0440\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0434\\u043e\\u043b\\u0431\\u043b\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0432\\u0435\\u0440\\u0441\\u0442\\u0438\\u0439 \\u0432 \\u043a\\u0438\\u0440\\u043f\\u0438\\u0447\\u0435, \\u0431\\u0435\\u0442\\u043e\\u043d\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u043d\\u0435. \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438 \\u043f\\u043d\\u0435\\u0432\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b. \\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442\\u044c \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0435\\u043b\\u0438, \\u0448\\u0443\\u0440\\u0443\\u043f\\u043e\\u0432\\u0435\\u0440\\u0442\\u0430 \\u0438 \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u043b\\u043e\\u0442\\u043a\\u0430. \\u0412 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043d\\u043e\\u043c \\u0440\\u044f\\u0434\\u0443 \\u0435\\u0441\\u0442\\u044c \\u0432\\u044b\\u0431\\u043e\\u0440 \\u00ab\\u0442\\u0440\\u0435\\u0445\\u0440\\u0435\\u0436\\u0438\\u043c\\u043d\\u0438\\u043a\\u043e\\u0432\\u00bb: \\u0432 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0441\\u043e\\u0432\\u043c\\u0435\\u0449\\u0435\\u043d\\u044b \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u044b\\u0439 \\u043c\\u043e\\u043b\\u043e\\u0442\\u043e\\u043a \\u0438 \\u0443\\u0434\\u0430\\u0440\\u043d\\u0430\\u044f \\u0434\\u0440\\u0435\\u043b\\u044c.\",\"_token\":\"3aAs4L2SfY2DDM2ybzoRAtj7b7AQE27jvrrm6AnT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/categories\"}', '2019-09-18 18:25:30', '2019-09-18 18:25:30'),
                                                                                                                        (585, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 18:25:31', '2019-09-18 18:25:31'),
                                                                                                                        (586, 1, 'admin/shop/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:25:37', '2019-09-18 18:25:37'),
                                                                                                                        (587, 1, 'admin/shop/categories/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u044b\",\"slug\":\"material\",\"description\":\"\\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 \\u2014 \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442. \\u041f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0441\\u0432\\u0435\\u0440\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0434\\u043e\\u043b\\u0431\\u043b\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0432\\u0435\\u0440\\u0441\\u0442\\u0438\\u0439 \\u0432 \\u043a\\u0438\\u0440\\u043f\\u0438\\u0447\\u0435, \\u0431\\u0435\\u0442\\u043e\\u043d\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u043d\\u0435. \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438 \\u043f\\u043d\\u0435\\u0432\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b. \\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442\\u044c \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0435\\u043b\\u0438, \\u0448\\u0443\\u0440\\u0443\\u043f\\u043e\\u0432\\u0435\\u0440\\u0442\\u0430 \\u0438 \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u043b\\u043e\\u0442\\u043a\\u0430. \\u0412 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043d\\u043e\\u043c \\u0440\\u044f\\u0434\\u0443 \\u0435\\u0441\\u0442\\u044c \\u0432\\u044b\\u0431\\u043e\\u0440 \\u00ab\\u0442\\u0440\\u0435\\u0445\\u0440\\u0435\\u0436\\u0438\\u043c\\u043d\\u0438\\u043a\\u043e\\u0432\\u00bb: \\u0432 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0441\\u043e\\u0432\\u043c\\u0435\\u0449\\u0435\\u043d\\u044b \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u044b\\u0439 \\u043c\\u043e\\u043b\\u043e\\u0442\\u043e\\u043a \\u0438 \\u0443\\u0434\\u0430\\u0440\\u043d\\u0430\\u044f \\u0434\\u0440\\u0435\\u043b\\u044c.\",\"_token\":\"3aAs4L2SfY2DDM2ybzoRAtj7b7AQE27jvrrm6AnT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/categories\"}', '2019-09-18 18:25:44', '2019-09-18 18:25:44'),
                                                                                                                        (588, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 18:25:44', '2019-09-18 18:25:44'),
                                                                                                                        (589, 1, 'admin/shop/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:25:48', '2019-09-18 18:25:48');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
                                                                                                                        (590, 1, 'admin/shop/categories/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0418\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u044b\",\"slug\":\"tool\",\"description\":\"\\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 \\u2014 \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442. \\u041f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0441\\u0432\\u0435\\u0440\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0434\\u043e\\u043b\\u0431\\u043b\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0432\\u0435\\u0440\\u0441\\u0442\\u0438\\u0439 \\u0432 \\u043a\\u0438\\u0440\\u043f\\u0438\\u0447\\u0435, \\u0431\\u0435\\u0442\\u043e\\u043d\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u043d\\u0435. \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438 \\u043f\\u043d\\u0435\\u0432\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b. \\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442\\u044c \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0435\\u043b\\u0438, \\u0448\\u0443\\u0440\\u0443\\u043f\\u043e\\u0432\\u0435\\u0440\\u0442\\u0430 \\u0438 \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u043b\\u043e\\u0442\\u043a\\u0430. \\u0412 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043d\\u043e\\u043c \\u0440\\u044f\\u0434\\u0443 \\u0435\\u0441\\u0442\\u044c \\u0432\\u044b\\u0431\\u043e\\u0440 \\u00ab\\u0442\\u0440\\u0435\\u0445\\u0440\\u0435\\u0436\\u0438\\u043c\\u043d\\u0438\\u043a\\u043e\\u0432\\u00bb: \\u0432 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0441\\u043e\\u0432\\u043c\\u0435\\u0449\\u0435\\u043d\\u044b \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u044b\\u0439 \\u043c\\u043e\\u043b\\u043e\\u0442\\u043e\\u043a \\u0438 \\u0443\\u0434\\u0430\\u0440\\u043d\\u0430\\u044f \\u0434\\u0440\\u0435\\u043b\\u044c.\",\"_token\":\"3aAs4L2SfY2DDM2ybzoRAtj7b7AQE27jvrrm6AnT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/categories\"}', '2019-09-18 18:25:56', '2019-09-18 18:25:56'),
                                                                                                                        (591, 1, 'admin/shop/categories/2/edit', 'GET', '127.0.0.1', '[]', '2019-09-18 18:25:56', '2019-09-18 18:25:56'),
                                                                                                                        (592, 1, 'admin/shop/categories/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0418\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u044b\",\"slug\":\"tool\",\"description\":\"\\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 \\u2014 \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442. \\u041f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0441\\u0432\\u0435\\u0440\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0434\\u043e\\u043b\\u0431\\u043b\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0432\\u0435\\u0440\\u0441\\u0442\\u0438\\u0439 \\u0432 \\u043a\\u0438\\u0440\\u043f\\u0438\\u0447\\u0435, \\u0431\\u0435\\u0442\\u043e\\u043d\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u043d\\u0435. \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438 \\u043f\\u043d\\u0435\\u0432\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b. \\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442\\u044c \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0435\\u043b\\u0438, \\u0448\\u0443\\u0440\\u0443\\u043f\\u043e\\u0432\\u0435\\u0440\\u0442\\u0430 \\u0438 \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u043b\\u043e\\u0442\\u043a\\u0430. \\u0412 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043d\\u043e\\u043c \\u0440\\u044f\\u0434\\u0443 \\u0435\\u0441\\u0442\\u044c \\u0432\\u044b\\u0431\\u043e\\u0440 \\u00ab\\u0442\\u0440\\u0435\\u0445\\u0440\\u0435\\u0436\\u0438\\u043c\\u043d\\u0438\\u043a\\u043e\\u0432\\u00bb: \\u0432 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0441\\u043e\\u0432\\u043c\\u0435\\u0449\\u0435\\u043d\\u044b \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u044b\\u0439 \\u043c\\u043e\\u043b\\u043e\\u0442\\u043e\\u043a \\u0438 \\u0443\\u0434\\u0430\\u0440\\u043d\\u0430\\u044f \\u0434\\u0440\\u0435\\u043b\\u044c.\",\"_token\":\"3aAs4L2SfY2DDM2ybzoRAtj7b7AQE27jvrrm6AnT\",\"_method\":\"PUT\"}', '2019-09-18 18:26:22', '2019-09-18 18:26:22'),
                                                                                                                        (593, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 18:26:23', '2019-09-18 18:26:23'),
                                                                                                                        (594, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 18:26:39', '2019-09-18 18:26:39'),
                                                                                                                        (595, 1, 'admin/shop/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:26:46', '2019-09-18 18:26:46'),
                                                                                                                        (596, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 18:32:17', '2019-09-18 18:32:17'),
                                                                                                                        (597, 1, 'admin/shop/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:32:23', '2019-09-18 18:32:23'),
                                                                                                                        (598, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 18:32:46', '2019-09-18 18:32:46'),
                                                                                                                        (599, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 18:33:02', '2019-09-18 18:33:02'),
                                                                                                                        (600, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:33:45', '2019-09-18 18:33:45'),
                                                                                                                        (601, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:33:54', '2019-09-18 18:33:54'),
                                                                                                                        (602, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:36:59', '2019-09-18 18:36:59'),
                                                                                                                        (603, 1, 'admin/config/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:37:03', '2019-09-18 18:37:03'),
                                                                                                                        (604, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2019-09-18 18:37:04', '2019-09-18 18:37:04'),
                                                                                                                        (605, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 18:37:14', '2019-09-18 18:37:14'),
                                                                                                                        (606, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 19:20:03', '2019-09-18 19:20:03'),
                                                                                                                        (607, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 19:20:32', '2019-09-18 19:20:32'),
                                                                                                                        (608, 1, 'admin/shop/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:21:35', '2019-09-18 19:21:35'),
                                                                                                                        (609, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:21:40', '2019-09-18 19:21:40'),
                                                                                                                        (610, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:24:49', '2019-09-18 19:24:49'),
                                                                                                                        (611, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:24:51', '2019-09-18 19:24:51'),
                                                                                                                        (612, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:26:08', '2019-09-18 19:26:08'),
                                                                                                                        (613, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '[]', '2019-09-18 19:26:30', '2019-09-18 19:26:30'),
                                                                                                                        (614, 1, 'admin/shop/products/2', 'GET', '127.0.0.1', '[]', '2019-09-18 19:26:36', '2019-09-18 19:26:36'),
                                                                                                                        (615, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:26:56', '2019-09-18 19:26:56'),
                                                                                                                        (616, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:28:42', '2019-09-18 19:28:42'),
                                                                                                                        (617, 1, 'admin/shop/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:30:47', '2019-09-18 19:30:47'),
                                                                                                                        (618, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:30:51', '2019-09-18 19:30:51'),
                                                                                                                        (619, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 19:33:35', '2019-09-18 19:33:35'),
                                                                                                                        (620, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:33:52', '2019-09-18 19:33:52'),
                                                                                                                        (621, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:35:04', '2019-09-18 19:35:04'),
                                                                                                                        (622, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 19:35:37', '2019-09-18 19:35:37'),
                                                                                                                        (623, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:35:49', '2019-09-18 19:35:49'),
                                                                                                                        (624, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 19:36:10', '2019-09-18 19:36:10'),
                                                                                                                        (625, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:36:12', '2019-09-18 19:36:12'),
                                                                                                                        (626, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:36:17', '2019-09-18 19:36:17'),
                                                                                                                        (627, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 19:36:22', '2019-09-18 19:36:22'),
                                                                                                                        (628, 1, 'admin/shop/categories/3', 'GET', '127.0.0.1', '[]', '2019-09-18 19:36:26', '2019-09-18 19:36:26'),
                                                                                                                        (629, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 19:36:43', '2019-09-18 19:36:43'),
                                                                                                                        (630, 1, 'admin/shop/categories/3', 'GET', '127.0.0.1', '[]', '2019-09-18 19:36:47', '2019-09-18 19:36:47'),
                                                                                                                        (631, 1, 'admin/shop/categories/3', 'GET', '127.0.0.1', '[]', '2019-09-18 19:37:56', '2019-09-18 19:37:56'),
                                                                                                                        (632, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:38:04', '2019-09-18 19:38:04'),
                                                                                                                        (633, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:38:08', '2019-09-18 19:38:08'),
                                                                                                                        (634, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:38:10', '2019-09-18 19:38:10'),
                                                                                                                        (635, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:38:43', '2019-09-18 19:38:43'),
                                                                                                                        (636, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:38:45', '2019-09-18 19:38:45'),
                                                                                                                        (637, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:39:41', '2019-09-18 19:39:41'),
                                                                                                                        (638, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:39:44', '2019-09-18 19:39:44'),
                                                                                                                        (639, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:40:36', '2019-09-18 19:40:36'),
                                                                                                                        (640, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:40:38', '2019-09-18 19:40:38'),
                                                                                                                        (641, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:40:44', '2019-09-18 19:40:44'),
                                                                                                                        (642, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:40:46', '2019-09-18 19:40:46'),
                                                                                                                        (643, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:43:35', '2019-09-18 19:43:35'),
                                                                                                                        (644, 1, 'admin/shop/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:43:38', '2019-09-18 19:43:38'),
                                                                                                                        (645, 1, 'admin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:47:15', '2019-09-18 19:47:15'),
                                                                                                                        (646, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:47:20', '2019-09-18 19:47:20'),
                                                                                                                        (647, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:47:27', '2019-09-18 19:47:27'),
                                                                                                                        (648, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:47:28', '2019-09-18 19:47:28'),
                                                                                                                        (649, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:47:31', '2019-09-18 19:47:31'),
                                                                                                                        (650, 1, 'admin/pages', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:47:32', '2019-09-18 19:47:32'),
                                                                                                                        (651, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:47:36', '2019-09-18 19:47:36'),
                                                                                                                        (652, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:47:45', '2019-09-18 19:47:45'),
                                                                                                                        (653, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:51:25', '2019-09-18 19:51:25'),
                                                                                                                        (654, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:51:27', '2019-09-18 19:51:27'),
                                                                                                                        (655, 1, 'admin/shop/products/12', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:51:29', '2019-09-18 19:51:29'),
                                                                                                                        (656, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:51:51', '2019-09-18 19:51:51'),
                                                                                                                        (657, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:51:53', '2019-09-18 19:51:53'),
                                                                                                                        (658, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:54:12', '2019-09-18 19:54:12'),
                                                                                                                        (659, 1, 'admin/shop/products/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:54:15', '2019-09-18 19:54:15'),
                                                                                                                        (660, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:54:35', '2019-09-18 19:54:35'),
                                                                                                                        (661, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:57:30', '2019-09-18 19:57:30'),
                                                                                                                        (662, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:57:31', '2019-09-18 19:57:31'),
                                                                                                                        (663, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:57:39', '2019-09-18 19:57:39'),
                                                                                                                        (664, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 19:57:42', '2019-09-18 19:57:42'),
                                                                                                                        (665, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:58:06', '2019-09-18 19:58:06'),
                                                                                                                        (666, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:58:20', '2019-09-18 19:58:20'),
                                                                                                                        (667, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:58:22', '2019-09-18 19:58:22'),
                                                                                                                        (668, 1, 'admin/shop/categories/2', 'GET', '127.0.0.1', '[]', '2019-09-18 19:58:24', '2019-09-18 19:58:24'),
                                                                                                                        (669, 1, 'admin/shop/categories/2/edit', 'GET', '127.0.0.1', '[]', '2019-09-18 19:58:28', '2019-09-18 19:58:28'),
                                                                                                                        (670, 1, 'admin/shop/categories/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:58:34', '2019-09-18 19:58:34'),
                                                                                                                        (671, 1, 'admin/shop/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:58:44', '2019-09-18 19:58:44'),
                                                                                                                        (672, 1, 'admin/shop/categories/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:59:06', '2019-09-18 19:59:06'),
                                                                                                                        (673, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:59:50', '2019-09-18 19:59:50'),
                                                                                                                        (674, 1, 'admin/shop/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:59:53', '2019-09-18 19:59:53'),
                                                                                                                        (675, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:59:55', '2019-09-18 19:59:55'),
                                                                                                                        (676, 1, 'admin/shop/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 19:59:59', '2019-09-18 19:59:59'),
                                                                                                                        (677, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:00:01', '2019-09-18 20:00:01'),
                                                                                                                        (678, 1, 'admin/shop/categories/3', 'GET', '127.0.0.1', '[]', '2019-09-18 20:00:06', '2019-09-18 20:00:06'),
                                                                                                                        (679, 1, 'admin/shop/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:00:26', '2019-09-18 20:00:26'),
                                                                                                                        (680, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:00:39', '2019-09-18 20:00:39'),
                                                                                                                        (681, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:04:30', '2019-09-18 20:04:30'),
                                                                                                                        (682, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:04:31', '2019-09-18 20:04:31'),
                                                                                                                        (683, 1, 'admin/shop/categories/3', 'GET', '127.0.0.1', '[]', '2019-09-18 20:04:43', '2019-09-18 20:04:43'),
                                                                                                                        (684, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 20:04:50', '2019-09-18 20:04:50'),
                                                                                                                        (685, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '[]', '2019-09-18 20:11:16', '2019-09-18 20:11:16'),
                                                                                                                        (686, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:11:17', '2019-09-18 20:11:17'),
                                                                                                                        (687, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:11:21', '2019-09-18 20:11:21'),
                                                                                                                        (688, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:11:51', '2019-09-18 20:11:51'),
                                                                                                                        (689, 1, 'admin/shop/categories/3', 'GET', '127.0.0.1', '[]', '2019-09-18 20:11:54', '2019-09-18 20:11:54'),
                                                                                                                        (690, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:12:02', '2019-09-18 20:12:02'),
                                                                                                                        (691, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:12:09', '2019-09-18 20:12:09'),
                                                                                                                        (692, 1, 'admin/shop/categories/3', 'GET', '127.0.0.1', '[]', '2019-09-18 20:12:14', '2019-09-18 20:12:14'),
                                                                                                                        (693, 1, 'admin/shop/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:12:20', '2019-09-18 20:12:20'),
                                                                                                                        (694, 1, 'admin/shop/categories/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:12:23', '2019-09-18 20:12:23'),
                                                                                                                        (695, 1, 'admin/shop/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:12:36', '2019-09-18 20:12:36'),
                                                                                                                        (696, 1, 'admin/shop/categories/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:12:43', '2019-09-18 20:12:43'),
                                                                                                                        (697, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:13:36', '2019-09-18 20:13:36'),
                                                                                                                        (698, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:13:38', '2019-09-18 20:13:38'),
                                                                                                                        (699, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-18 20:13:38', '2019-09-18 20:13:38'),
                                                                                                                        (700, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-18 20:15:28', '2019-09-18 20:15:28'),
                                                                                                                        (701, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:15:32', '2019-09-18 20:15:32'),
                                                                                                                        (702, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:16:27', '2019-09-18 20:16:27'),
                                                                                                                        (703, 1, 'admin/shop/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:16:29', '2019-09-18 20:16:29'),
                                                                                                                        (704, 1, 'admin/shop/categories/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u044b\",\"slug\":\"material\",\"description\":\"\\u041f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440 \\u2014 \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442. \\u041f\\u0440\\u0435\\u0434\\u043d\\u0430\\u0437\\u043d\\u0430\\u0447\\u0435\\u043d \\u0434\\u043b\\u044f \\u0441\\u0432\\u0435\\u0440\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0434\\u043e\\u043b\\u0431\\u043b\\u0435\\u043d\\u0438\\u044f \\u043e\\u0442\\u0432\\u0435\\u0440\\u0441\\u0442\\u0438\\u0439 \\u0432 \\u043a\\u0438\\u0440\\u043f\\u0438\\u0447\\u0435, \\u0431\\u0435\\u0442\\u043e\\u043d\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u043d\\u0435. \\u0421\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438 \\u043f\\u043d\\u0435\\u0432\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043f\\u0435\\u0440\\u0444\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b. \\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442\\u044c \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0435\\u043b\\u0438, \\u0448\\u0443\\u0440\\u0443\\u043f\\u043e\\u0432\\u0435\\u0440\\u0442\\u0430 \\u0438 \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u043b\\u043e\\u0442\\u043a\\u0430. \\u0412 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u043d\\u043e\\u043c \\u0440\\u044f\\u0434\\u0443 \\u0435\\u0441\\u0442\\u044c \\u0432\\u044b\\u0431\\u043e\\u0440 \\u00ab\\u0442\\u0440\\u0435\\u0445\\u0440\\u0435\\u0436\\u0438\\u043c\\u043d\\u0438\\u043a\\u043e\\u0432\\u00bb: \\u0432 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435 \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0441\\u043e\\u0432\\u043c\\u0435\\u0449\\u0435\\u043d\\u044b \\u043e\\u0442\\u0431\\u043e\\u0439\\u043d\\u044b\\u0439 \\u043c\\u043e\\u043b\\u043e\\u0442\\u043e\\u043a \\u0438 \\u0443\\u0434\\u0430\\u0440\\u043d\\u0430\\u044f \\u0434\\u0440\\u0435\\u043b\\u044c.\",\"_token\":\"6P38I433JBJLR3Ll4AQKFVIyiYLTpBIClyEnI1xk\",\"after-save\":\"3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/categories\"}', '2019-09-18 20:16:36', '2019-09-18 20:16:36'),
                                                                                                                        (705, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 20:16:36', '2019-09-18 20:16:36'),
                                                                                                                        (706, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:16:42', '2019-09-18 20:16:42'),
                                                                                                                        (707, 1, 'admin/shop/categories/1', 'GET', '127.0.0.1', '[]', '2019-09-18 20:16:45', '2019-09-18 20:16:45'),
                                                                                                                        (708, 1, 'admin/shop/categories/3', 'GET', '127.0.0.1', '[]', '2019-09-18 20:16:49', '2019-09-18 20:16:49'),
                                                                                                                        (709, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:17:06', '2019-09-18 20:17:06'),
                                                                                                                        (710, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:26:35', '2019-09-18 20:26:35'),
                                                                                                                        (711, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:30:28', '2019-09-18 20:30:28'),
                                                                                                                        (712, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-18 20:30:39', '2019-09-18 20:30:39'),
                                                                                                                        (713, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:33:26', '2019-09-18 20:33:26'),
                                                                                                                        (714, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-18 20:33:30', '2019-09-18 20:33:30'),
                                                                                                                        (715, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-18 20:33:50', '2019-09-18 20:33:50'),
                                                                                                                        (716, 1, 'admin/shop/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:33:53', '2019-09-18 20:33:53'),
                                                                                                                        (717, 1, 'admin/shop/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:33:55', '2019-09-18 20:33:55'),
                                                                                                                        (718, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:33:56', '2019-09-18 20:33:56'),
                                                                                                                        (719, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-18 20:37:40', '2019-09-18 20:37:40'),
                                                                                                                        (720, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:37:43', '2019-09-18 20:37:43'),
                                                                                                                        (721, 1, 'admin/shop/orders', 'POST', '127.0.0.1', '{\"name\":\"anna\",\"email\":\"annabygomel@yandex.by\",\"phone\":\"6888888\",\"comment\":\"hhjhj\",\"order\":null,\"total\":\"12\",\"_token\":\"tZabwvXXRnC3xJh1YUqZ2nYwP4D3RpIXRIC44W12\",\"_previous_\":\"http:\\/\\/technomart\\/public\\/admin\\/shop\\/orders\"}', '2019-09-18 20:38:26', '2019-09-18 20:38:26'),
                                                                                                                        (722, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '[]', '2019-09-18 20:38:26', '2019-09-18 20:38:26'),
                                                                                                                        (723, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:47:14', '2019-09-18 20:47:14'),
                                                                                                                        (724, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:47:17', '2019-09-18 20:47:17'),
                                                                                                                        (725, 1, 'admin/shop/orders', 'POST', '127.0.0.1', '{\"status\":\"test\",\"customer_id\":\"test\",\"order_number\":\"test\",\"total_amount\":\"120\",\"_token\":\"6P38I433JBJLR3Ll4AQKFVIyiYLTpBIClyEnI1xk\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\"}', '2019-09-18 20:48:00', '2019-09-18 20:48:00'),
                                                                                                                        (726, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '[]', '2019-09-18 20:48:01', '2019-09-18 20:48:01'),
                                                                                                                        (727, 1, 'admin/shop/orders', 'POST', '127.0.0.1', '{\"status\":\"test\",\"customer_id\":\"test\",\"order_number\":\"test\",\"total_amount\":\"120\",\"_token\":\"6P38I433JBJLR3Ll4AQKFVIyiYLTpBIClyEnI1xk\"}', '2019-09-18 20:49:29', '2019-09-18 20:49:29'),
                                                                                                                        (728, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '[]', '2019-09-18 20:49:30', '2019-09-18 20:49:30'),
                                                                                                                        (729, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '[]', '2019-09-18 20:54:59', '2019-09-18 20:54:59'),
                                                                                                                        (730, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '[]', '2019-09-18 20:55:24', '2019-09-18 20:55:24'),
                                                                                                                        (731, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '[]', '2019-09-18 20:56:26', '2019-09-18 20:56:26'),
                                                                                                                        (732, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:56:41', '2019-09-18 20:56:41'),
                                                                                                                        (733, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:56:43', '2019-09-18 20:56:43'),
                                                                                                                        (734, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '[]', '2019-09-18 20:57:46', '2019-09-18 20:57:46'),
                                                                                                                        (735, 1, 'admin/shop/orders', 'POST', '127.0.0.1', '{\"status\":\"uu\",\"customer_id\":\"uu\",\"order_number\":\"nnn\",\"total_amount\":\"12\",\"transaction_date\":\"2019-09-19\",\"_token\":\"tZabwvXXRnC3xJh1YUqZ2nYwP4D3RpIXRIC44W12\",\"after-save\":\"3\"}', '2019-09-18 20:58:02', '2019-09-18 20:58:02'),
                                                                                                                        (736, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '[]', '2019-09-18 20:58:02', '2019-09-18 20:58:02'),
                                                                                                                        (737, 1, 'admin/shop/orders', 'POST', '127.0.0.1', '{\"status\":\"uu\",\"customer_id\":\"1\",\"order_number\":\"nnn\",\"total_amount\":\"12\",\"transaction_date\":\"2019-09-19\",\"_token\":\"tZabwvXXRnC3xJh1YUqZ2nYwP4D3RpIXRIC44W12\"}', '2019-09-18 20:58:30', '2019-09-18 20:58:30'),
                                                                                                                        (738, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-18 20:58:30', '2019-09-18 20:58:30'),
                                                                                                                        (739, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-18 20:58:53', '2019-09-18 20:58:53'),
                                                                                                                        (740, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-19 11:27:29', '2019-09-19 11:27:29'),
                                                                                                                        (741, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '[]', '2019-09-19 11:29:00', '2019-09-19 11:29:00'),
                                                                                                                        (742, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-19 11:30:02', '2019-09-19 11:30:02'),
                                                                                                                        (743, 1, 'admin/shop/orders', 'POST', '127.0.0.1', '{\"status\":\"\\u0417\\u0430\\u043a\\u0430\\u0437\\u0430\\u043d\\u043e\",\"customer_id\":\"1\",\"order_number\":\"\\u041f\\u0440\\u043e\\u0431\\u043d\\u044b\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437\",\"total_amount\":\"10\",\"transaction_date\":\"2019-09-19\",\"_token\":\"NvvDm08lUpWa6ezGefULIEWy4whYdC7hjlnBXN75\",\"after-save\":\"3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop\\/orders\"}', '2019-09-19 11:31:29', '2019-09-19 11:31:29'),
                                                                                                                        (744, 1, 'admin/shop/orders/2', 'GET', '127.0.0.1', '[]', '2019-09-19 11:31:29', '2019-09-19 11:31:29'),
                                                                                                                        (745, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '[]', '2019-09-19 11:31:30', '2019-09-19 11:31:30'),
                                                                                                                        (746, 1, 'admin/shop/orders/create', 'GET', '127.0.0.1', '[]', '2019-09-19 11:35:16', '2019-09-19 11:35:16'),
                                                                                                                        (747, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-19 11:35:27', '2019-09-19 11:35:27'),
                                                                                                                        (748, 1, 'admin/shop/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-19 11:35:29', '2019-09-19 11:35:29'),
                                                                                                                        (749, 1, 'admin/shop/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-19 11:35:35', '2019-09-19 11:35:35'),
                                                                                                                        (750, 1, 'admin/shop/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-19 11:35:41', '2019-09-19 11:35:41');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_permissions`
--

CREATE TABLE `admin_permissions` (
    `id` int(10) UNSIGNED NOT NULL,
    `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `http_path` text COLLATE utf8mb4_unicode_ci,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
                                                                                                                      (1, 'All permission', '*', '', '*', NULL, NULL),
                                                                                                                      (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
                                                                                                                      (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
                                                                                                                      (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
                                                                                                                      (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_roles`
--

CREATE TABLE `admin_roles` (
    `id` int(10) UNSIGNED NOT NULL,
    `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
                                                                                    (1, 'Administrator', 'administrator', '2019-09-15 21:01:34', '2019-09-15 21:01:34'),
                                                                                    (2, 'user', 'user', '2019-09-15 23:19:56', '2019-09-15 23:19:56');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
    `role_id` int(11) NOT NULL,
    `menu_id` int(11) NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
                                                                                        (1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
    `role_id` int(11) NOT NULL,
    `permission_id` int(11) NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
                                                                                                     (1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_users`
--

CREATE TABLE `admin_role_users` (
    `role_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
                                                                                         (1, 1, NULL, NULL),
                                                                                         (2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE `admin_users` (
    `id` int(10) UNSIGNED NOT NULL,
    `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
    `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
    `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
    `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
                                                                                                                                (1, 'admin', '$2y$10$mFzwKk7oAxlHvTgwBtRopex4xcEJ8YuC2CggRdwFcXOBiD5PIUQja', 'Administrator', NULL, 'aaOxcVDQJ6Yxa7vTJzs1aOCWlFxoy5l83MwEhxDS7YKrBEFvXW526XwZP30s', '2019-09-15 21:01:34', '2019-09-15 21:01:34'),
                                                                                                                                (2, 'Victor', '$2y$10$K8pHMdg/EFJ/NekviVZAaOj9ujWLYgijtgBmkbWRG6enFiJ5uOKKS', 'vic', 'images/76a595337e8c78b21983aae090553e90.jpg', 'EbSzGlCoJKzAT50skbVyf7UMzGw7S2mxfkpRGFxchCJBYncHvkE5xxfuWAzp', '2019-09-15 23:15:04', '2019-09-15 23:15:04');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
    `user_id` int(11) NOT NULL,
    `permission_id` int(11) NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
    `id` int(10) UNSIGNED NOT NULL,
    `name` varchar(255) NOT NULL,
    `description` varchar(255) DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
    `id` int(10) UNSIGNED NOT NULL,
    `parent_id` int(4) DEFAULT NULL,
    `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `order` tinyint(4) NOT NULL,
    `description` text COLLATE utf8mb4_unicode_ci,
    `created_at` timestamp NOT NULL,
    `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `title`, `logo`, `order`, `description`, `created_at`, `updated_at`) VALUES
                                                                                                                                 (1, 0, 'material', 'Материалы', 'images/000028051_p_l-250x250.jpg', 0, 'Перфоратор — универсальный строительный инструмент. Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне. Существуют электромеханические и пневматические перфораторы. Современные модели могут выполнять функции дрели, шуруповерта и отбойного молотка. В ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.', '0000-00-00 00:00:00', '2019-09-18 18:25:44'),
                                                                                                                                 (2, 0, 'tool', 'Инструменты', 'images/e1eb9ff135e249e3d970d20211ca94c0.jpg', 0, 'Перфоратор — универсальный строительный инструмент. Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне. Существуют электромеханические и пневматические перфораторы. Современные модели могут выполнять функции дрели, шуруповерта и отбойного молотка. В ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.', '0000-00-00 00:00:00', '2019-09-18 18:26:22'),
                                                                                                                                 (3, 0, 'equipment', 'Техника', 'images/3aa0306cb065194d5e6eede870b0c410.jpg', 0, 'Перфоратор — универсальный строительный инструмент. Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне. Существуют электромеханические и пневматические перфораторы. Современные модели могут выполнять функции дрели, шуруповерта и отбойного молотка. В ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.', '0000-00-00 00:00:00', '2019-09-18 18:25:31');

-- --------------------------------------------------------

--
-- Структура таблицы `manufacturers`
--

CREATE TABLE `manufacturers` (
    `id` int(10) UNSIGNED NOT NULL,
    `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `title`, `image`, `link`) VALUES
                                                                    (1, 'Dr.', 'brands-logo-1.jpg', NULL),
                                                                    (2, 'Dr.', 'brands-logo-2.jpg', NULL),
                                                                    (3, 'Dr.', 'brands-logo-3.jpg', NULL),
                                                                    (4, 'Prof.', 'brands-logo-1.jpg', NULL),
                                                                    (5, 'Prof.', 'brands-logo-1.jpg', NULL),
                                                                    (6, 'Mr.', 'brands-logo-1.jpg', NULL),
                                                                    (7, 'Mr.', 'brands-logo-1.jpg', NULL),
                                                                    (8, 'Dr.', 'brands-logo-1.jpg', NULL),
                                                                    (9, 'Mrs.', 'brands-logo-1.jpg', NULL),
                                                                    (10, 'Dr.', 'brands-logo-1.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
    `id` int(10) UNSIGNED NOT NULL,
    `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `sort` int(11) NOT NULL,
    `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `slug`, `title`, `position`, `sort`, `is_active`) VALUES
                                                                                    (1, 'home', 'Главная', 'top', 1, 1),
                                                                                    (2, 'company', 'Компания', 'top', 4, 1),
                                                                                    (3, 'catalog', 'Каталог', 'top', 3, 1),
                                                                                    (4, 'news', 'Новости', 'top', 2, 1),
                                                                                    (5, 'contacts', 'Контакты', 'top', 5, 1),
                                                                                    (6, 'admin', 'Админ', 'top', 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
    `id` int(10) UNSIGNED NOT NULL,
    `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
                                                             (4, '2014_10_12_000000_create_users_table', 1),
                                                             (5, '2014_10_12_100000_create_password_resets_table', 1),
                                                             (6, '2019_02_04_161531_create_products_table', 1),
                                                             (7, '2019_02_04_170839_add_column_to_products', 2),
                                                             (8, '2019_02_04_172249_create_manufacturers_table', 3),
                                                             (9, '2019_02_04_180204_create_pages_table', 4),
                                                             (10, '2019_02_09_151822_create_menus_table', 5),
                                                             (11, '2019_02_09_153515_create_settings_table', 6),
                                                             (12, '2019_02_09_164817_create_categories_table', 7),
                                                             (13, '2019_02_09_174222_create_orders_table', 8),
                                                             (14, '2016_01_04_173148_create_admin_tables', 9),
                                                             (15, '2017_07_17_040159_create_config_table', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
    `id` int(10) UNSIGNED NOT NULL,
    `order_number` varchar(255) NOT NULL,
    `transaction_date` varchar(255) NOT NULL,
    `customer_id` int(10) UNSIGNED NOT NULL,
    `total_amount` double(8,2) NOT NULL,
    `status` varchar(255) NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `transaction_date`, `customer_id`, `total_amount`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
                                                                                                                                                          (1, 'nnn', '2019-09-19', 1, 12.00, 'uu', '2019-09-18 20:58:30', '2019-09-18 20:58:30', NULL),
                                                                                                                                                          (2, 'Пробный заказ', '2019-09-19', 1, 10.00, 'Заказано', '2019-09-19 11:31:29', '2019-09-19 11:31:29', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `order_details`
--

CREATE TABLE `order_details` (
    `id` int(10) UNSIGNED NOT NULL,
    `order_id` int(10) UNSIGNED NOT NULL,
    `product_id` int(10) UNSIGNED NOT NULL,
    `quantity` int(11) NOT NULL,
    `price` double(8,2) NOT NULL,
    `sub_total` double(8,2) NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
    `id` int(10) UNSIGNED NOT NULL,
    `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `meta_description` text COLLATE utf8mb4_unicode_ci,
    `content` text COLLATE utf8mb4_unicode_ci,
    `settings` text COLLATE utf8mb4_unicode_ci,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `seo_title`, `meta_description`, `content`, `settings`, `created_at`, `updated_at`) VALUES
                                                                                                                                       (1, 'molestias-praesentium-autem-repellat-repudiandae-qui-tempora', 'Dr. Lori Ryan', NULL, NULL, 'Qui enim id et sed molestias sit tenetur. Ut consectetur dolorum officia. Fuga ut qui esse ut.', NULL, NULL, NULL),
                                                                                                                                       (2, 'occaecati-dignissimos-quo-cupiditate-ea-saepe-est', 'Libbie Zieme', NULL, NULL, 'Aut porro quam sed a quis debitis. Porro qui accusamus est aut dolor dolorem rerum aliquam. Velit quis fuga doloribus voluptatem. Dolorem numquam a dolores eos maxime commodi.', NULL, NULL, NULL),
                                                                                                                                       (3, 'est-consequatur-ducimus-eligendi-quo', 'Prof. Dale Schimmel', NULL, NULL, 'Voluptas saepe nam incidunt. Rem inventore tempora perferendis natus excepturi molestiae labore. Minus esse pariatur enim hic.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
    `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
    `id` int(10) UNSIGNED NOT NULL,
    `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `category_id` int(11) NOT NULL,
    `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `meta_description` text COLLATE utf8mb4_unicode_ci,
    `excerpt` text COLLATE utf8mb4_unicode_ci,
    `content` text COLLATE utf8mb4_unicode_ci,
    `is_active` tinyint(4) NOT NULL DEFAULT '0',
    `is_new` tinyint(4) NOT NULL DEFAULT '0',
    `is_recommended` tinyint(4) NOT NULL DEFAULT '0',
    `old_price` decimal(10,2) DEFAULT NULL,
    `price` decimal(10,2) DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `slug`, `title`, `image`, `model`, `category_id`, `seo_title`, `meta_description`, `excerpt`, `content`, `is_active`, `is_new`, `is_recommended`, `old_price`, `price`, `created_at`, `updated_at`) VALUES
                                                                                                                                                                                                                                         (1, 'doloribus-quo-autem-fugiat-eligendi-quaerat-excepturi', 'Mrs. - Перфоратор Makita', 'images/000025844_p_l-250x250.jpg', NULL, 1, NULL, NULL, 'Von Ltd', '<p>Itaque in asperiores sunt eaque molestiae. Inventore a commodi eos eos vero deserunt aut. Aut odit velit saepe ut.</p>', 1, 0, 1, NULL, '21.20', NULL, '2019-09-17 22:41:08'),
                                                                                                                                                                                                                                         (2, 'animi-iure-officiis-officia', 'Prof. - Перфоратор Bosh', 'images/aeeee0ca71c2846b64124af54884dc6e.jpg', NULL, 2, NULL, NULL, 'Dooley-Kautzer', 'Sunt voluptatem architecto fugit est sequi laboriosam. Impedit autem cum aut tempora mollitia totam vero impedit. In sunt molestiae amet repellendus nihil aperiam deserunt voluptas.', 1, 0, 1, '21.20', '35.80', NULL, '2019-09-17 22:42:12'),
                                                                                                                                                                                                                                         (3, 'tempore-est-suscipit-ut-maxime-et-officiis-doloribus-maxime', 'Mrs. - Перфоратор Bosh', 'images/000162588_p_l-250x250.jpg', NULL, 2, NULL, NULL, 'Abbott-Weber', 'Quasi debitis impedit officia eum earum voluptas ducimus sunt. Nostrum et dolorum explicabo sunt et quis iusto. Placeat magni sed voluptatum nihil. Quaerat unde eum dolore fuga iure placeat aperiam.', 1, 1, 1, '34.12', '23.29', NULL, '2019-09-17 22:43:48'),
                                                                                                                                                                                                                                         (4, 'ipsum-ab-voluptatem-consequatur-numquam-dolore-veniam-perspiciatis', 'Prof. - Перфоратор Bosh', 'images/000164722_p_l-250x250.jpg', NULL, 2, NULL, NULL, 'Jakubowski, Hills and Hodkiewicz', 'Ut cum voluptas omnis nostrum placeat. Voluptatem delectus commodi iusto dignissimos. Aut non et quas facere consequatur sed provident.', 1, 0, 1, '12.19', '12.10', NULL, '2019-09-17 22:49:20'),
                                                                                                                                                                                                                                         (5, 'praesentium-et-qui-velit', 'Mr. - Перфоратор Bosh', 'images/000086076_p_l-250x250.png', NULL, 1, NULL, NULL, 'Stroman, Jerde and Dare', 'Esse officia expedita molestias perferendis pariatur qui voluptas. Laborum rerum libero molestiae doloremque voluptas. Debitis ex veritatis inventore iste quaerat quidem voluptas.', 1, 0, 1, '12.20', '12.50', NULL, NULL),
                                                                                                                                                                                                                                         (6, 'saepe-excepturi-tempora-minus-suscipit-consequatur-error-cum-non', 'Mr. - Перфоратор Bosh', 'images/000086076_p_l-250x250.png', NULL, 1, NULL, NULL, 'Batz-Schiller', 'Alias illo ducimus cumque aliquam. Nihil non possimus itaque. Dolores accusantium ipsam qui rem odit. Est facere id tenetur. Magni aut sint iste debitis omnis ipsam enim.', 1, 0, 1, NULL, NULL, NULL, NULL),
                                                                                                                                                                                                                                         (7, 'fugit-pariatur-est-autem-expedita-neque-aut', 'Dr. - Перфоратор Bosh', 'images/000086076_p_l-250x250.png', NULL, 1, NULL, NULL, 'Smith Ltd', 'Illo a porro sed. At ut quas cumque ut. Voluptate ut omnis quas eaque odit. Molestiae occaecati velit cupiditate quasi sint voluptates.', 1, 0, 1, NULL, NULL, NULL, NULL),
                                                                                                                                                                                                                                         (8, 'ullam-quo-aspernatur-quia-aut-labore-nisi-et', 'Dr. - Перфоратор Bosh', 'images/000086076_p_l-250x250.png', NULL, 1, NULL, NULL, 'Sawayn, Medhurst and Nicolas', 'Libero laborum natus soluta sed fugiat vero nam. Modi deleniti alias quidem. Aliquid sit aut eligendi quis vero. Id deserunt ut dignissimos laboriosam.', 1, 0, 1, NULL, NULL, NULL, NULL),
                                                                                                                                                                                                                                         (9, 'esse-accusamus-architecto-est-voluptates-minus-sit', 'Dr. - Перфоратор Bosh', 'images/1dfa217bfbed18f90b8541cd0a056688.jpg', NULL, 1, NULL, NULL, 'O\'Kon-Welch', 'Facere quasi eaque dolore. Et doloribus voluptatibus aut enim non. Sit aut earum veniam molestiae et nemo totam.', 1, 0, 1, NULL, NULL, NULL, '2019-09-17 22:37:33'),
                                                                                                                                                                                                                                         (10, 'illo-tempora-a-facere-quam', 'Dr. - Перфоратор Bosh', 'images/000028051_p_l-250x250.jpg', NULL, 1, NULL, NULL, 'Gerhold Inc', 'Alias laboriosam laborum illum qui. Et est ipsam rerum facilis pariatur. Nihil perferendis libero amet accusantium et. Magnam rem soluta tenetur natus eos ullam aut et. Deleniti magni sunt atque ea.', 1, 0, 1, NULL, NULL, NULL, '2019-09-17 22:36:32'),
                                                                                                                                                                                                                                         (12, 'animi-iure-officiis-officia-new', 'Дрель', 'images/4893ae4086f22ea8784dbc99f5c2db16.jpg', NULL, 2, NULL, NULL, NULL, 'форатор AEG KH24IE (4935451555) предназначен для сверления особо твердых материалов, инструмент великолепно справляет с бетоном и кирпичом. Аппарат снабжен системой Roto-stop, которая позволяет осуществлять небольшие работы по демонтажу в качестве отбойного молотка. Электродвигатель за счет наличия двойной изоляции способен выдерживать сильные нагрузки на протяжении дл', 1, 0, 0, NULL, '120.00', '2019-09-17 23:42:41', '2019-09-17 23:45:09');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
    `id` int(10) UNSIGNED NOT NULL,
    `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+7 (812) 555-05-55',
    `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo.png',
    `social_vk_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `social_ok_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
    `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'г. Санкт-Петербург, ул. Б. Конюшенная, д. 19/8'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `phone`, `logo`, `social_vk_link`, `social_ok_link`, `address`) VALUES
                                                                                                     (1, '+375(29)567-39-30', 'logo.png', 'vk.com', '', 'г Гомель Богдана  Хмельницкого 231 к2');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_orders`
--

CREATE TABLE `shop_orders` (
    `id` tinyint(4) DEFAULT NULL,
    `name` varchar(8) DEFAULT NULL,
    `email` varchar(13) DEFAULT NULL,
    `phone` varchar(8) DEFAULT NULL,
    `comment` varchar(13) DEFAULT NULL,
    `order` varchar(105) DEFAULT NULL,
    `total` smallint(6) DEFAULT NULL,
    `created_at` varchar(0) DEFAULT NULL,
    `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `shop_orders`
--

INSERT INTO `shop_orders` (`id`, `name`, `email`, `phone`, `comment`, `order`, `total`, `created_at`, `updated_at`) VALUES
                                                                                                                           (1, 'asdf', 'asdf', 'asdf', 'asdfa', '<p></p><p>asd</p>', 2121, '', ''),
                                                                                                                           (2, '1 ваыф', '2 фывавы', '3 ффыва', '4 фвыафыва', '{\"1\":{\"id\":\"1\",\"title\":\"Product 1\",\"photo\":\"images/wallhaven-116891.jpg\",\"slug\":\"2\",\"cost\":\"4\",\"qty\":1}}', 4, '', ''),
                                                                                                                           (3, 'asdasdf', 'asdf@asdf.co', '23423432', 'adsfas dfasdf', '{\"1\":{\"id\":\"1\",\"title\":\"Product 1\",\"photo\":\"images/wallhaven-116891.jpg\",\"slug\":\"2\",\"cost\":\"4\",\"qty\":1}}', 4, '', ''),
                                                                                                                           (5, 'asdf', 'asdf@asdf.com', '32423432', 'asdf asdf', '{\"1\":{\"id\":\"1\",\"title\":\"Product 1\",\"photo\":\"images/wallhaven-116891.jpg\",\"slug\":\"2\",\"cost\":\"4\",\"qty\":1}}', 4, '', ''),
                                                                                                                           (6, 'asdfadsf', 'adsf@asdf.com', '435234', 'sdaf asdf', '1 - Product 1 - 42 - Product 2 - 5', 9, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
    `id` int(10) UNSIGNED NOT NULL,
    `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `login` text COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email_verified_at` timestamp NULL DEFAULT NULL,
    `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
                                                                                                                                           (1, 'anna', 'admin', 'admin@example.com', NULL, '$2y$10$mFzwKk7oAxlHvTgwBtRopex4xcEJ8YuC2CggRdwFcXOBiD5PIUQja', NULL, '2019-09-14 18:16:55', '2019-09-14 18:16:55');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_config`
--
ALTER TABLE `admin_config`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `admin_config_name_unique` (`name`);

--
-- Индексы таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
    ADD PRIMARY KEY (`id`),
    ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Индексы таблицы `admin_permissions`
--
ALTER TABLE `admin_permissions`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Индексы таблицы `admin_roles`
--
ALTER TABLE `admin_roles`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Индексы таблицы `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
    ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Индексы таблицы `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
    ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Индексы таблицы `admin_role_users`
--
ALTER TABLE `admin_role_users`
    ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Индексы таблицы `admin_users`
--
ALTER TABLE `admin_users`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Индексы таблицы `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
    ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `manufacturers`
--
ALTER TABLE `manufacturers`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
    ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Индексы таблицы `order_details`
--
ALTER TABLE `order_details`
    ADD PRIMARY KEY (`id`),
    ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
    ADD KEY `password_resets_email_index` (`email`(191));

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_config`
--
ALTER TABLE `admin_config`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751;

--
-- AUTO_INCREMENT для таблицы `admin_permissions`
--
ALTER TABLE `admin_permissions`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `admin_roles`
--
ALTER TABLE `admin_roles`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `admin_users`
--
ALTER TABLE `admin_users`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `manufacturers`
--
ALTER TABLE `manufacturers`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
