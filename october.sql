-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2019 lúc 09:40 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `october`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', '2019-10-14 20:12:59', '2019-10-14 20:12:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'Quang', 'Nguyen', 'admin', 'nnduyquang@gmail.com', '$2y$10$4bgm2iaxCAbl03N5G.Kake5wEMjOggFjf5v9L85Pty4Jm7tEwrO12', NULL, '$2y$10$S32t5CtzV7LYSd3X5e1PZeDu.6j7Ig3OPQHZF6Vf8bz/ZeENz5sUS', NULL, '', 1, 2, NULL, '2019-10-14 20:12:59', '2019-10-14 20:06:48', '2019-10-14 20:12:59', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2019-10-14 20:06:48', '2019-10-14 20:06:48', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-10-14 20:06:48', '2019-10-14 20:06:48'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-10-14 20:06:48', '2019-10-14 20:06:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2019-10-14 20:31:59', '2019-10-14 20:31:59'),
(2, 'Tin Tức', 'tin-tuc', NULL, '', NULL, 3, 4, 0, '2019-10-14 20:33:08', '2019-10-14 20:33:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `content_html` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', '![This](http://localhost:8080/october/storage/app/media/67340969_2380144525365530_7813207602107514880_n.jpg) is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\r\n\r\nYou can edit this content by selecting **Blog** from the administration back-end menu.\r\n\r\n*Enjoy the good times!*', '<p><img src=\"http://localhost:8080/october/storage/app/media/67340969_2380144525365530_7813207602107514880_n.jpg\" alt=\"This\" /> is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2019-10-14 20:31:59', 1, '2019-10-14 20:31:59', '2019-10-14 21:25:23', NULL),
(2, 1, 'New post', 'new-post', '', '**This is a new post**', '<p><strong>This is a new post</strong></p>', NULL, 0, '2019-10-14 20:34:31', '2019-10-14 20:34:31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_blog_posts_categories`
--

INSERT INTO `rainlab_blog_posts_categories` (`post_id`, `category_id`) VALUES
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'Cms\\Classes\\CmsException: The layout \'default\' is not found in C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php:303\nStack trace:\n#0 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#1 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'404\')\n#2 [internal function]: Cms\\Classes\\CmsController->run(\'404\')\n#3 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#4 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#5 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#6 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#7 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#8 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#9 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#10 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#11 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#37 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\october\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#39 {main}', NULL, '2019-10-14 20:45:39', '2019-10-14 20:45:39'),
(2, 'error', 'Cms\\Classes\\CmsException: The layout \'default\' is not found in C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php:303\nStack trace:\n#0 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#1 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'404\')\n#2 [internal function]: Cms\\Classes\\CmsController->run(\'404\')\n#3 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#4 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#5 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#6 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#7 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#8 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#9 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#10 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#11 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#28 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#37 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\october\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#39 {main}', NULL, '2019-10-14 20:46:48', '2019-10-14 20:46:48'),
(3, 'error', 'Symfony\\Component\\Debug\\Exception\\FatalThrowableError: Parse error: syntax error, unexpected \'description\' (T_STRING), expecting function (T_FUNCTION) or const (T_CONST) in C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CodeParser.php(289) : eval()\'d code:4\nStack trace:\n#0 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CodeParser.php(152): Cms\\Classes\\CodeParser->validate(\'<?php \\r\\nclass C...\')\n#1 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CodeParser.php(112): Cms\\Classes\\CodeParser->rebuild(\'C:\\\\xampp\\\\htdocs...\')\n#2 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CodeParser.php(170): Cms\\Classes\\CodeParser->parse()\n#3 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(629): Cms\\Classes\\CodeParser->source(Object(Cms\\Classes\\Page), Object(Cms\\Classes\\Layout), Object(Cms\\Classes\\Controller))\n#4 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(331): Cms\\Classes\\Controller->initCustomObjects()\n#5 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'trang-chu\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'trang-chu\')\n#8 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#9 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#13 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\october\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}', NULL, '2019-10-14 21:11:04', '2019-10-14 21:11:04'),
(4, 'error', 'Symfony\\Component\\Debug\\Exception\\FatalThrowableError: Parse error: syntax error, unexpected \'description\' (T_STRING), expecting function (T_FUNCTION) or const (T_CONST) in C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CodeParser.php(289) : eval()\'d code:4\nStack trace:\n#0 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CodeParser.php(152): Cms\\Classes\\CodeParser->validate(\'<?php \\r\\nclass C...\')\n#1 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CodeParser.php(112): Cms\\Classes\\CodeParser->rebuild(\'C:\\\\xampp\\\\htdocs...\')\n#2 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CodeParser.php(170): Cms\\Classes\\CodeParser->parse()\n#3 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(629): Cms\\Classes\\CodeParser->source(Object(Cms\\Classes\\Page), Object(Cms\\Classes\\Layout), Object(Cms\\Classes\\Controller))\n#4 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(331): Cms\\Classes\\Controller->initCustomObjects()\n#5 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#9 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#13 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\october\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}', NULL, '2019-10-14 21:11:52', '2019-10-14 21:11:52');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(5, 'error', 'Cms\\Classes\\CmsException: The partial \'site/header\' is not found. in C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php:1030\nStack trace:\n#0 C:\\xampp\\htdocs\\october\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'site/header\', Array, true)\n#1 C:\\xampp\\htdocs\\october\\storage\\cms\\twig\\cb\\cb5c8a8351e0277cbd955220478741b1c01b5d8c8a6b95cf50a67de5fcd01867.php(76): Cms\\Twig\\Extension->partialFunction(\'site/header\', Array, true)\n#2 C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_74b944776d82610c858e8ebece2416bf08d0d981bceb9c3e14402969ef18e87d->doDisplay(Array, Array)\n#3 C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#5 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#6 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#7 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#8 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#9 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#10 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#12 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#14 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\october\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/header\' is not found.\") in \"C:\\xampp\\htdocs\\october/themes/olympos/layouts/master.htm\" at line 21. in C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#3 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#6 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\october\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2019-10-14 21:12:54', '2019-10-14 21:12:54'),
(6, 'error', 'Cms\\Classes\\CmsException: The partial \'site/footer\' is not found. in C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php:1030\nStack trace:\n#0 C:\\xampp\\htdocs\\october\\modules\\cms\\twig\\Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'site/footer\', Array, true)\n#1 C:\\xampp\\htdocs\\october\\storage\\cms\\twig\\cb\\cb5c8a8351e0277cbd955220478741b1c01b5d8c8a6b95cf50a67de5fcd01867.php(89): Cms\\Twig\\Extension->partialFunction(\'site/footer\', Array, true)\n#2 C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_74b944776d82610c858e8ebece2416bf08d0d981bceb9c3e14402969ef18e87d->doDisplay(Array, Array)\n#3 C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#5 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#6 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#7 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#8 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#9 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#10 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#12 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#14 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\october\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#45 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The partial \'site/footer\' is not found.\") in \"C:\\xampp\\htdocs\\october/themes/olympos/layouts/master.htm\" at line 31. in C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\xampp\\htdocs\\october\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#3 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\october\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#6 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\october\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\october\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2019-10-14 21:13:10', '2019-10-14 21:13:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-10-14 20:06:48', '2019-10-14 20:06:48'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-10-14 20:06:48', '2019-10-14 20:06:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'update', 'retry', '1571195581'),
(3, 'cms', 'theme', 'active', '\"olympos\"');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2019-10-14 20:06:48'),
(2, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2019-10-14 20:31:57'),
(3, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2019-10-14 20:31:59'),
(4, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2019-10-14 20:31:59'),
(5, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2019-10-14 20:31:59'),
(6, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2019-10-14 20:31:59'),
(7, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2019-10-14 20:31:59'),
(8, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2019-10-14 20:31:59'),
(9, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2019-10-14 20:31:59'),
(10, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2019-10-14 20:31:59'),
(11, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2019-10-14 20:32:00'),
(12, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2019-10-14 20:32:00'),
(13, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2019-10-14 20:32:00'),
(14, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2019-10-14 20:32:00'),
(15, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2019-10-14 20:32:00'),
(16, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2019-10-14 20:32:00'),
(17, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2019-10-14 20:32:00'),
(18, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2019-10-14 20:32:00'),
(19, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2019-10-14 20:32:00'),
(20, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2019-10-14 20:32:00'),
(21, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2019-10-14 20:32:00'),
(22, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2019-10-14 20:32:00'),
(23, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2019-10-14 20:32:00'),
(24, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2019-10-14 20:32:00'),
(25, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2019-10-14 20:32:00'),
(26, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2019-10-14 20:32:00'),
(27, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2019-10-14 20:32:01'),
(28, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2019-10-14 20:32:01'),
(29, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2019-10-14 20:32:01'),
(30, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2019-10-14 20:32:01'),
(31, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2019-10-14 20:32:01'),
(32, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2019-10-14 20:32:01'),
(33, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2019-10-14 20:32:01'),
(34, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2019-10-14 20:32:01'),
(35, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2019-10-14 20:32:01'),
(36, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2019-10-14 20:32:01'),
(37, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2019-10-14 20:32:01'),
(38, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2019-10-14 20:32:01'),
(39, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2019-10-14 20:32:01'),
(40, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2019-10-14 20:32:01'),
(41, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2019-10-14 20:32:01'),
(42, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2019-10-14 20:32:01'),
(43, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2019-10-14 20:32:02'),
(44, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2019-10-14 20:32:02'),
(45, 'RainLab.Blog', 'script', '1.3.0', 'posts_add_metadata.php', '2019-10-14 20:32:02'),
(46, 'RainLab.Blog', 'comment', '1.3.0', 'Added metadata column for plugins to store data in', '2019-10-14 20:32:02'),
(47, 'RainLab.Blog', 'comment', '1.3.1', 'Fixed metadata column not being jsonable', '2019-10-14 20:32:03'),
(48, 'RainLab.Blog', 'comment', '1.3.2', 'Allow custom slug name for components, add 404 handling for missing blog posts, allow exporting of blog images.', '2019-10-14 20:32:03'),
(49, 'RainLab.Blog', 'comment', '1.3.3', 'Fixed \'excluded categories\' filter from being run when value is empty.', '2019-10-14 20:32:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2019-10-14 20:06:48', 0, 0),
(2, 'RainLab.Blog', '1.3.3', '2019-10-14 20:32:03', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Chỉ mục cho bảng `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Chỉ mục cho bảng `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Chỉ mục cho bảng `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Chỉ mục cho bảng `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Chỉ mục cho bảng `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Chỉ mục cho bảng `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Chỉ mục cho bảng `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Chỉ mục cho bảng `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Chỉ mục cho bảng `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Chỉ mục cho bảng `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Chỉ mục cho bảng `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Chỉ mục cho bảng `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Chỉ mục cho bảng `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Chỉ mục cho bảng `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Chỉ mục cho bảng `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Chỉ mục cho bảng `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Chỉ mục cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
