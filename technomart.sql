-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 16 2019 г., 15:54
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
                                                                                                                 (7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL);

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
                                                                                                                        (137, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-15 23:55:58', '2019-09-15 23:55:58');

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
                                                                                                                                (2, 'Victor', '$2y$10$K8pHMdg/EFJ/NekviVZAaOj9ujWLYgijtgBmkbWRG6enFiJ5uOKKS', 'vic', 'images/76a595337e8c78b21983aae090553e90.jpg', 'LjY9Lbq5Zmx9cRd6b9hm1NM5ulKgQ4gEwt9rzxZ5k89V1FYmVx5LSZ5w1dnO', '2019-09-15 23:15:04', '2019-09-15 23:15:04');

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
    `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` text COLLATE utf8mb4_unicode_ci,
    `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `slug`, `title`, `description`, `created_at`) VALUES
                                                                                     (1, 'material', 'Материалы', 'Перфоратор — универсальный строительный инструмент. Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне. Существуют электромеханические и пневматические перфораторы. Современные модели могут выполнять функции дрели, шуруповерта и отбойного молотка. В ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.', '0000-00-00 00:00:00'),
                                                                                     (2, 'tool', 'Инструменты', 'Перфоратор — универсальный строительный инструмент. Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне. Существуют электромеханические и пневматические перфораторы. Современные модели могут выполнять функции дрели, шуруповерта и отбойного молотка. В ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.', '0000-00-00 00:00:00'),
                                                                                     (3, 'equipment', 'Техника', 'Перфоратор — универсальный строительный инструмент. Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне. Существуют электромеханические и пневматические перфораторы. Современные модели могут выполнять функции дрели, шуруповерта и отбойного молотка. В ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.', '0000-00-00 00:00:00');

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
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
                                                                                                                                                                                                                                         (1, 'doloribus-quo-autem-fugiat-eligendi-quaerat-excepturi', 'Mrs. - Перфоратор Makita', 'catalog-item-bfg-9000.jpg', NULL, 1, NULL, NULL, 'Von Ltd', '<p>Itaque in asperiores sunt eaque molestiae. Inventore a commodi eos eos vero deserunt aut. Aut odit velit saepe ut.</p>', 1, 0, 1, NULL, '21.20', NULL, NULL),
                                                                                                                                                                                                                                         (2, 'animi-iure-officiis-officia', 'Prof. - Перфоратор Bosh', 'catalog-item-bfg-9000.jpg', NULL, 2, NULL, NULL, 'Dooley-Kautzer', 'Sunt voluptatem architecto fugit est sequi laboriosam. Impedit autem cum aut tempora mollitia totam vero impedit. In sunt molestiae amet repellendus nihil aperiam deserunt voluptas.', 1, 0, 1, '21.20', '35.80', NULL, NULL),
                                                                                                                                                                                                                                         (3, 'tempore-est-suscipit-ut-maxime-et-officiis-doloribus-maxime', 'Mrs. - Перфоратор Bosh', 'catalog-item-bfg-9000.jpg', NULL, 2, NULL, NULL, 'Abbott-Weber', 'Quasi debitis impedit officia eum earum voluptas ducimus sunt. Nostrum et dolorum explicabo sunt et quis iusto. Placeat magni sed voluptatum nihil. Quaerat unde eum dolore fuga iure placeat aperiam.', 1, 1, 1, '34.12', '23.29', NULL, NULL),
                                                                                                                                                                                                                                         (4, 'ipsum-ab-voluptatem-consequatur-numquam-dolore-veniam-perspiciatis', 'Prof. - Перфоратор Bosh', 'catalog-item-bfg-9000.jpg', NULL, 2, NULL, NULL, 'Jakubowski, Hills and Hodkiewicz', 'Ut cum voluptas omnis nostrum placeat. Voluptatem delectus commodi iusto dignissimos. Aut non et quas facere consequatur sed provident.', 1, 0, 1, '12.19', '12.10', NULL, NULL),
                                                                                                                                                                                                                                         (5, 'praesentium-et-qui-velit', 'Mr. - Перфоратор Bosh', 'catalog-item-bfg-9000.jpg', NULL, 1, NULL, NULL, 'Stroman, Jerde and Dare', 'Esse officia expedita molestias perferendis pariatur qui voluptas. Laborum rerum libero molestiae doloremque voluptas. Debitis ex veritatis inventore iste quaerat quidem voluptas.', 1, 0, 1, '12.20', '12.50', NULL, NULL),
                                                                                                                                                                                                                                         (6, 'saepe-excepturi-tempora-minus-suscipit-consequatur-error-cum-non', 'Mr. - Перфоратор Bosh', 'catalog-item-bfg-9000.jpg', NULL, 1, NULL, NULL, 'Batz-Schiller', 'Alias illo ducimus cumque aliquam. Nihil non possimus itaque. Dolores accusantium ipsam qui rem odit. Est facere id tenetur. Magni aut sint iste debitis omnis ipsam enim.', 1, 0, 1, NULL, NULL, NULL, NULL),
                                                                                                                                                                                                                                         (7, 'fugit-pariatur-est-autem-expedita-neque-aut', 'Dr. - Перфоратор Bosh', 'catalog-item-bfg-9000.jpg', NULL, 1, NULL, NULL, 'Smith Ltd', 'Illo a porro sed. At ut quas cumque ut. Voluptate ut omnis quas eaque odit. Molestiae occaecati velit cupiditate quasi sint voluptates.', 1, 0, 1, NULL, NULL, NULL, NULL),
                                                                                                                                                                                                                                         (8, 'ullam-quo-aspernatur-quia-aut-labore-nisi-et', 'Dr. - Перфоратор Bosh', 'catalog-item-bfg-9000.jpg', NULL, 1, NULL, NULL, 'Sawayn, Medhurst and Nicolas', 'Libero laborum natus soluta sed fugiat vero nam. Modi deleniti alias quidem. Aliquid sit aut eligendi quis vero. Id deserunt ut dignissimos laboriosam.', 1, 0, 1, NULL, NULL, NULL, NULL),
                                                                                                                                                                                                                                         (9, 'esse-accusamus-architecto-est-voluptates-minus-sit', 'Dr. - Перфоратор Bosh', 'catalog-item-bfg-9000.jpg', NULL, 1, NULL, NULL, 'O\'Kon-Welch', 'Facere quasi eaque dolore. Et doloribus voluptatibus aut enim non. Sit aut earum veniam molestiae et nemo totam.', 1, 0, 1, NULL, NULL, NULL, NULL),
                                                                                                                                                                                                                                         (10, 'illo-tempora-a-facere-quam', 'Dr. - Перфоратор Bosh', 'catalog-item-bfg-9000.jpg', NULL, 1, NULL, NULL, 'Gerhold Inc', 'Alias laboriosam laborum illum qui. Et est ipsam rerum facilis pariatur. Nihil perferendis libero amet accusantium et. Magnam rem soluta tenetur natus eos ullam aut et. Deleniti magni sunt atque ea.', 1, 0, 1, NULL, NULL, NULL, NULL);

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
-- Структура таблицы `users`
--

CREATE TABLE `users` (
    `id` int(10) UNSIGNED NOT NULL,
    `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
    ADD PRIMARY KEY (`id`);

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
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

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
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
