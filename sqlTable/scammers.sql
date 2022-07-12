-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лип 12 2022 р., 11:26
-- Версія сервера: 10.4.24-MariaDB
-- Версія PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `sharlatanov`
--

-- --------------------------------------------------------

--
-- Структура таблиці `scammers`
--

CREATE TABLE `scammers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `card` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` char(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `scammers`
--

INSERT INTO `scammers` (`id`, `title`, `body`, `card`, `mobile`, `name`, `socials`, `search_key`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '', '', '4444111188889999', '979925606', 'Євтушенко Маргарита', 'https://facebook.com/dpetrovych', '4444111188889999.979925606.ЄвтушенкоМаргарита', 0, '2022-06-28 08:28:38', '2022-06-28 08:28:38'),
(2, '', '', '8888999977774444', '989874556', 'Кузик Василь', 'https://facebook.com/vasyl-kyzuk', '8888999977774444.989874556.КузикВасиль', 1, '2022-06-28 10:18:19', '2022-06-28 10:18:19'),
(3, '', '', '5555888899990001', '979925606', 'Петро', 'https://facebook.com/petro', '5555888899990001.979925606.Петро', 1, '2022-06-28 10:21:06', '2022-06-28 10:21:06'),
(4, '', '', '8801393945457788', '0985534616', 'Пономаренко Іван', 'https://instagram.com/pivan', '8801393945457788.0985534616.ПономаренкоІван', 1, '2022-06-28 14:37:15', '2022-06-28 14:37:15'),
(5, '', '', '8801393945457788', '0985534616', 'Оксана', 'https://instagram.com/pivan', '8801393945457788.0985534616.ПономаренкоІван', 1, '2022-06-28 14:37:15', '2022-06-28 14:37:15'),
(6, '', '', '4444111188889999', '979925606', 'Петро', 'https://facebook.com/odiduk', '4444111188889999.979925606.Петро', 1, '2022-06-28 12:45:54', '2022-06-28 12:45:54'),
(10, '22222222222222', '22222222222222', '222222222222', '2222222222222', '22222222222222', '2222222222222', '222222222222.2222222222222222.22222222222222', 1, '2022-07-02 13:45:29', NULL),
(11, '1111111111111111111111111111111111', '1114111111111111111111111111111', '11111111111', '111111111', '111111 11111111', '11111111111111111', '11111111111.111111111.111111 11111111', 1, '2022-07-12 08:24:40', NULL),
(12, '333333333333333333', '333333333333333333333333333333333333333333333333333', '33333333333', '333333333', '333333 3333333333', '333333333333333', '33333333333.333333333.333333 3333333333', 1, '2022-07-12 08:25:03', NULL);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `scammers`
--
ALTER TABLE `scammers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scammers_search_key_index` (`search_key`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `scammers`
--
ALTER TABLE `scammers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
