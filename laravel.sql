-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 03:02 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `course_image` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `description`, `price`, `course_image`, `start_date`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PHP Advanced course', 'php test course', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 50, 'images/courses/GqLw99zYHnwy4C3qlgIglkuTCk21HyDtq7Ak8HVn.jpg', '2024-08-01', 1, '2024-08-06 23:52:16', '2024-09-16 06:45:55', NULL),
(2, 'Python from begining to advance', 'python course', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 60, 'images/courses/Sh6BuQW0kjPu2ybYWrt51zGzAHNEysW6J6n5Od9W.jpg', '2024-07-17', 1, '2024-08-07 00:03:28', '2024-09-16 06:46:42', NULL),
(3, 'Laravel 11', 'Laravel', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 100, 'images/courses/RLlkabdtabe8z9B3DnPkq1G3DcSNEphhzpvu7943.png', '2024-09-16', 1, '2024-09-16 06:36:37', '2024-09-16 06:36:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`id`, `course_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 0, '2024-08-06 23:59:36', '2024-08-06 23:59:36'),
(2, 1, 1, 4, '2024-08-07 00:01:20', '2024-08-07 00:01:36'),
(3, 2, 1, 0, '2024-08-07 00:10:43', '2024-08-07 00:10:43'),
(4, 2, 2, 4, '2024-08-07 00:12:04', '2024-08-07 00:13:03'),
(5, 3, 1, 0, '2024-09-16 06:41:48', '2024-09-16 06:41:48'),
(6, 3, 3, 0, '2024-09-16 06:42:10', '2024-09-16 06:42:10'),
(7, 3, 5, 0, '2024-09-16 06:56:11', '2024-09-16 06:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `embed_id` varchar(255) DEFAULT NULL,
  `short_text` text DEFAULT NULL,
  `full_text` text DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `free_lesson` tinyint(4) DEFAULT 0,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `embed_id`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'php tutorial', 'php test course', 'https://www.youtube.com/watch?v=at19OmH2Bg4&list=PLu0W_9lII9aikXkRE0WxDt1vozo3hnmtR&ab_channel=CodeWithHarry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 0, 1, '2024-08-06 23:58:48', '2024-09-16 06:48:07', NULL),
(2, 2, 'Introduction to Programming & Python', 'python course', 'https://www.youtube.com/watch?v=7wnove7K-ZQ&list=PLu0W_9lII9agwh1XjRt242xIpHhPT2llg&ab_channel=CodeWithHarry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 0, 1, '2024-08-07 00:05:06', '2024-09-16 06:49:06', NULL),
(3, 3, 'Introduction', 'intro', 'https://www.youtube.com/watch?v=rXleVXyp-kk&list=PL8p2I9GklV45Q9ofPyixWAdb1-WLiBvNl&t=11s&ab_channel=CodeStepByStep', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 0, 1, '2024-09-16 06:38:23', '2024-09-16 06:38:23', NULL),
(4, 3, 'Install Xampp and composer', 'Laravel11', 'https://www.youtube.com/watch?v=Fy57aPIcoNM&list=PL8p2I9GklV45Q9ofPyixWAdb1-WLiBvNl&index=2&ab_channel=CodeStepByStep', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 2, 0, 1, '2024-09-16 06:58:39', '2024-09-16 06:58:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_student`
--

CREATE TABLE `lesson_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_student`
--

INSERT INTO `lesson_student` (`id`, `lesson_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-08-06 23:59:36', '2024-08-06 23:59:36'),
(2, 1, 1, '2024-08-07 00:01:21', '2024-08-07 00:01:21'),
(3, 2, 1, '2024-08-07 00:10:44', '2024-08-07 00:10:44'),
(4, 2, 2, '2024-08-07 00:12:05', '2024-08-07 00:12:05'),
(5, 3, 1, '2024-09-16 06:41:49', '2024-09-16 06:41:49'),
(6, 3, 3, '2024-09-16 06:42:11', '2024-09-16 06:42:11'),
(7, 3, 5, '2024-09-16 06:56:11', '2024-09-16 06:56:11'),
(8, 4, 1, '2024-09-16 06:59:02', '2024-09-16 06:59:02');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_13_150421_create_courses_table', 1),
(6, '2021_12_13_150921_create_lessons_table', 1),
(7, '2021_12_14_003913_create_course_user_table', 1),
(8, '2022_01_19_052015_create_permissions_table', 1),
(9, '2022_01_19_052129_create_roles_table', 1),
(10, '2022_01_19_052257_create_permission_role_table', 1),
(11, '2022_01_19_052421_create_role_user_table', 1),
(12, '2022_01_20_103259_create_questions_table', 1),
(13, '2022_01_20_103626_create_question_options_table', 1),
(14, '2022_01_20_105431_create_tests_table', 1),
(15, '2022_01_21_055517_create_question_test_table', 1),
(16, '2022_01_22_061749_create_course_student_table', 1),
(17, '2022_01_22_070420_add_rating_to_course_student_table', 1),
(18, '2022_01_22_094153_create_lesson_student_table', 1),
(19, '2022_01_23_140035_create_test_results_table', 1),
(20, '2022_01_23_140224_create_test_result_answers_table', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(2, 'user_management_create', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(3, 'user_management_edit', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(4, 'user_management_view', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(5, 'user_management_delete', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(6, 'permission_access', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(7, 'permission_create', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(8, 'permission_edit', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(9, 'permission_view', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(10, 'permission_delete', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(11, 'role_access', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(12, 'role_create', '2024-08-06 23:47:42', '2024-08-06 23:47:42'),
(13, 'role_edit', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(14, 'role_view', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(15, 'role_delete', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(16, 'user_access', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(17, 'user_create', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(18, 'user_edit', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(19, 'user_view', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(20, 'user_delete', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(21, 'course_access', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(22, 'course_create', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(23, 'course_edit', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(24, 'course_view', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(25, 'course_delete', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(26, 'lesson_access', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(27, 'lesson_create', '2024-08-06 23:47:43', '2024-08-06 23:47:43'),
(28, 'lesson_edit', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(29, 'lesson_view', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(30, 'lesson_delete', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(31, 'question_access', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(32, 'question_create', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(33, 'question_edit', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(34, 'question_view', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(35, 'question_delete', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(36, 'questions_option_access', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(37, 'questions_option_create', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(38, 'questions_option_edit', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(39, 'questions_option_view', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(40, 'questions_option_delete', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(41, 'test_access', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(42, 'test_create', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(43, 'test_edit', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(44, 'test_view', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(45, 'test_delete', '2024-08-06 23:47:44', '2024-08-06 23:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 1, NULL, NULL),
(33, 33, 1, NULL, NULL),
(34, 34, 1, NULL, NULL),
(35, 35, 1, NULL, NULL),
(36, 36, 1, NULL, NULL),
(37, 37, 1, NULL, NULL),
(38, 38, 1, NULL, NULL),
(39, 39, 1, NULL, NULL),
(40, 40, 1, NULL, NULL),
(41, 41, 1, NULL, NULL),
(42, 42, 1, NULL, NULL),
(43, 43, 1, NULL, NULL),
(44, 44, 1, NULL, NULL),
(45, 45, 1, NULL, NULL),
(46, 1, 2, NULL, NULL),
(47, 21, 2, NULL, NULL),
(48, 22, 2, NULL, NULL),
(49, 23, 2, NULL, NULL),
(50, 24, 2, NULL, NULL),
(51, 26, 2, NULL, NULL),
(52, 27, 2, NULL, NULL),
(53, 28, 2, NULL, NULL),
(54, 29, 2, NULL, NULL),
(55, 31, 2, NULL, NULL),
(56, 32, 2, NULL, NULL),
(57, 33, 2, NULL, NULL),
(58, 34, 2, NULL, NULL),
(59, 36, 2, NULL, NULL),
(60, 37, 2, NULL, NULL),
(61, 38, 2, NULL, NULL),
(62, 39, 2, NULL, NULL),
(63, 40, 2, NULL, NULL),
(64, 41, 2, NULL, NULL),
(65, 42, 2, NULL, NULL),
(66, 43, 2, NULL, NULL),
(67, 44, 2, NULL, NULL),
(68, 45, 2, NULL, NULL),
(69, 1, 3, NULL, NULL),
(70, 21, 3, NULL, NULL),
(71, 24, 3, NULL, NULL),
(72, 26, 3, NULL, NULL),
(73, 29, 3, NULL, NULL),
(74, 31, 3, NULL, NULL),
(75, 34, 3, NULL, NULL),
(76, 36, 3, NULL, NULL),
(77, 37, 3, NULL, NULL),
(78, 38, 3, NULL, NULL),
(79, 39, 3, NULL, NULL),
(80, 40, 3, NULL, NULL),
(81, 41, 3, NULL, NULL),
(82, 44, 3, NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `question_image` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `question_image`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Php test question?', 'images/questions/OCx2bSZxqHWUll6707ZIzQZddpaJoNn7JJHt0muR.jpg', 5, '2024-08-06 23:54:03', '2024-09-16 06:51:47', NULL),
(2, 'Python test question?', 'images/questions/RRYXKkjgeYYW48fzDWPQlgQ579E9l6XSrKgPZYCp.jpg', 30, '2024-08-07 00:06:31', '2024-09-16 06:51:09', NULL),
(3, 'Test question?', 'images/questions/Strj2jfANcjISqKUBk5CdtqHwwz2c2R2qa3OJ8bp.png', 10, '2024-09-16 06:41:13', '2024-09-16 06:41:13', NULL),
(4, 'laravel final?', NULL, 100, '2024-09-16 06:54:15', '2024-09-16 06:54:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `option_text` text NOT NULL,
  `correct` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `option_text`, `correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1', 1, '2024-08-06 23:54:03', '2024-08-06 23:54:03', NULL),
(2, 1, '2', 0, '2024-08-06 23:54:03', '2024-08-06 23:54:03', NULL),
(3, 1, '3', 1, '2024-08-06 23:54:03', '2024-08-06 23:54:03', NULL),
(4, 1, '4', 0, '2024-08-06 23:54:03', '2024-08-06 23:54:03', NULL),
(5, 2, '1', 1, '2024-08-07 00:06:31', '2024-08-07 00:06:31', NULL),
(6, 2, '2', 0, '2024-08-07 00:06:31', '2024-08-07 00:06:31', NULL),
(7, 2, '3', 0, '2024-08-07 00:06:31', '2024-08-07 00:06:31', NULL),
(8, 2, '9', 0, '2024-08-07 00:06:31', '2024-08-07 00:06:31', NULL),
(9, 3, 'laravel8', 0, '2024-09-16 06:41:14', '2024-09-16 06:41:14', NULL),
(10, 3, 'laravel9', 0, '2024-09-16 06:41:14', '2024-09-16 06:41:14', NULL),
(11, 3, 'laravel10', 0, '2024-09-16 06:41:14', '2024-09-16 06:41:14', NULL),
(12, 3, 'laravel11', 1, '2024-09-16 06:41:14', '2024-09-16 06:41:14', NULL),
(13, 4, 'A', 0, '2024-09-16 06:54:16', '2024-09-16 06:54:16', NULL),
(14, 4, 'B', 1, '2024-09-16 06:54:16', '2024-09-16 06:54:16', NULL),
(15, 4, 'C', 0, '2024-09-16 06:54:16', '2024-09-16 06:54:16', NULL),
(16, 4, 'D', 0, '2024-09-16 06:54:16', '2024-09-16 06:54:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_test`
--

CREATE TABLE `question_test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `test_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_test`
--

INSERT INTO `question_test` (`id`, `question_id`, `test_id`, `created_at`, `updated_at`) VALUES
(1, 3, 3, NULL, NULL),
(2, 4, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2024-08-06 23:47:44', '2024-08-06 23:47:44'),
(2, 'Teacher', '2024-08-06 23:47:45', '2024-08-06 23:47:45'),
(3, 'Student', '2024-08-06 23:47:45', '2024-08-06 23:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 3, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 5, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lesson_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `course_id`, `lesson_id`, `title`, `description`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'php quiz', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2024-08-06 23:52:42', '2024-09-16 06:50:08', NULL),
(2, 2, 2, 'python tutorial', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2024-08-07 00:05:36', '2024-09-16 06:50:22', NULL),
(3, 3, 3, 'Mid1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2024-09-16 06:39:19', '2024-09-16 06:39:19', NULL),
(4, 3, 3, 'laravel final exam', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2024-09-16 06:53:13', '2024-09-16 06:53:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_results`
--

CREATE TABLE `test_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `test_result` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_results`
--

INSERT INTO `test_results` (`id`, `test_id`, `user_id`, `test_result`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 10, '2024-09-16 06:42:21', '2024-09-16 06:42:21'),
(2, 3, 5, 0, '2024-09-16 06:56:27', '2024-09-16 06:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `test_result_answers`
--

CREATE TABLE `test_result_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_result_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `correct` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_result_answers`
--

INSERT INTO `test_result_answers` (`id`, `test_result_id`, `question_id`, `question_option_id`, `correct`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 12, 1, '2024-09-16 06:42:21', '2024-09-16 06:42:21'),
(2, 2, 3, 11, 0, '2024-09-16 06:56:27', '2024-09-16 06:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$/p3ep7jc3Ik8w1scGOBwbexLyuBO/jF3ggyBcE1zVcXjfBoqTIDQ6', 'MYgrzjVFKffgOBzT3o7T3yOxbmIkgWoVXRDkAQGCbJI5wFM7fhdGOINVcSoD', '2024-08-06 23:47:45', '2024-08-06 23:47:45'),
(2, 'Helal', 'helal@gmail.com', NULL, '$2y$10$L.H3W5siJDbiZhiAKO3.JuINu5z9NM/bVofMcku.dR0MUndwbthdS', NULL, '2024-08-06 23:50:43', '2024-08-06 23:50:43'),
(3, 'helal', 'h@h.com', NULL, '$2y$10$GtUwRw94xyDpJ3I.A60TZeJraLuFjbUVqaP.c1oyQrNAt1PKg2wzy', NULL, '2024-09-16 06:33:36', '2024-09-16 06:33:36'),
(4, 'Md. Rakibuzzaman Helal', 'r@r.com', NULL, '$2y$10$/6h8OzD9IhbFldv7Hmeh2.nIopmLgXKIJujtcI1pGTvE8bnzCHTje', NULL, '2024-09-16 06:34:46', '2024-09-16 06:34:46'),
(5, 'rakib', 'rakib@gmail.com', NULL, '$2y$10$AkQy9KbETf11XKw.d84G4OEw/wTMiRf9c4UgyMrI9sy6383IoRGyK', NULL, '2024-09-16 06:55:56', '2024-09-16 06:55:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_user_course_id_foreign` (`course_id`),
  ADD KEY `course_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_course_id_foreign` (`course_id`);

--
-- Indexes for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_student_lesson_id_foreign` (`lesson_id`),
  ADD KEY `lesson_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_options_question_id_foreign` (`question_id`),
  ADD KEY `question_options_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `question_test`
--
ALTER TABLE `question_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_test_question_id_foreign` (`question_id`),
  ADD KEY `question_test_test_id_foreign` (`test_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_course_id_foreign` (`course_id`),
  ADD KEY `tests_lesson_id_foreign` (`lesson_id`),
  ADD KEY `tests_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `test_results`
--
ALTER TABLE `test_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_results_test_id_foreign` (`test_id`),
  ADD KEY `test_results_user_id_foreign` (`user_id`);

--
-- Indexes for table `test_result_answers`
--
ALTER TABLE `test_result_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_result_answers_test_result_id_foreign` (`test_result_id`),
  ADD KEY `test_result_answers_question_id_foreign` (`question_id`),
  ADD KEY `test_result_answers_question_option_id_foreign` (`question_option_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_student`
--
ALTER TABLE `course_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course_user`
--
ALTER TABLE `course_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lesson_student`
--
ALTER TABLE `lesson_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `question_test`
--
ALTER TABLE `question_test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test_results`
--
ALTER TABLE `test_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test_result_answers`
--
ALTER TABLE `test_result_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD CONSTRAINT `lesson_student_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `question_options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_test`
--
ALTER TABLE `question_test`
  ADD CONSTRAINT `question_test_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_test_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `test_results`
--
ALTER TABLE `test_results`
  ADD CONSTRAINT `test_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `test_result_answers`
--
ALTER TABLE `test_result_answers`
  ADD CONSTRAINT `test_result_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_result_answers_question_option_id_foreign` FOREIGN KEY (`question_option_id`) REFERENCES `question_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_result_answers_test_result_id_foreign` FOREIGN KEY (`test_result_id`) REFERENCES `test_results` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
