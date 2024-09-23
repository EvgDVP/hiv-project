-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 23 2024 г., 22:40
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hiv-wp-db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2024-09-18 11:25:20', '2024-09-18 08:25:20', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 8, '_edit_lock', '1726652990:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1726653072:1'),
(12, 11, '_edit_last', '1'),
(13, 11, '_edit_lock', '1726738163:1'),
(14, 12, '_edit_last', '1'),
(15, 12, '_edit_lock', '1726973797:1'),
(16, 15, '_wp_attached_file', '2024/09/1_Монтажная-область-2-2.svg'),
(17, 15, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:566;s:6:\"height\";i:398;s:4:\"file\";s:51:\"2024/09/1_Монтажная-область-2-2.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:43:\"1_Монтажная-область-2-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(18, 16, '_wp_attached_file', '2024/09/1_Монтажная-область-2-3.svg'),
(19, 16, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:566;s:6:\"height\";i:398;s:4:\"file\";s:51:\"2024/09/1_Монтажная-область-2-3.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:43:\"1_Монтажная-область-2-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(20, 17, '_wp_attached_file', '2024/09/1_Монтажная-область-2-4.svg'),
(21, 17, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:566;s:6:\"height\";i:398;s:4:\"file\";s:51:\"2024/09/1_Монтажная-область-2-4.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:43:\"1_Монтажная-область-2-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(22, 18, '_wp_attached_file', '2024/09/1_Монтажная-область-2-5.svg'),
(23, 18, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:566;s:6:\"height\";i:398;s:4:\"file\";s:51:\"2024/09/1_Монтажная-область-2-5.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:43:\"1_Монтажная-область-2-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(24, 19, '_wp_attached_file', '2024/09/1_Монтажная-область-2-6.svg'),
(25, 19, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:566;s:6:\"height\";i:398;s:4:\"file\";s:51:\"2024/09/1_Монтажная-область-2-6.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:43:\"1_Монтажная-область-2-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(26, 20, '_wp_attached_file', '2024/09/1_Монтажная-область-2.svg'),
(27, 20, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:566;s:6:\"height\";i:398;s:4:\"file\";s:49:\"2024/09/1_Монтажная-область-2.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:41:\"1_Монтажная-область-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:41:\"1_Монтажная-область-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:41:\"1_Монтажная-область-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:41:\"1_Монтажная-область-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:41:\"1_Монтажная-область-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:41:\"1_Монтажная-область-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(28, 21, '_wp_attached_file', '2024/09/1_Монтажная-область-2-1.svg'),
(29, 21, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:566;s:6:\"height\";i:398;s:4:\"file\";s:51:\"2024/09/1_Монтажная-область-2-1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:43:\"1_Монтажная-область-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:43:\"1_Монтажная-область-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(30, 22, '_wp_attached_file', '2024/09/1_Монтажная-область-2-1-1.svg'),
(31, 22, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:566;s:6:\"height\";i:398;s:4:\"file\";s:53:\"2024/09/1_Монтажная-область-2-1-1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:45:\"1_Монтажная-область-2-1-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:45:\"1_Монтажная-область-2-1-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:45:\"1_Монтажная-область-2-1-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:45:\"1_Монтажная-область-2-1-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:45:\"1_Монтажная-область-2-1-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:45:\"1_Монтажная-область-2-1-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(32, 23, '_wp_attached_file', '2024/09/1_Монтажная-область-2-2-1.svg'),
(33, 23, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:566;s:6:\"height\";i:398;s:4:\"file\";s:53:\"2024/09/1_Монтажная-область-2-2-1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:45:\"1_Монтажная-область-2-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:45:\"1_Монтажная-область-2-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:45:\"1_Монтажная-область-2-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:45:\"1_Монтажная-область-2-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:45:\"1_Монтажная-область-2-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:45:\"1_Монтажная-область-2-2-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(34, 11, 'sort', '100'),
(35, 11, '_sort', 'field_66ebea30be52a'),
(36, 11, 'image', '22'),
(37, 11, '_image', 'field_66ebe934be529'),
(38, 24, '_edit_last', '1'),
(39, 24, '_edit_lock', '1726738166:1'),
(40, 24, 'sort', '200'),
(41, 24, '_sort', 'field_66ebea30be52a'),
(42, 24, 'image', '22'),
(43, 24, '_image', 'field_66ebe934be529'),
(44, 25, '_edit_last', '1'),
(45, 25, '_edit_lock', '1726737229:1'),
(46, 25, 'sort', '300'),
(47, 25, '_sort', 'field_66ebea30be52a'),
(48, 25, 'image', '23'),
(49, 25, '_image', 'field_66ebe934be529'),
(50, 26, '_edit_last', '1'),
(51, 26, '_edit_lock', '1726737762:1'),
(52, 26, 'sort', '400'),
(53, 26, '_sort', 'field_66ebea30be52a'),
(54, 26, 'image', '20'),
(55, 26, '_image', 'field_66ebe934be529'),
(56, 27, '_edit_last', '1'),
(57, 27, '_edit_lock', '1726737814:1'),
(58, 27, 'sort', '500'),
(59, 27, '_sort', 'field_66ebea30be52a'),
(60, 27, 'image', '18'),
(61, 27, '_image', 'field_66ebe934be529'),
(62, 28, '_edit_last', '1'),
(63, 28, '_edit_lock', '1726737859:1'),
(64, 28, 'sort', '600'),
(65, 28, '_sort', 'field_66ebea30be52a'),
(66, 28, 'image', '19'),
(67, 28, '_image', 'field_66ebe934be529'),
(68, 29, '_edit_last', '1'),
(69, 29, '_edit_lock', '1726737949:1'),
(70, 29, 'sort', '700'),
(71, 29, '_sort', 'field_66ebea30be52a'),
(72, 29, 'image', '21'),
(73, 29, '_image', 'field_66ebe934be529'),
(74, 30, '_edit_last', '1'),
(75, 30, '_edit_lock', '1726737997:1'),
(76, 30, 'sort', '800'),
(77, 30, '_sort', 'field_66ebea30be52a'),
(78, 30, 'image', '16'),
(79, 30, '_image', 'field_66ebe934be529'),
(80, 31, '_edit_last', '1'),
(81, 31, '_edit_lock', '1726738051:1'),
(82, 31, 'sort', '900'),
(83, 31, '_sort', 'field_66ebea30be52a'),
(84, 31, 'image', '17'),
(85, 31, '_image', 'field_66ebe934be529'),
(86, 32, '_edit_last', '1'),
(87, 32, '_edit_lock', '1726738126:1'),
(88, 32, 'sort', '1000'),
(89, 32, '_sort', 'field_66ebea30be52a'),
(90, 32, 'image', '15'),
(91, 32, '_image', 'field_66ebe934be529'),
(92, 33, '_edit_last', '1'),
(93, 33, '_edit_lock', '1726974505:1'),
(94, 33, '_wp_page_template', 'page-victorina.php'),
(95, 35, '_edit_last', '1'),
(96, 35, '_edit_lock', '1727093356:1'),
(97, 44, '_edit_last', '1'),
(98, 44, '_edit_lock', '1727103233:1'),
(99, 44, 'image', ''),
(100, 44, '_image', 'field_66ef8c2ea2c08'),
(101, 44, 'answers_otvet_1', ''),
(102, 44, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(103, 44, 'answers_otvet_2', ''),
(104, 44, '_answers_otvet_2', 'field_66ef8cce690d4'),
(105, 44, 'answers_otvet_3', ''),
(106, 44, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(107, 44, 'answers_otvet_4', ''),
(108, 44, '_answers_otvet_4', 'field_66ef8cd1690da'),
(109, 44, 'answers_otvet_5', ''),
(110, 44, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(111, 44, 'answers_otvet_6', ''),
(112, 44, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(113, 44, 'answers', ''),
(114, 44, '_answers', 'field_66ef8bf3a2c01'),
(115, 44, 'answers_otvet_1_true-answer', '1'),
(116, 44, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(117, 44, 'answers_otvet_1_answer', 'Использование для инъекций общих игл и шприцев'),
(118, 44, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(119, 44, 'answers_otvet_2_true-answer', '1'),
(120, 44, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(121, 44, 'answers_otvet_2_answer', 'Использование нестерильного оборудования для пирсинга и татуировок'),
(122, 44, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(123, 44, 'answers_otvet_3_true-answer', '1'),
(124, 44, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(125, 44, 'answers_otvet_3_answer', 'От матери к ребёнку'),
(126, 44, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(127, 44, 'answers_otvet_4_true-answer', '0'),
(128, 44, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(129, 44, 'answers_otvet_4_answer', 'При рукопожатии'),
(130, 44, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(131, 44, 'answers_otvet_5_true-answer', '0'),
(132, 44, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(133, 44, 'answers_otvet_5_answer', 'Через поцелуи'),
(134, 44, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(135, 44, 'answers_otvet_6_true-answer', '1'),
(136, 44, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(137, 44, 'answers_otvet_6_answer', 'Незащищённые половые контакты'),
(138, 44, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(139, 63, '_edit_last', '1'),
(140, 63, '_edit_lock', '1727103365:1'),
(141, 64, '_wp_attached_file', '2024/09/quiz-img.jpg'),
(142, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:396;s:6:\"height\";i:569;s:4:\"file\";s:20:\"2024/09/quiz-img.jpg\";s:8:\"filesize\";i:214342;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"quiz-img-209x300.jpg\";s:5:\"width\";i:209;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16545;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"quiz-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6923;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 63, 'image', '64'),
(144, 63, '_image', 'field_66ef8c2ea2c08'),
(145, 63, 'answers_otvet_1_true-answer', '1'),
(146, 63, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(147, 63, 'answers_otvet_1_answer', 'Отказаться'),
(148, 63, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(149, 63, 'answers_otvet_1', ''),
(150, 63, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(151, 63, 'answers_otvet_2_true-answer', '0'),
(152, 63, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(153, 63, 'answers_otvet_2_answer', 'Пойти с ней'),
(154, 63, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(155, 63, 'answers_otvet_2', ''),
(156, 63, '_answers_otvet_2', 'field_66ef8cce690d4'),
(157, 63, 'answers_otvet_3_true-answer', '0'),
(158, 63, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(159, 63, 'answers_otvet_3_answer', ''),
(160, 63, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(161, 63, 'answers_otvet_3', ''),
(162, 63, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(163, 63, 'answers_otvet_4_true-answer', '0'),
(164, 63, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(165, 63, 'answers_otvet_4_answer', ''),
(166, 63, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(167, 63, 'answers_otvet_4', ''),
(168, 63, '_answers_otvet_4', 'field_66ef8cd1690da'),
(169, 63, 'answers_otvet_5_true-answer', '0'),
(170, 63, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(171, 63, 'answers_otvet_5_answer', ''),
(172, 63, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(173, 63, 'answers_otvet_5', ''),
(174, 63, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(175, 63, 'answers_otvet_6_true-answer', '0'),
(176, 63, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(177, 63, 'answers_otvet_6_answer', ''),
(178, 63, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(179, 63, 'answers_otvet_6', ''),
(180, 63, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(181, 63, 'answers', ''),
(182, 63, '_answers', 'field_66ef8bf3a2c01'),
(183, 63, 'sort', '300'),
(184, 63, '_sort', 'field_66ef8ec22331e'),
(185, 44, 'sort', '200'),
(186, 44, '_sort', 'field_66ef8ec22331e'),
(187, 66, '_edit_last', '1'),
(188, 66, '_edit_lock', '1727104567:1'),
(189, 66, 'sort', '100'),
(190, 66, '_sort', 'field_66ef8ec22331e'),
(191, 66, 'image', ''),
(192, 66, '_image', 'field_66ef8c2ea2c08'),
(193, 66, 'answers_otvet_1_true-answer', '0'),
(194, 66, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(195, 66, 'answers_otvet_1_answer', 'Через кровь'),
(196, 66, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(197, 66, 'answers_otvet_1', ''),
(198, 66, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(199, 66, 'answers_otvet_2_true-answer', '1'),
(200, 66, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(201, 66, 'answers_otvet_2_answer', 'Половой путь'),
(202, 66, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(203, 66, 'answers_otvet_2', ''),
(204, 66, '_answers_otvet_2', 'field_66ef8cce690d4'),
(205, 66, 'answers_otvet_3_true-answer', '0'),
(206, 66, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(207, 66, 'answers_otvet_3_answer', 'От матери к ребенку во время беременности , родах и кормлении грудью'),
(208, 66, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(209, 66, 'answers_otvet_3', ''),
(210, 66, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(211, 66, 'answers_otvet_4_true-answer', '0'),
(212, 66, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(213, 66, 'answers_otvet_4_answer', ''),
(214, 66, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(215, 66, 'answers_otvet_4', ''),
(216, 66, '_answers_otvet_4', 'field_66ef8cd1690da'),
(217, 66, 'answers_otvet_5_true-answer', '0'),
(218, 66, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(219, 66, 'answers_otvet_5_answer', ''),
(220, 66, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(221, 66, 'answers_otvet_5', ''),
(222, 66, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(223, 66, 'answers_otvet_6_true-answer', '0'),
(224, 66, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(225, 66, 'answers_otvet_6_answer', ''),
(226, 66, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(227, 66, 'answers_otvet_6', ''),
(228, 66, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(229, 66, 'answers', ''),
(230, 66, '_answers', 'field_66ef8bf3a2c01'),
(231, 67, '_edit_last', '1'),
(232, 67, '_edit_lock', '1727104726:1'),
(233, 67, 'sort', '310'),
(234, 67, '_sort', 'field_66ef8ec22331e'),
(235, 67, 'image', ''),
(236, 67, '_image', 'field_66ef8c2ea2c08'),
(237, 67, 'answers_otvet_1_true-answer', '1'),
(238, 67, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(239, 67, 'answers_otvet_1_answer', 'Да, такой период есть, когда организм еще не выработал антитела к вирусу и установить диагноз невозможно'),
(240, 67, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(241, 67, 'answers_otvet_1', ''),
(242, 67, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(243, 67, 'answers_otvet_2_true-answer', '0'),
(244, 67, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(245, 67, 'answers_otvet_2_answer', 'Нет, такого периода нет'),
(246, 67, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(247, 67, 'answers_otvet_2', ''),
(248, 67, '_answers_otvet_2', 'field_66ef8cce690d4'),
(249, 67, 'answers_otvet_3_true-answer', '0'),
(250, 67, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(251, 67, 'answers_otvet_3_answer', ''),
(252, 67, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(253, 67, 'answers_otvet_3', ''),
(254, 67, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(255, 67, 'answers_otvet_4_true-answer', '0'),
(256, 67, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(257, 67, 'answers_otvet_4_answer', ''),
(258, 67, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(259, 67, 'answers_otvet_4', ''),
(260, 67, '_answers_otvet_4', 'field_66ef8cd1690da'),
(261, 67, 'answers_otvet_5_true-answer', '0'),
(262, 67, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(263, 67, 'answers_otvet_5_answer', ''),
(264, 67, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(265, 67, 'answers_otvet_5', ''),
(266, 67, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(267, 67, 'answers_otvet_6_true-answer', '0'),
(268, 67, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(269, 67, 'answers_otvet_6_answer', ''),
(270, 67, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(271, 67, 'answers_otvet_6', ''),
(272, 67, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(273, 67, 'answers', ''),
(274, 67, '_answers', 'field_66ef8bf3a2c01'),
(275, 68, '_edit_last', '1'),
(276, 68, '_edit_lock', '1727104727:1'),
(277, 68, 'sort', '320'),
(278, 68, '_sort', 'field_66ef8ec22331e'),
(279, 68, 'image', ''),
(280, 68, '_image', 'field_66ef8c2ea2c08'),
(281, 68, 'answers_otvet_1_true-answer', '1'),
(282, 68, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(283, 68, 'answers_otvet_1_answer', 'Только при обследовании на ВИЧ-инфекцию'),
(284, 68, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(285, 68, 'answers_otvet_1', ''),
(286, 68, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(287, 68, 'answers_otvet_2_true-answer', '0'),
(288, 68, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(289, 68, 'answers_otvet_2_answer', 'По внешним признакам'),
(290, 68, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(291, 68, 'answers_otvet_2', ''),
(292, 68, '_answers_otvet_2', 'field_66ef8cce690d4'),
(293, 68, 'answers_otvet_3_true-answer', '0'),
(294, 68, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(295, 68, 'answers_otvet_3_answer', ''),
(296, 68, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(297, 68, 'answers_otvet_3', ''),
(298, 68, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(299, 68, 'answers_otvet_4_true-answer', '0'),
(300, 68, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(301, 68, 'answers_otvet_4_answer', ''),
(302, 68, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(303, 68, 'answers_otvet_4', ''),
(304, 68, '_answers_otvet_4', 'field_66ef8cd1690da'),
(305, 68, 'answers_otvet_5_true-answer', '0'),
(306, 68, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(307, 68, 'answers_otvet_5_answer', ''),
(308, 68, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(309, 68, 'answers_otvet_5', ''),
(310, 68, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(311, 68, 'answers_otvet_6_true-answer', '0'),
(312, 68, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(313, 68, 'answers_otvet_6_answer', ''),
(314, 68, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(315, 68, 'answers_otvet_6', ''),
(316, 68, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(317, 68, 'answers', ''),
(318, 68, '_answers', 'field_66ef8bf3a2c01'),
(319, 69, '_edit_last', '1'),
(320, 69, '_edit_lock', '1727104728:1'),
(321, 69, 'sort', '330'),
(322, 69, '_sort', 'field_66ef8ec22331e'),
(323, 69, 'image', ''),
(324, 69, '_image', 'field_66ef8c2ea2c08'),
(325, 69, 'answers_otvet_1_true-answer', '0'),
(326, 69, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(327, 69, 'answers_otvet_1_answer', 'Слезная жидкость'),
(328, 69, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(329, 69, 'answers_otvet_1', ''),
(330, 69, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(331, 69, 'answers_otvet_2_true-answer', '1'),
(332, 69, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(333, 69, 'answers_otvet_2_answer', 'Кровь'),
(334, 69, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(335, 69, 'answers_otvet_2', ''),
(336, 69, '_answers_otvet_2', 'field_66ef8cce690d4'),
(337, 69, 'answers_otvet_3_true-answer', '0'),
(338, 69, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(339, 69, 'answers_otvet_3_answer', 'Моча'),
(340, 69, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(341, 69, 'answers_otvet_3', ''),
(342, 69, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(343, 69, 'answers_otvet_4_true-answer', '1'),
(344, 69, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(345, 69, 'answers_otvet_4_answer', 'Сперма'),
(346, 69, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(347, 69, 'answers_otvet_4', ''),
(348, 69, '_answers_otvet_4', 'field_66ef8cd1690da'),
(349, 69, 'answers_otvet_5_true-answer', '1'),
(350, 69, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(351, 69, 'answers_otvet_5_answer', 'Вагинальные выделения'),
(352, 69, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(353, 69, 'answers_otvet_5', ''),
(354, 69, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(355, 69, 'answers_otvet_6_true-answer', '1'),
(356, 69, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(357, 69, 'answers_otvet_6_answer', 'Грудное молоко'),
(358, 69, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(359, 69, 'answers_otvet_6', ''),
(360, 69, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(361, 69, 'answers', ''),
(362, 69, '_answers', 'field_66ef8bf3a2c01'),
(363, 71, '_edit_last', '1'),
(364, 71, '_edit_lock', '1727104732:1'),
(365, 71, 'sort', '340'),
(366, 71, '_sort', 'field_66ef8ec22331e'),
(367, 71, 'image', ''),
(368, 71, '_image', 'field_66ef8c2ea2c08'),
(369, 71, 'answers_otvet_1_true-answer', '0'),
(370, 71, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(371, 71, 'answers_otvet_1_answer', 'Да'),
(372, 71, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(373, 71, 'answers_otvet_1', ''),
(374, 71, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(375, 71, 'answers_otvet_2_true-answer', '1'),
(376, 71, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(377, 71, 'answers_otvet_2_answer', 'Нет'),
(378, 71, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(379, 71, 'answers_otvet_2', ''),
(380, 71, '_answers_otvet_2', 'field_66ef8cce690d4'),
(381, 71, 'answers_otvet_3_true-answer', '0'),
(382, 71, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(383, 71, 'answers_otvet_3_answer', ''),
(384, 71, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(385, 71, 'answers_otvet_3', ''),
(386, 71, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(387, 71, 'answers_otvet_4_true-answer', '0'),
(388, 71, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(389, 71, 'answers_otvet_4_answer', ''),
(390, 71, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(391, 71, 'answers_otvet_4', ''),
(392, 71, '_answers_otvet_4', 'field_66ef8cd1690da'),
(393, 71, 'answers_otvet_5_true-answer', '0'),
(394, 71, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(395, 71, 'answers_otvet_5_answer', ''),
(396, 71, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(397, 71, 'answers_otvet_5', ''),
(398, 71, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(399, 71, 'answers_otvet_6_true-answer', '0'),
(400, 71, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(401, 71, 'answers_otvet_6_answer', ''),
(402, 71, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(403, 71, 'answers_otvet_6', ''),
(404, 71, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(405, 71, 'answers', ''),
(406, 71, '_answers', 'field_66ef8bf3a2c01'),
(407, 72, '_edit_last', '1'),
(408, 72, '_edit_lock', '1727104620:1'),
(409, 72, 'sort', '350'),
(410, 72, '_sort', 'field_66ef8ec22331e'),
(411, 72, 'image', ''),
(412, 72, '_image', 'field_66ef8c2ea2c08'),
(413, 72, 'answers_otvet_1_true-answer', '1'),
(414, 72, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(415, 72, 'answers_otvet_1_answer', 'В поликлинике по месту жительства'),
(416, 72, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(417, 72, 'answers_otvet_1', ''),
(418, 72, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(419, 72, 'answers_otvet_2_true-answer', '1'),
(420, 72, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(421, 72, 'answers_otvet_2_answer', 'В СПИД Центре'),
(422, 72, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(423, 72, 'answers_otvet_2', ''),
(424, 72, '_answers_otvet_2', 'field_66ef8cce690d4'),
(425, 72, 'answers_otvet_3_true-answer', '1'),
(426, 72, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(427, 72, 'answers_otvet_3_answer', 'В пунктах экспресс-тестирования на ВИЧ'),
(428, 72, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(429, 72, 'answers_otvet_3', ''),
(430, 72, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(431, 72, 'answers_otvet_4_true-answer', '0'),
(432, 72, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(433, 72, 'answers_otvet_4_answer', ''),
(434, 72, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(435, 72, 'answers_otvet_4', ''),
(436, 72, '_answers_otvet_4', 'field_66ef8cd1690da'),
(437, 72, 'answers_otvet_5_true-answer', '0'),
(438, 72, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(439, 72, 'answers_otvet_5_answer', ''),
(440, 72, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(441, 72, 'answers_otvet_5', ''),
(442, 72, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(443, 72, 'answers_otvet_6_true-answer', '0'),
(444, 72, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(445, 72, 'answers_otvet_6_answer', ''),
(446, 72, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(447, 72, 'answers_otvet_6', ''),
(448, 72, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(449, 72, 'answers', ''),
(450, 72, '_answers', 'field_66ef8bf3a2c01'),
(451, 73, '_edit_last', '1'),
(452, 73, '_edit_lock', '1727103869:1'),
(453, 73, 'sort', '360'),
(454, 73, '_sort', 'field_66ef8ec22331e'),
(455, 73, 'image', ''),
(456, 73, '_image', 'field_66ef8c2ea2c08'),
(457, 73, 'answers_otvet_1_true-answer', '0'),
(458, 73, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(459, 73, 'answers_otvet_1_answer', 'Надо дождаться появления симптомов (повышение температуры, ухудшения состояния итд) и тогда обратиться к врачу'),
(460, 73, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(461, 73, 'answers_otvet_1', ''),
(462, 73, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(463, 73, 'answers_otvet_2_true-answer', '0'),
(464, 73, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(465, 73, 'answers_otvet_2_answer', 'Сразу сдать кровь на ВИЧ'),
(466, 73, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(467, 73, 'answers_otvet_2', ''),
(468, 73, '_answers_otvet_2', 'field_66ef8cce690d4'),
(469, 73, 'answers_otvet_3_true-answer', '1'),
(470, 73, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(471, 73, 'answers_otvet_3_answer', 'Обследование на ВИЧ-инфекцию несколько раз через 3 и 6 месяцев'),
(472, 73, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(473, 73, 'answers_otvet_3', ''),
(474, 73, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(475, 73, 'answers_otvet_4_true-answer', '0'),
(476, 73, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(477, 73, 'answers_otvet_4_answer', ''),
(478, 73, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(479, 73, 'answers_otvet_4', ''),
(480, 73, '_answers_otvet_4', 'field_66ef8cd1690da'),
(481, 73, 'answers_otvet_5_true-answer', '0'),
(482, 73, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(483, 73, 'answers_otvet_5_answer', ''),
(484, 73, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(485, 73, 'answers_otvet_5', ''),
(486, 73, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(487, 73, 'answers_otvet_6_true-answer', '0'),
(488, 73, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(489, 73, 'answers_otvet_6_answer', ''),
(490, 73, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(491, 73, 'answers_otvet_6', ''),
(492, 73, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(493, 73, 'answers', ''),
(494, 73, '_answers', 'field_66ef8bf3a2c01'),
(495, 74, '_edit_last', '1'),
(496, 74, '_edit_lock', '1727103945:1'),
(497, 74, 'sort', '370'),
(498, 74, '_sort', 'field_66ef8ec22331e'),
(499, 74, 'image', ''),
(500, 74, '_image', 'field_66ef8c2ea2c08'),
(501, 74, 'answers_otvet_1_true-answer', '1'),
(502, 74, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(503, 74, 'answers_otvet_1_answer', 'Лица, имеющие случайные незащищенные сексуальные связи'),
(504, 74, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(505, 74, 'answers_otvet_1', ''),
(506, 74, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(507, 74, 'answers_otvet_2_true-answer', '1'),
(508, 74, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(509, 74, 'answers_otvet_2_answer', 'Лица, употребляющие инъекционные наркотики'),
(510, 74, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(511, 74, 'answers_otvet_2', ''),
(512, 74, '_answers_otvet_2', 'field_66ef8cce690d4'),
(513, 74, 'answers_otvet_3_true-answer', '1'),
(514, 74, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(515, 74, 'answers_otvet_3_answer', 'Лица, предоставляющие коммерческие сексуальные услуги'),
(516, 74, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(517, 74, 'answers_otvet_3', ''),
(518, 74, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(519, 74, 'answers_otvet_4_true-answer', '0'),
(520, 74, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(521, 74, 'answers_otvet_4_answer', 'Клиенты тату–салонов, где соблюдают санитарные нормы'),
(522, 74, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(523, 74, 'answers_otvet_4', ''),
(524, 74, '_answers_otvet_4', 'field_66ef8cd1690da'),
(525, 74, 'answers_otvet_5_true-answer', '0'),
(526, 74, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(527, 74, 'answers_otvet_5_answer', ''),
(528, 74, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(529, 74, 'answers_otvet_5', ''),
(530, 74, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(531, 74, 'answers_otvet_6_true-answer', '0'),
(532, 74, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(533, 74, 'answers_otvet_6_answer', ''),
(534, 74, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(535, 74, 'answers_otvet_6', ''),
(536, 74, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(537, 74, 'answers', ''),
(538, 74, '_answers', 'field_66ef8bf3a2c01'),
(539, 75, '_edit_last', '1'),
(540, 75, '_edit_lock', '1727103994:1'),
(541, 75, 'sort', '380'),
(542, 75, '_sort', 'field_66ef8ec22331e'),
(543, 75, 'image', ''),
(544, 75, '_image', 'field_66ef8c2ea2c08'),
(545, 75, 'answers_otvet_1_true-answer', '0'),
(546, 75, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(547, 75, 'answers_otvet_1_answer', 'Да'),
(548, 75, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(549, 75, 'answers_otvet_1', ''),
(550, 75, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(551, 75, 'answers_otvet_2_true-answer', '1'),
(552, 75, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(553, 75, 'answers_otvet_2_answer', 'Нет. В настоящее время есть специальная терапия, которая подавляет размножение вируса'),
(554, 75, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(555, 75, 'answers_otvet_2', ''),
(556, 75, '_answers_otvet_2', 'field_66ef8cce690d4'),
(557, 75, 'answers_otvet_3_true-answer', '0'),
(558, 75, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(559, 75, 'answers_otvet_3_answer', ''),
(560, 75, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(561, 75, 'answers_otvet_3', ''),
(562, 75, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(563, 75, 'answers_otvet_4_true-answer', '0'),
(564, 75, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(565, 75, 'answers_otvet_4_answer', ''),
(566, 75, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(567, 75, 'answers_otvet_4', ''),
(568, 75, '_answers_otvet_4', 'field_66ef8cd1690da'),
(569, 75, 'answers_otvet_5_true-answer', '0'),
(570, 75, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(571, 75, 'answers_otvet_5_answer', ''),
(572, 75, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(573, 75, 'answers_otvet_5', ''),
(574, 75, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(575, 75, 'answers_otvet_6_true-answer', '0'),
(576, 75, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(577, 75, 'answers_otvet_6_answer', ''),
(578, 75, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(579, 75, 'answers_otvet_6', ''),
(580, 75, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(581, 75, 'answers', ''),
(582, 75, '_answers', 'field_66ef8bf3a2c01'),
(583, 76, '_edit_last', '1'),
(584, 76, '_edit_lock', '1727104068:1'),
(585, 76, 'sort', '390'),
(586, 76, '_sort', 'field_66ef8ec22331e'),
(587, 76, 'image', ''),
(588, 76, '_image', 'field_66ef8c2ea2c08'),
(589, 76, 'answers_otvet_1_true-answer', '1'),
(590, 76, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(591, 76, 'answers_otvet_1_answer', 'Да может, если наблюдается и принимает специальную терапию'),
(592, 76, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(593, 76, 'answers_otvet_1', ''),
(594, 76, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(595, 76, 'answers_otvet_2_true-answer', '0'),
(596, 76, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(597, 76, 'answers_otvet_2_answer', 'Нет'),
(598, 76, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(599, 76, 'answers_otvet_2', ''),
(600, 76, '_answers_otvet_2', 'field_66ef8cce690d4'),
(601, 76, 'answers_otvet_3_true-answer', '0'),
(602, 76, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(603, 76, 'answers_otvet_3_answer', ''),
(604, 76, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(605, 76, 'answers_otvet_3', ''),
(606, 76, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(607, 76, 'answers_otvet_4_true-answer', '0'),
(608, 76, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(609, 76, 'answers_otvet_4_answer', ''),
(610, 76, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(611, 76, 'answers_otvet_4', ''),
(612, 76, '_answers_otvet_4', 'field_66ef8cd1690da'),
(613, 76, 'answers_otvet_5_true-answer', '0'),
(614, 76, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(615, 76, 'answers_otvet_5_answer', ''),
(616, 76, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(617, 76, 'answers_otvet_5', ''),
(618, 76, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(619, 76, 'answers_otvet_6_true-answer', '0'),
(620, 76, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(621, 76, 'answers_otvet_6_answer', ''),
(622, 76, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(623, 76, 'answers_otvet_6', ''),
(624, 76, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(625, 76, 'answers', ''),
(626, 76, '_answers', 'field_66ef8bf3a2c01'),
(627, 77, '_edit_last', '1'),
(628, 77, '_edit_lock', '1727104173:1'),
(629, 77, 'sort', '400'),
(630, 77, '_sort', 'field_66ef8ec22331e'),
(631, 77, 'image', ''),
(632, 77, '_image', 'field_66ef8c2ea2c08'),
(633, 77, 'answers_otvet_1_true-answer', '0'),
(634, 77, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(635, 77, 'answers_otvet_1_answer', 'Да'),
(636, 77, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(637, 77, 'answers_otvet_1', ''),
(638, 77, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(639, 77, 'answers_otvet_2_true-answer', '1'),
(640, 77, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(641, 77, 'answers_otvet_2_answer', 'Нет'),
(642, 77, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(643, 77, 'answers_otvet_2', ''),
(644, 77, '_answers_otvet_2', 'field_66ef8cce690d4'),
(645, 77, 'answers_otvet_3_true-answer', '0'),
(646, 77, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(647, 77, 'answers_otvet_3_answer', ''),
(648, 77, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(649, 77, 'answers_otvet_3', ''),
(650, 77, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(651, 77, 'answers_otvet_4_true-answer', '0'),
(652, 77, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(653, 77, 'answers_otvet_4_answer', ''),
(654, 77, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(655, 77, 'answers_otvet_4', ''),
(656, 77, '_answers_otvet_4', 'field_66ef8cd1690da'),
(657, 77, 'answers_otvet_5_true-answer', '0'),
(658, 77, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(659, 77, 'answers_otvet_5_answer', ''),
(660, 77, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(661, 77, 'answers_otvet_5', ''),
(662, 77, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(663, 77, 'answers_otvet_6_true-answer', '0'),
(664, 77, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(665, 77, 'answers_otvet_6_answer', ''),
(666, 77, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(667, 77, 'answers_otvet_6', ''),
(668, 77, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(669, 77, 'answers', ''),
(670, 77, '_answers', 'field_66ef8bf3a2c01'),
(671, 78, '_edit_last', '1'),
(672, 78, '_edit_lock', '1727104244:1'),
(673, 78, 'sort', '410'),
(674, 78, '_sort', 'field_66ef8ec22331e'),
(675, 78, 'image', ''),
(676, 78, '_image', 'field_66ef8c2ea2c08'),
(677, 78, 'answers_otvet_1_true-answer', '0'),
(678, 78, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(679, 78, 'answers_otvet_1_answer', 'Родителям'),
(680, 78, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(681, 78, 'answers_otvet_1', ''),
(682, 78, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(683, 78, 'answers_otvet_2_true-answer', '1'),
(684, 78, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(685, 78, 'answers_otvet_2_answer', 'Половому партнеру'),
(686, 78, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(687, 78, 'answers_otvet_2', ''),
(688, 78, '_answers_otvet_2', 'field_66ef8cce690d4'),
(689, 78, 'answers_otvet_3_true-answer', '0'),
(690, 78, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(691, 78, 'answers_otvet_3_answer', 'Работодателю'),
(692, 78, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(693, 78, 'answers_otvet_3', ''),
(694, 78, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(695, 78, 'answers_otvet_4_true-answer', '0'),
(696, 78, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(697, 78, 'answers_otvet_4_answer', ''),
(698, 78, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(699, 78, 'answers_otvet_4', ''),
(700, 78, '_answers_otvet_4', 'field_66ef8cd1690da'),
(701, 78, 'answers_otvet_5_true-answer', '0'),
(702, 78, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(703, 78, 'answers_otvet_5_answer', ''),
(704, 78, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(705, 78, 'answers_otvet_5', ''),
(706, 78, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(707, 78, 'answers_otvet_6_true-answer', '0'),
(708, 78, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(709, 78, 'answers_otvet_6_answer', ''),
(710, 78, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(711, 78, 'answers_otvet_6', ''),
(712, 78, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(713, 78, 'answers', ''),
(714, 78, '_answers', 'field_66ef8bf3a2c01'),
(715, 79, '_edit_last', '1'),
(716, 79, '_edit_lock', '1727104311:1'),
(717, 79, 'sort', '430'),
(718, 79, '_sort', 'field_66ef8ec22331e'),
(719, 79, 'image', ''),
(720, 79, '_image', 'field_66ef8c2ea2c08'),
(721, 79, 'answers_otvet_1_true-answer', '1'),
(722, 79, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(723, 79, 'answers_otvet_1_answer', 'Да'),
(724, 79, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(725, 79, 'answers_otvet_1', ''),
(726, 79, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(727, 79, 'answers_otvet_2_true-answer', '0'),
(728, 79, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(729, 79, 'answers_otvet_2_answer', 'Нет'),
(730, 79, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(731, 79, 'answers_otvet_2', ''),
(732, 79, '_answers_otvet_2', 'field_66ef8cce690d4'),
(733, 79, 'answers_otvet_3_true-answer', '0'),
(734, 79, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(735, 79, 'answers_otvet_3_answer', ''),
(736, 79, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(737, 79, 'answers_otvet_3', ''),
(738, 79, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(739, 79, 'answers_otvet_4_true-answer', '0'),
(740, 79, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(741, 79, 'answers_otvet_4_answer', ''),
(742, 79, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(743, 79, 'answers_otvet_4', ''),
(744, 79, '_answers_otvet_4', 'field_66ef8cd1690da'),
(745, 79, 'answers_otvet_5_true-answer', '0'),
(746, 79, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(747, 79, 'answers_otvet_5_answer', ''),
(748, 79, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(749, 79, 'answers_otvet_5', ''),
(750, 79, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(751, 79, 'answers_otvet_6_true-answer', '0'),
(752, 79, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(753, 79, 'answers_otvet_6_answer', ''),
(754, 79, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(755, 79, 'answers_otvet_6', ''),
(756, 79, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(757, 79, 'answers', ''),
(758, 79, '_answers', 'field_66ef8bf3a2c01'),
(759, 80, '_edit_last', '1'),
(760, 80, '_edit_lock', '1727104555:1'),
(761, 80, 'sort', '500'),
(762, 80, '_sort', 'field_66ef8ec22331e'),
(763, 80, 'image', ''),
(764, 80, '_image', 'field_66ef8c2ea2c08'),
(765, 80, 'answers_otvet_1_true-answer', '1'),
(766, 80, '_answers_otvet_1_true-answer', 'field_66ef8cb4690d3'),
(767, 80, 'answers_otvet_1_answer', 'Буду с ним продолжать общаться'),
(768, 80, '_answers_otvet_1_answer', 'field_66ef8ca8690d2'),
(769, 80, 'answers_otvet_1', ''),
(770, 80, '_answers_otvet_1', 'field_66ef8c9d690d1'),
(771, 80, 'answers_otvet_2_true-answer', '0'),
(772, 80, '_answers_otvet_2_true-answer', 'field_66ef8ccf690d5'),
(773, 80, 'answers_otvet_2_answer', 'Прекращу общение'),
(774, 80, '_answers_otvet_2_answer', 'field_66ef8ccf690d6'),
(775, 80, 'answers_otvet_2', ''),
(776, 80, '_answers_otvet_2', 'field_66ef8cce690d4'),
(777, 80, 'answers_otvet_3_true-answer', '1'),
(778, 80, '_answers_otvet_3_true-answer', 'field_66ef8cd0690d8'),
(779, 80, 'answers_otvet_3_answer', 'Узнаю больше информации об этом заболеванию, постараюсь оказать поддержку'),
(780, 80, '_answers_otvet_3_answer', 'field_66ef8cd0690d9'),
(781, 80, 'answers_otvet_3', ''),
(782, 80, '_answers_otvet_3', 'field_66ef8cd0690d7'),
(783, 80, 'answers_otvet_4_true-answer', '0'),
(784, 80, '_answers_otvet_4_true-answer', 'field_66ef8cd1690db'),
(785, 80, 'answers_otvet_4_answer', ''),
(786, 80, '_answers_otvet_4_answer', 'field_66ef8cd1690dc'),
(787, 80, 'answers_otvet_4', ''),
(788, 80, '_answers_otvet_4', 'field_66ef8cd1690da'),
(789, 80, 'answers_otvet_5_true-answer', '0'),
(790, 80, '_answers_otvet_5_true-answer', 'field_66ef8cd3690de'),
(791, 80, 'answers_otvet_5_answer', ''),
(792, 80, '_answers_otvet_5_answer', 'field_66ef8cd3690df'),
(793, 80, 'answers_otvet_5', ''),
(794, 80, '_answers_otvet_5', 'field_66ef8cd3690dd'),
(795, 80, 'answers_otvet_6_true-answer', '0'),
(796, 80, '_answers_otvet_6_true-answer', 'field_66ef8cd5690e1'),
(797, 80, 'answers_otvet_6_answer', ''),
(798, 80, '_answers_otvet_6_answer', 'field_66ef8cd5690e2'),
(799, 80, 'answers_otvet_6', ''),
(800, 80, '_answers_otvet_6', 'field_66ef8cd4690e0'),
(801, 80, 'answers', ''),
(802, 80, '_answers', 'field_66ef8bf3a2c01'),
(803, 82, '_edit_last', '1'),
(804, 82, '_edit_lock', '1727118959:1'),
(805, 82, '_wp_page_template', 'page-map.php');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-09-18 11:25:20', '2024-09-18 08:25:20', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2024-09-18 11:25:20', '2024-09-18 08:25:20', '', 0, 'http://hiv-site.jylikt.ru/?p=1', 0, 'post', '', 1),
(4, 0, '2024-09-18 11:25:24', '2024-09-18 08:25:24', '<!-- wp:page-list /-->', 'Навигация', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-09-18 11:25:24', '2024-09-18 08:25:24', '', 0, 'http://hiv-site.jylikt.ru/2024/09/18/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-09-18 11:26:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-09-18 11:26:14', '0000-00-00 00:00:00', '', 0, 'http://hiv-site.jylikt.ru/?p=5', 0, 'post', '', 0),
(8, 1, '2024-09-18 12:52:04', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-09-18 12:52:04', '0000-00-00 00:00:00', '', 0, 'http://hiv-site.jylikt.ru/?page_id=8', 0, 'page', '', 0),
(9, 1, '2024-09-18 12:53:17', '2024-09-18 09:53:17', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2024-09-18 12:53:17', '2024-09-18 09:53:17', '', 0, 'http://hiv-site.jylikt.ru/?page_id=9', 0, 'page', '', 0),
(10, 1, '2024-09-18 12:53:17', '2024-09-18 09:53:17', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2024-09-18 12:53:17', '2024-09-18 09:53:17', '', 9, 'http://hiv-site.jylikt.ru/?p=10', 0, 'revision', '', 0),
(11, 1, '2024-09-19 12:01:45', '2024-09-19 09:01:45', '<p>ВИЧ был впервые идентифицирован в начале 1980-х годов, когда начали фиксировать случаи странной формы иммунодефицита у молодых мужчин в США. В 1983 году учёные обнаружили вирус, вызывающий этот синдром, названный СПИД. ВИЧ быстро распространился по всему миру, став одной из главных проблем здравоохранения.</p>\r\n\r\n<p>На сегодняшний день разработано эффективное лечение — антиретровирусная терапия, которая позволяет контролировать вирус и предотвратить развитие СПИДа у людей с ВИЧ.</p>', 'Историческая справка', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%80%d1%82%d0%be%d1%87%d0%ba%d0%b0-1', '', '', '2024-09-19 12:14:38', '2024-09-19 09:14:38', '', 0, 'http://hiv-site.jylikt.ru/?post_type=cards-info&#038;p=11', 0, 'cards-info', '', 0),
(12, 1, '2024-09-19 12:09:38', '2024-09-19 09:09:38', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"cards-info\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Карточки информации', '%d0%ba%d0%b0%d1%80%d1%82%d0%be%d1%87%d0%ba%d0%b8-%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%b8', 'publish', 'closed', 'closed', '', 'group_66ebe9344f1b5', '', '', '2024-09-19 12:09:38', '2024-09-19 09:09:38', '', 0, 'http://hiv-site.jylikt.ru/?post_type=acf-field-group&#038;p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2024-09-19 12:09:38', '2024-09-19 09:09:38', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:100;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Сортировка', 'sort', 'publish', 'closed', 'closed', '', 'field_66ebea30be52a', '', '', '2024-09-19 12:09:38', '2024-09-19 09:09:38', '', 12, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=13', 0, 'acf-field', '', 0),
(14, 1, '2024-09-19 12:09:38', '2024-09-19 09:09:38', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Картинка', 'image', 'publish', 'closed', 'closed', '', 'field_66ebe934be529', '', '', '2024-09-19 12:09:38', '2024-09-19 09:09:38', '', 12, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=14', 1, 'acf-field', '', 0),
(15, 1, '2024-09-19 12:13:34', '2024-09-19 09:13:34', '', '1_Монтажная область 2-2', '', 'inherit', 'open', 'closed', '', '1_%d0%bc%d0%be%d0%bd%d1%82%d0%b0%d0%b6%d0%bd%d0%b0%d1%8f-%d0%be%d0%b1%d0%bb%d0%b0%d1%81%d1%82%d1%8c-2-2', '', '', '2024-09-19 12:13:34', '2024-09-19 09:13:34', '', 11, 'http://hiv-site.jylikt.ru/wp-content/uploads/2024/09/1_Монтажная-область-2-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(16, 1, '2024-09-19 12:13:38', '2024-09-19 09:13:38', '', '1_Монтажная область 2-3', '', 'inherit', 'open', 'closed', '', '1_%d0%bc%d0%be%d0%bd%d1%82%d0%b0%d0%b6%d0%bd%d0%b0%d1%8f-%d0%be%d0%b1%d0%bb%d0%b0%d1%81%d1%82%d1%8c-2-3', '', '', '2024-09-19 12:13:38', '2024-09-19 09:13:38', '', 11, 'http://hiv-site.jylikt.ru/wp-content/uploads/2024/09/1_Монтажная-область-2-3.svg', 0, 'attachment', 'image/svg+xml', 0),
(17, 1, '2024-09-19 12:13:42', '2024-09-19 09:13:42', '', '1_Монтажная область 2-4', '', 'inherit', 'open', 'closed', '', '1_%d0%bc%d0%be%d0%bd%d1%82%d0%b0%d0%b6%d0%bd%d0%b0%d1%8f-%d0%be%d0%b1%d0%bb%d0%b0%d1%81%d1%82%d1%8c-2-4', '', '', '2024-09-19 12:13:42', '2024-09-19 09:13:42', '', 11, 'http://hiv-site.jylikt.ru/wp-content/uploads/2024/09/1_Монтажная-область-2-4.svg', 0, 'attachment', 'image/svg+xml', 0),
(18, 1, '2024-09-19 12:13:45', '2024-09-19 09:13:45', '', '1_Монтажная область 2-5', '', 'inherit', 'open', 'closed', '', '1_%d0%bc%d0%be%d0%bd%d1%82%d0%b0%d0%b6%d0%bd%d0%b0%d1%8f-%d0%be%d0%b1%d0%bb%d0%b0%d1%81%d1%82%d1%8c-2-5', '', '', '2024-09-19 12:13:45', '2024-09-19 09:13:45', '', 11, 'http://hiv-site.jylikt.ru/wp-content/uploads/2024/09/1_Монтажная-область-2-5.svg', 0, 'attachment', 'image/svg+xml', 0),
(19, 1, '2024-09-19 12:13:48', '2024-09-19 09:13:48', '', '1_Монтажная область 2-6', '', 'inherit', 'open', 'closed', '', '1_%d0%bc%d0%be%d0%bd%d1%82%d0%b0%d0%b6%d0%bd%d0%b0%d1%8f-%d0%be%d0%b1%d0%bb%d0%b0%d1%81%d1%82%d1%8c-2-6', '', '', '2024-09-19 12:13:48', '2024-09-19 09:13:48', '', 11, 'http://hiv-site.jylikt.ru/wp-content/uploads/2024/09/1_Монтажная-область-2-6.svg', 0, 'attachment', 'image/svg+xml', 0),
(20, 1, '2024-09-19 12:13:51', '2024-09-19 09:13:51', '', '1_Монтажная область 2', '', 'inherit', 'open', 'closed', '', '1_%d0%bc%d0%be%d0%bd%d1%82%d0%b0%d0%b6%d0%bd%d0%b0%d1%8f-%d0%be%d0%b1%d0%bb%d0%b0%d1%81%d1%82%d1%8c-2', '', '', '2024-09-19 12:13:51', '2024-09-19 09:13:51', '', 11, 'http://hiv-site.jylikt.ru/wp-content/uploads/2024/09/1_Монтажная-область-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(21, 1, '2024-09-19 12:13:54', '2024-09-19 09:13:54', '', '1_Монтажная область 2-1', '', 'inherit', 'open', 'closed', '', '1_%d0%bc%d0%be%d0%bd%d1%82%d0%b0%d0%b6%d0%bd%d0%b0%d1%8f-%d0%be%d0%b1%d0%bb%d0%b0%d1%81%d1%82%d1%8c-2-1', '', '', '2024-09-19 12:13:54', '2024-09-19 09:13:54', '', 11, 'http://hiv-site.jylikt.ru/wp-content/uploads/2024/09/1_Монтажная-область-2-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(22, 1, '2024-09-19 12:13:57', '2024-09-19 09:13:57', '', '1_Монтажная область 2 (1)', '', 'inherit', 'open', 'closed', '', '1_%d0%bc%d0%be%d0%bd%d1%82%d0%b0%d0%b6%d0%bd%d0%b0%d1%8f-%d0%be%d0%b1%d0%bb%d0%b0%d1%81%d1%82%d1%8c-2-1-2', '', '', '2024-09-19 12:13:57', '2024-09-19 09:13:57', '', 11, 'http://hiv-site.jylikt.ru/wp-content/uploads/2024/09/1_Монтажная-область-2-1-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(23, 1, '2024-09-19 12:14:00', '2024-09-19 09:14:00', '', '1_Монтажная область 2 (2)', '', 'inherit', 'open', 'closed', '', '1_%d0%bc%d0%be%d0%bd%d1%82%d0%b0%d0%b6%d0%bd%d0%b0%d1%8f-%d0%be%d0%b1%d0%bb%d0%b0%d1%81%d1%82%d1%8c-2-2-2', '', '', '2024-09-19 12:14:00', '2024-09-19 09:14:00', '', 11, 'http://hiv-site.jylikt.ru/wp-content/uploads/2024/09/1_Монтажная-область-2-2-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(24, 1, '2024-09-19 12:15:18', '2024-09-19 09:15:18', '<p>ВИЧ — это вирус иммунодефицита человека, который атакует иммунную систему, снижая способность организма бороться с инфекциями. Но современные методы лечения позволяют людям с ВИЧ вести полноценную жизнь, если они принимают терапию.</p>', 'Что такое ВИЧ?', '', 'publish', 'closed', 'closed', '', '%d1%87%d1%82%d0%be-%d1%82%d0%b0%d0%ba%d0%be%d0%b5-%d0%b2%d0%b8%d1%87', '', '', '2024-09-19 12:15:18', '2024-09-19 09:15:18', '', 0, 'http://hiv-site.jylikt.ru/?post_type=cards-info&#038;p=24', 0, 'cards-info', '', 0),
(25, 1, '2024-09-19 12:16:03', '2024-09-19 09:16:03', '<p>ВИЧ передаётся через кровь, сперму, вагинальные выделения и грудное молоко. Основные пути заражения — незащищённый секс, использование нестерильных игл, передача вируса от матери к ребёнку во время беременности или грудного вскармливания.</p>', 'Как передается ВИЧ?', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%ba-%d0%bf%d0%b5%d1%80%d0%b5%d0%b4%d0%b0%d0%b5%d1%82%d1%81%d1%8f-%d0%b2%d0%b8%d1%87', '', '', '2024-09-19 12:16:03', '2024-09-19 09:16:03', '', 0, 'http://hiv-site.jylikt.ru/?post_type=cards-info&#038;p=25', 0, 'cards-info', '', 0),
(26, 1, '2024-09-19 12:16:41', '2024-09-19 09:16:41', '<p>Татуировки и пирсинг могут стать причиной заражения ВИЧ, если инструменты не стерильны. Всегда проверяйте, что мастер использует одноразовые или стерилизованные инструменты, чтобы избежать риска передачи инфекции через кровь.</p>', 'ВИЧ и татуировки', '', 'publish', 'closed', 'closed', '', '%d0%b2%d0%b8%d1%87-%d0%b8-%d1%82%d0%b0%d1%82%d1%83%d0%b8%d1%80%d0%be%d0%b2%d0%ba%d0%b8', '', '', '2024-09-19 12:16:41', '2024-09-19 09:16:41', '', 0, 'http://hiv-site.jylikt.ru/?post_type=cards-info&#038;p=26', 0, 'cards-info', '', 0),
(27, 1, '2024-09-19 12:25:47', '2024-09-19 09:25:47', '<p>СПИД (синдром приобретённого иммунодефицита) — это финальная стадия ВИЧ-инфекции, при которой иммунная система сильно ослаблена. Но не каждый человек с ВИЧ развивает СПИД. Правильное лечение позволяет замедлить или предотвратить переход от ВИЧ к СПИДу.</p>', 'СПИД и его отличие от ВИЧ', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%bf%d0%b8%d0%b4-%d0%b8-%d0%b5%d0%b3%d0%be-%d0%be%d1%82%d0%bb%d0%b8%d1%87%d0%b8%d0%b5-%d0%be%d1%82-%d0%b2%d0%b8%d1%87', '', '', '2024-09-19 12:25:47', '2024-09-19 09:25:47', '', 0, 'http://hiv-site.jylikt.ru/?post_type=cards-info&#038;p=27', 0, 'cards-info', '', 0),
(28, 1, '2024-09-19 12:26:30', '2024-09-19 09:26:30', '<p>На данный момент полного излечения от ВИЧ нет, но антиретровирусная терапия (АРТ) позволяет контролировать вирус. При регулярном приёме лекарств вирусная нагрузка может стать настолько низкой, что его невозможно будет обнаружить и передать другим людям.</p>', 'Как лечится ВИЧ?', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%ba-%d0%bb%d0%b5%d1%87%d0%b8%d1%82%d1%81%d1%8f-%d0%b2%d0%b8%d1%87', '', '', '2024-09-19 12:26:30', '2024-09-19 09:26:30', '', 0, 'http://hiv-site.jylikt.ru/?post_type=cards-info&#038;p=28', 0, 'cards-info', '', 0),
(29, 1, '2024-09-19 12:28:03', '2024-09-19 09:28:03', '<p>Самые эффективные методы профилактики ВИЧ — это использование презервативов во время секса, отказ от использования общих игл и следование гигиеническим нормам при татуировках и пирсинге. Также существует PrEP — препарат, который помогает предотвратить заражение.</p>', 'Как защитить себя от ВИЧ?', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%ba-%d0%b7%d0%b0%d1%89%d0%b8%d1%82%d0%b8%d1%82%d1%8c-%d1%81%d0%b5%d0%b1%d1%8f-%d0%be%d1%82-%d0%b2%d0%b8%d1%87', '', '', '2024-09-19 12:28:03', '2024-09-19 09:28:03', '', 0, 'http://hiv-site.jylikt.ru/?post_type=cards-info&#038;p=29', 0, 'cards-info', '', 0),
(30, 1, '2024-09-19 12:28:47', '2024-09-19 09:28:47', '<p>Обычные контакты ВИЧ не передаётся через объятия, рукопожатия, использование общей посуды или плавание в одном бассейне. Это мифы, которые создают ненужный страх. Обычные повседневные контакты с людьми с ВИЧ абсолютно безопасны.</p>', 'Мифы о ВИЧ:', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b8%d1%84%d1%8b-%d0%be-%d0%b2%d0%b8%d1%87', '', '', '2024-09-19 12:28:47', '2024-09-19 09:28:47', '', 0, 'http://hiv-site.jylikt.ru/?post_type=cards-info&#038;p=30', 0, 'cards-info', '', 0),
(31, 1, '2024-09-19 12:29:34', '2024-09-19 09:29:34', '<p>Тестирование — единственный способ узнать о наличии ВИЧ в организме. Важно регулярно сдавать тест, особенно если у вас был незащищённый секс или другие риски заражения. Тестирование поможет выявить вирус на ранней стадии и начать лечение.</p>', 'Тестирование на ВИЧ', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%bd%d0%b0-%d0%b2%d0%b8%d1%87', '', '', '2024-09-19 12:29:34', '2024-09-19 09:29:34', '', 0, 'http://hiv-site.jylikt.ru/?post_type=cards-info&#038;p=31', 0, 'cards-info', '', 0),
(32, 1, '2024-09-19 12:30:36', '2024-09-19 09:30:36', '<p>Люди с ВИЧ могут вести обычную, активную жизнь, если получают поддержку и лечение. Очень важно разрушать стереотипы и стигматизацию. Мы все можем помочь, распространяя достоверную информацию и проявляя сочувствие к людям, живущим с ВИЧ.</p>', 'Поддержка людей с ВИЧ', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d0%b4%d0%b4%d0%b5%d1%80%d0%b6%d0%ba%d0%b0-%d0%bb%d1%8e%d0%b4%d0%b5%d0%b9-%d1%81-%d0%b2%d0%b8%d1%87', '', '', '2024-09-19 12:30:36', '2024-09-19 09:30:36', '', 0, 'http://hiv-site.jylikt.ru/?post_type=cards-info&#038;p=32', 0, 'cards-info', '', 0),
(33, 1, '2024-09-22 05:59:35', '2024-09-22 02:59:35', '', 'Викторина', '', 'publish', 'closed', 'closed', '', 'viktorina', '', '', '2024-09-22 06:03:53', '2024-09-22 03:03:53', '', 0, 'http://hiv-site.jylikt.ru/?page_id=33', 0, 'page', '', 0),
(34, 1, '2024-09-22 05:59:35', '2024-09-22 02:59:35', '', 'Викторина', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2024-09-22 05:59:35', '2024-09-22 02:59:35', '', 33, 'http://hiv-site.jylikt.ru/?p=34', 0, 'revision', '', 0),
(35, 1, '2024-09-22 06:17:28', '2024-09-22 03:17:28', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"quiz\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Викторина', 'viktorina', 'publish', 'closed', 'closed', '', 'group_66ef8bf35a8cb', '', '', '2024-09-22 06:28:23', '2024-09-22 03:28:23', '', 0, 'http://hiv-site.jylikt.ru/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2024-09-22 06:17:28', '2024-09-22 03:17:28', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Изображение', 'image', 'publish', 'closed', 'closed', '', 'field_66ef8c2ea2c08', '', '', '2024-09-22 06:28:23', '2024-09-22 03:28:23', '', 35, 'http://hiv-site.jylikt.ru/?post_type=acf-field&#038;p=36', 1, 'acf-field', '', 0),
(37, 1, '2024-09-22 06:17:28', '2024-09-22 03:17:28', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Варианты ответа', 'answers', 'publish', 'closed', 'closed', '', 'field_66ef8bf3a2c01', '', '', '2024-09-22 06:28:23', '2024-09-22 03:28:23', '', 35, 'http://hiv-site.jylikt.ru/?post_type=acf-field&#038;p=37', 2, 'acf-field', '', 0),
(44, 1, '2024-09-22 06:18:16', '2024-09-22 03:18:16', 'Правильные ответы: Использование для инъекций общих игл и шприцев, Использование нестерильного оборудования для пирсинга и татуировок, От матери к ребёнку, Незащищённые половые контакты', 'Отметьте известные вам пути передачи ВИЧ-инфекции', '', 'publish', 'closed', 'closed', '', 'otmette-izvestnye-vam-puti-peredachi-vich-infekczii', '', '', '2024-09-23 17:56:08', '2024-09-23 14:56:08', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=44', 0, 'quiz', '', 0),
(45, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:3:\"row\";s:10:\"sub_fields\";a:0:{}}', 'Ответ 1', 'otvet_1', 'publish', 'closed', 'closed', '', 'field_66ef8c9d690d1', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 37, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Правильный ответ', 'true-answer', 'publish', 'closed', 'closed', '', 'field_66ef8cb4690d3', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 45, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ответ', 'answer', 'publish', 'closed', 'closed', '', 'field_66ef8ca8690d2', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 45, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=47', 1, 'acf-field', '', 0),
(48, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:3:\"row\";s:10:\"sub_fields\";a:0:{}}', 'Ответ 2', 'otvet_2', 'publish', 'closed', 'closed', '', 'field_66ef8cce690d4', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 37, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=48', 1, 'acf-field', '', 0),
(49, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Правильный ответ', 'true-answer', 'publish', 'closed', 'closed', '', 'field_66ef8ccf690d5', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 48, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ответ', 'answer', 'publish', 'closed', 'closed', '', 'field_66ef8ccf690d6', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 48, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=50', 1, 'acf-field', '', 0),
(51, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:3:\"row\";s:10:\"sub_fields\";a:0:{}}', 'Ответ 3', 'otvet_3', 'publish', 'closed', 'closed', '', 'field_66ef8cd0690d7', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 37, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=51', 2, 'acf-field', '', 0),
(52, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Правильный ответ', 'true-answer', 'publish', 'closed', 'closed', '', 'field_66ef8cd0690d8', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 51, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ответ', 'answer', 'publish', 'closed', 'closed', '', 'field_66ef8cd0690d9', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 51, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=53', 1, 'acf-field', '', 0),
(54, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:3:\"row\";s:10:\"sub_fields\";a:0:{}}', 'Ответ 4', 'otvet_4', 'publish', 'closed', 'closed', '', 'field_66ef8cd1690da', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 37, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=54', 3, 'acf-field', '', 0),
(55, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Правильный ответ', 'true-answer', 'publish', 'closed', 'closed', '', 'field_66ef8cd1690db', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 54, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=55', 0, 'acf-field', '', 0),
(56, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ответ', 'answer', 'publish', 'closed', 'closed', '', 'field_66ef8cd1690dc', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 54, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=56', 1, 'acf-field', '', 0),
(57, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:3:\"row\";s:10:\"sub_fields\";a:0:{}}', 'Ответ 5', 'otvet_5', 'publish', 'closed', 'closed', '', 'field_66ef8cd3690dd', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 37, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=57', 4, 'acf-field', '', 0),
(58, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Правильный ответ', 'true-answer', 'publish', 'closed', 'closed', '', 'field_66ef8cd3690de', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 57, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ответ', 'answer', 'publish', 'closed', 'closed', '', 'field_66ef8cd3690df', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 57, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=59', 1, 'acf-field', '', 0),
(60, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:3:\"row\";s:10:\"sub_fields\";a:0:{}}', 'Ответ 6', 'otvet_6', 'publish', 'closed', 'closed', '', 'field_66ef8cd4690e0', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 37, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=60', 5, 'acf-field', '', 0),
(61, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Правильный ответ', 'true-answer', 'publish', 'closed', 'closed', '', 'field_66ef8cd5690e1', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 60, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2024-09-22 06:19:55', '2024-09-22 03:19:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ответ', 'answer', 'publish', 'closed', 'closed', '', 'field_66ef8cd5690e2', '', '', '2024-09-22 06:19:55', '2024-09-22 03:19:55', '', 60, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=62', 1, 'acf-field', '', 0),
(63, 1, '2024-09-22 06:24:37', '2024-09-22 03:24:37', 'Правильный ответ: Отказаться', 'Вы попали в ситуацию:<br>Красивая девушка говорит...', '', 'publish', 'closed', 'closed', '', 'vy-popali-v-situacziyukrasivaya-devushka-govorit', '', '', '2024-09-23 17:58:07', '2024-09-23 14:58:07', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=63', 0, 'quiz', '', 0),
(64, 1, '2024-09-22 06:23:44', '2024-09-22 03:23:44', '', 'quiz-img', '', 'inherit', '', 'closed', '', 'quiz-img', '', '', '2024-09-22 06:23:44', '2024-09-22 03:23:44', '', 63, 'http://hiv-site.jylikt.ru/wp-content/uploads/2024/09/quiz-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2024-09-22 06:28:23', '2024-09-22 03:28:23', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:100;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Сортировка', 'sort', 'publish', 'closed', 'closed', '', 'field_66ef8ec22331e', '', '', '2024-09-22 06:28:23', '2024-09-22 03:28:23', '', 35, 'http://hiv-site.jylikt.ru/?post_type=acf-field&p=65', 0, 'acf-field', '', 0),
(66, 1, '2024-09-23 15:06:52', '2024-09-23 12:06:52', 'Правильный ответ: Половой путь', 'Какой самый распространенный путь заражения ВИЧ-инфекции в Челябинской области', '', 'publish', 'closed', 'closed', '', 'kakoj-samyj-rasprostranennyj-put-zarazheniya-vich-infekczii-v-chelyabinskoj-oblasti', '', '', '2024-09-23 17:58:33', '2024-09-23 14:58:33', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=66', 0, 'quiz', '', 0),
(67, 1, '2024-09-23 18:00:26', '2024-09-23 15:00:26', 'Правильный ответ: Да, такой период есть, когда организм еще не выработал антитела к вирусу и установить диагноз невозможно', 'Есть ли такой период, когда человек уже инфицирован и может заражать других людей, но вирус еще не определяется в крови?', '', 'publish', 'closed', 'closed', '', 'est-li-takoj-period-kogda-chelovek-uzhe-inficzirovan-i-mozhet-zarazhat-drugih-lyudej-no-virus-eshhe-ne-opredelyaetsya-v-krovi', '', '', '2024-09-23 18:19:05', '2024-09-23 15:19:05', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=67', 0, 'quiz', '', 0),
(68, 1, '2024-09-23 18:01:17', '2024-09-23 15:01:17', 'Правильный ответ: Только при обследовании на ВИЧ-инфекцию', 'Как можно обнаружить ВИЧ-инфекцию у человека?', '', 'publish', 'closed', 'closed', '', 'kak-mozhno-obnaruzhit-vich-infekcziyu-u-cheloveka', '', '', '2024-09-23 18:19:57', '2024-09-23 15:19:57', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=68', 0, 'quiz', '', 0),
(69, 1, '2024-09-23 18:02:45', '2024-09-23 15:02:45', 'Правильные ответы: Кровь, Сперма, Вагинальные выделения, Грудное молоко', 'Какие биологические жидкости являются наиболее опасными при передаче ВИЧ-инфекции?', '', 'publish', 'closed', 'closed', '', 'kakie-biologicheskie-zhidkosti-yavlyayutsya-naibolee-opasnymi-pri-peredache-vich-infekczii', '', '', '2024-09-23 18:20:41', '2024-09-23 15:20:41', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=69', 0, 'quiz', '', 0),
(70, 1, '2024-09-23 18:03:13', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-09-23 18:03:13', '0000-00-00 00:00:00', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&p=70', 0, 'quiz', '', 0),
(71, 1, '2024-09-23 18:04:11', '2024-09-23 15:04:11', 'Правильный ответ: Нет', 'По внешним признакам можно ли человеку диагностировать ВИЧ-инфекцию', '', 'publish', 'closed', 'closed', '', 'po-vneshnim-priznakam-mozhno-li-cheloveku-diagnostirovat-vich-infekcziyu', '', '', '2024-09-23 18:21:09', '2024-09-23 15:21:09', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=71', 0, 'quiz', '', 0),
(72, 1, '2024-09-23 18:05:22', '2024-09-23 15:05:22', 'Правильные ответы: В поликлинике по месту жительства, В СПИД Центре, В пунктах экспресс-тестирования на ВИЧ', 'Где можно сдать анализы на ВИЧ бесплатно', '', 'publish', 'closed', 'closed', '', 'gde-mozhno-sdat-analizy-na-vich-besplatno', '', '', '2024-09-23 18:05:22', '2024-09-23 15:05:22', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=72', 0, 'quiz', '', 0),
(73, 1, '2024-09-23 18:06:30', '2024-09-23 15:06:30', 'Правильный ответ: Обследование на ВИЧ-инфекцию несколько раз через 3 и 6 месяцев', 'Какие, по вашему мнению, меры следует предпринять в случае опасности заражения ВИЧ-инфекцией?', '', 'publish', 'closed', 'closed', '', 'kakie-po-vashemu-mneniyu-mery-sleduet-predprinyat-v-sluchae-opasnosti-zarazheniya-vich-infekcziej', '', '', '2024-09-23 18:06:30', '2024-09-23 15:06:30', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=73', 0, 'quiz', '', 0),
(74, 1, '2024-09-23 18:07:38', '2024-09-23 15:07:38', 'Правильные ответы: Лица, имеющие случайные незащищенные сексуальные связи, Лица, употребляющие инъекционные наркотики, Лица, предоставляющие коммерческие сексуальные услуги', 'Кто, по вашему мнению, входит в группы с наиболее высоким риском заражения и передачи ВИЧ-инфекции?', '', 'publish', 'closed', 'closed', '', 'kto-po-vashemu-mneniyu-vhodit-v-gruppy-s-naibolee-vysokim-riskom-zarazheniya-i-peredachi-vich-infekczii', '', '', '2024-09-23 18:07:38', '2024-09-23 15:07:38', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=74', 0, 'quiz', '', 0),
(75, 1, '2024-09-23 18:08:43', '2024-09-23 15:08:43', 'Правильный ответ: Нет. В настоящее время есть специальная терапия, которая подавляет размножение вируса', 'В настоящее время можно вылечить полностью ВИЧ-инфекцию', '', 'publish', 'closed', 'closed', '', 'v-nastoyashhee-vremya-mozhno-vylechit-polnostyu-vich-infekcziyu', '', '', '2024-09-23 18:08:43', '2024-09-23 15:08:43', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=75', 0, 'quiz', '', 0),
(76, 1, '2024-09-23 18:10:00', '2024-09-23 15:10:00', 'Правильный ответ: Да может, если наблюдается и принимает специальную терапию', 'Женщина с ВИЧ-инфекцией может родить здорового ребенка', '', 'publish', 'closed', 'closed', '', 'zhenshhina-s-vich-infekcziej-mozhet-rodit-zdorovogo-rebenka', '', '', '2024-09-23 18:10:00', '2024-09-23 15:10:00', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=76', 0, 'quiz', '', 0),
(77, 1, '2024-09-23 18:10:46', '2024-09-23 15:10:46', 'Правильный ответ: Нет', 'Будет ли выявление ВИЧ-инфекции служить поводом для увольнения с работы?', '', 'publish', 'closed', 'closed', '', 'budet-li-vyyavlenie-vich-infekczii-sluzhit-povodom-dlya-uvolneniya-s-raboty', '', '', '2024-09-23 18:10:46', '2024-09-23 15:10:46', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=77', 0, 'quiz', '', 0),
(78, 1, '2024-09-23 18:12:54', '2024-09-23 15:12:54', 'Правильный ответ: Половому партнеру', 'Кому обязан сообщить о своем диагнозе ВИЧ-положительный человек?', '', 'publish', 'closed', 'closed', '', 'komu-obyazan-soobshhit-o-svoem-diagnoze-vich-polozhitelnyj-chelovek', '', '', '2024-09-23 18:12:54', '2024-09-23 15:12:54', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=78', 0, 'quiz', '', 0),
(79, 1, '2024-09-23 18:14:05', '2024-09-23 15:14:05', 'Правильный ответ: Да', 'Могут ли ВИЧ-положительные дети и подростки посещать детские сады, школы и другие учебные заведения?', '', 'publish', 'closed', 'closed', '', 'mogut-li-vich-polozhitelnye-deti-i-podrostki-poseshhat-detskie-sady-shkoly-i-drugie-uchebnye-zavedeniya', '', '', '2024-09-23 18:14:05', '2024-09-23 15:14:05', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=79', 0, 'quiz', '', 0),
(80, 1, '2024-09-23 18:15:50', '2024-09-23 15:15:50', 'Правильные ответы: Буду с ним продолжать общаться, Узнаю больше информации об этом заболеванию, постараюсь оказать поддержку', 'Если узнаете, что у Вашего знакомого выявлена ВИЧ-инфекция, то', '', 'publish', 'closed', 'closed', '', 'esli-uznaete-chto-u-vashego-znakomogo-vyyavlena-vich-infekcziya-to', '', '', '2024-09-23 18:15:50', '2024-09-23 15:15:50', '', 0, 'http://hiv-site.jylikt.ru/?post_type=quiz&#038;p=80', 0, 'quiz', '', 0),
(81, 1, '2024-09-23 18:20:32', '2024-09-23 15:20:32', 'Правильные ответы: Кровь, Сперма, Вагинальные выделения', 'Какие биологические жидкости являются наиболее опасными при передаче ВИЧ-инфекции?', '', 'inherit', 'closed', 'closed', '', '69-autosave-v1', '', '', '2024-09-23 18:20:32', '2024-09-23 15:20:32', '', 69, 'http://hiv-site.jylikt.ru/?p=81', 0, 'revision', '', 0),
(82, 1, '2024-09-23 22:11:42', '2024-09-23 19:11:42', '', 'Пункты тестирования', '', 'publish', 'closed', 'closed', '', 'punkty-testirovaniya', '', '', '2024-09-23 22:15:56', '2024-09-23 19:15:56', '', 0, 'http://hiv-site.jylikt.ru/?page_id=82', 0, 'page', '', 0),
(83, 1, '2024-09-23 22:11:42', '2024-09-23 19:11:42', '', 'Пункты тестирования', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2024-09-23 22:11:42', '2024-09-23 19:11:42', '', 82, 'http://hiv-site.jylikt.ru/?p=83', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=806;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
