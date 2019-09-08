-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 09 2019 г., 20:51
-- Версия сервера: 5.7.20
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diplom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `slug`, `title`, `description`) VALUES
(1, 'material', 'Материалы', 'Перфоратор — универсальный строительный инструмент. Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне. Существуют электромеханические и пневматические перфораторы. Современные модели могут выполнять функции дрели, шуруповерта и отбойного молотка. В ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.'),
(2, 'tool', 'Инструменты', 'Перфоратор — универсальный строительный инструмент. Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне. Существуют электромеханические и пневматические перфораторы. Современные модели могут выполнять функции дрели, шуруповерта и отбойного молотка. В ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.'),
(3, 'equipment', 'Техника', 'Перфоратор — универсальный строительный инструмент. Предназначен для сверления и долбления отверстий в кирпиче, бетоне и камне. Существуют электромеханические и пневматические перфораторы. Современные модели могут выполнять функции дрели, шуруповерта и отбойного молотка. В ассортиментном ряду есть выбор «трехрежимников»: в одном устройстве будут совмещены отбойный молоток и ударная дрель.');

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
(5, 'contacts', 'Контакты', 'top', 5, 1);

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
(12, '2019_02_09_164817_create_categories_table', 7);

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
(1, '+7 (812) 555-05-44', 'logo.png', 'vk.com', '', 'г. Санкт-Петербург, ул. Б. Конюшенная, д. 19/8');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

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
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
